unit TechContainer;

interface

uses
  Windows, Messages, Classes, Controls, Graphics, TechCore, Dialogs;

resourcestring
  SVersion = '1.00 /by Serkan';

type
{ TTechPaintEvent }

  TTechPaintEvent = procedure(Sender: TObject; Rect: TRect; ACanvas: TCanvas;
    AFont: TFont) of object;

{ TTechChildOffset }

  TTechChildOffset = 0..MAXINT;

{ TTechEnabledMode }

  TTechEnabledMode = (emAffectChilds, emNormal);

{ TTechContainer }

  TTechContainer = class(TTechCustomControl)
  private
    { Private declarations }
    FAlignment: TAlignment;
    FChildOffset: TTechChildOffset;
    FBoundColor: TColor;
    FBoundLines: TTechBoundLines;
    FEnabledMode: TTechEnabledMode;
    FHotTrack: Boolean;
    FHotTrackColor: TColor;
    FShowCaption: Boolean;
    FSpacing: Byte;
    FWordWrap: Boolean;
    FOnPaint: TTechPaintEvent;
    procedure RealignControls;
  protected
    { Protected declarations }
    function GetVersion: string; override;
    procedure AdjustClientRect(var Rect: TRect); override;
    procedure SetAlignment(Value: TAlignment); virtual;
    procedure SetChildOffset(Value: TTechChildOffset); virtual;
    procedure SetBoundColor(Value: TColor); virtual;
    procedure SetBoundLines(Value: TTechBoundLines); virtual;
    procedure SetEnabledMode(Value: TTechEnabledMode); virtual;
    procedure SetHotTrack(Value: Boolean); virtual;
    procedure SetHotTrackColor(Value: TColor); virtual;
    procedure SetShowCaption(Value: Boolean); virtual;
    procedure SetSpacing(Value: Byte); virtual;
    procedure SetWordWrap(Value: Boolean); virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure Paint; override;
    procedure HookEnabledChanged; override;
    procedure HookResized; override;
  published
    { Published declarations }
    property Alignment: TAlignment read FAlignment write SetAlignment default taLeftJustify;
    property Caption;
    property ChildOffset: TTechChildOffset read FChildOffset write SetChildOffset default 0;
    property BoundColor: TColor read FBoundColor write SetBoundColor default clGray;
    property BoundLines: TTechBoundLines read FBoundLines write SetBoundLines default [];
    property EnabledMode: TTechEnabledMode read FEnabledMode write SetEnabledMode default emNormal;
    property Height default 41;
    property HotTrack: Boolean read FHotTrack write SetHotTrack default False;
    property HotTrackColor: TColor read FHotTrackColor write SetHotTrackColor default clBlack;
    property ShowCaption: Boolean read FShowCaption write SetShowCaption default False;
    property Spacing: Byte read FSpacing write SetSpacing default 3;
    property Width default 185;
    property WordWrap: Boolean read FWordWrap write SetWordWrap default False;
    property OnPaint: TTechPaintEvent read FOnPaint write FOnPaint;
  end;

procedure Register;

implementation

uses
  TypInfo;

procedure Register;
begin
  RegisterComponents('Tech', [TTechContainer]);
end;

{ TTechContainer }

constructor TTechContainer.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := ControlStyle + [csAcceptsControls];
  DoubleBuffered := True;
  TabStop := False;
  Height := 45;
  Width := 185;

  FAlignment := taLeftJustify;
  FBoundColor := clGray;
  FBoundLines := [];
  FChildOffset := 0;
  FEnabledMode := emNormal;
  FHotTrack := False;
  FHotTrackColor := clBlack;
  FShowCaption := False;
  FSpacing := 3;
  FWordWrap := False;
end;

function TTechContainer.GetVersion: string;
begin
  Result := SVersion;
end;

procedure TTechContainer.HookEnabledChanged;
var
  i: Integer;
begin
  inherited;
  if FEnabledMode = emNormal then
    Exit;
  for i := 0 to ControlCount - 1 do
    if IsPublishedProp(Controls[i], 'Enabled') then
      SetPropValue(Controls[i], 'Enabled', Enabled);
end;

procedure TTechContainer.HookResized;
begin
  inherited;
  RealignControls;
end;

procedure TTechContainer.AdjustClientRect(var Rect: TRect);
begin
  if blLeft in FBoundLines then
    Inc(Rect.Left);
  if blRight in FBoundLines then
    Dec(Rect.Right);
  if blTop in FBoundLines then
    Inc(Rect.Top);
  if blBottom in FBoundLines then
    Dec(Rect.Bottom);
  InflateRect(Rect, -ChildOffset, -ChildOffset);
  inherited AdjustClientRect(Rect);
end;

procedure TTechContainer.RealignControls;
var
  R: TRect;
begin
  AlignControls(nil, R);
end;

procedure TTechContainer.SetAlignment(Value: TAlignment);
begin
  if Value <> FAlignment then
  begin
    FAlignment := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.SetChildOffset(Value: TTechChildOffset);
begin
  if Value <> FChildOffset then
  begin
    FChildOffset := Value;
    RealignControls;
  end;
end;

procedure TTechContainer.SetBoundColor(Value: TColor);
begin
  if Value <> FBoundColor then
  begin
    FBoundColor := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.SetBoundLines(Value: TTechBoundLines);
begin
  if Value <> FBoundLines then
  begin
    FBoundLines := Value;
    RealignControls;
    Invalidate;
  end;
end;

procedure TTechContainer.SetEnabledMode(Value: TTechEnabledMode);
begin
  if Value <> FEnabledMode then
  begin
    FEnabledMode := Value;
    HookEnabledChanged;
  end;
end;

procedure TTechContainer.SetHotTrack(Value: Boolean);
begin
  if Value <> FHotTrack then
  begin
    FHotTrack := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.SetHotTrackColor(Value: TColor);
begin
  if Value <> FHotTrackColor then
  begin
    FHotTrackColor := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.SetShowCaption(Value: Boolean);
begin
  if Value <> FShowCaption then
  begin
    FShowCaption := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.SetSpacing(Value: Byte);
begin
  if Value <> FSpacing then
  begin
    FSpacing := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.SetWordWrap(Value: Boolean);
begin
  if Value <> FWordWrap then
  begin
    FWordWrap := Value;
    Invalidate;
  end;
end;

procedure TTechContainer.Paint;
var
  R: TRect;
begin
  inherited;
  with Canvas do
  begin
    // draw designtime rect.
    R := GetClientRect;
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

    // assign spacing.
    InflateRect(R, -FSpacing, 0);

    // draw caption.
    SetBkMode(Handle, Transparent);
    Font.Assign(Self.Font);
    if FShowCaption then
      TechPlaceText(Self, Canvas, Caption, Font, Enabled, False, FAlignment,
        FWordWrap, R);

    // call user paint-method (if assigned).
    if Assigned(FOnPaint) then
      FOnPaint(Self, R, Self.Canvas, Font);
  end;
end;

end.
