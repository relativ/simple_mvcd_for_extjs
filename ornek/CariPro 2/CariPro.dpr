program CariPro;

uses
  Forms,
  Main in 'Main.pas' {AnaSayfa},
  DataDM in 'DataDM.pas' {DMData: TDataModule},
  Splash in 'Splash.pas' {FGiris},
  CariDM in 'CariDM.pas' {DMCari: TDataModule},
  StokDM in 'StokDM.pas' {DMStok: TDataModule},
  KasaDM in 'KasaDM.pas' {DMKasa: TDataModule},
  BankaDM in 'BankaDM.pas' {DMBanka: TDataModule},
  SabitDM in 'SabitDM.pas' {DMSabit: TDataModule},
  CekDM in 'CekDM.pas' {DMCek: TDataModule},
  irsaliyeDM in 'irsaliyeDM.pas' {DMirsaliye: TDataModule},
  SenetDM in 'SenetDM.pas' {DMSenet: TDataModule},
  SiparisDM in 'SiparisDM.pas' {DMSiparis: TDataModule},
  TeklifDM in 'TeklifDM.pas' {DMTeklif: TDataModule},
  CariKart in 'CariKart.pas' {FCariKart},
  CariHesap in 'CariHesap.pas' {FCariHesap},
  Hp in 'Hp.pas' {FHp},
  CariKartList in 'CariKartList.pas' {FCariKartList},
  Kasalar in 'Kasalar.pas' {FKasalar},
  ParaBirim in 'ParaBirim.pas' {FParaBirim},
  GelGider in 'GelGider.pas' {FGelGider},
  CariSecim in 'CariSecim.pas' {FCariSecim},
  Tahsilat in 'Tahsilat.pas' {FTahsilat},
  Odeme in 'Odeme.pas' {FOdeme},
  KasaSecim in 'KasaSecim.pas' {FKasaSecim},
  MTipler in 'MTipler.pas' {FCariTip},
  Bankalar in 'Bankalar.pas' {FBankalar},
  NakitYatirma in 'NakitYatirma.pas' {FNakitYatirma},
  NakitCekme in 'NakitCekme.pas' {FNakitCekme},
  Satisiade in 'Satisiade.pas' {FSatisiade},
  AlisSatisDM in 'AlisSatisDM.pas' {DMAlisSatis: TDataModule},
  FiyatSorgu in 'FiyatSorgu.pas' {FFiyatSorgu},
  Kopyala in 'Kopyala.pas' {FKopyala},
  ProcedureDM in 'ProcedureDM.pas' {DMProcedure: TDataModule},
  StokKartList in 'StokKartList.pas' {FStokKartList},
  StokKart in 'StokKart.pas' {FStokKart},
  StokGrup in 'StokGrup.pas' {FStokGrup},
  MSektor in 'MSektor.pas' {FCariSektor},
  iller in 'iller.pas' {Filler},
  StokYeri in 'StokYeri.pas' {FStokYeri},
  Silinenler in 'Silinenler.pas' {FSilinenler},
  StokFiyat in 'StokFiyat.pas' {FStokFiyat},
  StokKontrol in 'StokKontrol.pas' {FStokKontrol},
  Personel in 'Personel.pas' {FPersonel},
  GelGidSec in 'GelGidSec.pas' {FGelGidSec},
  Firma in 'Firma.pas' {FFirma},
  Kullanici in 'Kullanici.pas' {FKullanici},
  OtoYedekle in 'OtoYedekle.pas',
  Yedekleme in 'Yedekleme.pas' {FYedekleme},
  PersonelSec in 'PersonelSec.pas' {FPersonelSec},
  KasaVirman in 'KasaVirman.pas' {FKasaVirman},
  KasaDevir in 'KasaDevir.pas' {FKasaDevir},
  HavaleALma in 'HavaleAlma.pas' {FHavaleAlma},
  HavaleGonderme in 'HavaleGonderme.pas' {FHavaleGonderme},
  BankaDevir in 'BankaDevir.pas' {FBankaDevir},
  BankaVirman in 'BankaVirman.pas' {FBankaVirman},
  GirisDekontu in 'GirisDekontu.pas' {FGirisDekontu},
  CikisDekontu in 'CikisDekontu.pas' {FCikisDekontu},
  SilinenlerDM in 'SilinenlerDM.pas' {DMSilinenler: TDataModule},
  Sarf in 'Sarf.pas' {FSarf},
  StokislemDM in 'StokislemDM.pas' {DMStokislem: TDataModule},
  Alisiade in 'Alisiade.pas' {FAlisiade},
  About in 'About.pas' {AboutBox},
  DonemBBorc in 'DonemBBorc.pas' {FDonemBBorc},
  DonemBAlacak in 'DonemBAlacak.pas' {FDonemBAlacak},
  Cek in 'Cek.pas' {FCek},
  CekCiro in 'CekCiro.pas' {FCekCiro},
  Senetler in 'Senetler.pas' {FSenetler},
  ParaBirSec in 'ParaBirSec.pas' {FParaBirimSecim},
  CekGiris in 'CekGiris.pas' {FCekGiris},
  BankaSec in 'BankaSec.pas' {FBankaSec},
  UretimdenGiris in 'UretimdenGiris.pas' {FUretimdenGiris},
  AcikSatislar in 'AcikSatislar.pas' {FAcikSatislar},
  AcikAlislar in 'AcikAlislar.pas' {FAcikAlislar},
  Satis in 'Satis.pas' {FSatis},
  Alis in 'Alis.pas' {FAlis},
  StokTransfer in 'StokTransfer.pas' {FStokTransfer},
  TeklifVerme in 'TeklifVerme.pas' {FTeklifVerme},
  SiparisVerme in 'SiparisVerme.pas' {FSiparisVerme},
  BankadanCekTahsilati in 'BankadanCekTahsilati.pas' {FBankadanCekTahsilat},
  Girisirsaliyesi in 'Girisirsaliyesi.pas' {FGirisIrsaliyesi},
  ProjeDM in 'ProjeDM.pas' {DMProje: TDataModule},
  Proje in 'Proje.pas' {FProje},
  CariRDM in 'CariRDM.pas' {DMRCari: TDataModule},
  Bilgi in 'Bilgi.pas' {FBilgi},
  AlacakList in 'AlacakList.pas' {FAlacakList},
  BorcList in 'BorcList.pas' {FBorcList},
  EldenSenetTahsilati in 'EldenSenetTahsilati.pas' {FEldenSenetTahsilat},
  SenetGiris in 'SenetGiris.pas' {FSenetGiris},
  StokRDM in 'StokRDM.pas' {DMRStok: TDataModule},
  StokDurum in 'StokDurum.pas' {FStokDurum},
  Ayarlar in 'Ayarlar.pas' {FAyarlar},
  EldenCekTahsilati in 'EldenCekTahsilati.pas' {FEldenCekTahsilat},
  Cekler in 'Cekler.pas' {FCekler},
  SenetYazma in 'SenetYazma.pas' {FSenetYazma},
  CekYazma in 'CekYazma.pas' {FCekYazma},
  StokGirisi in 'StokGirisi.pas' {FStokGiris},
  SayimFazlasi in 'SayimFazlasi.pas' {FSayimFazlasi},
  StokCikis in 'StokCikis.pas' {FStokCikis},
  TeklifAlma in 'TeklifAlma.pas' {FTeklifAlma},
  Teklifler in 'Teklifler.pas' {FTeklifler},
  KasaislemList in 'KasaislemList.pas' {FKasaislemList},
  BankaislemList in 'BankaislemList.pas' {FBankaislemList},
  Siparisler in 'Siparisler.pas' {FSiparisler},
  SiparisAlma in 'SiparisAlma.pas' {FSiparisAlma},
  Fire in 'Fire.pas' {FFire},
  UretimeCikis in 'UretimeCikis.pas' {FUretimeCikis},
  SayimEksigi in 'SayimEksigi.pas' {FSayimEksigi},
  StokHareket in 'StokHareket.pas' {FStokHareket},
  YillikStokHareket in 'YillikStokHareket.pas' {FYillikStokHareket},
  StokSipGer in 'StokSipGer.pas' {FStokSiparis},
  Cikisirsaliyesi in 'Cikisirsaliyesi.pas' {FCikisIrsaliyesi},
  DovizAlisSatis in 'DovizAlisSatis.pas' {FDovizAlisSatis};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMData, DMData);
  Application.CreateForm(TAnaSayfa, AnaSayfa);
  Application.CreateForm(TDMSabit, DMSabit);
  Application.CreateForm(TDMStok, DMStok);
  FGiris := TFGiris.Create(Application);
  FGiris.ShowModal;
  FGiris.Update;
  if kapatma = False Then
  Begin
  Application.CreateForm(TDMCari, DMCari);

  Application.CreateForm(TDMKasa, DMKasa);
  Application.CreateForm(TDMBanka, DMBanka);
  Application.CreateForm(TDMCek, DMCek);
  Application.CreateForm(TDMirsaliye, DMirsaliye);
  Application.CreateForm(TDMSenet, DMSenet);
  Application.CreateForm(TDMSiparis, DMSiparis);
  Application.CreateForm(TDMTeklif, DMTeklif);
  Application.CreateForm(TDMAlisSatis, DMAlisSatis);
  Application.CreateForm(TDMProcedure, DMProcedure);
  Application.CreateForm(TDMSilinenler, DMSilinenler);
  Application.CreateForm(TDMProje, DMProje);

  Application.CreateForm(TDMStokislem, DMStokislem);
  Application.CreateForm(TDMRCari, DMRCari);
  Application.CreateForm(TDMRStok, DMRStok);


  Application.CreateForm(TFHp, FHp);
  Application.CreateForm(TFCariSecim, FCariSecim);
  Application.CreateForm(TFTahsilat, FTahsilat);
  Application.CreateForm(TFOdeme, FOdeme);
  Application.CreateForm(TFKasaSecim, FKasaSecim);
  Application.CreateForm(TFFiyatSorgu, FFiyatSorgu);
  Application.CreateForm(TFKopyala, FKopyala);

  Application.CreateForm(TFGelGidSec, FGelGidSec);
  Application.CreateForm(TFYedekleme, FYedekleme);
  Application.CreateForm(TFPersonelSec, FPersonelSec);


  Application.CreateForm(TFCekler, FCekler);
  Application.CreateForm(TFSenetler, FSenetler);
  Application.CreateForm(TFParaBirimSecim, FParaBirimSecim);
  Application.CreateForm(TFHp, FHp);
  Application.CreateForm(TFBankaSec, FBankaSec);
  Application.CreateForm(TFAyarlar, FAyarlar);
  
  end;
  Application.Run;


end.
