unit KasaDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMKasa = class(TDataModule)
    KasaIBQ: TIBQuery;
    KasaUSQL: TIBUpdateSQL;
    KasaDS: TDataSource;
    KasaHareketIBQ: TIBQuery;
    KasaHareketSQL: TIBUpdateSQL;
    KasaHareketDS: TDataSource;
    TahsilatIBQ: TIBQuery;
    TahsilatUSQL: TIBUpdateSQL;
    TahsilatDS: TDataSource;
    OdemeIBQ: TIBQuery;
    OdemeUSQL: TIBUpdateSQL;
    OdemeDS: TDataSource;
    KasaVirmanGonIBQ: TIBQuery;
    KV_GONUSQL: TIBUpdateSQL;
    KV_GON_DS: TDataSource;
    KasaDevirIBQ: TIBQuery;
    KasaDevirUSQL: TIBUpdateSQL;
    KasaDevirDS: TDataSource;
    AktifKasaIBQ: TIBQuery;
    AktifKasaDS: TDataSource;
    KasaIBQKASAKOD: TIntegerField;
    KasaIBQKASANO: TIntegerField;
    KasaIBQKASAADI: TIBStringField;
    KasaIBQPARABIRIMKOD: TIntegerField;
    KasaIBQACIKLAMA: TIBStringField;
    KasaIBQC_PARABIRIMI: TIBStringField;
    AktifKasaIBQKASAKOD: TIntegerField;
    AktifKasaIBQKASANO: TIntegerField;
    AktifKasaIBQKASAADI: TIBStringField;
    AktifKasaIBQPARABIRIMKOD: TIntegerField;
    AktifKasaIBQACIKLAMA: TIBStringField;
    AktifKasaIBQC_PARABIRIMI: TIBStringField;
    KasaHareketIBQISLEMKOD: TIntegerField;
    KasaHareketIBQCARIKOD: TIntegerField;
    KasaHareketIBQISLEMTUR: TIBStringField;
    KasaHareketIBQISLEMTURKOD: TIntegerField;
    KasaHareketIBQTARIH: TDateField;
    KasaHareketIBQSAAT: TTimeField;
    KasaHareketIBQACIKLAMA: TIBStringField;
    KasaHareketIBQTEDIYE: TFloatField;
    KasaHareketIBQTAHSILAT: TFloatField;
    KasaHareketIBQBAKIYE: TFloatField;
    KasaHareketIBQDURUM: TIntegerField;
    KasaHareketIBQBANKAKOD: TIntegerField;
    KasaHareketIBQCARINO: TIntegerField;
    KasaHareketIBQGELGITKOD: TIBStringField;
    KasaHareketIBQEVRAKNO: TIntegerField;
    KasaHareketIBQBELGENO: TIntegerField;
    KasaHareketIBQBAGLANTINO: TIntegerField;
    KasaHareketIBQKASAKOD: TIntegerField;
    KasaHareketIBQPARABIRIMKOD: TIntegerField;
    KasaHareketIBQMAKBUZNO: TIntegerField;
    KasaHareketIBQKULLANKOD: TIntegerField;
    KasaHareketIBQPERSONELKOD: TIntegerField;
    KasaHareketIBQSISTEM: TIntegerField;
    KasaHareketIBQD_TEDIYE: TFloatField;
    KasaHareketIBQD_TAHSILAT: TFloatField;
    KasaHareketIBQCARIKURU: TFloatField;
    KasaHareketIBQISLEMKURU: TFloatField;
    KasaHareketIBQCARIPARABIRIMKOD: TIntegerField;
    KasaHareketIBQKASAISLEMNO: TIntegerField;
    KasaHareketIBQC_CARIPARABIRIM: TIBStringField;
    KasaHareketIBQC_PARABIRIMI: TIBStringField;
    KasaHareketIBQC_KASAADI: TIBStringField;
    KasaHareketIBQC_CARIADI: TIBStringField;
    KasaHareketIBQC_GGMERKEZI: TIBStringField;
    KasaVirmanGonIBQISLEMKOD: TIntegerField;
    KasaVirmanGonIBQCARIKOD: TIntegerField;
    KasaVirmanGonIBQISLEMTUR: TIBStringField;
    KasaVirmanGonIBQISLEMTURKOD: TIntegerField;
    KasaVirmanGonIBQTARIH: TDateField;
    KasaVirmanGonIBQSAAT: TTimeField;
    KasaVirmanGonIBQACIKLAMA: TIBStringField;
    KasaVirmanGonIBQTEDIYE: TFloatField;
    KasaVirmanGonIBQTAHSILAT: TFloatField;
    KasaVirmanGonIBQBAKIYE: TFloatField;
    KasaVirmanGonIBQDURUM: TIntegerField;
    KasaVirmanGonIBQBANKAKOD: TIntegerField;
    KasaVirmanGonIBQCARINO: TIntegerField;
    KasaVirmanGonIBQGELGITKOD: TIBStringField;
    KasaVirmanGonIBQEVRAKNO: TIntegerField;
    KasaVirmanGonIBQBELGENO: TIntegerField;
    KasaVirmanGonIBQBAGLANTINO: TIntegerField;
    KasaVirmanGonIBQKASAKOD: TIntegerField;
    KasaVirmanGonIBQPARABIRIMKOD: TIntegerField;
    KasaVirmanGonIBQMAKBUZNO: TIntegerField;
    KasaVirmanGonIBQKULLANKOD: TIntegerField;
    KasaVirmanGonIBQPERSONELKOD: TIntegerField;
    KasaVirmanGonIBQSISTEM: TIntegerField;
    KasaVirmanGonIBQD_TEDIYE: TFloatField;
    KasaVirmanGonIBQD_TAHSILAT: TFloatField;
    KasaVirmanGonIBQCARIKURU: TFloatField;
    KasaVirmanGonIBQISLEMKURU: TFloatField;
    KasaVirmanGonIBQCARIPARABIRIMKOD: TIntegerField;
    KasaVirmanGonIBQKASAISLEMNO: TIntegerField;
    KasaVirmanGonIBQC_CARIPARABIRIM: TIBStringField;
    KasaVirmanGonIBQC_PARABIRIMI: TIBStringField;
    KasaVirmanGonIBQC_KASAADI: TIBStringField;
    KasaVirmanGonIBQC_CARIADI: TIBStringField;
    KasaVirmanGonIBQC_GGMERKEZI: TIBStringField;
    KasaVirmanGonIBQKAPATMA: TIntegerField;
    KasaIBQC_BAKIYE: TFloatField;
    KasaHareketIBQKAPATMA: TIntegerField;
    KasaHareketIBQC_KULLANICIADI: TIBStringField;
    KasaHareketIBQC_DURUM: TIBStringField;
    KasaIBQC_DURUM: TIBStringField;
    TahsilatIBQISLEMKOD: TIntegerField;
    TahsilatIBQCARIKOD: TIntegerField;
    TahsilatIBQISLEMTUR: TIBStringField;
    TahsilatIBQISLEMTURKOD: TIntegerField;
    TahsilatIBQTARIH: TDateField;
    TahsilatIBQSAAT: TTimeField;
    TahsilatIBQACIKLAMA: TIBStringField;
    TahsilatIBQTEDIYE: TFloatField;
    TahsilatIBQTAHSILAT: TFloatField;
    TahsilatIBQBAKIYE: TFloatField;
    TahsilatIBQDURUM: TIntegerField;
    TahsilatIBQBANKAKOD: TIntegerField;
    TahsilatIBQCARINO: TIntegerField;
    TahsilatIBQGELGITKOD: TIBStringField;
    TahsilatIBQEVRAKNO: TIntegerField;
    TahsilatIBQBELGENO: TIntegerField;
    TahsilatIBQBAGLANTINO: TIntegerField;
    TahsilatIBQKASAKOD: TIntegerField;
    TahsilatIBQPARABIRIMKOD: TIntegerField;
    TahsilatIBQMAKBUZNO: TIntegerField;
    TahsilatIBQKULLANKOD: TIntegerField;
    TahsilatIBQPERSONELKOD: TIntegerField;
    TahsilatIBQSISTEM: TIntegerField;
    TahsilatIBQD_TEDIYE: TFloatField;
    TahsilatIBQD_TAHSILAT: TFloatField;
    TahsilatIBQCARIKURU: TFloatField;
    TahsilatIBQISLEMKURU: TFloatField;
    TahsilatIBQCARIPARABIRIMKOD: TIntegerField;
    TahsilatIBQKASAISLEMNO: TIntegerField;
    TahsilatIBQC_CARIPARABIRIM: TIBStringField;
    TahsilatIBQC_PARABIRIMI: TIBStringField;
    TahsilatIBQC_KASAADI: TIBStringField;
    TahsilatIBQC_CARIADI: TIBStringField;
    TahsilatIBQC_GGMERKEZI: TIBStringField;
    TahsilatIBQKAPATMA: TIntegerField;
    TahsilatIBQC_KULLANICIADI: TIBStringField;
    TahsilatIBQC_DURUM: TIBStringField;
    OdemeIBQISLEMKOD: TIntegerField;
    OdemeIBQCARIKOD: TIntegerField;
    OdemeIBQISLEMTUR: TIBStringField;
    OdemeIBQISLEMTURKOD: TIntegerField;
    OdemeIBQTARIH: TDateField;
    OdemeIBQSAAT: TTimeField;
    OdemeIBQACIKLAMA: TIBStringField;
    OdemeIBQTEDIYE: TFloatField;
    OdemeIBQTAHSILAT: TFloatField;
    OdemeIBQBAKIYE: TFloatField;
    OdemeIBQDURUM: TIntegerField;
    OdemeIBQBANKAKOD: TIntegerField;
    OdemeIBQCARINO: TIntegerField;
    OdemeIBQGELGITKOD: TIBStringField;
    OdemeIBQEVRAKNO: TIntegerField;
    OdemeIBQBELGENO: TIntegerField;
    OdemeIBQBAGLANTINO: TIntegerField;
    OdemeIBQKASAKOD: TIntegerField;
    OdemeIBQPARABIRIMKOD: TIntegerField;
    OdemeIBQMAKBUZNO: TIntegerField;
    OdemeIBQKULLANKOD: TIntegerField;
    OdemeIBQPERSONELKOD: TIntegerField;
    OdemeIBQSISTEM: TIntegerField;
    OdemeIBQD_TEDIYE: TFloatField;
    OdemeIBQD_TAHSILAT: TFloatField;
    OdemeIBQCARIKURU: TFloatField;
    OdemeIBQISLEMKURU: TFloatField;
    OdemeIBQCARIPARABIRIMKOD: TIntegerField;
    OdemeIBQKASAISLEMNO: TIntegerField;
    OdemeIBQC_CARIPARABIRIM: TIBStringField;
    OdemeIBQC_PARABIRIMI: TIBStringField;
    OdemeIBQC_KASAADI: TIBStringField;
    OdemeIBQC_CARIADI: TIBStringField;
    OdemeIBQC_GGMERKEZI: TIBStringField;
    OdemeIBQKAPATMA: TIntegerField;
    OdemeIBQC_KULLANICIADI: TIBStringField;
    OdemeIBQC_DURUM: TIBStringField;
    KasaDevirIBQISLEMKOD: TIntegerField;
    KasaDevirIBQCARIKOD: TIntegerField;
    KasaDevirIBQISLEMTUR: TIBStringField;
    KasaDevirIBQISLEMTURKOD: TIntegerField;
    KasaDevirIBQTARIH: TDateField;
    KasaDevirIBQSAAT: TTimeField;
    KasaDevirIBQACIKLAMA: TIBStringField;
    KasaDevirIBQTEDIYE: TFloatField;
    KasaDevirIBQTAHSILAT: TFloatField;
    KasaDevirIBQBAKIYE: TFloatField;
    KasaDevirIBQDURUM: TIntegerField;
    KasaDevirIBQBANKAKOD: TIntegerField;
    KasaDevirIBQCARINO: TIntegerField;
    KasaDevirIBQGELGITKOD: TIBStringField;
    KasaDevirIBQEVRAKNO: TIntegerField;
    KasaDevirIBQBELGENO: TIntegerField;
    KasaDevirIBQBAGLANTINO: TIntegerField;
    KasaDevirIBQKASAKOD: TIntegerField;
    KasaDevirIBQPARABIRIMKOD: TIntegerField;
    KasaDevirIBQMAKBUZNO: TIntegerField;
    KasaDevirIBQKULLANKOD: TIntegerField;
    KasaDevirIBQPERSONELKOD: TIntegerField;
    KasaDevirIBQSISTEM: TIntegerField;
    KasaDevirIBQD_TEDIYE: TFloatField;
    KasaDevirIBQD_TAHSILAT: TFloatField;
    KasaDevirIBQCARIKURU: TFloatField;
    KasaDevirIBQISLEMKURU: TFloatField;
    KasaDevirIBQCARIPARABIRIMKOD: TIntegerField;
    KasaDevirIBQKASAISLEMNO: TIntegerField;
    KasaDevirIBQC_CARIPARABIRIM: TIBStringField;
    KasaDevirIBQC_PARABIRIMI: TIBStringField;
    KasaDevirIBQC_KASAADI: TIBStringField;
    KasaDevirIBQC_CARIADI: TIBStringField;
    KasaDevirIBQC_GGMERKEZI: TIBStringField;
    KasaDevirIBQKAPATMA: TIntegerField;
    KasaDevirIBQC_KULLANICIADI: TIBStringField;
    KasaDevirIBQC_DURUM: TIBStringField;
    KasaislemlistIBQ: TIBQuery;
    KasaislemlistDS: TDataSource;
    KasaislemlistIBQISLEMKOD: TIntegerField;
    KasaislemlistIBQCARIKOD: TIntegerField;
    KasaislemlistIBQISLEMTUR: TIBStringField;
    KasaislemlistIBQISLEMTURKOD: TIntegerField;
    KasaislemlistIBQTARIH: TDateField;
    KasaislemlistIBQSAAT: TTimeField;
    KasaislemlistIBQACIKLAMA: TIBStringField;
    KasaislemlistIBQTEDIYE: TFloatField;
    KasaislemlistIBQTAHSILAT: TFloatField;
    KasaislemlistIBQBANKAKOD: TIntegerField;
    KasaislemlistIBQCARINO: TIntegerField;
    KasaislemlistIBQGELGITKOD: TIBStringField;
    KasaislemlistIBQEVRAKNO: TIntegerField;
    KasaislemlistIBQBELGENO: TIntegerField;
    KasaislemlistIBQBAGLANTINO: TIntegerField;
    KasaislemlistIBQKASAKOD: TIntegerField;
    KasaislemlistIBQPARABIRIMKOD: TIntegerField;
    KasaislemlistIBQMAKBUZNO: TIntegerField;
    KasaislemlistIBQKULLANKOD: TIntegerField;
    KasaislemlistIBQPERSONELKOD: TIntegerField;
    KasaislemlistIBQSISTEM: TIntegerField;
    KasaislemlistIBQD_TEDIYE: TFloatField;
    KasaislemlistIBQD_TAHSILAT: TFloatField;
    KasaislemlistIBQCARIKURU: TFloatField;
    KasaislemlistIBQISLEMKURU: TFloatField;
    KasaislemlistIBQCARIPARABIRIMKOD: TIntegerField;
    KasaislemlistIBQKASAISLEMNO: TIntegerField;
    KasaislemlistIBQC_CARIPARABIRIM: TIBStringField;
    KasaislemlistIBQC_PARABIRIMI: TIBStringField;
    KasaislemlistIBQC_KASAADI: TIBStringField;
    KasaislemlistIBQC_CARIADI: TIBStringField;
    KasaislemlistIBQC_GGMERKEZI: TIBStringField;
    KasaislemlistIBQKAPATMA: TIntegerField;
    KasaislemlistIBQC_KULLANICIADI: TIBStringField;
    KasaislemlistIBQC_DURUM: TIBStringField;
    KasaIBQBAKIYE: TFloatField;
    AktifKasaIBQC_BAKIYE: TFloatField;
    AktifKasaIBQC_DURUM: TIBStringField;
    KasaislemlistIBQBAKIYE: TFloatField;
    KasaislemlistIBQDURUM: TIntegerField;
    KasaHareketIBQC_PERSONEL: TIBStringField;
    TahsilatIBQC_PERSONEL: TIBStringField;
    OdemeIBQC_PERSONEL: TIBStringField;
    KasaVirmanGonIBQC_KULLANICIADI: TIBStringField;
    KasaVirmanGonIBQC_DURUM: TIBStringField;
    KasaVirmanGonIBQC_PERSONEL: TIBStringField;
    KasaDevirIBQC_PERSONEL: TIBStringField;
    KasaislemlistIBQC_PERSONEL: TIBStringField;
    KasaVirmanGonIBQVIRKASAKOD: TIntegerField;
    KasaVirmanGonIBQVIRPARABIRKOD: TIntegerField;
    KasaVirmanGonIBQVIRKURU: TFloatField;
    KasaVirmanGonIBQC_VIRMAN: TFloatField;
    DovizASIBQ: TIBQuery;
    DovizASSQL: TIBUpdateSQL;
    DovizASDS: TDataSource;
    DovizASIBQISLEMKOD: TIntegerField;
    DovizASIBQCARIKOD: TIntegerField;
    DovizASIBQISLEMTUR: TIBStringField;
    DovizASIBQISLEMTURKOD: TIntegerField;
    DovizASIBQTARIH: TDateField;
    DovizASIBQSAAT: TTimeField;
    DovizASIBQACIKLAMA: TIBStringField;
    DovizASIBQTEDIYE: TFloatField;
    DovizASIBQTAHSILAT: TFloatField;
    DovizASIBQBAKIYE: TFloatField;
    DovizASIBQDURUM: TIntegerField;
    DovizASIBQBANKAKOD: TIntegerField;
    DovizASIBQCARINO: TIntegerField;
    DovizASIBQGELGITKOD: TIBStringField;
    DovizASIBQEVRAKNO: TIntegerField;
    DovizASIBQBELGENO: TIntegerField;
    DovizASIBQBAGLANTINO: TIntegerField;
    DovizASIBQKASAKOD: TIntegerField;
    DovizASIBQPARABIRIMKOD: TIntegerField;
    DovizASIBQMAKBUZNO: TIntegerField;
    DovizASIBQKULLANKOD: TIntegerField;
    DovizASIBQPERSONELKOD: TIntegerField;
    DovizASIBQSISTEM: TIntegerField;
    DovizASIBQD_TEDIYE: TFloatField;
    DovizASIBQD_TAHSILAT: TFloatField;
    DovizASIBQCARIKURU: TFloatField;
    DovizASIBQISLEMKURU: TFloatField;
    DovizASIBQCARIPARABIRIMKOD: TIntegerField;
    DovizASIBQKASAISLEMNO: TIntegerField;
    DovizASIBQC_CARIPARABIRIM: TIBStringField;
    DovizASIBQC_PARABIRIMI: TIBStringField;
    DovizASIBQC_KASAADI: TIBStringField;
    DovizASIBQC_CARIADI: TIBStringField;
    DovizASIBQC_GGMERKEZI: TIBStringField;
    DovizASIBQKAPATMA: TIntegerField;
    DovizASIBQC_KULLANICIADI: TIBStringField;
    DovizASIBQC_DURUM: TIBStringField;
    DovizASIBQC_PERSONEL: TIBStringField;
    DovizASIBQVIRKASAKOD: TIntegerField;
    DovizASIBQVIRPARABIRKOD: TIntegerField;
    DovizASIBQVIRKURU: TFloatField;
    DovizASIBQC_VIRMAN: TFloatField;
    KasaVirmanGonIBQC_ALANKASA: TIBStringField;
    KasaVirmanGonIBQC_ALANKASA_PB: TIBStringField;
    DovizASIBQC_ALANKASA: TIBStringField;
    DovizASIBQC_ALANKASA_PB: TIBStringField;
    procedure TahsilatIBQNewRecord(DataSet: TDataSet);
    procedure KasaIBQAfterDelete(DataSet: TDataSet);
    procedure KasaIBQAfterPost(DataSet: TDataSet);
    procedure KasaHareketIBQAfterPost(DataSet: TDataSet);
    procedure KasaHareketIBQAfterDelete(DataSet: TDataSet);
    procedure TahsilatIBQAfterDelete(DataSet: TDataSet);
    procedure TahsilatIBQAfterPost(DataSet: TDataSet);
    procedure OdemeIBQAfterPost(DataSet: TDataSet);
    procedure OdemeIBQAfterDelete(DataSet: TDataSet);
    procedure OdemeIBQNewRecord(DataSet: TDataSet);
    procedure KasaIBQNewRecord(DataSet: TDataSet);
    procedure KasaVirmanGonIBQAfterDelete(DataSet: TDataSet);
    procedure KasaVirmanGonIBQAfterPost(DataSet: TDataSet);
    procedure KasaVirmanAlIBQAfterPost(DataSet: TDataSet);
    procedure KasaVirmanAlIBQAfterDelete(DataSet: TDataSet);
    procedure KasaVirmanGonIBQNewRecord(DataSet: TDataSet);
    procedure KasaDevirIBQNewRecord(DataSet: TDataSet);
    procedure KasaDevirIBQAfterDelete(DataSet: TDataSet);
    procedure KasaDevirIBQAfterPost(DataSet: TDataSet);
    procedure KasaIBQCalcFields(DataSet: TDataSet);
    procedure DovizASIBQNewRecord(DataSet: TDataSet);
    procedure DovizASIBQAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMKasa: TDMKasa;

implementation

Uses DataDM, SabitDM;
{$R *.dfm}

procedure TDMKasa.TahsilatIBQNewRecord(DataSet: TDataSet);
begin
        TahsilatIBQKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        TahsilatIBQTARIH.AsDateTime := BugununTarihi;
        TahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        TahsilatIBQISLEMTUR.AsString := 'Tahsilat';
end;

procedure TDMKasa.KasaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaHareketIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaHareketIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.TahsilatIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.TahsilatIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.OdemeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.OdemeIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.OdemeIBQNewRecord(DataSet: TDataSet);
begin
        OdemeIBQKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        OdemeIBQTARIH.AsDateTime := BugununTarihi;
        OdemeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        OdemeIBQISLEMTUR.AsString := 'Ödeme';
end;

procedure TDMKasa.KasaIBQNewRecord(DataSet: TDataSet);
begin
        KasaIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
end;

procedure TDMKasa.KasaVirmanGonIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaVirmanGonIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaVirmanAlIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaVirmanAlIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaVirmanGonIBQNewRecord(DataSet: TDataSet);
begin
        KasaVirmanGonIBQKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        KasaIBQ.Next;
        KasaVirmanGonIBQVIRKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        KasaVirmanGonIBQTARIH.AsDateTime := BugununTarihi;
        KasaVirmanGonIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        KasaVirmanGonIBQISLEMTUR.AsString := 'Kasa Virman';
        KasaVirmanGonIBQSISTEM.AsInteger := 1;
end;

procedure TDMKasa.KasaDevirIBQNewRecord(DataSet: TDataSet);
begin
        KasaDevirIBQKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        KasaDevirIBQTARIH.AsDateTime := BugununTarihi;
        KasaDevirIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        KasaDevirIBQISLEMTUR.AsString := 'Kasa Devir';

end;

procedure TDMKasa.KasaDevirIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaDevirIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMKasa.KasaIBQCalcFields(DataSet: TDataSet);
begin
        if KasaIBQC_BAKIYE.AsFloat < 0 then
                KasaIBQBAKIYE.AsFloat := KasaIBQC_BAKIYE.AsFloat * -1
        else KasaIBQBAKIYE.AsFloat := KasaIBQC_BAKIYE.AsFloat;
end;

procedure TDMKasa.DovizASIBQNewRecord(DataSet: TDataSet);
begin
        DovizASIBQKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        KasaIBQ.Next;
        DovizASIBQVIRKASAKOD.AsInteger := KasaIBQKASAKOD.AsInteger;
        DovizASIBQTARIH.AsDateTime := BugununTarihi;
        DovizASIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DovizASIBQISLEMTUR.AsString := 'Kasa Döviz Alýþ Þatýþ';
        DovizASIBQSISTEM.AsInteger := 1;
end;

procedure TDMKasa.DovizASIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

end.
