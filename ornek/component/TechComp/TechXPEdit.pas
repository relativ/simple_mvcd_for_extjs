unit TechXPEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, Graphics, forms,
  TechGradient,dialogs,ExtCtrls,TechUtilitys;

type

  TDrawState = set of (dsDefault, dsHighlight, dsFocused, dsClicked);
  TEventProc = procedure (Sender: TObject) of Object;
  TReadyImage= (imgNone, imgFolder, imgNewFolder, imgOpenFolder, imgCalendar);

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
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);
  published
    { Published declarations }
    property BackgroundFrom: TColor read FBackgroundFrom write SetBackgroundFrom;
    property BackgroundTo  : TColor read FBackgroundTo   write SetBackgroundTo;
    property BorderLine    : TColor read FBorderLine     write SetBorderLine default $00E6AC97;
    property ClickedFrom   : TColor read FClickedFrom    write SetClickedFrom;
    property ClickedTo     : TColor read FClickedTo      write SetClickedTo;
    property FocusedFrom   : TColor read FFocusedFrom    write SetFocusedFrom;
    property FocusedTo     : TColor read FFocusedTo      write SetFocusedTo;
    property HighlightFrom : TColor read FHighlightFrom  write SetHighlightFrom;
    property HighlightTo   : TColor read FHighlightTo    write SetHighlightTo;
  end;


  TButtonProperties = class(TPersistent)
  private
    FFont   : TFont;
    FGlyph  : TBitmap;
    FColors : TColors;
    FCaption: string;
    FLeft   : integer;
    FTop    : integer;
    FVisible: boolean;
    FOwner  : TComponent;
    FImages : TReadyImage;
  protected
    procedure SetColors     (Value: TColors );
    procedure SetButtonFont (Value: TFont);
    procedure SetButtonGlyph(Value: TBitmap);
    procedure SetCaption    (Value: string);
    procedure SetReadyImage (Value: TReadyImage);
    procedure SetLeft       (Value: integer);
    procedure SetTop        (Value: integer);
    procedure SetVisible    (Value: boolean);
  public
    constructor Create(AOwner: TComponent);
  published
    property Colors : TColors     read FColors  write SetColors;
    property Font   : TFont       read FFont    write SetButtonFont;
    property Glyph  : TBitmap     read FGlyph   write SetButtonGlyph;
    property Caption: string      read FCaption write SetCaption;
    property Left   : integer     read FLeft    write SetLeft;
    property Top    : integer     read FTop     write SetTop;
    property Visible: boolean     read FVisible write SetVisible;
    property Images : TReadyImage read FImages  write SetReadyImage;
  end;

  TEditButton = Class(TCustomControl)
  private
    { Private declarations }
    FBgGradient : TBitmap;
    FCkGradient : TBitmap;
    FFcGradient : TBitmap;
    FHlGradient : TBitmap;
    FGradient   : TTechGradient;
    LockDraw    : boolean;
    FOwner      : TComponent;
    DrawState   : TDrawState;

    function  InsideButton  (X, Y: integer): boolean;
    procedure WMSize        (var Message: TWMSize)     ; message WM_SIZE;
    procedure WMPaint       (var Message: TWMPaint)    ; message WM_PAINT;
    procedure WMLButtonUp   (var Message: TWMLButtonUp); message WM_LBUTTONUP;
    procedure CMFocusChanged(var Message: TMessage)    ; message CM_FOCUSCHANGED;
    procedure PaintEdit;
  protected
    { Protected declarations }
    procedure MouseDown (Button: TMouseButton; Shift: TShiftState; X, Y: integer); override;
    procedure MouseUp   (Button: TMouseButton; Shift: TShiftState; X, Y: integer); override;
    procedure MouseMove   (Shift: TShiftState; X, Y: integer); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

  TTechCustomEdit = class(TCustomEdit)
  private
    { Private declarations }
    FColor: TColor;
    FOwner: TComponent;
    procedure SetEditRect;

    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMParentColorChanged   (var Message: TMessage); message CM_PARENTCOLORCHANGED;
  protected
    { Protected declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: integer); override;
    procedure Change; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

  TTechXPEdit = class(TCustomPanel)
  private
    FEdit            : TTechCustomEdit;
    FEditButton      : TEditButton;
    FButtonProperties: TButtonProperties;
    FAutoSelect      : boolean;
    FText            : TCaption;
    FPasswordChar    : char;
    FOnButtonClick   : TEventProc;
    FOnChange        : TEventProc;
    FCursor          : TCursor;
    FCharCase        : TEditCharCase;
    FReadOnly        : boolean;
    FMaxLength       : integer;
    FTabStop         : boolean;

    function GetText:TCaption;
    procedure SetCursor          (Value: TCursor);
    procedure SetAutoSelect      (Value: boolean);
    procedure SetEditButton      (Value: TEditButton);
    procedure SetButtonProperties(Value: TButtonProperties);
    procedure SetText            (Value: TCaption);
    procedure SetPasswordChar    (Value: char);
    procedure SetCharCase        (Value: TEditCharCase);
    procedure SetMaxLength       (Value: integer);
    procedure SetReadOnly        (Value: boolean);
    procedure SetTabStop         (Value: boolean);
    procedure CMTextChanged      (var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMEnabledChanged   (var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMFontChanged      (var Message: TMessage); message CM_FONTCHANGED;
    procedure WMSize             (var Message: TWMSize) ; message WM_SIZE;
  protected
  public
    constructor Create(AOwner: TComponent); override;
    property    EditButton: TEditButton read FEditButton write SetEditButton;
  published
    property Anchors;
    property AutoSize;
    property AutoSelect      : boolean           read FAutoSelect       write SetAutoSelect;
    property ButtonProperties: TButtonProperties read FButtonProperties write SetButtonProperties;
    property CharCase        : TEditCharCase     read FCharCase         write SetCharCase;
    property Color;
    property Constraints;
    property Cursor          : TCursor           read FCursor           write SetCursor;
    property Enabled;
    property Font;
    property MaxLength       : integer           read FMaxLength        write SetMaxLength;
    property ParentColor;
    property ParentFont;
    property PasswordChar    : char              read FPasswordChar     write SetPasswordChar;
    property PopupMenu;
    property ReadOnly        : boolean           read FReadOnly         write SetReadOnly;
    property ShowHint;
    property TabStop         : boolean           read FTabStop          write SetTabStop;
    property TabOrder;
    property Text            : TCaption          read GetText             write SetText ;
    property Visible;

    property OnClick;
    property OnChange     : TEventProc read FOnChange      write FOnChange;
    property OnButtonClick: TEventProc read FOnButtonClick write FOnButtonClick;

    property OnContextPopup;
    property OnDblClick;
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
  end;


procedure Register;

implementation

{$R TechXPEdit.res}

const

  bmFolder    = 'BMPFOLDER';
  bmNewFolder = 'BMPNEWFOLDER';
  bmOpenFolder= 'BMPOPENFOLDER';
  bmCalendar  = 'BMPCALENDAR';

var
  FReadyImages : TImageList=nil;
  DrawBitmap  : TBitmap;

  Bmp         : TBitmap;
procedure Register;
begin
  RegisterComponents('Tech', [TTechXPEdit]);
end;
//------------------------------------------------------------------------------
// TButtonProperties
//------------------------------------------------------------------------------
constructor TButtonProperties.Create(AOwner: TComponent);
begin
  inherited Create;
  FOwner  := AOwner;
  FFont   := TFont.Create;
  FGlyph  := TBitmap.Create;
  FColors := TColors.Create(AOwner);
  FVisible:= false;
  FTop    := 0;
  FLeft   := 0;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetButtonFont(Value: TFont);
begin
  FFont.Assign(Value);
  (FOwner as TTechXPEdit).FEditButton.Invalidate;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetButtonGlyph( Value : TBitmap );
begin
  FGlyph.Assign(Value);
  (FOwner as TTechXPEdit).Invalidate;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetReadyImage( Value : TReadyImage );
begin
  FImages:=Value;
  (FOwner as TTechXPEdit).Invalidate;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetColors( Value : TColors );
begin
  FColors.Assign(Value);
  (FOwner as TTechXPEdit).FEditButton.Invalidate;
End;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetCaption    (Value: string);
begin
  FCaption:= Value;
  (FOwner as TTechXPEdit).FEditButton.Invalidate;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetLeft(Value: integer);
begin
  FLeft:= Value;
  (FOwner as TTechXPEdit).FEditButton.Invalidate;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetTop(Value: integer);
begin
  FTop:= Value;
  (FOwner as TTechXPEdit).FEditButton.Invalidate;
end;
//------------------------------------------------------------------------------
procedure TButtonProperties.SetVisible    (Value: boolean);
begin
  FVisible:= value;
  (FOwner as TTechXPEdit).FEditButton.Visible:= value;

  if not Value then
    (FOwner as TTechXPEdit).FEditbutton.Parent:=nil
  else
    (FOwner as TTechXPEdit).FEditbutton.Parent:=(FOwner as TTechXPEdit);
end;
//------------------------------------------------------------------------------
// TTechXPEdit
//------------------------------------------------------------------------------
constructor  TTechXPEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csfixedheight];
  ControlStyle := ControlStyle - [csacceptscontrols];
  BevelOuter:= bvnone;
  Height    := 21;
  FAutoSelect:=true;
  FCursor:=crDefault;
  FTabStop:=true;

  FButtonProperties:= TButtonProperties.Create(Self);

  FEditButton       := TEditButton.Create(self);
  FEditButton.Parent:= nil;
  FEditButton.Align := alright;
  FEditButton.Visible:=false;

  FEdit             := TTechCustomEdit.Create(Self);
  FEdit.Parent      := Self;
  FEdit.Align       := alclient;
  FEdit.PasswordChar:= #0;
  FEdit.AutoSelect  := true;
  FEdit.Cursor:=crHandPoint;
  FEdit.OnKeyDown := OnKeyDown;
  FEdit.OnKeyPress := OnKeyPress;
  FEdit.OnKeyUp := OnKeyUp;

  Color:= $00FFF4F4;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.CMTextChanged(var Message: TMessage);
begin
  Text:=Name;

  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.CMEnabledChanged(var Message: TMessage);
begin
  FEdit.Enabled      := Enabled;
  FEdit.Invalidate;
  FEditButton.Enabled:= Enabled;
  FEditButton.Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.CMFontChanged   (var Message: TMessage);
begin
  Fedit.Font      := Font;
  FEditButton.Font:= Font;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetEditButton (Value : TEditButton);
begin
  FEditButton.Assign(Value);
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetButtonProperties(Value : TButtonProperties);
begin
  FButtonProperties.AssignTo(Value);
end;
//------------------------------------------------------------------------------
function TTechXPEdit.gettext:TCaption;
begin
  result:=FEdit.text;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetText(Value: TCaption);
begin
  FText:= Value;
  FEdit.Text:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetAutoSelect(Value: boolean);
begin
  FAutoSelect:=Value;
  FEdit.AutoSelect:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetPasswordChar(Value: Char);
begin
  FPasswordChar:=Value;
  FEdit.PasswordChar:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetCharCase(Value: TEditCharCase);
begin
  FCharCase:= Value;
  FEdit.CharCase:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetCursor(Value: TCursor);
begin
  FCursor:=Value;
  FEdit.Cursor:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetMaxLength(Value: integer);
begin
  FMaxLength:=Value;
  FEdit.Maxlength:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetTabStop(Value: boolean);
begin
  FTabStop:=Value;
  FEdit.TabStop:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.SetReadOnly(Value: boolean);
begin
  FReadOnly:=Value;
  FEdit.ReadOnly:= Value;
end;
//------------------------------------------------------------------------------
procedure TTechXPEdit.WMSize(var Message: TWMSize);
begin
  inherited;
  if Autosize then begin
    Height:=getfontheight(Font)+6;
    FEdit.Invalidate;
    FEditButton.Invalidate;
  end;
end;

//------------------------------------------------------------------------------
// TTechCustomEdit
//------------------------------------------------------------------------------
constructor TTechCustomEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FOwner:= AOwner;
  FColor := $00FFF4F4;
  ControlStyle := ControlStyle - [csSetCaption,csfixedheight];
  height:=21;
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
 // Params.Style := Params.Style or ES_MULTILINE;

end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  inherited;
  if Assigned((FOwner as TTechXPEdit).OnClick) then (FOwner as TTechXPEdit).Click;
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.Change;
begin
  inherited;
  if Assigned((FOwner as TTechXPEdit).OnChange) then (FOwner as TTechXPEdit).OnChange(FOwner as TTechXPEdit);
end;
//------------------------------------------------------------------------------

procedure TTechCustomEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
        inherited KeyDown(Key,Shift);
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.KeyUp(var Key: Word; Shift: TShiftState); 
begin
        inherited KeyUp(Key,Shift);
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.KeyPress(var Key: Char);
begin
        inherited KeyPress(Key);
end;
//------------------------------------------------------------------------------

procedure TTechCustomEdit.CreateWnd;
begin
  inherited CreateWnd;
  ParentCtl3D := False;
  ParentColor := true;
  ParentFont := False;
  Ctl3D := False;
  BevelInner := bvnone;
  BevelKind := bknone;
  BevelOuter := BVNone;
  BorderStyle := bsSingle;

  SetEditRect;
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.CMParentColorChanged   (var Message: TMessage);
begin
  Color:= (FOwner as TTechXPEdit).Color;
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.SetEditRect;
var
  R: TRect;
begin
  SendMessage(Handle, EM_GETRECT, 0, LongInt(@R));
  R.Top := 2;
  R.Left:= 0;
  SendMessage(Handle, EM_SETRECTNP, 0, LongInt(@R));
end;
//------------------------------------------------------------------------------
procedure TTechCustomEdit.WMPaint(var Message: TWMPaint);
var
  C: TControlCanvas;
Begin
  inherited;

  C:= TControlCanvas.Create;
  C.Control:=Self;
  if Enabled then
    C.Pen.Color  := (FOwner as TTechXPEdit).ButtonProperties.Colors.BorderLine
  else
    C.Pen.Color:= clSilver;
  C.Brush.Style:= bsClear;
  C.RoundRect(0, 0,Width, Height, 0, 0);
end;
//------------------------------------------------------------------------------
// TEditButton
//------------------------------------------------------------------------------
constructor TEditButton.Create(AOwner: TComponent);
begin
  inherited ;
  Width  := 21;
  Height := 21;
  Visible:= true;
  FOwner := AOwner;
  TabStop:= false;

  FGradient       := TTechGradient.Create(self);
  FGradient.Style := gslinearh;
  FGradient.shift := -30;

  FBgGradient:= TBitmap.Create; // background gradient
  FCkGradient:= TBitmap.Create; // clicked gradient
  FFcGradient:= TBitmap.Create; // focused gradient
  FHlGradient:= TBitmap.Create; // Highlight gradient
end;
//------------------------------------------------------------------------------
procedure TEditButton.PaintEdit;
var
  R: TRect;
 _ButtonFont : Tfont;
  _ButtonGlyph : TBitmap;
  W,H : integer;
begin
  if not Visible then exit;
   _ButtonGlyph:=TBitmap.Create;
  if (FOwner as TTechXPEdit).ButtonProperties.FImages=imgFolder then
    FReadyImages.GetBitmap(0, _ButtonGlyph)
  else if (FOwner as TTechXPEdit).ButtonProperties.FImages=imgNewFolder then
    FReadyImages.GetBitmap(1, _ButtonGlyph)
  else if (FOwner as TTechXPEdit).ButtonProperties.FImages=imgOpenFolder then
    FReadyImages.GetBitmap(2, _ButtonGlyph)
  else if (FOwner as TTechXPEdit).ButtonProperties.FImages=imgCalendar then
    FReadyImages.GetBitmap(3, _ButtonGlyph)
  else if (FOwner as TTechXPEdit).ButtonProperties.FImages=imgNone then
    _ButtonGlyph := (FOwner as TTechXPEdit).ButtonProperties.Glyph;

  R := ClientRect;
  if Enabled then
    Canvas.Pen.Color  := (FOwner as TTechXPEdit).ButtonProperties.Colors.BorderLine
  else
    Canvas.Pen.Color:= clsilver;

  Canvas.Brush.Style:= bsClear;
  Canvas.RoundRect(0, 0, Width, Height, 0, 0);
  inflaterect(r,-1,-1);

  if Enabled then
    if (dsClicked in DrawState)  then
      Canvas.StretchDraw(Rect(r.Left-1,r.Top,r.Right,r.Bottom),FCkGradient)
    else if (dsHighlight in DrawState)  and  MouseCapture then
      Canvas.StretchDraw(Rect(r.Left-1,r.Top,r.Right,r.Bottom),FhlGradient)
    else if (dsFocused in DrawState) then
      Canvas.StretchDraw(Rect(r.Left-1,r.Top,r.Right,r.Bottom),FFcGradient)
    else
      Canvas.StretchDraw(Rect(r.Left-1,r.Top,r.Right,r.Bottom),FBgGradient)
  else begin
     Canvas.Brush.Color:=$00DFDFDF;
     Canvas.FillRect(Rect(r.Left-1,r.Top,r.Right,r.Bottom));
  end;


  If not _ButtonGlyph.Empty  then begin
    h := (FOwner as TTechXPEdit).FButtonProperties.FTop;
    w := (FOwner as TTechXPEdit).FButtonProperties.FLeft;
    _ButtonGlyph.Transparent := True;
    _ButtonGlyph.TransparentMode := tmAuto;
    Canvas.Draw(w,h,_ButtonGlyph);
  End;

  If ((FOwner as TTechXPEdit).FButtonProperties.FCaption <> '') and  _ButtonGlyph.Empty  then begin
    w := Canvas.TextWidth((FOwner as TTechXPEdit).FButtonProperties.FCaption);
    H := Canvas.Textheight((FOwner as TTechXPEdit).FButtonProperties.FCaption);
    Canvas.Font := (FOwner as TTechXPEdit).FButtonProperties.Font;
    Canvas.Textout((FOwner as TTechXPEdit).FButtonProperties.FLeft,
                   (FOwner as TTechXPEdit).FButtonProperties.FTop,
                   (FOwner as TTechXPEdit).FButtonProperties.FCaption);
  end;
end;
//------------------------------------------------------------------------------
procedure TEditButton.WMPaint(var Message: TWMPaint);
begin
  inherited;
  paintEdit;
end;
//------------------------------------------------------------------------------
function TEditButton.InsideButton(X, Y: integer): boolean;
begin
  Result := PtInRect(Rect(0, 0, Width, Height), Point(X, Y));
end;
//------------------------------------------------------------------------------
procedure TEditButton.MouseMove(Shift: TShiftState; X, Y: integer);
begin
  if Enabled then begin
    if InsideButton(X, Y)  then begin
     Include(DrawState, dshighlight);
     MouseCapture := true;
     if not LockDraw then
       paintEdit;
    end else begin
      Exclude(DrawState, dshighlight);
      if not (dsClicked in DrawState) then
        MouseCapture := false;
      paintEdit;
      LockDraw:=false;
    end;
  end;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TEditButton.CMFocusChanged(var Message: TMessage);
begin
  if Focused or (FOwner as TTechXPEdit).FEdit.Focused then begin
    Include(DrawState, dsFocused) ;
    (FOwner as TTechXPEdit).FEdit.SetFocus;
  end else begin
    Exclude(DrawState, dsFocused);
    Exclude(DrawState, dsClicked);
  end;
  paintEdit ;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TEditButton.WMLButtonUp(var Message: TWMLButtonUp);
begin
  if Focused then
    include(DrawState, dsfocused);
  if not InsideButton(Message.XPos, Message.YPos) then
    Exclude(DrawState, dsHighlight);

  Exclude(DrawState, dsClicked);
  paintEdit;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TEditButton.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: integer);
var
  cPos: TPoint;
  NewControl: TWinControl;
begin
  GetCursorPos(cPos);
  NewControl := FindVCLWindow(cPos);
  if (NewControl <> Self) then  begin
    Exclude(DrawState, dsHighlight);
    paintEdit;
  end;

  MouseCapture := false;
  inherited;
  if assigned((FOwner as TTechXPEdit).FOnButtonClick) then
    (FOwner as TTechXPEdit).FOnButtonClick(FOwner as TTechXPEdit);
end;
//------------------------------------------------------------------------------
procedure TEditButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  MouseCapture := true;
  if not Focused then
    SetFocus;

  Include(DrawState, dsClicked);
  PaintEdit;
  (FOwner as TTechXPEdit).FEdit.SetFocus;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TEditButton.WMSize(var Message: TWMSize);

begin
  inherited;

  FGradient.Width := Width;
  FGradient.Height:= Height;

  // background gradient
  FGradient.ColorBegin:= (FOwner as TTechXPEdit).ButtonProperties.Colors.BackgroundFrom;
  FGradient.ColorEnd  := (FOwner as TTechXPEdit).ButtonProperties.Colors.BackgroundTo;
  FBgGradient.Width   := FGradient.Width;
  FBgGradient.Height  := FGradient.Height;
  FBgGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // clicked gradient
  FGradient.ColorBegin:= (FOwner as TTechXPEdit).ButtonProperties.Colors.ClickedFrom;
  FGradient.ColorEnd  := (FOwner as TTechXPEdit).ButtonProperties.Colors.ClickedTo;
  FCkGradient.Width   := FGradient.Width;
  FCkGradient.Height  := FGradient.Height;
  FCkGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // focused gradient
  FGradient.ColorBegin:= (FOwner as TTechXPEdit).ButtonProperties.Colors.FocusedFrom;
  FGradient.ColorEnd  := (FOwner as TTechXPEdit).ButtonProperties.Colors.FocusedTo;
  FFcGradient.Width   := FGradient.Width;
  FFcGradient.Height  := FGradient.Height;
  FFcGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // Highlight gradient
  FGradient.ColorBegin:= (FOwner as TTechXPEdit).ButtonProperties.Colors.HighlightFrom;
  FGradient.ColorEnd  := (FOwner as TTechXPEdit).ButtonProperties.Colors.HighlightTo;
  FHlGradient.Width   := FGradient.Width;
  FHlGradient.Height  := FGradient.Height;
  FHlGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  Paintedit;
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
    (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundTo(Value: TColor);
begin
  if Value <> FBackgroundTo then begin
    FBackgroundTo := Value;
    (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBorderLine(Value: TColor);
begin
  if Value <> FBorderLine then begin
    FBorderLine := Value;
    (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedFrom(Value: TColor);
begin
  if Value <> FClickedFrom then begin
    FClickedFrom := Value;
   (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedTo(Value: TColor);
begin
  if Value <> FClickedTo then begin
    FClickedTo := Value;
   (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedFrom(Value: TColor);
begin
  if Value <> FFocusedFrom then begin
    FFocusedFrom := Value;
    (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedTo(Value: TColor);
begin
  if Value <> FFocusedTo then begin
    FFocusedTo := Value;
    (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightFrom(Value: TColor);
begin
  if Value <> FHighlightFrom then begin
    FHighlightFrom := Value;
   (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightTo(Value: TColor);
begin
  if Value <> FHighlightTo then begin
    FHighlightTo := Value;
   (FOwner as TTechXPEdit).FEditButton.Invalidate;
  end;
end;
//------------------------------------------------------------------------------
initialization
  DrawBitmap:=TBitmap.create;
  Bmp:= TBitmap.Create;
  try
    Bmp.LoadFromResourceName(HInstance, bmFolder);
    FReadyImages := TImageList.CreateSize(Bmp.Width, Bmp.Height);
    FReadyImages.Add(Bmp, nil);
    Bmp.LoadFromResourceName(HInstance, bmNewFolder);
    FReadyImages.Add(Bmp, nil);
    Bmp.LoadFromResourceName(HInstance, bmOpenFolder);
    FReadyImages.Add(Bmp, nil);
    Bmp.LoadFromResourceName(HInstance, bmCalendar);
    FReadyImages.Add(Bmp, nil);
  finally
    Bmp.Free;
  end;
finalization
  DrawBitmap.free;
  if assigned(FReadyImages) then FReadyImages.free;
end.
