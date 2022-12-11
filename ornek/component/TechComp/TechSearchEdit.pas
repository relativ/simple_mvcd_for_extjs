unit TechSearchEdit;

interface

uses
  Windows, Messages,Dialogs, SysUtils, Classes, Controls, StdCtrls,DB,
  IBCustomDataSet, IBQuery,DBCtrls;

type
  TTechSearchEdit = class(TEdit)
  private
    SearchDataLink: TFieldDataLink;
    FLocate,FLike: boolean;
    FUpperTurk: string;
    FBaglantilar: TStrings;
    function GetDataSource: TDataSource;
    function GetDataField: string;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetLocate(const val: boolean);
    procedure SetLike(const val: boolean);
    procedure SetBaglantilar(const val: TStrings);
  protected
    procedure Change; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure KeyPress(var Key: Char); override;
  published
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property Locate: boolean read FLocate write SetLocate;
    property Like: boolean read FLike write SetLike;
    property UpperTurk: string read FUpperTurk;
    property Baglantilar: TStrings read FBaglantilar write SetBaglantilar;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechSearchEdit]);
end;

procedure TTechSearchEdit.SetLocate(const val: boolean);
begin
        FLocate := Val;
        if FLike = true then
                FLike := not FLocate;
end;

procedure TTechSearchEdit.SetLike(const val: boolean);
begin
        FLike := Val;
        if FLocate = true then
                FLocate := not FLike;
end;

constructor TTechSearchEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SearchDataLink := TFieldDataLink.Create;
  SearchDataLink.Control := Self;
  FBaglantilar:= TStringList.Create;

end;

destructor TTechSearchEdit.Destroy;
begin
        FBaglantilar.Free;
        SearchDataLink.Free;
        inherited Destroy;
end;

procedure TTechSearchEdit.SetBaglantilar(const val: TStrings);
begin
        Baglantilar.Text := val.Text;
end;

procedure TTechSearchEdit.Change;
var
        i: integer;
begin
if text <> '' then
        begin
                FUpperTurk := text;
                for i := 1 to length(text) do
                begin
                        if text[i]='a' Then FUpperTurk[i]:='A';
                        if text[i]='b' Then FUpperTurk[i]:='B';
                        if text[i]='c' Then FUpperTurk[i]:='C';
                        if text[i]='ç' Then FUpperTurk[i]:='Ç';
                        if text[i]='d' Then FUpperTurk[i]:='D';
                        if text[i]='e' Then FUpperTurk[i]:='E';
                        if text[i]='f' Then FUpperTurk[i]:='F';
                        if text[i]='g' Then FUpperTurk[i]:='G';
                        if text[i]='ð' Then FUpperTurk[i]:='Ð';
                        if text[i]='h' Then FUpperTurk[i]:='H';
                        if text[i]='ý' Then FUpperTurk[i]:='I';
                        if text[i]='i' Then FUpperTurk[i]:='Ý';
                        if text[i]='j' Then FUpperTurk[i]:='J';
                        if text[i]='k' Then FUpperTurk[i]:='K';
                        if text[i]='l' Then FUpperTurk[i]:='L';
                        if text[i]='m' Then FUpperTurk[i]:='M';
                        if text[i]='n' Then FUpperTurk[i]:='N';
                        if text[i]='o' Then FUpperTurk[i]:='O';
                        if text[i]='ö' Then FUpperTurk[i]:='Ö';
                        if text[i]='p' Then FUpperTurk[i]:='P';
                        if text[i]='r' Then FUpperTurk[i]:='R';
                        if text[i]='s' Then FUpperTurk[i]:='S';
                        if text[i]='þ' Then FUpperTurk[i]:='Þ';
                        if text[i]='t' Then FUpperTurk[i]:='T';
                        if text[i]='u' Then FUpperTurk[i]:='U';
                        if text[i]='ü' Then FUpperTurk[i]:='Ü';
                        if text[i]='v' Then FUpperTurk[i]:='V';
                        if text[i]='y' Then FUpperTurk[i]:='Y';
                        if text[i]='z' Then FUpperTurk[i]:='Z';
                        if text[i]='x' Then FUpperTurk[i]:='X';
                        if text[i]='q' Then FUpperTurk[i]:='Q';
                        if text[i]='w' Then FUpperTurk[i]:='W';
                end;

        end else begin
                FUpperTurk := '';
        end;
  inherited Change;
end;

function TTechSearchEdit.GetDataField: string;
begin
  Result := SearchDataLink.FieldName;
end;

procedure TTechSearchEdit.SetDataField(const Value: string);
begin
  SearchDataLink.FieldName := Value;
end;

function TTechSearchEdit.GetDataSource: TDataSource;
begin
  Result := SearchDataLink.DataSource;
end;

procedure TTechSearchEdit.SetDataSource(Value: TDataSource);
begin
    SearchDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TTechSearchEdit.KeyPress(var Key: Char);
var
        i: integer;
        s: string;
begin
  inherited KeyPress(Key);
  if Key = #13 then
  begin
        if FLocate then
        begin
                if SearchDataLink.DataSet.Active then
                begin
                        if SearchDataLink.DataSet.Locate(DataField,Text,[loCaseInsensitive, loPartialKey]) = false then
                                ShowMessage('Aradýðýnýz kayýt bulunamdý.');
                end
                else begin
                        SearchDataLink.DataSet.Open;
                        if SearchDataLink.DataSet.Locate(DataField,Text,[loCaseInsensitive, loPartialKey]) = false then
                                ShowMessage('Aradýðýnýz kayýt bulunamdý.');
                end;
        end else if FLike then
        begin
                for i := TIBQuery(SearchDataLink.DataSet).SQL.Count - 1 downto 0 do
                begin
                        if Pos('ORDER',UpperCase(TIBQuery(SearchDataLink.DataSet).SQL[i])) <> 0 then
                        begin
                                s := TIBQuery(SearchDataLink.DataSet).SQL[i];
                                TIBQuery(SearchDataLink.DataSet).SQL.Delete(i);
                        end;
                        if (TIBQuery(SearchDataLink.DataSet).SQL.Count - 1 >= i) and (Pos(' LIKE ',UpperCase(TIBQuery(SearchDataLink.DataSet).SQL[i])) <> 0) then
                                TIBQuery(SearchDataLink.DataSet).SQL.Delete(i);
                end;
                if Pos('WHERE',UpperCase(TIBQuery(SearchDataLink.DataSet).SQL.Text)) <> 0 then
                begin
                        if Pos('%',text) <> 0 then
                                TIBQuery(SearchDataLink.DataSet).SQL.Add(' and Upper('+DataField+') LIKE '+#39+FUpperTurk+#39)
                        else TIBQuery(SearchDataLink.DataSet).SQL.Add(' and Upper('+DataField+') LIKE '+#39+FUpperTurk+'%'+#39);
                end else begin
                        if Pos('%',text) <> 0 then
                                TIBQuery(SearchDataLink.DataSet).SQL.Add('where Upper('+DataField+') LIKE '+#39+FUpperTurk+#39)
                        else TIBQuery(SearchDataLink.DataSet).SQL.Add('where Upper('+DataField+') LIKE '+#39+FUpperTurk+'%'+#39);
                end;
                for i := 0 to Baglantilar.Count - 1 do
                begin
                        if Parent.FindComponent(Baglantilar[i]) is TTechSearchEdit then
                        if TTechSearchEdit(Parent.FindComponent(Baglantilar[i])).FUpperTurk <> '' then
                        begin
                                if Pos('%',TTechSearchEdit(Parent.FindComponent(Baglantilar[i])).FUpperTurk) <> 0 then
                                        TIBQuery(SearchDataLink.DataSet).SQL.Add(' and Upper('+TTechSearchEdit(Parent.FindComponent(Baglantilar[i])).DataField+') LIKE '+#39+TTechSearchEdit(Parent.FindComponent(Baglantilar[i])).FUpperTurk+#39)
                                else TIBQuery(SearchDataLink.DataSet).SQL.Add(' and Upper('+TTechSearchEdit(Parent.FindComponent(Baglantilar[i])).DataField+') LIKE '+#39+TTechSearchEdit(Parent.FindComponent(Baglantilar[i])).FUpperTurk+'%'+#39);
                        end;
                end;
                if Text = '' then
                begin
                  for i := TIBQuery(SearchDataLink.DataSet).SQL.Count - 1 downto 0 do
                  begin
                    if (Pos(' and Upper('+DataField+') LIKE ',TIBQuery(SearchDataLink.DataSet).SQL[i]) <> 0) or
                            (Pos('where Upper('+DataField+') LIKE ',TIBQuery(SearchDataLink.DataSet).SQL[i]) <> 0)then
                        TIBQuery(SearchDataLink.DataSet).SQL.Delete(i);
                  end;
                end;
                TIBQuery(SearchDataLink.DataSet).SQL.Add(s);
                TIBQuery(SearchDataLink.DataSet).Open;
        end;
        Key := #0;
  end;
end;

end.
