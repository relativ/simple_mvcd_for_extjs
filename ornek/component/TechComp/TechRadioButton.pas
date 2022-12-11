unit TechRadioButton;

interface



uses
  Windows, Messages, Classes, Graphics, Sysutils, Controls, Forms, ExtCtrls,
  Dialogs, TechGradient, TechUtilitys, TechCustomControl;

const
  RadioMatrix: array[0..12,0..12] of integer =((3,3,3,3,1,2,2,2,1,3,3,3,3),
                                               (3,3,1,2,2,1,0,1,2,2,1,3,3),
                                               (3,1,2,1,0,0,0,0,0,1,2,1,3),
                                               (3,2,1,0,0,0,0,0,0,0,1,2,3),
                                               (1,2,0,0,0,5,4,5,0,0,0,2,1),
                                               (2,1,0,0,5,4,4,4,5,0,0,1,2),
                                               (2,0,0,0,4,4,4,4,4,0,0,0,2),
                                               (2,1,0,0,5,4,4,4,5,0,0,1,2),
                                               (1,2,0,0,0,5,4,5,0,0,0,2,1),
                                               (3,2,1,0,0,0,0,0,0,0,1,2,3),
                                               (3,1,2,1,0,0,0,0,0,1,2,1,3),
                                               (3,3,1,2,2,1,0,1,2,2,1,3,3),
                                               (3,3,3,3,1,2,2,2,1,3,3,3,3));
  GradMask: array[0..12,0..12] of integer =   ((1,1,1,1,1,1,1,1,1,1,1,1,1),
                                               (1,1,1,1,1,1,0,1,1,1,1,1,1),
                                               (1,1,1,1,0,0,0,0,0,1,1,1,1),
                                               (1,1,1,0,0,2,2,2,0,0,1,1,1),
                                               (1,1,0,0,2,2,2,2,2,0,0,1,1),
                                               (1,1,0,2,2,2,2,2,2,2,0,1,1),
                                               (1,0,0,2,2,2,2,2,2,2,0,0,1),
                                               (1,1,0,2,2,2,2,2,2,2,0,1,1),
                                               (1,1,0,0,2,2,2,2,2,0,0,1,1),
                                               (1,1,1,0,0,2,2,2,0,0,1,1,1),
                                               (1,1,1,1,0,0,0,0,0,1,1,1,1),
                                               (1,1,1,1,1,1,0,1,1,1,1,1,1),
                                               (1,1,1,1,1,1,1,1,1,1,1,1,1));

type
  TColors = class(TPersistent)
  private
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
    FDot           : TColor;
    FGradShift     : TGradientShift;
    FGradStyle     : TGradientStyle;
  protected
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
    procedure SetDot           (Value: TColor);
    procedure SetGradShift     (Value: TGradientShift);
    procedure SetGradStyle     (Value: TGradientStyle);
  public
    constructor Create(AOwner: TComponent);
  published
    property BackgroundFrom: TColor read FBackgroundFrom    write SetBackgroundFrom;
    property BackgroundTo  : TColor read FBackgroundTo      write SetBackgroundTo;
    property BorderLine    : TColor read FBorderLine        write SetBorderLine;
    property ClickedFrom   : TColor read FClickedFrom       write SetClickedFrom;
    property ClickedTo     : TColor read FClickedTo         write SetClickedTo;
    property FocusedFrom   : TColor read FFocusedFrom       write SetFocusedFrom;
    property FocusedTo     : TColor read FFocusedTo         write SetFocusedTo;
    property HighlightFrom : TColor read FHighlightFrom     write SetHighlightFrom;
    property HighlightTo   : TColor read FHighlightTo       write SetHighlightTo;
    property HotTrack      : TColor read FHotTrack          write SetHotTrack;
    property Dot           : TColor read FDot               write SetDot;
    property GradientShift : TGradientShift read FGradShift write SetGradShift;
    property GradientStyle : TGradientStyle read FGradStyle write SetGradStyle;
  end;


  TTechRadioButton = class(TTechCustomControl)
  private
    FBgGradient  : TBitmap;
    FCkGradient  : TBitmap;
    FHlGradient  : TBitmap;
    FFcGradient  : TBitmap;
    MaskedGrad   : TBitmap;
    FGroupIndex  : Integer;
    FChecked     : Boolean;
    FColors      : TColors;
    FRadioSize   : integer;
    FGradient    : TTechGradient;
    FTransparent : boolean;
    procedure SetChecked (Value: Boolean);
    procedure SetTransparent(Value: boolean);
  protected
    procedure Paint; override;
  public
    constructor Create (AOwner: TComponent); override;
    destructor Destroy; override;

    procedure CallMouseUp; override;
    procedure CallResized; override;
  published
    property Checked: Boolean read FChecked write SetChecked default false;
    property Color ;
    property Colors    : TColors read FColors write FColors;
    property GroupIndex: Integer read FGroupIndex write FGroupIndex default 0;
    property Transparent : boolean           read FTransparent  write SetTransparent;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech',[TTechRadioButton]);
end;


var
  ControlCounter: Integer = 0;


constructor TColors.Create(AOwner: TComponent);
begin
  inherited Create;
  FBackgroundFrom:= clwhite;
  FBackgroundTo  := clsilver;
  FBorderLine    := clGray;
  FClickedFrom   := clGray;
  FClickedTo     := clwhite;
  FFocusedFrom   := $00FFE7CE;
  FFocusedTo     := $00EF846D;
  FHighlightFrom := $00CEF3FF;
  FHighlightTo   := $000096E7;
  FHotTrack      := $000000FF;
  FDot           := clgreen;
  FGradShift     := 0;
  FGradStyle     := gsLinearH;
  FOwner         := AOwner;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundFrom(Value: TColor);
begin
  if Value <> FBackgroundFrom then begin
    FBackgroundFrom := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundTo(Value: TColor);
begin
  if Value <> FBackgroundTo then begin
    FBackgroundTo := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBorderLine(Value: TColor);
begin
  if Value <> FBorderLine then begin
    FBorderLine := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedFrom(Value: TColor);
begin
  if Value <> FClickedFrom then begin
    FClickedFrom := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedTo(Value: TColor);
begin
  if Value <> FClickedTo then begin
    FClickedTo := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedFrom(Value: TColor);
begin
  if Value <> FFocusedFrom then begin
    FFocusedFrom := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedTo(Value: TColor);
begin
  if Value <> FFocusedTo then begin
    FFocusedTo := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightFrom(Value: TColor);
begin
  if Value <> FHighlightFrom then begin
    FHighlightFrom := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightTo(Value: TColor);
begin
  if Value <> FHighlightTo then begin
    FHighlightTo := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHotTrack(Value: TColor);
begin
  if Value <> FHotTrack then begin
    FHotTrack := Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetDot(Value: TColor);
begin
  if Value <> FDot then begin
    FDot:= Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure  TColors.SetGradShift (Value: TGradientShift);
begin
  if Value <> FGradShift then begin
    FGradShift:= Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure  TColors.SetGradStyle (Value: TGradientStyle);
begin
  if Value <> FGradStyle then begin
    FGradStyle:= Value;
    TTechRadioButton(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
constructor TTechRadioButton.Create (AOwner: TComponent);
begin
  inherited ;

  Height    := 17;
  Width    := 150;
  TabStop  := True;

  FColors:= TColors.Create(Self);
  FRadioSize:= 13;
  FChecked := false;
  FGroupIndex := 0;
  Enabled := true;
  Visible := true;

  FBgGradient := TBitmap.Create; // background gradient
  FCkGradient := TBitmap.Create; // clicked gradient
  FHlGradient := TBitmap.Create; // Highlight gradient
  FFcGradient := TBitmap.Create; // Focused gradient
  MaskedGrad  := TBitmap.Create;

  FGradient       := TTechGradient.Create(self);
  FGradient.Style := FColors.GradientStyle;
  FGradient.Shift := FColors.GradientShift;
  FGradient.Width := FRadiosize;
  FGradient.Height:= FRadiosize;
  Inc(ControlCounter);
end;
//------------------------------------------------------------------------------
procedure TTechRadioButton.CallMouseUp;
var
  cPos: TPoint;
  NewControl: TWinControl;
begin
  GetCursorPos(cPos);
  NewControl := FindVCLWindow(cPos);
  if (NewControl <> nil) and (NewControl = Self) then
    Checked := True;

  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechRadioButton.CallResized;
begin
  FGradient.ColorBegin   := FColors.BackgroundFrom;
  FGradient.ColorEnd     := FColors.BackgroundTo;
  MaskedGrad.Width :=13;
  MaskedGrad.Height:=13;

  FBgGradient.Width :=  FGradient.Width;
  FBgGradient.Height:=  FGradient.Height;
  FBgGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);
  MaskedGrad.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // clicked gradient
  FGradient.ColorBegin   := FColors.ClickedFrom;
  FGradient.ColorEnd     := FColors.ClickedTo;
  FCkGradient.Width := FGradient.Width;
  FCkGradient.Height:= FGradient.Height;
  FCkGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // focused gradient
  FGradient.ColorBegin   := FColors.FocusedFrom;
  FGradient.ColorEnd     := FColors.FocusedTo;
  FFcGradient.Width := FGradient.Width;
  FFcGradient.Height:= FGradient.Height;
  FFcGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  // Highlight gradient
  FGradient.ColorBegin   := FColors.HighlightFrom;
  FGradient.ColorEnd     := FColors.HighlightTo;
  FHlGradient.Width := FGradient.Width;
  FHlGradient.Height:= FGradient.Height;
  FHlGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

  Invalidate;
end;
//------------------------------------------------------------------------------

destructor TTechRadioButton.Destroy;
begin
  Dec(ControlCounter);
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechRadioButton.SetChecked (Value: Boolean);
var
  I: Integer;
  aRadioBtn: TTechRadioButton;
begin
  if FChecked <> Value then begin
    FChecked := Value;
    if Value then begin
      if Parent <> nil then
        for i := 0 to Parent.ControlCount-1 do
          if Parent.Controls[i] is TTechRadioButton then begin
            aRadioBtn := TTechRadioButton(Parent.Controls[i]);
            if (aRadioBtn <> Self) and (aRadioBtn.GroupIndex = GroupIndex) then
              aRadioBtn.SetChecked(False);
          end;
      Click;
      if csDesigning in ComponentState then
        if (GetParentForm(self) <> nil) and (GetParentForm(self).Designer <> nil) then
          GetParentForm(self).Designer.Modified;
    end;
    invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechRadioButton.SetTransparent (Value: boolean);
begin
  FTransparent:= value;
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechRadioButton.Paint;
var
  R, RadioRect: TRect;
  I, J, X, Y  : integer;
  B            : TBitmap;

  procedure DrawGradient(const Bitmap: TBitmap);
var
  I, J: integer;
begin
  for I:=0 to 12 do
    for J:=0 to 12 do begin
      if (GradMask[I,J] in [0,2])  then
        MaskedGrad.Canvas.Pixels[I, J]:=Bitmap.Canvas.Pixels[I, J];
      end;
  //if not transparent then
  BitBlt(Canvas.Handle, radioRect.left, radioRect.top, radioRect.Right, radioRect.bottom,
         MaskedGrad.Canvas.Handle, 0, 0, SRCCOPY);
end;

begin
  with Canvas do begin
    R:= GetClientRect;
    if FTransparent then
      CopyParentImage(Self, Canvas)
    else begin
      // zemini temizle
      Brush.Color := Self.Color;
      FillRect(R);
    end;

    // Designtime çerçevesini çiz.
    if csDesigning in ComponentState then
      DrawFocusRect(Rect(R.Left+18, R.Top+1, R.Right-1, R.Bottom-1));

    RadioRect:= Rect(ClientRect.Left+2, ClientRect.Top+2, ClientRect.Left+13, ClientRect.Top+13);

    if (dsfocused in DrawState) then  begin
      Brush.Style:=bssolid;
      DrawFocusRect(Rect(R.Left+18, R.Top+1, R.Right-1, R.Bottom-1));
    end;

    b:=tbitmap.Create;
    b.Width:=13;
    b.Height:=13;
    b.Canvas.CopyRect(rect(0,0,13,13),Canvas,rect(0,0,13,13));

    MaskedGrad.Canvas.StretchDraw(Rect(0,0,13,13),b);

    if (dsHighlight in DrawState) and not (dsClicked in DrawState) then
      DrawGradient(FHlGradient)
    else if (dsfocused in DrawState) and not (dsClicked in DrawState) then
      DrawGradient(FFcGradient)
    else if  not (dsClicked in DrawState) then
      DrawGradient(FBgGradient)
    else
      DrawGradient(FCkGradient);

    R:= Rect(R.Left+FRadioSize+9, R.Top, R.Right, R.Bottom);

    Font.Assign(Self.Font);
    canvas.Brush.Style:=bsclear;
    PlaceText(Self, Canvas, Caption, Font, Enabled, True, taLeftJustify, True,R );

    X:= RadioRect.Left;
    Y:= RadioRect.Top;

    for I:=0 to 12 do
      for J:=0 to 12 do begin
        if RadioMatrix[I,J]=1 then
          Pen.Color:= ColorLighter(FColors.BorderLine,40)
        else if RadioMatrix[I,J]=2 then
          Pen.Color:= FColors.BorderLine;

        if (not(RadioMatrix[I,J] in [0,4,5,3]) ) then
          Canvas.Pixels[X+J, Y+I]:= pen.color;
      end;


    for I:=0 to 12 do
      for J:=0 to 12 do
        if (RadioMatrix[I,J] in [4,5]) and Checked then
          if RadioMatrix[I,J]=4 then
            Canvas.Pixels[X+J, Y+I]:= Colors.Dot
          else
            Canvas.Pixels[X+J, Y+I]:= ColorLighter(FColors.Dot,20);
  end;
end;


end.
