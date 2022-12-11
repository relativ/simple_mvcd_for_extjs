unit FlatStatusBar;

interface

uses ComCtrls, Classes, Controls;

type
   TFlatStatusBar = class(TStatusBar)
   public
      constructor Create(AOwner: TComponent); override;
   end;

procedure Register;

implementation

constructor TFlatStatusBar.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   ControlStyle := ControlStyle + [csAcceptsControls, csOpaque];
end;

procedure Register;
begin
   RegisterComponents('Tech', [TFlatStatusBar]);
end;

end.

