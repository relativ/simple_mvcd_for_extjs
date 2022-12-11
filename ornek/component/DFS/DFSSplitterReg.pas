{$I DFS.INC}

unit DFSSplitterReg;

interface

procedure Register;

implementation

uses
  {$IFDEF DFS_NO_DSGNINTF}
  DesignIntf,
  DesignEditors,
  {$ELSE}
  DsgnIntf,
  {$ENDIF}
  DFSSplitter, DFSAbout, Classes;

procedure Register;
begin
  RegisterComponents('DFS', [TdfsSplitter]);
  RegisterPropertyEditor(TypeInfo(string), TdfsSplitter, 'Version',
     TdfsVersionProperty);
end;


end.
