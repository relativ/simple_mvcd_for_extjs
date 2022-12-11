unit TechCombo;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;
const
  TechCombo_ABOUT = 'Tech Yaz�l�m/ Serkan G�ne� '#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';
type
  TTechCombo = class(TComboBox)
  private
    BuyukOku: Boolean;
    color1: TColor;
    color2: TColor;
    procedure BuyukYaz(const Val: Boolean);
    procedure SetGirisColor(gcolor: TColor);
    procedure SetCikisColor(ccolor: TColor);
    function GetVersion: string;
  protected
  procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  procedure CMExit(var Message: TCMExit); message CM_EXIT;
  procedure KeyPress(var Key: Char); override;
  public
   constructor Create(aOwner: TComponent); override;
  published
  property RenkGiris: TColor read color1 write SetGirisColor;
  property RenkCikis: TColor read color2 write SetCikisColor;
  property About: string read GetVersion;
  property BuyukKucuk: Boolean read BuyukOku write BuyukYaz default false;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechCombo]);
end;

constructor TTechCombo.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);

 color1:=clInfobk;
 color2:=clwhite;
end;

procedure TTechCombo.BuyukYaz(const Val: Boolean);
begin
        BuyukOku := Val;
        RecreateWnd;
end;

procedure TTechCombo.CMEnter(var Message: TCMEnter); //kutucu�a girdi�inde
begin
inherited;
Color := color1;

end;
procedure TTechCombo.CMExit(var Message: TCMExit); // kutucuktan ��kt���nda
begin
inherited;
Color := color2;
end;

procedure TTechCombo.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara g�re editi tekrar olu�turur
   RecreateWnd;
end;

procedure TTechCombo.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara g�re editi tekrar olu�turur
   RecreateWnd;
end;

function TTechCombo.GetVersion: string;
begin
  Result := TechCombo_ABOUT;
end;

procedure TTechCombo.KeyPress(var Key: Char);
begin
 inherited KeyPress(Key);
        if BuyukOku = true then
        begin
        if (Style = csDropDown) and ((SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] ='.') or (Text[SelStart] =':') or (Text[SelStart] ='[') or (Text[SelStart] ='/') or (Text[SelStart] ='-')) then
                Begin
                        if Key='a' Then Key:='A';
                        if Key='b' Then Key:='B';
                        if Key='c' Then Key:='C';
                        if Key='�' Then Key:='�';
                        if Key='d' Then Key:='D';
                        if Key='e' Then Key:='E';
                        if Key='f' Then Key:='F';
                        if Key='g' Then Key:='G';
                        if Key='�' Then Key:='�';
                        if Key='h' Then Key:='H';
                        if Key='�' Then Key:='I';
                        if Key='i' Then Key:='�';
                        if Key='j' Then Key:='J';
                        if Key='k' Then Key:='K';
                        if Key='l' Then Key:='L';
                        if Key='m' Then Key:='M';
                        if Key='n' Then Key:='N';
                        if Key='o' Then Key:='O';
                        if Key='�' Then Key:='�';
                        if Key='p' Then Key:='P';
                        if Key='r' Then Key:='R';
                        if Key='s' Then Key:='S';
                        if Key='�' Then Key:='�';
                        if Key='t' Then Key:='T';
                        if Key='u' Then Key:='U';
                        if Key='�' Then Key:='�';
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
                        if Key='�' Then Key:='�';
                        if Key='D' Then Key:='d';
                        if Key='E' Then Key:='e';
                        if Key='F' Then Key:='f';
                        if Key='G' Then Key:='g';
                        if Key='�' Then Key:='�';
                        if Key='H' Then Key:='h';
                        if Key='I' Then Key:='�';
                        if Key='�' Then Key:='i';
                        if Key='J' Then Key:='j';
                        if Key='K' Then Key:='k';
                        if Key='L' Then Key:='l';
                        if Key='M' Then Key:='m';
                        if Key='N' Then Key:='n';
                        if Key='O' Then Key:='o';
                        if Key='�' Then Key:='�';
                        if Key='P' Then Key:='p';
                        if Key='R' Then Key:='r';
                        if Key='S' Then Key:='s';
                        if Key='�' Then Key:='�';
                        if Key='T' Then Key:='t';
                        if Key='U' Then Key:='u';
                        if Key='�' Then Key:='�';
                        if Key='V' Then Key:='v';
                        if Key='Y' Then Key:='y';
                        if Key='Z' Then Key:='z';
                        if Key='X' Then Key:='x';
                        if Key='Q' Then Key:='q';
                        if Key='W' Then Key:='w';

             end;
             end;
end;

end.