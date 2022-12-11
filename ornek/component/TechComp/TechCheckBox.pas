unit TechCheckBox;

interface

uses
  Windows, Messages, Classes, Controls, Graphics, forms, TechUtilitys, Dialogs,
  TechGradient, TechCustomControl;

const
  CheckMatrix: array[0..6,0..6] of integer =((0,0,0,0,0,0,1),
                                             (0,0,0,0,0,1,1),
                                             (1,0,0,0,1,1,1),
                                             (1,1,0,1,1,1,0),
                                             (1,1,1,1,1,0,0),
                                             (0,1,1,1,0,0,0),
                                             (0,0,1,0,0,0,0));

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
    FBounds        : TColor;
    FCheckSymbol   : TColor;
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
    procedure SetBounds        (Value: TColor);
    procedure SetCheckSymbol   (Value: TColor);
    procedure SetGradShift (Value: TGradientShift);
    procedure SetGradStyle (Value: TGradientStyle);
  public
    constructor Create(AOwner: TComponent);
  published
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
    property Bounds        : TColor read FBounds         write SetBounds;
    property CheckSymbol   : TColor read FCheckSymbol    write SetCheckSymbol;
    property GradientShift : TGradientShift read FGradShift write SetGradShift;
    property GradientStyle : TGradientStyle read FGradStyle write SetGradStyle;
  end;


  TTechCheckBox = class(TTechCustomControl)
  private
    { Private declarations }
    FBgGradient   : TBitmap;
    FBoundLines   : TBoundLines;
    FChecked      : Boolean;
    FCheckSize    : Byte;
    FCkGradient   : TBitmap;
    FHlGradient   : TBitmap;
    FHotTrack     : Boolean;
    FFcGradient   : TBitmap;
    FSpacing      : Byte;
    FColors       : TColors;
    FGradient     : TTechGradient;
    FTransparent : boolean;
  protected
    procedure Click; override;
    procedure SetBoundLines   (Value: TBoundLines);
    procedure SetChecked      (Value: Boolean);
    procedure SetHotTrack     (Value: Boolean);
    procedure SetTransparent  (Value: boolean);
    procedure SetSpacing      (Value: Byte);
    procedure DrawCheckSymbol (const R: TRect);
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure Paint; override;
    procedure CallResized;override;
  published
    property Colors       : TColors     read FColors        write FColors;
    property BoundLines   : TBoundLines read FBoundLines    write SetBoundLines default [];
    property Checked      : Boolean     read FChecked       write SetChecked default False;
    property HotTrack     : Boolean     read FHotTrack      write SetHotTrack default False;
    property Spacing      : Byte        read FSpacing       write SetSpacing default 3;
    property Transparent   : boolean    read FTransparent   write SetTransparent;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechCheckBox]);
end;

constructor TColors.Create(AOwner: TComponent);
begin
  inherited Create;
  FBackgroundFrom:= clwhite;
  FBackgroundTo  := clsilver;
  FBorderLine    := clgray;
  FClickedFrom   := clgray;
  FClickedTo     := clwhite;
  FFocusedFrom   := $00FFE7CE;
  FFocusedTo     := $00EF846D;
  FHighlightFrom := $00CEF3FF;
  FHighlightTo   := $000096E7;
  FHotTrack      := $000000FF;
  FBounds        := clgray;
  FCheckSymbol   := clnavy;
  FGradShift     := 0;
  FGradStyle     := gsLinearH;
  FOwner         := AOwner;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundFrom(Value: TColor);
begin
  if Value <> FBackgroundFrom then begin
    FBackgroundFrom := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBackgroundTo(Value: TColor);
begin
  if Value <> FBackgroundTo then begin
    FBackgroundTo := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBorderLine(Value: TColor);
begin
  if Value <> FBorderLine then begin
    FBorderLine := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedFrom(Value: TColor);
begin
  if Value <> FClickedFrom then begin
    FClickedFrom := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetClickedTo(Value: TColor);
begin
  if Value <> FClickedTo then begin
    FClickedTo := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedFrom(Value: TColor);
begin
  if Value <> FFocusedFrom then begin
    FFocusedFrom := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetFocusedTo(Value: TColor);
begin
  if Value <> FFocusedTo then begin
    FFocusedTo := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightFrom(Value: TColor);
begin
  if Value <> FHighlightFrom then begin
    FHighlightFrom := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHighlightTo(Value: TColor);
begin
  if Value <> FHighlightTo then begin
    FHighlightTo := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetHotTrack(Value: TColor);
begin
  if Value <> FHotTrack then begin
    FHotTrack := Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure TColors.SetBounds(Value: TColor);
begin
  if Value <> FBounds then begin
    FBounds:= Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;

procedure TColors.SetCheckSymbol(Value: TColor);
begin
  if Value <> FCheckSymbol then begin
    FCheckSymbol:= Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure  TColors.SetGradShift (Value: TGradientShift);
begin
  if Value <> FGradShift then begin
    FGradShift:= Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
procedure  TColors.SetGradStyle (Value: TGradientStyle);
begin
  if Value <> FGradStyle then begin
    FGradStyle:= Value;
    TTechCheckBox(FOwner).CallResized;
  end;
end;
//------------------------------------------------------------------------------
constructor TTechCheckBox.Create(AOwner: TComponent);

begin
  inherited;

  Height := 17;
  Width := 150;
  TabStop:= True;

  FColors     := TColors.Create(Self);
  FBoundLines:= [];
  FChecked   := False;
  FCheckSize := 13;
  FHotTrack  := False;
  FSpacing   := 3;

  FBgGradient := TBitmap.Create; // background gradient
  FCkGradient := TBitmap.Create; // clicked gradient
  FHlGradient := TBitmap.Create; // Highlight gradient
  FFcGradient := TBitmap.Create; // Focused gradient

  FGradient       := TTechGradient.Create(self);
  FGradient.Style := FColors.GradientStyle;
  FGradient.Shift := FColors.GradientShift;
  FGradient.Width := FCheckSize  ;
  FGradient.Height:= FCheckSize;
end;
//------------------------------------------------------------------------------
destructor TTechCheckBox.Destroy;
begin
  FBgGradient.Free;
  FCkGradient.Free;
  FHlGradient.Free;
  FFcGradient.Free;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.Click;
begin
  FChecked := not FChecked;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.CallResized;
begin
  // background gradient
  FGradient.ColorBegin   := FColors.BackgroundFrom;
  FGradient.ColorEnd     := FColors.BackgroundTo;
  FBgGradient.Width :=  FGradient.Width;
  FBgGradient.Height:=  FGradient.Height;
  FBgGradient.Canvas.StretchDraw(Rect(0,0,FGradient.Width,FGradient.Height),FGradient.Pattern);

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
procedure TTechCheckBox.SetBoundLines(Value: TBoundLines);
begin
  if Value <> FBoundLines then
  begin
    FBoundLines := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.SetChecked(Value: Boolean);
begin
  if Value <> FChecked then
  begin
    FChecked := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.SetHotTrack(Value: Boolean);
begin
  if Value <> FHotTrack then
  begin
    FHotTrack := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.SetSpacing(Value: Byte);
begin
  if Value <> FSpacing then
  begin
    FSpacing := Value;
    Invalidate;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.SetTransparent (Value: boolean);
begin
  FTransparent:= value;
  invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.Paint;
var
  R: TRect;
begin
  with Canvas do begin
    R := GetClientRect;
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

    // Kontrol sýnýrlarýný çiz (eðer boþ küme deðilse)
    if FBoundLines <> [] then
    begin
      if (FHotTrack) and (dsHighlight in DrawState) then
        DrawBoundLines(Self.Canvas, FBoundLines, FColors.HotTrack, R)
      else
        DrawBoundLines(Self.Canvas, FBoundLines, FColors.Bounds, R);
    end;

    // giriþ odaðý çerçevesini çiz.
    if dsFocused in DrawState then
    begin
      Brush.Style := bsSolid;
      DrawFocusRect(Rect(R.Left+18, R.Top+1, R.Right-1, R.Bottom-1));
    end;

    // check sembolünü çiz.
    DrawCheckSymbol(R);

    // text'i yazdýr
    Brush.Style:= bsclear;
    Font.Assign(Self.Font);


    if (FHotTrack) and (dsHighlight in DrawState) then
      Font.Color := FColors.HotTrack;
    Inc(R.Left, FCheckSize + 6 + FSpacing);
    PlaceText(Self, Canvas, Caption, Font, Enabled, True, taLeftJustify, True, R);
  end;
end;
//------------------------------------------------------------------------------
procedure TTechCheckBox.DrawCheckSymbol(const R: TRect);
var
  X, Y, I, J: integer;

procedure DrawGradient(const Bitmap: TBitmap);
begin
  BitBlt(Canvas.Handle, R.Left + 3, (ClientHeight - FCheckSize) div 2 + 1,
        FCheckSize - 2, FCheckSize - 2, Bitmap.Canvas.Handle, 0, 0, SRCCOPY);
end;

begin
  with Canvas do begin

    Pen.Color := FColors.BorderLine;
    Rectangle(Bounds(R.Left + 2, (ClientHeight - FCheckSize) div 2,
      FCheckSize, FCheckSize));

    if (dsHighlight in DrawState) and not (dsClicked in DrawState) then
      DrawGradient(FHlGradient)
    else if (dsfocused in DrawState) and not (dsClicked in DrawState) then
      DrawGradient(FFcGradient)
    else if  not (dsClicked in DrawState) then
      DrawGradient(FBgGradient)
    else
      DrawGradient(FCkGradient);

    if ((dsHighlight in DrawState) or (dsFocused in DrawState)) and
       not (dsClicked in DrawState) then
      BitBlt(Handle, R.Left + 5 , (ClientHeight - FCheckSize) div 2 + 3,
             FCheckSize - 6 , FCheckSize - 6 , FBgGradient.Canvas.Handle, 0, 0, SRCCOPY);

    if Checked then begin
      X:= FCheckSize div 2 - 1;
      Y:= (ClientHeight - FCheckSize) div 2 + 3;
      for I:=0 to 6 do
        for J:=0 to 6 do begin
          if (CheckMatrix[I,J] =1) and Checked then
            Canvas.Pixels[X+J, Y+I]:=Colors.CheckSymbol;
        end;
    end;
  end;
end;

procedure TTechCheckBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
        if Key = VK_SPACE then
        begin
                Click;
                Repaint;
        end;
        inherited;
end;

end.     

