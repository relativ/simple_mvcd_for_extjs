unit DBTechEdit;

interface

uses
    WinTypes, WinProcs, Messages, SysUtils,DB, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

  const
        DBTechEdit_ABOUT = 'TechnoLIFE Yazýlým / Serkan Güneþ'#13#10+'E-Mail: info@technolife.com.tr '#13#10+'Web: www.technolife.com.tr';

type
  
  TDBTechEdit = class(TDBEdit)
  private
          BuyukOku,TamBuyukOku: Boolean;
          SayiEdit: Boolean;
          FRenkDurum: Boolean;
          color1: TColor;
          color2: TColor;
          f_iAlign: TAlignment;
          CevirEdit: boolean;
          LabelName: string;
          GetNumber: real;

          procedure SetGirisColor(gcolor: TColor);
          procedure SetRenkDurum(const val: Boolean);
          procedure SetCevirEdit(const Val: Boolean);
          procedure SetCikisColor(ccolor: TColor);
          procedure SetVersion(const Val: string);
          procedure BuyukYaz(const Val: Boolean);
          procedure TamBuyukYaz(const Val: Boolean);
          procedure SayiYaz(const Val: Boolean);
          function GetVersion: string;
          Function VirgulGoster(x:Real):String;
          procedure SetAlignment(iAlign: TAlignment);
  protected
        procedure KeyPress(var Key: Char); override;
        procedure KeyDown(var Key: Word; Shift: TShiftState); override;
        procedure CreateParams(var aParams: TCreateParams); override;
        procedure Change; override;
        procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
        procedure CMExit(var Message: TCMExit); message CM_EXIT;
  public
           constructor Create(aOwner: TComponent); override;
  published
           property About: string read GetVersion write SetVersion stored FALSE;
           property RenkDurum: Boolean read FRenkDurum write SetRenkDurum default true;
           property RenkGiris: TColor read color1 write SetGirisColor;
           property RenkCikis: TColor read color2 write SetCikisColor;
           property BuyukKucuk: Boolean read BuyukOku write BuyukYaz default false;
           property Buyuk: Boolean read TamBuyukOku write TamBuyukYaz default false;
           property Sayi: Boolean read SayiEdit write SayiYaz default false;
           property Hizalama: TAlignment read f_iAlign write SetAlignment default taLeftJustify;
           property Number: real read GetNumber;
           property Ceviri: Boolean read CevirEdit write SetCevirEdit default false;
           property CevirText: string read LabelName;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TDBTechEdit]);
end;

function Cevir(Val : extended) : String;
const
  hanex : array[0..2, '0'..'9'] of String = (
    ('', 'Bir ', 'Ýki ', 'Üç ', 'Dört ', 'Beþ ', 'Altý ', 'Yedi ', 'Sekiz ', 'Dokuz '),
    ('', 'On ', 'Yirmi ', 'Otuz ', 'Kýrk ', 'Elli ', 'Atmýþ ', 'Yetmiþ ', 'Seksen ', 'Doksan '),
    ('', 'Yüz ', 'Ýki Yüz ', 'Üç Yüz ', 'Dört Yüz ', 'Beþ Yüz ', 'Altý Yüz ', 'Yedi Yüz ', 'Sekiz Yüz ', 'Dokuz Yüz '));
  katx : array[0..5] of String = ('', 'Bin ', 'Milyon ', 'Milyar ', 'Trilyon ', 'Katrilyon ');
var
  Kat : Integer;
function _Cevir(sy : String) : String;
var
  lsy, hn : Integer;
begin
  Result := ''; if sy = '' then Exit;
  if (sy = '1') and (kat = 1) then begin Result := 'Bin'; Exit; end;
  hn := 0; lsy := length(sy);
  while (hn < 3) and (hn < lsy)
  do
    begin
      Result := hanex[hn, sy[lsy - hn]] + Result;
      Inc(hn);
    end;
  Result := Result + katx[kat];
  Inc(kat);
  if lsy > 3 then Result := _Cevir(copy(sy, 1, lsy - 3)) + Result;
end;
begin
  Result := ''; kat := 0;
  Result := _Cevir(formatFloat('##0', int(Val)));
end;

constructor TDBTechEdit.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);
        color1:=clInfobk;
        color2:=clwhite;
        FRenkDurum := true;

    if SayiEdit = true then
    begin
        if DataSource.DataSet.Active = false then
                text := '';
        if DataSource.DataSet.FindField(DataField).AsString = '' then
        begin
                DataSource.DataSet.Edit;
                DataSource.DataSet.FindField(DataField).AsInteger := 0;
                DataSource.DataSet.Post;
        end;
    end;
end;

procedure TDBTechEdit.SetCevirEdit(const Val: Boolean);
begin
        CevirEdit := Val;
end;

procedure TDBTechEdit.SetAlignment(iAlign: TAlignment);
begin
    if iAlign <> f_iAlign then
begin
    // Veriyi Kaydet
        f_iAlign := iAlign;

// editi yeni hizalama sitili ile tekrar oluþtur.
    RecreateWnd;
end;
end;

procedure TDBTechEdit.CreateParams(var aParams: TCreateParams);
const
AlignmentArray: array[TAlignment] of DWord =
            (ES_LEFT, ES_RIGHT, ES_CENTER);
begin
inherited CreateParams(aParams);

aParams.Style := aParams.Style AND (NOT 0) OR (AlignmentArray[f_iAlign]);
end;

procedure TDBTechEdit.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TDBTechEdit.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;
procedure TDBTechEdit.CMEnter(var Message: TCMEnter); //kutucuða girdiðinde
begin
        if FRenkDurum then
        begin
                Color := color1;
                Refresh;
        end;

        Change;
        if (SayiEdit) and (DataSource <> nil) and (DataSource.DataSet <> nil) and (DataSource.DataSet.Active) and
                (DataField <> '') then
                        GetNumber := DataSource.DataSet.FindField(DataField).AsFloat;
inherited;
end;

procedure TDBTechEdit.CMExit(var Message: TCMExit); // kutucuktan çýktýðýnda
begin
        if FRenkDurum then
                Color := color2;
        if (SayiEdit = true) and (DataSource <> nil) and (DataSource.DataSet <> nil) and (DataSource.DataSet.Active = true) then
        begin
                        DataSource.DataSet.Edit;
                        DataSource.DataSet.FindField(DataField).AsFloat := GetNumber;
                        DataSource.DataSet.Post;
        end else
                inherited;
        Refresh;
end;

function TDBTechEdit.GetVersion: string;
begin
        Result := DBTechEdit_ABOUT;
end;

Function TDBTechEdit.VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat('###,###', x);
end;

procedure TDBTechEdit.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlamaz }
end;

procedure TDBTechEdit.Change;
var
        VigulYeri:Integer;
        Sayi : String;
        yer: integer;
        uzunluk: integer;
        sayiint: integer;
        deneme: extended;
begin
  inherited Change;
        if SayiEdit = true then
        begin
                if Text <> '' then
                begin
                        Sayi := Text;
                        while Pos('.',Sayi) > 0 do
                                Delete(Sayi,Pos('.',Sayi),1);
                        if (Pos(',',Sayi) = 0) and (tryStrToFloat(Sayi,deneme) = true) then
                        begin
                                if (Text <>'') and (Text <> VirgulGoster(GetNumber)) Then
                                Begin
                                        yer := SelStart;
                                        uzunluk := Length(Text);
                                        VigulYeri := Pos('.', Sayi);
                                        if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                                VigulYeri :=Pos('.', Sayi);
                                        if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                                VigulYeri :=Pos('.', Sayi);
                                        if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                                VigulYeri :=Pos('.', Sayi);
                                        if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                                VigulYeri :=Pos('.', Sayi);
                                        if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                                VigulYeri :=Pos('.', Sayi);
                                        if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                        if Length(Text) > 3 then
                                                Text := VirgulGoster(StrToFloat(Sayi));
                                        GetNumber := StrToFloat(Sayi);
                                        SelStart  := yer+Length(Text)-uzunluk;
                                end else GetNumber := 0;
                        end;
                end else GetNumber := 0;
        end else
                GetNumber := 0;
        if (CevirEdit = true) and (tryStrToInt(text,sayiint)) then
                LabelName := Cevir(sayiint);
end;

procedure TDBTechEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = Ord('K')) then
                BuyukOku := not BuyukOku;
end;

procedure TDBTechEdit.KeyPress(var Key: Char);
var
        i: integer;
begin
  inherited KeyPress(Key);
        if SayiEdit = true then
        begin
                if (Key = #$20) and (text <> '') then
                        text := text + '000';
                IF (not (Key in ['0'..'9'])) and (Key <> ',') and (Key <> #8) and ( Key <> #13) and (Key <> Chr(VK_DELETE)) then
                        Key :=#0;
        end;
        if BuyukOku = true then
        begin
        if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] ='.') or (Text[SelStart] =':') or (Text[SelStart] ='[') or (Text[SelStart] ='/') or (Text[SelStart] ='-')
                 or (Text[SelStart] ='+') or (Text[SelStart] =']') or (Text[SelStart] ='(') or (Text[SelStart] =')') or (Text[SelStart] ='{') or (Text[SelStart] ='}') or (tryStrToInt(Text[SelStart],i)) then
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
        if TamBuyukOku = true then
        begin
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
                        if Key='w' Then Key:='W';
        end;
end;

procedure TDBTechEdit.BuyukYaz(const Val: Boolean);
begin
        if Val <> BuyukOku then
                BuyukOku := Val;
        TamBuyukOku := false;
        SayiEdit := false;

  RecreateWnd;
end;

procedure TDBTechEdit.TamBuyukYaz(const Val: Boolean);
begin
        TamBuyukOku := Val;
        BuyukOku := false;
        SayiEdit := false;
        RecreateWnd;
end;

procedure TDBTechEdit.SayiYaz(const Val: Boolean);
begin
        if (Val <> SayiEdit) And (BuyukOku = False) then
        begin
                SayiEdit := Val;
                text :='';
        end;
        RecreateWnd;
end;

procedure TDBTechEdit.SetRenkDurum(const val: Boolean);
begin
        FRenkDurum := val;
end;

end.
