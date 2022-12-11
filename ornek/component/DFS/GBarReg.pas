{$I DFS.INC}

unit GBarReg;

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
  GrabBar, DFSAbout, Classes;



{ Add the components to the Delphi Component Palette.  You will want to }
{ modify this so that it appears on the page of your choice.            }
procedure Register;
begin
  RegisterComponents('DFS', [TdfsGrabBar]);
  RegisterPropertyEditor(TypeInfo(string), TdfsGrabBar, 'Version',
     TDFSVersionProperty);
end;

end.
