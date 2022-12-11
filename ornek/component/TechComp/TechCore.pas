unit TechCore;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, ActnList, Dialogs;

const
  TechColor_BgFrom      = $00FFFFFF; // background from
  TechColor_BgTo        = $00E7EBEF; // background to
  TechColor_BorderEdges = clSilver;  // border edges
  TechColor_BorderLine  = clGray;    // border line
  TechColor_CkFrom      = $00C6CFD6; // clicked from
  TechColor_CkTo        = $00EBF3F7; // clicked to
  TechColor_FcFrom      = $00FFE7CE; // focused from
  TechColor_FcTo        = $00EF846D; // focused to
  TechColor_HlFrom      = $00CEF3FF; // highlight from
  TechColor_HlTo        = $000096E7; // highlight to
  TechColor_HotTrack    = $000000FF; // hot-track 

type
{ Common Structures }

  // BoundLines
  TTechBoundLines = set of (blLeft, blTop, blRight, blBottom);

  // Colors Steps (used for gradients)
  TTechColorSteps = 2..255;

  // Draw State
  //     dsDefault    = used for initialize state
  //     dsHighlight  = control is hovered
  //     dsFocused    = control is focused
  //     dsClicked    = control is clicked
  TTechDrawState = set of (dsDefault, dsHighlight, dsFocused, dsClicked);

  // GradientStyle
  TTechGradientStyle = (gsLeft, gsTop, gsRight, gsBottom);

{ TTechUnleashedWinControl }

  TTechUnleashedWinControl = class(TWinControl)
  published
    { Published declarations }
    property Color;
    property Font;
  end;

{ TTechCustomControl }

  TTechCustomControl = class(TCustomControl)
  private
    { Private desclarations }
    FAbout: string;
    FClicking: Boolean;
    FDrawState: TTechDrawState;
    FIsLocked: Boolean;
    FIsSibling: Boolean;
    FModalResult: TModalResult;
    FOnMouseLeave: TNotifyEvent;
    FOnMouseEnter: TNotifyEvent;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure SetAbout(Value: string);
    procedure SetVersion(Value: string);

    // HookEnabledChanged
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    // HookFocusedChanged
    procedure CMFocusChanged(var Message: TMessage); message CM_FOCUSCHANGED;
    // HookMouseEnter
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    // HookMouseLeave
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    // HookParentColorChanged
    procedure CMParentColorChanged(var Message: TMessage); message CM_PARENTCOLORCHANGED;
    // HookTextChanged
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    // HookMouseMove
    procedure WMMouseMove(var Message: TWMMouse); message WM_MOUSEMOVE;
    // HookResized
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
  protected
    { Protected desclarations }
    function GetVersion: string; virtual;
    procedure Click; override;
    procedure MouseDown(Button:TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X, Y: Integer); override;
    property ModalResult: TModalResult read FModalResult write FModalResult default 0;
  public
    //
    // Dynamic Hook Methods.
    //
    procedure HookEnabledChanged; dynamic;
    procedure HookFocusedChanged; dynamic;
    procedure HookMouseDown; dynamic;
    procedure HookMouseEnter; dynamic;
    procedure HookMouseLeave; dynamic;
    procedure HookMouseMove; dynamic;
    procedure HookMouseUp; dynamic;
    procedure HookParentColorChanged; dynamic;
    procedure HookResized; dynamic;
    procedure HookTextChanged; dynamic;

    { Public desclarations }
    constructor Create(AOwner: TComponent); override;

    // Call LockUpdate to prevent multiple paint events.
    procedure LockUpdate;

    // Call UnlockUpdate to enable paint event.
    procedure UnlockUpdate;

    property DrawState: TTechDrawState read FDrawState write FDrawState;
    property IsLocked: Boolean read FIsLocked write FIsLocked;
    property IsSibling: Boolean read FIsSibling write FIsSibling;
  published
    { Published declarations }
    // common properties.
    property Anchors;
    property Align;
    property BiDiMode;
    property Color;
    property Constraints;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ParentBiDiMode;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;

    // advanced properties.
    property About: string read FAbout write SetAbout;
    property Version: string read GetVersion write SetVersion;

    // common events.
    property OnClick;
    {$IFDEF VER140} // Borland Delphi 6.0
      property OnContextPopup;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;

    // advanced events.
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  end;

{ TTechGradient }

  TTechGradient = class(TPersistent)
  private
    { Private-Deklarationen }
    FColorSteps: TTechColorSteps;
    FDithered: Boolean;
    FEnabled: Boolean;
    FEndColor: TColor;
    FStartColor: TColor;
    FGradientStyle: TTechGradientStyle;
  protected
    { Protected declarations }
    Parent: TTechCustomControl;
    procedure SetDithered(Value: Boolean); virtual;
    procedure SetColorSteps(Value: TTechColorSteps); virtual;
    procedure SetEnabled(Value: Boolean); virtual;
    procedure SetEndColor(Value: TColor); virtual;
    procedure SetGradientStyle(Value: TTechGradientStyle); virtual;
    procedure SetStartColor(Value: TColor); virtual;
  public
    { Public declarations }
    Bitmap: TBitmap;
    constructor Create(AOwner: TControl);
    destructor Destroy; override;
    procedure RecreateBands; virtual;
  published
    { Published-Deklarationen }
    property Dithered: Boolean read FDithered write SetDithered default True;
    property ColorSteps: TTechColorSteps read FColorSteps write SetColorSteps default 16;
    property Enabled: Boolean read FEnabled write SetEnabled default True;
    property EndColor: TColor read FEndColor write SetEndColor default clSilver;
    property StartColor: TColor read FStartColor write SetStartColor default clGray;
    property Style: TTechGradientStyle read FGradientStyle write SetGradientStyle default gsLeft;
  end;

// TechDrawLine
procedure TechDrawLine(const ACanvas: TCanvas; const x1, y1, x2, y2: Integer;
  const AutoCorrect: Boolean = False);

// TechDrawBoundLines
procedure TechDrawBoundLines(const ACanvas: TCanvas; const ABoundLines: TTechBoundLines;
  const AColor: TColor; const R: TRect);

// TechCreateGradientRect
procedure TechCreateGradientRect(const Width, Height: Integer; const StartColor,
  EndColor: TColor; const ColorSteps: TTechColorSteps; const Style: TTechGradientStyle;
  const Dithered: Boolean; var Bitmap: TBitmap);

// TechRenderText
procedure TechRenderText(const Parent: TControl; const Canvas: TCanvas;
  AText: string; const AFont: TFont; const Enabled, ShowAccelChar: Boolean;
  var Rect: TRect; Flags: Integer);

// TechSetDrawFlags
procedure TechSetDrawFlags(const Alignment: TAlignment; const WordWrap: Boolean;
  var Flags: Integer);

// TechPlaceText (beta)
procedure TechPlaceText(const Parent: TControl; const Canvas: TCanvas;
  const AText: string; const AFont: TFont; const Enabled, ShowAccelChar: Boolean;
  const Alignment: TAlignment; const WordWrap: Boolean; var Rect: TRect);

implementation

{ TTechCustomControl }

constructor TTechCustomControl.Create(AOwner: TComponent);
begin
  inherited;
  // initialize default control values.
  ControlStyle := ControlStyle - [csDoubleClicks];
  DoubleBuffered := True;
  TabStop := True;

  // initialize property values.
  FAbout := 'Copyright Tech Yazýlým /Coded by Serkan';
  FClicking := False;
  FDrawState := [dsDefault];
  FIsLocked := False;
  FIsSibling := False;
  FModalResult := 0;
end;

procedure TTechCustomControl.SetAbout(Value: string);
begin
  ; // don't enable overwriting this constant.
end;

function TTechCustomControl.GetVersion: string;
begin
  Result := '';
end;

procedure TTechCustomControl.SetVersion(Value: string);
begin
  ; // don't enable overwriting this constant.
end;

procedure TTechCustomControl.LockUpdate;
begin
  FIsLocked := True;
end;

procedure TTechCustomControl.UnlockUpdate;
begin
  FIsLocked := False;
  Invalidate;
end;

procedure TTechCustomControl.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
  if IsAccel(CharCode, Caption) and CanFocus and (Focused or (
    (GetKeyState(VK_MENU) and $8000) <> 0)) then
  begin
    Click;
    Result := 1;
  end
  else
    inherited;
end;

procedure TTechCustomControl.CMEnabledChanged(var Message: TMessage);
begin
  HookEnabledChanged;
  inherited;
end;

procedure TTechCustomControl.CMFocusChanged(var Message: TMessage);
begin
  HookFocusedChanged;
  inherited;
end;

procedure TTechCustomControl.CMMouseEnter(var Message: TMessage);
begin
  HookMouseEnter;
  inherited;
end;

procedure TTechCustomControl.CMMouseLeave(var Message: TMessage);
begin
  HookMouseLeave;
  inherited;
end;

procedure TTechCustomControl.CMParentColorChanged(var Message: TMessage);
begin
  HookParentColorChanged;
  inherited;
end;

procedure TTechCustomControl.CMTextChanged(var Message: TMessage);
begin
  HookTextChanged;
  inherited;
end;

procedure TTechCustomControl.WMMouseMove(var Message: TWMMouse);
begin
  HookMouseMove;
  inherited;
end;

procedure TTechCustomControl.WMSize(var Message: TWMSize);
begin
  HookResized;
  inherited;
end;

procedure TTechCustomControl.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FClicking := True;
    HookMouseDown;
  end;
  inherited;
end;

procedure TTechCustomControl.MouseUp(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if FClicking then
  begin
    FClicking := False;
    HookMouseUp;
  end;
  inherited;
end;

procedure TTechCustomControl.Click;
var
  Form: TCustomForm;
begin
  Form := GetParentForm(Self);
  if Form <> nil then
    Form.ModalResult := ModalResult;
  inherited Click;
end;

procedure TTechCustomControl.HookEnabledChanged;
begin
  if not FIsLocked then
    Invalidate;
end;

procedure TTechCustomControl.HookFocusedChanged;
begin

  if Focused then
    Include(FDrawState, dsFocused)
  else
  begin
    Exclude(FDrawState, dsFocused);
    Exclude(FDrawState, dsClicked);
  end;
  FIsSibling := GetParentForm(Self).ActiveControl is TTechCustomControl;
  if not FIsLocked then
    Invalidate;
end;

procedure TTechCustomControl.HookMouseEnter;
begin
  Include(FDrawState, dsHighlight);
  if not FIsLocked then
    Invalidate;
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
end;

procedure TTechCustomControl.HookMouseLeave;
begin
  Exclude(FDrawState, dsHighlight);
  if not FIsLocked then
    Invalidate;
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

procedure TTechCustomControl.HookMouseMove;
begin
  ;
end;

procedure TTechCustomControl.HookMouseDown;
begin
  if not Focused then
    SetFocus;
  Include(FDrawState, dsClicked);
  if not FIsLocked then
    Invalidate;
end;

procedure TTechCustomControl.HookMouseUp;
var
  cPos: TPoint;
  NewControl: TWinControl;
begin
  begin
    Exclude(FDrawState, dsClicked);
    if not FIsLocked then
      Invalidate;
    GetCursorPos(cPos);

    NewControl := FindVCLWindow(cPos);
    if (NewControl <> nil) and (NewControl <> Self)
      and (NewControl.InheritsFrom(TTechCustomControl)) then
      TTechCustomControl(NewControl).HookMouseEnter;
  end;
end;

procedure TTechCustomControl.HookParentColorChanged;
begin
  if not FIsLocked then
    Invalidate;
end;

procedure TTechCustomControl.HookResized;
begin
  ;
end;

procedure TTechCustomControl.HookTextChanged;
begin
  if not FIsLocked then
    Invalidate;
end;

{ TTechGradient }

constructor TTechGradient.Create(AOwner: TControl);
begin
  inherited Create;
  Parent := TTechCustomControl(AOwner);
  Bitmap := TBitmap.Create;
  FDithered := True;
  FColorSteps := 16;
  FEnabled := True;
  FEndColor := clSilver;
  FStartColor := clGray;
  FGradientStyle := gsLeft;
end; // Create

destructor TTechGradient.Destroy;
begin
  Bitmap.Free;
  inherited Destroy;
end;

procedure TTechGradient.RecreateBands;
begin
  if Assigned(Bitmap) then
    TechCreateGradientRect(Parent.Width, Parent.Height, FStartColor, FEndColor,
      FColorSteps, FGradientStyle, FDithered, Bitmap);
end;

procedure TTechGradient.SetDithered(Value: Boolean);
begin
  if FDithered <> Value then
  begin
    FDithered := Value;
    RecreateBands;
    if not Parent.FIsLocked then
      Parent.Invalidate;
  end;
end;

procedure TTechGradient.SetColorSteps(Value: TTechColorSteps);
begin
  if FColorSteps <> Value then
  begin
    FColorSteps := Value;
    RecreateBands;
    if not Parent.FIsLocked then
      Parent.Invalidate;
  end;
end;

procedure TTechGradient.SetEnabled(Value: Boolean);
begin
  if FEnabled <> Value then
  begin
    FEnabled := Value;
    Parent.Invalidate;
  end;
end;

procedure TTechGradient.SetEndColor(Value: TColor);
begin
  if FEndColor <> Value then
  begin
    FEndColor := Value;
    RecreateBands;
    if not Parent.FIsLocked then
      Parent.Invalidate;
  end;
end;

procedure TTechGradient.SetGradientStyle(Value: TTechGradientStyle);
begin
  if FGradientStyle <> Value then
  begin
    FGradientStyle := Value;
    RecreateBands;
    if not Parent.FIsLocked then
      Parent.Invalidate;
  end;
end;

procedure TTechGradient.SetStartColor(Value: TColor);
begin
  if FStartColor <> Value then
  begin
    FStartColor := Value;
    RecreateBands;
    if not Parent.FIsLocked then
      Parent.Invalidate;
  end;
end;

procedure TechDrawLine(const ACanvas: TCanvas; const x1, y1, x2, y2: Integer;
  const AutoCorrect: Boolean = False);
var
  xn, yn: Integer;
begin
  xn := x2;
  yn := y2;
  if AutoCorrect then
  begin
    if x2 >= x1 then
      xn := x2 + 1
    else
      xn := x2 - 1;
    if y2 >= y1 then
      yn := y2 + 1
    else
      yn := y2 - 1;
  end;
  ACanvas.MoveTo(x1, y1);
  ACanvas.LineTo(xn, yn);
end;

procedure TechDrawBoundLines(const ACanvas: TCanvas; const ABoundLines: TTechBoundLines;
  const AColor: TColor; const R: TRect);
begin
  with ACanvas do
  begin
    Pen.Color := AColor;
    if blLeft in ABoundLines then
      TechDrawLine(ACanvas, R.Left, R.Top, R.Left, R.Bottom - 1);
    if blTop in ABoundLines then
      TechDrawLine(ACanvas, R.Left, R.Top, R.Right - 1, R.Top);
    if blRight in ABoundLines then
      TechDrawLine(ACanvas, R.Right - 1, R.Top, R.Right - 1, R.Bottom - 1);
    if blBottom in ABoundLines then
      TechDrawLine(ACanvas, R.Top, R.Bottom - 1, R.Right, R.Bottom - 1);
  end;
end;

procedure TechCreateGradientRect(const Width, Height: Integer; const StartColor,
  EndColor: TColor; const ColorSteps: TTechColorSteps; const Style: TTechGradientStyle;
  const Dithered: Boolean; var Bitmap: TBitmap);
type
  TGradientBand = array[0..255] of TColor;
  TRGBMap = packed record
    case boolean of
      True: (RGBVal: DWord);
      False: (R, G, B, D: Byte);
  end;
const
  DitherDepth = 16;
var
  iLoop, xLoop, yLoop: Integer;
  iBndS, iBndE: Integer;
  GBand: TGradientBand;
  procedure CalculateGradientBand;
  var
    rR, rG, rB: Real;
    lCol, hCol: TRGBMap;
    iStp: Integer;
  begin
    if Style in [gsLeft, gsTop] then
    begin
      lCol.RGBVal := ColorToRGB(StartColor);
      hCol.RGBVal := ColorToRGB(EndColor);
    end
    else
    begin
      lCol.RGBVal := ColorToRGB(EndColor);
      hCol.RGBVal := ColorToRGB(StartColor);
    end;
    rR := (hCol.R - lCol.R) / (ColorSteps - 1);
    rG := (hCol.G - lCol.G) / (ColorSteps - 1);
    rB := (hCol.B - lCol.B) / (ColorSteps - 1);
    for iStp := 0 to (ColorSteps - 1) do
      GBand[iStp] := RGB(
        lCol.R + Round(rR * iStp),
        lCol.G + Round(rG * iStp),
        lCol.B + Round(rB * iStp)
        );
  end;
begin
  Bitmap.Height := Height;
  Bitmap.Width := Width;
  CalculateGradientBand;
  with Bitmap.Canvas do
  begin
    Brush.Color := StartColor;
    FillRect(Bounds(0, 0, Width, Height));
    if Style in [gsLeft, gsRight] then
    begin
      for iLoop := 0 to ColorSteps - 1 do
      begin
        iBndS := MulDiv(iLoop, Width, ColorSteps);
        iBndE := MulDiv(iLoop + 1, Width, ColorSteps);
        Brush.Color := GBand[iLoop];
        PatBlt(Handle, iBndS, 0, iBndE, Height, PATCOPY);
        if (iLoop > 0) and (Dithered) then
          for yLoop := 0 to DitherDepth - 1 do
            for xLoop := 0 to Width div (ColorSteps - 1) do
              Pixels[iBndS + Random(xLoop), yLoop] := GBand[iLoop - 1];
      end;
      for yLoop := 1 to Height div DitherDepth do
        CopyRect(Bounds(0, yLoop * DitherDepth, Width, DitherDepth),
          Bitmap.Canvas, Bounds(0, 0, Width, DitherDepth));
    end
    else
    begin
      for iLoop := 0 to ColorSteps - 1 do
      begin
        iBndS := MulDiv(iLoop, Height, ColorSteps);
        iBndE := MulDiv(iLoop + 1, Height, ColorSteps);
        Brush.Color := GBand[iLoop];
        PatBlt(Handle, 0, iBndS, Width, iBndE, PATCOPY);
        if (iLoop > 0) and (Dithered) then
          for xLoop := 0 to DitherDepth - 1 do
            for yLoop := 0 to Height div (ColorSteps - 1) do
              Pixels[xLoop, iBndS + Random(yLoop)] := GBand[iLoop - 1];
      end;
      for xLoop := 0 to Width div DitherDepth do
        CopyRect(Bounds(xLoop * DitherDepth, 0, DitherDepth, Height),
          Bitmap.Canvas, Bounds(0, 0, DitherDepth, Height));
    end;
  end;
end;

procedure TechRenderText(const Parent: TControl; const Canvas: TCanvas;
  AText: string; const AFont: TFont; const Enabled, ShowAccelChar: Boolean;
  var Rect: TRect; Flags: Integer); overload;

  procedure DoDrawText;
  begin
    DrawText(Canvas.Handle, PChar(AText), -1, Rect, Flags);
  end;

begin
  if (Flags and DT_CALCRECT <> 0) and ((AText = '') or ShowAccelChar
    and (AText[1] = '&') and (AText[2] = #0)) then
    AText := AText + ' ';
  if not ShowAccelChar then
    Flags := Flags or DT_NOPREFIX;
  Flags := Parent.DrawTextBiDiModeFlags(Flags);
  with Canvas do
  begin
    Font.Assign(AFont);
    if not Enabled then
    begin
      OffsetRect(Rect, 1, 1);
      Font.Color := clBtnHighlight;
      DoDrawText;
      OffsetRect(Rect, -1, -1);
      Font.Color := clBtnShadow;
      DoDrawText;
    end
    else
      DoDrawText;
  end;
end;

procedure TechSetDrawFlags(const Alignment: TAlignment; const WordWrap: Boolean;
  var Flags: Integer);
begin
  Flags := DT_END_ELLIPSIS;
  case Alignment of
    taLeftJustify:
      Flags := Flags or DT_LEFT;
    taCenter:
      Flags := Flags or DT_CENTER;
    taRightJustify:
      Flags := Flags or DT_RIGHT;
  end;
  if not WordWrap then
    Flags := Flags or DT_SINGLELINE
  else
    Flags := Flags or DT_WORDBREAK;
end;

procedure TechPlaceText(const Parent: TControl; const Canvas: TCanvas; const AText: string;
  const AFont: TFont; const Enabled, ShowAccelChar: Boolean; const Alignment: TAlignment;
  const WordWrap: Boolean; var Rect: TRect);
var
  Flags, Tech, OH, OW: Integer;
begin
  OH := Rect.Bottom - Rect.Top;
  OW := Rect.Right - Rect.Left;
  TechSetDrawFlags(Alignment, WordWrap, Flags);
  TechRenderText(Parent, Canvas, AText, AFont, Enabled, ShowAccelChar, Rect,
    Flags or DT_CALCRECT);
  if Alignment = taRightJustify then
    Tech := OW - (Rect.Right + Rect.Left)
  else if Alignment = taCenter then
    Tech := (OW - Rect.Right) div 2
  else
    Tech := 0;
  OffsetRect(Rect, Tech, (OH - Rect.Bottom) div 2);
  TechRenderText(Parent, Canvas, AText, AFont, Enabled, ShowAccelChar, Rect, Flags);
end;

end.

