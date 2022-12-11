unit TechKlavye;

interface

uses
  Windows, SysUtils, Classes, Controls, ExtCtrls, TechGradPanel,
  pngimage, StdCtrls, Buttons, Graphics, TechUtilitys, Messages, Forms;

type
  TButtonType = (btButton,btSpace,btEnter,btTextBox);
  TTechKlavye = class;


  TTechKlavye = class(TCustomPanel)
  private
    Image: TImage;
    cLabel: TLabel;
    FButtonType: TButtonType;
    FTransparent: boolean;
    SButton: TSpeedButton;
    FButtonClick: TNotifyEvent;
    FCornerRadius: integer;
    procedure SetButtonType   (val: TButtonType);
    procedure SetTransparent  (Value: boolean);
    procedure SetText         (const Value: TCaption);
    function  GetText         : TCaption;

    procedure SetFont         (const Value: TFont);
    function  GetFont         : TFont;
    procedure BackButtonClick (Sender: TObject);
    procedure SetCornerRadius (Value: integer);

  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  published
    property ButtonType: TButtonType read FButtonType write SetButtonType;
    property Transparent  : boolean           read FTransparent   write SetTransparent;
    property Caption: TCaption read GetText write SetText;
    property Font   : TFont read GetFont write SetFont;
    property OnButtonClick: TNotifyEvent read FButtonClick write FButtonClick;
    property OvalSize   : integer      read FCornerRadius    write SetCornerRadius;
  end;

procedure Register;

implementation

{$R sanalklavye.RES}

procedure Register;
begin
  RegisterComponents('Tech', [TTechKlavye]);
end;

constructor TTechKlavye.Create(AOwner: TComponent);
var
  png: TPNGObject;
begin
  inherited Create(AOwner);
  png:= TPNGObject.Create;
  png.LoadFromResourceName(HInstance,'BUTTON');
  Image := TImage.Create(Self);
  Image.Parent := Self;
  Image.AutoSize := true;
  Image.Left := 0;
  Image.Top  := 0;
  Image.Picture.Assign(png);
  png.Free;
  Width := Image.Width;
  Height := Image.Height;
  cLabel:= TLabel.Create(Self);
  cLabel.Parent := Self;
  cLabel.AutoSize := false;
  cLabel.Transparent := true;
  cLabel.Caption := '';
  cLabel.Align := alClient;
  cLabel.Alignment := taCenter;
  cLabel.Layout := tlCenter;
  SButton:= TSpeedButton.Create(Self);
  SButton.Parent := self;
  SButton.Flat := true;
  SButton.Align := alClient;
  SButton.OnClick := BackButtonClick;

end;

destructor  TTechKlavye.Destroy;
begin
  Image.Free;
  inherited Destroy;
end;

procedure TTechKlavye.SetButtonType(val: TButtonType);
var
  png: TPNGObject;
begin
  FButtonType := val;
  png := TPNGObject.Create;
  case FButtonType of
    btButton: begin
      png.LoadFromResourceName(HInstance,'BUTTON');
      Image.Picture.Assign(png);
      cLabel.Align := alClient;
      cLabel.Alignment := taCenter;
      cLabel.Layout := tlCenter;
      Width := Image.Width;
      Height := Image.Height;
      SButton.Width := Width - 16;
      SButton.Height := Height -16 ;
      SButton.Top := 8;
      SButton.Left := 8;
    end;
    btSpace : begin
      png.LoadFromResourceName(HInstance,'SPACE');
      Image.Picture.Assign(png);
      cLabel.Align := alClient;
      cLabel.Alignment := taCenter;
      cLabel.Layout := tlCenter;
      Width := Image.Width;
      Height := Image.Height;
      SButton.Width := Width - 16;
      SButton.Height := Height -16 ;
      SButton.Top := 8;
      SButton.Left := 8;
    end;
    btEnter : begin
      png.LoadFromResourceName(HInstance,'ENTER');
      Image.Picture.Assign(png);
      cLabel.Align := alClient;
      cLabel.Alignment := taCenter;
      cLabel.Layout := tlCenter;
      Width := Image.Width;
      Height := Image.Height;
      SButton.Width := Width - 16;
      SButton.Height := Height -16 ;
      SButton.Top := 8;
      SButton.Left := 8;
    end;
    btTextBox : begin
      png.LoadFromResourceName(HInstance,'TEXTBOX');
      Image.Picture.Assign(png);
      Width := Image.Width;
      Height := Image.Height;
      cLabel.Align := alNone;
      cLabel.Alignment := taLeftJustify;
      cLabel.Layout := tlCenter;
      cLabel.Left := 12;
      cLabel.Top := 4;
      cLabel.Width := Width - 131;
      cLabel.Height := Height;
      SButton.Align := alNone;
      SButton.Width := 95;
      SButton.Height := Height -8 ;
      SButton.Top := 4;
      SButton.Left := 1083;
    end;
  end;
  png.Free;
end;

procedure TTechKlavye.BackButtonClick(Sender: TObject);
var
  tmp : string;
begin
  if FButtonType = btTextBox then
  begin
    tmp := cLabel.Caption;
    delete(tmp,length(tmp),1);
    cLabel.Caption := tmp;
  end;

  if Assigned(FButtonClick) then FButtonClick(Self);
end;

procedure TTechKlavye.SetTransparent (Value: boolean);
var
  I: integer;
begin
  FTransparent:= value;

  for I:=0 to ControlCount-1 do
    Controls[I].Invalidate;
  invalidate;
end;

procedure TTechKlavye.Paint;
begin
  if FTransparent then
    CopyParentImage(Self, Canvas);
end;

procedure TTechKlavye.SetCornerRadius(Value: integer);
begin
  FCornerRadius:= Value;
  SetWindowRgn(Handle,CreateRoundRectRgn(0,0,Width,Height,FCornerRadius,FCornerRadius),true);
  invalidate;
end;

procedure TTechKlavye.SetText(const Value: TCaption);
begin
  cLabel.Caption := Value;

end;

function TTechKlavye.GetText: TCaption;
begin
  Result := cLabel.Caption;
end;

procedure TTechKlavye.SetFont         (const Value: TFont);
begin
  cLabel.Font.Assign(Value);
end;

function  TTechKlavye.GetFont         : TFont;
begin
  Result := cLabel.Font;
end;

end.