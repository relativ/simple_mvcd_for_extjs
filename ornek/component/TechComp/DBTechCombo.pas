unit DBTechCombo;

interface

uses
   WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls,DB;
  const
  TechDBCombo_ABOUT = 'TechnoLIFE Yazýlým/ Serkan Güneþ '#13#10+'E-Mail: info@technolife.com.tr '#13#10+'Web: www.technolife.com.tr';

type
  TDBTechCombo = class(TComboBox)
  private
    FDataLink: TFieldDataLink;
    BuyukOku: Boolean;
    FKayitList: TStringList;
    color1: TColor;
    color2: TColor;
    procedure DataChange(Sender: TObject);
    procedure EditingChange(Sender: TObject);
    function GetComboText: string;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetReadOnly: Boolean;
    procedure SetComboText(const Value: string);
    procedure UpdateData(Sender: TObject);
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure SetEditReadOnly;
    procedure BuyukYaz(const Val: Boolean);
    procedure SetGirisColor(gcolor: TColor);
    procedure SetCikisColor(ccolor: TColor);
    procedure SetKayitListItems(const Value: TStringList);
    function GetVersion: string;
  protected
  procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  procedure CMExit(var Message: TCMExit); message CM_EXIT;
  procedure KeyPress(var Key: Char); override;
  procedure Change; override;
  procedure Click; override;
  procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
   constructor Create(aOwner: TComponent); override;
   destructor Destroy; override;
  published
   property RenkGiris: TColor read color1 write SetGirisColor;
   property About: string read GetVersion;
   property RenkCikis: TColor read color2 write SetCikisColor;
   property BuyukKucuk: Boolean read BuyukOku write BuyukYaz default false;
   property KayitList: TStringList read FKayitList write SetKayitListItems;
   property DataField: string read GetDataField write SetDataField;
   property DataSource: TDataSource read GetDataSource write SetDataSource;
   property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
   property Field: TField read GetField;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TDBTechCombo]);
end;

procedure TDBTechCombo.BuyukYaz(const Val: Boolean);
begin
        BuyukOku := Val;
        RecreateWnd;
end;

constructor TDBTechCombo.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);
    ControlStyle := ControlStyle + [csReplicatable];
    FDataLink := TFieldDataLink.Create;
    FDataLink.Control := Self;
    FDataLink.OnDataChange := DataChange;
    FDataLink.OnUpdateData := UpdateData;
    FDataLink.OnEditingChange := EditingChange;
    FKayitList:= TStringList.Create;
    color1:=clInfobk;
    color2:=clwhite;
end;

procedure TDBTechCombo.Click;
begin
  FDataLink.Edit;
  inherited Click;
  FDataLink.Modified;
end;

procedure TDBTechCombo.Change;
begin
  FDataLink.Edit;
  inherited Change;
  FDataLink.Modified;
end;

procedure TDBTechCombo.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  if Key in [VK_BACK, VK_DELETE, VK_UP, VK_DOWN, 32..255] then
  begin
    if not FDataLink.Edit and (Key in [VK_UP, VK_DOWN]) then
      Key := 0;
  end;
end;

destructor TDBTechCombo.Destroy;
begin
        FKayitList.Free;
        FDataLink.Free;
        inherited;
end;

procedure TDBTechCombo.CMEnter(var Message: TCMEnter); //kutucuða girdiðinde
begin
inherited;
Color := color1;

end;
procedure TDBTechCombo.CMExit(var Message: TCMExit); // kutucuktan çýktýðýnda
begin
inherited;
Color := color2;
end;

procedure TDBTechCombo.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TDBTechCombo.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

function TDBTechCombo.GetVersion: string;
begin
  Result := TechDBCombo_ABOUT;
end;

procedure TDBTechCombo.KeyPress(var Key: Char);
begin
        if Style <> csDropDownList then
        begin
        if BuyukOku = true then
        begin
        if (Style = csDropDown) and ((SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] ='.') or (Text[SelStart] =':') or (Text[SelStart] ='[') or (Text[SelStart] ='/') or (Text[SelStart] ='-')) then
                Begin
                        if Key='a' Then Key:='A';
                        if Key='b' Then Key:='B';
                        if Key='c' Then Key:='C';
                        if Key='ç' Then Key:='Ç';
                        if Key='d' Then Key:='D';
                        if Key='e' Then Key:='E';
                        if Key='f' Then Key:='F';
                        if Key='g' Then Key:='G';
                        if Key='ð' Then Key:='Ð';
                        if Key='h' Then Key:='H';
                        if Key='ý' Then Key:='I';
                        if Key='i' Then Key:='Ý';
                        if Key='j' Then Key:='J';
                        if Key='k' Then Key:='K';
                        if Key='l' Then Key:='L';
                        if Key='m' Then Key:='M';
                        if Key='n' Then Key:='N';
                        if Key='o' Then Key:='O';
                        if Key='ö' Then Key:='Ö';
                        if Key='p' Then Key:='P';
                        if Key='r' Then Key:='R';
                        if Key='s' Then Key:='S';
                        if Key='þ' Then Key:='Þ';
                        if Key='t' Then Key:='T';
                        if Key='u' Then Key:='U';
                        if Key='ü' Then Key:='Ü';
                        if Key='v' Then Key:='V';
                        if Key='y' Then Key:='Y';
                        if Key='z' Then Key:='Z';
                        if Key='x' Then Key:='X';
                        if Key='q' Then Key:='Q';
                        if Key='w' Then Key:='W';                end
        else Begin
                        if Key='A' Then Key:='a';
                        if Key='B' Then Key:='b';
                        if Key='C' Then Key:='c';
                        if Key='Ç' Then Key:='ç';
                        if Key='D' Then Key:='d';
                        if Key='E' Then Key:='e';
                        if Key='F' Then Key:='f';
                        if Key='G' Then Key:='g';
                        if Key='Ð' Then Key:='ð';
                        if Key='H' Then Key:='h';
                        if Key='I' Then Key:='ý';
                        if Key='Ý' Then Key:='i';
                        if Key='J' Then Key:='j';
                        if Key='K' Then Key:='k';
                        if Key='L' Then Key:='l';
                        if Key='M' Then Key:='m';
                        if Key='N' Then Key:='n';
                        if Key='O' Then Key:='o';
                        if Key='Ö' Then Key:='ö';
                        if Key='P' Then Key:='p';
                        if Key='R' Then Key:='r';
                        if Key='S' Then Key:='s';
                        if Key='Þ' Then Key:='þ';
                        if Key='T' Then Key:='t';
                        if Key='U' Then Key:='u';
                        if Key='Ü' Then Key:='ü';
                        if Key='V' Then Key:='v';
                        if Key='Y' Then Key:='y';
                        if Key='Z' Then Key:='z';
                        if Key='X' Then Key:='x';
                        if Key='Q' Then Key:='q';
                        if Key='W' Then Key:='w';

             end;
             end;
        end;
 inherited KeyPress(Key);
 if (Key in [#32..#255]) and (FDataLink.Field <> nil) and
    not FDataLink.Field.IsValidChar(Key) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
  case Key of
    ^H, ^V, ^X, #32..#255:
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
      end;
  end;
end;

procedure TDBTechCombo.DataChange(Sender: TObject);
begin
  if not (Style = csSimple) and DroppedDown then Exit;
  if FDataLink.Field <> nil then
    SetComboText(FDataLink.Field.Text)
  else
    if csDesigning in ComponentState then
      text := Name
    else
      SetComboText('');
end;

procedure TDBTechCombo.UpdateData(Sender: TObject);
begin
  FDataLink.Field.Text := GetComboText;
end;

function TDBTechCombo.GetComboText: string;
begin
        if  ItemIndex > -1 then
                result := KayitList[ItemIndex]
        else result := '';
end;

procedure TDBTechCombo.EditingChange(Sender: TObject);
begin
  SetEditReadOnly;
end;

procedure TDBTechCombo.SetEditReadOnly;
begin
  if (Style in [csDropDown, csSimple]) and HandleAllocated then
    SendMessage(EditHandle, EM_SETREADONLY, Ord(not FDataLink.Editing), 0);
end;

function TDBTechCombo.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TDBTechCombo.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

function TDBTechCombo.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBTechCombo.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TDBTechCombo.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TDBTechCombo.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

procedure TDBTechCombo.SetComboText(const Value: string);
var
  I: Integer;
begin
        if Value = '' then I := -1 else I := KayitList.IndexOf(Value);
        if I > -1 then
                Text := Items[I]
        else Text := '';
end;

function TDBTechCombo.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TDBTechCombo.SetKayitListItems(const Value: TStringList);
begin
  if Assigned(FKayitList) then
    FKayitList.Assign(Value)
  else
    FKayitList := Value;
end;

end.
