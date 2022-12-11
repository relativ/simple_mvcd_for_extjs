unit TechGradient;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, Menus;

type

  PRGBTripleArray = ^TRGBTripleArray;
  TRGBTripleArray = array[0..1024] of TRGBTriple;

  TGradientColors = array[0..255] of TRGBTriple;

  TGradientShift = -100..100;
  TGradientRotation = -100..100;

  TGradientStyle = (gsCustom, gsRadialC, gsRadialT, gsRadialB, gsRadialL,
                    gsRadialR, gsRadialTL, gsRadialTR, gsRadialBL, gsRadialBR, gsLinearH,
                    gsLinearV, gsReflectedH, gsReflectedV, gsDiagonalLF, gsDiagonalLB,
                    gsDiagonalRF, gsDiagonalRB, gsArrowL, gsArrowR, gsArrowU, gsArrowD,
                    gsDiamond, gsButterfly);

  TCustomGradientEvent = procedure(Sender: TObject; const Colors: TGradientColors;
                                   Pattern: TBitmap) of object;


  TTechGradient = class(TGraphicControl)
  private
    fColorBegin: TColor;
    fColorEnd: TColor;
    fStyle: TGradientStyle;
    fShift: TGradientShift;
    fRotation: TGradientRotation;
    fReverse: Boolean;
    fPattern: TBitmap;
    fOnCustom: TCustomGradientEvent;
    UpdateCount: Integer;
    UpdatePended: Boolean;
    Dirty: Boolean;
    procedure SetColorBegin(Value: TColor);
    procedure SetColorEnd(Value: TColor);
    procedure SetStyle(Value: TGradientStyle);
    procedure SetShift(Value: TGradientShift);
    procedure SetRotation(Value: TGradientRotation);
    procedure SetReverse(Value: Boolean);

  protected
    procedure Paint; override;
    procedure Loaded; override;
    procedure UpdatePattern; virtual;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure InvalidatePattern;
    procedure BeginUpdate;
    procedure EndUpdate;

    property Pattern: TBitmap read fPattern;
    property ColorBegin: TColor read fColorBegin write SetColorBegin default clWhite;
    property ColorEnd: TColor read fColorEnd write SetColorEnd default clBtnFace;
    property Reverse: Boolean read fReverse write SetReverse default False;
    property Rotation: TGradientRotation read fRotation write SetRotation default 0;
    property Shift: TGradientShift read fShift write SetShift default 0;
    property Style: TGradientStyle read fStyle write SetStyle default gsRadialC;
  end;

implementation

procedure RadialCentral(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 362;
  Pattern.Height := 362;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + (180 - Y) * (180 - Y)))];
    for X := 181 to 361 do
      Row[X] := Colors[Round(Sqrt((X - 181) * (X - 181) + (180 - Y) * (180 - Y)))];
  end;
  for Y := 181 to 361 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + (180 - Y) * (180 - Y)))];
    for X := 181 to 361 do
      Row[X] := Colors[Round(Sqrt((X - 181) * (X - 181) + (180 - Y) * (180 - Y)))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialTop(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 362;
  Pattern.Height := 181;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + Y * Y))];
    for X := 181 to 361 do
      Row[X] := Colors[Round(Sqrt((X - 181) * (X - 181) + Y * Y))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialBottom(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 362;
  Pattern.Height := 181;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + (180 - Y) * (180 - Y)))];
    for X := 181 to 361 do
      Row[X] := Colors[Round(Sqrt((X - 181) * (X - 181) + (180 - Y) * (180 - Y)))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialLeft(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 181;
  Pattern.Height := 362;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt(X * X + (180 - Y) * (180 - Y)))];
  end;
  for Y := 181 to 361 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt(X * X + (Y - 181) * (Y - 181)))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialRight(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 181;
  Pattern.Height := 362;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + (180 - Y) * (180 - Y)))];
  end;
  for Y := 181 to 361 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + (Y - 181) * (Y - 181)))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialTopLeft(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 181;
  Pattern.Height := 181;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt(X * X + Y * Y))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialTopRight(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 181;
  Pattern.Height := 181;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + Y * Y))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialBottomLeft(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 181;
  Pattern.Height := 181;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt(X * X + (180 - Y) * (180 - Y)))];
  end;
end;
//------------------------------------------------------------------------------
procedure RadialBottomRight(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 181;
  Pattern.Height := 181;
  for Y := 0 to 180 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 180 do
      Row[X] := Colors[Round(Sqrt((180 - X) * (180 - X) + (180 - Y) * (180 - Y)))];
  end;
end;
//------------------------------------------------------------------------------
procedure LinearHorizontal(const Colors: TGradientColors; Pattern: TBitmap);
var
  Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 1;
  Pattern.Height := 256;
  for Y := 0 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    Row[0] := Colors[Y];
  end;
end;
//------------------------------------------------------------------------------
procedure LinearVertical(const Colors: TGradientColors; Pattern: TBitmap);
var
  X: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 1;
  Row := PRGBTripleArray(Pattern.ScanLine[0]);
  for X := 0 to 255 do
    Row[X] := Colors[X];
end;
//------------------------------------------------------------------------------
procedure ReflectedHorizontal(const Colors: TGradientColors; Pattern: TBitmap);
var
  Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 1;
  Pattern.Height := 512;
  for Y := 0 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    Row[0] := Colors[255 - Y];
    Row := PRGBTripleArray(Pattern.ScanLine[511 - Y]);
    Row[0] := Colors[255 - Y];
  end;
end;
//------------------------------------------------------------------------------
procedure ReflectedVertical(const Colors: TGradientColors; Pattern: TBitmap);
var
  X: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 512;
  Pattern.Height := 1;
  Row := PRGBTripleArray(Pattern.ScanLine[0]);
  for X := 0 to 255 do
  begin
    Row[X] := Colors[255 - X];
    Row[511 - X] := Colors[255 - X];
  end;
end;
//------------------------------------------------------------------------------
procedure DiagonalLinearForward(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 128;
  Pattern.Height := 129;
  for Y := 0 to 128 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[127 + (Y - X)];
  end;
end;
//------------------------------------------------------------------------------
procedure DiagonalLinearBackward(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 128;
  Pattern.Height := 129;
  for Y := 0 to 128 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[X + Y];
  end;
end;
//------------------------------------------------------------------------------
procedure DiagonalReflectedForward(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 256;
  for Y := 0 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 255 do
      if X > Y then
        Row[X] := Colors[X - Y]
      else
        Row[X] := Colors[Y - X];
  end;
end;
//------------------------------------------------------------------------------
procedure DiagonalReflectedBackward(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 256;
  for Y := 0 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 255 do
      if X + Y < 255 then
        Row[X] := Colors[255 - (X + Y)]
      else
        Row[X] := Colors[(Y + X) - 255];
  end;
end;
//------------------------------------------------------------------------------
procedure ArrowLeft(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 129;
  Pattern.Height := 256;
  for Y := 0 to 127 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 128 do
      Row[X] := Colors[255 - (X + Y)];
  end;
  for Y := 128 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 128 do
      Row[X] := Colors[Y - X];
  end;
end;
//------------------------------------------------------------------------------
procedure ArrowRight(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 129;
  Pattern.Height := 256;
  for Y := 0 to 127 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 128 do
      Row[X] := Colors[(X - Y) + 127];
  end;
  for Y := 128 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 128 do
      Row[X] := Colors[(X + Y) - 128];
  end;
end;
//------------------------------------------------------------------------------
procedure ArrowUp(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 129;
  for Y := 0 to 128 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[255 - (X + Y)];
    for X := 128 to 255 do
      Row[X] := Colors[X - Y];
  end;
end;
//------------------------------------------------------------------------------
procedure ArrowDown(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 129;
  for Y := 0 to 128 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[127 + (Y - X)];
    for X := 128 to 255 do
      Row[X] := Colors[(X + Y) - 128];
  end;
end;
//------------------------------------------------------------------------------
procedure Diamond(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 256;
  for Y := 0 to 127 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[255 - (X + Y)];
    for X := 128 to 255 do
      Row[X] := Colors[X - Y];
  end;
  for Y := 128 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[Y - X];
    for X := 128 to 255 do
      Row[X] := Colors[(X + Y) - 255];
  end;
end;
//------------------------------------------------------------------------------
procedure Butterfly(const Colors: TGradientColors; Pattern: TBitmap);
var
  X, Y: Integer;
  Row: PRGBTripleArray;
begin
  Pattern.Width := 256;
  Pattern.Height := 256;
  for Y := 0 to 127 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[(X - Y) + 128];
    for X := 128 to 255 do
      Row[X] := Colors[383 - (X + Y)];
  end;
  for Y := 128 to 255 do
  begin
    Row := PRGBTripleArray(Pattern.ScanLine[Y]);
    for X := 0 to 127 do
      Row[X] := Colors[(X + Y) - 128];
    for X := 128 to 255 do
      Row[X] := Colors[128 + (Y - X)];
  end;
end;
//------------------------------------------------------------------------------
//  TTechGradient
//------------------------------------------------------------------------------
type
  TPatternBuilder = procedure(const Colors: TGradientColors; Pattern: TBitmap);

const
  PatternBuilder: array[TGradientStyle] of TPatternBuilder = (nil,
    RadialCentral, RadialTop, RadialBottom, RadialLeft, RadialRight,
    RadialTopLeft, RadialTopRight, RadialBottomLeft, RadialBottomRight,
    LinearHorizontal, LinearVertical, ReflectedHorizontal, ReflectedVertical,
    DiagonalLinearForward, DiagonalLinearBackward, DiagonalReflectedForward,
    DiagonalReflectedBackward, ArrowLeft, ArrowRight, ArrowUp, ArrowDown,
    Diamond, Butterfly);



constructor TTechGradient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csOpaque];
  Width := 10;
  Height := 10;
  fColorBegin := clWhite;
  fColorEnd := clBtnFace;
  fStyle := gsRadialC;
  fShift := 0;
  fRotation := 0;
  fReverse := False;
  fPattern := TBitmap.Create;
  fPattern.PixelFormat := pf24bit;
  UpdatePattern;
end;
//------------------------------------------------------------------------------
destructor TTechGradient.Destroy;
begin
  fPattern.Free;
  inherited Destroy;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.Loaded;
begin
  inherited Loaded;
  UpdatePattern;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.Paint;
begin
  if not Dirty then Canvas.StretchDraw(ClientRect, Pattern);
end;
//------------------------------------------------------------------------------
procedure TTechGradient.BeginUpdate;
begin
  Inc(UpdateCount);
end;
//------------------------------------------------------------------------------
procedure TTechGradient.EndUpdate;
begin
  Dec(UpdateCount);
  if (UpdateCount = 0) and UpdatePended then
    UpdatePattern;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.InvalidatePattern;
begin
  UpdatePattern;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.SetColorBegin(Value: TColor);
begin
  if fColorBegin <> Value then
  begin
    fColorBegin := Value;
    UpdatePattern;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.SetColorEnd(Value: TColor);
begin
  if fColorEnd <> Value then
  begin
    fColorEnd := Value;
    UpdatePattern;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.SetStyle(Value: TGradientStyle);
begin
  if fStyle <> Value then
  begin
    fStyle := Value;
    UpdatePattern;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.SetShift(Value: TGradientShift);
begin
  if Value < Low(TGradientShift) then
    Value := Low(TGradientShift)
  else if Value > High(TGradientShift) then
    Value := High(TGradientShift);

  if fShift <> Value then
  begin
    fShift := Value;
    UpdatePattern;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.SetRotation(Value: TGradientRotation);
begin
  if Value < Low(TGradientRotation) then
    Value := Low(TGradientRotation)
  else if Value > High(TGradientRotation) then
    Value := High(TGradientRotation);

  if fRotation <> Value then
  begin
    fRotation := Value;
    UpdatePattern;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.SetReverse(Value: Boolean);
begin
  if fReverse <> Value then
  begin
    fReverse := Value;
    UpdatePattern;
  end;
end;
//------------------------------------------------------------------------------
procedure TTechGradient.UpdatePattern;
var
  Colors: TGradientColors;
  dRed, dGreen, dBlue: Integer;
  RGBColor1, RGBColor2: TColor;
  RGB1, RGB2: TRGBTriple;
  UpdatedRect: TRect;
  Index: Integer;
  M: Integer;
begin
  UpdatePended := True;

  if (csLoading in ComponentState) or (UpdateCount <> 0) then Exit;

  UpdatePended := False;

  if Reverse then
  begin
    RGBColor1 := ColorToRGB(ColorEnd);
    RGBColor2 := ColorToRGB(ColorBegin);
  end
  else
  begin
    RGBColor1 := ColorToRGB(ColorBegin);
    RGBColor2 := ColorToRGB(ColorEnd);
  end;

  RGB1.rgbtRed := GetRValue(RGBColor1);
  RGB1.rgbtGreen := GetGValue(RGBColor1);
  RGB1.rgbtBlue := GetBValue(RGBColor1);

  RGB2.rgbtRed := GetRValue(RGBColor2);
  RGB2.rgbtGreen := GetGValue(RGBColor2);
  RGB2.rgbtBlue := GetBValue(RGBColor2);

  if Shift > 0 then
  begin
    Inc(RGB1.rgbtRed, MulDiv(RGB2.rgbtRed - RGB1.rgbtRed, Shift, 100));
    Inc(RGB1.rgbtGreen, MulDiv(RGB2.rgbtGreen - RGB1.rgbtGreen, Shift, 100));
    Inc(RGB1.rgbtBlue, MulDiv(RGB2.rgbtBlue - RGB1.rgbtBlue, Shift, 100));
  end
  else if Shift < 0 then
  begin
    Inc(RGB2.rgbtRed, MulDiv(RGB2.rgbtRed - RGB1.rgbtRed, Shift, 100));
    Inc(RGB2.rgbtGreen, MulDiv(RGB2.rgbtGreen - RGB1.rgbtGreen, Shift, 100));
    Inc(RGB2.rgbtBlue, MulDiv(RGB2.rgbtBlue - RGB1.rgbtBlue, Shift, 100));
  end;

  dRed := RGB2.rgbtRed - RGB1.rgbtRed;
  dGreen := RGB2.rgbtGreen - RGB1.rgbtGreen;
  dBlue := RGB2.rgbtBlue - RGB1.rgbtBlue;

  M := MulDiv(255, Rotation, 100);
  if M = 0 then
    for Index := 0 to 255 do
      with Colors[Index] do
      begin
        rgbtRed := RGB1.rgbtRed + (Index * dRed) div 255;
        rgbtGreen := RGB1.rgbtGreen + (Index * dGreen) div 255;
        rgbtBlue := RGB1.rgbtBlue + (Index * dBlue) div 255;
      end
  else if M > 0 then
  begin
    M := 255 - M;
    for Index := 0 to M - 1 do
      with Colors[Index] do
      begin
        rgbtRed := RGB1.rgbtRed + (Index * dRed) div M;
        rgbtGreen := RGB1.rgbtGreen + (Index * dGreen) div M;
        rgbtBlue := RGB1.rgbtBlue + (Index * dBlue) div M;
      end;
    for Index := M to 255 do
      with Colors[Index] do
      begin
        rgbtRed := RGB1.rgbtRed + ((255 - Index) * dRed) div (255 - M);
        rgbtGreen := RGB1.rgbtGreen + ((255 - Index) * dGreen) div (255 - M);
        rgbtBlue := RGB1.rgbtBlue + ((255 - Index) * dBlue) div (255 - M);
      end;
  end
  else if M < 0 then
  begin
    M := -M;
    for Index := 0 to M do
      with Colors[Index] do
      begin
        rgbtRed := RGB2.rgbtRed - (Index * dRed) div M;
        rgbtGreen := RGB2.rgbtGreen - (Index * dGreen) div M;
        rgbtBlue := RGB2.rgbtBlue - (Index * dBlue) div M;
      end;
    for Index := M + 1 to 255 do
      with Colors[Index] do
      begin
        rgbtRed := RGB2.rgbtRed - ((255 - Index) * dRed) div (255 - M);
        rgbtGreen := RGB2.rgbtGreen - ((255 - Index) * dGreen) div (255 - M);
        rgbtBlue := RGB2.rgbtBlue - ((255 - Index) * dBlue) div (255 - M);
      end;
  end;

  Dirty := True;
  try
    if @PatternBuilder[Style] <> nil then
      PatternBuilder[Style](Colors, Pattern)
    else if Assigned(fOnCustom) then
      fOnCustom(Self, Colors, Pattern)
    else
    begin
      Pattern.Width := 2;
      Pattern.Height := 2;
      Pattern.Canvas.Pixels[0, 0] := RGBColor1;
      Pattern.Canvas.Pixels[0, 1] := RGBColor2;
      Pattern.Canvas.Pixels[1, 0] := RGBColor2;
      Pattern.Canvas.Pixels[1, 1] := RGBColor1;
    end;
  finally
    Dirty := False;
  end;

  if (Parent <> nil) and Parent.HandleAllocated then
  begin
    UpdatedRect := BoundsRect;
    InvalidateRect(Parent.Handle, @UpdatedRect, False);
    if csDesigning in ComponentState then Parent.Update;
  end
  else
    Invalidate;
end;


end.
