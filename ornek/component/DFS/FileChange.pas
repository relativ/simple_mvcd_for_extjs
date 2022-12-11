{ To get rid of one of these, just call MyObj.Terminate and forget it.  It will free itself. }

unit FileChange;

interface

uses Windows, Classes;

type
  TFSFilter = (fsfFilename,fsfDirname,fsfAttributes,fsfSize,fsfLastWrite,fsfSecurity);
  TFSFilterSet = set of TFSFilter;

  TFileChangeThread = class(TThread)
  private
    FAborted: boolean;
    FPath: string;
    FRecursive: boolean;
    FFilter: TFSFilterSet;
    FFCHandle: THandle;

    function FilterToAPIVal: DWORD;
  protected
    procedure Execute; override;
    procedure DoTerminate; override;
  public
    constructor Create(const APath: string; AFilter: TFSFilterSet; Recurse: boolean);
    property Path: string read FPath write FPath;
    property Recursive: boolean read FRecursive write FRecursive;
    property Filter: TFSFilterSet read FFilter write FFilter;
    property FCHandle: THandle read FFCHandle;
    property Aborted: boolean read FAborted;
  end;

implementation

const
  TIMEOUT = 10;

constructor TFileChangeThread.Create(const APath: string; AFilter: TFSFilterSet;
                                           Recurse: boolean);
begin
  inherited Create(False);
  FAborted := FALSE;
  FPath := APath;
  FFilter := AFilter;
  FRecursive := Recurse;
  FreeOnTerminate := TRUE;
end;

function TFileChangeThread.FilterToAPIVal: DWORD;
begin
  Result := 0;
  if fsfFilename in FFilter then
    Result := Result or FILE_NOTIFY_CHANGE_FILE_NAME;
  if fsfDirname in FFilter then
    Result := Result or FILE_NOTIFY_CHANGE_DIR_NAME;
  if fsfAttributes in FFilter then
    Result := Result or FILE_NOTIFY_CHANGE_ATTRIBUTES;
  if fsfSize in FFilter then
    Result := Result or FILE_NOTIFY_CHANGE_SIZE;
  if fsfLastWrite in FFilter then
    Result := Result or FILE_NOTIFY_CHANGE_LAST_WRITE;
  if fsfSecurity in FFilter then
    Result := Result or FILE_NOTIFY_CHANGE_SECURITY;
end;

procedure TFileChangeThread.Execute;
const
  BoolVals: array[boolean] of LongBool = (LongBool(0), LongBool(1));
var
  Res: DWORD;
begin
  // There's a situation in some versions of the compiler that can cause a
  // problem here.  The boolean parameter must be either 0 or 1, but sometimes
  // the Delphi boolean TRUE is not ordinal value 1.
  FFCHandle := FindFirstChangeNotification(PChar(FPath), BoolVals[FRecursive],
    FilterToAPIVal);

  if FFCHandle = INVALID_HANDLE_VALUE then //houston, we have a problem
  begin
    FAborted := True;
    ExitThread(GetLastError);
    Exit;
  end;

  repeat
    Res := WaitForSingleObject(FFCHandle, TIMEOUT);
    if Terminated then begin
      FAborted := TRUE;
      exit;
    end;
  until Res <> WAIT_TIMEOUT;
end;

procedure TFileChangeThread.DoTerminate;
begin
  FindCloseChangeNotification(FFCHandle);
  FFCHandle := 0;
  if not FAborted then
    inherited DoTerminate;
end;

end.
