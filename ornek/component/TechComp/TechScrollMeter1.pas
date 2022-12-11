unit TechScrollMeter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  TeEngine, Series, TeeProcs, Chart, VrDigit, VrControls, VrMeter,
  ExtCtrls, StdCtrls,VrClasses;

type
  TTechScrollMeter = class;
  TColumnItem = class;

  TTechMeter = class(TPanel)
  private
    leftPanel: TPanel;
    analogSayac: TVrMeter;
    digitalSayac: TVrDigitGroup;
    namePanel: TPanel;
    Chart: TChart;
    Series: TFastLineSeries;
    captionPanel: TPanel;
  protected

  public
    constructor CreateWithParent(AOwner: TComponent; AParent: TWinControl);
    destructor Destroy; override;
  published
    property ChartComp: TChart read Chart write Chart;
    property ChartSeries: TFastLineSeries read Series write Series;
    property AnalogSaat: TVrMeter read analogSayac write analogSayac;
    property DigitalSaat: TVrDigitGroup read digitalSayac write digitalSayac;
    property CaptionBlock: TPanel read captionPanel write captionPanel;
    property NameBlock: TPanel read namePanel write namePanel;
  end;

  TTechMeterItem = class(TCollectionItem)
  private
    FTechMeter: TTechMeter;
    FName: string;
    FOrder: integer;
    procedure SetOrder(const Value: Integer);
    function  GetOrder: Integer;
  protected
    function GetDisplayName: string; override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
    property Name: string read FName write FName;
    property Meter: TTechMeter read FTechMeter write FTechMeter;
    property Sira : integer read GetOrder write SetOrder;
  end;

  TTechMeterList = class(TOwnedCollection)
  private
    function GetItem(Index: Integer): TTechMeterItem;
    procedure SetItem(Index: Integer; const Value: TTechMeterItem);
  protected

  public
    Parent: TPanel;
    ParentItem: TColumnItem;
    constructor Create(AOwner: TPersistent);
    destructor Destroy; override;

    function Add: TTechMeterItem;
    function IndexOfName(const AName: string): Integer;
    function ItemByName(const AName: string): TTechMeterItem;
    property Items[Index: Integer]: TTechMeterItem read GetItem write SetItem; default;
  end;

  TColumnPanel = class(TPanel)
  private

  protected

  public

  published

  end;

  TColumnItem = class(TCollectionItem)
  private
    FName: string;
    FOrder: integer;
    FMeterList: TTechMeterList;
    procedure SetMeterList(const Value: TTechMeterList);
    procedure SetOrder(const Value: Integer);
    function  GetOrder: Integer;
  protected
    function GetDisplayName: string; override;
  public
    FColumnPanel: TColumnPanel;
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
    property Name: string read FName write FName;
    property MeterList: TTechMeterList read FMeterList write SetMeterList;
    property Sira : integer read GetOrder write SetOrder;
  end;

  TColumList = class(TOwnedCollection)
  private

    function GetItem(Index: Integer): TColumnItem;
    procedure SetItem(Index: Integer; const Value: TColumnItem);
  protected

  public
    Parent: TTechScrollMeter;
    constructor Create(AOwner: TPersistent);
    destructor Destroy; override;

    function Add: TColumnItem;
    procedure Delete(Index: Integer);
    property Items[Index: Integer]: TColumnItem read GetItem write SetItem; default;
  published
 
  end;


  TTechScrollMeter = class(TScrollBox)
  private

    FColums   : TColumList;
    procedure SetColumns(Value: TColumList);
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
  protected

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Columns: TColumList read FColums write SetColumns;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechScrollMeter]);
end;

{---------------------------TTechMeter-----------------------------------------}
constructor TTechMeter.CreateWithParent(AOwner: TComponent; AParent: TWinControl);
begin
  inherited Create(AOwner);
  Align := alTop;
  Parent := AParent;
  Height := 185;
  BevelOuter := bvNone;
  BorderWidth := 5;
  Color := clGreen;

  leftPanel   := TPanel.Create(AOwner);
  leftPanel.Parent := Self;
  leftPanel.Left := 5;
  leftPanel.Top := 21;
  leftPanel.Width := 190;
  leftPanel.Height := 159;
  leftPanel.Align := alLeft;
  leftPanel.BevelOuter := bvNone;
  leftPanel.BorderWidth := 4;
  leftPanel.Color := clBlack;
  leftPanel.TabOrder := 0;

  analogSayac   := TVrMeter.Create(AOwner);
  analogSayac.Parent := leftPanel;
  analogSayac.Left := 4;
  analogSayac.Top := 4;
  analogSayac.Width := 182;
  analogSayac.Height := 91;
  analogSayac.MaxValue := 30;
  analogSayac.Scale.Percent1 := 60;
  analogSayac.Scale.Ticks := 31;
  analogSayac.NeedleColor := clYellow;
  analogSayac.Bevel.InnerShadow := clBtnShadow;
  analogSayac.Bevel.InnerHighlight := clBtnHighlight;
  analogSayac.Bevel.InnerWidth := 1;
  analogSayac.Bevel.InnerStyle := bsNone;
  analogSayac.Bevel.InnerSpace := 0;
  analogSayac.Bevel.InnerColor := clBlack;
  analogSayac.Bevel.OuterShadow := clBtnShadow;
  analogSayac.Bevel.OuterHighlight := clBtnHighlight;
  analogSayac.Bevel.OuterStyle := bsRaised;
  analogSayac.Bevel.OuterOutline := osOuter;
  analogSayac.Bevel.Visible := False;
  analogSayac.Labels := 6;
  analogSayac.LabelOffsetX := 10;
  analogSayac.Align := alClient;
  analogSayac.Color := clBlack;
  analogSayac.Font.Charset := DEFAULT_CHARSET;
  analogSayac.Font.Color := clSilver;
  analogSayac.Font.Height := -11;
  analogSayac.Font.Name := 'Arial';
  analogSayac.Font.Style := [];
  analogSayac.ParentColor := False;
  analogSayac.ParentFont := False;


  digitalSayac   := TVrDigitGroup.Create(AOwner);
  digitalSayac.Parent := leftPanel;
  digitalSayac.Left := 4;
  digitalSayac.Top := 95;
  digitalSayac.Width := 182;
  digitalSayac.Height := 37;
  digitalSayac.Digits := 5;
  digitalSayac.Palette.Low := clBlack;
  digitalSayac.Palette.High := clLime;
  digitalSayac.Align := alBottom;


  namePanel   := TPanel.Create(AOwner);
  namePanel.Parent := leftPanel;
  namePanel.Left := 4;
  namePanel.Top := 132;
  namePanel.Width := 182;
  namePanel.Height := 23;
  namePanel.Align := alBottom;
  namePanel.BevelOuter := bvNone;
  namePanel.Color := clBlack;
  namePanel.Font.Charset := DEFAULT_CHARSET;
  namePanel.Font.Color := clWhite;
  namePanel.Font.Height := -11;
  namePanel.Font.Name := 'MS Sans Serif';
  namePanel.Font.Style := [];
  namePanel.ParentFont := False;
  namePanel.TabOrder := 0;



  Chart   := TChart.Create(AOwner);
  Chart.Parent := Self;
  Chart.Left := 195;
  Chart.Top := 21;
  Chart.Width := 273;
  Chart.Height := 159;
  Chart.BackWall.Brush.Color := clWhite;
  Chart.View3D := False;
  Chart.Align := alClient;
  Chart.BevelOuter := bvNone;
  Chart.Color := clBlack;
  Chart.TabOrder := 1;
  Chart.Legend.Visible := false;

  Series   := TFastLineSeries.Create(AOwner);
  Series.ParentChart := Chart;
  Series.Marks.ArrowLength := 8;
  Series.Marks.Visible := False;
  Series.SeriesColor := clLime;
  Series.Title := '';
  Series.LinePen.Color := clWhite;
  Series.XValues.DateTime := True;
  Series.XValues.Name := 'X';
  Series.XValues.Multiplier := 1.000000000000000000;
  Series.XValues.Order := loAscending;
  Series.YValues.DateTime := False;
  Series.YValues.Name := 'Y';
  Series.YValues.Multiplier := 1.000000000000000000;
  Series.YValues.Order := loNone;

  captionPanel   := TPanel.Create(AOwner);
  captionPanel.Parent := Self;
  captionPanel.Left := 5;
  captionPanel.Top := 5;
  captionPanel.Width := 463;
  captionPanel.Height := 16;
  captionPanel.Align := alTop;
  captionPanel.BevelOuter := bvNone;
  captionPanel.BorderWidth := 3;
  captionPanel.Color := clMoneyGreen;
  captionPanel.TabOrder := 2;
end;

destructor TTechMeter.Destroy;
begin
  analogSayac.Free;
  digitalSayac.Free;
  namePanel.Free;
  leftPanel.Free;
  Series.Free;
  Chart.Free;
  captionPanel.Free;
  inherited Destroy;
end;

{---------------------------TTechMeterItem-------------------------------------}
constructor TTechMeterItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FTechMeter := TTechMeter.CreateWithParent(TTechMeterList(Collection).Parent,TTechMeterList(Collection).Parent);
  TTechMeterList(Collection).ParentItem.FColumnPanel.Height := TTechMeterList(Collection).Count * 185;
end;

destructor TTechMeterItem.Destroy;
begin
  FTechMeter.Free;
  inherited Destroy;
end;

procedure TTechMeterItem.Assign(Source: TPersistent);
begin
  if Source is TTechMeterItem then
  begin
    if Source <> Self then
    begin
      Name := TTechMeterItem(Source).Name;
    end;
  end
  else
    inherited Assign(Source);
end;

function TTechMeterItem.GetDisplayName: string;
begin
  Result := Name;
  if Result = '' then
    Result := inherited GetDisplayName;
end;

procedure TTechMeterItem.SetOrder(const Value: Integer);
var
  i: integer;
begin
  if FOrder <> Value then
  begin
    if FTechMeter.Parent <> nil then
      TTechMeter(FTechMeter.Parent).SetChildOrder(FTechMeter, Value);
    FOrder := GetOrder;
    TTechMeter(FTechMeter.Parent).RequestAlign;

    for i := 0 to FTechMeter.Parent.ControlCount -1 do
      FTechMeter.Parent.Controls[i].Align := alNone;
    for i := 0 to FTechMeter.Parent.ControlCount -1 do
      FTechMeter.Parent.Controls[i].Align := alTop;

  end;
end;

function TTechMeterItem.GetOrder: Integer;
var
  I: Integer;
begin
  Result := FOrder;
  if FTechMeter.Parent <> nil then
  begin
    for I := 0 to FTechMeter.Parent.ControlCount - 1 do
      if FTechMeter.Parent.Controls[I] = FTechMeter then
      begin
        Result := I;
        Break;
      end;
  end;
end;


{---------------------------TColumItem-------------------------------------}

constructor TColumnItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FColumnPanel:= TColumnPanel.Create(TColumList(Collection).Parent);
  FColumnPanel.Parent := TColumList(Collection).Parent;
  FColumnPanel.Align := alNone;
  FColumnPanel.Align := alLeft;
  FMeterList := TTechMeterList.Create(FColumnPanel);
  FMeterList.ParentItem := Self;
  TTechScrollMeter(TColumList(Collection).Parent).Width := TTechScrollMeter(TColumList(Collection).Parent).Width +1;
  TTechScrollMeter(TColumList(Collection).Parent).Width := TTechScrollMeter(TColumList(Collection).Parent).Width -1;
end;

procedure TColumnItem.SetOrder(const Value: Integer);
var
  i: integer;
begin
  if FOrder <> Value then
  begin
    if FColumnPanel.Parent <> nil then
      TTechScrollMeter(FColumnPanel.Parent).SetChildOrder(FColumnPanel, Value);
    FOrder := GetOrder;
    TTechScrollMeter(FColumnPanel.Parent).RequestAlign;

    for i := 0 to FColumnPanel.Parent.ControlCount -1 do
      FColumnPanel.Parent.Controls[i].Align := alNone;
    for i := 0 to FColumnPanel.Parent.ControlCount -1 do
      FColumnPanel.Parent.Controls[i].Align := alLeft;
  end;
end;

function TColumnItem.GetOrder: Integer;
var
  I: Integer;
begin
  Result := FOrder;
  if FColumnPanel.Parent <> nil then
  begin
    for I := 0 to FColumnPanel.Parent.ControlCount - 1 do
      if FColumnPanel.Parent.Controls[I] = FColumnPanel then
      begin
        Result := I;
        Break;
      end;
  end;
end;

destructor TColumnItem.Destroy;
begin
  FMeterList.Free;
  FColumnPanel.Free;
  inherited Destroy;
end;

procedure TColumnItem.SetMeterList(const Value: TTechMeterList);
begin
    FMeterList.Assign(Value);
end;

procedure TColumnItem.Assign(Source: TPersistent);
begin
  if Source is TColumnItem then
  begin
    if Source <> Self then
    begin
      Name := TColumnItem(Source).Name;
    end;
  end
  else
    inherited Assign(Source);
end;

function TColumnItem.GetDisplayName: string;
begin
  Result := Name;
  if Result = '' then
    Result := inherited GetDisplayName;
end;


{---------------------------TColumList-------------------------------------}

constructor TColumList.Create(AOwner: TPersistent);
begin
  if not (AOwner is TTechScrollMeter) then
    raise Exception.Create('TechMeterList Sahibi Yanlýþ Görünüyor.');
  inherited Create(AOwner, TColumnItem);
  Parent := TTechScrollMeter(AOwner);
end;

destructor TColumList.Destroy;
var
  i: integer;
begin
  for i := Count - 1 downto 0 do
    Items[i].Free;

  inherited Destroy;
end;

function TColumList.GetItem(Index: Integer): TColumnItem;
begin
    Result := TColumnItem(inherited Items[Index]);
end;

procedure TColumList.SetItem(Index: Integer; const Value: TColumnItem);
begin
    inherited Items[Index] := Value;
end;

function TColumList.Add: TColumnItem;
begin
  Result := TColumnItem(inherited Add);
end;

procedure TColumList.Delete(Index: Integer);
begin
  inherited Delete(Index);
  TTechScrollMeter(Parent).Width := TTechScrollMeter(Parent).Width +1;
  TTechScrollMeter(Parent).Width := TTechScrollMeter(Parent).Width -1;
end;

{---------------------------TTechMeterList-------------------------------------}
constructor TTechMeterList.Create(AOwner: TPersistent);
begin
  if not (AOwner is TPanel) then
    raise Exception.Create('TechMeterList Sahibi Yanlýþ Görünüyor.');
  inherited Create(AOwner, TTechMeterItem);
  Parent := TPanel(AOwner);
end;

destructor TTechMeterList.Destroy;
var
  i: integer;
begin
  for i := Count -1 downto 0 do
    Items[i].Free;
  inherited Destroy;
end;

function TTechMeterList.GetItem(Index: Integer): TTechMeterItem;
begin
  Result := TTechMeterItem(inherited Items[Index]);
end;

procedure TTechMeterList.SetItem(Index: Integer; const Value: TTechMeterItem);
begin
  inherited Items[Index] := Value;
end;

function TTechMeterList.Add: TTechMeterItem;
begin
  Result := TTechMeterItem(inherited Add);
end;

function TTechMeterList.IndexOfName(const AName: string): Integer;
begin
  for Result := 0 to Count - 1 do
    if AnsiSameText(AName, Items[Result].Name) then
      Exit;
  Result := -1;
end;

function TTechMeterList.ItemByName(const AName: string): TTechMeterItem;
var
  I: Integer;
begin
  I := IndexOfName(AName);
  if I >= 0 then
    Result := Items[I]
  else
    Result := nil;
end;

{---------------------------TTechScrollMeter-----------------------------------}

constructor TTechScrollMeter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FColums := TColumList.Create(Self);
end;

destructor TTechScrollMeter.Destroy; 
begin
  FColums.Free;
  inherited Destroy;
end;

procedure TTechScrollMeter.SetColumns(Value: TColumList);
begin
  FColums.Assign(Value);
end;

procedure TTechScrollMeter.WMSize(var Message: TWMSize);
var
  i: integer;
begin
  for i := 0 to Columns.Count - 1 do
  begin
    Columns.Items[i].FColumnPanel.Width := (Width - 5) div Columns.Count;
  end;
end;


end.
