unit TechButton;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, ImgList,
  ActnList, SysUtils,extctrls, TechGradient, TechCustomControl, TechUtilitys;

type
  TGlyphLayout = (blGlyphLeft, blGlyphRight, blGlyphTop, blGlyphBottom);


  TButtonActionLink = class(TWinControlActionLink)
  protected
    { Protected declarations }
    function  IsImageIndexLinked: Boolean; override;

    procedure AssignClient (AClient: TObject); override;
    procedure SetImageIndex(Value: Integer)  ; override;
  public
    { Public declarations }
    destructor Destroy; override;
  end;

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
    FHotTrack      : TColor;
    FDownArrow     : TColor;
    FGradShift     : TGradientShift;
    FGradStyle     : TGradientStyle;
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
    procedure SetHotTrack      (Value: TColor);
    procedure SetDownArrow     (Value: Tcolor);
    procedure SetGradShift     (Value: TGradientShift);
    procedure SetGradStyle     (Value: TGradientStyle);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);
  published
    { Published declarations }
    property BackgroundFrom: TColor read FBackgroundFrom write SetBackgroundFrom;
    property BackgroundTo  : TColor read FBackgroundTo   write SetBackgroundTo;
    property BorderLine    : TColor read FBorderLine     write SetBorderLine;
    property ClickedFrom   : TColor read FClickedFrom    write SetClickedFrom;
    property ClickedTo     : TColor read FClickedTo      write SetClickedTo;
    property FocusedFrom   : TColor read FFocusedFrom    write SetFocusedFrom;
    property FocusedTo     : TColor read FFocusedTo      write SetFocusedTo;
    property HighlightFrom : TColor read FHighlightFrom  write SetHighlightFrom;
    property HighlightTo   : TColor read FHighlightTo    write SetHighlightTo;
    property HotTrack      : TColor read FHotTrack       write SetHotTrack;
    property Downarrow     : TColor read FDownArrow      write SetDownArrow;
    property GradientShift : TGradientShift read FGradShift write SetGradShift;
    property GradientStyle : TGradientStyle read FGradStyle write SetGradStyle;
  end;

  TTechButton = class(TTechCustomControl)
  private
    { Private declarations }
    FDrawDisabledImg: boolean;
    FCizim          : boolean;
    FCornerRadius   : integer;
    FMultiLine      : boolean;
    FLines          : TStringList;
    FShowDownArrow  : boolean;
    FCanRepeat      : boolean;
    FRepeat         : TTimer;
    FStart          : TTimer;
    FBgGradient     : TBitmap;
    FCkGradient     : TBitmap;
    FFcGradient     : TBitmap;
    FHlGradient     : TBitmap;
    FCancel         : Boolean;
    FDefault        : Boolean;
    FGlyph          : TBitmap;
    FHotTrack       : Boolean;
    FImageChangeLink: TChangeLink;
    FImageIndex     : Integer;
    FLayout         : TGlyphLayout;
    FColors         : TColors;
    FShowAccelChar  : Boolean;
    FShowFocusRect  : Boolean;
    FSpacing        : Byte;
    FWordWrap       : Boolean;
    FModalResult    : TModalResult;
     LockDraw:boolean;
    function GetStartInterval : integer;
    function GetRepeatInterval: integer;

    procedure SetCornerRadius  (Value: integer);
    procedure SetRepeatInterval(const Value: integer);
    procedure SetStartInterval (const Value: integer);
    procedure ImageListChange  (Sender: TObject);
  protected
    { Protected declarations }
    function GetActionLinkClass: TControlActionLinkClass; override;
    function InsideButton         (X, Y: integer): boolean;

    procedure MouseMove           (Shift: TShiftState; X, Y: integer); override;
    procedure CMDialogKey         (var Message: TCMDialogKey); message CM_DIALOGKEY;
    procedure DoRepeat            (Sender: TObject);
    procedure DoStart             (Sender: TObject);
    procedure ActionChange        (Sender: TObject; CheckDefaults: Boolean); override;
    procedure KeyDown             (var Key: Word; Shift: TShiftState); override;
    procedure KeyUp               (var Key: Word; Shift: TShiftState); override;
    procedure SetDefault      (Value: Boolean);
    procedure SetGlyph        (Value: TBitmap);
    procedure SetHotTrack     (Value: Boolean);
    procedure SetLayout       (Value: TGlyphLayout);
    procedure SetShowAccelChar(Value: Boolean);
    procedure SetShowFocusRect(Value: Boolean);
    procedure SetSpacing      (Value: Byte);
    procedure SetWordWrap     (Value: Boolean);
    procedure SetShowDownArrow(Value: Boolean);
    procedure SetLines        (Value: TStringList);
    procedure SetMultiLine    (Value: boolean);
    procedure SetCizim        (Value: boolean);
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy                   ; override;

    procedure CallTextChanged; override;
    procedure CallMouseEnter; override;
    procedure CallMouseLeave; override;
    procedure CallResized   ; override;
    procedure CallMouseDown ; override;
    procedure CallMouseUp   ; override;

    property RepeatInterval: integer read GetRepeatInterval write SetRepeatInterval;
    property StartInterval : integer read GetStartInterval  write SetStartInterval;

  published
    // common properties.
    property Action;
    property TabStop;
    // custom properties.
    property Cornerradius   : integer      read FCornerRadius    write SetCornerRadius;
    property Cancel         : Boolean      read FCancel          write FCancel default False;
    property DrawDisabledImg: boolean      read FDrawDisabledImg write FDrawDisabledImg;
    property Default        : Boolean      read FDefault         write SetDefault default False;
    property Glyph          : TBitmap      read FGlyph           write SetGlyph;
    property HotTrack       : Boolean      read FHotTrack        write SetHotTrack default False;
    property Layout         : TGlyphLayout    read FLayout          write SetLayout default blGlyphLeft;
    property ModalResult    : TModalResult read FModalResult     write FModalResult default 0;
    property Colors         : TColors      read FColors          write FColors;
    property ShowAccelChar  : Boolean      read FShowAccelChar   write SetShowAccelChar;
    property ShowFocusRect  : Boolean      read FShowFocusRect   write SetShowFocusRect;
    property Spacing        : Byte         read FSpacing         write SetSpacing default 3;
    property WordWrap       : Boolean      read FWordWrap        write SetWordWrap default True;
    property CanRepeat      : boolean      read FCanRepeat       write FCanRepeat;
    property ShowDownArrow  : boolean      read FShowDownArrow   write SetShowDownArrow;
    property Lines          : TStringList  read FLines           write SetLines;
    property Multiline      : boolean      read FMultiLine       write SetMultiLine;
    property Cizim          : boolean      read FCizim           write SetCizim;
  end;

procedure WriteText   (const Parent: TControl; const Canvas: TCanvas;
                         AText: string; const AFont: TFont;
                         const Enabled, ShowAccelChar: Boolean;
                         var Rect: TRect; Flags: Integer);
procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechButton]);
end;

//------------------------------------------------------------------------------
//                          TColors
//------------------------------------------------------------------------------
constructor TColors.Create(AOwner: TComponent);
begin
  inherited Create;
  FBackgroundFrom:= $00FFFFFF;
  FBackgroundTo  := $00E7EBEF;
  FBorderLine    := clGray;
  FClickedFrom   := $00C6CFD6;
  FClickedTo     := $00EBF3F7;
  FFocusedFrom   := $00FFE7CE;
  FFocusedTo     := $00EF846D;
  FHighlightFrom := $00CEF3FF;
  FHighlightTo   := $000096E7;
  FHotTrack      := $000000FF;
  FDownArrow     := clblack;
  FGradShift     := 0;
  FGradStyle     := gsButterfly;
  FOwner         := AOwner;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundFrom(Value: TColor);
begin
  if Value <> FBackgroundFrom then begin
    FBackgroundFrom := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundTo(Value: TColor);
begin
  if Value <> FBackgroundTo then begin
    FBackgroundTo := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBorderLine(Value: TColor);
begin
  if Value <> FBorderLine then begin
    FBorderLine := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedFrom(Value: TColor);
begin
  if Value <> FClickedFrom then begin
    FClickedFrom := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedTo(Value: TColor);
begin
  if Value <> FClickedTo then begin
    FClickedTo := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedFrom(Value: TColor);
begin
  if Value <> FFocusedFrom then begin
    FFocusedFrom := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedTo(Value: TColor);
begin
  if Value <> FFocusedTo then begin
    FFocusedTo := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightFrom(Value: TColor);
begin
  if Value <> FHighlightFrom then begin
    FHighlightFrom := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightTo(Value: TColor);
begin
  if Value <> FHighlightTo then begin
    FHighlightTo := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHotTrack(Value: TColor);
begin
  if Value <> FHotTrack then begin
    FHotTrack := Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetDownArrow(Value: TColor);
begin
  if Value <> FDownArrow then begin
    FDownArrow:= Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure  TColors.SetGradShift (Value: TGradientShift);
begin
  if Value <> FGradShift then begin
    FGradShift:= Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure  TColors.SetGradStyle (Value: TGradientStyle);
begin
  if Value <> FGradStyle then begin
    FGradStyle:= Value;
    TTechButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
// TButtonActionLink
//------------------------------------------------------------------------------
procedure TButtonActionLink.AssignClient(AClient: TObject);
begin
  inherited AssignClient(AClient);
  FClient := AClient as TTechButton;
end;
//------------------------------------------------------------------------------
destructor TButtonActionLink.Destroy;
begin
  TTechButton(FClient).Invalidate;
  inherited;
end;
//------------------------------------------------------------------------------
function TButtonActionLink.IsImageIndexLinked: Boolean;
begin
  Result := True;
end;
//------------------------------------------------------------------------------
procedure TButtonActionLink.SetImageIndex(Value: Integer);
begin
  inherited;
  (FClient as TTechButton).FImageIndex := Value;
  (FClient as TTechButton).Invalidate;
end;

//------------------------------------------------------------------------------
// TTechButton
//------------------------------------------------------------------------------
constructor TTechButton.Create(AOwner: TComponent);
begin
  inherited;
  LockDraw:=false;
  Height := 25;
  Width  := 73;
  TabStop:= true;

  FDrawDisabledImg:= false;
  FMultiline:= false;
  FLines    := TStringList.Create;

  FRepeat        := TTimer.Create(Self);
  FRepeat.Enabled:= false;
  FRepeat.Interval:= 50;
  FRepeat.OnTimer := DoRepeat;
  FStart          := TTimer.Create(Self);
  FStart.Enabled  := false;
  FStart.Interval := 100;
  FStart.OnTimer  := DoStart;
  FImageIndex              := -1;
  FImageChangeLink         := TChangeLink.Create;
  FImageChangeLink.OnChange:= ImageListChange;


  FCanRepeat    := false;
  FCancel       := False;
  FDefault      := False;
  FGlyph        := TBitmap.Create;
  FHotTrack     := False;
  FLayout       := blGlyphLeft;
  FColors       := TColors.Create(Self);
  FShowFocusRect:= True;
  FShowAccelChar:= True;
  FCornerRadius := 5;

  FSpacing      := 3;
  FWordWrap     := True;
  FCizim        := true; 

  FBgGradient   := TBitmap.Create; // background gradient
  FCkGradient   := TBitmap.Create; // clicked gradient
  FFcGradient   := TBitmap.Create; // focused gradient
  FHlGradient   := TBitmap.Create; // Highlight gradient
end;
//------------------------------------------------------------------------------
destructor TTechButton.Destroy;
begin
  FBgGradient.Free;
  FCkGradient.Free;
  FFcGradient.Free;
  FHlGradient.Free;
  FGlyph.Free;
  FColors.Free;
  FImageChangeLink.OnChange := nil;
  FImageChangeLink.Free;
  FImageChangeLink := nil;
  inherited;
end;
//------------------------------------------------------------------------------
function TTechButton.InsideButton(X, Y: integer): boolean;
begin
  Result := PtInRect(Rect(0, 0, Width, Height), Point(X, Y));
end;
//------------------------------------------------------------------------------
procedure TTechButton.MouseMove(Shift: TShiftState; X, Y: integer);
begin
 if Enabled then
   if InsideButton(x, y) then begin
     Include(FDrawState, dsHighlight);
     MouseCapture:=true;
     if not LockDraw then invalidate;
     Lockdraw:=true;
   end else begin
     Exclude(FDrawState, dsHighlight);
     if not (dsClicked in DrawState) then MouseCapture:=false;
     Invalidate;
     Lockdraw:=false;
   end;

  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechButton.DoRepeat(Sender: TObject);
begin
  if assigned(OnClick) then OnClick(Self);
end;
//------------------------------------------------------------------------------
procedure TTechButton.DoStart(Sender: TObject);
begin
  FStart.Enabled:=false;
  FRepeat.Enabled:=true;
end;
//------------------------------------------------------------------------------
function TTechButton.GetRepeatInterval: integer;
begin
  Result:= FRepeat.Interval;
end;
//------------------------------------------------------------------------------
function TTechButton.GetStartInterval: integer;
begin
  Result:= FStart.Interval;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CallMouseEnter;
begin
  inherited;
  if (dsClicked in DrawState) and FCanRepeat then
    FStart.Enabled:=true;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CallMouseLeave;
begin
  inherited;
  if FCanRepeat then begin
    FRepeat.Enabled:=false;
    FStart.Enabled:=false;;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CallTextChanged;
begin
  if Flines.Count=0 then FLines.Add(Caption);
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CallMouseDown;
begin
  inherited;
  if FCanRepeat then
    FStart.Enabled:=true;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CallMouseUp;
begin
  inherited;
  if FCanRepeat then begin
      FRepeat.Enabled:= false;
      FStart.Enabled := false;
    end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetCornerRadius(Value: integer);
begin
  FCornerRadius:= Value;
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetRepeatInterval(const Value: integer);
begin
  FRepeat.Interval:=Value;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetStartInterval(const Value: integer);
begin
  FStart.Interval:=Value;
end;
//------------------------------------------------------------------------------
function TTechButton.GetActionLinkClass: TControlActionLinkClass;
begin
  Result := TButtonActionLink;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CMDialogKey(var Message: TCMDialogKey);
begin
  inherited;

  with Message do
    if (((CharCode = VK_RETURN) and (Focused or (FDefault ))) or
       ((CharCode = VK_ESCAPE) and FCancel) and (KeyDataToShiftState(KeyData) = []))
       and CanFocus then begin
      Click;
      Result := 1;
    end ;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetDefault(Value: Boolean);
begin
  if Value <> FDefault then begin
    FDefault := Value;
    with GetParentForm(Self) do
      Perform(CM_FOCUSCHANGED, 0, LongInt(ActiveControl));
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetGlyph(Value: TBitmap);
begin
  FGlyph.Assign(Value);
  Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetHotTrack(Value: Boolean);
begin
  if Value <> FHotTrack then begin
    FHotTrack := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetLayout(Value: TGlyphLayout);
begin
  if Value <> FLayout then begin
    FLayout := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetShowAccelChar(Value: Boolean);
begin
  if Value <> FShowAccelChar then begin
    FShowAccelChar := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetShowFocusRect(Value: Boolean);
begin
  if Value <> FShowFocusRect then begin
    FShowFocusRect := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetSpacing(Value: Byte);
begin
  if Value <> FSpacing then begin
    FSpacing := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetWordWrap(Value: Boolean);
begin
  if Value <> FWordWrap then begin
    FWordWrap := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.ImageListChange(Sender: TObject);
begin
  if Assigned(Action) and (Sender is TCustomImageList)
     and Assigned(TAction(Action).ActionList.Images)
     and ((TAction(Action).ImageIndex < (TAction(Action).ActionList.Images.Count))) then
    FImageIndex := TAction(Action).ImageIndex
  else
    FImageIndex := -1;

  Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetShowDownArrow(Value: boolean);
begin
  if Value <> FShowDownArrow then begin
    FShowDownArrow:= Value;
    invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetLines(Value: TStringList);
begin
   FLines.assign(Value);
   if FMultiLine then begin
     Caption:=FLines.Text;
   end else if FLines.Count>0 then begin
      Caption:= FLines.Strings[0];
   end;
   invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechButton.SetMultiLine(Value: boolean);
begin
  if Value then begin
    Caption:= Lines.Text;
  end else if FLines.Count>1 then begin
    Caption:= FLines.Strings[0];
  end;
  FMultiLine:=Value;
  invalidate;
end;

procedure TTechButton.SetCizim        (Value: boolean);
begin
        FCizim := Value;
end;

//------------------------------------------------------------------------------
procedure TTechButton.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (Key = VK_SPACE) then begin
    DrawState := DrawState + [dsHighlight];
    CallMouseDown;

    if FCanRepeat then
      FStart.Enabled:=true;
  end;

  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechButton.KeyUp(var Key: Word; Shift: TShiftState);
var
  cPos: TPoint;
begin
  if dsClicked in DrawState then begin
    GetCursorPos(cPos);
    cPos:= ScreenToClient(cPos);
    if not PtInRect(Bounds(0, 0, Width, Height), cPos) then
      DrawState := DrawState - [dsHighlight];
    DrawState := DrawState - [dsClicked];
    Invalidate;
    Click;
    if FCanRepeat then begin
      FRepeat.Enabled:= false;
      FStart.Enabled := false;
    end;
  end;

  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechButton.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited ActionChange(Sender, CheckDefaults);
  if Sender is TCustomAction then
    with TCustomAction(Sender) do begin
      if Assigned(TCustomAction(Sender).ActionList.Images) and
         (FImageChangeLink.Sender <> TCustomAction(Sender).ActionList.Images) then
        TCustomAction(Sender).ActionList.Images.RegisterChanges(FImageChangeLink);

      if (ActionList <> nil) and (ActionList.Images <> nil) and
         (ImageIndex >= 0) and (ImageIndex < ActionList.Images.Count) then
        FImageIndex:= ImageIndex;
      Invalidate;
    end;
end;
//------------------------------------------------------------------------------
procedure TTechButton.CallResized;
var
  Grad            : TTechGradient;
begin
  Grad       := TTechGradient.Create(self);
  Grad.Style := FColors.GradientStyle;
  Grad.Shift := FColors.GradientShift;
  Grad.Width := Width-2  ;
  Grad.Height:= Height-2;

  // background gradient
  Grad.ColorBegin   := FColors.BackgroundFrom;
  Grad.ColorEnd     := FColors.BackgroundTo;
  FBgGradient.Width :=  Grad.Width;
  FBgGradient.Height:=  Grad.Height;
  FBgGradient.Canvas.StretchDraw(Rect(0,0,Grad.Width,Grad.Height),Grad.Pattern);

  // clicked gradient
  Grad.ColorBegin   := FColors.ClickedFrom;
  Grad.ColorEnd     := FColors.ClickedTo;
  FCkGradient.Width := Grad.Width;
  FCkGradient.Height:= Grad.Height;
  FCkGradient.Canvas.StretchDraw(Rect(0,0,Grad.Width,Grad.Height),Grad.Pattern);

  // focused gradient
  Grad.ColorBegin   := FColors.FocusedFrom;
  Grad.ColorEnd     := FColors.FocusedTo;
  FFcGradient.Width := Grad.Width;
  FFcGradient.Height:= Grad.Height;
  FFcGradient.Canvas.StretchDraw(Rect(0,0,Grad.Width,Grad.Height),Grad.Pattern);

  // Highlight gradient
  Grad.ColorBegin   := FColors.HighlightFrom;
  Grad.ColorEnd     := FColors.HighlightTo;
  FHlGradient.Width := Grad.Width;
  FHlGradient.Height:= Grad.Height;
  FHlGradient.Canvas.StretchDraw(Rect(0,0,Grad.Width,Grad.Height),Grad.Pattern);

  Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechButton.Paint;
var
  R            : TRect;
  X, Y, Offset,
  Flags     : Integer;
  DrawPressed  : Boolean;
  Image ,image1       : TBitmap;
begin
if FCizim = true then
begin
  with Canvas do  begin
    R          := GetClientRect;
    Brush.Color:= Self.Color;
    CopyParentImage(Self, Canvas);

    if (dsHighlight in DrawState) then
      BitBlt(Handle, 1, 1, Width, Height, FHlGradient.Canvas.Handle, 0, 0, SRCCOPY)
    else if (dsFocused in DrawState) then
      BitBlt(Handle, 1, 1, Width, Height, FFcGradient.canvas.Handle, 0, 0, SRCCOPY);

    if not ((dsHighlight in DrawState) and (dsClicked in DrawState)) then begin
      Offset:=  2*Integer((dsHighlight in DrawState) or (dsFocused in DrawState));
      BitBlt(Handle, 1 + Offset, 1 + Offset, Width - 3 * Offset, Height - 3 * Offset,
             FBgGradient.Canvas.Handle, 0, 0, SRCCOPY);
    end else
      BitBlt(Handle, 1, 1, Width, Height, FCkGradient.Canvas.Handle, 0, 0, SRCCOPY);


    // çerçeveyi çiz.
    Pen.Color  := FColors.BorderLine;
    Brush.Style:= bsClear;
    RoundRect(0, 0, Width, Height, FCornerRadius, FCornerRadius);

    // Flaglarý ayarla
    Flags:= {DT_VCENTER or }DT_END_ELLIPSIS;
    if FWordWrap then
      Flags := Flags or DT_WORDBREAK;

    // imajý al
    Image := TBitmap.Create;
    try
      if Assigned(Action) and Assigned(TAction(Action).ActionList.Images) and
        (FImageIndex > -1) and (FImageIndex < TAction(Action).ActionList.Images.Count) then
        TAction(Action).ActionList.Images.GetBitmap(FImageIndex, Image)
      else
        Image.Assign(FGlyph);

      Image1:=TBitmap.Create;
      if FDrawDisabledImg and (not enabled)then begin
        Image1.Width := image.Width div 2;
        Image1.Height:= image.Height ;
        Image1.Canvas.CopyRect(rect(0,0,Image1.Width,Image1.Height),
                               Image.Canvas,
                               rect(Image1.Width,0,Image.Width,Image1.Height));

        Image.Assign(Image1);
      end else if FDrawDisabledImg and Enabled then begin

        Image1.Width := Image.Width div 2;
        Image1.Height:= Image.Height ;
        Image1.Canvas.CopyRect(rect(0,0,Image1.Width,Image1.Height),
                               Image.Canvas,
                               rect(0,0,Image1.Width,Image1.Height));

        image.Assign(Image1);
      end;
      Image1.Free;

      // HotTrack true ise Font rengini ayarla
      Font.Assign(Self.Font);
      if (FHotTrack) and (dsHighlight in DrawState) then
        Font.Color := FColors.HotTrack;

      // text çerçevesini hesapla.
      if not Image.Empty then
        case FLayout of
          blGlyphLeft:
            Inc(R.Left, Image.Width + FSpacing);
          blGlyphRight:
            begin
              Dec(R.Left, Image.Width + FSpacing);
              Dec(R.Right, (Image.Width + FSpacing) * 2);
              Flags := Flags or DT_RIGHT;
            end;
          blGlyphTop:
            Inc(R.Top, Image.Height + FSpacing);
          blGlyphBottom:
            Dec(R.Top, Image.Height + FSpacing);
        end;

      if FShowDownArrow then Dec(R.Right, 27);
      WriteText(Self, Canvas, Caption, Font, Enabled, FShowAccelChar, R, Flags or DT_CALCRECT);
      OffsetRect(R, (Width - R.Right) div 2, (Height - R.Bottom) div 2);

      DrawPressed := (dsHighlight in DrawState) and (dsClicked in DrawState);
      if DrawPressed then
        OffsetRect(R, 1, 1);

      // Ok simgesini
      if FShowDownArrow then
        with Canvas do begin
          Y:=(height div 2)+1;
          if Enabled then begin
            Pen.Color := Colors.Downarrow;
            Brush.Color := Colors.Downarrow;
          end else begin
            X:=R.Right+2;
            inc(Y);
            Pen.Color := clwhite;
            Brush.Color := clwhite;
            Polygon ([Point(X+4, Y), Point(X+8, Y), Point(X+6, Y+2)]);
            Pen.Color := clgray;
            Brush.Color := clgray;
            dec(Y);
          end;

          X:=R.Right+1;
          Polygon ([Point(X+4, Y), Point(X+8, Y), Point(X+6, Y+2)]);
        end;

      // imajý çiz
      if not Image.Empty then
      begin

        Image.Transparent := True;
        case FLayout of
          blGlyphLeft:
            Draw(R.Left - (Image.Width + FSpacing), (Height - Image.Height) div 2 +
              Integer(DrawPressed), Image);
          blGlyphRight:
            Draw(R.Right + FSpacing, (Height - Image.Height) div 2 +
              Integer(DrawPressed), Image);
          blGlyphTop:
            Draw((Width - Image.Width) div 2 + Integer(DrawPressed),
              R.Top - (Image.Height + FSpacing), Image);
          blGlyphBottom:
            Draw((Width - Image.Width) div 2 + Integer(DrawPressed),
              R.Bottom + FSpacing, Image);
        end;
      end;

      // Giriþ odaðý çerçevesini çiz
      if (dsFocused in DrawState) and (FShowFocusRect) then
      begin
        Brush.Style := bsSolid;
        DrawFocusRect(Bounds(3, 3, Width - 6, Height - 6));
      end;
      // Caption  yazdýr
      SetBkMode(Handle, Transparent);
      WriteText(Self, Canvas, Caption, Font, Enabled, FShowAccelChar, R, Flags);
    finally
      Image.Free;
    end;
  end; { with canvas }
end;
end;
//------------------------------------------------------------------------------
procedure WriteText(const Parent: TControl; const Canvas: TCanvas;
                     AText: string; const AFont: TFont;
                     const Enabled, ShowAccelChar: Boolean;
                     var Rect: TRect; Flags: Integer);
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
  with Canvas do begin
    Font.Assign(AFont);
    if not Enabled then begin
      OffsetRect(Rect, 1, 1);
      Font.Color := clBtnHighlight;
      DoDrawText;
      OffsetRect(Rect, -1, -1);
      Font.Color := clBtnShadow;
      DoDrawText;
    end else
      DoDrawText;
  end;
end;

end.

