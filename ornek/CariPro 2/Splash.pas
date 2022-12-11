unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, OnlineCombo, DBCtrls, DBOnlineEdit,
  DBOnlineLookupCombo, ComCtrls, Mask, OnlineEdit, OnlineCustomControl,
  OnlineButton, OnlineSerialMaker,Registry, jpeg;

type
  TFGiris = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Notebook1: TNotebook;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    BitBtn1: TOnlineButton;
    BitBtn3: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    OnlineEdit3: TOnlineEdit;
    BitBtn5: TOnlineButton;
    BitBtn6: TOnlineButton;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    OnlineEdit1: TOnlineEdit;
    BitBtn2: TOnlineButton;
    BitBtn4: TOnlineButton;
    DateTimePicker1: TDateTimePicker;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineCombo1: TOnlineCombo;
    OnlineSerialMaker1: TOnlineSerialMaker;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure OnlineCombo1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  end;

var
  FGiris: TFGiris;
  kapatma : Boolean;

implementation

uses Main,IniFiles, DataDM,CariDM,StokDM,KasaDM,SabitDM,BankaDM, CekDM,SenetDM, HP,irsaliyeDM, SiparisDM, TeklifDM, Tahsilat;

{$R *.dfm}

procedure TFGiris.FormShow(Sender: TObject);
var
        IniFile: TIniFile;
begin
        SetWindowRgn(FGiris.Handle,CreateRoundRectRgn(1,1,FGiris.Width,FGiris.Height,72,72),true);
        DateTimePicker1.Date := now;
        IniFile:= TIniFile.Create(GetCurrentDir+'\DataBase.ini');
        IniFile.ReadSections(OnlineCombo1.Items);
        OnlineCombo1.Text :=OnlineCombo1.Items[0];
        IniFile.Free;
        if AnaSayfa.Sirket <> '' then
            OnlineCombo1.ItemIndex := OnlineCombo1.Items.IndexOf(AnaSayfa.Sirket);

   //     DMSabit.FirmaIBQ.Open;
        OnlineEdit2.Text := OnlineSerialMaker1.Username;
        DMSabit.KullaniciIBQ.Open;
        DMSabit.FirmaIBQ.Open;
        if Notebook1.ActivePage='kullanici' Then
                OnlineEdit1.SetFocus
        else OnlineEdit3.SetFocus;
        AnaSayfa.Sirket := OnlineCombo1.Text;
        Label7.Caption :=AnaSayfa.Caption;
      //  AnaSayfa.KeyPreview := false;
end;

procedure TFGiris.FormActivate(Sender: TObject);
var
        Registry : TRegistry;
begin

        Registry:= TRegistry.Create;
        Registry.RootKey := HKEY_LOCAL_MACHINE;
        Registry.OpenKey('Software\Online\Online CariPro',true);
        if Registry.ReadString('Sifre') = OnlineSerialMaker1.Serial then
                AnaSayfa.Lisans1.Visible := false
        else AnaSayfa.Lisans1.Visible := true;

        if Registry.ReadString('Sifre') = 'Demo' then
        begin
                DMsabit.FirmaIBQ.Edit;
                DMsabit.FirmaIBQLISANS.AsFloat := 0;
                DMsabit.FirmaIBQ.Post;
        end;

        if Registry.ReadString('Sifre') = OnlineSerialMaker1.Serial then
        begin
                DMsabit.FirmaIBQ.Edit;
                DMsabit.FirmaIBQLISANS.AsFloat := 1;
                DMsabit.FirmaIBQ.Post;
        end;

        if (Registry.ReadString('Sifre') <> OnlineSerialMaker1.Serial) and (Registry.ReadString('Sifre') <> 'Demo') then
        begin
                notebook1.ActivePage := 'guvenlik';
                OnlineEdit3.SetFocus;
                DMsabit.FirmaIBQ.Edit;
                DMsabit.FirmaIBQLISANS.AsFloat := 0;
                DMsabit.FirmaIBQ.Post;
        end else begin
                notebook1.ActivePage := 'kullanici';
                OnlineEdit1.SetFocus;
        end;

end;

procedure TFGiris.OnlineCombo1Change(Sender: TObject);
var
        IniFile: TIniFile;
begin
             if AnaSayfa.SirketSecim = false then
                AnaSayfa.Sirket := OnlineCombo1.Text;
                IniFile:= TIniFile.Create(ExtractFileDir(Application.ExeName)+'\DataBase.ini');
                DMData.IBDBCariPro.Close;
                if IniFile.ReadString(OnlineCombo1.Text,'Server','') = '' then
                   DMData.IBDBCariPro.DatabaseName := IniFile.ReadString(OnlineCombo1.Text,'Adres','')
                else
                   DMData.IBDBCariPro.DatabaseName := '\\'+IniFile.ReadString(OnlineCombo1.Text,'Server','')+'\'+IniFile.ReadString(OnlineCombo1.Text,'Adres','');
                DMData.IBDBCariPro.Params.Clear;
                DMData.IBDBCariPro.Params.Add('user_name='+IniFile.ReadString(OnlineCombo1.Text,'User',''));
                DMData.IBDBCariPro.Params.Add('password='+IniFile.ReadString(OnlineCombo1.Text,'Sifre',''));
                DMData.IBDBCariPro.Params.Add('lc_ctype=WIN1254');
                DMData.IBDBCariPro.Open;
                DMData.IBTCariPro.StartTransaction;
                DMSabit.KullaniciIBQ.Open;
                DMsabit.FirmaIBQ.Open;
                IniFile.Free;

end;

procedure TFGiris.BitBtn2Click(Sender: TObject);
begin
        if DMSabit.KullaniciIBQSIFRE.AsString = OnlineEdit1.Text then
        begin
                if DMSabit.KullaniciIBQ.RecNo = 1 then
                        AnaSayfa.KullancBilgileri1.Visible := true
                else AnaSayfa.KullancBilgileri1.Visible := false;
              //  Dogru := true;
                DMsabit.KullaniciIBQ.Edit;
                DMsabit.KullaniciIBQTARIH.AsDateTime := now;
                DMsabit.KullaniciIBQ.Post;
                OtoYedekleme :=True;

                DMSabit.ilIBQ.Open;
                DMSabit.ilceIBQ.Open;
                DMSabit.ParaBirimiIBQ.Open;
                DMSabit.ilIBQ.Open;
                BugununTarihi := DateTimePicker1.DateTime;
                AnaSayfa.Sirket := OnlineCombo1.Text;
                AnaSayfa.StatusBar1.Panels[0].Text := OnlineCombo1.Text;
                kapatma:=false;
                close;
        end else begin
                MessageBox(handle,'Yanlýþ Þifre Girdiniz!','Uyarý',MB_OK);
                        OnlineEdit1.SetFocus;
                        OnlineEdit1.SelectAll;
        end;
end;

procedure TFGiris.BitBtn4Click(Sender: TObject);
begin
     if AnaSayfa.SirketSecim = false then
       begin
         kapatma:=True;
         AnaSayfa.Close;
         Close;
       end else begin
         OnlineCombo1.ItemIndex := OnlineCombo1.Items.IndexOf(AnaSayfa.Sirket);
         OnlineCombo1Change(sender);
         Close;
       end;
end;

procedure TFGiris.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFGiris.BitBtn5Click(Sender: TObject);
var
        Registry: TRegistry;
begin
        if OnlineSerialMaker1.Serial = OnlineEdit3.Text then
        begin
                Registry:= TRegistry.Create;
                Registry.RootKey := HKEY_LOCAL_MACHINE;
                Registry.OpenKey('Software\Online\Online CariPro',true);
                Registry.WriteString('Sifre',OnlineEdit3.Text);
                Registry.Free;
               // Dogru := true;
                AnaSayfa.Lisans1.Visible := false;
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQLISANS.AsFloat := 1;
                DMSabit.FirmaIBQ.Post;
                close;
        end else MessageBox(handle,'Yanlýþ Þifre Girdiniz!','Uyarý',MB_OK);

end;
procedure TFGiris.BitBtn1Click(Sender: TObject);
var
        Registry: TRegistry;
begin
        if OnlineSerialMaker1.Serial = OnlineEdit3.Text then
        begin
                Registry:= TRegistry.Create;
                Registry.RootKey := HKEY_LOCAL_MACHINE;
                Registry.OpenKey('Software\Online\Online CariPro',true);
                Registry.WriteString('Sifre',OnlineEdit3.Text);
                Registry.Free;
                Notebook1.ActivePage := 'kullanici';
                OnlineEdit1.SetFocus;
                AnaSayfa.Lisans1.Visible := false;
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQLISANS.AsFloat := 1;
                DMSabit.FirmaIBQ.Post;
        end else if (OnlineEdit3.Text='Online') and (OnlineSerialMaker1.Serial <> OnlineEdit3.Text) Then
        Begin
                Registry:= TRegistry.Create;
                Registry.RootKey := HKEY_LOCAL_MACHINE;
                Registry.OpenKey('Software\Online\Online CariPro',true);
                Registry.WriteString('Sifre','Demo');
                Registry.Free;
                Notebook1.ActivePage := 'kullanici';
                OnlineEdit1.SetFocus;
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQLISANS.AsFloat := 0;
                DMSabit.FirmaIBQ.Post;
        end else MessageBox(handle,'Yanlýþ Þifre Girdiniz!','Uyarý',MB_OK);
end;


procedure TFGiris.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
        ReleaseCapture;
        FGiris.perform(WM_SYSCOMMAND, $F012, 0);

end;

end.
