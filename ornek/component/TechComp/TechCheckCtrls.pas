unit TechCheckCtrls;

interface

uses
  Windows, Messages, Classes, Controls, Graphics, TechCore;

resourcestring
  SVersion = '1.00 /by Serkan';

type
{ TTechCheckStyle }

  TTechCheckStyle = (csDefault, csExtended);

{ TTechCustomCheckControl }

  TTechCustomCheckControl = class(TTechCustomControl)
  private
    { Private declarations }
    FBgGradient: TBitmap;
    FBoundColor: TColor;
    TechColor_BgFrom      : TColor;
    TechColor_BgTo        : TColor;
    TechColor_BorderEdges : TColor;
    TechColor_BorderLine  : TColor;
    TechColor_CkFrom      : TColor;
    TechColor_CkTo        : TColor;
    TechColor_FcFrom      : TColor;
    TechColor_FcTo        : TColor;
    TechColor_HlFrom      : TColor;
    TechColor_HlTo        : TColor;
    TechColor_HotTrack    : TColor;
    FBoundLines: TTechBoundLines;
    FChecked: Boolean;
    FCheckSize: Byte;
    FCheckStyle: TTechCheckStyle;
    FCkGradient: TBitmap;
    FHlGradient: TBitmap;
    FHotTrack: Boolean;
    FHotTrackColor: TColor;
    FShowFocusRect: Boolean;
    FSpacing: Byte;
  protected
    { Protected declarations }
    function GetVersion: string; override;
    procedure KeyPress(var Key: Char); override;
    procedure Click; override;
    procedure SetBoundColor(Value: TColor); virtual;
    procedure SetBoundLines(Value: TTechBoundLines); virtual;
    procedure SetChecked(Value: Boolean); virtual;
    procedure SetCheckStyle(Value: TTechCheckStyle); virtual;
    procedure SetHotTrack(Value: Boolean); virtual;
    procedure SetHotTrackColor(Value: TColor); virtual;
    procedure SetShowFocusRect(Value: Boolean); virtual;
    procedure SetSpacing(Value: Byte); virtual;
    procedure DrawCheckSymbol(const R: TRect); virtual; abstract;
    procedure SetTechColorBgFrom(Value: TColor); virtual;
    procedure SetTechColorBgTo(Value: TColor); virtual;
    procedure SetTechColorBorderEdges(Value: TColor); virtual;
    procedure SetTechColorBorderLine(Value: TColor); virtual;
    procedure SetTechColorCkFrom(Value: TColor); virtual;
    procedure SetTechColorCkTo(Value: TColor); virtual;
    procedure SetTechColorFcFrom(Value: TColor); virtual;
    procedure SetTechColorFcTo(Value: TColor); virtual;
    procedure SetTechColorHlFrom(Value: TColor); virtual;
    procedure SetTechColorHlTo(Value: TColor); virtual;
    procedure SetTechColorHotTrack(Value: TColor); virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Paint; override;
    procedure HookResized; override;
  published
    { Published declarations }
    property BoundColor: TColor read FBoundColor write SetBoundColor default clGray;

    property TechColorBgFrom: TColor read TechColor_BgFrom write SetTechColorBgFrom;
    property TechColorBgTo: TColor read TechColor_BgTo write SetTechColorBgTo;
    property TechColorBorderEdges: TColor read TechColor_BorderEdges write SetTechColorBorderEdges;
    property TechColorBorderLine: TColor read TechColor_BorderLine write SetTechColorBorderLine;
    property TechColorCkFrom: TColor read TechColor_CkFrom write SetTechColorCkFrom;
    property TechColorCkTo: TColor read TechColor_CkTo write SetTechColorCkTo;
    property TechColorFcFrom: TColor read TechColor_FcFrom write SetTechColorFcFrom;
    property TechColorFcTo: TColor read TechColor_FcTo write SetTechColorFcTo;
    property TechColorHlFrom: TColor read TechColor_HlFrom write SetTechColorHlFrom;
    property TechColorHlTo: TColor read TechColor_HlTo write SetTechColorHlTo;
    property TechColorHotTrack: TColor read TechColor_HotTrack write SetTechColorHotTrack;

    property BoundLines: TTechBoundLines read FBoundLines write SetBoundLines default [];
    property Caption;
    property Checked: Boolean read FChecked write SetChecked default False;
    property CheckStyle: TTechCheckStyle read FCheckStyle write SetCheckStyle default csDefault;
    property HotTrack: Boolean read FHotTrack write SetHotTrack default False;
    property HotTrackColor: TColor read FHotTrackColor write SetHotTrackColor default clBlack;
    property ShowFocusRect: Boolean read FShowFocusRect write SetShowFocusRect default False;
    property Spacing: Byte read FSpacing write SetSpacing default 3;
    property TabOrder;
    property TabStop default True;
  end;

{ TTechCheckbox }

  TTechCheckbox = class(TTechCustomCheckControl)
  private

  protected
    { Protected declarations }
    procedure DrawCheckSymbol(const R: TRect); override;
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechCheckbox]);
end;

{ TTechCustomCheckControl }

procedure TTechCustomCheckControl.SetTechColorBgFrom(Value: TColor);
begin
        TechColor_BgFrom := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorBgTo(Value: TColor);
begin
        TechColor_BgTo := Value;
        ReCreateWnd;
end;
procedure TTechCustomCheckControl.SetTechColorBorderEdges(Value: TColor);
begin
        TechColor_BorderEdges := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorBorderLine(Value: TColor);
begin
        TechColor_BorderLine := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorCkFrom(Value: TColor);
begin
        TechColor_CkFrom := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorCkTo(Value: TColor);
begin
        TechColor_CkTo := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorFcFrom(Value: TColor);
begin
        TechColor_FcFrom := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorFcTo(Value: TColor);
begin
        TechColor_FcTo := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorHlFrom(Value: TColor);
begin
        TechColor_HlFrom := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorHlTo(Value: TColor);
begin
        TechColor_HlTo := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.SetTechColorHotTrack(Value: TColor);
begin
        TechColor_HotTrack := Value;
        ReCreateWnd;
end;

procedure TTechCustomCheckControl.KeyPress(var Key: Char);
begin
        if Key = #32 then
        begin
                Click;
                Refresh;
        end;
end;

constructor TTechCustomCheckControl.Create(AOwner: TComponent);
begin
  inherited;

  // set default properties.
  Height := 17;
  Width := 161;

  // set custom properties.
  FBoundColor := clGray;
  TechColor_BgFrom      := $00FFFFFF; // background from
  TechColor_BgTo        := $00E7EBEF; // background to
  TechColor_BorderEdges := clSilver;  // border edges
  TechColor_BorderLine  := clGray;    // border line
  TechColor_CkFrom      := $00C6CFD6; // clicked from
  TechColor_CkTo        := $00EBF3F7; // clicked to
  TechColor_FcFrom      := $00FFE7CE; // focused from
  TechColor_FcTo        := $00EF846D; // focused to
  TechColor_HlFrom      := $00CEF3FF; // highlight from
  TechColor_HlTo        := $000096E7; // highlight to
  TechColor_HotTrack    := $000000FF; // hot-track
  FBoundLines := [];
  FChecked := False;
  FCheckSize := 13;
  FCheckStyle := csDefault;
  FHotTrack := False;
  FHotTrackColor := clBlack;
  FShowFocusRect := False;
  FSpacing := 3;

  // create ...
  FBgGradient := TBitmap.Create; // background gradient
  FCkGradient := TBitmap.Create; // clicked gradient
  FHlGradient := TBitmap.Create; // Highlight gradient
end;

destructor TTechCustomCheckControl.Destroy;
begin
  FBgGradient.Free;
  FCkGradient.Free;
  FHlGradient.Free;
  inherited;
end;

function TTechCustomCheckControl.GetVersion: string;
begin
  Result := SVersion;
end;

procedure TTechCustomCheckControl.Click;
begin
  FChecked := not FChecked;
  inherited;
end;

procedure TTechCustomCheckControl.HookResized;
begin

  // background.
  TechCreateGradientRect(FCheckSize - 2, FCheckSize - 2, TechColor_BgFrom,
    TechColor_BgTo, 16, gsTop, False, FBgGradient);

  // clicked.
  TechCreateGradientRect(FCheckSize - 2, FCheckSize - 2, TechColor_CkFrom,
    TechColor_CkTo, 16, gsTop, True, FCkGradient);

  // highlight.
  TechCreateGradientRect(FCheckSize - 2, FCheckSize - 2, TechColor_HlFrom,
    TechColor_HlTo, 16, gsTop, True, FHlGradient);

  // redraw.
  Invalidate;
end;

procedure TTechCustomCheckControl.SetBoundColor(Value: TColor);
begin
  if Value <> FBoundColor then
  begin
    FBoundColor := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetBoundLines(Value: TTechBoundLines);
begin
  if Value <> FBoundLines then
  begin
    FBoundLines := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetChecked(Value: Boolean);
begin
  if Value <> FChecked then
  begin
    FChecked := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetCheckStyle(Value: TTechCheckStyle);
begin
  if Value <> FCheckStyle then
  begin
    FCheckStyle := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetHotTrack(Value: Boolean);
begin
  if Value <> FHotTrack then
  begin
    FHotTrack := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetHotTrackColor(Value: TColor);
begin
  if Value <> FHotTrackColor then
  begin
    FHotTrackColor := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetShowFocusRect(Value: Boolean);
begin
  if Value <> FShowFocusRect then
  begin
    FShowFocusRect := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.SetSpacing(Value: Byte);
begin
  if Value <> FSpacing then
  begin
    FSpacing := Value;
    Invalidate;
  end;
end;

procedure TTechCustomCheckControl.Paint;
var
  R: TRect;
begin
  with Canvas do
  begin
    // clear background.
    R := GetClientRect;
    Brush.Color := Self.Color;
    FillRect(R);

    // draw designtime rect.
    if csDesigning in ComponentState then
      DrawFocusRect(R);

    // draw boundlines.
    if FBoundLines <> [] then
    begin
      if (FHotTrack) and (dsHighlight in DrawState) then
        TechDrawBoundLines(Self.Canvas, FBoundLines, FHotTrackColor, R)
      else
        TechDrawBoundLines(Self.Canvas, FBoundLines, FBoundColor, R);
    end;

    // draw check symbol.
    DrawCheckSymbol(R);

    // draw caption.
    SetBkMode(Handle, Transparent);
    Font.Assign(Self.Font);
    Inc(R.Left, FCheckSize + 4 + FSpacing);
    TechPlaceText(Self, Canvas, Caption, Font, Enabled, True, taLeftJustify, True, R);

    // draw focusrect (if enabled).
    if (dsFocused in DrawState) and (FShowFocusRect) then
    begin
      Brush.Style := bsSolid;
      DrawFocusRect(Bounds(R.Left - 2, R.Top, R.Right - R.Left + 4, R.Bottom - R.Top));
    end;
  end;
end;

{ TTechCheckbox }

procedure TTechCheckbox.DrawCheckSymbol(const R: TRect);
  procedure DrawGradient(const Bitmap: TBitmap);
  begin
    BitBlt(Canvas.Handle, R.Left + 3, (ClientHeight - FCheckSize) div 2 + 1,
      FCheckSize - 2, FCheckSize - 2, Bitmap.Canvas.Handle, 0, 0, SRCCOPY);
  end;
const
  xs = 5;
  ys = 5;
var
  ClipWidth: Integer;
begin
  with Canvas do
  begin
    Pen.Color := clGray;
    Rectangle(Bounds(R.Left + 2, (ClientHeight - FCheckSize) div 2,
      FCheckSize, FCheckSize));

    ClipWidth := Integer(dsHighlight in DrawState);
    if not((ClipWidth <> 0) and (dsClicked in DrawState)) then
    begin
      if ClipWidth <> 0 then
        DrawGradient(FHlGradient);
      BitBlt(Handle, R.Left + 3 + ClipWidth, (ClientHeight - FCheckSize) div 2 + 1 +
        ClipWidth, FCheckSize - 2 - ClipWidth * 2, FCheckSize - 2 - ClipWidth * 2,
        FBgGradient.Canvas.Handle, 0, 0, SRCCOPY);
    end
    else
      DrawGradient(FCkGradient);

    // draw checked.
    if FChecked then
    begin
      Brush.Color := clSilver;
      Pen.Color := TechColor_BorderLine;
      if FCheckStyle = csDefault then
      begin
        TechDrawLine(Canvas, xs + 0, ys + 2, xs + 3, ys + 5, True);
        TechDrawLine(Canvas, xs + 0, ys + 3, xs + 2, ys + 5, True);
        TechDrawLine(Canvas, xs + 0, ys + 4, xs + 2, ys + 6, True);
        TechDrawLine(Canvas, xs + 3, ys + 3, xs + 6, ys + 0, True);
        TechDrawLine(Canvas, xs + 3, ys + 4, xs + 6, ys + 1, True);
        TechDrawLine(Canvas, xs + 4, ys + 4, xs + 6, ys + 2, True);
      end
      else
        Rectangle(Bounds(R.Left + 2 + FCheckSize div 4,
          (ClientHeight - FCheckSize) div 2 + FCheckSize div 4,
          FCheckSize div 2 + 1, FCheckSize div 2 + 1));
    end;
  end;
end;

end.

