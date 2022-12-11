unit QTechQRLabel;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, QuickRpt, QRCtrls;

type
  TTechQRLabel = class(TQRLabel)
  private
    SayiToYazi: boolean;
    Sayi: extended;
    procedure SayiToYaziSet(Val: boolean);
    procedure SetSayi(Val: extended);
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    property SayiCevir: boolean read SayiToYazi write SayiToYaziSet;
    property CevirilecekSayi: extended read Sayi write SetSayi;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechQRLabel]);
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

procedure TTechQRLabel.SetSayi(Val: extended);
var
        sayi2: extended;
begin
        Sayi := Val;
        if Pos(',',FloatToStr(Sayi)) <> 0 then
        begin
                if StrToInt(Copy(FloatToStr(Sayi),Pos(',',FloatToStr(Sayi))+1,1)) >= 5 then
                        Sayi := Sayi + 1
        end;

        if (SayiToYazi = true) and (tryStrToFloat(FloatToStr(Val),sayi2)) then
        begin
                Caption := Cevir(IntToStr(Trunc(Sayi)));
        end else Caption := IntToStr(Trunc(Sayi));
end;

procedure TTechQRLabel.SayiToYaziSet(Val: boolean);
begin
        SayiToYazi := Val;
        RecreateWnd;
end;

end.
