unit TechGradScroll;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, TechGradPanel, Messages,
  Windows, Graphics, Math, FlatSB, Forms, CommCtrl, TechGradient,
  png2image,Buttons,StdCtrls;

type
  TTechGradScroll = class;

  TScrollBarKind = (sbHorizontal, sbVertical);
  TScrollBarInc = 1..32767;
  TScrollBarStyle = (ssRegular, ssFlat, ssHotTrack);
  TWindowState = (wsNormal, wsMinimized, wsMaximized);
  TItemClickEvent = procedure(Sender: TObject; FileName: string) of object;

  THourPanel = class(TTechGradPanel)
  public
    hourglass: TImage;
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  end;
  
 { TDirListThread = class(TThread)
  private
    GradScroll: TTechGradScroll;
    procedure CreateDirList;
  protected
    procedure Execute; override;
  public
    constructor CreateWithScroll(CreateSuspended: Boolean; GPanel: TTechGradScroll);
    destructor Destroy; override;
  end;   }

  TControlScrollBar = class(TPersistent)
  private
    FControl: TTechGradScroll;
    FIncrement: TScrollBarInc;
    FPageIncrement: TScrollbarInc;
    FPosition: Integer;
    FRange: Integer;
    FCalcRange: Integer;
    FKind: TScrollBarKind;
    FMargin: Word;
    FVisible: Boolean;
    FTracking: Boolean;
    FScaled: Boolean;
    FSmooth: Boolean;
    FDelay: Integer;
    FButtonSize: Integer;
    FColor: TColor;
    FParentColor: Boolean;
    FSize: Integer;
    FStyle: TScrollBarStyle;
    FThumbSize: Integer;
    FPageDiv: Integer;
    FLineDiv: Integer;
    FUpdateNeeded: Boolean;

    constructor Create(AControl: TTechGradScroll; AKind: TScrollBarKind);
    procedure CalcAutoRange;
    function ControlSize(ControlSB, AssumeSB: Boolean): Integer;
    procedure DoSetRange(Value: Integer);
    function GetScrollPos: Integer;
    function NeedsScrollBarVisible: Boolean;
    function IsIncrementStored: Boolean;
    procedure ScrollMessage(var Msg: TWMScroll);
    procedure SetButtonSize(Value: Integer);
    procedure SetColor(Value: TColor);
    procedure SetParentColor(Value: Boolean);
    procedure SetPosition(Value: Integer);
    procedure SetRange(Value: Integer);
    procedure SetSize(Value: Integer);
    procedure SetStyle(Value: TScrollBarStyle);
    procedure SetThumbSize(Value: Integer);
    procedure SetVisible(Value: Boolean);
    function IsRangeStored: Boolean;
    procedure Update(ControlSB, AssumeSB: Boolean);
  public
    procedure Assign(Source: TPersistent); override;
    procedure ChangeBiDiPosition;
    property Kind: TScrollBarKind read FKind;
    function IsScrollBarVisible: Boolean;
    property ScrollPos: Integer read GetScrollPos;
  published
    property ButtonSize: Integer read FButtonSize write SetButtonSize default 0;
    property Color: TColor read FColor write SetColor default clBtnHighlight;
    property Increment: TScrollBarInc read FIncrement write FIncrement stored IsIncrementStored default 8;
    property Margin: Word read FMargin write FMargin default 0;
    property ParentColor: Boolean read FParentColor write SetParentColor default True;
    property Position: Integer read FPosition write SetPosition default 0;
    property Range: Integer read FRange write SetRange stored IsRangeStored default 0;
    property Smooth: Boolean read FSmooth write FSmooth default False;
    property Size: Integer read FSize write SetSize default 0;
    property Style: TScrollBarStyle read FStyle write SetStyle default ssRegular;
    property ThumbSize: Integer read FThumbSize write SetThumbSize default 0;
    property Tracking: Boolean read FTracking write FTracking default False;
    property Visible: Boolean read FVisible write SetVisible default True;
  end;


  TTechPanel = class(TTechGradPanel)
  private
    Image: TImage;
    Png: TPNGObject;
    SButton: TSpeedButton;
    lblCaption: TLabel;
    FFileName: string;
    FDosyaAdi: string;
    procedure ItemButtonClick(Sender: TObject);
    procedure ItemImageClick(Sender: TObject);
    procedure ItemlblClick(Sender: TObject);
    procedure SetFileName(val: string);
    procedure SetDosyaAdi(val: string);
    function GetMenuImageWithExt(ext: string): string;
  public
    GradScroll : TTechGradScroll;
    Selected: boolean;
    Folder  : boolean;
    constructor Create(AOwner: TComponent); override;
    constructor CreateWithParent(AOwner: TComponent; GPanel: TTechGradScroll);
    destructor  Destroy; override;
    property FileName: string read FFileName write SetFileName;
    property DosyaAdi: string read FDosyaAdi write SetDosyaAdi;
  end;

  TTechScrollBtn = class(TTechGradPanel)
  private
    ImageUst,ImageAlt: TImage;
    GradScroll: TTechGradScroll;
    procedure YukariClick(Sender: TObject);
    procedure AsagiClick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    constructor CreateWithParent(AOwner: TComponent; GPanel: TTechGradScroll);
    destructor  Destroy; override;
  end;

  TTechGradScroll = class(TTechGradPanel)
  private
    FHorzScrollBar: TControlScrollBar;
    FVertScrollBar: TControlScrollBar;
    FAutoScroll: Boolean;
    FAutoRangeCount: Integer;
    FUpdatingScrollBars: Boolean;
    FList: TList;
    FDirectory: string;
    FItemHeight: integer;
    FMenuImage: boolean;
    FFilter: string;
    FScrollButton: boolean;
    FScrollBtn: TTechScrollBtn;
    FScrollBtnTimer: TTimer;
    procedure ScrollBtnTimerEvent(Sender: TObject);
    procedure SetScrollButton(val: boolean);
    procedure PanelClick(Sender: TObject);
    procedure SetItemHeight(val: integer);
    procedure SetDirectory(dir: string);
    procedure CalcAutoRange;
    procedure ScaleScrollBars(M, D: Integer);
    procedure SetAutoScroll(Value: Boolean);
    procedure SetHorzScrollBar(Value: TControlScrollBar);
    procedure SetVertScrollBar(Value: TControlScrollBar);
    procedure UpdateScrollBars;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMHScroll(var Message: TWMHScroll); message WM_HSCROLL;
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    procedure CMBiDiModeChanged(var Message: TMessage); message CM_BIDIMODECHANGED;
    procedure CreateDirList;
  protected
    FItemClickEvent: TItemClickEvent;
    FItemButtonClickEvent: TItemClickEvent;
    procedure AdjustClientRect(var Rect: TRect); override;
    procedure AlignControls(AControl: TControl; var ARect: TRect); override;
    function AutoScrollEnabled: Boolean; virtual;
    procedure AutoScrollInView(AControl: TControl); virtual;
    procedure ChangeScale(M, D: Integer); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DoFlipChildren; override;
    property AutoScroll: Boolean read FAutoScroll write SetAutoScroll default True;
    procedure Resizing(State: TWindowState); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DisableAutoRange;
    procedure EnableAutoRange;
    procedure ScrollInView(AControl: TControl);
    procedure MouseWheelHandler(var Message: TMessage); override;
  published
    property ScrollButton: boolean read FScrollButton write SetScrollButton;
    property Filter   : string read FFilter     write FFilter;
    property MenuImage: boolean read FMenuImage write FMenuImage;
    property ItemHeight: integer read FItemHeight write SetItemHeight;
    property Directory: string read FDirectory write SetDirectory;
    property HorzScrollBar: TControlScrollBar read FHorzScrollBar write SetHorzScrollBar;
    property VertScrollBar: TControlScrollBar read FVertScrollBar write SetVertScrollBar;
    property OnItemClickEvent: TItemClickEvent read FItemClickEvent write FItemClickEvent;
    property OnItemButtonClickEvent: TItemClickEvent read FItemButtonClickEvent write FItemButtonClickEvent;
  end;

procedure Register;

implementation

{$R menu_item.RES}

procedure Register;
begin
  RegisterComponents('Tech', [TTechGradScroll]);
end;

{constructor TDirListThread.CreateWithScroll(CreateSuspended: Boolean; GPanel: TTechGradScroll);
begin
  GradScroll := GPanel;
  Create(CreateSuspended);
end;



destructor TDirListThread.Destroy;
begin
  inherited Destroy;
end;

procedure TDirListThread.Execute;
begin
  CreateDirList;
  Free;

end;  }

constructor THourPanel.Create(AOwner: TComponent);
var
  Png: TPNGObject;
begin
  inherited Create(AOwner);
  Caption := '';
  Transparent := true;
  Png:= TPNGObject.Create;
  Png.LoadFromResourceName(HInstance,'HOUR_CLAS');
  hourglass:= TImage.Create(Self);
  hourglass.Parent := Self;
  hourglass.AutoSize := true;
  hourglass.Picture.Assign(Png);

  Self.Width := hourglass.Width;
  Self.Height := hourglass.Height;
  hourglass.Top := 0;
  hourglass.Left:= 0;
  Png.Free;
end;

destructor THourPanel.Destroy;
begin
  hourglass.Free;
  inherited Destroy;
end;



constructor TTechScrollBtn.CreateWithParent(AOwner: TComponent; GPanel: TTechGradScroll);
begin
  GradScroll := GPanel;
  Create(AOwner);
end;

procedure TTechScrollBtn.YukariClick(Sender: TObject);
begin
  GradScroll.VertScrollBar.Position := GradScroll.VertScrollBar.Position - 10;
end;

procedure TTechScrollBtn.AsagiClick(Sender: TObject);
begin
  GradScroll.VertScrollBar.Position := GradScroll.VertScrollBar.Position + 10;
end;

constructor TTechScrollBtn.Create(AOwner: TComponent);
var
  png: TPNGObject;
begin
  inherited Create(AOwner);
  if GradScroll.ScrollButton then
  begin

    Self.Transparent := true;
    png:= TPNGObject.Create;
    png.LoadFromResourceName(HInstance,'YUKARI');
    ImageUst := TImage.Create(Self);
    ImageUst.Parent := Self;
    ImageUst.Align := alTop;
    ImageUst.AutoSize := true;
    ImageUst.Picture.Assign(png);
    ImageUst.OnClick := YukariClick;

    png.LoadFromResourceName(HInstance,'ASAGI');
    ImageAlt := TImage.Create(Self);
    ImageAlt.Parent := Self;
    ImageAlt.Align := alBottom;
    ImageAlt.AutoSize := true;
    ImageAlt.Picture.Assign(png);
    ImageAlt.OnClick := AsagiClick;
    png.Free;
    Width := 30;
    Caption := '';
  end;

end;

destructor TTechScrollBtn.Destroy;
begin
  ImageUst.Free;
  ImageAlt.Free;
  inherited Destroy;
end;


constructor TTechPanel.CreateWithParent(AOwner: TComponent; GPanel: TTechGradScroll);
begin
  GradScroll := GPanel;
  Create(AOwner);
end;

constructor TTechPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  if GradScroll.MenuImage then
  begin

    Self.Transparent := true;
    Image:= TImage.Create(Self);
    Image.Parent := Self;
    Image.AutoSize := true;
    //Image.Align  := alClient;

    Image.Top := 0;
    Image.Left := 0;
    Image.OnClick := ItemImageClick;

    SButton:= TSpeedButton.Create(Self);
    SButton.Parent := Self;
    SButton.Left := 8;
    SButton.Top  := 8;
    SButton.Width := 52;
    SButton.Height:= 52;
    SButton.Flat  := true;
    SButton.OnClick := ItemButtonClick;
    lblCaption:= TLabel.Create(Self);
    lblCaption.Parent := Self;
    lblCaption.AutoSize := false;
    lblCaption.Font.Assign(Self.Font);
    lblCaption.Left := 68;
    lblCaption.Top  := 9;
    lblCaption.Width  := 275;
    lblCaption.Height := 48;
    lblCaption.WordWrap := true;
    lblCaption.Transparent := true;
    lblCaption.OnClick := ItemlblClick;
    Png.Free;
  end;

end;

destructor TTechPanel.Destroy;
begin
  lblCaption.Free;
  SButton.Free;
  Image.Free;
  inherited Destroy;
end;

function TTechPanel.GetMenuImageWithExt(ext: string): string;
begin
  if (ext = '.doc') or (ext = '.rtf') or (ext = '.docx') or (ext = '.docm') then
    Result := 'MENU_WORD'
  else if (ext = '.pdf') then
    Result := 'MENU_PDF'
  else if (ext = '.avi') or (ext = '.mpg') or (ext = '.mpeg') or (ext = '.wmv')
    or (ext = '.wmv') then
    Result := 'MENU_VIDEO'
  else if (ext = '.jpg') or (ext = '.gif') or (ext = '.png') or (ext = '.bmp') then
    Result := 'MENU_FOTO'
  else if (ext = '.mp3') or (ext = '.wav') then
    Result := 'MENU_MUZIK'
  else if (ext = '.xls') or (ext = '.xlsx') or (ext = '.xlsm') or (ext = '.xlsb') or (ext = '.xlam')
     or (ext = '.xltx') or (ext = '.xltm') then
    Result := 'MENU_EXCELL'
  else if Folder then
    Result := 'MENU_FOLDER'
  else
    Result := 'MENU_UNKNOWN';
end;

procedure TTechPanel.SetFileName(val: string);
var
  Png: TPNGObject;
  ext: string;
begin
  if FFileName <> val then
  begin
    FFileName := val;
    if GradScroll.MenuImage then
    begin
      ext := LowerCase(ExtractFileExt(FFileName));
      Png:= TPNGObject.Create;
      Png.LoadFromResourceName(HInstance,GetMenuImageWithExt(ext));
      Image.Picture.Assign(Png);
      Png.Free;
      Self.Width := Image.Width;
    end;
  end;
end;

procedure TTechPanel.SetDosyaAdi(val: string);
begin
  if FDosyaAdi <> val then
  begin
    FDosyaAdi := val;
    lblCaption.Caption := FDosyaAdi;
  end;
end;

procedure TTechPanel.ItemButtonClick(Sender: TObject);
begin
  if Assigned(TTechGradScroll(Parent).FItemButtonClickEvent) then TTechGradScroll(Parent).FItemButtonClickEvent(Parent,Self.FileName);
end;

procedure TTechPanel.ItemImageClick(Sender: TObject);
begin
   TTechGradScroll(Parent).PanelClick(Self);
end;

procedure TTechPanel.ItemlblClick(Sender: TObject);
begin
   TTechGradScroll(Parent).PanelClick(Self);
end;

{ TControlScrollBar }

constructor TControlScrollBar.Create(AControl: TTechGradScroll;
  AKind: TScrollBarKind);
begin
  inherited Create;
  FControl := AControl;
  FKind := AKind;
  FPageIncrement := 80;
  FIncrement := FPageIncrement div 10;
  FVisible := True;
  FDelay := 10;
  FLineDiv := 4;
  FPageDiv := 12;
  FColor := clBtnHighlight;
  FParentColor := True;
  FUpdateNeeded := True;
end;

function TControlScrollBar.IsIncrementStored: Boolean;
begin
  Result := not Smooth;
end;

procedure TControlScrollBar.Assign(Source: TPersistent);
begin
  if Source is TControlScrollBar then
  begin
    Visible := TControlScrollBar(Source).Visible;
    Range := TControlScrollBar(Source).Range;
    Position := TControlScrollBar(Source).Position;
    Increment := TControlScrollBar(Source).Increment;
    Exit;
  end;
  inherited Assign(Source);
end;

procedure TControlScrollBar.ChangeBiDiPosition;
begin
  if Kind = sbHorizontal then
    if IsScrollBarVisible then
      if not FControl.UseRightToLeftScrollBar then
        Position := 0
      else
        Position := Range;
end;

procedure TControlScrollBar.CalcAutoRange;
var
  I: Integer;
  NewRange, AlignMargin: Integer;

  procedure ProcessHorz(Control: TControl);
  begin
    if Control.Visible then
      case Control.Align of
        alLeft, alNone:
          if (Control.Align = alLeft) or (Control.Anchors * [akLeft, akRight] = [akLeft]) then
            NewRange := Max(NewRange, Position + Control.Left + Control.Width);
        alRight: Inc(AlignMargin, Control.Width);
      end;
  end;

  procedure ProcessVert(Control: TControl);
  begin
    if Control.Visible then
      case Control.Align of
        alTop, alNone:
          if (Control.Align = alTop) or (Control.Anchors * [akTop, akBottom] = [akTop]) then
            NewRange := Max(NewRange, Position + Control.Top + Control.Height);
        alBottom: Inc(AlignMargin, Control.Height);
      end;
  end;

begin
  if FControl.FAutoScroll then
  begin
    if FControl.AutoScrollEnabled then
    begin
      NewRange := 0;
      AlignMargin := 0;
      for I := 0 to FControl.ControlCount - 1 do
        if Kind = sbHorizontal then
          ProcessHorz(FControl.Controls[I]) else
          ProcessVert(FControl.Controls[I]);
      DoSetRange(NewRange + AlignMargin + Margin);
    end
    else DoSetRange(0);
  end;
end;

function TControlScrollBar.IsScrollBarVisible: Boolean;
var
  Style: Longint;
begin
  Style := WS_HSCROLL;
  if Kind = sbVertical then Style := WS_VSCROLL;
  Result := (Visible) and
            (GetWindowLong(FControl.Handle, GWL_STYLE) and Style <> 0);
end;

function TControlScrollBar.ControlSize(ControlSB, AssumeSB: Boolean): Integer;
var
  BorderAdjust: Integer;

  function ScrollBarVisible(Code: Word): Boolean;
  var
    Style: Longint;
  begin
    Style := WS_HSCROLL;
    if Code = SB_VERT then Style := WS_VSCROLL;
    Result := GetWindowLong(FControl.Handle, GWL_STYLE) and Style <> 0;
  end;

  function Adjustment(Code, Metric: Word): Integer;
  begin
    Result := 0;
    if not ControlSB then
      if AssumeSB and not ScrollBarVisible(Code) then
        Result := -(GetSystemMetrics(Metric) - BorderAdjust)
      else if not AssumeSB and ScrollBarVisible(Code) then
        Result := GetSystemMetrics(Metric) - BorderAdjust;
  end;

begin
  BorderAdjust := Integer(GetWindowLong(FControl.Handle, GWL_STYLE) and
    (WS_BORDER or WS_THICKFRAME) <> 0);
  if Kind = sbVertical then
    Result := FControl.ClientHeight + Adjustment(SB_HORZ, SM_CXHSCROLL) else
    Result := FControl.ClientWidth + Adjustment(SB_VERT, SM_CYVSCROLL);
end;

function TControlScrollBar.GetScrollPos: Integer;
begin
  Result := 0;
  if Visible then Result := Position;
end;

function TControlScrollBar.NeedsScrollBarVisible: Boolean;
begin
  Result := FRange > ControlSize(False, False);
end;

procedure TControlScrollBar.ScrollMessage(var Msg: TWMScroll);
var
  Incr, FinalIncr, Count: Integer;
  CurrentTime, StartTime, ElapsedTime: Longint;

  function GetRealScrollPosition: Integer;
  var
    SI: TScrollInfo;
    Code: Integer;
  begin
    SI.cbSize := SizeOf(TScrollInfo);
    SI.fMask := SIF_TRACKPOS;
    Code := SB_HORZ;
    if FKind = sbVertical then Code := SB_VERT;
    Result := Msg.Pos;
    if FlatSB_GetScrollInfo(FControl.Handle, Code, SI) then
      Result := SI.nTrackPos;
  end;

begin
  with Msg do
  begin
    if FSmooth and (ScrollCode in [SB_LINEUP, SB_LINEDOWN, SB_PAGEUP, SB_PAGEDOWN]) then
    begin
      case ScrollCode of
        SB_LINEUP, SB_LINEDOWN:
          begin
            Incr := FIncrement div FLineDiv;
            FinalIncr := FIncrement mod FLineDiv;
            Count := FLineDiv;
          end;
        SB_PAGEUP, SB_PAGEDOWN:
          begin
            Incr := FPageIncrement;
            FinalIncr := Incr mod FPageDiv;
            Incr := Incr div FPageDiv;
            Count := FPageDiv;
          end;
      else
        Count := 0;
        Incr := 0;
        FinalIncr := 0;
      end;
      CurrentTime := 0;
      while Count > 0 do
      begin
        StartTime := GetCurrentTime;
        ElapsedTime := StartTime - CurrentTime;
        if ElapsedTime < FDelay then Sleep(FDelay - ElapsedTime);
        CurrentTime := StartTime;
        case ScrollCode of
          SB_LINEUP: SetPosition(FPosition - Incr);
          SB_LINEDOWN: SetPosition(FPosition + Incr);
          SB_PAGEUP: SetPosition(FPosition - Incr);
          SB_PAGEDOWN: SetPosition(FPosition + Incr);
        end;
        FControl.Update;
        Dec(Count);
      end;
      if FinalIncr > 0 then
      begin
        case ScrollCode of
          SB_LINEUP: SetPosition(FPosition - FinalIncr);
          SB_LINEDOWN: SetPosition(FPosition + FinalIncr);
          SB_PAGEUP: SetPosition(FPosition - FinalIncr);
          SB_PAGEDOWN: SetPosition(FPosition + FinalIncr);
        end;
      end;
    end
    else
      case ScrollCode of
        SB_LINEUP: SetPosition(FPosition - FIncrement);
        SB_LINEDOWN: SetPosition(FPosition + FIncrement);
        SB_PAGEUP: SetPosition(FPosition - ControlSize(True, False));
        SB_PAGEDOWN: SetPosition(FPosition + ControlSize(True, False));
        SB_THUMBPOSITION:
            if FCalcRange > 32767 then
              SetPosition(GetRealScrollPosition) else
              SetPosition(Pos);
        SB_THUMBTRACK:
          if Tracking then
            if FCalcRange > 32767 then
              SetPosition(GetRealScrollPosition) else
              SetPosition(Pos);
        SB_TOP: SetPosition(0);
        SB_BOTTOM: SetPosition(FCalcRange);
        SB_ENDSCROLL: begin end;
      end;
  end;
end;

procedure TControlScrollBar.SetButtonSize(Value: Integer);
const
  SysConsts: array[TScrollBarKind] of Integer = (SM_CXHSCROLL, SM_CXVSCROLL);
var
  NewValue: Integer;
begin
  if Value <> ButtonSize then
  begin
    NewValue := Value;
    if NewValue = 0 then
      Value := GetSystemMetrics(SysConsts[Kind]);
    FButtonSize := Value;
    FUpdateNeeded := True;
    FControl.UpdateScrollBars;
    if NewValue = 0 then
      FButtonSize := 0;
  end;
end;

procedure TControlScrollBar.SetColor(Value: TColor);
begin
  if Value <> Color then
  begin
    FColor := Value;
    FParentColor := False;
    FUpdateNeeded := True;
    FControl.UpdateScrollBars;
  end;
end;

procedure TControlScrollBar.SetParentColor(Value: Boolean);
begin
  if ParentColor <> Value then
  begin
    FParentColor := Value;
    if Value then Color := clBtnHighlight;
  end;
end;

procedure TControlScrollBar.SetPosition(Value: Integer);
var
  Code: Word;
  Form: TCustomForm;
  OldPos: Integer;
begin
  if csReading in FControl.ComponentState then
    FPosition := Value
  else
  begin
    if Value > FCalcRange then Value := FCalcRange
    else if Value < 0 then Value := 0;
    if Kind = sbHorizontal then
      Code := SB_HORZ else
      Code := SB_VERT;
    if Value <> FPosition then
    begin
      OldPos := FPosition;
      FPosition := Value;
      if Kind = sbHorizontal then
        FControl.ScrollBy(OldPos - Value, 0) else
        FControl.ScrollBy(0, OldPos - Value);
      if csDesigning in FControl.ComponentState then
      begin
        Form := GetParentForm(FControl);
        if (Form <> nil) and (Form.Designer <> nil) then Form.Designer.Modified;
      end;
    end;
    if FlatSB_GetScrollPos(FControl.Handle, Code) <> FPosition then
      FlatSB_SetScrollPos(FControl.Handle, Code, FPosition, True);
  end;
end;

procedure TControlScrollBar.SetSize(Value: Integer);
const
  SysConsts: array[TScrollBarKind] of Integer = (SM_CYHSCROLL, SM_CYVSCROLL);
var
  NewValue: Integer;
begin
  if Value <> Size then
  begin
    NewValue := Value;
    if NewValue = 0 then
      Value := GetSystemMetrics(SysConsts[Kind]);
    FSize := Value;
    FUpdateNeeded := True;
    FControl.UpdateScrollBars;
    if NewValue = 0 then
      FSize := 0;
  end;
end;

procedure TControlScrollBar.SetStyle(Value: TScrollBarStyle);
begin
  if Style <> Value then
  begin
    FStyle := Value;
    FUpdateNeeded := True;
    FControl.UpdateScrollBars;
  end;
end;

procedure TControlScrollBar.SetThumbSize(Value: Integer);
begin
  if Value <> ThumbSize then
  begin
    FThumbSize := Value;
    FUpdateNeeded := True;
    FControl.UpdateScrollBars;
  end;
end;

procedure TControlScrollBar.DoSetRange(Value: Integer);
begin
  FRange := Value;
  if FRange < 0 then FRange := 0;
  FControl.UpdateScrollBars;
end;

procedure TControlScrollBar.SetRange(Value: Integer);
begin
  FControl.FAutoScroll := False;
  FScaled := True;
  DoSetRange(Value);
end;

function TControlScrollBar.IsRangeStored: Boolean;
begin
  Result := not FControl.AutoScroll;
end;

procedure TControlScrollBar.SetVisible(Value: Boolean);
begin
  FVisible := Value;
  FControl.UpdateScrollBars;
end;

procedure TControlScrollBar.Update(ControlSB, AssumeSB: Boolean);
type
  TPropKind = (pkStyle, pkButtonSize, pkThumbSize, pkSize, pkBkColor);
const
  Props: array[TScrollBarKind, TPropKind] of Integer = (
    { Horizontal }
    (WSB_PROP_HSTYLE, WSB_PROP_CXHSCROLL, WSB_PROP_CXHTHUMB, WSB_PROP_CYHSCROLL,
     WSB_PROP_HBKGCOLOR),
    { Vertical }
    (WSB_PROP_VSTYLE, WSB_PROP_CYVSCROLL, WSB_PROP_CYVTHUMB, WSB_PROP_CXVSCROLL,
     WSB_PROP_VBKGCOLOR));
  Kinds: array[TScrollBarKind] of Integer = (WSB_PROP_HSTYLE, WSB_PROP_VSTYLE);
  Styles: array[TScrollBarStyle] of Integer = (FSB_REGULAR_MODE,
    FSB_ENCARTA_MODE, FSB_FLAT_MODE);
var
  Code: Word;
  ScrollInfo: TScrollInfo;

  procedure UpdateScrollProperties(Redraw: Boolean);
  begin
    FlatSB_SetScrollProp(FControl.Handle, Props[Kind, pkStyle], Styles[Style], Redraw);
    if ButtonSize > 0 then
      FlatSB_SetScrollProp(FControl.Handle, Props[Kind, pkButtonSize], ButtonSize, False);
    if ThumbSize > 0 then
      FlatSB_SetScrollProp(FControl.Handle, Props[Kind, pkThumbSize], ThumbSize, False);
    if Size > 0 then
      FlatSB_SetScrollProp(FControl.Handle, Props[Kind, pkSize], Size, False);
    FlatSB_SetScrollProp(FControl.Handle, Props[Kind, pkBkColor],
      ColorToRGB(Color), False);
  end;

begin
  FCalcRange := 0;
  Code := SB_HORZ;
  if Kind = sbVertical then Code := SB_VERT;
 // if Visible then
  begin
    FCalcRange := Range - ControlSize(ControlSB, AssumeSB);
    if FCalcRange < 0 then FCalcRange := 0;
  end;
  ScrollInfo.cbSize := SizeOf(ScrollInfo);
  ScrollInfo.fMask := SIF_ALL;
  ScrollInfo.nMin := 0;
  if FCalcRange > 0 then
    ScrollInfo.nMax := Range else
    ScrollInfo.nMax := 0;
  ScrollInfo.nPage := ControlSize(ControlSB, AssumeSB) + 1;
  ScrollInfo.nPos := FPosition;
  ScrollInfo.nTrackPos := FPosition;
  UpdateScrollProperties(FUpdateNeeded);
  FUpdateNeeded := False;
  FlatSB_SetScrollInfo(FControl.Handle, Code, ScrollInfo, True);
  SetPosition(FPosition);
  FPageIncrement := (ControlSize(True, False) * 9) div 10;
  if Smooth then FIncrement := FPageIncrement div 10;
end;


{ TTechGradScroll }

constructor TTechGradScroll.Create(AOwner: TComponent);
begin
  FItemHeight := 68;
  FFilter     := '*.*';
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csNeedsBorderPaint];
  FHorzScrollBar := TControlScrollBar.Create(Self, sbHorizontal);
  FVertScrollBar := TControlScrollBar.Create(Self, sbVertical);
  FAutoScroll := True;
  Caption := '';

  FList:= TList.Create;
end;

destructor TTechGradScroll.Destroy;
var
  i: integer;
begin
  if Assigned(FScrollBtnTimer) then
  begin
    FScrollBtnTimer.Enabled := false;
    FScrollBtnTimer.Free;
    FScrollBtn.Free;
  end;
  FHorzScrollBar.Free;
  FVertScrollBar.Free;
  for i := FList.Count -1 downto 0 do
  begin
    TTechPanel(FList.Items[i]).Free;
    FList.Delete(i);
  end;
  FList.Free;
  inherited Destroy;
end;

procedure TTechGradScroll.PanelClick(Sender: TObject);
var
  i: integer;
begin
  for i :=0 to FList.Count -1 do
  begin
    if TTechPanel(FList.Items[i]) = TTechPanel(Sender) then
    begin
      TTechPanel(FList.Items[i]).Selected := true;
    end else TTechPanel(FList.Items[i]).Selected := false;
  end;

  if Assigned(FItemClickEvent) then FItemClickEvent(Self,TTechPanel(Sender).FileName);
end;

procedure TTechGradScroll.SetItemHeight(val: integer);
var
  i: integer;
begin
  if FItemHeight <> val then
  begin
    FItemHeight := val;
    for i:= 0 to FList.Count -1 do
    begin
      TTechPanel(FList.Items[i]).Height := FItemHeight;
      TTechPanel(FList.Items[i]).Top    := FItemHeight * i;
    end;
  end;
end;

procedure TTechGradScroll.ScrollBtnTimerEvent(Sender: TObject);
begin
  if Assigned(FScrollBtn) then
  begin
    FScrollBtn.Left := Self.Width - (FScrollBtn.Width + 3);
    FScrollBtn.Height := Self.Height;
  end;
end;


procedure TTechGradScroll.SetScrollButton(val: boolean);
begin
  if FScrollButton <> val then
  begin
    FScrollButton := val;
    if FScrollButton then
    begin
      FScrollBtn:= TTechScrollBtn.CreateWithParent(Self,Self);
      FScrollBtn.Parent := Self;
      FScrollBtn.Left := Self.Width - (FScrollBtn.Width + 3);
      FScrollBtn.Height := Self.Height;
      VertScrollBar.Visible := false;
      HorzScrollBar.Visible := false;
      FScrollBtnTimer:= TTimer.Create(nil);
      FScrollBtnTimer.Interval := 10;
      FScrollBtnTimer.Enabled := true;
      FScrollBtnTimer.OnTimer := ScrollBtnTimerEvent;
    end else begin
      FScrollBtnTimer.Enabled := false;
      FScrollBtnTimer.Free;
      FScrollBtn.Free;
      VertScrollBar.Visible := true;
      HorzScrollBar.Visible := true;
    end;
  end;
end;

procedure TTechGradScroll.SetDirectory(dir: string);
begin
  if dir <> FDirectory then
  begin
    FDirectory := dir;
    if FDirectory <> '' then
      if FDirectory[length(FDirectory)] <> '\' then FDirectory := FDirectory + '\';

    CreateDirList;
  end;
end;

procedure TTechGradScroll.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params.WindowClass do
    style := style and not (CS_HREDRAW or CS_VREDRAW);
end;

procedure TTechGradScroll.CreateWnd;
begin
  inherited CreateWnd;
  //! Scroll bars don't move to the Left side of a TTechGradScroll when the
  //! WS_EX_LEFTSCROLLBAR flag is set and InitializeFlatSB is called.
  //! A call to UnInitializeFlatSB does nothing.
  if not SysLocale.MiddleEast and
     not CheckWin32Version(5, 1) then
    InitializeFlatSB(Handle);
  UpdateScrollBars;
end;

procedure TTechGradScroll.AlignControls(AControl: TControl; var ARect: TRect);
begin
  CalcAutoRange;
  inherited AlignControls(AControl, ARect);
end;

function TTechGradScroll.AutoScrollEnabled: Boolean;
begin
  Result := not AutoSize and not (DockSite and UseDockManager);
end;

procedure TTechGradScroll.DoFlipChildren;
var
  Loop: Integer;
  TheWidth: Integer;
  ScrollBarActive: Boolean;
  FlippedList: TList;
begin
  FlippedList := TList.Create;
  try
    TheWidth := ClientWidth;
    with HorzScrollBar do begin
      ScrollBarActive := (IsScrollBarVisible) and (TheWidth < Range);
      if ScrollBarActive then
      begin
        TheWidth := Range;
        Position := 0;
      end;
    end;

    for Loop := 0 to ControlCount - 1 do with Controls[Loop] do
    begin
      FlippedList.Add(Controls[Loop]);
      Left := TheWidth - Width - Left;
    end;

    { Allow controls that have associations to realign themselves }
    for Loop := 0 to FlippedList.Count - 1 do
      TControl(FlippedList[Loop]).Perform(CM_ALLCHILDRENFLIPPED, 0, 0);

    if ScrollBarActive then
      HorzScrollBar.ChangeBiDiPosition;
  finally
     FlippedList.Free;
  end;
end;

procedure TTechGradScroll.CalcAutoRange;
begin
  if FAutoRangeCount <= 0 then
  begin
    HorzScrollBar.CalcAutoRange;
    VertScrollBar.CalcAutoRange;
  end;
end;

procedure TTechGradScroll.SetAutoScroll(Value: Boolean);
begin
  if FAutoScroll <> Value then
  begin
    FAutoScroll := Value;
    if Value then CalcAutoRange else
    begin
      HorzScrollBar.Range := 0;
      VertScrollBar.Range := 0;
    end;
  end;
end;

procedure TTechGradScroll.SetHorzScrollBar(Value: TControlScrollBar);
begin
  FHorzScrollBar.Assign(Value);
end;

procedure TTechGradScroll.SetVertScrollBar(Value: TControlScrollBar);
begin
  FVertScrollBar.Assign(Value);
end;

procedure TTechGradScroll.UpdateScrollBars;
begin
  if not FUpdatingScrollBars and HandleAllocated then
    try
      FUpdatingScrollBars := True;
      if FVertScrollBar.NeedsScrollBarVisible then
      begin
        FHorzScrollBar.Update(False, True);
        FVertScrollBar.Update(True, False);
      end
      else if FHorzScrollBar.NeedsScrollBarVisible then
      begin
        FVertScrollBar.Update(False, True);
        FHorzScrollBar.Update(True, False);
      end
      else
      begin
        FVertScrollBar.Update(False, False);
        FHorzScrollBar.Update(True, False);
      end;
    finally
      FUpdatingScrollBars := False;
    end;
end;

procedure TTechGradScroll.AutoScrollInView(AControl: TControl);
begin
  if (AControl <> nil) and not (csLoading in AControl.ComponentState) and
    not (csLoading in ComponentState) then
    ScrollInView(AControl);
end;

procedure TTechGradScroll.DisableAutoRange;
begin
  Inc(FAutoRangeCount);
end;

procedure TTechGradScroll.EnableAutoRange;
begin
  if FAutoRangeCount > 0 then
  begin
    Dec(FAutoRangeCount);
    if (FAutoRangeCount = 0) and (FHorzScrollBar.Visible or
      FVertScrollBar.Visible) then CalcAutoRange;
  end;
end;

procedure TTechGradScroll.ScrollInView(AControl: TControl);
var
  Rect: TRect;
begin
  if AControl = nil then Exit;
  Rect := AControl.ClientRect;
  Dec(Rect.Left, HorzScrollBar.Margin);
  Inc(Rect.Right, HorzScrollBar.Margin);
  Dec(Rect.Top, VertScrollBar.Margin);
  Inc(Rect.Bottom, VertScrollBar.Margin);
  Rect.TopLeft := ScreenToClient(AControl.ClientToScreen(Rect.TopLeft));
  Rect.BottomRight := ScreenToClient(AControl.ClientToScreen(Rect.BottomRight));
  if Rect.Left < 0 then
    with HorzScrollBar do Position := Position + Rect.Left
  else if Rect.Right > ClientWidth then
  begin
    if Rect.Right - Rect.Left > ClientWidth then
      Rect.Right := Rect.Left + ClientWidth;
    with HorzScrollBar do Position := Position + Rect.Right - ClientWidth;
  end;
  if Rect.Top < 0 then
    with VertScrollBar do Position := Position + Rect.Top
  else if Rect.Bottom > ClientHeight then
  begin
    if Rect.Bottom - Rect.Top > ClientHeight then
      Rect.Bottom := Rect.Top + ClientHeight;
    with VertScrollBar do Position := Position + Rect.Bottom - ClientHeight;
  end;
end;

procedure TTechGradScroll.ScaleScrollBars(M, D: Integer);
begin
  if M <> D then
  begin
    if not (csLoading in ComponentState) then
    begin
      HorzScrollBar.FScaled := True;
      VertScrollBar.FScaled := True;
    end;
    HorzScrollBar.Position := 0;
    VertScrollBar.Position := 0;
    if not FAutoScroll then
    begin
      with HorzScrollBar do if FScaled then Range := MulDiv(Range, M, D);
      with VertScrollBar do if FScaled then Range := MulDiv(Range, M, D);
    end;
  end;
  HorzScrollBar.FScaled := False;
  VertScrollBar.FScaled := False;
end;

procedure TTechGradScroll.ChangeScale(M, D: Integer);
begin
  ScaleScrollBars(M, D);
  inherited ChangeScale(M, D);
end;

procedure TTechGradScroll.Resizing(State: TWindowState);
begin
  // Overridden by TCustomFrame
end;

procedure TTechGradScroll.WMSize(var Message: TWMSize);
var
  NewState: TWindowState;
begin
  Inc(FAutoRangeCount);
  try
    inherited;
    NewState := wsNormal;
    case Message.SizeType of
      SIZENORMAL: NewState := wsNormal;
      SIZEICONIC: NewState := wsMinimized;
      SIZEFULLSCREEN: NewState := wsMaximized;
    end;
    Resizing(NewState);
  finally
    Dec(FAutoRangeCount);
  end;
  FUpdatingScrollBars := True;
  try
    CalcAutoRange;
  finally
    FUpdatingScrollBars := False;
  end;
  if FHorzScrollBar.Visible or FVertScrollBar.Visible then
    UpdateScrollBars;
end;

procedure TTechGradScroll.WMHScroll(var Message: TWMHScroll);
begin
  if (Message.ScrollBar = 0) and FHorzScrollBar.Visible then
    FHorzScrollBar.ScrollMessage(Message) else
    inherited;
end;

procedure TTechGradScroll.WMVScroll(var Message: TWMVScroll);
begin
  if (Message.ScrollBar = 0) and FVertScrollBar.Visible then
    FVertScrollBar.ScrollMessage(Message) else
    inherited;
end;

procedure TTechGradScroll.AdjustClientRect(var Rect: TRect);
begin
  Rect := Bounds(-HorzScrollBar.Position, -VertScrollBar.Position,
    Max(HorzScrollBar.Range, ClientWidth), Max(ClientHeight,
    VertScrollBar.Range));
  inherited AdjustClientRect(Rect);
end;

procedure TTechGradScroll.CMBiDiModeChanged(var Message: TMessage);
var
  Save: Integer;
begin
  Save := Message.WParam;
  try
    { prevent inherited from calling Invalidate & RecreateWnd }
    if not (Self is TTechGradScroll) then Message.wParam := 1;
    inherited;
  finally
    Message.wParam := Save;
  end;
  if HandleAllocated then
  begin
    HorzScrollBar.ChangeBiDiPosition;
    UpdateScrollBars;
  end;
end;

procedure TTechGradScroll.MouseWheelHandler(var Message: TMessage); //override;
var
  pt : TPoint;
  h : HWND;
  c : TControl;
begin
  pt := mouse.Cursorpos;
  h := WindowFromPoint(pt);
 
  if h = Handle then
    inherited MouseWheelHandler(Message)
  else begin
    c := ControlAtPos( ScreenToClient(pt), true, true );
    while (c <> nil) and not(c is TScrollBox) do
      c := c.Parent;
 
    if (c <> nil) and (c is TScrollBox) then begin
      c.Perform(CM_MOUSEWHEEL, Message.WParam, Message.LParam);
      Message.Result := 1;
    end else
      inherited MouseWheelHandler(Message);
  end;
end;


procedure TTechGradScroll.CreateDirList;
var
  i: integer;
  HourPanel: THourPanel;
  SearchRec: TSearchRec;
  TechPanel: TTechPanel;
begin
try
  for i := Self.FList.Count -1 downto 0 do
    begin
      TTechPanel(Self.FList.Items[i]).Free;
      Self.FList.Delete(i);
    end;

    if FDirectory <> '' then
    begin
      HourPanel:= THourPanel.Create(Self);
      HourPanel.Parent := Self;
      HourPanel.Left := (Self.Width div 2) - (HourPanel.Width div 2);
      HourPanel.Top  := (Self.Height div 2) - (HourPanel.Height div 2);
      HourPanel.Caption := '';

      i := FindFirst(Self.FDirectory + FFilter,faArchive or faDirectory,SearchRec);
      while i = 0 do
      begin
        if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
        begin
          HourPanel.BringToFront;
          TechPanel:= TTechPanel.CreateWithParent(Self,Self);
          TechPanel.Parent := Self;
          if not Self.MenuImage then
            TechPanel.Width := Self.Width - (Self.VertScrollBar.Size + 5);
          TechPanel.Height  := Self.ItemHeight;
          TechPanel.Top     := (Self.ItemHeight+2) * Self.FList.Count;
          TechPanel.Folder  := SearchRec.Attr = faDirectory;
          TechPanel.FileName  := Self.FDirectory + SearchRec.Name;
          TechPanel.DosyaAdi  := SearchRec.Name;
          TechPanel.Selected  := false;
          TechPanel.GradBegin := clMaroon;
          TechPanel.GradEnd   :=  $00A6A6FF;
          TechPanel.GradStyle := gsArrowL;
          TechPanel.Font.Name := 'Tahoma';
          TechPanel.Font.Size := 16;
          TechPanel.GradScroll:= Self;
          TechPanel.OnClick := Self.PanelClick;
          TechPanel.Caption := SearchRec.Name;
          TechPanel.SendToBack;

          Self.FList.Add(TechPanel);
          Application.ProcessMessages;
        end;
        i := FindNext(SearchRec);
      end;
      HourPanel.Free;
    end;
except

end;

end;



end.
