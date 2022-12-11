unit TechThreadTimer;

interface

uses
  SysUtils, Classes,MMSystem;

type
  TTechThreadTimer = class;

  
  TTechThreadTimerThread = class(TThread)
  private
    FTimer: TTechThreadTimer;
  protected
    procedure DoExecute;
    procedure Execute; override;
  public
    constructor CreateTimerThread(Timer: TTechThreadTimer);
  end;


  TTechThreadTimer = class(TComponent)
  private
    FInterval: Integer;
    FPriority: TThreadPriority;
    FOnTimer: TNotifyEvent;
    FContinue: Boolean;
    FRunning: Boolean;
    FEnabled: Boolean;
    procedure SetEnabled(Value: Boolean );
  protected
    procedure StartTimer;
    procedure StopTimer;
    property Continue: Boolean read FContinue write FContinue;
  public
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
  published
    property Enabled: Boolean read FEnabled write SetEnabled;
    property Interval: Integer read FInterval write FInterval;
    property ThreadPriority: TThreadPriority read FPriority write FPriority default tpNormal;
    property OnTimer: TNotifyEvent read FOnTimer write FOnTimer;
  end;


procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechThreadTimer]);
end;

//-----------------------------------------------------------------------------
// TTechThreadTimerThread
//-----------------------------------------------------------------------------
constructor TTechThreadTimerThread.CreateTimerThread(Timer: TTechThreadTimer);
begin
  inherited Create(True);
  FTimer := Timer;
  FreeOnTerminate := True;
end;

procedure TTechThreadTimerThread.Execute;
var
  SleepTime, Last: Integer;
begin
  while FTimer.Continue do
    begin
      Last := timeGetTime;
      DoExecute;
      SleepTime := FTimer.FInterval - (timeGetTime - Last);
      if SleepTime < 10 then SleepTime := 10;
      Sleep(SleepTime);
    end;
end;

procedure TTechThreadTimerThread.DoExecute;
begin
try
  if FTimer.Continue then
  begin
    if (FTimer <> nil) and  (Assigned(FTimer.OnTimer)) then FTimer.OnTimer(FTimer);
  end else begin
    Terminate;
    exit;
  end;
except
  on E: Exception do
  begin
    E := nil;
  end;
end;
end;

//-----------------------------------------------------------------------------
// TTechThreadTimer
//-----------------------------------------------------------------------------
constructor TTechThreadTimer.Create(Owner: TComponent);
begin
  inherited Create(Owner);
  FPriority := tpNormal;
end;

destructor TTechThreadTimer.Destroy;
begin
  StopTimer;
  inherited Destroy;
end;

procedure TTechThreadTimer.SetEnabled(Value: Boolean);
begin
  if Value <> FEnabled then
    begin
      FEnabled := Value;
      if FEnabled then
        StartTimer
      else
        StopTimer;
    end;
end;

procedure TTechThreadTimer.StartTimer;
begin
  if FRunning then Exit;
  FContinue := True;
  if not (csDesigning in ComponentState) then
    begin
      with TTechThreadTimerThread.CreateTimerThread(Self) do
        begin
          Priority := FPriority;
          Resume;
        end;
    end;
  FRunning := True;
end;

procedure TTechThreadTimer.StopTimer;
begin
  FContinue := False;
  FRunning := False;
end;

//====== TTechThreadTimer CODE ENDS ======

end.
 