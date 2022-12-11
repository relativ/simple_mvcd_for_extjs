unit TechComboBox;

interface

uses Windows, Messages, Classes, Forms, Controls, Graphics, StdCtrls,
     ImgList,TechGradient,dialogs;

type
  TListBorderStyles = (lbNone, lbSingle, lbRaised, lbSunken, lbSizeable);
  TDrawState        = set of (dsDefault, dsHighlight, dsFocused, dsClicked);

  TColors = class(TPersistent)
  private
    { Private declarations }
    FBackgroundFrom: TColor;
    FBackgroundTo  : TColor;
    FBorderLine    : TColor;
    FClickedFrom   : TColor;
    FClickedTo     : TColor;
    FFocusedFrom   : TColor;
    FFocusedTo     : TColor;
    FHighlightFrom : TColor;
    FHighlightTo   : TColor;
    FArrowColor    :TColor;
  protected
    { Protected declarations }
    FOwner: TObject;
    procedure SetBackgroundFrom(Value: TColor);
    procedure SetBackgroundTo  (Value: TColor);
    procedure SetBorderLine    (Value: TColor);
    procedure SetClickedFrom   (Value: TColor);
    procedure SetClickedTo     (Value: TColor);
    procedure SetFocusedFrom   (Value: TColor);
    procedure SetFocusedTo     (Value: TColor);
    procedure SetHighlightFrom (Value: TColor);
    procedure SetHighlightTo   (Value: TColor);
    procedure SetArrowColor    (Value: TColor);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);
  published
    { Published declarations }
    property ArrowColor    : TColor read FArrowColor     write SetArrowColor;
    property BackgroundFrom: TColor read FBackgroundFrom write SetBackgroundFrom;
    property BackgroundTo  : TColor read FBackgroundTo   write SetBackgroundTo;
    property BorderLine    : TColor read FBorderLine     write SetBorderLine;
    property ClickedFrom   : TColor read FClickedFrom    write SetClickedFrom;
    property ClickedTo     : TColor read FClickedTo      write SetClickedTo;
    property FocusedFrom   : TColor read FFocusedFrom    write SetFocusedFrom;
    property FocusedTo     : TColor read FFocusedTo      write SetFocusedTo;
    property HighlightFrom : TColor read FHighlightFrom  write SetHighlightFrom;
    property HighlightTo   : TColor read FHighlightTo    write SetHighlightTo;
  end;

  TTechCustomComboBox = class(TCustomComboBox)
  private
    FBgGradient : TBitmap;
    FCkGradient : TBitmap;
    FFcGradient : TBitmap;
    FHlGradient : TBitmap;

    FComboLBoxHandle     : HWND;
    FButtonWidth         : integer;
    FDroppingDownList    : boolean;
    FAutoDropDownWidth   : boolean;
    FAutoHorizontalScroll: boolean;
    FDropDownWidth       : integer;
    FExtendedInterface   : boolean;
    FHorizontalExtent    : integer;
    FListBorder          : TListBorderStyles;
    FColors              : TColors;
    FGradient            : TTechGradient;
    FRecreating          : boolean;
    LockDraw             : boolean;
    FOnCloseUp           : TNotifyEvent;

    function GetDropDownWidth: integer;
    function GetHorizExtent  : integer;
    function GetExUI         : boolean;
    function GetButtonRect   : TRect;
    function InsideCombo(X,Y: integer): boolean;

    procedure CMEnabledChanged(var Msg    : TMessage);   message CM_ENABLEDCHANGED;
    procedure CNCommand       (var Message: TWMCommand); message CN_COMMAND;
    procedure WMLButtonDown   (var Message: TWMMouse);   message WM_LBUTTONDOWN;
     procedure WMLButtonUp   (var Message: TWMMouse);   message WM_LBUTTONUP;
    procedure WMPaint         (var Message: TWMPaint);   message WM_PAINT;
    procedure WMSize          (var Message: TWMSize);    message WM_SIZE;
    procedure CMMouseEnter    (var Message: TMessage);   message CM_MOUSEENTER;

    procedure DrawControl;
    procedure SetExUI                (const Value: boolean);
    procedure SetListBorder          (const Value: TListBorderStyles);
    procedure SetDropDownWidth       (const Value: integer);
    procedure SetHorizExtent         (const Value: integer);
    procedure DrawButton             (DC: HDC);
    procedure DrawControlBorder      (DC: HDC);
    procedure SetAutoDropDownWidth   (const Value: boolean);
    procedure SetAutoHorizontalScroll(const Value: boolean);
  protected
     DrawState: TDrawState;
     function ItemSize(paDC: hDC; paIndex: Integer; paInEdit: boolean): TSize; virtual;

     procedure CreateWnd;  override;
     procedure DestroyWnd; override;
     procedure DoCloseUp;  dynamic;
     procedure DropDown;   override;
     procedure WndProc     (var Message: TMessage); override;
     procedure CreateParams(var Params: TCreateParams); override;
     procedure MouseDown   (Button: TMouseButton; Shift: TShiftState; X, Y: integer); override;
     procedure MouseMove   (Shift: TShiftState; X, Y: integer); override;
     procedure MouseUp     (Button: TMouseButton; Shift: TShiftState; X, Y: integer); override;

     property Colors              : TColors           read FColors               write FColors;
     property AutoDropDownWidth   : boolean           read FAutoDropDownWidth    write SetAutoDropDownWidth default false;
     property AutoHorizontalScroll: boolean           read FAutoHorizontalScroll write SetAutoHorizontalScroll default false;
     property ComboLBoxHandle     : HWND              read FComboLBoxHandle;
     property DropDownWidth       : integer           read GetDropDownWidth      write SetDropDownWidth;
     property ExtendedInterface   : boolean           read GetExUI               write SetExUI default false;
     property HorizontalExtent    : integer           read GetHorizExtent        write SetHorizExtent;
     property ListBorder          : TListBorderStyles read FListBorder           write SetListBorder default lbSingle;
     property OnCloseUp           : TNotifyEvent      read FOnCloseUp            write FOnCloseUp;
   public
    constructor Create(AOwner: TComponent); override;
  end;

  TTechComboBox = class(TTechCustomComboBox)
  published
    property Style;  //Must be first

    property Colors;
    property Anchors;
    property AutoDropDownWidth;
    property AutoHorizontalScroll;
    property BiDiMode;

    property Constraints;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property DropDownCount;
    property DropDownWidth;
    property Enabled;
    property ExtendedInterface;
    property Font;
    property ImeMode;
    property ImeName;
    property ItemHeight;
    property Items;
    property HorizontalExtent;
    property ListBorder;
    property MaxLength;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;

    property ShowHint;
    property Sorted;
    property TabOrder;
    property TabStop;
    property Text;

    property Visible;
    property OnChange;
    property OnCloseUp;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDrawItem;
    property OnDropDown;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMeasureItem;
    property OnStartDrag;
    property OnEndDock;
    property OnStartDock;
   public
    property ComboLBoxHandle;
  end;


procedure Register;

implementation

uses SysUtils, CommCtrl, Consts;


//------------------------------------------------------------------------------
constructor TTechCustomComboBox.Create(AOwner: TComponent);
begin
  inherited;
  LockDraw:= false;
  FAutoDropDownWidth := false;
  FAutoHorizontalScroll := false;
  FButtonWidth := 17;
  FListBorder := lbSingle;

  FBgGradient          := TBitmap.Create; // background gradient
  FCkGradient          := TBitmap.Create; // clicked gradient
  FFcGradient          := TBitmap.Create; // focused gradient
  FHlGradient          := TBitmap.Create; // Highlight gradient

  FGradient       := TTechGradient.Create(self);
  FGradient.Style := gslinearh;
  FGradient.Shift := 10;
  FColors              := TColors.Create(Self);
  Color     := $00FFF4F4
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style or WS_HSCROLL;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.CreateWnd;
begin
  inherited CreateWnd;
  FRecreating := false;
  DropDownWidth := FDropDownWidth;
  ExtendedInterface := FExtendedInterface;
  HorizontalExtent := FHorizontalExtent;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.DestroyWnd;
begin
  FRecreating := true;
  FDropDownWidth := DropDownWidth;
  FHorizontalExtent := HorizontalExtent;
  FExtendedInterface := ExtendedInterface;
  FComboLBoxHandle := 0;

  inherited DestroyWnd;
end;
//------------------------------------------------------------------------------
function TTechCustomComboBox.GetButtonRect: TRect;
begin
  GetWindowRect(Handle, Result);
  OffsetRect(Result, -Result.Left, -Result.Top);
  Inc(Result.Left, ClientWidth - FButtonWidth);
  OffsetRect(Result, -1, 0);
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.CMEnabledChanged (var Msg: TMessage);
begin
  inherited;
  DrawControl;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.WMSize              (var Message: TWMSize);
var
  R   : TRect;
begin
  inherited;
  R          :=GetButtonrect;
  FGradient.Width := R.Right -R.Left;
  FGradient.Height:= R.Bottom-R.Top;

  // background gradient
  FGradient.ColorBegin:= FColors.BackgroundFrom;
  FGradient.ColorEnd  := FColors.BackgroundTo;
  FBgGradient.Width   := FGradient.Width;
  FBgGradient.Height  := FGradient.Height;
  FBgGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // clicked gradient
  FGradient.ColorBegin:= FColors.ClickedFrom;
  FGradient.ColorEnd  := FColors.ClickedTo;
  FCkGradient.Width   := FGradient.Width;
  FCkGradient.Height  := FGradient.Height;
  FCkGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // focused gradient
  FGradient.ColorBegin:= FColors.FocusedFrom;
  FGradient.ColorEnd  := FColors.FocusedTo;
  FFcGradient.Width   := FGradient.Width;
  FFcGradient.Height  := FGradient.Height;
  FFcGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // Highlight gradient
  FGradient.ColorBegin:= FColors.HighlightFrom;
  FGradient.ColorEnd  := FColors.HighlightTo;
  FHlGradient.Width   := FGradient.Width;
  FHlGradient.Height  := FGradient.Height;
  FHlGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.DrawButton(DC: HDC);
var
  R            : TRect;
  x, y         : Integer;

procedure DownArrow;
begin
  with Canvas do begin
    Polygon([Point(x + 4, y), Point(x + 8, y+4)]);
    Polygon([Point(x + 8, y+4), Point(x + 12, y)]);
    Polygon([Point(x +5, y), Point(x + 7, y+2)]);
    Polygon([Point(x +8, y+3), Point(x + 11, y)]);
    Polygon([Point(x +5, y-1), Point(x + 8, y+2)]);
    Polygon([Point(x +8, y+2), Point(x + 11, y-1)]);
  end;
end;

procedure UpArrow;
begin
  with Canvas do begin
    Polygon([Point(x + 8, y), Point(x + 4, y+4)]);
    Polygon([Point(x + 8, y), Point(x + 12, y+4)]);
    Polygon([Point(x +8, y+1), Point(x + 5, y+4)]);
    Polygon([Point(x +8, y+1), Point(x + 11, y+4)]);
    Polygon([Point(x +8, y+2), Point(x + 5, y+5)]);
    Polygon([Point(x +8, y+2), Point(x + 11, y+5)]);
  end;
end;
begin
  with Canvas do begin
    R:= GetButtonRect;
    Brush.Color:= Color;
    Pen.Color  := Color;
    Rectangle(Rect(R.Left-1, R.Top+1, R.Right, R.Bottom-1));

    if Enabled then
      if (dsClicked in DrawState) or droppeddown then
        StretchDraw(Rect(r.Left+2,r.Top+3,r.Right-2,r.Bottom-3),FCkGradient)
      else if (dsHighlight in DrawState) and ((Style=csDropdown) and  MouseCapture) then
        StretchDraw(Rect(r.Left+2,r.Top+3,r.Right-2,r.Bottom-3),FhlGradient)
      else if  (dsHighlight in DrawState) and  ((Style>csDropdown) and mousecapture) then
          StretchDraw(Rect(r.Left+2,r.Top+3,r.Right-2,r.Bottom-3),FhlGradient)
       else if (dsFocused in DrawState) then
        StretchDraw(Rect(r.Left+2,r.Top+3,r.Right-2,r.Bottom-3),FFcGradient)
      else
        StretchDraw(Rect(r.Left+2,r.Top+3,r.Right-2,r.Bottom-3),FBgGradient);
  end;

  if not(Style = csSimple) then begin
    if Enabled then
      Canvas.Pen.Color:= FColors.BorderLine
    else
      Canvas.Pen.Color:= clInactiveBorder;

    Canvas.Brush.Style:=bsclear;
    Canvas.RoundRect(R.Left+1, R.Top+2, R.Right-1, R.Bottom-2, 2, 2);
  end;

  // Ok simgesini çiz
  X := (R.Right - R.Left) div 2 -8 + R.Left;
  if DroppedDown then
    Y:= (R.Bottom - R.Top) div 2 - 3
  else
    Y:= (R.Bottom - R.Top) div 2 - 1;

  if Enabled then
    Canvas.Pen.Color := FColors.ArrowColor ;

  if DroppedDown then UpArrow else DownArrow;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.DrawControlBorder(DC: HDC);
var
  HelpRect: TRect;
  BtnFaceBrush, WindowBrush: HBRUSH;
  R            : TRect;
begin
  GetWindowRect(Handle, R);
  OffsetRect(R, -R.Left, -R.Top);

  try
    if Enabled then begin
      BtnFaceBrush:= CreateSolidBrush(ColorToRGB(Colors.BorderLine));
      WindowBrush := CreateSolidBrush(ColorToRGB(Color));
      FrameRect(DC, R, BtnFaceBrush);
      InflateRect(R, -1, -1);
      FrameRect(DC, R, WindowBrush);
      InflateRect(R, 0, -1);
      FrameRect(DC, R, WindowBrush);
    end else begin
      BtnFaceBrush:= CreateSolidBrush(ColorToRGB(clInactiveBorder));
      WindowBrush := CreateSolidBrush(ColorToRGB(Color));
      FrameRect(DC, R, BtnFaceBrush);
      InflateRect(R, -1, -1);
      FrameRect(DC, R, WindowBrush);
    end;
  finally
    DeleteObject(WindowBrush);
    DeleteObject(BtnFaceBrush);
  end;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.DrawControl;
var DC: HDC;
begin
  if (Style <> csSimple) then
    begin
      DC := GetWindowDC(Handle);
      try
        DrawControlBorder(DC);
        DrawButton(DC);
      finally
        ReleaseDC(Handle, DC);
      end;
    end;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.WMLButtonDown(var Message: TWMMouse);
var
  R: TRect;
begin
  SetRect(R, ClientWidth - FButtonWidth, 0, ClientWidth-2, ClientHeight-2);
  MouseCapture := false;
  lockdraw:=false;

  if InsideCombo(Message.XPos, Message.YPos) then
    Include(DrawState, dsClicked);
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  MouseCapture := true;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.WMLButtonUp   (var Message: TWMMouse);
begin
  if Focused then
    include(DrawState, dsfocused);
  if not InsideCombo(Message.XPos, Message.YPos) then
    Exclude(DrawState, dsHighlight);

  Exclude(DrawState, dsClicked);
  DrawControl;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: integer);
var
  cPos: TPoint;
  NewControl: TWinControl;
begin
  GetCursorPos(cPos);
  NewControl := FindVCLWindow(cPos);
  if (NewControl <> Self) then  begin
    Exclude(DrawState, dsHighlight);
    DrawControl;
  end;

  MouseCapture := false;
  inherited;
end;
//------------------------------------------------------------------------------
function TTechCustomComboBox.InsideCombo(X, Y: integer): boolean;
begin
  Result := PtInRect(Rect(0, 0, Width, Height), Point(X, Y));
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.MouseMove(Shift: TShiftState; X, Y: integer);
begin
  if Enabled then
    if InsideCombo(X, Y) then begin
      Include(DrawState, dshighlight);
      MouseCapture := true;
      if not LockDraw then   DrawControl;
      if not (dsclicked in DrawState) then
        LockDraw:=true;
    end else begin
      Exclude(DrawState, dshighlight);
      LockDraw:=false;
      if not (dsClicked in DrawState) then
        MouseCapture := false;
      DrawControl;
    end;

  inherited;
end;
//------------------------------------------------------------------------------
procedure  TTechCustomComboBox.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  lockdraw:=false;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.CNCommand(var Message: TWMCommand);
var
  ListRect  : TRECT;
begin
  case Message.NotifyCode of
    CBN_CLOSEUP  : begin
                     if FListBorder=lbSizeable then begin
                       Windows.GetWindowRect(FComboLBoxHandle, ListRect);
                       DropDownWidth := ListRect.Right - ListRect.Left;
                     end;
                     DoCloseUp;
                     Exclude(DrawState,dsclicked) ;
                     DrawControl;
                   end;
    CBN_KILLFOCUS: begin
                     Exclude(DrawState, dsFocused);
                     DrawControl;
                   end;
    CBN_SETFOCUS : begin
                     Include(DrawState, dsFocused);
                     DrawControl;
                   end;
  end;

  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.WMPaint(var Message: TWMPaint);
begin
  inherited;
  DrawControl;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.SetDropDownWidth(const Value: integer);
begin
  if DroppedDown then DroppedDown := false;
  Perform(CB_SETDROPPEDWIDTH, Value, 0);
end;
//------------------------------------------------------------------------------
function TTechCustomComboBox.GetDropDownWidth: integer;
begin
  Result := Perform(CB_GETDROPPEDWIDTH, 0, 0);
  if Result<Width then Result := Width;
  FDropDownWidth := Result;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.SetHorizExtent(const Value: integer);
begin
  if DroppedDown then DroppedDown := false;
  Perform(CB_SETHORIZONTALEXTENT, Value, 0);
  FHorizontalExtent := HorizontalExtent;
end;
//------------------------------------------------------------------------------
function TTechCustomComboBox.GetHorizExtent: integer;
begin
  Result := Perform(CB_GETHORIZONTALEXTENT, 0, 0);
end;
//------------------------------------------------------------------------------
function TTechCustomComboBox.GetExUI: boolean;
begin
  Result := boolean(Perform(CB_GETEXTENDEDUI, 0, 0));
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.SetExUI(const Value: boolean);
begin
  Perform(CB_SETEXTENDEDUI, integer(Value), 0);
  FExtendedInterface := ExtendedInterface;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.SetAutoDropDownWidth(const Value: boolean);
begin
  FAutoDropDownWidth := Value;
  if FAutoDropDownWidth then FAutoHorizontalScroll := false;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.SetAutoHorizontalScroll(const Value: boolean);
begin
  FAutoHorizontalScroll := Value;
  if FAutoHorizontalScroll then FAutoDropDownWidth := false;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.SetListBorder(const Value: TListBorderStyles);
const
  BorderStyles: array [TListBorderStyles] of longint =
                (WS_BORDER, WS_BORDER, WS_EX_DLGMODALFRAME, WS_EX_CLIENTEDGE, WS_SIZEBOX);
var
  Style, ExStyle: longint;
begin
  if FComboLBoxHandle <> 0 then begin
    Style := GetWindowLong(FComboLBoxHandle, GWL_STYLE);
    ExStyle := GetWindowLong(FComboLBoxHandle, GWL_EXSTYLE);
    //Açýlýr liste eski kenar stilini iptal et
    case FListBorder of
      lbSingle, lbSizeable: begin
                              if Style and BorderStyles[FListBorder]>0 then
                                Style := Style xor BorderStyles[FListBorder];
                              SetWindowLong(FComboLBoxHandle, GWL_STYLE, Style);
                            end;
      lbRaised, lbSunken  : begin
                              if ExStyle and BorderStyles[FListBorder]>0 then
                                ExStyle := ExStyle xor BorderStyles[FListBorder];
                              SetWindowLong(FComboLBoxHandle, GWL_EXSTYLE, ExStyle);
                            end;
    end;

    //Açýlýr liste yeni kenar stilini belirle
    case Value of
        lbNone              : begin
                                if Style and BorderStyles[Value]>0 then
                                  Style := Style xor BorderStyles[Value];
                                SetWindowLong(FComboLBoxHandle, GWL_STYLE, Style);
                              end;
        lbSingle, lbSizeable: begin
                                Style := Style or BorderStyles[Value];
                                SetWindowLong(FComboLBoxHandle, GWL_STYLE, Style);
                              end;
        lbRaised, lbSunken  : begin
                                ExStyle := ExStyle or BorderStyles[Value];
                                SetWindowLong(FComboLBoxHandle, GWL_EXSTYLE, ExStyle);
                              end;
    end;
  end;
  FListBorder := Value;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.WndProc(var Message: TMessage);
var
  ItemCount: longint;
begin

  with Message do
    case Msg of
       WM_CTLCOLORLISTBOX: begin
                             //Açýlýr liste nin window tutamacýný al.
                             if FComboLBoxHandle=0 then begin
                               FComboLBoxHandle := HWND(Message.lParam);
                               SetListBorder(FListBorder);
                               SetWindowPos(FComboLBoxHandle, 0, 0, 0, 0, 0, SWP_DRAWFRAME +
                                            SWP_NOZORDER + SWP_NOMOVE + SWP_NOSIZE + SWP_NOACTIVATE);
                             end;

                             //3D kenar stili için açýlýr listenin boyutlarýný ayarla
                             if (FDroppingDownList) and
                                (FListBorder in [lbRaised, lbSunken, lbSizeable]) then begin
                               ItemCount := Items.Count;
                               if ItemCount > DropDownCount then ItemCount := DropDownCount;
                               if ItemCount < 1 then ItemCount := 1;
                               FDroppingDownList := false;
                               SetWindowPos(FComboLBoxHandle, 0, 0, 0, DropDownWidth,
                                            ItemHeight * ItemCount + 8,
                                            SWP_NOMOVE + SWP_NOZORDER + SWP_NOACTIVATE);
                             end;
                           end;
    end;  //case
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.DoCloseUp;
begin
  if Assigned(FOnCloseUp) then FOnCloseUp(Self);
end;
//------------------------------------------------------------------------------
procedure TTechCustomComboBox.DropDown;
var
  DC: HDC;
  OldFont: HFONT;
  Size: TSize;
  MaxLen, i: integer;
begin
  inherited;
  FDroppingDownList := true;
  if FAutoHorizontalScroll or FAutoDropDownWidth then
    begin
      DC := CreateCompatibleDC(0);
      OldFont := SelectObject(DC, Font.Handle);
      MaxLen := 0;
      try
        for i:=0 to Items.Count-1 do
          begin
            Size := ItemSize(DC, i, false);
            if Size.cx>MaxLen then MaxLen := Size.cx;
          end;
      finally
        SelectObject(DC, OldFont);
        DeleteDC(DC);
      end;

      if FAutoDropDownWidth then
        if Items.Count>DropDownCount then
          DropDownWidth := MaxLen + GetSystemMetrics(SM_CXVSCROLL) + 8
        else
          DropDownWidth := MaxLen + 8;

      if FAutoHorizontalScroll then HorizontalExtent := MaxLen + 8;
    end;
end;
//------------------------------------------------------------------------------
function TTechCustomComboBox.ItemSize(paDC: hDC; paIndex: integer; paInEdit: boolean): TSize;
var
  DC: HDC;
  OldFont: HFONT;
begin
  if paIndex=-1 then begin
    Result.cx := 0;
    Result.cy := 0;
  end else begin
    if paDC=0 then begin
      DC := CreateCompatibleDC(0);
      OldFont := SelectObject(DC, Font.Handle);
     end else begin
       DC := paDC;
       OldFont := 0;
       end;

       try
         GetTextExtentPoint32(DC, PChar(Items[paIndex]), Length(Items[paIndex]), Result);
       finally
         if paDC=0 then begin
         SelectObject(DC, OldFont);
         DeleteDC(DC);
       end;
    end;
  end;
end;
//------------------------------------------------------------------------------
constructor TColors.Create(AOwner: TComponent);
begin
  inherited Create;
  FArrowColor    := clNavy;
  FBackgroundFrom:= $00FFDFDF;
  FBackgroundTo  := $00DE9274;
  FBorderLine    := $00E6AC97;
  FClickedFrom   := $00DFDFDF;
  FClickedTo     := $00959595;
  FFocusedFrom   := clwhite;
  FFocusedTo     := $00FFBFBF;
  FHighlightFrom := clwhite;
  FHighlightTo   := $000080FF;

  FOwner         := AOwner;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundFrom(Value: TColor);
begin
  if Value <> FBackgroundFrom then begin
    FBackgroundFrom := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundTo(Value: TColor);
begin
  if Value <> FBackgroundTo then begin
    FBackgroundTo := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBorderLine(Value: TColor);
begin
  if Value <> FBorderLine then begin
    FBorderLine := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedFrom(Value: TColor);
begin
  if Value <> FClickedFrom then begin
    FClickedFrom := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedTo(Value: TColor);
begin
  if Value <> FClickedTo then begin
    FClickedTo := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedFrom(Value: TColor);
begin
  if Value <> FFocusedFrom then begin
    FFocusedFrom := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedTo(Value: TColor);
begin
  if Value <> FFocusedTo then begin
    FFocusedTo := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightFrom(Value: TColor);
begin
  if Value <> FHighlightFrom then begin
    FHighlightFrom := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightTo(Value: TColor);
begin
  if Value <> FHighlightTo then begin
    FHighlightTo := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetArrowColor(Value: TColor);
begin
  if Value <> FArrowColor then begin
    FArrowColor := Value;
    TTechComboBox(FOwner).Perform(WM_SIZE,0,0);
  end;
end;

procedure Register;
begin
  RegisterComponents('Tech', [TTechComboBox]);
end;



end.

