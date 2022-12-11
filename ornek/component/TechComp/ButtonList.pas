unit ButtonList;

interface

uses
  SysUtils, Classes, ModBusProtocol, ExtCtrls, PanelButton;

type
  TButtonList = class(TModBusProtocol)
  private
    FProccessList: TStringList;
    FProccesPos: integer;
    FProccesTimer: TTimer;
    FButtonList: TList;
    FBusy: boolean;
    FButtonName: string;
    FComplateEvent: TNotifyEvent;
    FCRCEvent   : TCRCEvent;

    function GetPanelButton(index: integer): TPanelButton;
    procedure SetPanelButton(index: integer; item: TPanelButton);
    function GetNameOfButton(const BtnName: string): TPanelButton;
    procedure OnProccessTimer(Sender: TObject);
    procedure OnCRCComplateEvent(Sender: TObject; state: integer);
    procedure TriggerComplateEvent(Sender: TObject);

  public
    procedure SendButton(state: boolean);
    procedure SetState(addr: word; state: boolean); override;
    procedure AddButton(Button : TPanelButton);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Buttons[Index: integer]: TPanelButton read GetPanelButton write SetPanelButton;
    property NameOfButton[const BtnName: string]: TPanelButton read GetNameOfButton;
    property Busy: boolean read FBusy write FBusy;
  published
    property OnCRCComplate: TCRCEvent read FCRCEvent write FCRCEvent;
    property OnFinish: TNotifyEvent read FComplateEvent write FComplateEvent;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TButtonList]);
end;


//-----------------TButtonList--------------------------------------------------

constructor TButtonList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FButtonList:= TList.Create;
  FProccesTimer:= TTimer.Create(nil);
  FProccesTimer.Interval := 20;
  FProccesTimer.OnTimer := OnProccessTimer;
  FProccesTimer.Enabled := true;
  FProccesPos := 0;
  FProccessList:= TStringList.Create;
  OnCRCEvent  := OnCRCComplateEvent;
  OnTriggerComplate := TriggerComplateEvent;

end;

destructor TButtonList.Destroy;
begin
  FProccesTimer.Enabled := false;
  FProccesTimer.Free;
  FProccessList.Free;
  FButtonList.Free;
  inherited Destroy;
end;

function TButtonList.GetPanelButton(index: integer): TPanelButton;
begin
  if FButtonList.Count <= index then
    Result := TPanelButton(FButtonList.Items[index])
  else
    Result := nil;
end;

procedure TButtonList.SetPanelButton(index: integer; item: TPanelButton);
begin
    FButtonList.Items[index] := item;
end;

function TButtonList.GetNameOfButton(const BtnName: string): TPanelButton;
var
  i: integer;
  tmpBtn: TPanelButton;
begin
  tmpBtn := nil;
  for i := 0 to FButtonList.Count -1 do
  begin
    if TPanelButton(FButtonList.Items[i]).Name = BtnName then
    begin
      tmpBtn := TPanelButton(FButtonList.Items[i]);
      Break;
    end;
  end;
  Result := tmpBtn;
end;

procedure TButtonList.AddButton(Button : TPanelButton);
begin
  FButtonList.Add(Button);
end;

procedure TButtonList.OnCRCComplateEvent(Sender: TObject; state: integer);
var
  durum : boolean;
begin
  durum := state = 1;
  SendButton(durum);
  FBusy := false;
  if Assigned(FCRCEvent) then FCRCEvent(Sender,state);
end;

procedure TButtonList.TriggerComplateEvent(Sender: TObject);
begin
  FBusy := false;
  if Assigned(FComplateEvent) then FComplateEvent(Sender);
end;

procedure TButtonList.OnProccessTimer(Sender: TObject);
var
  addr: integer;
  state: boolean;
  tmp: string;
begin
  FProccesTimer.Enabled := false;
  if (Activate) and (not FBusy) and (FProccessList.Count = 0) then
  begin
    if FButtonList.Count > 0 then
    begin
      FBusy := true;
      FButtonName := TPanelButton(FButtonList.Items[FProccesPos]).Name;
      addr := NameOfButton[FButtonName].YazmaAdresi;
      GetState(addr);
      if FProccesPos = FButtonList.Count -1 then
        FProccesPos := 0
      else
        inc(FProccesPos);

    end;
  end;

  if (FProccessList.Count > 0) and (not FBusy) then
  begin
    FBusy := true;
    tmp := copy(FProccessList[0],1,Pos('=',FProccessList[0])-1);
    addr := StrToInt(tmp);
    tmp := FProccessList.Values[tmp];
    state := boolean(StrToInt(tmp));
    SendState(addr,state);
    FProccessList.Delete(0);
   // FBusy := false;
  end;
  FProccesTimer.Enabled := true;
end;

procedure TButtonList.SendButton(state: boolean);
begin
    NameOfButton[FButtonName].ButtonDown := state;
    FButtonName := '';
    FBusy := false;
end;

procedure TButtonList.SetState(addr: word; state: boolean);
var
  str: string;
begin
  str :=IntToStr(addr)+'='+IntToStr(Integer(state));
  FProccessList.Add(str);
end;



end.
 