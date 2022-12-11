
unit TechDateTimePicker;

interface

uses
   Windows, Messages, SysUtils, Classes, Controls, Forms, Graphics, Stdctrls,
   extctrls, comctrls;

type
   TTechDateTimePicker = class(TDateTimePicker)
   private
      FBorderColor: TColor;
      procedure SetBorderColor(const Value: TColor);
   protected
      procedure WMPaint(var Msg: TWMPaint); message WM_PAINT;
   public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
   published
      property OnMouseDown;
      property OnMouseMove;
      property OnMouseUp;
      property Align;
      property BorderColor: TColor read FBorderColor write SetBorderColor;
   end;

procedure Register;

implementation

constructor TTechDateTimePicker.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   ControlStyle := ControlStyle + [csOpaque, csSetCaption];
   FBorderColor := clWhite;
end;

procedure TTechDateTimePicker.SetBorderColor(const Value: TColor);
begin
   if FBorderColor <> Value then
      begin
         FBorderColor := Value;
         RecreateWnd;
      end;
end;

procedure TTechDateTimePicker.WMPaint(var Msg: TWMPaint);
var
   DC: HDC;
   R: TRect;
   ControlCanvas: TControlCanvas;
begin
   inherited;
   DC := GetWindowDC(Handle);
   try
      ControlCanvas := TControlCanvas.Create;
      try
         ControlCanvas.Lock;
         ControlCanvas.Control := Self;
         ControlCanvas.Handle := DC;
         R := Rect(0, 0, Width, Height);
         Frame3D(ControlCanvas, R, FBorderColor, FBorderColor, 2);
         ControlCanvas.Unlock;
      finally
         ControlCanvas.Free;
      end;
   finally
      ReleaseDC(Handle, DC);
   end;
end;

destructor TTechDateTimePicker.Destroy;
begin
   inherited Destroy;
end;

procedure Register;
begin
   RegisterComponents('Tech', [TTechDateTimePicker]);
end;

end.

