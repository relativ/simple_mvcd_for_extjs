unit TechDateEdit;

interface

uses
  Windows, Messages, SysUtils, Classes,Graphics, Controls, StdCtrls;
 const
  TechDateEdit_ABOUT = 'Tech Yazýlým / Serkan Güneþ'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

type
  TTechDateEdit = class(TEdit)
  private

  protected
    OtoTarih1: Boolean;
    sil: Boolean;
    color1: TColor;
    color2: TColor;

    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure SetGirisColor(gcolor: TColor);
    procedure SetCikisColor(ccolor: TColor);
    procedure OtoTarihYaz(const Val: Boolean);
    procedure SetVersion(const Val: string);
    function  GetVersion: string;
    procedure KeyPress(var Key: Char); override;
    procedure Change; override;
  public
    constructor Create(aOwner: TComponent); override;
  published
    property TarihOnay: Boolean read OtoTarih1 write OtoTarihYaz default false;
    property RenkGiris: TColor read color1 write SetGirisColor;
    property RenkCikis: TColor read color2 write SetCikisColor;
    property About: string read GetVersion write SetVersion;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechDateEdit]);
end;

constructor TTechDateEdit.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);

 color1:=clInfobk;
 color2:=clwhite;
end;

procedure TTechDateEdit.OtoTarihYaz(const Val: Boolean);
begin
        OtoTarih1 := Val;
        if OtoTarih1 = true then begin
                MaxLength := 10;
                text := '';
        end;
end;

procedure TTechDateEdit.KeyPress(var Key: Char);
var
        tarih1: string;
begin
        inherited;
        if OtoTarih1 = true then
        begin
        if (key = #8) or (key = #46) then
                sil := true
        else
                sil := false;

        if (length(text) = 2) and ((Key <> '.') or (Key <> '/') or (Key <> '-') or ( Key <> ',') or (Key <> #0)) and (sil = false) then
        begin
                if StrToInt(Key) < 2 then
                begin
                        text := text + '.'+Key;
                        Key := #0;
                        SelStart := Length(text);
                end else begin
                        text := text + '.0'+Key+'.';
                        Key := #0;
                        SelStart := Length(text);
                end;
        end;

        if (Key = '.') and (length(text)=1) and (text <> '0') then
        begin
                Text:='0'+ Text+ '.';
                SelStart := Length(Text);
        end;

        if (Key = '.') and (length(text)=4) and (text[4] <> '0') then
        begin
                tarih1 := Copy(text,4,1);
                text := Copy(text,0,3)+'0'+tarih1+'.';
                SelStart := Length(Text);
        end;

        if not (key in ['0'..'9',#8]) then
        begin
                Key:=#0;
        end;
        if (SelText <> '') and (Key in ['0'..'9']) then
                SelText := '';
        if (Key ='2') and ((SelStart = 4) or (SelStart = 3)) and (StrToInt(Copy(Text,1,2)) > 29) and (text[4] <> '1') then
                Key := #0
        else if (Key = '4') and  ((SelStart = 4) or (SelStart = 3)) and (Text[4] ='0') and (StrToInt(Copy(Text,1,2)) > 30) then
                Key := #0
        else if (Key = '0') and  (SelStart = 4) and (Text[4] ='0') then
                Key := #0
        else if (Key = '0') and  (SelStart = 1) and (Text[1] ='0') then
                Key := #0
        else if (Key = '6') and  ((SelStart = 4) or (SelStart = 3)) and (Text[4] ='0') and (StrToInt(Copy(Text,1,2)) > 30) then
                Key := #0
        else if (Key = '9') and  ((SelStart = 4) or (SelStart = 3)) and (Text[4] ='0') and (StrToInt(Copy(Text,1,2)) > 30) then
                Key := #0
        else if (Key = '1') and  (SelStart = 4) and (Text[4] ='1') and (StrToInt(Copy(Text,1,2)) > 30) then
                Key := #0;

        if (sil= false) and (Key <> #0) and (SelStart = 0) and(StrToInt(Key) > 3) then
        begin
                if Length(Text) < 6 then
                begin
                        Text := Text +'0'+Key+'.';
                        SelStart := Length(Text);
                        Key := #0;
                end;
        end
        else if (sil= false) and (SelStart = 1) and (StrToInt(Text[1]) = 3) and (StrToInt(Key) > 1) then
                Key := #0
        else if (sil= false) and (SelStart = 3) and (Key <> #0) and (StrToInt(Key) > 1)  then
        begin
                if Length(Text) < 6 then
                begin
                        Text := Text +'0'+Key+'.';
                        SelStart := Length(Text);
                        Key := #0;
                end else
                Key := #0;
        end
        else if (sil= false) and (Key <> #0) and (SelStart = 4) and(StrToInt(Text[4]) = 1) and (StrToInt(Key) > 2) then
                Key := #0;

        if Length(text) > 5 then
        begin
                if (Text <> '') and ((SelStart =3) or (SelStart =4)) and (StrToInt(text[1]) > 2) and (Key = '2') and (Text[4] <> '1') then
                        Key := #0;
        end else if Length(text) < 5 then
        begin
                if (Text <> '') and ((SelStart =3) or (SelStart =4)) and (StrToInt(text[1]) > 2) and (Key = '2') and (Text[Length(text)] <> '1') then
                        Key := #0;
        end;
        end;
end;

procedure TTechDateEdit.Change;
begin
        inherited Change;
        if OtoTarih1 = true then
        begin
        if (SelStart =2) and (sil = false) then
        begin
                if Length(Text) < 6 then
                begin
                        Text := Text + '.';
                        SelStart := Length(Text);
                end;
        end else if (SelStart =5) and (sil = false) then
        begin
                if Length(Text) < 6 then
                begin
                        Text := Text + '.';
                        SelStart := Length(Text);
                end;
        end;
        end;
end;

function TTechDateEdit.GetVersion: string;
begin
  Result := TechDateEdit_ABOUT;
end;

procedure TTechDateEdit.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlamaz }
end;

procedure TTechDateEdit.CMEnter(var Message: TCMEnter); //kutucuða girdiðinde
begin
inherited;
        Color := color1;
        Refresh;
end;
procedure TTechDateEdit.CMExit(var Message: TCMExit); // kutucuktan çýktýðýnda
var
        Ay: word;
        gun: word;
        yil: word;
        tarih1: string;
begin
if text <> '' then
begin
try
        if OtoTarih1 = true then
        begin
                DecodeDate(now,yil,ay,gun);
        if (text <> '') and (length(Copy(text,7,length(text)-6)) = 2) then
        begin
                SelStart := 6;
                SelLength := length(text);
                SelText := '20'+Copy(text,7,length(text)-6);
        end;

        if (text <> '') and (length(Copy(text,7,length(text)-6)) = 1) then
        begin
                SelStart := 6;
                SelLength := length(text);
                SelText := '200'+Copy(text,7,length(text)-6);
        end;

        if (length(text) = 4) then
        begin
                tarih1 := Copy(text,4,1);
                text := Copy(text,0,3)+'0'+tarih1+'.'+IntToStr(yil);
        end;

        if (text <> '') and (Length(text)=5) then
        begin
                text := text + '.'+IntToStr(yil);
        end;
        if (text <> '') and (Length(text)=6) then
        begin
                text := text+IntToStr(yil);
        end;
        if (text <> '') and (StrToInt(Copy(text,1,2)) > 28) and (StrToInt(Copy(text,4,2)) = 2) and (StrToInt(Copy(text,7,4)) mod 4 > 0 ) then
        begin
                MessageBox(handle,'Bu senenin 2. ayý 28 çeker','Uyarý',MB_OK);
                SetFocus;
                SelStart := 0;
                SelLength := 2;
                Exit;
        end;
        if (text <> '') and (StrToInt(Copy(text,1,2)) > 29) and (Copy(text,4,2) = '02') and (StrToInt(Copy(text,7,4)) mod 4 = 0 ) then
        begin
                MessageBox(handle,'Bu senenin 2. ayý 29 çeker..','Uyarý',MB_OK);
                SetFocus;
                SelStart := 0;
                SelLength := 2;
                Exit;
        end;
        if (text <> '') and (StrToInt(Copy(text,1,2)) > 30) and ((Copy(text,4,2) = '04') or (Copy(text,4,2) = '06') or (Copy(text,4,2) = '09') or (Copy(text,4,2) = '11')) then
        begin
                MessageBox(handle,'Bu ay 30 çeker..','Uyarý',MB_OK);
                SetFocus;
                SelStart := 0;
                SelLength := 2;
                Exit;
        end;
        if (text <> '') and (StrToInt(Copy(text,4,2)) > 12) then
        begin
                MessageBox(handle,'1 Senede 12 ay vardýr','Uyarý',MB_OK);
                SetFocus;
                SelStart := 3;
                SelLength := 2;
                Exit;
        end;
end;
except
        MessageBox(handle,'Tarih formatý uygun deðil'+#13+'01.01.2000 þeklinde yazýnýz..','Uyarý',MB_OK);
        SetFocus;
        Exit;
end;
end;
        Color := color2;
        Refresh;
inherited;
end;

procedure TTechDateEdit.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TTechDateEdit.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

end.
