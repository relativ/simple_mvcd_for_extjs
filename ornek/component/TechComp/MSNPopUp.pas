unit MSNPopUp;

interface

uses
  Windows, ExtCtrls, StdCtrls, Controls, Classes, Graphics, Forms,
  ShellApi, Dialogs;

type
  TOrientation = (mbHorizontal, mbVertical);
  TScrollSpeed = 1..50;

  TMSNPopUp = class(TComponent)
  private
    { Private declarations }
    FURL: String;
    FText: String;
    FMsgText: TStringList;
    FTitle: String;
    FPicture: TPicture;
    FWidth: Integer;
    FHeight: Integer;
    FTimeOut: Integer;
    FScrollSpeed: TScrollSpeed;
    FAllowScroll: Boolean;
    FAllowHyperlink: Boolean;
    FColor1: TColor;
    FColor2: TColor;
    FGradientOrientation: TOrientation;
    FFont: TFont;
    FHoverFont: TFont;
    FTitleFont: TFont;
    FCursor: TCursor;

    FOnClick: TNotifyEvent;

    procedure SetPicture(Value: TPicture);
    procedure SetMsgText(Value: TStringList);
  protected
    { Protected declarations }
    procedure Click; dynamic;
  public
    { Public declarations }
    procedure ShowPopUp;
  published
    { Published declarations }
    property Text: String read FText write FText;
    property MsgText: TStringList read FMsgText write SetMsgText stored True;
    property URL: String read FURL write FURL;
    property PopUpIcon: TPicture read FPicture write SetPicture stored True;
    property TimeOut: Integer read FTimeOut write FTimeOut default 10;
    property Width: Integer read FWidth write FWidth default 175;
    property Height: Integer read FHeight write FHeight default 175;
    property AllowScroll: Boolean read FAllowScroll write FAllowScroll default True;
    property AllowHyperlink: Boolean read FAllowHyperlink write FAllowHyperlink default True;
    property GradientColor1: TColor read FColor1 write FColor1;
    property GradientColor2: TColor read FColor2 write FColor2;
    property GradientOrientation: TOrientation read FGradientOrientation write FGradientOrientation default mbVertical;
    property ScrollSpeed: TScrollSpeed read FScrollSpeed write FScrollSpeed default 5;
    property Font: TFont read FFont write FFont;
    property HoverFont: TFont read FHoverFont write FHoverFont;
    property Title: String read FTitle write FTitle;
    property TitleFont: TFont read FTitleFont write FTitleFont;
    property Cursor: TCursor read FCursor write FCursor;

    property OnClick: TNotifyEvent read FOnClick write FOnClick;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

type
  TfrmMSNPopUp = class(TForm)
    pnlBorder: TPanel;
    imgIcon: TImage;
    lblText: TLabel;
    tmrExit: TTimer;
    tmrScroll: TTimer;
    lblTitle: TLabel;
    imgGradient: TImage;
    MsgText: TLabel;
    procedure lblTextMouseEnter(Sender: TObject);
    procedure lblTextMouseLeave(Sender: TObject);
    procedure lblTextClick(Sender: TObject);
    procedure tmrExitTimer(Sender: TObject);
    procedure lblTextMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tmrScrollTimer(Sender: TObject);
    procedure imgIconMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgGradientMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function CalcColorIndex(StartColor, EndColor: TColor; Steps, ColorIndex: Integer): TColor;
    function GetEdge: Integer;
    procedure PositionText;
  public
    { Public declarations }
    URL, Text, Title: String;
    TimeOut: Integer;
    Icon: TPicture;
    sWidth: Integer;
    sHeight: Integer;
    bScroll, bHyperlink: Boolean;
    Color1, Color2: TColor;
    Orientation: TOrientation;
    ScrollSpeed: TScrollSpeed;
    Font, HoverFont, TitleFont: TFont;
    StoredBorder: Integer;
    Click: TNotifyEvent;
    Cursor: TCursor;

    procedure PopUp;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

procedure Register;

implementation

{$R *.dfm}

procedure Register;
begin
  RegisterComponents('Tech', [TMSNPopUp]);
end;

procedure TMSNPopUp.ShowPopUp;
var
  MSNPopUp: TfrmMSNPopUp;
begin
  MSNPopUp := TfrmMSNPopUp.Create( Self.Owner );
  MSNPopUp.sWidth := FWidth;
  MSNPopUp.sHeight := FHeight;

  MSNPopUp.Text := FText;
  MSNPopUp.URL := FURL;
  MSNPopUp.Title := FTitle;
  MSNPopUp.TimeOut := FTimeOut;
  MSNPopUp.MsgText.Caption := MsgText.Text;

  MSNPopUp.Icon := FPicture;

  MSNPopUp.bScroll := FAllowScroll;
  MSNPopUp.bHyperlink := FAllowHyperlink;
  MSNPopUp.ScrollSpeed := FScrollSpeed;
  MSNPopUp.Font := FFont;
  MSNPopUp.HoverFont := FHoverFont;
  MSNPopUp.TitleFont := FTitleFont;
  MSNPopUp.Click := Self.OnClick;
  MSNPopUp.Cursor := FCursor;

  MSNPopUp.Color1 := FColor1;
  MSNPopUp.Color2 := FColor2;
  MSNPopUp.Orientation := FGradientOrientation;

  MSNPopUp.PopUp;
end;

procedure TMSNPopUp.SetPicture(Value: TPicture);
begin
    FPicture.Assign(Value);
end;

procedure TMSNPopUp.SetMsgText(Value: TStringList);
begin
  FMsgText.Assign(Value);
end;


constructor TMSNPopUp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FPicture := TPicture.Create;
  FMsgText := TStringList.Create;
  FFont := TFont.Create;
  FHoverFont := TFont.Create;
  FTitleFont := TFont.Create;

  FWidth := 175;
  FHeight := 175;

  FTimeOut := 10;
  FScrollSpeed := 5;

  FText := 'www.e-xtraportal.net';
  FURL := 'http://www.e-xtraportal.net/';
  FTitle := 'title';

  FCursor := crDefault;

  FColor1 := RGB(0,102,204);
  FColor2 := RGB(255,255,255);
  FGradientOrientation := mbVertical;

  FHoverFont.Style := [fsUnderline];
  FHoverFont.Color := clBlue;

  FTitleFont.Style := [fsBold];

  FAllowScroll := True;
  FAllowHyperlink := True;
end;

destructor TMSNPopUp.Destroy;
begin
  FPicture.Free;
  FFont.Free;
  FHoverFont.Free;
  FTitleFont.Free;
  FMsgText.Free;
  inherited;
end;

procedure TMSNPopUp.Click;
begin
  // Execute user-assigned method
  if Assigned(FOnClick) then
    FOnClick(Self);
end;

// form's functions

procedure TfrmMSNPopUp.CreateParams(var Params: TCreateParams);
begin
  inherited;
  with Params do begin
    Style := Style and not WS_CAPTION or WS_POPUP;
    ExStyle := ExStyle or WS_EX_TOPMOST or WS_EX_TOOLWINDOW;
    WndParent := GetDesktopwindow;
  end;
end;

function TfrmMSNPopUp.GetEdge: Integer;
var
  AppBar: TAppbarData;
begin
  Result := -1;

  FillChar( AppBar, sizeof(AppBar), 0);
  AppBar.cbSize := Sizeof(AppBar);

  if ShAppBarMessage( ABM_GETTASKBARPOS, AppBar ) <> 0 then
  begin
    if ((AppBar.rc.top = AppBar.rc.left) and (AppBar.rc.bottom > AppBar.rc.right)) then
      Result := ABE_LEFT
    else if ((AppBar.rc.top = AppBar.rc.left) and (AppBar.rc.bottom < AppBar.rc.right)) then
      Result := ABE_TOP
    else if (AppBar.rc.top > AppBar.rc.left ) then
      Result := ABE_BOTTOM
    else
      Result := ABE_RIGHT;
  end;
end;

procedure TfrmMSNPopUp.PopUp;
var
  r: TRect;
  gradient: TBitmap;
  i: Integer;
begin
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);

  Self.Height := sHeight;
  Self.Width := sWidth;

  lblText.Cursor := crHandPoint;

  case GetEdge of
    ABE_LEFT:
    begin
      Self.Left := r.Left + 5;
      Self.Top := r.Bottom - Self.Height - 5;
    end;

    ABE_TOP:
    begin
      Self.Left := r.Right - Self.Width - 5;
      Self.Top := r.Top + 5;
    end;

    ABE_BOTTOM:
    begin
      Self.Left := r.Right - Self.Width - 5;
      Self.Top := r.Bottom - 5 - Self.Height;
    end;

    ABE_RIGHT:
    begin
      Self.Left := r.Right - Self.Width - 5;
      Self.Top := r.Bottom - Self.Height - 5;
    end;
  end;

  lblTitle.Font := TitleFont;
  lblTitle.Caption := Title;

  pnlBorder.Align := alNone;
  imgGradient.Align := alNone;

  imgGradient.Width := pnlBorder.Width;
  imgGradient.Height := pnlBorder.Height;

  if SizeOf(Icon) <> 0 then
    imgIcon.Picture.Assign(Icon)
  else
    lblTitle.Left := 8;

  gradient := TBitmap.Create;
  gradient.Width := pnlBorder.Width;
  gradient.Height := pnlBorder.Height;

  if Orientation = mbVertical then
  begin
    for i := 0 to gradient.Height do
    begin
      gradient.Canvas.Pen.Color := CalcColorIndex( Color1, Color2, gradient.Height + 1, i + 1 );
      gradient.Canvas.MoveTo(0,i);
      gradient.Canvas.LineTo(gradient.width,i);
    end;
  end;

  if Orientation = mbHorizontal then
  begin
    for i := 0 to gradient.Width do
    begin
      gradient.Canvas.Pen.Color := CalcColorIndex( Color1, Color2, gradient.Height + 1, i + 1 );
      gradient.Canvas.MoveTo(i,0);
      gradient.Canvas.LineTo(i,gradient.Height);
    end;
  end;

  imgGradient.Canvas.Draw(0,0,gradient);
  gradient.Free;

  tmrExit.Interval := TimeOut * 1000;

  if bScroll then
  begin

    if (GetEdge = ABE_TOP) or (GetEdge = ABE_BOTTOM) then
    begin
      if GetEdge = ABE_BOTTOM then
        Self.Top := Self.Top + Self.Height;

      Self.Height := 1;
    end;

    if (GetEdge = ABE_LEFT) or (GetEdge = ABE_RIGHT) then
    begin
      if GetEdge = ABE_RIGHT then
        Self.Left := Self.Left + Self.Width;

      Self.Width := 1;
    end;

    tmrScroll.Enabled := True;
  end;

  if not bScroll then
    tmrExit.Enabled := True;

  ShowWindow( Self.Handle, SW_SHOWNOACTIVATE );
  Self.Visible := True;

  lblText.Font := HoverFont;
  PositionText;

  lblText.Font := Font;
  PositionText;
end;

procedure TfrmMSNPopUp.lblTextMouseEnter(Sender: TObject);
begin
    lblText.Font := HoverFont;
    PositionText;
end;

procedure TfrmMSNPopUp.lblTextMouseLeave(Sender: TObject);
begin
    lblText.Font := Font;
    PositionText;
end;

procedure TfrmMSNPopUp.PositionText;
begin
  lblText.Caption := Text;
  lblText.Width := pnlBorder.Width - 15;

  lblText.Left := Round( ( pnlBorder.Width - lblText.Width ) /2 );
  lblText.Top := Round( ( pnlBorder.Height - lblText.Height ) /2 );
end;

function TfrmMSNPopUp.CalcColorIndex(StartColor, EndColor: TColor; Steps, ColorIndex: Integer): TColor;
var
  BeginRGBValue: Array[0..2] of Byte;
  RGBDifference: Array[0..2] of Integer;
  Red, Green, Blue: Byte;
  NumColors: Integer;
begin
  // Initialize
  NumColors := Steps;
  Dec(ColorIndex);

  // Values are set
  BeginRGBValue[0] := GetRValue(ColorToRGB(StartColor));
  BeginRGBValue[1] := GetGValue(ColorToRGB(StartColor));
  BeginRGBValue[2] := GetBValue(ColorToRGB(StartColor));
  RGBDifference[0] := GetRValue(ColorToRGB(EndColor)) - BeginRGBValue[0];
  RGBDifference[1] := GetGValue(ColorToRGB(EndColor)) - BeginRGBValue[1];
  RGBDifference[2] := GetBValue(ColorToRGB(EndColor)) - BeginRGBValue[2];

  // Calculate the bands color
  Red := BeginRGBValue[0] + MulDiv(ColorIndex, RGBDifference[0], NumColors - 1);
  Green := BeginRGBValue[1] + MulDiv(ColorIndex, RGBDifference[1], NumColors - 1);
  Blue := BeginRGBValue[2] + MulDiv(ColorIndex, RGBDifference[2], NumColors - 1);

  // The final color is returned
  Result := RGB(Red, Green, Blue);
end;

procedure TfrmMSNPopUp.lblTextClick(Sender: TObject);
begin
  // when user clicks the hyperlink, and the Hyperlink
  // property is true, a browser window opens
  if bHyperlink then
  begin
    ShellExecute(0, nil, PChar(URL), nil, nil, SW_ShowDefault);
  end;
  Self.Close;
  if Assigned( Click ) then
    Click(Sender);
end;

procedure TfrmMSNPopUp.tmrExitTimer(Sender: TObject);
begin
  // after several seconds, the popup window will disappear
  Self.Close;
end;

procedure TfrmMSNPopUp.lblTextMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // close the popup window on right click
  if Button = mbRight then
  begin
    Self.Close;
    if Assigned( Click ) then
      Click(Sender);
  end;
end;

procedure TfrmMSNPopUp.tmrScrollTimer(Sender: TObject);
var
  r: TRect;
begin
  SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);

  if StoredBorder = 0 then
    StoredBorder := GetEdge;

  case StoredBorder of
    ABE_LEFT:
    begin
      if (Self.Width + Scrollspeed) < sWidth then
      begin
        Self.Width := Self.Width + ScrollSpeed;
      end
      else
      begin
        Self.Width := sWidth;
        tmrScroll.Enabled := False;
        tmrExit.Enabled := True;
      end;
    end;

    ABE_TOP:
    begin
      if (Self.Height + ScrollSpeed) < sHeight then
      begin
        Self.Height := Self.Height + ScrollSpeed;
      end
      else
      begin
        Self.Height := sHeight;
        tmrScroll.Enabled := False;
        tmrExit.Enabled := True;
      end;
    end;

    ABE_BOTTOM:
    begin
      if (Self.Height + ScrollSpeed) < sHeight then
      begin
        Self.Height := Self.Height + ScrollSpeed;
        Self.Top := Self.Top - ScrollSpeed;
      end
      else
      begin
        Self.Height := sHeight;
        Self.Top := r.Bottom - 5 - Self.Height;
        tmrScroll.Enabled := False;
        tmrExit.Enabled := True;
      end;
    end;

    ABE_RIGHT:
    begin
      if (Self.Width + ScrollSpeed) < sWidth then
      begin
        Self.Width := Self.Width + ScrollSpeed;
        Self.Left := Self.Left - ScrollSpeed;
      end
      else
      begin
        Self.Width := sWidth;
        Self.Left := r.Right - 5 - Self.Width;
        tmrScroll.Enabled := False;
        tmrExit.Enabled := True;
      end;
    end;
  end;
end;

procedure TfrmMSNPopUp.imgIconMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // close the popup window on click
  Self.Close;
  if Assigned( Click ) then
    Click(Sender);
end;

procedure TfrmMSNPopUp.imgGradientMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  // close the popup window on click
  Self.Close;
  if Assigned( Click ) then
    Click(Sender);
end;

procedure TfrmMSNPopUp.FormShow(Sender: TObject);
begin
  lblText.AutoSize := False;
  lblText.Width := 10;
  lblText.Height := 10;
  lblText.AutoSize := True;
  PositionText;
end;

procedure TfrmMSNPopUp.Button1Click(Sender: TObject);
begin
  PositionText;
end;

end.
 