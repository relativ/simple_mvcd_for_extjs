{$I DFS.INC}

unit MRUFLReg;

interface

{$IFDEF DFS_WIN32}
  {$R MRUFList.res}
{$ELSE}
  {$R MRUFList.r16}
{$ENDIF}

procedure Register;

implementation

uses
  {$IFDEF DFS_NO_DSGNINTF}
  DesignIntf,
  DesignEditors,
  {$ELSE}
  DsgnIntf,
  {$ENDIF}
  MRUFList, DFSAbout, Classes;

procedure Register;
begin
  RegisterComponents('DFS', [TdfsMRUFileList]);
  RegisterPropertyEditor(TypeInfo(string), TdfsMRUFileList, 'Version',
     TDFSVersionProperty);
end;

end.
