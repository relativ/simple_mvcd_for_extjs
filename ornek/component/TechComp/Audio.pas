Unit Audio;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Forms, Classes,
  mmSystem;

type
   TChannels = (Mono, Stereo);
   TBPS = (_8,_16);

const
   DefaulTTechAudioDeviceID = WAVE_MAPPER;
   No_Buffers = 4;
   ChannelsDefault = Mono;
   BPSDefault = _8;
   SPSDefault = 11025;
   NoSamplesDefault = 8192;

{$IFDEF WIN32}
   DefaultMixerDeviceID = 0;
   Ver = '4.1 (32bit)';
{$ELSE}
   Ver = '4.1 (16bit)';
{$ENDIF}

type
  TNotifyAudioRecordEvent = procedure(Sender: TObject; LP,RP: Pointer; BufferSize: Word) of object;
  TNotifyBufferPlayedEvent = procedure(Sender: TObject) of object;
  TNotifyPlayedEvent = procedure(Sender: TObject) of object;
{$IFDEF WIN32}
  TNotifyMixerChange = procedure(Sender:TObject;Destination,Source: Word) of object;
{$ENDIF}

  TTechAudio = class;

{$IFDEF WIN32}
  ValuesArray = array [0..1] of integer;
  PMixDetails = ^TMixDetails;
  TMixDetails = record
                 Destination,Source : Word;
                 Name : string;
                 VolControlID,MuteControlID, MeterControlID : dword;
                 Left, Right, Meter : Word;
                 CtrlType : Word;
                 Mute, Mono, Speakers, Available : boolean;
                 Next:PMixDetails;
                end;

  TMixerSettings = class(TPersistent)
  private
    FAudio              : TTechAudio;
    MixerHandle         : HMIXER;
    MixerStart          : PMixDetails;
    MixerReady          : boolean;   
    MixerCallbackHandle : HWND;
    FList               : TStrings;
    procedure InitiateControlDetails(var details:TMixerControlDetails;   
              ControlID,Channels:dword; pvalues:pointer);
    function GetMixerSettings(MixerDeviceID:integer):boolean;
    procedure MixerCallBack(var Msg:TMessage);
  public
    function GetName(Dest,Source:Word):string;
    function SetControl(Dest,Source:Word; LeftVolume,RightVolume:Word; Mute:boolean):boolean;
    function GetControl(Dest,Source:Word; var LeftVolume,RightVolume:Word; var Mute:boolean; var CtrlType:byte):boolean;
    function GetMeter(Dest,Source:Word; var LeftVolume,RightVolume:dword):boolean;
    function GetSources(Dest:Word):TStrings;
    function GetDestinations:TStrings;
    function Query(var Product,Formats:string):boolean;
  end;
{$ENDIF}

  TTechAudioSettings = class(TPersistent)
  private
    FAudio               : TTechAudio;
    pWaveHeader          : array [0..No_Buffers-1] of PWAVEHDR;
    pWaveBuffer          : array [0..No_Buffers-1] of pointer;
    pExtraBuffer         : array [0..No_Buffers-1] of pointer;  {Used to carry Right samples during Split channels}
    ForwardIndex         : Integer;
    ReturnIndex          : Integer;
    ActiveBuffers        : Integer;
    DeviceOpen           : Boolean;
  private
    FChannels            : TChannels;
    FBPS                 : TBPS;
    FSPS                 : Word;
    FNoSamples           : Word;
{$IFDEF WIN32}
    pWaveFmt             : pWaveFormatEx;
{$ELSE}
    pWaveFmt             : pPCMWaveFormat;
{$ENDIF}
    WaveBufSize          : Word;
    procedure SetChannels(Value:TChannels);
    procedure SetBPS(Value:TBPS);
    procedure SetSPS(Value:Word);
    procedure InitWaveHeaders;
    function AllocateMemory: Boolean;
    procedure FreeMemory;
  public
    Active               : Boolean;
  published
    property BitsPerSample: TBPS read FBPS write SetBPS default BPSDefault;
    property Channels: TChannels read FChannels write SetChannels default ChannelsDefault;
    property SampleRate: Word read FSPS write SetSPS default SPSDefault;
  end;

  PRecorder = ^TRecorder;
  TRecorder = class(TTechAudioSettings)
  private
    WaveIn                   : HWAVEIN;
    FPause                   : Boolean;
    FSplit                   : Boolean;
    FTrigLevel               : Word;
    FTriggered               : Boolean;
    RecStream                : TFileStream;
    RecToFile                : Boolean;
    AddNextInBufferHandle    : hWnd;
    procedure AddNextInBuffer2(var Msg: TMessage);
    function AddNextInBuffer: Boolean;
    procedure SetTrigLevel(Value:Word);
    function TestTrigger(StartPtr:pointer; Size:Word):boolean;
    procedure SetSplit(Value:Boolean);
    procedure Split(var LP,RP:pointer; var Size:Word);
    procedure GetError(iErr : Integer; Additional:string);
    procedure SetNoSamples(Value:Word);
    function  Open : boolean;
    function Close : boolean;
  public
    function  Start : boolean;
    function Stop : boolean;
    procedure Pause;
    procedure Restart;
    procedure RecordToFile(FileName:string; LP,RP:TStream);
  published
    property NoSamples: Word read FNoSamples write SetNoSamples default NoSamplesDefault;
    property SplitChannels: Boolean read FSplit write SetSplit default false;
    property TrigLevel: Word read FTrigLevel write SetTrigLevel default 128;
    property Triggered: Boolean read FTriggered write FTriggered default true;
  end;

  PPlayer = ^TPlayer;
  TPlayer = class(TTechAudioSettings)
  private
    WaveOut                : HWAVEIN;
    FNoOfRepeats           : Word;
    ReadPlayStreamPos      : LongInt;
    PlayStream             : TFileStream;
    FPlayFile              : boolean;
    PlayFileStream         : TFileStream;
    FOldChannels            : TChannels;
    FOldBPS                 : TBPS;
    FOldSPS                 : Word;
    FinishedPlaying         : boolean;
    AddNextOutBufferHandle  : hWnd;
    CloseHandle             : hWnd;
    procedure AddNextOutBuffer2(var Msg: TMessage);
    procedure Close2(var Msg: TMessage);
    function  Open : boolean;
    procedure GetError(iErr : Integer; Additional:string);
    function AddNextOutBuffer:longint;
  public
    procedure SetVolume(LeftVolume,RightVolume:Word);
    procedure GetVolume(var LeftVolume,RightVolume:Word);
    procedure Play(LP,RP:TStream; NoOfRepeats:Word);
    procedure Stop;
    procedure Pause;
    procedure Reset;
    procedure Restart;
    procedure BreakLoop;
    function PlayFile(FileName:string; NoOfRepeats:Word):boolean;
  published
  end;

  TTechAudio = class(TComponent)
  private
    FVersion             : string;
    FDeviceID            : Integer;
    FSepCtrl             : Boolean;
    procedure SetDeviceID(Value:Integer);
    procedure SetVersion(Value:string);
  private
    FOnAudioRecord       : TNotifyAudioRecordEvent;
    FRecorder            : TRecorder;
  private
    FOnBufferPlayed      : TNotifyBufferPlayedEvent;
    FOnPlayed            : TNotifyPlayedEvent;
    FPlayer              : TPlayer;
  private
    FWindowHandle        : HWND;
    WaveFmtSize          : Integer;
{$IFDEF WIN32}
    FMixerDeviceID       : Integer;
    FOnMixerChange       : TNotifyMixerChange;
    procedure SetMixerDeviceID(Value:Integer);
{$ENDIF}
    procedure AudioCallBack(var Msg: TMessage);export;
   public
{$IFDEF WIN32}
    Mixer                : TMixerSettings;
{$ENDIF}
    ErrorMessage         : string;
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    function Query(var Product,Formats:string):boolean;
  published
    property AudioDeviceID: Integer read FDeviceID write SetDeviceID default DefaulTTechAudioDeviceID;
{$IFDEF WIN32}
    property MixerDeviceID: Integer read FMixerDeviceID write SetMixerDeviceID default DefaultMixerDeviceID;
{$ENDIF}
    property SeparateCtrls: Boolean read FSepCtrl write FSepCtrl default false;
    property Player: TPlayer read FPlayer write FPlayer;
    property Recorder: TRecorder read FRecorder write FRecorder;
    property Version: string read FVersion write SetVersion;

    property OnRecord: TNotifyAudioRecordEvent read FOnAudioRecord write FOnAudioRecord;
    property OnBufferPlayed: TNotifyBufferPlayedEvent read FOnBufferPlayed write FOnBufferPlayed;
    property OnPlayed: TNotifyPlayedEvent read FOnPlayed write FOnPlayed;
{$IFDEF WIN32}
    property OnMixerChange:TNotifyMixerChange read FOnMixerChange write FOnMixerChange;
{$ENDIF}
  end;
{$IFDEF WIN32}
{$ELSE}
  function CorrectedwaveInClose(hWaveIn: HWaveIn): Word;
{$ENDIF}

  procedure Register;

implementation

{$IFDEF WIN32}
{$ELSE}
function CorrectedwaveInClose; external 'MMSYSTEM' index 505;
{$ENDIF}
{------------- WinAPI CallBack routines --------------------------------}
{ Callback routine used for CALLBACK_WINDOW in waveInOpen and waveOutOpen    }
procedure TTechAudio.AudioCallBack(var Msg: TMessage);
var LP,RP:pointer;
    Size:Word;
begin
  case Msg.Msg of
    mm_wim_OPEN  : FRecorder.Active:=true;
    mm_wim_CLOSE : FRecorder.Active:=false;
    mm_wim_DATA  : begin
                     if FRecorder.Active then begin
                       LP:=FRecorder.pWaveBuffer[FRecorder.ReturnIndex Mod No_Buffers];
                       RP:=FRecorder.pExtraBuffer[FRecorder.ReturnIndex Mod No_Buffers];
                       Size:=FRecorder.pWaveHeader[FRecorder.ReturnIndex Mod No_Buffers]^.dwBytesRecorded;
                       if (not(FRecorder.FPause) and FRecorder.TestTrigger(LP,Size)) then begin
                              if FRecorder.RecToFile then FRecorder.RecStream.write(LP^,Size);
                              if Assigned(FOnAudioRecord) then begin
                                if FRecorder.FSplit then begin
                                  FRecorder.Split(LP,RP,Size);
                                  FOnAudioRecord(Self,LP,RP,Size);
                                end else FOnAudioRecord(Self,LP,nil,Size);
                              end;
                       end;
                       if (Size>0) then begin
                            PostMessage(FRecorder.AddNextInBufferHandle,wim_DATA,0,0);
   {                         FRecorder.AddNextInBuffer;       }
                            FRecorder.ReturnIndex:=(FRecorder.ReturnIndex+1) mod No_Buffers;
                       end;
                     end;
                   end;
    mm_wom_OPEN  : FPlayer.Active:=true;
    mm_wom_CLOSE : FPlayer.Active:=false;
    mm_wom_DONE  : if FPlayer.Active then begin
                     if (FPlayer.ForwardIndex=FPlayer.ReturnIndex) then begin
                       if not(FPlayer.FinishedPlaying) then begin
                         FPlayer.FinishedPlaying:=true;
                         PostMessage(FPlayer.CloseHandle,mm_wom_CLOSE,0,0);
                       end;
                     end else begin
                       if Assigned(FOnBufferPlayed) then FOnBufferPlayed(Self);
                       PostMessage(FPlayer.AddNextOutBufferHandle,wom_DONE,0,0);
                       FPlayer.ReturnIndex:=(FPlayer.ReturnIndex+1) mod No_Buffers;
                       dec(FPlayer.ActiveBuffers);
                     end;
                   end;
    wm_QueryEndSession : Destroy;    { only called if Callback_Window is used }
  end;
end;
{------------- Internal/Private routines -------------------------------}

procedure TTechAudioSettings.InitWaveHeaders;
var
  i : Integer;
begin
  for i:=0 to No_Buffers-1 do begin
    pWaveHeader[i]^.lpData:=pWaveBuffer[i];
    pWaveHeader[i]^.dwBufferLength:=WaveBufSize;
    pWaveHeader[i]^.dwBytesRecorded:=0;
    pWaveHeader[i]^.dwUser:=0;
    pWaveHeader[i]^.dwFlags:=0;
    pWaveHeader[i]^.dwLoops:=0;
    pWaveHeader[i]^.lpNext:=nil;
    pWaveHeader[i]^.reserved:=0;
  end;
end;

function TTechAudioSettings.AllocateMemory: Boolean;
var
  i : Integer;
begin
    pWaveFmt:=nil;
    try
      GetMem(pWaveFmt,FAudio.WaveFmtSize);
    except
      FAudio.ErrorMessage:='Not enough memory to allocate WaveFormat';
      Result:=false;
      Exit;
    end;
    if FBPS=_8 then pWaveFmt^.wBitsPerSample :=8
    else pWaveFmt^.wBitsPerSample :=16;
{$IFDEF WIN32}
    pWaveFmt^.cbSize:=0;
    with pWaveFmt^ do begin
{$ELSE}
    with pWaveFmt^.wf do begin
{$ENDIF}
      wFormatTag:=WAVE_FORMAT_PCM;
      if FChannels=Mono then nChannels:=1
      else nChannels:=2;
      nSamplesPerSec:=FSPS;
{ BlockAlign : e.g. 16-bit stereo PCM => 4 = 2 channels x 2 bytes/channel    }
      if FBPS=_8 then nBlockAlign:=(8 div 8)*nChannels
      else nBlockAlign:=(16 div 8)*nChannels;
      nAvgBytesPerSec:=nSamplesPerSec*nBlockAlign;
      WaveBufSize:=FNoSamples*nBlockAlign;
    end;

    for i:=0 to No_Buffers-1 do begin
      pWaveHeader[i]:=nil;
      try
        GetMem(pWaveHeader[i],sizeof(TWAVEHDR));
      except
        FAudio.ErrorMessage:='Not enough memory to allocate WaveHeader';
        Result:=false;
        Exit;
      end;
      pWaveBuffer[i]:=nil;
      pExtraBuffer[i]:=nil;
      try
        GetMem(pWaveBuffer[i],WaveBufSize);
        GetMem(pExtraBuffer[i],(WaveBufSize div 2));
      except
        FAudio.ErrorMessage:='Not enough memory to allocate Wave Buffer';
        Result:=false;
        Exit;
      end;
      pWaveHeader[i]^.lpData:=pWaveBuffer[i];
    end;
    Result:=true;
end;

procedure TTechAudioSettings.FreeMemory;
var
  i : Integer;
begin
  if (pWaveFmt = nil) then Exit
  else begin
    FreeMem(pWaveFmt,FAudio.WaveFmtSize);
    pWaveFmt:=nil;
  end;
  for i:=0 to No_Buffers-1 do begin
    if (pWaveBuffer[i]<>nil) then FreeMem(pWaveBuffer[i],WaveBufSize);
    pWaveBuffer[i]:=nil;
    if (pExtraBuffer[i]<>nil) then FreeMem(pExtraBuffer[i],(WaveBufSize div 2));
    pExtraBuffer[i]:=nil;
    if (pWaveHeader[i]<>nil) then FreeMem(pWaveHeader[i],sizeof(TWAVEHDR));
    pWaveHeader[i]:=nil;
  end;
end;

function TRecorder.TestTrigger(StartPtr:pointer; Size:Word):boolean;
var
{$IFDEF WIN32}
    i : longint;
    j :boolean;
    k : Word;
{$ELSE}
    BytesCounted : Word;
    pb : ^byte;
    ip : ^smallint;
{$ENDIF}
begin
{$IFDEF WIN32}
  if not(FTriggered) and (Size>0) then begin
    j:=FTriggered;
    i:=Size;
    k:=FTrigLevel;
    if FBPS=_8 then begin
asm
    mov eax,StartPtr
    mov ecx,i
    mov edx,0
@trig8:
    mov dl,[eax]
    cmp dx,k
    jge @out8
    add eax,1
    pop ecx
    loop @trig8
    jmp @out88
@out8:
    mov j,1
@out88:
end;
    end else begin
asm
    mov eax,StartPtr
    mov ecx,i
    shr ecx,1
    mov edx,0
@trig16:
    mov dx,[eax]
    cmp dx,k
    jge @out16
    add eax,2
    loop @trig16
    jmp @out16a
@out16:
    mov j,1
@out16a:
end;
    end;
    FTriggered:=j;
  end;
{$ELSE}
  if not(FTriggered) and (Size>0) then begin
    if FBPS=_8 then begin
      pb:=StartPtr;
      repeat
         if pb^>TrigLevel then FTriggered:=true;
         inc(pb);
         inc(BytesCounted);
      until (BytesCounted>=Size) or FTriggered;
    end else begin
      ip:=StartPtr;
      repeat
         if ip^>TrigLevel then FTriggered:=true;
         inc(ip);
         inc(BytesCounted,2);
      until (BytesCounted>=Size) or FTriggered;
    end;
  end;
{$ENDIF}
  Result:=FTriggered;
end;

procedure TRecorder.Split(var LP,RP:pointer; var Size:Word);
var
    i : longint;
    lb,rb,pb : ^byte;
begin
 if (Size>0) then begin
  Size:=Size div 2;
  lb:=LP; rb:=RP;
  pb:=LP;
{$IFDEF WIN32}
  i:=Size;
  if FBPS=_8 then begin
asm
    mov eax,lb
    mov ecx,i
    mov edx,rb
@split8:
    push ecx
    mov ecx,pb
    mov cx,[ecx]
    mov [eax],cl
    mov [edx],ch
    add dword ptr [pb],2
    add eax,1
    add edx,1
    pop ecx
    loop @split8
end;
  end else begin
asm
    mov eax,lb
    mov ecx,i
    shr ecx,1
    mov edx,rb
@split16:
    push ecx
    mov ecx,pb
    mov ecx,[ecx]
    mov [eax],cx
    shr ecx,16
    mov [edx],cx
    add dword ptr [pb],4
    add eax,2
    add edx,2
    pop ecx
    loop @split16
end;
  end;
{$ELSE}
{ The lines below are replaced with the asm routine above
  starting from (and including) i:=Size       }
  if FBPS=_8 then begin
    for i:=1 to Size do begin
       lb^:=pb^; inc(lb);inc(pb);
       rb^:=pb^; inc(rb);inc(pb);
    end;
  end else begin
    for i:=1 to (Size div 2) do begin
       lb^:=pb^; inc(lb);inc(pb);
       lb^:=pb^; inc(lb);inc(pb);
       rb^:=pb^; inc(rb);inc(pb);
       rb^:=pb^; inc(rb);inc(pb);
    end;
  end;
{$ENDIF}
 end;
end;

procedure TRecorder.AddNextInBuffer2(var Msg: TMessage);
begin
   if (Msg.Msg=wim_DATA) and DeviceOpen then AddNextInBuffer;
end;

function TRecorder.AddNextInBuffer: Boolean;
var
  iErr : Integer;
begin
   iErr:=waveInAddBuffer(WaveIn, pwaveheader[ForwardIndex], sizeof(TWAVEHDR));
   if (iErr<>0) then begin
       Stop;
       GetError(iErr,'Error adding input buffer');
       Result:=false;
       Exit;
   end;
   ForwardIndex:=(ForwardIndex+1) mod No_Buffers;
   Result:=true;
end;

procedure TRecorder.GetError(iErr : Integer; Additional:string);
var
  ErrorText : string;
  pError : PChar;
begin
  GetMem(pError,256*2);   { make sure there is ample space if WideChar is used }
  waveInGetErrorText(iErr,pError,255);
  ErrorText:=StrPas(pError);
  FreeMem(pError,256*2);
  if length(ErrorText)=0 then FAudio.ErrorMessage:=Additional
  else FAudio.ErrorMessage:=Additional+' '+ErrorText;
end;

procedure TPlayer.AddNextOutBuffer2(var Msg: TMessage);
begin
   if (Msg.Msg=wom_DONE) and DeviceOpen then AddNextOutBuffer;
end;

function TPlayer.AddNextOutBuffer:longint;
var  iErr:integer;
     WritePos:Longint;
begin
  if (PlayStream<>nil) then begin
    FinishedPlaying:=false;
    WritePos:=PlayStream.Position;
    PlayStream.Position:=ReadPlayStreamPos;
    Result:=PlayStream.Read(pwaveheader[ForwardIndex]^.lpData^,WaveBufSize);
    if (Result=0) and (FNoOfRepeats>0) then begin
      dec(FNoOfRepeats,1);
      PlayStream.Position:=0;
      Result:=PlayStream.Read(pwaveheader[ForwardIndex]^.lpData^,WaveBufSize);
    end;
    ReadPlayStreamPos:=PlayStream.Position;
    PlayStream.Position:=WritePos;
    if Result>0 then begin
      pwaveheader[ForwardIndex]^.dwBufferLength:=Result;
      pwaveheader[ForwardIndex]^.dwFlags:=0;
      pwaveheader[ForwardIndex]^.dwLoops:=0;
      iErr:=waveOutPrepareHeader(WaveOut,pWaveHeader[ForwardIndex],sizeof(TWAVEHDR));
      if iErr<>0 then begin
        GetError(iErr,'');
        Exit;
      end;
      iErr:=waveOutWrite(WaveOut, pwaveheader[ForwardIndex], sizeof(TWAVEHDR));
      if iErr<>0 then begin
        GetError(iErr,'');
        Exit;
      end;
      ForwardIndex:=(ForwardIndex+1) mod No_Buffers;
      inc(ActiveBuffers);
    end else begin
      PlayStream.Free;
      PlayStream:=nil;
    end;
  end else Result:=0;
end;

procedure TPlayer.GetError(iErr : Integer; Additional:string);
var
  ErrorText : string;
  pError : PChar;
begin
  GetMem(pError,256*2);   { make sure there is ample space if WideChar is used }
  waveOutGetErrorText(iErr,pError,255);
  ErrorText:=StrPas(pError);
  FreeMem(pError,256*2);
  if length(ErrorText)=0 then FAudio.ErrorMessage:=Additional
  else FAudio.ErrorMessage:=Additional+' '+ErrorText;
end;

{$IFDEF WIN32}
{ Mixer Controls only available in the 32bit version          }
procedure TMixerSettings.InitiateControlDetails(var details:TMixerControlDetails; 
              ControlID,Channels:dword; pvalues:pointer);
begin
 details.cbStruct := sizeof (details);
 details.dwControlID := ControlID;
 details.cChannels := Channels;
 details.cMultipleItems := 0;
 details.cbDetails := sizeof (dword);
 details.paDetails := pvalues;
end;

function TMixerSettings.SetControl(Dest,Source:Word; LeftVolume,RightVolume:Word; Mute:boolean):boolean;
var P:PMixDetails;
    err : integer;
    values : ValuesArray;
    details : TMixerControlDetails;  
begin
  Result:=false;
  P:=MixerStart;
  if MixerReady then begin
    while (P<>nil) do begin
      if ((P^.Destination=Dest) and (P^.Source=Source)) then begin
        if P^.VolControlID<65535 then begin
          if P^.Mono then begin
            InitiateControlDetails(details,P^.VolControlID,1,@values);
          end else begin
            InitiateControlDetails(details,P^.VolControlID,2,@values);
          end;
          values[0]:= LeftVolume;
          values[1]:= RightVolume;
          err := mixerSetControlDetails (MixerHandle, @details, MIXER_SETCONTROLDETAILSF_VALUE);
          if err<>MMSYSERR_NOERROR then begin
            FAudio.ErrorMessage:='Volume SetControlError in Mixer';
            exit;
          end;
        end;
        if P^.MuteControlID<65535 then begin
          InitiateControlDetails(details,P^.MuteControlID,1,@values);
          if Mute then values[0]:= 1
          else values[0]:=0;
          err := mixerSetControlDetails (MixerHandle, @details, MIXER_SETCONTROLDETAILSF_VALUE);
          if err<>MMSYSERR_NOERROR then begin
            FAudio.ErrorMessage:='Mute SetControlError in Mixer';
            exit;
          end else Result:=true;
        end else Result:=true;
        Exit;
      end;
      P:=P^.Next;
    end;
  end;
end;

function TMixerSettings.GetControl(Dest,Source:Word; var LeftVolume,RightVolume:Word;
                                   var Mute:boolean; var CtrlType:byte):boolean;
var P:PMixDetails;
    err : integer;
    values : ValuesArray;
    details : TMixerControlDetails;  
begin
  Result:=false;
  P:=MixerStart;
  if MixerReady then begin
    while (P<>nil) do begin
      if ((P^.Destination=Dest) and (P^.Source=Source)) then begin
        CtrlType:=byte(P^.CtrlType);
        if P^.Mono then InitiateControlDetails(details,P^.VolControlID,1,@values)
        else InitiateControlDetails(details,P^.VolControlID,2,@values);
        err := mixerGetControlDetails (MixerHandle, @details, MIXER_GETCONTROLDETAILSF_VALUE);
        if err<>MMSYSERR_NOERROR then begin
          FAudio.ErrorMessage:='Volume GetControlError in Mixer';
          exit;
        end;
        LeftVolume:=values[0];
        if P^.Mono then RightVolume:=LeftVolume
        else RightVolume:=values[1];
         InitiateControlDetails(details,P^.MuteControlID,1,@values);
        err := mixerGetControlDetails (MixerHandle, @details, MIXER_GETCONTROLDETAILSF_VALUE);
        if err<>MMSYSERR_NOERROR then begin
          FAudio.ErrorMessage:='Mute GetControlError in Mixer';
          exit;
        end;
        if values[0]=0 then Mute:=false
        else Mute:=true;
        Result:=true;
        Exit;
      end;
      P:=P^.Next;
    end;
  end;
end;

function TMixerSettings.GetMeter(Dest,Source:Word; var LeftVolume,RightVolume:dword):boolean;
var P:PMixDetails;
    err : integer;
    values, val2: PMixerControlDetailsSigned; 
    details : TMixerControlDetails;  
begin
  Result:=false;
  P:=MixerStart;
  if MixerReady then begin
    while (P<>nil) do begin
      if ((P^.Destination=Dest) and (P^.Source=Source) and (P^.Meter>0)) then begin
        GetMem(values, 2*SizeOf(TMixerControlDetailsSigned));
        InitiateControlDetails(details,P^.MeterControlID,P^.Meter,values);
        err := mixerGetControlDetails (MixerHandle, @details, MIXER_GETCONTROLDETAILSF_VALUE);
        if err<>MMSYSERR_NOERROR then exit;
        val2:=values;
        LeftVolume:=val2^.lValue;
        if P^.Meter=1 then RightVolume:=LeftVolume
        else begin
          inc(val2);
          RightVolume:=val2^.lValue;
        end;
        Result:=true;
        FreeMem(values, 2*SizeOf(TMixerControlDetailsSigned));
        Exit;
      end;
      P:=P^.Next;
    end;
  end;
end;

function TMixerSettings.GetName(Dest,Source:Word):string;
var P:PMixDetails;
begin
  Result:='';
  if MixerReady then begin
    P:=MixerStart;
    while (P<>nil) do begin
      if ((P^.Destination=Dest) and (P^.Source=Source)) then begin
        Result:=P^.Name;
        Exit;
      end;
      P:=P^.Next;
    end;
  end;
end;

function TMixerSettings.GetSources(Dest:Word):TStrings;
var P:PMixDetails;
begin
  P:=MixerStart;
  FList.Clear;
  if MixerReady then begin
    while P<>nil do begin
      if (P^.Destination=Dest) then begin
        if P^.Available then FList.Insert(P^.Source,P^.Name)
        else FList.Insert(P^.Source,'');
      end;
      P:=P^.Next;
    end;
  end;
  Result:=FList;
end;

function TMixerSettings.GetDestinations:TStrings;
var P:PMixDetails;
begin
  P:=MixerStart;
  FList.Clear;
  if MixerReady then begin
    while P<>nil do begin
      if (P^.Source=0) then FList.Insert(P^.Destination,P^.Name);
      P:=P^.Next;
    end;
  end;
  Result:=FList;
end;

function TMixerSettings.Query(var Product,Formats:string):boolean;
var
  PMix : PMixDetails;
  i : integer;
begin
  Result:=false;
  Product:=''; Formats:='';
  if MixerReady then begin
    if (mixerGetNumDevs=0) then begin
      Formats:='Mixer not present';
    end else begin
      PMix:=MixerStart;
      if PMix<>nil then Product:=PMix.Name;
      Formats:='Mixer devices present: '+IntToStr(mixerGetNumDevs)+'. DeviceID '+
               IntToStr(FAudio.FMixerDeviceID)+' has:';
      i:=0; PMix:=PMix^.Next;
      while PMix<>nil do begin
        if (PMix.Destination=i) then begin
          Formats:=Formats+#13#10+PMix.Name+': ';
          i:=i+1;
        end else begin
          Formats:=Formats+PMix.Name+', ';
        end;
        PMix:=PMix^.Next;
      end;
      Result:=true;
    end;
  end;
end;

procedure TMixerSettings.MixerCallBack(var Msg:TMessage);
var P : PMixDetails;
    Found : boolean;
begin
  if (Msg.Msg = MM_MIXM_CONTROL_CHANGE) and MixerReady then begin
    if (Assigned(FAudio.OnMixerChange)) then begin
      FAudio.OnMixerChange(Self,word(Msg.wParam),word(Msg.lParam));
      Found:=false;
      P:=MixerStart;
      while (P<>nil) and not(Found) do begin
        if (P^.VolControlID=Msg.lParam) or (P^.MuteControlID=Msg.lParam) then begin
          Found:=true;
          FAudio.OnMixerChange(Self,P^.Destination,P^.Source);
        end;
        P:=P^.Next;
      end;
    end;
  end;
end;

function TMixerSettings.GetMixerSettings(MixerDeviceID:integer):boolean;
var
  j, k, err : Integer;
  caps : TMixerCaps;   
  lineInfo, connectionInfo : TMixerLine;  
  PMix:PMixDetails;
  Data : ValuesArray;
  speakers : boolean;

procedure UpdateLinkedList(Update:Word; var P:PMixDetails; Destination, Source : dword; Name : string;
                           ControlID : dword; Data : ValuesArray; Mono, Speakers:boolean);
var
   TempDest,TempSource : word;
begin
 if (P<>nil) or (Update=0) then begin
  case Update of
  0 : begin
        new(P);
        P^.Next:=nil; P^.Available:=false; P^.Mono:=false;
        P^.Destination:=65535;
        P^.Source:=65535;
        P^.Name:=Name;
        P^.Speakers:=Speakers;
        P^.VolControlID:=65535; P^.Left:=0; P^.Right:=0;
        P^.MuteControlID:=65535; P^.Mute:=false;
        P^.MeterControlID:=65535; P^.Meter:=0;
        P^.CtrlType:=0;
      end;
  1 : begin
        TempDest:=P^.Destination; TempSource:=P^.Source;
        new(P^.Next); P:=P^.Next;
        P^.Next:=nil; P^.Available:=false; P^.Mono:=false;
        if (word(Destination)<>TempDest) then begin
          TempDest:=word(Destination);
          TempSource:=0;
        end else TempSource:=(TempSource+1) mod 65536;
        P^.Destination:=TempDest; P^.Source:=TempSource;
        P^.Name:=Name;
        P^.Speakers:=Speakers;
        P^.VolControlID:=65535; P^.Left:=0; P^.Right:=0;
        P^.MuteControlID:=65535; P^.Mute:=false;
        P^.MeterControlID:=65535; P^.Meter:=0;
        P^.CtrlType:=128;
      end;
  2 : begin
       if P^.MuteControlID=65535 then begin
         P^.MuteControlID:=ControlID;
         if Data[0]=0 then P^.Mute:=false
         else P^.Mute:=true;
         P^.Available:=true;
         P^.CtrlType:=(P^.CtrlType and 127);
       end;
      end;
  3 : begin
       P^.VolControlID:=ControlID;
       P^.Left:=Data[0];
       if Mono then begin
         P^.Mono:=true;
         P^.CtrlType:=P^.CtrlType+64;
       end else P^.Right:=Data[1];
       P^.Available:=true;
      end;
  4 : begin
       P^.MeterControlID:=ControlID;
       if Mono then P^.Meter:=1
       else P^.Meter:=2;
      end;
  end;
 end;
end;

function GetControl(var PMixer:PMixDetails; MixLine:TMixerLine; speakers:boolean):boolean;
var err,j:integer;
  mixerLineControls : TMixerLineControls; 
  p, controls : PMixerControl;  
  details : TMixerControlDetails;  
  values : ValuesArray;
begin
   UpdateLinkedList(1,PMixer,MixLine.dwDestination,MixLine.dwSource,
      StrPas(MixLine.szName),word(MixLine.dwComponentType),Data,false,speakers);
   mixerLineControls.cbStruct := sizeof (mixerLineControls);
   mixerLineControls.dwLineID := MixLine.dwLineID;
   mixerLineControls.cControls := MixLine.cControls;
   mixerLineControls.cbmxctrl := sizeof (TMixerControl);
   if MixLine.cControls>0 then begin
     GetMem (controls, sizeof (TMixerControlW) * MixLine.cControls);  { make sure to reserve ample space even for WideChar }
     mixerLineControls.pamxctrl := controls;
     err:=mixerGetLineControls (MixerHandle, @mixerLineControls, MIXER_GETLINECONTROLSF_ALL);
     if  err=MMSYSERR_NOERROR then begin
       p := controls;
       for j := 0 to mixerLineControls.cControls - 1 do begin
         if (p^.dwControlType=MIXERCONTROL_CONTROLTYPE_VOLUME) then begin
            InitiateControlDetails(details,p^.dwControlID,MixLine.cChannels,@values);
            if mixerGetControlDetails (MixerHandle, @details, MIXER_GETCONTROLDETAILSF_VALUE) = MMSYSERR_NOERROR then
              UpdateLinkedList(3,PMixer,0,0,'',details.dwControlID,values,(MixLine.cChannels=1),speakers);
         end else begin
           if (p^.dwControlType=MIXERCONTROL_CONTROLTYPE_MUTE) then begin
            InitiateControlDetails(details,p^.dwControlID,1,@values);
            if mixerGetControlDetails (MixerHandle, @details, MIXER_GETCONTROLDETAILSF_VALUE) = MMSYSERR_NOERROR then
              UpdateLinkedList(2,PMixer,0,0,'',details.dwControlID,values,false,speakers);
           end else begin
              if (p^.dwControlType=MIXERCONTROL_CONTROLTYPE_PEAKMETER) then begin
                InitiateControlDetails(details,p^.dwControlID,MixLine.cChannels,@values);
                if mixerGetControlDetails (MixerHandle, @details, MIXER_GETCONTROLDETAILSF_VALUE) = MMSYSERR_NOERROR then
                  UpdateLinkedList(4,PMixer,0,0,'',details.dwControlID,values,(MixLine.cChannels=1),speakers);
              end;
           end;
         end;
         Inc (p);
       end;
       Result:=true;
     end else Result:=false;
     FreeMem (controls, sizeof (TMixerControlW) * MixLine.cControls);
   end else Result:=true;
end;

begin
  Result:=false; MixerStart:=nil; PMix:=nil;
  if mixerGetNumDevs=0 then begin
    exit;
  end else begin
    MixerGetDevCaps (MixerDeviceID, @caps, sizeof (caps));
    err:= mixerOpen (@MixerHandle, MixerDeviceID, MixerCallbackHandle, 0, CALLBACK_WINDOW OR MIXER_OBJECTF_MIXER);
    if err = MMSYSERR_NOERROR then begin
      UpdateLinkedList(0,MixerStart,dword(-1),dword(-2),StrPas(caps.szPname),0,Data,false,false);
      PMix:=MixerStart;
        for j := 0 to caps.cDestinations - 1 do begin
          lineInfo.cbStruct := sizeof (lineInfo);
          lineInfo.dwDestination := j;
          lineinfo.dwSource:=0;           { Added this line 990318/HBn }
          Result:=false;
          err:=mixerGetLineInfo (MixerHandle, @lineInfo, MIXER_GETLINEINFOF_DESTINATION);
          if err = MMSYSERR_NOERROR then begin
            speakers:=(lineInfo.dwComponentType=MIXERLINE_COMPONENTTYPE_DST_SPEAKERS);
            GetControl(PMix,lineInfo,speakers);
            for k := 0 to lineInfo.cConnections - 1 do begin
              connectionInfo.cbStruct := sizeof (connectionInfo);
              connectionInfo.dwDestination := j;
              connectionInfo.dwSource := k;
              Result:=false;
              err:=mixerGetLineInfo (MixerHandle, @connectionInfo, MIXER_GETLINEINFOF_SOURCE);
              if err = MMSYSERR_NOERROR then GetControl(PMix,connectionInfo,speakers)
              else exit;
            end;
            Result:=true;
          end else exit;
        end;
    end;
  end;
end;
{$ENDIF}

{------------- Public methods ---------------------------------------}
constructor TTechAudio.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   FDeviceID:=DefaulTTechAudioDeviceID;
   FSepCtrl:=false;
   FVersion:=Ver;
   FRecorder:=TRecorder.Create; FRecorder.FAudio:=Self;
   FRecorder.Active:=false;
   FRecorder.FBPS:=BPSDefault;
   FRecorder.FNoSamples:=NoSamplesDefault;
   FRecorder.FChannels:=ChannelsDefault;
   FRecorder.FSPS:=SPSDefault;
   FRecorder.AddNextInBufferHandle:= AllocateHWnd(FRecorder.AddNextInBuffer2);
   FPlayer:=TPlayer.Create; FPlayer.FAudio:=Self;
   FPlayer.Active:=false;
   FPlayer.FBPS:=BPSDefault;
   FPlayer.FNoSamples:=NoSamplesDefault;
   FPlayer.FChannels:=ChannelsDefault;
   FPlayer.FSPS:=SPSDefault;
   FPlayer.PlayStream:=nil;
   FPlayer.FPlayFile:=false;
   FPlayer.ActiveBuffers:=0;
   FPlayer.AddNextOutBufferHandle:= AllocateHWnd(FPlayer.AddNextOutBuffer2);
   FPlayer.CloseHandle:=AllocateHWnd(FPlayer.Close2);
   FWindowHandle:=AllocateHWnd(AudioCallBack);
{$IFDEF WIN32}
   WaveFmtSize:=SizeOf(TWaveFormatEx);
   Mixer:=TMixerSettings.Create;
   Mixer.MixerReady:=false;
   Mixer.FAudio:=Self;
   FMixerDeviceID:=DefaultMixerDeviceID;
   Mixer.FList:=TStringList.Create;
   Mixer.MixerStart:=nil;
   Mixer.MixerCallbackHandle:=AllocateHWnd(Mixer.MixerCallback);
   if Mixer.GetMixerSettings(FMixerDeviceID) then Mixer.MixerReady:=true;
{$ELSE}
   WaveFmtSize:=SizeOf(TPCMWaveFormat);
{$ENDIF}
   FRecorder.RecToFile:=false; ErrorMessage:='';
   if (waveInGetNumDevs<1) then Exit;
   if not(FRecorder.AllocateMemory) then Exit;
   if (waveOutGetNumDevs<1) then Exit;
   if not(FPlayer.AllocateMemory) then Exit;
end;

destructor TTechAudio.Destroy;
var i:longint;
{$IFDEF WIN32}
    P1,P2 :PMixDetails;
{$ENDIF}
begin
   FPlayer.Stop;
   FRecorder.Stop;
{$IFDEF WIN32}
   Mixer.FList.Free;
   if Mixer.MixerStart<>nil then mixerClose(Mixer.MixerHandle);
   P1:=Mixer.MixerStart;
   while P1<>nil do begin
     P2:=P1.Next;
     Dispose(P1);
     P1:=P2;
   end;
  if Mixer.MixerCallbackHandle<>0 then DeAllocateHwnd(Mixer.MixerCallbackHandle);
  Mixer.Free;
{$ENDIF}
  with FRecorder do begin
   if RecToFile and (RecStream<>nil) then begin
     i:=RecStream.Size-8;    { size of file  }
     RecStream.Position:=4;
     RecStream.write(i,4);
     i:=i-$24;               { size of data  }
     RecStream.Position:=40;
     RecStream.write(i,4);
     RecStream.Free;
     RecToFile:=false;
   end;
 {  Close;       }
   FreeMemory;
   if AddNextInBufferHandle<>0 then DeallocateHWnd(AddNextInBufferHandle);
   Free;
  end;
  with FPlayer do begin
    FreeMemory;
    if AddNextOutBufferHandle<>0 then DeallocateHWnd(AddNextOutBufferHandle);
    if CloseHandle<>0 then DeallocateHWnd(CloseHandle);
    Free;
  end;
  if FWindowHandle<>0 then DeAllocateHWnd(FWindowHandle);
  inherited Destroy;
end;

function TTechAudio.Query(var Product,Formats:string):boolean;
var Caps : PWaveOutCaps;  
    i1,i2,j1,j2 : Word;
    iErr : Integer;
begin
  Result:=false;
  Product:=''; Formats:='';
  if (waveInGetNumDevs<=FDeviceID) or (waveOutGetNumDevs<=FDeviceID) then begin
    ErrorMessage:='No waveform device available';
    Exit;
  end else begin
    GetMem(Caps,SizeOf(TWaveOutCapsW));
    iErr:=waveOutGetDevCaps(FDeviceID,Caps,SizeOf(TWaveOutCaps));
    if (iErr<>0) then begin
      FPlayer.GetError(iErr,'');
      Exit;
    end else begin
      Product:=StrPas(Caps^.szPname);
      Formats:='';
      if ((Caps^.dwFormats and WAVE_FORMAT_1M08)>0) then Formats:='11.025';
      if ((Caps^.dwFormats and WAVE_FORMAT_2M08)>0) then Formats:=Formats+'/22.05';
      if ((Caps^.dwFormats and WAVE_FORMAT_1M08)>0) then Formats:=Formats+'/44.1';
      Formats:=Formats+' kHz, ';
      if ((Caps^.dwFormats and WAVE_FORMAT_1M08)>0) then Formats:=Formats+'Mono';
      if ((Caps^.dwFormats and WAVE_FORMAT_1S08)>0) then Formats:=Formats+'/Stereo';
      if ((Caps^.dwFormats and WAVE_FORMAT_1M08)>0) then Formats:=Formats+', 8';
      if ((Caps^.dwFormats and WAVE_FORMAT_1M16)>0) then Formats:=Formats+'/16';
      Formats:=Formats+'-bit, Playback Controls: ';
      if ((Caps^.dwSupport and WAVECAPS_LRVOLUME)>0) then Formats:=Formats+'Separate L/R Volume'
      else if ((Caps^.dwSupport and WAVECAPS_VOLUME)>0) then Formats:=Formats+'Volume';
      FPlayer.GetVolume(i1,i2);
      FPlayer.SetVolume((i1+10) mod 65535,(i2+10) mod 65535);
      FPlayer.GetVolume(j1,j2);
      FPlayer.SetVolume(i1,i2);
      if not((j1=((i1+10) mod 65535)) and (j2=((i2+10) mod 65535))) then
        Formats:=Formats+' (not controllable with this DeviceID driver)';
      if ((Caps^.dwSupport and WAVECAPS_PITCH)>0) then Formats:=Formats+', Pitch';
      if ((Caps^.dwSupport and WAVECAPS_PLAYBACKRATE)>0) then Formats:=Formats+', Rate';
      if ((Caps^.dwSupport and WAVECAPS_SYNC)>0) then Formats:=Formats+', Synchronous Device';
      FRecorder.FPause:=true;
      FRecorder.Close;
      if (FPlayer.Open and FRecorder.Open) then begin
        if (FPlayer.DeviceOpen and FRecorder.DeviceOpen) then Formats:='Full-duplex support, '+Formats
        else Formats:='Half-duplex support, '+Formats;
      end else Formats:='Half-duplex support, '+Formats;
      FRecorder.Close;
      FRecorder.FPause:=false;
      PostMessage(FPlayer.CloseHandle,mm_wom_CLOSE,0,0);
     end;
    if Caps<>nil then FreeMem(Caps,SizeOf(TWaveOutCapsW));
  end;
  Result:=true;
end;

{ Callback routine used for CALLBACK_FUNCTION in waveInOpen    }
{$IFDEF WIN32}
procedure RecorderCallBack(hW:HWAVEIN; uMsg,dwInstance,dwParam1,dwParam2 : DWORD);  stdcall;
{$ELSE}
procedure RecorderCallBack(hW:HWAVEIN; uMsg,dwInstance,dwParam1,dwParam2 : LongInt);  stdcall;
{$ENDIF}
var LP,RP:pointer;
    Size:Word;
    RecPtr : PRecorder;
begin
  RecPtr := Pointer(dwInstance);
  with RecPtr^ do begin
   case uMsg of
    wim_OPEN  : Active:=true;
    wim_CLOSE : Active:=false;
    wim_DATA  : begin
                  if Active then begin
                    LP:=pWaveBuffer[ReturnIndex Mod No_Buffers];
                    RP:=pExtraBuffer[ReturnIndex Mod No_Buffers];
                    Size:=pWaveHeader[ReturnIndex Mod No_Buffers]^.dwBytesRecorded;
                    if (not(FPause) and TestTrigger(LP,Size)) then begin
                           if RecToFile then RecStream.write(LP^,Size);
                           if Assigned(FAudio.FOnAudioRecord) then begin
                             if FSplit then begin
                               Split(LP,RP,Size);
                               FAudio.FOnAudioRecord(RecPtr^,LP,RP,Size);
                             end else FAudio.FOnAudioRecord(RecPtr^,LP,nil,Size);
                           end;
                    end;
                    if (Size>0) then begin
                         PostMessage(AddNextInBufferHandle,wim_DATA,0,0);
                         ReturnIndex:=(ReturnIndex+1) mod No_Buffers;
                    end;
                  end;
                end;
   end;
  end;
end;

function TRecorder.Open : boolean;
var
  iErr, i : Integer;
begin
  if not(DeviceOpen) then begin
    Result:=false;
    ForwardIndex:=0;
    ReturnIndex:=0;
{$IFDEF WIN32}
   iErr:=waveInOpen(@WaveIn,FAudio.FDeviceID, pWaveFmt,dword(@RecorderCallBack),
                     dword(@FAudio.FRecorder), CALLBACK_FUNCTION+WAVE_ALLOWSYNC);                              
{  iErr:=waveInOpen(@WaveIn,FAudio.FDeviceID, pWaveFmt,FAudio.FWindowHandle,0, CALLBACK_WINDOW+WAVE_ALLOWSYNC); }
{$ELSE}
{  iErr:=waveInOpen(@WaveIn,FAudio.FDeviceID, @pWaveFmt^.wf,LongInt(@RecorderCallBack),
                    LongInt(@FAudio.FRecorder), CALLBACK_FUNCTION+WAVE_ALLOWSYNC);    }
{ Problem to get CALLBACK_FUNCTION to work in 16bit version    }
    iErr:=waveInOpen(@WaveIn,FAudio.FDeviceID, @pWaveFmt^.wf,FAudio.FWindowHandle,0, CALLBACK_WINDOW+WAVE_ALLOWSYNC);
{$ENDIF}
    if (iErr<>0) then begin
      Close;
      GetError(iErr,'Could not open the input device for recording: ');
      Exit;
    end;
    DeviceOpen:=true;
    InitWaveHeaders;
    for i:=0 to No_Buffers-1 do begin
     iErr:=waveInPrepareHeader(WaveIn, pWaveHeader[i], sizeof(TWAVEHDR));
       if (iErr<>0) then begin
           Close;
           GetError(iErr,'Error preparing header for recording: ');
           Exit;
       end;
    end;
    if not(AddNextInBuffer) then begin
      FAudio.ErrorMessage:='Error adding next input buffer';
      Exit;
    end;
  end;
  Result:=true;
end;

function TRecorder.Close : boolean;
var
  iErr,i : Integer;
begin
  Result:=false;
  if not(DeviceOpen) then begin
     FAudio.ErrorMessage:='Recorder already closed';
     Result:=true;
     Exit;
  end;
  if (waveInReset(WaveIn)<>0) then begin
     FAudio.ErrorMessage:='Error in waveInReset';
     Exit;
  end;
  for i:=0 to No_Buffers-1 do begin
     iErr:=waveInUnprepareHeader(WaveIn, pWaveHeader[i], sizeof(TWAVEHDR));
     if (iErr<>0) then begin
       GetError(iErr,'Error in waveInUnprepareHeader');
       Exit;
     end;
  end;
{$IFDEF WIN32}
  if (waveInClose(WaveIn)<>0) then begin
{$ELSE}
  if (correctedwaveInClose(WaveIn)<>0) then begin
{$ENDIF}
     FAudio.ErrorMessage:='Error closing input device';
     Exit;
  end;
  DeviceOpen:=false;
  Result:=true;
end;

function TRecorder.Start : boolean;
var
  iErr, i : Integer;
begin
  Result:=false;
  if Open then begin
    iErr:=WaveInStart(WaveIn);
    if (iErr<>0) then begin
      GetError(iErr,'Error starting wave record: ');
      Close;
      Result:=false;
      Exit;
    end;
    for i:=1 to No_Buffers-1 do
      if not(AddNextInBuffer) then begin
         FAudio.ErrorMessage:='Error adding next input buffer';
         Exit;
      end;
    Result:=true;
  end;
end;

function TRecorder.Stop : boolean;
var i:longint;
begin
  Active:=false;
  Result:=Close;
  if RecToFile then begin
    i:=RecStream.Size-8;    { size of file  }
    RecStream.Position:=4;
    RecStream.write(i,4);
    i:=i-$24;               { size of data   }
    RecStream.Position:=40;
    RecStream.write(i,4);
    RecStream.Free;
    RecToFile:=false;
  end;
  while Active do Application.ProcessMessages; 
end;

procedure TRecorder.Pause;
begin
  if DeviceOpen then FPause:=true;
end;

procedure TRecorder.Restart;
begin
  if DeviceOpen then FPause:=false;
end;

procedure TRecorder.RecordToFile(FileName:string; LP,RP:TStream);
var temp:string;
    i : LongInt;
    T1,T2 : ^byte;
begin
  if FileName<>'' then begin
    RecToFile:=true;
    RecStream:=TFileStream.Create(FileName,fmCreate);
    temp:='RIFF';RecStream.write(temp[1],length(temp));
    temp:=#0#0#0#0;RecStream.write(temp[1],length(temp));     { File size: to be updated }
    temp:='WAVE';RecStream.write(temp[1],length(temp));
    temp:='fmt ';RecStream.write(temp[1],length(temp));
    temp:=#$10#0#0#0;RecStream.write(temp[1],length(temp));   { Fixed }
    temp:=#1#0;RecStream.write(temp[1],length(temp));         { PCM format }
    if FChannels=Mono then temp:=#1#0
    else temp:=#2#0;
    RecStream.write(temp[1],length(temp));
    RecStream.write(FSPS,2);
    temp:=#0#0;RecStream.write(temp[1],length(temp));         { SampleRate is given is dWord }
{$IFDEF WIN32}
    with pWaveFmt^ do begin
{$ELSE}
    with pWaveFmt^.wf do begin
{$ENDIF}
      RecStream.write(nAvgBytesPerSec,4);
      RecStream.write(nBlockAlign,2);
    end;
    RecStream.write(pWaveFmt^.wBitsPerSample,2);
    temp:='data';RecStream.write(temp[1],length(temp));
    temp:=#0#0#0#0;RecStream.write(temp[1],length(temp));    { Data size: to be updated }

    if (LP<>nil) then begin
      LP.Position:=0;
      if (RP<>nil) and (RP.Size=LP.Size) then begin
      RP.Position:=0;
      GetMem(T1,1000); T2:=T1;
      if FBPS=_8 then begin
        for i:=1 to LP.Size do begin
          LP.Read(T2^,1);inc(T2,1);
          RP.Read(T2^,1); inc(T2,1);
          if (i mod 500)=0 then begin
            RecStream.Write(T1^,1000);
            T2:=T1;
          end;
        end;
        i:=LP.Size mod 500;
        if i>0 then begin
          RecStream.Write(T1^,i*2);
        end;
      end else begin
        for i:=1 to (LP.Size div 2) do begin
          LP.Read(T2^,2);inc(T2,2);
          RP.Read(T2^,2); inc(T2,2);
          if (i mod 250)=0 then begin
            RecStream.Write(T1^,1000);
            T2:=T1;
          end;
        end;
        i:=(LP.Size div 2) mod 250;
        if i>0 then begin
          RecStream.Write(T1^,i*2);
        end;
      end;
      FreeMem(T1,1000);
    end else RecStream.CopyFrom(LP,LP.Size);
{
    if (LP<>nil) then begin
      LP.Position:=0;
      if (RP<>nil) and (RP.Size=LP.Size) then begin
        RP.Position:=0;
        if FBPS=_8 then begin
          for i:=1 to LP.Size do begin
             RecStream.CopyFrom(LP,1);
             RecStream.CopyFrom(RP,1);
          end;
        end else begin
          for i:=1 to (LP.Size div 2) do begin
             RecStream.CopyFrom(LP,2);
             RecStream.CopyFrom(RP,2);
          end;
        end;
      end else RecStream.CopyFrom(LP,LP.Size);
}
      i:=RecStream.Size-8;    { size of file  }
      RecStream.Position:=4;
      RecStream.write(i,4);
      i:=i-$24;               { size of data   }
      RecStream.Position:=40;
      RecStream.write(i,4);
      RecStream.Free;
      RecToFile:=false;
    end;
  end else RecToFile:=false;
end;

{ Callback routine used for CALLBACK_FUNCTION in waveOutOpen   }
{$IFDEF WIN32}
procedure PlayerCallBack(hW:HWAVEOUT; uMsg,dwInstance,dwParam1,dwParam2 : DWORD);  stdcall;
{$ELSE}
procedure PlayerCallBack(hW:HWAVEOUT; uMsg,dwInstance,dwParam1,dwParam2 : LongInt);  stdcall;
{$ENDIF}
var PlayPtr : PPlayer;
begin
  PlayPtr := Pointer(dwInstance);
  with PlayPtr^ do begin
   case uMsg of
    wom_OPEN  : Active:=true;
    wom_CLOSE : Active:=false;
    wom_DONE  : if Active then begin
                  if (ForwardIndex=ReturnIndex) then begin
                    if not(FinishedPlaying) then begin
                      FinishedPlaying:=true;
                      PostMessage(CloseHandle,mm_wom_CLOSE,0,0);
                    end;
                  end else begin
                    if Assigned(FAudio.FOnBufferPlayed) then FAudio.FOnBufferPlayed(PlayPtr^);
                    PostMessage(AddNextOutBufferHandle,wom_DONE,0,0);
                    ReturnIndex:=(ReturnIndex+1) mod No_Buffers;
                    dec(ActiveBuffers);
                  end;
                end;
   end;
  end;
end;

function TPlayer.Open : boolean;
var
  iErr : Integer;
begin
  if not(DeviceOpen) then begin
    Result:=false;
    ForwardIndex:=0;
    ActiveBuffers:=0;
    ReturnIndex:=1;  { necessary since ForwardIndex always is one more than being sent  }
{$IFDEF WIN32}
   iErr:=waveOutOpen(@WaveOut,FAudio.FDeviceID, pWaveFmt,dword(@PlayerCallBack),
                      dword(@FAudio.FPlayer), CALLBACK_FUNCTION+WAVE_ALLOWSYNC);      
{  iErr:=waveOutOpen(@WaveOut,FAudio.FDeviceID, pWaveFmt,FAudio.FWindowHandle,0, CALLBACK_WINDOW+WAVE_ALLOWSYNC); }
{$ELSE}
{  iErr:=waveOutOpen(@WaveOut,FAudio.FDeviceID, @pWaveFmt^.wf,LongInt(@PlayerCallBack),
                    LongInt(@FAudio.FPlayer), CALLBACK_FUNCTION+WAVE_ALLOWSYNC);   }
{ Problem to get CALLBACK_FUNCTION to work in 16bit version     }
    iErr:=waveOutOpen(@WaveOut,FAudio.FDeviceID, @pWaveFmt^.wf,FAudio.FWindowHandle,0, CALLBACK_WINDOW+WAVE_ALLOWSYNC); 
{$ENDIF}
    if (iErr<>0) then begin
      GetError(iErr,'Could not open the output device for playing: ');
      Exit;
    end;
    DeviceOpen:=true;
    InitWaveHeaders;
  end;
  Result:=true;
end;

procedure TPlayer.Play(LP,RP:TStream; NoOfRepeats:Word);
var i : LongInt;
    T1,T2 : ^byte;
begin
  if not(Open) then exit;
  if (LP<>nil) and (LP.Size>0) then begin
    if PlayStream=nil then begin
{       PlayStream:=TMemoryStream.Create;         }
    PlayStream:=TFileStream.Create('PLAY.TMP',fmCreate);
       FNoOfRepeats:=NoOfRepeats;
       ReadPlayStreamPos:=0;
    end else PlayStream.Position:=PlayStream.Size;
    if (FChannels=Stereo) and (RP<>nil) and (RP.Size=LP.Size) then begin
      LP.Position:=0; RP.Position:=0;
      GetMem(T1,1000); T2:=T1;
      if FBPS=_8 then begin
        for i:=1 to LP.Size do begin
          LP.Read(T2^,1);inc(T2,1);
          RP.Read(T2^,1); inc(T2,1);
          if (i mod 500)=0 then begin
            PlayStream.Write(T1^,1000);
            T2:=T1;
          end;
        end;
        i:=LP.Size mod 500;
        if i>0 then begin
          PlayStream.Write(T1^,i*2);
        end;
      end else begin
        for i:=1 to (LP.Size div 2) do begin
          LP.Read(T2^,2);inc(T2,2);
          RP.Read(T2^,2); inc(T2,2);
          if (i mod 250)=0 then begin
            PlayStream.Write(T1^,1000);
            T2:=T1;
          end;
        end;
        i:=(LP.Size div 2) mod 250;
        if i>0 then begin
          PlayStream.Write(T1^,i*2);
        end;
{      if FBPS=_8 then begin
        for i:=1 to LP.Size do begin
           PlayStream.CopyFrom(LP,1);
           PlayStream.CopyFrom(RP,1);
        end;
      end else begin
        for i:=1 to (LP.Size div 2) do begin
           PlayStream.CopyFrom(LP,2);
           PlayStream.CopyFrom(RP,2);
        end;
      end }
      end;
      FreeMem(T1,1000);
    end else begin
      LP.Position:=0;
      PlayStream.CopyFrom(LP,LP.Size);
    end;
    if ReadPlayStreamPos=0 then
      for i:=1 to No_Buffers do AddNextOutBuffer;
  end;
end;

procedure TPlayer.Close2(var Msg: TMessage);
var
  iErr, i : Integer;
begin
  if not(DeviceOpen) then begin
    FAudio.ErrorMessage:='Player already closed';
    exit;
  end;
  for i:=0 to No_Buffers-1 do begin
     iErr:=waveOutUnPrepareHeader(WaveOut, pWaveHeader[i], sizeof(TWAVEHDR));
     if (iErr<>0) then begin
       GetError(iErr,'Error unpreparing header for playing: ');
       Exit;
     end;
  end;
  iErr:=waveOutClose(WaveOut);
  if (iErr<>0) then begin
     GetError(iErr,'Error closing output device: ');
     Exit;
  end;
  DeviceOpen:=false;
  if (FPlayFile and (PlayStream=nil)) then begin
    SetChannels(FOldChannels);
    SetSPS(FOldSPS);
    SetBPS(FOldBPS);
    FPlayFile:=false;
  end;
  if Assigned(FAudio.FOnPlayed) then FAudio.FOnPlayed(Self);
end;

procedure TPlayer.Stop;
var iErr : integer;
begin
  if not(DeviceOpen) then begin
    FAudio.ErrorMessage:='Player already closed';
    exit;
  end;
  if PlayStream<>nil then begin
    PlayStream.Free;
    PlayStream:=nil;
    ForwardIndex:=ReturnIndex;
    FAudio.ErrorMessage:='';
  end;
  if not(FinishedPlaying) then begin
    iErr:=waveOutReset(WaveOut);
    if (iErr<>0) then begin
      FAudio.ErrorMessage:='Error in waveOutReset';
      Exit;
    end;
  end;
  while Active do Application.ProcessMessages;  
end;

procedure TPlayer.Pause;
begin
  if DeviceOpen then waveOutPause(WaveOut);
end;

procedure TPlayer.Restart;
begin
  if DeviceOpen then waveOutRestart(WaveOut);
end;

procedure TPlayer.Reset;
begin
  if DeviceOpen then waveOutReset(WaveOut);
end;

procedure TPlayer.BreakLoop;
begin
  if DeviceOpen then waveOutBreakLoop(WaveOut);
end;

function TPlayer.PlayFile(FileName:string; NoOfRepeats:Word):boolean;
var temp:array[0..255] of byte;
    i : integer;
    Data:word;
    DataSize:longint;
begin
  Result:=false;
  if FileName<>'' then begin
    if (PlayStream=nil) then begin
      FOldChannels:=FChannels;
      FOldSPS:=FSPS;
      FOldBPS:=FBPS;
    end;
    PlayFileStream:=TFileStream.Create(FileName,fmOpenRead);
    PlayFileStream.Read(temp,22);
    PlayFileStream.Read(temp,2);
    if (temp[0]=2) then begin
      if (FChannels<>Stereo) then begin
        while FPlayFile do Application.ProcessMessages;
        SetChannels(Stereo);
      end;
    end else begin
      if (FChannels<>Mono) then begin
        while FPlayFile do Application.ProcessMessages;
        SetChannels(Mono);
      end;
    end;
    PlayFileStream.Read(temp,2);
    Data:=temp[1]*256+temp[0];
    if (FSPS<>Data) then begin
      while FPlayFile do Application.ProcessMessages;
      SetSPS(Data);
    end;
    PlayFileStream.Read(temp,8);
    PlayFileStream.Read(temp,2);
    if (temp[0]>8) then begin
      if (FBPS<>_16) then begin
        while FPlayFile do Application.ProcessMessages;
        SetBPS(_16);
      end;
    end else begin
      if (FBPS<>_8) then begin
        while FPlayFile do Application.ProcessMessages;
        SetBPS(_8);
      end;
    end;
    PlayFileStream.Read(temp,4); i:=0;
    while ((temp[i]<>$64) or (temp[i+1]<>$61) or (temp[i+2]<>$74) or (temp[i+3]<>$61)) do begin
      PlayFileStream.Read(temp[i+4],1);
      inc(i);
    end;
    PlayFileStream.Read(DataSize,4);
    FPlayFile:=true;
    if PlayStream=nil then begin
      if Open then begin
{        PlayStream:=TMemoryStream.Create;          }
        PlayStream:=TFileStream.Create('PLAY.TMP',fmCreate);
        FNoOfRepeats:=NoOfRepeats;
        ReadPlayStreamPos:=0;
      end else begin
        PlayFileStream.Free;
        exit;
      end;
    end else begin
      PlayStream.Position:=PlayStream.Size;
    end;
    PlayStream.CopyFrom(PlayFileStream,DataSize);
    if ReadPlayStreamPos=0 then
      for i:=1 to (No_Buffers-ActiveBuffers) do
        AddNextOutBuffer;
    PlayFileStream.Free;
    Result:=true;
  end;
end;

{------------- Property Controls ------------------------------------}

procedure TTechAudio.SetVersion(Value:string);
begin
  FVersion:=Ver;
end;

procedure TTechAudioSettings.SetChannels(Value:TChannels);
begin
  if FAudio.FSepCtrl then begin
    if FChannels<>Value then begin
      FChannels:=Value;
      FreeMemory;
      AllocateMemory;
    end;
  end else begin
    if FAudio.Player.FChannels<>Value then begin
      FAudio.Player.FChannels:=Value;
      FAudio.Player.FreeMemory;
      FAudio.Player.AllocateMemory;
    end;
    if FAudio.Recorder.FChannels<>Value then begin
      FAudio.Recorder.FChannels:=Value;
      FAudio.Recorder.FreeMemory;
      FAudio.Recorder.AllocateMemory;
    end;
  end;
  FAudio.Recorder.SetSplit(FAudio.FRecorder.FSplit);
end;

procedure TTechAudioSettings.SetBPS(Value:TBPS);
begin
  if FAudio.FSepCtrl then begin
    if FBPS<>Value then begin
      FBPS:=Value;
      FreeMemory;
      AllocateMemory;
    end;
  end else begin
    if FAudio.Player.FBPS<>Value then begin
      FAudio.Player.FBPS:=Value;
      FAudio.Player.FreeMemory;
      FAudio.Player.AllocateMemory;
    end;
    if FAudio.Recorder.FBPS<>Value then begin
      FAudio.Recorder.FBPS:=Value;
      FAudio.Recorder.FreeMemory;
      FAudio.Recorder.AllocateMemory;
    end;
  end;
end;

procedure TTechAudioSettings.SetSPS(Value:Word);
begin
  if FAudio.FSepCtrl then begin
    if FSPS<>Value then begin
      FSPS:=Value;
      FreeMemory;
      AllocateMemory;
    end;
  end else begin
    if FAudio.Player.FSPS<>Value then begin
      FAudio.Player.FSPS:=Value;
      FAudio.Player.FreeMemory;
      FAudio.Player.AllocateMemory;
    end;
    if FAudio.Recorder.FSPS<>Value then begin
      FAudio.Recorder.FSPS:=Value;
      FAudio.Recorder.FreeMemory;
      FAudio.Recorder.AllocateMemory;
    end;
  end;

end;

procedure TRecorder.SetNoSamples(Value:Word);
begin
  if FAudio.Player.FNoSamples<>Value then begin
      FAudio.Player.FNoSamples:=Value;
      FAudio.Player.FreeMemory;
      FAudio.Player.AllocateMemory;
  end;
  if FAudio.Recorder.FNoSamples<>Value then begin
      FAudio.Recorder.FNoSamples:=Value;
      FAudio.Recorder.FreeMemory;
      FAudio.Recorder.AllocateMemory;
  end;
end;

procedure TRecorder.SetSplit(Value:Boolean);
begin
  if FChannels=Stereo then begin
    if FSplit<>Value then FSplit:=Value;
  end else FSplit:=false;
end;

procedure TRecorder.SetTrigLevel(Value:Word);
begin
  if FTrigLevel<>Value then FTrigLevel:=Value;
end;

procedure TPlayer.GetVolume(var LeftVolume,RightVolume:Word);
var
  iErr : Integer;
{$IFDEF WIN32}
  Vol : dword;
{$ELSE}
  Vol : longint;
{$ENDIF}
begin
  iErr:=waveOutGetVolume(FAudio.FDeviceID,@Vol);
  if (iErr<>0) then GetError(iErr,'');
  LeftVolume:=Word(Vol and $FFFF);
  RightVolume:=Word(Vol shr 16);
end;

procedure TPlayer.SetVolume(LeftVolume,RightVolume:Word);
var
  iErr : Integer;
{$IFDEF WIN32}
  Vol : dword;
{$ELSE}
  Vol : longint;
{$ENDIF}
begin
  Vol:=RightVolume;
  Vol:=(Vol shl 16)+LeftVolume;
  iErr:=waveOutSetVolume(FAudio.FDeviceID,Vol);
  if (iErr<>0) then GetError(iErr,'');
end;

procedure TTechAudio.SetDeviceID(Value:Integer);
begin
  if FDeviceID<>Value then begin
    if Value>9 then FDeviceID:=WAVE_MAPPER
    else FDeviceID:=Value;
    FRecorder.FreeMemory;
    FRecorder.AllocateMemory;
    FPlayer.FreeMemory;
    FPlayer.AllocateMemory;
  end;
end;

{$IFDEF WIN32}
procedure TTechAudio.SetMixerDeviceID(Value:Integer);
begin
  if FMixerDeviceID<>Value then begin
    FMixerDeviceID:=Value;
    if Mixer.GetMixerSettings(FMixerDeviceID) then Mixer.MixerReady:=true;
  end;
end;
{$ENDIF}

procedure Register;
begin
  RegisterComponents('Tech', [TTechAudio]);
end;

end.

