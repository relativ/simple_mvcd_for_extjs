unit Hp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  AlignEdit, OnlineButton, OnlineCustomControl;

type
  TFHp = class(TForm)
    Panel1: TPanel;
    SpeedButton10: TOnlineButton;
    SpeedButton11: TOnlineButton;
    SpeedButton12: TOnlineButton;
    SpeedButton30: TOnlineButton;
    SpeedButton31: TOnlineButton;
    SpeedButton32: TOnlineButton;
    SpeedButton33: TOnlineButton;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton3: TOnlineButton;
    Memo1: TMemo;
    Panel4: TPanel;
    bir: TOnlineButton;
    iki: TOnlineButton;
    uc: TOnlineButton;
    bes: TOnlineButton;
    alti: TOnlineButton;
    dokuz: TOnlineButton;
    yedi: TOnlineButton;
    sekiz: TOnlineButton;
    dort: TOnlineButton;
    Esittir: TOnlineButton;
    Bol: TOnlineButton;
    Carp: TOnlineButton;
    Topla: TOnlineButton;
    Cikar: TOnlineButton;
    SpeedButton21: TOnlineButton;
    SpeedButton22: TOnlineButton;
    SpeedButton23: TOnlineButton;
    SpeedButton24: TOnlineButton;
    SpeedButton25: TOnlineButton;
    SpeedButton26: TOnlineButton;
    SpeedButton27: TOnlineButton;
    SpeedButton29: TOnlineButton;
    sifir: TOnlineButton;
    ciftsifir: TOnlineButton;
    ucsifir: TOnlineButton;
    SpeedButton28: TOnlineButton;
    SpeedButton34: TOnlineButton;
    virgul: TOnlineButton;
    SaveDialog1: TSaveDialog;
    Panel5: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DosyayaKaydet1: TMenuItem;
    emizle1: TMenuItem;
    SpeedButton1: TOnlineButton;
    SpeedButton4: TOnlineButton;
    edit2: TAlignEdit;
    Edit1: TEdit;
    SpeedButton2: TOnlineButton;
    Memo2: TMemo;
    MainMenu1: TMainMenu;
    Grnm1: TMenuItem;
    RaporuGster1: TMenuItem;
    DaimasteTut1: TMenuItem;
    Panel6: TPanel;
    Kapat1: TMenuItem;
    Yardm1: TMenuItem;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure yediClick(Sender: TObject);
    procedure sifirClick(Sender: TObject);
    procedure ciftsifirClick(Sender: TObject);
    procedure ucsifirClick(Sender: TObject);
    procedure birClick(Sender: TObject);
    procedure ikiClick(Sender: TObject);
    procedure ucClick(Sender: TObject);
    procedure dortClick(Sender: TObject);
    procedure besClick(Sender: TObject);
    procedure altiClick(Sender: TObject);
    procedure sekizClick(Sender: TObject);
    procedure dokuzClick(Sender: TObject);
    procedure BolClick(Sender: TObject);
    procedure CarpClick(Sender: TObject);
    procedure CikarClick(Sender: TObject);
    procedure ToplaClick(Sender: TObject);
    procedure EsittirClick(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure virgulClick(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure DosyayaKaydet1Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure emizle1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RaporuGster1Click(Sender: TObject);
    procedure DaimasteTut1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Kapat1Click(Sender: TObject);
    procedure Yardm1Click(Sender: TObject);
    procedure birKeyPress(Sender: TObject; var Key: Char);
  private

  public
    { Public declarations }
  end;

var
  FHp: TFHp;
  ilk: Real;
  m: Real;
  memory: Real;
  ikinci: Real;
  ikincibol: Real;
  bol1: boolean;
  carp1: boolean;
  topla1: boolean;
  cikart: boolean;
  yuzde: boolean;
  enter: boolean;
  islem:integer;
  sonuc:integer;
  a:integer;
  cizgi:string;
  ikincitus:integer;
  ilkedit2:string;
  ikinciedit2:string;
  ikinciyazi:string;
  negatif : boolean;
  SINIR : boolean;
implementation
 uses registry;
{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat('###,###', x);
end;

procedure TFHp.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

        if key ='*' then
        begin
        CarpClick(Sender);
        end
        else if key ='/' then
        begin
        BolClick(Sender);
        end
        else if key ='-' then
        begin
        CikarClick(Sender);
        end
        else if key ='+' then
        begin
        ToplaClick(Sender);
        end
        else if key =#13 then
        begin
        EsittirClick(Sender);
        end;
        if key = '0' then
        begin
        sifirclick(sender);
        end
        else if key = '1' then
        begin
        birclick(sender);
        end
        else if key = '2' then
        begin
        ikiclick(sender);
        end
        else if key = '3' then
        begin
        ucclick(sender);
        end
        else if key = '4' then
        begin
        dortclick(sender);
        end
        else if key = '5' then
        begin
        besclick(sender);
        end
        else if key = '6' then
        begin
        alticlick(sender);
        end
        else if key = '7' then
        begin
        yediclick(sender);
        end
        else if key = '8' then
        begin
        sekizclick(sender);
        end
        else if key = '9' then
        begin
        dokuzclick(sender);
        end
        else if key = ',' then
        begin
        if pos(',',edit2.Text) = 0 then
        begin
        virgulclick(sender);
        end;
        end
        else if (key = 'a') or (Key='A') then
        begin
        SpeedButton21Click(sender);
        end
        else if (key = 'c') or (key = 'C') then
        begin
        SpeedButton22Click(sender);
        end
        else if (key = 'k') or (key = 'K') then
        begin
        SpeedButton28Click(sender);
        end
        else if (key = 'x') or (key = 'X') then
        begin
        SpeedButton27Click(sender);
        end
        else if key = #27 then
        begin
        close;
        end
        else if key = '%' then
        begin
        SpeedButton29Click(sender);
        end
        else if (key = 't') or (key = 'T') then
        begin
        emizle1Click(sender);
        end
        else if (key = 'r') or (key = 'R' ) then
        begin
        SpeedButton4Click(sender);
        end
        else if key = #8 then
        begin
                if Length(edit2.Text) <> 1 then
                begin
                        edit2.SelStart := 0;
                        edit2.SelLength := Length(edit2.Text)-1;
                        edit2.Text := edit2.SelText;
                        edit1.SelStart := 0;
                        edit1.SelLength := Length(edit1.Text)-1;
                        edit1.Text := edit1.SelText;
                end else
                begin
                        edit2.Text := '0';
                        edit1.Text :='0';
                end;
        end;
        end;

procedure TFHp.yediClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'7';
edit1.Text :=edit1.Text+'7';
end
else
begin
edit2.Text:='7';
edit1.Text:='7';
end;
end;

procedure TFHp.sifirClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit1.Text :=edit1.Text+'0';
edit2.Text :=edit2.Text+'0';
end
else
begin
edit2.Text:='0';
edit1.Text:='0';
end;
end;


procedure TFHp.ciftsifirClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'00';
edit1.Text :=edit1.Text+'00';
end;
end;

procedure TFHp.ucsifirClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit1.Text :=edit1.Text+'000';
edit2.Text :=edit2.Text+'000';
end;
end;

procedure TFHp.birClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'1';
edit1.Text :=edit1.Text+'1';
end
else
begin
edit1.Text:='1';
edit2.Text:='1';
end;
end;


procedure TFHp.ikiClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'2';
edit1.Text :=edit1.Text+'2';
end
else
begin
edit2.Text:='2';
edit1.Text:='2';
end;
end;

procedure TFHp.ucClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'3';
edit1.Text :=edit1.Text+'3';
end
else
begin
edit2.Text:='3';
edit1.Text:='3';
end;
end;

procedure TFHp.dortClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'4';
edit1.Text :=edit1.Text+'4';
end
else
begin
edit2.Text:='4';
edit1.Text:='4';
end;
end;

procedure TFHp.besClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'5';
edit1.Text :=edit1.Text+'5';
end
else
begin
edit1.Text:='5';
edit2.Text:='5';
end;
end;

procedure TFHp.altiClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'6';
edit1.Text :=edit1.Text+'6';
end
else
begin
edit2.Text:='6';
edit1.Text:='6';
end;
end;

procedure TFHp.sekizClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'8';
edit1.Text :=edit1.Text+'8';
end
else
begin
edit2.Text:='8';
edit1.Text:='8';
end;
end;

procedure TFHp.dokuzClick(Sender: TObject);
begin
if ikincitus = 1 then
begin
edit2.Text :='';
edit1.Text :='';
end;
ikincitus:=0;
if sonuc = 1 then
begin
edit1.Text :='0';
edit2.Text :='0';
sonuc:=0;
end;

if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit2.Text :=edit2.Text+'9';
edit1.Text :=edit1.Text+'9';
end
else
begin
edit2.Text:='9';
edit1.Text:='9';
end;
end;

procedure TFHp.BolClick(Sender: TObject);
begin
	islem:=0;
        panel6.Caption :='/';
        if ikincitus = 1 then
        begin
        bol1 := true;
	carp1:= false;
	topla1:= false;
	cikart:= false;
        yuzde:=false;
        enter:=false;
        end
        else
        begin
        ikincitus:=1;
        if edit2.Text <>'' then
        begin
        if ilk <> 0 then
        begin
        if bol1 = true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk / StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' / '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        bol1 := false;
        end
        else if carp1 =true then
        begin
        ikinciedit2:=edit2.Text;
        try
        Edit1.Text := FloatToStr(ilk * StrToFloat(edit1.Text));
        except
        end;
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' * '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        carp1 := false;
        end
        else if topla1 =true then
        begin
        memo2.Lines.Add(edit2.Text);
        Edit1.Text := FloatToStr(ilk + StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        for a:=1 to length(edit2.Text) do
        cizgi:=cizgi+'_';
        memo1.Lines.Add(memo2.Lines.Text);
        memo1.Lines[memo1.Lines.Count - 1 ] := '+'+cizgi;
        cizgi:='';
        memo1.Lines.Add(edit2.Text);
        memo1.Lines.Add('------------------------------');
        memo2.Lines.Text:='';
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        topla1 := false;
        end
        else if cikart =true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk - StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' - '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        cikart := false;
        end
        else if yuzde = true then
        begin
        ikinciedit2:=edit2.Text;
        edit1.Text:=FloatToStr(ilk * StrToFloat(edit1.Text) / 100);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' % '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        yuzde:=false;
        end;
	end;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
	end;
        bol1 := true;
	carp1:= false;
	topla1:= false;
	cikart:= false;
        yuzde:=false;
        enter:= false;
end;
end;

procedure TFHp.CarpClick(Sender: TObject);
begin
	islem:=0;
        panel6.Caption :='*';
        if ikincitus = 1 then
        begin
        bol1 := false;
	carp1:= true;
	topla1:= false;
	cikart:= false;
        yuzde:=false;
        enter:=false;
        end
        else
        begin
        ikincitus:=1;
        if edit2.Text <>'' then
        begin
        if ilk <> 0 then
        begin
        if bol1 = true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk / StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' / '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        bol1 := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if carp1 =true then
        begin
        ikinciedit2:=edit2.Text;
        try
        Edit1.Text := FloatToStr(ilk * StrToFloat(edit1.Text));
        except
        end;
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' * '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        carp1 := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if topla1 =true then
        begin
        memo2.Lines.Add(edit2.Text); 
        Edit1.Text := FloatToStr(ilk + StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        for a:=1 to length(edit2.Text) do
        cizgi:=cizgi+'_';
        memo1.Lines.Add(memo2.Lines.Text);
        memo1.Lines[memo1.Lines.Count - 1 ] := '+'+cizgi;
        cizgi:='';
        memo1.Lines.Add(edit2.Text);
        memo1.Lines.Add('------------------------------');
        memo2.Lines.Text:='';
        topla1 := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if cikart =true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk - StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' - '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        cikart := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if yuzde = true then
        begin
        ikinciedit2:=edit2.Text;
        edit1.Text:=FloatToStr(ilk * StrToFloat(edit1.Text) / 100);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' % '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        yuzde:=false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
	end;
	end;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end;
	bol1 := false;
	carp1:= true;
	topla1:= false;
	cikart:= false;
        yuzde:=false;
        enter:= false;
 end;
end;

procedure TFHp.CikarClick(Sender: TObject);
begin
	islem:=0;
        panel6.Caption :='-';
        if ikincitus = 1 then
        begin
        bol1 := false;
	carp1:= false;
	topla1:= false;
	cikart:= true;
        yuzde:=false;
        enter:=false;
        end
        else
        begin
        ikincitus:=1;
        if edit2.Text <>'' then
        begin
        if ilk <> 0 then
        begin
        if bol1 = true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk / StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' / '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        bol1 := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if carp1 =true then
        begin
        ikinciedit2:=edit2.Text;
        try
        Edit1.Text := FloatToStr(ilk * StrToFloat(edit1.Text));
        except
        end;
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' * '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        carp1 := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if topla1 =true then
        begin
        memo2.Lines.Add(edit2.Text); 
        Edit1.Text := FloatToStr(ilk + StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        for a:=1 to length(edit2.Text) do
        cizgi:=cizgi+'_';
        memo1.Lines.Add(memo2.Lines.Text);
        memo1.Lines[memo1.Lines.Count - 1 ] := '+'+cizgi;
        cizgi:='';
        memo1.Lines.Add(edit2.Text);
        memo1.Lines.Add('------------------------------');
        memo2.Lines.Text:='';
        topla1 := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if cikart =true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk - StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' - '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        cikart := false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end
        else if yuzde = true then
        begin
        ikinciedit2:=edit2.Text;
        edit1.Text:=FloatToStr(ilk * StrToFloat(edit1.Text) / 100);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' % '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        yuzde:=false;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
	end;
	end;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end;
	bol1 := false;
	carp1:= false;
	topla1:= false;
	cikart:= true;
        yuzde:=false;
        enter:= false;
        end;
end;

procedure TFHp.ToplaClick(Sender: TObject);
begin
	islem:=0;
        panel6.Caption :='+';
        if ikincitus = 1 then
        begin
        bol1 := false;
	carp1:= false;
	topla1:= true;
	cikart:= false;
        yuzde:=false;
        enter:=false;
        end
        else
        begin
        ikincitus:=1;
        if edit2.Text <>'' then
        begin
        memo2.Lines.Add(edit2.text); 
        if ilk <> 0 then
        begin
        if bol1 = true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk / StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' / '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        bol1 := false;
        end
        else if carp1 =true then
        begin
        ikinciedit2:=edit2.Text;
        try
        Edit1.Text := FloatToStr(ilk * StrToFloat(edit1.Text));
        except
        end;
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' * '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        carp1 := false;
        end
        else if topla1 =true then
        begin
        Edit1.Text := FloatToStr(ilk + StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        topla1 := false;
        end
        else if cikart =true then
        begin
        ikinciedit2:=edit2.Text;
        Edit1.Text := FloatToStr(ilk - StrToFloat(edit1.Text));
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' - '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        cikart := false
        end
        else if yuzde = true then
        begin
        ikinciedit2:=edit2.Text;
        edit1.Text:=FloatToStr(ilk * StrToFloat(edit1.Text) / 100);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' % '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        yuzde:=false;
	end;
        end;
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        end;
	bol1 := false;
	carp1:= false;
	topla1:= true;
	cikart:= false;
        yuzde:=false;
        enter:= false;
        end;
end;

procedure TFHp.EsittirClick(Sender: TObject);
begin
        ikincitus:=0;
        panel6.Caption :='';
	if islem =1 then
	bol1 := true
	else if islem =2 then
	carp1 :=true
	else if islem =3 then
	topla1 :=true
	else if islem =4 then
	cikart :=true
	else if islem =5 then
	yuzde :=true;

	if (edit2.Text <>'') And (edit2.Text <>'0')  then
        begin
	if StrToFloat(edit1.Text) <> ilk then
	ikinci := StrToFloat(edit1.Text);
	end;
        if bol1 = true then
        begin
        if enter = false then
        begin
        ikinciedit2:=edit2.Text;
        ikincibol := StrToFloat(edit1.Text);
        end;
        if ikincibol <> 0 then
	Edit1.Text := FloatToStr(ilk / ikincibol);
        edit2.Text := Edit1.Text;
        if ikincibol <> 0 then
        begin
        memo1.Lines.Add(ilkedit2+' / '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        end
        else
        begin
        memo1.Lines.Add(ilkedit2+' / '+ ikinciedit2 +' = Sonuç Tanýmsýz');
        memo1.Lines.Add('------------------------------');
        end;
        ilkedit2 := edit2.Text;
        ilk := StrToFloat(edit1.Text);
        bol1 :=false;
        islem:=1;
        end
        else if carp1 =true then
        begin
        if enter = false then
        begin
        ikinciedit2:=edit2.Text;
        ikinci := StrToFloat(edit1.Text);
        end;
        Edit1.Text := FloatToStr(ilk * ikinci);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' * '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilkedit2 := edit2.Text;
        ilk := StrToFloat(edit1.Text);
        carp1 := false;
        islem:=2;
        end
        else if topla1 =true then
        begin
        if enter = false then
        begin
        ikinciedit2:=edit2.Text;
        ikinci := StrToFloat(edit1.Text);
        end;
        ilkedit2 := edit2.Text;
        Edit1.Text := FloatToStr(ilk + ikinci);
        edit2.Text := Edit1.Text;
        ilk := StrToFloat(edit1.Text);
        if enter = false then
        begin
        memo1.Lines.Add(memo2.Lines.Text);
        memo1.Lines[memo1.Lines.Count - 1]:=ikinciedit2;
        end
        else
        begin
        memo1.Lines.Add(ilkedit2);
        memo1.Lines.Add(ikinciedit2);
        end;
        for a:=1 to length(edit2.Text) do
        cizgi:=cizgi+'_';
        memo1.Lines.Add('+'+cizgi);
        cizgi:='';
        memo1.Lines.Add(edit2.Text);
        memo1.Lines.Add('------------------------------');
        memo2.Lines.Text:='';
        ilkedit2 := edit2.Text;
        topla1 := false;
        enter :=true;
        islem:=3;
        end
        else if cikart =true then
        begin
        if enter = false then
        begin
        ikinciedit2:=edit2.Text;
        ikinci := StrToFloat(edit1.Text);
        end;
        Edit1.Text := FloatToStr(ilk - ikinci);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' - '+ ikinciedit2 +' = '+edit2.Text);
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        cikart := false;
        islem:=4;
        end
        else if yuzde = true then
        begin
        if enter = false then
        ikinciedit2:=edit2.Text;
        edit1.Text:=FloatToStr(ilk * ikinci / 100);
        edit2.Text := Edit1.Text;
        memo1.Lines.Add(ilkedit2+' % '+ ikinciedit2 +' = '+FloatToStr(ilk * ikinci / 100));
        memo1.Lines.Add('------------------------------');
        ilk := StrToFloat(edit1.Text);
        ilkedit2 := edit2.Text;
        yuzde := false;
        islem:=5;
end
else
begin
edit1.Text := FloatToStr(ilk);
edit2.Text :=edit1.Text;
end;
        bol1 := false;
	carp1:= false;
	topla1:= false;
	cikart:= false;
        yuzde:=false;
        enter:=true;
        sonuc:=1;
end;

procedure TFHp.SpeedButton22Click(Sender: TObject);
begin
edit2.Text :='0';
edit1.Text :='0';
end;

procedure TFHp.SpeedButton2Click(Sender: TObject);
begin
if Length(edit2.Text) <> 1 then
begin
edit2.SelStart := 0;
edit2.SelLength := Length(edit2.Text)-1;
edit2.Text := edit2.SelText;
end
else
begin
edit2.Text := '0';
enter:=false;
end;
end;

procedure TFHp.virgulClick(Sender: TObject);
begin
ikincitus:=0;
if (edit2.Text <> '0') And (edit2.Text <>'') then
begin
edit1.Text :=edit1.Text+',';
edit2.Text :=edit2.Text+',';
end
else
begin
edit1.Text:='0,';
edit2.Text:='0,';
end;
end;

procedure TFHp.SpeedButton27Click(Sender: TObject);
begin
ikincitus:=0;
if edit2.Text <>''then
begin
edit1.Text := FloatToStr(sqr(StrToFloat(edit1.Text)));
edit2.Text:=edit1.Text;
enter:=false;
end;
end;

procedure TFHp.SpeedButton29Click(Sender: TObject);
begin
ikincitus:=0;
islem := 0;
panel6.Caption :='%';
if edit2.Text <>''then
begin
ilk:= StrToFloat(edit1.Text);
ilkedit2 := edit2.Text;
edit2.Text :='';
edit1.Text :='';
	bol1 := false;
	carp1:= false;
	topla1:= false;
	cikart:= false;
        yuzde:=true;
        enter:= false;
end;
end;

procedure TFHp.SpeedButton28Click(Sender: TObject);
begin
if negatif = false then
begin
ikincitus:=0;
if edit2.Text <>''then
begin
edit1.Text := FloatToStr(sqrt(StrToFloat(edit1.Text)));
edit2.Text:=edit1.Text;
enter:=false;
end;
end
else
memo1.Lines.Add('Geçersiz Ýþlem..'); 
end;

procedure TFHp.SpeedButton21Click(Sender: TObject);
begin
        edit2.Text :='0';
        edit1.Text :='0';
        ilk := 0;
        ikinci := 0;
        panel6.Caption :='';
        bol1 := false;
	carp1:= false;
	topla1:= false;
	cikart:= false;
        yuzde:=false;
        enter:=false; 
end;

procedure TFHp.SpeedButton26Click(Sender: TObject);
var
Registry: TRegistry;
begin
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
if (edit2.Text <>'') and (edit2.Text <>'0') and (edit2.Text <>'0,') then
begin
m := StrToFloat(edit1.Text);
Registry.WriteString('hafiza',edit1.Text);
memory := 1;
panel5.Caption := 'M';
end;
end;

procedure TFHp.SpeedButton24Click(Sender: TObject);
begin
if memory <> 0 then
begin
edit2.Text := FloatToStr(m);
edit1.Text := FloatToStr(m);
end;
end;

procedure TFHp.SpeedButton25Click(Sender: TObject);
begin
edit2.Text := FloatToStr(m - StrToFloat(edit1.Text));
end;

procedure TFHp.SpeedButton23Click(Sender: TObject);
var
Registry: TRegistry;
begin
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
Registry.WriteString('hafiza','');
memory := 0;
panel5.Caption := '';
end;

procedure TFHp.DosyayaKaydet1Click(Sender: TObject);
begin
if Savedialog1.Execute then
memo1.Lines.SaveToFile(SaveDialog1.FileName);
edit2.SetFocus;
end;

procedure TFHp.SpeedButton34Click(Sender: TObject);
begin
ikincitus:=0;
if (edit2.Text[1] <> '-') And (edit2.Text <>'0') then
begin
edit1.Text:= '-'+edit1.Text;
edit2.Text:= '-'+edit2.Text;
negatif := true;
end
else
begin
if edit2.Text <>'0' then
begin
edit2.SelStart := 1;
edit2.SelLength := Length(edit2.Text);
edit2.Text :=edit2.SelText;
edit1.SelStart := 1;
edit1.SelLength := Length(edit1.Text);
edit1.Text :=edit1.SelText;
negatif := false;
end;
end;
end;

procedure TFHp.emizle1Click(Sender: TObject);
begin
memo1.Lines.Clear;
edit2.SetFocus;
end;

procedure TFHp.SpeedButton1Click(Sender: TObject);
begin
try
        if (edit1.Text<>'0')  Then
                edit2.Text := FloatToStr(1 / StrToFloat(edit1.Text));
except
  on EZeroDivide do Memo1.Lines.Add('Hata: Pozitif Sonsuzluk');
end;

end;

procedure TFHp.Edit2Change(Sender: TObject);
Var
        VigulYeri:Integer;
        Sayi : String;
        VirgulSayi : String;
begin
                if Edit2.Text<>'' Then
                Begin
                        if Pos(',',Edit2.Text) = 0 then
                        begin
                                Sayi:=Edit2.Text;
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
                                if Length(Edit2.Text) <> 1 then
                                        Edit2.Text:=VirgulGoster(StrToFloat(Sayi));
                                Edit2.SelStart:=Length(Edit2.Text);
                        end else begin
                                        Sayi := Copy(edit2.text,1,Pos(',',Edit2.Text)-1);
                                        VirgulSayi := Copy(edit2.text,Pos(',',Edit2.Text),length(edit2.text));
                                        if Sayi <> '0' then
                                        begin
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
                                                if Length(Edit2.Text) <> 1 then
                                                        Edit2.Text:=VirgulGoster(StrToFloat(Sayi))+VirgulSayi;
                                        end else Edit2.Text := '0'+VirgulSayi;
                                        Edit2.SelStart:=Length(Edit2.Text);
                        end;
                end;
end;

procedure TFHp.Memo1Click(Sender: TObject);
begin
edit2.SetFocus;
end;

procedure TFHp.SpeedButton4Click(Sender: TObject);
var
goster:string;
Registry: TRegistry;
begin
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
goster := Registry.ReadString('rapor');
if goster = '1' then
begin
Registry.WriteString('rapor','0');
Height := 318;
SpeedButton4.Caption :='Ýþlemleri Göster';
end
else
begin
Registry.WriteString('rapor','1');
Height :=486;
SpeedButton4.Caption :='Ýþlemleri Gizle';
end;
end;

procedure TFHp.FormCreate(Sender: TObject);
var
Registry :TRegistry;
s:string;
gorunum:string;
history:string;
hafiza:string;
begin
negatif := false;
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
s := Registry.ReadString('rapor');
gorunum := Registry.ReadString('gorunum');
history:= Registry.ReadString('history');
hafiza:= Registry.ReadString('hafiza');
if hafiza <>'' then
begin
m := StrToFloat(hafiza);
memory := 1;
panel5.Caption := 'M';
end;
if history ='1' then
begin
memo1.Lines.LoadFromFile('C:\Program Files\Common Files\SYSTEM\history.txt');
end;
if gorunum = '1' then
begin
FormStyle := fsStayOnTop;
DaimasteTut1.Checked :=true;
end
else
begin
FormStyle := fsNormal;
DaimasteTut1.Checked :=false;
end;
if s = '1' then
begin
Height := 500;
SpeedButton4.Caption :='Ýþlemleri Gizle';
RaporuGster1.Checked :=true;
end
else
begin
SpeedButton4.Caption :='Ýþlemleri Göster';
Height :=318;
RaporuGster1.Checked :=false;
end;
end;

procedure TFHp.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edit2.SetFocus;
end;

procedure TFHp.RaporuGster1Click(Sender: TObject);
var
Registry:TRegistry;
begin
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
if RaporuGster1.Checked =true then
begin
RaporuGster1.Checked := false;
Registry.WriteString('rapor','0');
Height := 318;
SpeedButton4.Caption :='Ýþlemleri Göster';
end
else
begin
RaporuGster1.Checked := true;
Registry.WriteString('rapor','1');
Height := 500;
SpeedButton4.Caption :='Ýþlemleri Gizle';
end;
edit2.SetFocus;
end;

procedure TFHp.DaimasteTut1Click(Sender: TObject);
var
Registry:TRegistry;
begin
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
if DaimasteTut1.Checked =false then
begin
FormStyle := fsStayOnTop;
DaimasteTut1.Checked :=true;
Registry.WriteString('gorunum','1');
end
else
begin
FormStyle := fsNormal;
DaimasteTut1.Checked :=false;
Registry.WriteString('gorunum','0');
end;
edit2.SetFocus;
end;

procedure TFHp.FormClose(Sender: TObject; var Action: TCloseAction);
var
Registry:TRegistry;
begin
Registry := TRegistry.Create;
Registry.RootKey := HKEY_LOCAL_MACHINE;
Registry.OpenKey('\Software\OnlineYazilim\',true);
if memo1.Lines.Text <> '' then
begin
memo1.Lines.SaveToFile('C:\Program Files\Common Files\SYSTEM\history.txt');
Registry.WriteString('history','1');
end
else
Registry.WriteString('history','0'); 

end;

procedure TFHp.edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ((Shift = [ssCTRL]) and (Key = 86)) or ((Shift = [ssSHIFT]) and (Key = VK_INSERT)) then
        begin
              edit1.Text := '';
              edit1.PasteFromClipboard;
                 try
                        StrToInt(edit1.Text);
                except
                        edit1.Text := '';
                        ShowMessage('Yapýþtýrýlan Bilgi Numerik Bir Deðer Deðildir...');
                end;
              edit2.Text := edit1.Text;
        end;
        if ((Shift = [ssCTRL]) and (Key = 67)) or ((Shift = [ssCTRL]) and (Key = VK_INSERT)) then
        begin
                edit1.SelectAll;
                edit1.CopyToClipboard;
        end;
if key = vk_delete then
        begin
        if Length(edit2.Text) <> 1 then
        begin
        edit2.SelStart := 0;
        edit2.SelLength := Length(edit2.Text)-1;
        edit2.Text := edit2.SelText;
        edit1.SelStart := 0;
        edit1.SelLength := Length(edit1.Text)-1;
        edit1.Text := edit1.SelText;
        end
        else
        begin
        edit2.Text := '0';
        edit1.Text :='0';
        end;
        end;
end;

procedure TFHp.Kapat1Click(Sender: TObject);
begin
        Close;
end;

procedure TFHp.Yardm1Click(Sender: TObject);
begin
 Application.Title := 'Yardým';
ShowMessage(
        '        A Tuþu iþlemi siler.'+#13#10+
        '        C Tuþu son yazýlan sayýyý siler.'+#13#10+
        '        T Tuþu Ýþlem Listesini Temizler.'+#13#10+
        '        R Tuþu Ýþlem Listesini Açar Kapatýr.'+#13#10+
        'BackSpace Tuþu Silme Tuþudur.'+#13#10+
        '    Alt+C Tuþu Hafýzayý Temizler.'+#13#10+
        '    Alt+R Tuþu Hafýzayý Ekrana Yazar.'+#13#10+
        '        K Tuþu KareKöktür.'+#13#10+
        '        % Tuþu Yüzdesini Alýr.'+#13#10+
        '        X Tuþu Karesini Alýr.'+#13#10+
        'ESC Programý Kapatýr.');
Application.Title := 'Hesap Makinesi';
end;

procedure TFHp.birKeyPress(Sender: TObject; var Key: Char);
begin
        if Key <> #13 then
        begin
                Edit2KeyPress(Edit2,Key);
                edit2.SetFocus;
                edit2.SelStart := edit2.SelLength;
        end;
end;

end.
