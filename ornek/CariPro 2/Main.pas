unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Registry,Menus, ToolWin, ComCtrls, ImgList, ExtCtrls, XPMenu,
  StdCtrls,OtoYedekle, System.Actions, System.ImageList;

type
  TAnaSayfa = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Firma1: TMenuItem;
    KullancBilgileri1: TMenuItem;
    SlcdSlbdldu1: TMenuItem;
    N11: TMenuItem;
    Ayarlar1: TMenuItem;
    N20: TMenuItem;
    Yedekleme1: TMenuItem;
    GeriYkleme1: TMenuItem;
    N10: TMenuItem;
    StilAyarlama1: TMenuItem;
    k1: TMenuItem;
    Cari1: TMenuItem;
    CariKart1: TMenuItem;
    CariKartlarListesi1: TMenuItem;
    N6: TMenuItem;
    CariHesap1: TMenuItem;
    Stok1: TMenuItem;
    StokKart1: TMenuItem;
    StokKartlarListesi1: TMenuItem;
    N1: TMenuItem;
    FiyatListesi1: TMenuItem;
    N7: TMenuItem;
    StokKontrol1: TMenuItem;
    FiyatSorgu1: TMenuItem;
    lemleri1: TMenuItem;
    AlSat1: TMenuItem;
    Al1: TMenuItem;
    Sat1: TMenuItem;
    N3: TMenuItem;
    Aldae1: TMenuItem;
    Satade1: TMenuItem;
    Kasa6: TMenuItem;
    ahsilat1: TMenuItem;
    deme1: TMenuItem;
    N39: TMenuItem;
    Virman1: TMenuItem;
    Devir1: TMenuItem;
    Banka5: TMenuItem;
    KrediKarleTahsilat1: TMenuItem;
    KrediKartledeme1: TMenuItem;
    N36: TMenuItem;
    NakitYatrma1: TMenuItem;
    Nakitekme1: TMenuItem;
    N37: TMenuItem;
    HavaleAlma1: TMenuItem;
    HavaleGnderme1: TMenuItem;
    N38: TMenuItem;
    Virman2: TMenuItem;
    Devir2: TMenuItem;
    ek4: TMenuItem;
    ekGirii1: TMenuItem;
    ekYazma1: TMenuItem;
    N28: TMenuItem;
    Eldenekdeme1: TMenuItem;
    Bankadanektasilat1: TMenuItem;
    N29: TMenuItem;
    ekCiroEtme1: TMenuItem;
    N30: TMenuItem;
    Eldenekdeme2: TMenuItem;
    Bankadanekdeme1: TMenuItem;
    N31: TMenuItem;
    akas1: TMenuItem;
    Senet2: TMenuItem;
    SenetGirii1: TMenuItem;
    SenetYazma1: TMenuItem;
    N32: TMenuItem;
    EldenSenetdeme1: TMenuItem;
    BankadanSenetTahsilat1: TMenuItem;
    N33: TMenuItem;
    SenetCiroEtme1: TMenuItem;
    N34: TMenuItem;
    EldenSenetdeme2: TMenuItem;
    BankadanSenetdeme1: TMenuItem;
    N35: TMenuItem;
    akas2: TMenuItem;
    eklif1: TMenuItem;
    eklifAlam1: TMenuItem;
    eklifVerem1: TMenuItem;
    eklifler1: TMenuItem;
    Sipari1: TMenuItem;
    SipariAlma2: TMenuItem;
    SipariVerme1: TMenuItem;
    Sipariler1: TMenuItem;
    rsaliye1: TMenuItem;
    Girirsaliyesi1: TMenuItem;
    krsaliyesi1: TMenuItem;
    rsaliyeler1: TMenuItem;
    Stok4: TMenuItem;
    StokGirii1: TMenuItem;
    SaymFazlas1: TMenuItem;
    malat1: TMenuItem;
    N21: TMenuItem;
    Stokk1: TMenuItem;
    SaymEksii1: TMenuItem;
    Sarf1: TMenuItem;
    Fire1: TMenuItem;
    retim1: TMenuItem;
    N27: TMenuItem;
    StokTransferi1: TMenuItem;
    lemlerListesi1: TMenuItem;
    Kasa1: TMenuItem;
    Kasalar1: TMenuItem;
    Bankalar1: TMenuItem;
    ek1: TMenuItem;
    Senet1: TMenuItem;
    N4: TMenuItem;
    ParaBirmleriVeDvizKurlar1: TMenuItem;
    Raporlar1: TMenuItem;
    Cari2: TMenuItem;
    Carilemler1: TMenuItem;
    N16: TMenuItem;
    HesapEkstresi1: TMenuItem;
    BakiyeTeyidMektubu1: TMenuItem;
    N12: TMenuItem;
    BorcularListesi1: TMenuItem;
    Alacakllar1: TMenuItem;
    Borclular1: TMenuItem;
    N23: TMenuItem;
    DetaylCariKartListesi1: TMenuItem;
    EtiketDkm1: TMenuItem;
    Stok2: TMenuItem;
    Stoklemleri1: TMenuItem;
    StokHareketleri1: TMenuItem;
    N13: TMenuItem;
    SipariGerekenStoklar1: TMenuItem;
    BekleyenStoklemleri1: TMenuItem;
    N40: TMenuItem;
    StokDurumu1: TMenuItem;
    StokDeerleme1: TMenuItem;
    Envanter1: TMenuItem;
    N15: TMenuItem;
    BarkodDkm1: TMenuItem;
    FiyatListesi2: TMenuItem;
    Kasa3: TMenuItem;
    Kasalemleri1: TMenuItem;
    Banka2: TMenuItem;
    Bankalemleri1: TMenuItem;
    ek2: TMenuItem;
    eklemleri1: TMenuItem;
    Bugnkekler1: TMenuItem;
    N14: TMenuItem;
    Mteriekleri1: TMenuItem;
    Firmaekleri1: TMenuItem;
    N24: TMenuItem;
    akasaVerilenekler1: TMenuItem;
    ek5: TMenuItem;
    eklemleri3: TMenuItem;
    Bugnnekleri2: TMenuItem;
    N26: TMenuItem;
    Mteriekleri3: TMenuItem;
    Firmaekleri3: TMenuItem;
    N25: TMenuItem;
    akasaVerilenekler3: TMenuItem;
    Kdv1: TMenuItem;
    AlFaturalar1: TMenuItem;
    KdvDurum1: TMenuItem;
    GelirGiderToplamlar1: TMenuItem;
    GelirGiderToplamlar2: TMenuItem;
    HesapPlan1: TMenuItem;
    GenelDurum1: TMenuItem;
    Sabitler1: TMenuItem;
    CariTipleri1: TMenuItem;
    CariSektrler1: TMenuItem;
    StokGuruplar1: TMenuItem;
    StokYerleri1: TMenuItem;
    stAltBilgiler1: TMenuItem;
    GelirGiderMerzleri1: TMenuItem;
    Aralar1: TMenuItem;
    HespMakinesi1: TMenuItem;
    AramaPaneli1: TMenuItem;
    Yenile1: TMenuItem;
    N5: TMenuItem;
    DikeyCariListe1: TMenuItem;
    CariListe1: TMenuItem;
    EvrakDizayn1: TMenuItem;
    SatFaturas1: TMenuItem;
    AlFaturas1: TMenuItem;
    SatFaturas3: TMenuItem;
    AlFaturas2: TMenuItem;
    eklifVerme1: TMenuItem;
    eklifAlma1: TMenuItem;
    N19: TMenuItem;
    ahsilatMakbuzu1: TMenuItem;
    ahsilatMakbuzu2: TMenuItem;
    N17: TMenuItem;
    StokGiriFaturas1: TMenuItem;
    StokkFaturas1: TMenuItem;
    N18: TMenuItem;
    CariHesap3: TMenuItem;
    StokHareketleri3: TMenuItem;
    ekHareketleri1: TMenuItem;
    RaporDizayn1: TMenuItem;
    Cari3: TMenuItem;
    Carilemler2: TMenuItem;
    CariKartListesi1: TMenuItem;
    DetaylCariKartListesi2: TMenuItem;
    BakiyeListesi1: TMenuItem;
    Alacaklarmz1: TMenuItem;
    Borclarmz1: TMenuItem;
    arihliHesapEkstresi1: TMenuItem;
    eyitMektubu1: TMenuItem;
    EtiketDkm2: TMenuItem;
    Stok3: TMenuItem;
    Stoklemleri2: TMenuItem;
    StokHareketleri2: TMenuItem;
    StokKartListesi1: TMenuItem;
    StokDurumu2: TMenuItem;
    EnvanterDurumu1: TMenuItem;
    StokDeerleme2: TMenuItem;
    SipariiGerekenStoklar1: TMenuItem;
    StokFiyatListesi1: TMenuItem;
    FiyatEtiketi1: TMenuItem;
    BarkodDizayn1: TMenuItem;
    Kasa4: TMenuItem;
    Kasalemleri2: TMenuItem;
    KasaHareket1: TMenuItem;
    Banka3: TMenuItem;
    Bankalemleri2: TMenuItem;
    BankaHareket1: TMenuItem;
    ek3: TMenuItem;
    eklemleri2: TMenuItem;
    Firmaekleri2: TMenuItem;
    Mteriekleri2: TMenuItem;
    ekHareket1: TMenuItem;
    BuGnnekleri1: TMenuItem;
    akasaVerilenekler2: TMenuItem;
    FaturaKdv1: TMenuItem;
    AlFatrusa1: TMenuItem;
    SatFaturas2: TMenuItem;
    KDVHesapListesi1: TMenuItem;
    GelirGiderListesi1: TMenuItem;
    FirmaGenelDurum1: TMenuItem;
    Pencere1: TMenuItem;
    Basamakla1: TMenuItem;
    YatayDe1: TMenuItem;
    DikeyDe1: TMenuItem;
    HepsiniKapat1: TMenuItem;
    Kapat1: TMenuItem;
    Yardm1: TMenuItem;
    Yardm2: TMenuItem;
    Hakknda1: TMenuItem;
    SrmKontrolYap1: TMenuItem;
    N9: TMenuItem;
    Lisans1: TMenuItem;
    XPMenu1: TXPMenu;
    ToolBar2: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    N2: TMenuItem;
    HzlMen1: TMenuItem;
    Men1Dikey1: TMenuItem;
    Men1yatay1: TMenuItem;
    ImageList1: TImageList;
    CariAction: TActionList;
    CariKart: TAction;
    CariKartList: TAction;
    CariHesap: TAction;
    CariPM: TPopupMenu;
    stte1: TMenuItem;
    Altta1: TMenuItem;
    Sada1: TMenuItem;
    Solda1: TMenuItem;
    CariTool: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ActionList1: TActionList;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    irketSeimi1: TMenuItem;
    Tahsilat: TAction;
    Odemem: TAction;
    Cari4: TMenuItem;
    DnembaAlaca1: TMenuItem;
    DnemBaAlaca2: TMenuItem;
    N8: TMenuItem;
    GiriDekontu1: TMenuItem;
    kDekontu1: TMenuItem;
    N41: TMenuItem;
    Silinenlemler1: TMenuItem;
    Alis: TAction;
    Satis: TAction;
    Personel1: TMenuItem;
    Alis1: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    DvizAlSat1: TMenuItem;
    N44: TMenuItem;
    CariVirman1: TMenuItem;
    Projeler1: TMenuItem;
    Timer1: TTimer;
    YillikStokHareketleri1: TMenuItem;
    procedure k1Click(Sender: TObject);
    procedure CariKart1Click(Sender: TObject);
    procedure stte1Click(Sender: TObject);
    procedure Altta1Click(Sender: TObject);
    procedure Sada1Click(Sender: TObject);
    procedure Solda1Click(Sender: TObject);
    procedure Men1yatay1Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure CariKartlarListesi1Click(Sender: TObject);
    procedure CariHesap1Click(Sender: TObject);
    procedure Kasalar1Click(Sender: TObject);
    procedure ParaBirmleriVeDvizKurlar1Click(Sender: TObject);
    procedure ahsilat1Click(Sender: TObject);
    procedure deme1Click(Sender: TObject);
    procedure CariTipleri1Click(Sender: TObject);
    procedure Bankalar1Click(Sender: TObject);
    procedure NakitYatrma1Click(Sender: TObject);
    procedure Nakitekme1Click(Sender: TObject);
    procedure Al1Click(Sender: TObject);
    procedure StokKart1Click(Sender: TObject);
    procedure StokKartlarListesi1Click(Sender: TObject);
    procedure FiyatSorgu1Click(Sender: TObject);
    procedure StokGuruplar1Click(Sender: TObject);
    procedure CariSektrler1Click(Sender: TObject);
    procedure SlcdSlbdldu1Click(Sender: TObject);
    procedure StokYerleri1Click(Sender: TObject);
    procedure Silinenlemler1Click(Sender: TObject);
    procedure GelirGiderMerzleri1Click(Sender: TObject);
    procedure FiyatListesi1Click(Sender: TObject);
    procedure StokKontrol1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Personel1Click(Sender: TObject);
    procedure Firma1Click(Sender: TObject);
    procedure KullancBilgileri1Click(Sender: TObject);
    procedure irketSeimi1Click(Sender: TObject);
    procedure Yedekleme1Click(Sender: TObject);
    procedure GeriYkleme1Click(Sender: TObject);
    procedure Virman1Click(Sender: TObject);
    procedure Devir1Click(Sender: TObject);
    procedure HavaleAlma1Click(Sender: TObject);
    procedure HavaleGnderme1Click(Sender: TObject);
    procedure Devir2Click(Sender: TObject);
    procedure Virman2Click(Sender: TObject);
    procedure GiriDekontu1Click(Sender: TObject);
    procedure kDekontu1Click(Sender: TObject);
    procedure StokGirii1Click(Sender: TObject);
    procedure Sat1Click(Sender: TObject);
    procedure Basamakla1Click(Sender: TObject);
    procedure YatayDe1Click(Sender: TObject);
    procedure HepsiniKapat1Click(Sender: TObject);
    procedure Kapat1Click(Sender: TObject);
    procedure DikeyDe1Click(Sender: TObject);
    procedure Lisans1Click(Sender: TObject);
    procedure Hakknda1Click(Sender: TObject);
    procedure DnembaAlaca1Click(Sender: TObject);
    procedure DnemBaAlaca2Click(Sender: TObject);
    procedure ek1Click(Sender: TObject);
    procedure ekGirii1Click(Sender: TObject);
    procedure ekYazma1Click(Sender: TObject);
    procedure ekCiroEtme1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Stokk1Click(Sender: TObject);
    procedure Aldae1Click(Sender: TObject);
    procedure Satade1Click(Sender: TObject);
    procedure DikeyCariListe1Click(Sender: TObject);
    procedure CariListe1Click(Sender: TObject);
    procedure StokTransferi1Click(Sender: TObject);
    procedure eklifVerem1Click(Sender: TObject);
    procedure SipariVerme1Click(Sender: TObject);
    procedure Eldenekdeme1Click(Sender: TObject);
    procedure Girirsaliyesi1Click(Sender: TObject);
    procedure Projeler1Click(Sender: TObject);
    procedure stAltBilgiler1Click(Sender: TObject);
    procedure Alacakllar1Click(Sender: TObject);
    procedure Borclular1Click(Sender: TObject);
    procedure Bankadanektasilat1Click(Sender: TObject);
    procedure SenetGirii1Click(Sender: TObject);
    procedure StokDurumu1Click(Sender: TObject);
    procedure Ayarlar1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EldenSenetdeme1Click(Sender: TObject);
    procedure SaymEksii1Click(Sender: TObject);
    procedure eklifAlam1Click(Sender: TObject);
    procedure eklifler1Click(Sender: TObject);
    procedure Kasalemleri1Click(Sender: TObject);
    procedure Bankalemleri1Click(Sender: TObject);
    procedure Sipariler1Click(Sender: TObject);
    procedure SipariAlma2Click(Sender: TObject);
    procedure SaymFazlas1Click(Sender: TObject);
    procedure malat1Click(Sender: TObject);
    procedure Sarf1Click(Sender: TObject);
    procedure Fire1Click(Sender: TObject);
    procedure retim1Click(Sender: TObject);
    procedure StokHareketleri1Click(Sender: TObject);
    procedure YillikStokHareketleri1Click(Sender: TObject);
    procedure SipariGerekenStoklar1Click(Sender: TObject);
    procedure krsaliyesi1Click(Sender: TObject);
    procedure Alis1Click(Sender: TObject);
  private
    { Private declarations }
    OtoYedek: TOtoYedekle;
  public
    { Public declarations }
    Sirket: string;
    SirketSecim: boolean;
  end;

var
  AnaSayfa: TAnaSayfa;
  OtoYedekleme : Boolean;

implementation

uses CariKart,DataDM, Hp, CariKartList, CariHesap, Kasalar, ParaBirim, Tahsilat,
  Odeme, MTipler, Bankalar, SabitDM, NakitYatirma, NakitCekme, Alis,
  StokKart, StokKartList, FiyatSorgu, StokGrup, MSektor, iller, StokYeri,
  Silinenler, GelGider, StokFiyat, StokKontrol, Personel, Firma, Kullanici,
  Splash, Yedekleme, KasaVirman, KasaDevir, HavaleALma, HavaleGonderme,
  BankaDevir, BankaVirman, GirisDekontu, CikisDekontu, StokGirisi, Satis,
  About, DonemBBorc, DonemBAlacak, Cek, CekGiris, CekYazma, CekCiro, StokDM,
  StokCikis, Alisiade, Satisiade, StokTransfer, TeklifVerme, SiparisVerme,
  EldenCekTahsilati, KasaDM, Girisirsaliyesi, Proje, Bilgi, AlacakList,
  BorcList, BankadanCekTahsilati, BankaDM, SenetGiris, StokDurum, Ayarlar,
  EldenSenetTahsilati, SayimEksigi, TeklifAlma, Teklifler, KasaislemList,
  BankaislemList, Siparisler, SiparisAlma, SayimFazlasi, UretimdenGiris,
  UretimeCikis, Sarf, Fire, StokHareket, YillikStokHareket, StokSipGer,
  Cikisirsaliyesi, DovizAlisSatis;

{$R *.dfm}

procedure TAnaSayfa.k1Click(Sender: TObject);
begin
        Close;
end;

procedure TAnaSayfa.CariKart1Click(Sender: TObject);
begin
        if Application.FindComponent('FCariKart') = nil then
        begin
                Application.CreateForm(TFCariKart,FCariKart);
                FCariKart.Show;
        end else FCariKart.Show;

end;

procedure TAnaSayfa.stte1Click(Sender: TObject);
begin
        CariTool.Align:= alTop;
end;

procedure TAnaSayfa.Altta1Click(Sender: TObject);
begin
        CariTool.Align:= alBottom;
end;

procedure TAnaSayfa.Sada1Click(Sender: TObject);
begin
        CariTool.Align:= alRight;
end;

procedure TAnaSayfa.Solda1Click(Sender: TObject);
begin
        CariTool.Align:= alLeft;
end;

procedure TAnaSayfa.Men1yatay1Click(Sender: TObject);
begin
        Men1yatay1.Checked := not Men1yatay1.Checked;
        CariTool.Visible := not CariTool.Visible;
end;

procedure TAnaSayfa.ToolButton15Click(Sender: TObject);
begin
        Close;
end;

procedure TAnaSayfa.ToolButton14Click(Sender: TObject);
begin
        FHp.Show;
end;

procedure TAnaSayfa.CariKartlarListesi1Click(Sender: TObject);
begin
        if Application.FindComponent('FCariKartList') = nil then
                Application.CreateForm(TFCariKartList,FCariKartList);
        FCariKartList.Show;
end;

procedure TAnaSayfa.CariHesap1Click(Sender: TObject);
begin
        if Application.FindComponent('FCariHesap') = nil then
                Application.CreateForm(TFCariHesap,FCariHesap);
        FCariHesap.Show;
end;

procedure TAnaSayfa.Kasalar1Click(Sender: TObject);
begin
        if Application.FindComponent('FKasalar') = nil then
                Application.CreateForm(TFKasalar,FKasalar);
        FKasalar.Show;
end;

procedure TAnaSayfa.ParaBirmleriVeDvizKurlar1Click(Sender: TObject);
begin
        if Application.FindComponent('FParaBirim') = nil then
                Application.CreateForm(TFParaBirim,FParaBirim);
        FParaBirim.Show;
end;

procedure TAnaSayfa.ahsilat1Click(Sender: TObject);
begin
        if Application.FindComponent('FTahsilat') = nil then
                Application.CreateForm(TFTahsilat,FTahsilat);
        FTahsilat.ShowModal;
end;

procedure TAnaSayfa.deme1Click(Sender: TObject);
begin
        if Application.FindComponent('FOdeme') = nil then
                Application.CreateForm(TFOdeme,FOdeme);
        FOdeme.ShowModal;

end;

procedure TAnaSayfa.CariTipleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FCariTip') = nil then
                Application.CreateForm(TFCariTip,FCariTip);
        FCariTip.Show;

end;

procedure TAnaSayfa.Bankalar1Click(Sender: TObject);
begin
        if Application.FindComponent('FBankalar') = nil then
                Application.CreateForm(TFBankalar,FBankalar);
        FBankalar.Show;
end;

procedure TAnaSayfa.NakitYatrma1Click(Sender: TObject);
begin
        if Application.FindComponent('FNakitYatirma') = nil then
                Application.CreateForm(TFNakitYatirma,FNakitYatirma);
        FNakitYatirma.Show;
end;

procedure TAnaSayfa.Nakitekme1Click(Sender: TObject);
begin
        if Application.FindComponent('FNakitCekme') = nil then
                Application.CreateForm(TFNakitCekme,FNakitCekme);
        FNakitCekme.Show;
end;

procedure TAnaSayfa.Al1Click(Sender: TObject);
begin
        if Application.FindComponent('FAlis') = nil then
                Application.CreateForm(TFAlis,FAlis);
        FAlis.Show;
end;

procedure TAnaSayfa.StokKart1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokKart') = nil then
                Application.CreateForm(TFStokKart,FStokKart);
        FStokKart.Show;
end;

procedure TAnaSayfa.StokKartlarListesi1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokKartList') = nil then
                Application.CreateForm(TFStokKartList,FStokKartList);
        FStokKartList.Show;
end;

procedure TAnaSayfa.FiyatSorgu1Click(Sender: TObject);
begin
        if Application.FindComponent('FFiyatSorgu') = nil then
                Application.CreateForm(TFFiyatSorgu,FFiyatSorgu);
        FFiyatSorgu.ShowModal;
end;

procedure TAnaSayfa.StokGuruplar1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokGrup') = nil then
                Application.CreateForm(TFStokGrup,FStokGrup);
        FStokGrup.Show;
end;

procedure TAnaSayfa.CariSektrler1Click(Sender: TObject);
begin
        if Application.FindComponent('FCariSektor') = nil then
                Application.CreateForm(TFCariSektor,FCariSektor);
        FCariSektor.Show;

end;

procedure TAnaSayfa.SlcdSlbdldu1Click(Sender: TObject);
begin
        if Application.FindComponent('Filler') = nil then
                Application.CreateForm(TFiller,Filler);
        Filler.Show;
end;

procedure TAnaSayfa.StokYerleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        FStokYeri.Show;
end;

procedure TAnaSayfa.Silinenlemler1Click(Sender: TObject);
begin
        if Application.FindComponent('FSilinenler') = nil then
                Application.CreateForm(TFSilinenler,FSilinenler);
        FSilinenler.Show;
end;

procedure TAnaSayfa.GelirGiderMerzleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FGelGider') = nil then
                Application.CreateForm(TFGelGider,FGelGider);
        FGelGider.Show;
end;

procedure TAnaSayfa.FiyatListesi1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokFiyat') = nil then
                Application.CreateForm(TFStokFiyat,FStokFiyat);
        FStokFiyat.Show;
end;

procedure TAnaSayfa.StokKontrol1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokKontrol') = nil then
                Application.CreateForm(TFStokKontrol,FStokKontrol);
        FStokKontrol.Show;
end;

procedure TAnaSayfa.FormClose(Sender: TObject; var Action: TCloseAction);
var
        i: integer;
begin
        Timer1.Enabled := false;
        if kapatma = False then
        begin
                if (DMSabit.FirmaIBQYEDEKZAMANI.AsInteger = 1) and (OtoYedekleme=TRue) then
                begin
                        case MessageBox(handle,'Yedekleme yapmak ister misiniz?','Uyarý',MB_YESNOCANCEL) of
                                mrYes:
                                        Begin
                                                if Application.FindComponent('FYedekleme') <> nil then
                                                begin
                                                        FYedekleme.PageControl1.ActivePage :=FYedekleme.TabSheet1;
                                                        FYedekleme.ShowModal;
                                                end else begin
                                                        Application.CreateForm(TFYedekleme,FYedekleme);
                                                        FYedekleme.PageControl1.ActivePage :=FYedekleme.TabSheet1;
                                                        FYedekleme.ShowModal;
                                                end;
                                        end;
                                mrCancel: Abort;
                        end;
                end;
        end;
        DMData.IBDBCariPro.Connected := False;
        DMData.IBTCariPro.Active := False;
        action := caFree;   
end;

procedure TAnaSayfa.Personel1Click(Sender: TObject);
begin
        if Application.FindComponent('FPersonel') = nil then
                Application.CreateForm(TFPersonel,FPersonel);
        FPersonel.Show;

end;

procedure TAnaSayfa.Firma1Click(Sender: TObject);
begin
        if Application.FindComponent('FFirma') = nil then
                Application.CreateForm(TFFirma,FFirma);
        FFirma.Show;
end;

procedure TAnaSayfa.KullancBilgileri1Click(Sender: TObject);
begin
        if Application.FindComponent('FKullanici') = nil then
                Application.CreateForm(TFKullanici,FKullanici);
        FKullanici.Show;
end;

procedure TAnaSayfa.irketSeimi1Click(Sender: TObject);
begin
        SirketSecim := true;
        if Application.FindComponent('FGiris') = nil then
                Application.CreateForm(TFGiris,FGiris);
        FGiris.ShowModal;
        SirketSecim := false;
end;

procedure TAnaSayfa.Yedekleme1Click(Sender: TObject);
begin
        if Application.FindComponent('FYedekleme') = nil then
                Application.CreateForm(TFYedekleme,FYedekleme);
        FYedekleme.PageControl1.ActivePage := FYedekleme.TabSheet1;
        FYedekleme.ShowModal;

end;

procedure TAnaSayfa.GeriYkleme1Click(Sender: TObject);
begin
        if Application.FindComponent('FYedekleme') = nil then
                Application.CreateForm(TFYedekleme,FYedekleme);
        FYedekleme.PageControl1.ActivePage := FYedekleme.TabSheet2;
        FYedekleme.ShowModal;
end;

procedure TAnaSayfa.Virman1Click(Sender: TObject);
begin
        if Application.FindComponent('FKasaVirman') = nil then
                Application.CreateForm(TFKasaVirman,FKasaVirman);
        FKasaVirman.ShowModal;
end;

procedure TAnaSayfa.Devir1Click(Sender: TObject);
begin
        if Application.FindComponent('FKasaDevir') = nil then
                Application.CreateForm(TFKasaDevir,FKasaDevir);
        FKasaDevir.ShowModal;
end;

procedure TAnaSayfa.HavaleAlma1Click(Sender: TObject);
begin
        if Application.FindComponent('FHavaleAlma') = nil then
                Application.CreateForm(TFHavaleAlma,FHavaleAlma);
        FHavaleAlma.ShowModal;
end;

procedure TAnaSayfa.HavaleGnderme1Click(Sender: TObject);
begin
        if Application.FindComponent('FHavaleGonderme') = nil then
                Application.CreateForm(TFHavaleGonderme,FHavaleGonderme);
        FHavaleGonderme.ShowModal;
end;
procedure TAnaSayfa.Devir2Click(Sender: TObject);
begin
        if Application.FindComponent('FBankaDevir') = nil then
                Application.CreateForm(TFBankaDevir,FBankaDevir);
        FBankaDevir.ShowModal;
end;

procedure TAnaSayfa.Virman2Click(Sender: TObject);
begin
        if Application.FindComponent('FBankaVirman') = nil then
                Application.CreateForm(TFBankaVirman,FBankaVirman);
        FBankaVirman.ShowModal;
end;

procedure TAnaSayfa.GiriDekontu1Click(Sender: TObject);
begin
        if Application.FindComponent('FGirisDekontu') = nil then
                Application.CreateForm(TFGirisDekontu,FGirisDekontu);
        FGirisDekontu.ShowModal;
end;

procedure TAnaSayfa.kDekontu1Click(Sender: TObject);
begin
        if Application.FindComponent('FCikisDekontu') = nil then
                Application.CreateForm(TFCikisDekontu,FCikisDekontu);
        FCikisDekontu.ShowModal;
end;

procedure TAnaSayfa.StokGirii1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokGiris') = nil then
                Application.CreateForm(TFStokGiris,FStokGiris);
        FStokGiris.Show;
end;

procedure TAnaSayfa.Sat1Click(Sender: TObject);
begin
        if Application.FindComponent('FSatis') = nil then
                Application.CreateForm(TFSatis,FSatis);
        FSatis.Show;
end;

procedure TAnaSayfa.Basamakla1Click(Sender: TObject);
begin
        AnaSayfa.Cascade;
end;

procedure TAnaSayfa.YatayDe1Click(Sender: TObject);
begin
        AnaSayfa.TileMode:= tbHorizontal;
        Tile;
end;

procedure TAnaSayfa.HepsiniKapat1Click(Sender: TObject);
var
        i: integer;
begin
        for i:= 0 to AnaSayfa.MDIChildCount - 1 do
        begin
                AnaSayfa.MDIChildren[i].Close;
        end;

end;

procedure TAnaSayfa.Kapat1Click(Sender: TObject);
begin
        if AnaSayfa.MDIChildCount> 0 Then
                AnaSayfa.MDIChildren[0].Close;
end;

procedure TAnaSayfa.DikeyDe1Click(Sender: TObject);
begin
        AnaSayfa.TileMode:= tbVertical;
        Tile;
end;

procedure TAnaSayfa.Lisans1Click(Sender: TObject);
var
        Registry: TRegistry;
begin
        Registry:= TRegistry.Create;
        Registry.RootKey := HKEY_LOCAL_MACHINE;
        Registry.OpenKey('Software\Online\Online CariPro',true);
        Registry.WriteString('Sifre','');
        FGiris.BitBtn1.Visible := false;
        FGiris.BitBtn5.Visible := true;
        FGiris.ShowModal;
        if Registry.ReadString('Sifre') = '' then
                Registry.WriteString('Sifre','Demo');
        Registry.Free;
end;


procedure TAnaSayfa.Hakknda1Click(Sender: TObject);
begin
        if Application.FindComponent('AboutBox') = nil then
                Application.CreateForm(TAboutBox,AboutBox);
        AboutBox.ShowModal;
end;

procedure TAnaSayfa.DnembaAlaca1Click(Sender: TObject);
begin
        if Application.FindComponent('FDonemBBorc') = nil then
                Application.CreateForm(TFDonemBBorc,FDonemBBorc);
        FDonemBBorc.ShowModal;
end;

procedure TAnaSayfa.DnemBaAlaca2Click(Sender: TObject);
begin
        if Application.FindComponent('FDonemBAlacak') = nil then
                Application.CreateForm(TFDonemBAlacak,FDonemBAlacak);
        FDonemBAlacak.ShowModal;
end;

procedure TAnaSayfa.ek1Click(Sender: TObject);
begin
        if Application.FindComponent('FCek') = nil then
                Application.CreateForm(TFCek,FCek);
        FCek.Show;
end;

procedure TAnaSayfa.ekGirii1Click(Sender: TObject);
begin
        if Application.FindComponent('FCekGiris') = nil then
                Application.CreateForm(TFCekGiris,FCekGiris);
        FCekGiris.Show;
end;

procedure TAnaSayfa.ekYazma1Click(Sender: TObject);
begin
        if Application.FindComponent('FCekYazma') = nil then
                Application.CreateForm(TFCekYazma,FCekYazma);
        FCekYazma.Show;
end;

procedure TAnaSayfa.ekCiroEtme1Click(Sender: TObject);
begin
        if Application.FindComponent('FCekCiro') = nil then
                Application.CreateForm(TFCekCiro,FCekCiro);
        FCekCiro.Show;
end;

procedure TAnaSayfa.FormShow(Sender: TObject);
begin
        if kapatma = False Then
        Begin
           {DMStok.StokKartiIBQ.open;
                DMKasa.KasaIBQ.Open;
                DMBanka.BankaIBQ.Open;  }
                if DMSabit.KullaniciIBQKULLANKOD.AsInteger<>1 Then Silinenlemler1.Visible := false;
        END;

end;

procedure TAnaSayfa.Stokk1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokCikis') = nil then
                Application.CreateForm(TFStokCikis,FStokCikis);
        FStokCikis.Show;
end;

procedure TAnaSayfa.Aldae1Click(Sender: TObject);
begin
        if Application.FindComponent('FAlisiade') = nil then
                Application.CreateForm(TFAlisiade,FAlisiade);
        FAlisiade.Show;
end;

procedure TAnaSayfa.Satade1Click(Sender: TObject);
begin
        if Application.FindComponent('FSatisiade') = nil then
                Application.CreateForm(TFSatisiade,FSatisiade);
        FSatisiade.Show;
end;

procedure TAnaSayfa.DikeyCariListe1Click(Sender: TObject);
Var
        Registry : TRegistry;
begin
        Registry := TRegistry.Create;
        Registry.RootKey := HKEY_LOCAL_MACHINE;
        Registry.OpenKey('SoftWare\Online\Online CariPro',True);

        if DikeyCariListe1.Checked=False Then
        Begin
                CariListe1.Checked:=False;
                Registry.WriteBool('YatayListe',False);
                Registry.WriteBool('DikeyListe',True);
                if Application.FindComponent('FCariHesap') <> nil then
                begin
                        FCariHesap.Splitter1.Visible := true;
                        FCariHesap.Panel5.Visible:=True;
                        FCariHesap.Splitter2.Visible := false;
                        FCariHesap.Panel7.Visible:=False;
                end;
                DikeyCariListe1.Checked:=True;
        end else
        Begin
                if Application.FindComponent('FCariHesap') <> nil then
                begin
                        FCariHesap.Splitter1.Visible := false;
                        FCariHesap.Panel5.Visible:=false;
                        FCariHesap.Splitter2.Visible := false;
                        FCariHesap.Panel7.Visible:=False;
                end;
                DikeyCariListe1.Checked:=False;
                Registry.WriteBool('DikeyListe',False);
                Registry.WriteBool('YatayListe',False);
        end;
        Registry.Free;
end;



procedure TAnaSayfa.CariListe1Click(Sender: TObject);
Var
        Registry : TRegistry;
begin
        Registry := TRegistry.Create;
        Registry.RootKey := HKEY_LOCAL_MACHINE;
        Registry.OpenKey('SoftWare\Online\Online CariPro',True);
        if CariListe1.Checked=False Then
        Begin
                CariListe1.Checked:=True;
                Registry.WriteBool('YatayListe',True);
                Registry.WriteBool('DikeyListe',False);
                if Application.FindComponent('FCariHesap') <> nil then
                begin
                        FCariHesap.Splitter1.Visible := false;
                        FCariHesap.Panel5.Visible:=false;
                        FCariHesap.Splitter2.Visible := True;
                        FCariHesap.Panel7.Visible:=True;
                end;
                DikeyCariListe1.Checked:=False;
        end else
        Begin
                if Application.FindComponent('FCariHesap') <> nil then
                begin
                        FCariHesap.Splitter1.Visible := false;
                        FCariHesap.Panel5.Visible:=false;
                        FCariHesap.Splitter2.Visible := false;
                        FCariHesap.Panel7.Visible:=false;
                end;
                Registry.WriteBool('YatayListe',False);
                Registry.WriteBool('DikeyListe',False);
                CariListe1.Checked:=false;
        end;
end;


procedure TAnaSayfa.StokTransferi1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokTransfer') = nil then
                Application.CreateForm(TFStokTransfer,FStokTransfer);
        FStokTransfer.Show;
end;

procedure TAnaSayfa.eklifVerem1Click(Sender: TObject);
begin
        if Application.FindComponent('FTeklifVerme') = nil then
                Application.CreateForm(TFTeklifVerme,FTeklifVerme);
        FTeklifVerme.Show;
end;

procedure TAnaSayfa.SipariVerme1Click(Sender: TObject);
begin
        if Application.FindComponent('FSiparisVerme') = nil then
                Application.CreateForm(TFSiparisVerme,FSiparisVerme);
        FSiparisVerme.Show;
end;

procedure TAnaSayfa.Eldenekdeme1Click(Sender: TObject);
begin
        if Application.FindComponent('FEldenCekTahsilat') = nil then
                Application.CreateForm(TFEldenCekTahsilat,FEldenCekTahsilat);
        FEldenCekTahsilat.Show;
end;

procedure TAnaSayfa.Girirsaliyesi1Click(Sender: TObject);
begin
        if Application.FindComponent('FGirisIrsaliyesi') = nil then
                Application.CreateForm(TFGirisIrsaliyesi,FGirisIrsaliyesi);
        FGirisIrsaliyesi.Show;
end;

procedure TAnaSayfa.Projeler1Click(Sender: TObject);
begin
        if Application.FindComponent('FProje') = nil then
                Application.CreateForm(TFProje,FProje);
        FProje.Show;
end;

procedure TAnaSayfa.stAltBilgiler1Click(Sender: TObject);
begin
        if Application.FindComponent('FBilgi') = nil then
                Application.CreateForm(TFBilgi,FBilgi);
        FBilgi.Show;
end;

procedure TAnaSayfa.Alacakllar1Click(Sender: TObject);
begin
        if Application.FindComponent('FAlacakList') = nil then
                Application.CreateForm(TFAlacakList,FAlacakList);
        FAlacakList.Show;
end;

procedure TAnaSayfa.Borclular1Click(Sender: TObject);
begin
        if Application.FindComponent('FBorcList') = nil then
                Application.CreateForm(TFBorcList,FBorcList);
        FBorcList.Show;
end;

procedure TAnaSayfa.Bankadanektasilat1Click(Sender: TObject);
begin
        if Application.FindComponent('FBankadanCekTahsilat') = nil then
                Application.CreateForm(TFBankadanCekTahsilat,FBankadanCekTahsilat);
        FBankadanCekTahsilat.Show;
end;

procedure TAnaSayfa.SenetGirii1Click(Sender: TObject);
begin
        if Application.FindComponent('FSenetGiris') = nil then
                Application.CreateForm(TFSenetGiris,FSenetGiris);
        FSenetGiris.Show;
end;

procedure TAnaSayfa.StokDurumu1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokDurum') = nil then
                Application.CreateForm(TFStokDurum,FStokDurum);
        FStokDurum.Show;
end;

procedure TAnaSayfa.Ayarlar1Click(Sender: TObject);
begin
        if Application.FindComponent('FAyarlar') = nil then
                Application.CreateForm(TFAyarlar,FAyarlar);
        FAyarlar.Show;
end;

procedure TAnaSayfa.Timer1Timer(Sender: TObject);
var
        Saat: TDateTime;
begin
        if Application.FindComponent('SabitDM') <> nil then
        begin
                if tryStrToTime(DMSabit.FirmaIBQYEDEKSAAT.AsString,Saat) = true then
                begin
                        if (StrToTime(DMSabit.FirmaIBQYEDEKSAAT.AsString) >= StrToTime(TimeToStr(now - 3)))
                                and (StrToTime(DMSabit.FirmaIBQYEDEKSAAT.AsString) <= StrToTime(TimeToStr(now + 3)))  then
                                OtoYedek:= TOtoYedekle.Create(false);
                end;
        end;
end;

procedure TAnaSayfa.EldenSenetdeme1Click(Sender: TObject);
begin
        if Application.FindComponent('FEldenSenetTahsilat') = nil then
                Application.CreateForm(TFEldenSenetTahsilat,FEldenSenetTahsilat);
        FEldenSenetTahsilat.Show;
end;

procedure TAnaSayfa.SaymEksii1Click(Sender: TObject);
begin
        if Application.FindComponent('FSayimEksigi') = nil then
                Application.CreateForm(TFSayimEksigi,FSayimEksigi);
        FSayimEksigi.Show;
end;

procedure TAnaSayfa.eklifAlam1Click(Sender: TObject);
begin                 
        if Application.FindComponent('FTeklifAlma') = nil then
                Application.CreateForm(TFTeklifAlma,FTeklifAlma);
        FTeklifAlma.Show;
end;

procedure TAnaSayfa.eklifler1Click(Sender: TObject);
begin                   
        if Application.FindComponent('FTeklifler') = nil then
                Application.CreateForm(TFTeklifler,FTeklifler);
        FTeklifler.Show;
end;

procedure TAnaSayfa.Kasalemleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FKasaislemList') = nil then
                Application.CreateForm(TFKasaislemList,FKasaislemList);
        FKasaislemList.Show;
end;

procedure TAnaSayfa.Bankalemleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FBankaislemList') = nil then
                Application.CreateForm(TFBankaislemList,FBankaislemList);
        FBankaislemList.Show;
end;

procedure TAnaSayfa.Sipariler1Click(Sender: TObject);
begin
        if Application.FindComponent('FSiparisler') = nil then
                Application.CreateForm(TFSiparisler,FSiparisler);
        FSiparisler.Show;
end;

procedure TAnaSayfa.SipariAlma2Click(Sender: TObject);
begin
        if Application.FindComponent('FSiparisAlma') = nil then
                Application.CreateForm(TFSiparisAlma,FSiparisAlma);
        FSiparisAlma.Show;
end;

procedure TAnaSayfa.SaymFazlas1Click(Sender: TObject);
begin
        if Application.FindComponent('FSayimFazlasi') = nil then
                Application.CreateForm(TFSayimFazlasi,FSayimFazlasi);
        FSayimFazlasi.Show;
end;

procedure TAnaSayfa.malat1Click(Sender: TObject);
begin
        if Application.FindComponent('FUretimdenGiris') = nil then
                Application.CreateForm(TFUretimdenGiris,FUretimdenGiris);
        FUretimdenGiris.Show;
end;

procedure TAnaSayfa.Sarf1Click(Sender: TObject);
begin
        if Application.FindComponent('FSarf') = nil then
                Application.CreateForm(TFSarf,FSarf);
        FSarf.Show;
end;

procedure TAnaSayfa.Fire1Click(Sender: TObject);
begin                                              
        if Application.FindComponent('FFire') = nil then
                Application.CreateForm(TFFire,FFire);
        FFire.Show;
end;

procedure TAnaSayfa.retim1Click(Sender: TObject);
begin
        if Application.FindComponent('FUretimeCikis') = nil then
                Application.CreateForm(TFUretimeCikis,FUretimeCikis);
        FUretimeCikis.Show;
end;

procedure TAnaSayfa.StokHareketleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokHareket') = nil then
                Application.CreateForm(TFStokHareket,FStokHareket);
        FStokHareket.Show;
end;

procedure TAnaSayfa.YillikStokHareketleri1Click(Sender: TObject);
begin
        if Application.FindComponent('FYillikStokHareket') = nil then
                Application.CreateForm(TFYillikStokHareket,FYillikStokHareket);
        FYillikStokHareket.Show;
end;

procedure TAnaSayfa.SipariGerekenStoklar1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokSiparis') = nil then
                Application.CreateForm(TFStokSiparis,FStokSiparis);
        FStokSiparis.Show;
end;

procedure TAnaSayfa.krsaliyesi1Click(Sender: TObject);
begin
        if Application.FindComponent('FCikisIrsaliyesi') = nil then
                Application.CreateForm(TFCikisIrsaliyesi,FCikisIrsaliyesi);
        FCikisIrsaliyesi.Show;
end;

procedure TAnaSayfa.Alis1Click(Sender: TObject);
begin
        if Application.FindComponent('FDovizAlisSatis') = nil then
                Application.CreateForm(TFDovizAlisSatis,FDovizAlisSatis);
        FDovizAlisSatis.ShowModal;
end;

end.
