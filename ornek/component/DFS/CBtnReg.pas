{$I DFS.INC}

unit CBtnReg;

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
  DFSClrBn, ColorAEd, CBtnForm, DFSAbout, Classes;


procedure Register;
begin
  RegisterComponents('DFS', [TdfsColorButton]);
  RegisterPropertyEditor(TypeInfo(TColorArrayClass), NIL, '',
     TColorArrayProperty);
  RegisterPropertyEditor(TypeInfo(string), TdfsColorButton, 'Version',
     TdfsVersionProperty);
end;


end.
