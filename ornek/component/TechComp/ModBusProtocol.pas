unit ModBusProtocol;

interface

uses
  SysUtils, Classes,
  ExtCtrls, Forms;

type
 // TBaud = array [0..10] of integer (150,300,600,1200,2400,4800,9600,19200,38400,57600,115200);

  TCRCBuff = Array[0..15] of byte;
  TResponseEvent = procedure (Sender: TObject; c: char) of Object;
  TCRCEvent = procedure (Sender: TObject; state: integer) of Object;


  TModBusProtocol = class(TComponent)
  private
    FComplateEvent: TNotifyEvent;
    FCRCEvent   : TCRCEvent;
    FComNumber  : word;
    FBaud       : integer;
    FDataBits   : integer;
    FResponseEvent : TResponseEvent;
    FActivate   : boolean;
    FTimeOutTimer: TTimer;
    
    mbBuff: TCRCBuff;
    mbIdx, mbLen: integer;
    mbPatStarted: boolean;
    procedure TimeOutTimerEvent(Sender: TObject);
    procedure ComPortTriggerAvail(CP: TObject; Count: Word);
    procedure SetActivate(val: boolean);
    procedure AddPattern(c: char);
    procedure PortClose(Sender: TObject);
    procedure PortOpen(Sender: TObject);
  protected
    procedure SendState(addr: word; state: boolean);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetState(addr: word; state: boolean); virtual; abstract;
    function ComInit(port: word; act: boolean): boolean;
    procedure GetState( addr: word );
    property OnCRCEvent: TCRCEvent read FCRCEvent write FCRCEvent;
    property OnTriggerComplate: TNotifyEvent read FComplateEvent write FComplateEvent;
  published
    property ComNumber: word read FComNumber   write FComNumber;
    property Activate : boolean read FActivate  write SetActivate;
    property Baud     : integer  read FBaud       write FBaud default 19200;
    property OnResponseEvent: TResponseEvent read FResponseEvent write FResponseEvent;

  end;


implementation

//-----------------FunctionList-------------------------------------------------

function CRC(Buff: TCRCBuff; size: byte): word;
const
  Polynomial = $A001;
var
  CRC16: Word;
  I, J: Integer;
begin
  CRC16 := $FFFF;

  for I := 0 to size - 1 do
  begin
    CRC16 := CRC16 xor Buff[I];
    for J := 0 to 7 do
      if (CRC16 and $0001) = 1 then
        CRC16 := (CRC16 shr 1) xor Polynomial
      else
        CRC16 := CRC16 shr 1;
  end;
  Result := CRC16
end;


//-----------------TModBusProtocol----------------------------------------------

constructor TModBusProtocol.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FTimeOutTimer:= TTimer.Create(nil);
  FTimeOutTimer.Interval := 5000;
  FTimeOutTimer.OnTimer := TimeOutTimerEvent;

end;

destructor TModBusProtocol.Destroy;
begin
  FTimeOutTimer.Enabled := false;
  FTimeOutTimer.Free;
  inherited Destroy;
end;

procedure TModBusProtocol.TimeOutTimerEvent(Sender: TObject);
begin
  if Assigned(FComplateEvent) then
    FComplateEvent(Self);
end;

procedure TModBusProtocol.PortClose(Sender: TObject);
begin
  FActivate := false;
end;

procedure TModBusProtocol.PortOpen(Sender: TObject);
begin
  FActivate := true;
end;

procedure TModBusProtocol.SetActivate(val: boolean);
begin
    ComInit(FComNumber,val);
end;

function TModBusProtocol.ComInit(port: word; act: boolean): boolean;
begin
  try
    if (FBaud > 0) and (port >0) then
    begin

   end;
    result := act;
  except
    Result := false;
  end;
end;

procedure TModBusProtocol.AddPattern(c: char);
var
  b: byte;
  crc16: word;
  stateInt: integer;
{
    mbBuff: array[0..15] of Byte;
    mbIdx: byte;
    mbPatStarted: boolean;
}
begin
 // NameOfButton[FButtonName].up;
  b := Byte(c);
  
  if mbPatStarted then
  begin
    if 1 < mbIdx then
    begin
      if mbLen = -1 then
        case b of
          $01: mbLen := 4;
          $05: mbLen := 6;
        end;
      mbBuff[ mbIdx ] := b;
      mbIdx := mbIdx + 1;
      mbLen := mbLen - 1;
      if mbLen <= 0 then
      begin
        crc16 := CRC(mbBuff, mbIdx - 2);
        if ( lo(crc16) = mbBuff[ mbIdx - 2 ] ) and ( hi(crc16) = mbBuff[ mbIdx - 1 ] ) then
        begin
          if ( mbBuff[ 1 ] = $01 ) then
          begin
            if Assigned(FCRCEvent) then
            begin
              stateInt := mbBuff[3] and $01;
              FCRCEvent(Self,stateInt)
            end;

          end;
        end;
        mbPatStarted := false;
        if Assigned(FComplateEvent) then
          FComplateEvent(Self);
      end;
    end
    else
    begin
      mbBuff[ mbIdx ] := b;
      mbIdx := mbIdx + 1;
    end;
  end
  else
  begin
    if b = $01 then
    begin
      mbPatStarted := True;
      mbBuff[ 0 ] := b;
      mbIdx := 1;
      mbLen := -1;
    end;
  end;





end;

procedure TModBusProtocol.ComPortTriggerAvail(CP: TObject; Count: Word);
var
  i: integer;
  ch: char;
begin
try
  FTimeOutTimer.Enabled := false;
  for i := 1 to Count  do
  begin
   
    if Assigned(FResponseEvent) then FResponseEvent(Self,ch);

 //   modbusAddPattern( ch );
  //  buff[i] := ch;

  end;
except

end;
end;

procedure TModBusProtocol.SendState(addr: word; state: boolean);
var
  buff: TCRCBuff;
  crc16: word;
  i: integer;
begin
  if FActivate then
  begin
    buff[0] := $01;
    buff[1] := $05;
    buff[2] := hi(addr);
    buff[3] := lo(addr);
    if state then buff[4] := $FF else buff[4] := $00;
    buff[5] := $00;
    crc16 := CRC( buff, 6 );
    buff[6] := lo(crc16);
    buff[7] := hi(crc16);



    FTimeOutTimer.Enabled := true;
  end;

end;


procedure TModBusProtocol.GetState( addr: word );
var
  buff: TCRCBuff;
  crc16: word;
  i: integer;
begin
  if FActivate then
  begin
    buff[0] := $01;
    buff[1] := $01;
    buff[2] := hi(addr);
    buff[3] := lo(addr);
    buff[4] := $00;
    buff[5] := $01;

    crc16 := CRC( buff, 6 );
    buff[6] := lo(crc16);
    buff[7] := hi(crc16);


    FTimeOutTimer.Enabled := true;
  end;
end;

end.
