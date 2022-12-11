unit TechDBCombobox;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, TechComboBox,
  DB,DBCtrls,dialogs;

type
  TTechDBCombobox = class(TTechComboBox)
  private
    FDataLink: TFieldDataLink;
    procedure DataChange(Sender: TObject);
    procedure UpdateData(Sender: TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetComboText(const Value: string);
    function GetComboText: string;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  protected

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBCombobox]);
end;
//------------------------------------------------------------------------------
function TTechDBCombobox.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;
//------------------------------------------------------------------------------
procedure TTechDBCombobox.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;
//------------------------------------------------------------------------------
function TTechDBCombobox.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;
//------------------------------------------------------------------------------
procedure TTechDBCombobox.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;
//------------------------------------------------------------------------------
constructor TTechDBCombobox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
end;
//------------------------------------------------------------------------------
destructor TTechDBCombobox.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;
//------------------------------------------------------------------------------
procedure TTechDBCombobox.DataChange(Sender: TObject);
begin
  if not (Style = csSimple) and DroppedDown then Exit;
  if FDataLink.Field <> nil then
    SetComboText(FDataLink.Field.Text)
  else
    if csDesigning in ComponentState then
      SetComboText(Name)
    else
      SetComboText('');
end;
//------------------------------------------------------------------------------
procedure TTechDBCombobox.UpdateData(Sender: TObject);
begin
  FDataLink.Field.Text := GetComboText;
end;
//------------------------------------------------------------------------------
procedure TTechDBCombobox.SetComboText(const Value: string);
var
  I: Integer;
  Redraw: Boolean;
begin
  if Value <> GetComboText then
  begin
    if Style <> csDropDown then
    begin
      Redraw := (Style <> csSimple) and HandleAllocated;
      if Redraw then SendMessage(Handle, WM_SETREDRAW, 0, 0);
      try
        if Value = '' then I := -1 else I := Items.IndexOf(Value);
        ItemIndex := I;
      finally
        if Redraw then
        begin
          SendMessage(Handle, WM_SETREDRAW, 1, 0);
          Invalidate;
        end;
      end;
      if I >= 0 then Exit;
    end;
    if Style in [csDropDown, csSimple] then Text := Value;
  end;
end;
//------------------------------------------------------------------------------
function TTechDBCombobox.GetComboText: string;
var
  I: Integer;
begin
  if Style in [csDropDown, csSimple] then Result := Text else
  begin
    I := ItemIndex;
    if I < 0 then Result := '' else Result := Items[I];
  end;
end;
//------------------------------------------------------------------------------
function TTechDBCombobox.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TTechDBCombobox.CMExit(var Message: TCMExit);
begin
  try
    FDataLink.UpdateRecord;
  except
    SelectAll;
    SetFocus;
    raise;
  end;
  inherited;
end;


procedure TTechDBCombobox.CMEnter(var Message: TCMEnter);
begin
  inherited;
  if SysLocale.FarEast and FDataLink.CanModify then
    SendMessage(EditHandle, EM_SETREADONLY, Ord(False), 0);
end;

end.
