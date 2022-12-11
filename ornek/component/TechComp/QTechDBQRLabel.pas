unit QTechDBQRLabel;

interface

uses
  QuickRpt, QRCtrls,DBCtrls,Variants, Windows, SysUtils, Messages,
  Controls, Forms, Classes,Graphics, Menus, StdCtrls, ExtCtrls, Mask,
  Buttons, ComCtrls, DB;

type
  TTechDBQRLabel = class(TQRLabel)
  private
        LabelDataLink: TFieldDataLink;
        SayiToYazi: boolean;
        procedure DataChange(Sender: TObject);
        procedure SayiToYaziSet(Val: boolean);
        function GetDataField: string;
        function GetFieldText: string;
        function GetAsString: string;
        function GetDataSource: TDataSource;
        procedure SetDataField(const Value: string);
        procedure SetDataSource(Value: TDataSource);

  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property SayiCevir: boolean read SayiToYazi write SayiToYaziSet;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBQRLabel]);
end;

constructor TTechDBQRLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
  LabelDataLink := TFieldDataLink.Create;
  LabelDataLink.Control := Self;
  LabelDataLink.OnDataChange := DataChange;
end;

destructor TTechDBQRLabel.Destroy;
begin
        inherited Destroy;
        LabelDataLink.Free;
end;

function Cevir(v_tutyazi : String): String;
const
  TABAN : array [1..9] of String[6] =
  (' Bir', 'Ýki ', 'Üç ', 'Dört ', 'Beþ ', 'Altý ', 'Yedi ', 'Sekiz ', 'Dokuz ');
  ONDALIK  : array [1..9] of String[7] =
  ('On ', 'Yirmi ', 'Otuz ', 'Kýrk ', 'Elli ', 'Altmýþ ', 'Yetmiþ ', 'Seksen ', 'Doksan ');
var
    A,C,E       : Integer;
    B,F,gh_yaz1 : String;
    Bol         : Integer;
begin
if (TrimRight(v_tutyazi)='0') or (v_tutyazi='') then begin
   gh_yaz1:='Sýfýr ';
   Result:=gh_yaz1;
   end
   else begin
   A:=0; B:=''; C:=0; E:=0; F:=''; gh_yaz1:= '';
   C:= Length(TRIMleft(v_tutyazi));  B:= v_tutyazi; E:= C;
   WHILE E >= 1 do begin
      F:= Copy(B,C-E+1,1);
      if f='0' then begin
      if e=13 then gh_yaz1:= gh_yaz1+'Trilyon ';
      if e=10  then begin
         if (StrToInt(Copy(b,c-e,1)) = 0) and (StrToInt(Copy(b,c-e-1,1)) = 0) then bol:=bol+1 else
             gh_yaz1:= gh_yaz1+'Milyar ';
      end;
      if e=7 then begin
          if (StrToInt(Copy(b,c-e,1)) = 0) and (StrToInt(Copy(b,c-e-1,1)) = 0) then bol:=bol+1 else
             gh_yaz1:= gh_yaz1+'Milyon ';
      end;
      if e=4 then begin
         if (StrToInt(Copy(b,c-e,1)) = 0) and (StrToInt(Copy(b,c-e-1,1)) = 0) then bol:=bol+1 else
            gh_yaz1:= gh_yaz1+'Bin ';
      end;
      e:=e-1;
      end
      else begin
      if (E = 12) OR (E = 9) OR (E = 6) OR (E = 3) or (e = 15) then begin
         IF StrToInt(F) = 1 then
            gh_yaz1:= gh_yaz1+'Yüz '
            ELSE
            gh_yaz1:= gh_yaz1+TABAN[StrToInt(F)]+'Yüz ';
      end;
      if (E = 11) OR (E = 8) OR (E = 5) OR (E=2) or (e = 14) then
           gh_yaz1:= gh_yaz1+ONDALIK[StrToInt(F)];
      if E = 13 then
           gh_yaz1:= gh_yaz1+TABAN[StrToInt(F)]+'Trilyon ';
      if E = 10 then
           gh_yaz1:= gh_yaz1+TABAN[StrToInt(F)]+'Milyar ';
      if E = 7 then
           gh_yaz1:= gh_yaz1+TABAN[StrToInt(F)]+'Milyon ';
      if  E = 4 then begin
           IF Length(TRIMleft(v_tutyazi)) = 4 then gh_yaz1:= gh_yaz1+' Bin '  ELSE
                     gh_yaz1:= gh_yaz1+TABAN[StrToInt(F)]+' Bin ';
      END;
      if E = 1 then  gh_yaz1:= gh_yaz1+TABAN[StrToInt(F)];
      e:= e - 1
    end;
  end;
end;
result:=gh_yaz1;
end;

procedure TTechDBQRLabel.SayiToYaziSet(Val: boolean);
begin
        SayiToYazi := Val;
        Refresh;
end;

function TTechDBQRLabel.GetFieldText: string;
begin
  if (LabelDataLink <> nil) and (LabelDataLink.Field <> nil) then
    Result := LabelDataLink.Field.DisplayText
  else if csDesigning in ComponentState then
        Result := Name
  else Result := '';
end;

function TTechDBQRLabel.GetAsString: string;
begin
  if (LabelDataLink <> nil) and (LabelDataLink.Field <> nil) then
    Result := LabelDataLink.Field.AsString
  else
    if csDesigning in ComponentState then Result := Name else Result := ''; 
end;

procedure TTechDBQRLabel.DataChange(Sender: TObject);
var
        sayi: extended;
begin
        tryStrToFloat(GetAsString,sayi);
        if SayiToYazi = true then
        begin
                if tryStrToFloat(GetAsString,sayi) then
                begin
                        if Pos(',',FloatToStr(Sayi)) <> 0 then
                        begin
                                if StrToInt(Copy(FloatToStr(Sayi),Pos(',',FloatToStr(Sayi))+1,1)) >= 5 then
                                Sayi := Sayi + 1
                        end;
                        Caption := Cevir(IntToStr(Trunc(sayi)));
                end else Caption := GetFieldText;
        end else Caption := GetFieldText;
end;

function TTechDBQRLabel.GetDataField: string;
begin
  Result := LabelDataLink.FieldName;
end;

procedure TTechDBQRLabel.SetDataField(const Value: string);
begin
  LabelDataLink.FieldName := Value;
end;

function TTechDBQRLabel.GetDataSource: TDataSource;
begin
  Result := LabelDataLink.DataSource;
end;

procedure TTechDBQRLabel.SetDataSource(Value: TDataSource);
begin
    LabelDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

end.
