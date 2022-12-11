{$I DFS.INC}

unit PgSetupReg;

interface

uses
  {$IFDEF DFS_NO_DSGNINTF}
  DesignIntf,
  DesignEditors,
  {$ELSE}
  DsgnIntf,
  {$ENDIF}
  Classes;

{$IFDEF DFS_COMPILER_3_UP}
type
  TdfsPageSetupDialogEditor = class(TDefaultEditor)
  public
    procedure ExecuteVerb(Index : Integer); override;
    function GetVerb(Index : Integer): string; override;
    function GetVerbCount : Integer; override;
    procedure Edit; override;
  end;
{$ENDIF}

procedure Register;

implementation

uses
  PgSetup, DFSAbout;

  
{$IFDEF DFS_COMPILER_3_UP}

procedure TdfsPageSetupDialogEditor.ExecuteVerb(Index: Integer);
begin
  if Index <> 0 then Exit; { We only have one verb, so exit if this ain't it }
  Edit;  { Invoke the Edit function the same as if double click had happened }
end;

function TdfsPageSetupDialogEditor.GetVerb(Index: Integer): String;
begin
  Result := 'Test Dialog';  { Menu item caption for context menu }
end;

function TdfsPageSetupDialogEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

procedure TdfsPageSetupDialogEditor.Edit;
begin
  if Component is TdfsPageSetupDialog then
    TdfsPageSetupDialog(Component).Execute;
end;

{$ENDIF}


procedure Register;
begin
  RegisterComponents('DFS', [TdfsPageSetupDialog]);
{$IFDEF DFS_COMPILER_3_UP}
  RegisterComponentEditor(TdfsPageSetupDialog, TdfsPageSetupDialogEditor);
{$ENDIF}
  RegisterPropertyEditor(TypeInfo(string), TdfsPageSetupDialog, 'Version',
     TDFSVersionProperty);
end;

end.
