unit TechIBQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, IBCustomDataSet, IBQuery,Dialogs;

type
  TTechIBQuery = class(TIBQuery)
  private
    AramaDurumu: string;
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    function Arama(Aranan,Field,Mesaj: string): boolean;
    function Suzme(Aranan,Field: String; Yeni,Goster: boolean): boolean;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechIBQuery]);
end;

{ TTechIBQuery }

constructor TTechIBQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTechIBQuery.Destroy;
begin
  inherited Destroy;
end;

function TTechIBQuery.Arama(Aranan,Field,Mesaj: string): boolean;
begin
        if AramaDurumu <> Aranan then
        begin
                if Locate(Field,Aranan,[loCaseInsensitive, loPartialKey]) then
                        Result := true
                else begin
                        Result := false;
                        ShowMessage(Mesaj);
                end;
                AramaDurumu := Aranan;
        end else begin
                if LocateNext(Field,Aranan,[loCaseInsensitive, loPartialKey]) then
                        Result := true
                else begin
                        Result := false;
                        ShowMessage(Mesaj);
                end;
        end;
end;

function TTechIBQuery.Suzme(Aranan,Field: String; Yeni,Goster: boolean): boolean;
var
        order,group: string;
        i: integer;
begin
                Close;
                if Aranan <> '' then
                begin
                        Aranan := UpperCase(Aranan);
                        while Pos('I',Aranan) <> 0 do
                                Aranan[Pos('I',Aranan)] := 'Ý';
                        while Pos('ý',Aranan) <> 0 do
                                Aranan[Pos('I',Aranan)] := 'I';
                        While SQL.IndexOf('') > - 1 do
                                SQL.Delete(SQL.IndexOf(''));
                        for i := 0 to SQL.Count - 1 do
                        begin
                                if (i <= SQL.Count - 1) and (Pos('ORDER',UpperCase(SQL[i])) <> 0) then
                                begin
                                        order := SQL[i];
                                        SQL[i] := '';
                                end;
                                if (i <= SQL.Count - 1) and (Pos('GROUP',UpperCase(SQL[i])) <> 0) then
                                begin
                                        group := SQL[i];
                                        SQL[i] := '';
                                end;
                                if Yeni = true then
                                begin
                                        if (i <= SQL.Count - 1) and (Pos('LIKE',UpperCase(SQL[i])) <> 0) then
                                        begin
                                                SQL[i] := '';
                                        end;
                                end;
                        end;

                        if Pos('WHERE',UpperCase(SQL.Text)) = 0 then
                                SQL.Add('WHERE Upper('+Field+') LIKE '+#39+Aranan+#39)
                        else    SQL.Add('AND Upper('+Field+') LIKE '+#39+Aranan+#39);

                        if group <> '' then
                                SQL.Add(group);
                        if order <> '' then
                                SQL.Add(order);
                        if Goster = true then
                                Open;
                end else begin
                        for i := 0 to SQL.Count - 1 do
                        begin
                                if Yeni = true then
                                begin
                                        if (i <= SQL.Count - 1) and (Pos('LIKE',UpperCase(SQL[i])) <> 0) then
                                        begin
                                                SQL[i] := '';
                                        end;
                                end;
                        end;
                        if Goster = true then
                                Open;
                end;
                result := true;

end;

end.
