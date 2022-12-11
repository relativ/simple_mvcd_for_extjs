unit TechQRBarcode;

interface

uses
  Classes, SysUtils, Graphics, Barcode, QRCTRLS,DB,DBCtrls,Dialogs;

type
  TTechQRBarcode = class;

  TTechQRBarcodeDataLink=class(TDataLink)
  private
        FField: TField;
        FFieldName: string;
        FControl: TComponent;
        FEditing: Boolean;
        FModified: Boolean;
        FOnDataChange: TNotifyEvent;
        FOnEditingChange: TNotifyEvent;
        FOnUpdateData: TNotifyEvent;
        FOnActiveChange: TNotifyEvent;
        FDataSource: TDataSource;
        function GetCanModify: Boolean;
        procedure SetField(Value: TField);
        procedure SetFieldName(const Value: string);
        procedure UpdateField;
  protected
        procedure ActiveChanged; override;
        procedure LayoutChanged; override;
        procedure RecordChanged(Field: TField); override;
        procedure UpdateData; override;
  public
        constructor Create;
        function Edit: Boolean;
        procedure Modified;
        procedure Reset;
        property CanModify: Boolean read GetCanModify;
        property Control: TComponent read FControl write FControl;
        property Editing: Boolean read FEditing;
        property Field: TField read FField;
        property FieldName: string read FFieldName write SetFieldName;
        property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
        property OnEditingChange: TNotifyEvent read FOnEditingChange write FOnEditingChange;
        property OnUpdateData: TNotifyEvent read FOnUpdateData write FOnUpdateData;
        property OnActiveChange: TNotifyEvent read FOnActiveChange write FOnActiveChange;
  end;

  TTechBarcodeCreate = class(TTechBarcode)
  private

  public
        constructor Create(Owner:TComponent); override;
  end;

  TTechQRBarcode = class(TQRImage)
  private
    FBarcode :TTechBarcodeCreate;
    FDataLink: TTechQRBarcodeDataLink;
    FIgnoreOnChange :Boolean;
    GetDataSource: TDataSource;
    FGorunum: boolean;
    procedure FixupSize;
    procedure BarcodeToCanvas;
    procedure SetBarcode(const Value: TTechBarcode);
    function GetBarcode: TTechBarcode;
    function GetAngle: double;
    function GetCheckSum: boolean;
    function GetCheckSumMethod: TCheckSumMethod;
    function GetColor: TColor;
    function GetColorBar: TColor;
    function GetModul: integer;
    function GetRatio: double;
    function GetShowText: TBarcodeOption;
    function GetText: string;
    function GetTyp: TBarcodeType;
    procedure SetAngle(const Value: double);
    procedure SetCheckSum(const Value: boolean);
    procedure SetCheckSumMethod(const Value: TCheckSumMethod);
    procedure SetColor(const Value: TColor);
    procedure SetColorBar(const Value: TColor);
    procedure SetModul(const Value: integer);
    procedure SetRatio(const Value: double);
    procedure SetShowText(const Value: TBarcodeOption);
    procedure SetText(const Value: string);
    procedure SetTyp(const Value: TBarcodeType);
    function GetBarcodeHeight: Integer;
    function GetBarcodeWidth: Integer;
    procedure SetBarcodeHeight(const Value: Integer);
    procedure SetBarcodeWidth(const Value: Integer);
    function GetField: string;
    procedure SetField(const Value: string);
    procedure ActiveChange(Sender: TObject);
    procedure DataChange(Sender: TObject);
    function GetDataSet : TDataSet;
    procedure SetDataSet(Val: TDataSet);
    procedure SetGorunum(Val: boolean);
  protected
    procedure Loaded; override;
    procedure Resize; override;
    procedure OnBarcodeChange(Sender :TObject);
  public
    constructor Create(AOwner :TComponent); override;
    destructor Destroy; override;
    property Barcode :TTechBarcode read GetBarcode write SetBarcode;
  published
        property Angle :double read GetAngle write SetAngle;
        property BarcodeHeight :Integer read GetBarcodeHeight write SetBarcodeHeight;
        property BarcodeWidth :Integer read GetBarcodeWidth write SetBarcodeWidth;
        property Checksum :boolean read GetCheckSum write SetCheckSum default FALSE;
        property CheckSumMethod :TCheckSumMethod read GetCheckSumMethod write SetCheckSumMethod default csmModulo10;
        property Color :TColor read GetColor write SetColor default clWhite;
        property ColorBar :TColor read GetColorBar write SetColorBar default clBlack;
        property Modul :integer read GetModul write SetModul;
        property Ratio :double read GetRatio write SetRatio;
        property ShowText :TBarcodeOption read GetShowText write SetShowText default bcoNone;
        property Text :string read GetText write SetText;
        property KodTuru :TBarcodeType read GetTyp write SetTyp default bcCode_2_5_interleaved;
        property NullVisible :boolean read FGorunum write SetGorunum default false;
        property DataSet:TDataSet read GetDataSet write SetDataSet;
        property DataField: string read GetField write SetField;

    property Picture stored False;
  end;

procedure Register;

implementation

uses
  Math;

procedure Register;
begin
  RegisterComponents('Tech',[TTechQRBarcode]);
end;

{TTechQRBarcodeDataLink}

constructor TTechQRBarcodeDataLink.Create;
begin
  inherited Create;
  VisualControl := True;
  FDataSource:= TDataSource.Create(nil);
  DataSource := FDataSource;
end;

function TTechQRBarcodeDataLink.GetCanModify: Boolean;
begin
  Result := not ReadOnly and (Field <> nil) and Field.CanModify;
end;

procedure TTechQRBarcodeDataLink.SetField(Value: TField);
begin
  if FField <> Value then
  begin
    FField := Value;
    EditingChanged;
    RecordChanged(nil);
  end;
end;

procedure TTechQRBarcodeDataLink.SetFieldName(const Value: string);
begin
  if FFieldName <> Value then
  begin
    FFieldName :=  Value;
    UpdateField;
  end;
end;

procedure TTechQRBarcodeDataLink.UpdateField;
begin
  if Active and (FFieldName <> '') then
  begin
    if Assigned(FControl) then
      SetField(GetFieldProperty(DataSource.DataSet, FControl, FFieldName)) else
      SetField(DataSource.DataSet.FieldByName(FFieldName));
  end else
    SetField(nil);
end;

procedure TTechQRBarcodeDataLink.ActiveChanged;
begin
  UpdateField;
  if Assigned(FOnActiveChange) then FOnActiveChange(Self);
end;

procedure TTechQRBarcodeDataLink.LayoutChanged;
begin
  UpdateField;
end;

procedure TTechQRBarcodeDataLink.RecordChanged(Field: TField);
begin
  if (Field = nil) or (Field = FField) then
  begin
    if Assigned(FOnDataChange) then FOnDataChange(Self);
    FModified := False;
  end;
end;

procedure TTechQRBarcodeDataLink.UpdateData;
begin
  if FModified then
  begin
    if (Field <> nil) and Assigned(FOnUpdateData) then FOnUpdateData(Self);
    FModified := False;
  end;
end;

function TTechQRBarcodeDataLink.Edit: Boolean;
begin
  if CanModify then inherited Edit;
  Result := FEditing;
end;

procedure TTechQRBarcodeDataLink.Modified;
begin
  FModified := True;
end;

procedure TTechQRBarcodeDataLink.Reset;
begin
  RecordChanged(nil);
end;

{TTechBarcodeCreate}

constructor TTechBarcodeCreate.Create(Owner:TComponent);
begin
  inherited Create(owner);
end;

{ TTechQRBarcode }

procedure TTechQRBarcode.SetGorunum(Val: boolean);
begin
        FGorunum := Val;
end;

function TTechQRBarcode.GetDataSet : TDataSet;
begin
        Result := FDataLink.DataSet;
end;

procedure TTechQRBarcode.SetDataSet(Val: TDataSet);
begin
        FDataLink.DataSource.DataSet := Val;
end;

function TTechQRBarcode.GetField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TTechQRBarcode.SetField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TTechQRBarcode.ActiveChange(Sender: TObject);
begin
        if (Barcode <> nil) and (FDataLink.Field <> nil) and (FDataLink.Field.DataSet.Active = true) and (FDataLink.DataSet.RecordCount > 0) then
        begin
                Barcode.Text := FDataLink.Field.AsString;
                if Barcode.Text = '' then
                begin
                        if FGorunum = false then
                                Enabled := false
                        else
                                Enabled := true;
                end else Enabled := true;
        end;
end;

procedure TTechQRBarcode.DataChange(Sender: TObject);
begin
        if (Barcode <> nil) and (FDataLink.Field <> nil) and (FDataLink.Field.DataSet.Active = true)  and (FDataLink.DataSet.RecordCount > 0) then
        begin
                Barcode.Text := FDataLink.Field.AsString;
                if Barcode.Text = '' then
                begin
                        if FGorunum = false then
                                Enabled := false
                        else
                                Enabled := true;
                end else Enabled := true;
        end;
end;

procedure TTechQRBarcode.BarcodeToCanvas;
begin
  Picture.Assign(nil);
  FixupSize;
  Barcode.DrawBarcode(Self.Canvas);
end;

constructor TTechQRBarcode.Create(AOwner :TComponent);
begin
  inherited Create(AOwner);
  FBarcode := TTechBarcodeCreate.Create(Self);
  FBarcode.OnChange := OnBarcodeChange;
  FBarcode.Height := 50;

  FDataLink := TTechQRBarcodeDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnActiveChange := ActiveChange;
  GetDataSource := FDataLink.DataSource;

end;

destructor TTechQRBarcode.Destroy;
begin
  FDataLink.Free;
  Barcode.Free;
  inherited Destroy;
end;

procedure TTechQRBarcode.FixupSize;
begin
  if (not (csLoading in ComponentState))then
  begin
    FIgnoreOnChange := True;
    try
      Height := Barcode.CanvasHeight;
      Width := Barcode.CanvasWidth;
    finally
      FIgnoreOnChange := False;
    end;
  end;
end;

function TTechQRBarcode.GetAngle: double;
begin
  Result := FBarcode.Angle;
end;

function TTechQRBarcode.GetBarcode: TTechBarcode;
begin
  Result := FBarcode;
end;

function TTechQRBarcode.GetBarcodeHeight: Integer;
begin
  Result := Barcode.Height;
end;

function TTechQRBarcode.GetBarcodeWidth: Integer;
begin
  Result := Barcode.Width;
end;

function TTechQRBarcode.GetCheckSum: boolean;
begin
  Result := Barcode.CheckSum;
end;

function TTechQRBarcode.GetCheckSumMethod: TCheckSumMethod;
begin
  Result := Barcode.CheckSumMethod;
end;

function TTechQRBarcode.GetColor: TColor;
begin
  Result := Barcode.Color;
end;

function TTechQRBarcode.GetColorBar: TColor;
begin
  Result := Barcode.ColorBar;
end;

function TTechQRBarcode.GetModul: integer;
begin
  Result := Barcode.Modul;
end;

function TTechQRBarcode.GetRatio: double;
begin
  Result := Barcode.Ratio;
end;

function TTechQRBarcode.GetShowText: TBarcodeOption;
begin
  Result := Barcode.ShowText;
end;

function TTechQRBarcode.GetText: string;
begin
  Result := Barcode.Text;
end;

function TTechQRBarcode.GetTyp: TBarcodeType;
begin
  Result := Barcode.Typ;
end;

procedure TTechQRBarcode.Loaded;
begin
  inherited;
  BarcodeToCanvas;
end;

procedure TTechQRBarcode.OnBarcodeChange(Sender: TObject);
begin
  if FIgnoreOnChange then EXIT;

  if (not (csLoading in ComponentState)) then
    BarcodeToCanvas;
end;

procedure TTechQRBarcode.Resize;
begin
  inherited;
  FixupSize;
end;

procedure TTechQRBarcode.SetAngle(const Value: double);
begin
  Barcode.Angle := Value;
end;

procedure TTechQRBarcode.SetBarcode(const Value: TTechBarcode);
begin
  FBarcode.Assign(Value);
end;

procedure TTechQRBarcode.SetBarcodeHeight(const Value: Integer);
begin
  Barcode.Height := Value;
end;

procedure TTechQRBarcode.SetBarcodeWidth(const Value: Integer);
begin
  Barcode.Width := Value;
end;

procedure TTechQRBarcode.SetCheckSum(const Value: boolean);
begin
  Barcode.CheckSum := Value;
end;

procedure TTechQRBarcode.SetCheckSumMethod(const Value: TCheckSumMethod);
begin
  Barcode.CheckSumMethod := Value;
end;

procedure TTechQRBarcode.SetColor(const Value: TColor);
begin
  Barcode.Color := Value;
end;

procedure TTechQRBarcode.SetColorBar(const Value: TColor);
begin
  Barcode.ColorBar := Value;
end;

procedure TTechQRBarcode.SetModul(const Value: integer);
begin
  Barcode.Modul := Value;
end;

procedure TTechQRBarcode.SetRatio(const Value: double);
begin
  Barcode.Ratio := Value;
end;

procedure TTechQRBarcode.SetShowText(const Value: TBarcodeOption);
begin
  Barcode.ShowText := Value;
end;

procedure TTechQRBarcode.SetText(const Value: string);
begin
  Barcode.Text := Value;
end;

procedure TTechQRBarcode.SetTyp(const Value: TBarcodeType);
begin
  Barcode.Typ := Value;
end;

end.
