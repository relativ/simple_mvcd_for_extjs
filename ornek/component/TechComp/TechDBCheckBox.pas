unit TechDBCheckbox;

interface

uses
  DBCtrls,Variants, Windows, SysUtils, Messages,
  Controls, Forms, Classes,Graphics, Menus, StdCtrls, ExtCtrls, Mask,
  Buttons, ComCtrls, DB,TechCheckbox;

type
  TTechDBCheckbox = class(TTechCheckbox)
  private
        FDataLink: TFieldDataLink;
        FValueCheck,FValueUnCheck: string;
        procedure DataChange(Sender: TObject);
        function GetDataField: string;
      //  function GetFieldText: string;
        function GetAsString: string;
        function GetDataSource: TDataSource;
        procedure SetDataField(const Value: string);
        procedure SetValueCheck(const Value: string);
        procedure SetValueUnCheck(const Value: string);
        procedure SetDataSource(Value: TDataSource);
  protected
        procedure Click; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property ValueChecked: string read FValueCheck write SetValueCheck;
    property ValueUnChecked: string read FValueUnCheck write SetValueUnCheck;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBCheckbox]);
end;

destructor TTechDBCheckbox.Destroy;
begin
        FDataLink.Free;
        inherited Destroy;
end;

constructor TTechDBCheckbox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FValueCheck := '1';
  FValueUnCheck := '0';
end;

{function TTechDBCheckbox.GetFieldText: string;
begin
  if FDataLink.Field <> nil then
    Result := FDataLink.Field.DisplayText
  else
    if csDesigning in ComponentState then Result := Name else Result := '';
end; }

function TTechDBCheckbox.GetAsString: string;
begin
  if FDataLink.Field <> nil then
    Result := FDataLink.Field.AsString
  else
    if csDesigning in ComponentState then Result := Name else Result := '';
end;

procedure TTechDBCheckbox.DataChange(Sender: TObject);
begin
        if GetAsString = FValueCheck then
                Checked := true
        else if GetAsString = FValueUnCheck then
                Checked := false
        else Checked := false
end;

function TTechDBCheckbox.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TTechDBCheckbox.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TTechDBCheckbox.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TTechDBCheckbox.SetDataSource(Value: TDataSource);
begin
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TTechDBCheckbox.SetValueCheck(const Value: string);
begin
        FValueCheck := Value;
end;

procedure TTechDBCheckbox.SetValueUnCheck(const Value: string);
begin
        FValueUnCheck := Value;
end;

procedure TTechDBCheckbox.Click;
begin
  inherited;
  if (DataSource <> nil) and (DataSource.DataSet <> nil) and (DataField <> '') and (DataSource.DataSet.Active = true) then
  begin
          if Checked = true then
          begin
                DataSource.DataSet.Edit;
                DataSource.DataSet.FindField(DataField).AsString := FValueCheck;
                DataSource.DataSet.Post;
          end else begin
                DataSource.DataSet.Edit;
                DataSource.DataSet.FindField(DataField).AsString := FValueUnCheck;
                DataSource.DataSet.Post;
          end;
  end else Checked := false;
end;

end.
