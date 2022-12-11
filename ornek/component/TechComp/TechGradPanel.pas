unit TechGradPanel;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, Menus,
  TechGradient, ExtCtrls,SysUtils, TechUtilitys;

type
  TTechGradPanel = class(TCustomPanel)
  private
    FCaption     : string;
    FDrawBorder  : boolean;
    FGradient    : TTechGradient;
    FGradBegin   : TColor;
    FGradEnd     : TColor;
    FGradRotation: TGradientRotation;
    FGradShift   : TGradientShift;
    FGradStyle   : TGradientStyle;
    FCornerRadius: integer;
    bmp          : TBitmap;
    FOnKillFocus : TNotifyEvent;
    FBorderColor : TColor;
    FTransparent : boolean;
    FUseAsGroupBox: boolean;
  protected
     procedure SetGradient     (Value: TTechGradient);
     procedure SetGradBegin    (Value: TColor);
     procedure SetGradEnd      (Value: TColor);
     procedure SetGradRotation (Value: TGradientRotation);
     procedure SetGradShift    (Value: TGradientShift);
     procedure SetGradStyle    (Value: TGradientStyle);
     procedure SetBorderColor  (Value: TColor);
     procedure SetDrawBorder   (Value: boolean);
     procedure SetTransparent  (Value: boolean);
     procedure SetText         (const Value: TCaption);
     procedure SetCornerRadius (Value: integer);
     procedure SetUseAsGroupBox(Value: boolean);
     procedure RefreshPanel ;
     procedure WMSize       (var Message: TWMSize);       message WM_SIZE;
     procedure WMKillFocus  (var Message: TWMKillFocus);  message WM_KILLFOCUS;
     procedure WMEraseBkgnd (var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
     procedure Paint; override;

     function GetText: TCaption;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    property    Gradient: TTechGradient read FGradient write SetGradient;
    property Canvas;
  published
    property Align;
    property Alignment;
    property Anchors;
    property Autosize;
    property Caption: TCaption read GetText write SetText;
    property Cornerradius   : integer      read FCornerRadius    write SetCornerRadius;
    property Constraints;
    property Ctl3D;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property FullRepaint;
    property Locked;
    property PopUpMenu;
    property TabOrder;
    property TabStop;
    property Tag;
    property UseDockManager;
    property Visible;
    property DrawBorder   : boolean           read FDrawBorder    write SetDrawBorder;
    property GradBegin    : TColor            read FGradBegin     write SetGradBegin;
    property GradEnd      : TColor            read FGradEnd       write SetGradEnd;
    property GradRotation : TGradientRotation read FGradRotation  write SetGradRotation;
    property GradShift    : TGradientShift    read FGradShift     write SetGradShift;
    property GradStyle    : TGradientStyle    read FGradStyle     write SetGradStyle;
    property BorderColor  : TColor            read FBorderColor   write SetBorderColor;
    property UseAsGroupBox: boolean           read FUseAsGroupBox write SetUseAsGroupBox;
    property Transparent  : boolean           read FTransparent   write SetTransparent;
    property OnClick;
    property OnDblClick;
    property OnDockDrop;
    property OnDockOver;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKillFocus : TNotifyEvent      read FOnKillFocus  write FOnKillFocus;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnResize;
  end;

procedure Register;



implementation

constructor TTechGradPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDrawBorder    := false;
  FBorderColor   := clBlue;
  FGradient      := TTechGradient.Create(Self);
  FGradBegin     := $00EAEAEA;
  FGradEnd       := $00A7A7A7;
  FGradStyle     :=gsLinearV;
  FGradRotation  :=0;
  FGradShift     :=0;
  FCornerRadius  :=0;
  FGradient.Align:= alClient;
  Bmp:= Tbitmap.Create;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.RefreshPanel;
begin
  FGradient.ColorBegin:= FGradBegin;
  FGradient.ColorEnd  := FGradEnd;
  FGradient.Style     := FGradStyle;
  FGradient.Rotation  := FGradRotation;
  FGradient.Shift     := FGradShift;

  Bmp.Width := Width+2;
  Bmp.Height:= Height+2;
  Bmp.Canvas.StretchDraw(Rect(0,0,Width,Height),FGradient.Pattern);
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetCornerRadius(Value: integer);
begin
  FCornerRadius:= Value;
  SetWindowRgn(Handle,CreateRoundRectRgn(0,0,Width,Height,FCornerRadius,FCornerRadius),true);
  invalidate;
end;
//------------------------------------------------------------------------------
function TTechGradPanel.GetText: TCaption;
var
  Len: Integer;
begin
  Len := Perform(WM_GETTEXTLENGTH, 0, 0);;
  SetString(Result, PChar(nil), Len);
  if Len <> 0 then
    // WM_GETTEXT mesaj�n� g�ndererek bile�enle ili�kilendirilen text'i Caption
    // �zelli�ine at�yoruz.
    Perform(WM_GETTEXT, Len + 1, Longint(Pointer(Result)));
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetText(const Value: TCaption);
var
  Buffer: PChar;
begin
  if GetText <> Value then begin
    Buffer:= PChar(Value);
    Perform(WM_SETTEXT, 0, Longint(Buffer));
    Perform(CM_TEXTCHANGED, 0, 0);
  end;
  self.Changed
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.WMSize   (var Message: TWMSize) ;
begin
  RefreshPanel;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetUseAsGroupBox(Value: boolean) ;
begin
  FUseAsGroupBox:= Value;
  if Value and (not FDrawBorder) then FDrawBorder:= Value;
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.WMEraseBkgnd(var Message : TWMEraseBkgnd);
begin
  // WM_ERASEBKGND  mesaj� al�nd���nda 0 de�eri geri d�d�r�lerek panelin kendini
  // boyamas�n� engelleyip Gradient temam�z�n panel zeninine kopyalanmas�n sa�l�yoruz.
  message.Result := LRESULT(False);
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.WMKillFocus(var Message: TWMKillFocus);
begin
  inherited;
  if Assigned(FOnKillFocus) then FOnKillFocus(Self);
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.Paint;
var
  Flags, I: integer;
  R, RefreshRect: TRect;
  B: tbitmap;
begin
  if not FTransparent then
    BitBlt(canvas.Handle,0, 0, width, height, bmp.Canvas.Handle, 0, 0, srccopy)
  else
    CopyParentImage(Self, Canvas);


  if FUseAsGroupBox then begin
    B:= TBitmap.Create;
    B.Height:=3;
    B.Width:=Canvas.TextWidth(Caption+'   ');
    RefreshRect:= Rect(10, GetFontMetrics(Font).tmHeight div 2-1,
                       B.Width, GetFontMetrics(Font).tmHeight div 2+1);
    B.Canvas.CopyRect(Rect(0, 0, B.width, B.height),Canvas, RefreshRect);
  end;

  Canvas.Pen.Color  := FBorderColor;
  Canvas.Brush.Style:= bsClear;
  if FUseAsGroupBox then
    Canvas.RoundRect(0, GetFontMetrics(Font).tmHeight div 2,Width, Height, FCornerRadius, FCornerRadius)
  else if FDrawBorder then
    Canvas.RoundRect(0, 0,Width-1, Height-1, FCornerRadius, FCornerRadius);

  if FUseAsGroupBox then begin
    Canvas.CopyRect(RefreshRect, B.Canvas, Rect(0, 0, B.Width, B.Height));
    B.Free;
  end;

  R    := ClientRect;
  Flags:= DT_END_ELLIPSIS ;
 
  RenderText(Self, Canvas, Caption, Font, Enabled, true, R, Flags or DT_CALCRECT);
  if FUseAsGroupBox then
    OffsetRect(R, 10, 0)
  else
    OffsetRect(R, (Width - R.Right) div 2, (Height - R.Bottom) div 2);
  RenderText(Self, Canvas, Caption, Font, Enabled, true, R, Flags);
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetDrawBorder(Value: boolean);
begin
  FDrawBorder:= Value;
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetGradBegin(Value: TColor);
begin
  FGradBegin:= Value;
  FGradient.ColorBegin:= FGradBegin;
  RefreshPanel;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetGradEnd(Value: TColor);
begin
  FGradEnd:= value;
  FGradient.ColorEnd:= FGradEnd;
  RefreshPanel;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetGradRotation(Value: TGradientRotation);
begin
  FGradRotation:= value;
  FGradient.Rotation:= FGradRotation;
  RefreshPanel;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetGradShift   (Value: TGradientShift);
begin
  FGradShift:= value;
  FGradient.Shift:= FGradShift;
  RefreshPanel;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetGradStyle   (Value: TGradientStyle);
begin
  FGradStyle:= value;
  FGradient.Style:= FGradStyle;
  RefreshPanel;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetBorderColor(Value: TColor);
begin
  FBorderColor:= Value;
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetGradient(Value: TTechGradient);
begin
  FGradient.Assign(Value);
end;
//------------------------------------------------------------------------------
procedure TTechGradPanel.SetTransparent (Value: boolean);
var
  I: integer;
begin
  FTransparent:= value;

  for I:=0 to ControlCount-1 do
    Controls[I].Invalidate;
  invalidate;
end;
//------------------------------------------------------------------------------
destructor TTechGradPanel.Destroy;
begin
  FGradient.Free;
  inherited Destroy;
end;
//------------------------------------------------------------------------------
procedure Register;
begin
  RegisterComponents('Tech', [TTechGradPanel]);
end;

end.