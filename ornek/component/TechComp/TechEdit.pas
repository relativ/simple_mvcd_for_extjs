unit TechEdit;

interface

uses
    WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Mask;

  const
  TechEdit_ABOUT = 'Tech Yazýlým / Serkan Güneþ'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

type
  TTechEdit = class;

  TTechEdit = class(TCustomMaskEdit)
  private
  f_iAlign: TAlignment;
  BuyukOku,TamBuyukOku: Boolean;
  SayiEdit: Boolean;
  islemoku: Boolean;
  CevirEdit: Boolean;
  color1: TColor;
  color2: TColor;
  LabelName,FUpperTurk: string;

  protected
  GetNumber: real;
  procedure Change; override;
  procedure KeyPress(var Key: Char); override;
  procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  procedure CMExit(var Message: TCMExit); message CM_EXIT;
  procedure SetGirisColor(gcolor: TColor);
  procedure SetCikisColor(ccolor: TColor);
  procedure SetAlignment(iAlign: TAlignment);
  procedure Islemyaz(const Val: Boolean);
  procedure SetCevirEdit(const Val: Boolean);
  procedure SetVersion(const Val: string);
  function  GetVersion: string;
  procedure CreateParams(var aParams: TCreateParams); override;
  procedure BuyukYaz(const Val: Boolean);
  procedure TamBuyukYaz(const Val: Boolean);
  procedure SayiYaz(const Val: Boolean);
  Function VirgulGoster(x:Real):String;
  public
   constructor Create(aOwner: TComponent); override;
  published
   property RenkGiris: TColor read color1 write SetGirisColor;
   property RenkCikis: TColor read color2 write SetCikisColor;
   property Hizalama: TAlignment read f_iAlign write SetAlignment default taLeftJustify;
   property BuyukKucuk: Boolean read BuyukOku write BuyukYaz default false;
   property Buyuk: Boolean read TamBuyukOku write TamBuyukYaz default false;
   property Sayi: Boolean read SayiEdit write SayiYaz default false;
   property Ceviri: Boolean read CevirEdit write SetCevirEdit default false;
   property About: string read GetVersion write SetVersion stored FALSE;
   property CevirText: string read LabelName;
   property UpperTurk: string read FUpperTurk;
   property Number: real read GetNumber;
   property IslemYap: Boolean read islemoku write Islemyaz default false;
   property Align;
   property Anchors;
    property AutoSelect;
    property AutoSize;
    property BevelEdges;
    property BevelInner;
    property BevelOuter;
    property BevelKind;
    property BevelWidth;
    property BiDiMode;
    property BorderStyle;
    property CharCase;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property EditMask;
    property Font;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Text;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;
    
procedure Register;
    
implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechEdit]);
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

constructor TTechEdit.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);

 color1:=clInfobk;
 color2:=clwhite;
 f_iAlign := taLeftJustify;
 BuyukOku := false;
 if SayiEdit = true then
        text := '';
end;

procedure TTechEdit.SetCevirEdit(const Val: Boolean);
begin
        CevirEdit := Val;
end;

Function TTechEdit.VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat('###,###', x);
end;

procedure TTechEdit.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TTechEdit.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;
procedure TTechEdit.CMEnter(var Message: TCMEnter); //kutucuða girdiðinde
begin
        inherited;
        begin
                Color := color1;
                Change;
                refresh;
        end;

end;
procedure TTechEdit.CMExit(var Message: TCMExit); // kutucuktan çýktýðýnda
begin
        inherited;
        begin
                Color := color2;
                refresh;
        end;
end;

procedure TTechEdit.Change;
var
        VigulYeri:Integer;
        Sayi : String;
        i: integer;
        yer: integer;
        uzunluk: integer;
begin
        if SayiEdit = true then
        begin
                if pos(',',Text) = 0 then
                begin
                        if (Text<>'') and (Text <> VirgulGoster(GetNumber))  Then
                        Begin
                                yer := SelStart;
                                uzunluk := Length(Text);
                                Sayi:=Text;
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
                                        VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                if Length(Text) > 3 then
                                        Text:=VirgulGoster(StrToFloat(Sayi));
                                GetNumber := StrToFloat(Sayi);
                                SelStart := yer+Length(Text)-uzunluk;
                        end else GetNumber := 0;

                        if CevirEdit = true then
                            LabelName := Cevir(GetNumber);
                        end else begin
                          Sayi := Text;
                          while pos('.',Sayi) > 0 do
                            Delete(Sayi,Pos('.',Sayi),1); 
                          if Sayi[length(Sayi)] = ',' then
                            Delete(Sayi,length(Sayi),1)
                         { else
                            Sayi := StringReplace(Sayi,',','.',[rfReplaceAll])};
                          GetNumber := StrToFloat(Sayi);
                        end;



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
    end;
  inherited Change;
end;

procedure TTechEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = Ord('K')) then
                BuyukOku := not BuyukOku;
end;

procedure TTechEdit.KeyPress(var Key: Char);
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

procedure TTechEdit.CreateParams(var aParams: TCreateParams);
const
AlignmentArray: array[TAlignment] of DWord =
            (ES_LEFT, ES_RIGHT, ES_CENTER);
begin
inherited CreateParams(aParams);

aParams.Style := aParams.Style AND (NOT 0) OR (AlignmentArray[f_iAlign]);
end;

procedure TTechEdit.SetAlignment(iAlign: TAlignment);
begin
    if iAlign <> f_iAlign then
begin
    // Veriyi Kaydet
        f_iAlign := iAlign;

// editi yeni hizalama sitili ile tekrar oluþtur.
    RecreateWnd;
end;
end;

function TTechEdit.GetVersion: string;
begin
  Result := TechEdit_ABOUT;
end;

procedure TTechEdit.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlama }
end;

procedure TTechEdit.BuyukYaz(const Val: Boolean);
begin
if (Val <> BuyukOku) And (SayiEdit = false) then
BuyukOku := Val;
SayiEdit := false;
TamBuyukOku := false;

  RecreateWnd;
end;

procedure TTechEdit.TamBuyukYaz(const Val: Boolean);
begin
        TamBuyukOku := Val;
        SayiEdit := false;
        BuyukOku := false;
        RecreateWnd;
end;

procedure TTechEdit.SayiYaz(const Val: Boolean);
begin
if (Val <> SayiEdit) And (BuyukOku = False) then
begin
SayiEdit := Val;
text :='';
end;
  RecreateWnd;
end;

procedure TTechEdit.Islemyaz(const Val: Boolean);
begin
if (Val <> islemoku) And (SayiEdit = True) then
begin
islemoku := Val;
RecreateWnd;
end;
end;



end.
