unit SabitDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery,
  IBStoredProc;

type
  TDMSabit = class(TDataModule)
    ilIBQ: TIBQuery;
    ilUSQL: TIBUpdateSQL;
    ilDS: TDataSource;
    ilceIBQ: TIBQuery;
    ilceUSQL: TIBUpdateSQL;
    ilceDS: TDataSource;
    SektorIBQ: TIBQuery;
    SektorUSQL: TIBUpdateSQL;
    SektorDS: TDataSource;
    CariTipIBQ: TIBQuery;
    CariTipUSQL: TIBUpdateSQL;
    CariTipDS: TDataSource;
    ParaBirimiIBQ: TIBQuery;
    ParaBirimiUSQL: TIBUpdateSQL;
    ParaBirimiDS: TDataSource;
    DovizKurIBQ: TIBQuery;
    DovizKurUSQL: TIBUpdateSQL;
    DovizKurDS: TDataSource;
    GelirGiderIBQ: TIBQuery;
    GelirGiderSQL: TIBUpdateSQL;
    GelirGiderDS: TDataSource;
    ilIBQSEHIRKOD: TIntegerField;
    ilIBQTRAFIKKOD: TIBStringField;
    ilIBQSEHIRADI: TIBStringField;
    ilIBQTELALANKOD: TIBStringField;
    ilceIBQILCEKOD: TIntegerField;
    ilceIBQSEHIRKOD: TIntegerField;
    ilceIBQILCEADI: TIBStringField;
    SektorIBQSEKKOD: TIntegerField;
    SektorIBQSEKTOR: TIBStringField;
    DovizKurIBQDOVKURKOD: TIntegerField;
    DovizKurIBQTARIH: TDateTimeField;
    DovizKurIBQPARABIRKOD: TIntegerField;
    DovizKurIBQMBALIS: TFloatField;
    DovizKurIBQMBSATIS: TFloatField;
    DovizKurIBQEFEALIS: TFloatField;
    DovizKurIBQEFESATIS: TFloatField;
    DovizKurIBQSERALIS: TFloatField;
    DovizKurIBQSERSATIS: TFloatField;
    DovizKurIBQFIRMAKUR: TFloatField;
    DovizKurIBQSAAT: TTimeField;
    ParaBirimiIBQPARABIRKOD: TIntegerField;
    ParaBirimiIBQPARABIRIMI: TIBStringField;
    ParaBirimiIBQKISAADI: TIBStringField;
    ParaBirimiIBQFORMAT: TIBStringField;
    ParaBirimiIBQKUR: TFloatField;
    ParaBirimiIBQKURTIPI: TIBStringField;
    GGSecimIBQ: TIBQuery;
    GGSecimUSQL: TIBUpdateSQL;
    GGSecimDS: TDataSource;
    KullaniciIBQ: TIBQuery;
    KullaniciUSQL: TIBUpdateSQL;
    KullaniciDS: TDataSource;
    KullaniciIBQKULLANKOD: TIntegerField;
    KullaniciIBQKULLANICI: TIBStringField;
    KullaniciIBQPERADI: TIBStringField;
    KullaniciIBQPERSOYAD: TIBStringField;
    KullaniciIBQSIFRE: TIBStringField;
    CariTipIBQCARITIPKOD: TIntegerField;
    CariTipIBQANANO: TIntegerField;
    CariTipIBQTIPADI: TIBStringField;
    CariTipIBQKONTROLNO: TIBStringField;
    StokYeriIBQ: TIBQuery;
    StokYeriIBQUSQL: TIBUpdateSQL;
    StokYeriIBQDS: TDataSource;
    StokYeriIBQSTOKYERIKOD: TIntegerField;
    StokYeriIBQANANO: TIntegerField;
    StokYeriIBQALTNO: TIntegerField;
    StokYeriIBQSTOKYERINO: TIntegerField;
    StokYeriIBQSTOKYERIADI: TIBStringField;
    StokYeriIBQKULLANIMALANI: TIBStringField;
    StokYeriIBQAKTIVITE: TIntegerField;
    StokYeriIBQBLOKE: TIntegerField;
    StokYeriIBQADRES: TIBStringField;
    StokYeriIBQTELEFON: TIBStringField;
    StokYeriIBQSORUMLU: TIBStringField;
    StokYeriIBQHACIM: TIntegerField;
    StokYeriIBQKUTLE: TIntegerField;
    StokYeriIBQNOTU: TMemoField;
    StokYeriIBQSIPGUN: TIBStringField;
    StokYeriIBQTESGUN: TIBStringField;
    StokYeriIBQKONTROLNO: TIBStringField;
    PersonelIBQ: TIBQuery;
    PersonelUSQL: TIBUpdateSQL;
    PersonelDS: TDataSource;
    GelirGiderIBQGELGITKOD: TIntegerField;
    GelirGiderIBQANANO: TIntegerField;
    GelirGiderIBQGELGITADI: TIBStringField;
    GelirGiderIBQGELGITTUR: TIBStringField;
    GelirGiderIBQKONTROLNO: TIBStringField;
    GGSecimIBQGELGITKOD: TIntegerField;
    GGSecimIBQANANO: TIntegerField;
    GGSecimIBQGELGITADI: TIBStringField;
    GGSecimIBQGELGITTUR: TIBStringField;
    GGSecimIBQKONTROLNO: TIBStringField;
    PersonelResimIBQ: TIBQuery;
    PersonelResimUSQL: TIBUpdateSQL;
    PersonelResimDS: TDataSource;
    PersonelResimIBQRESIMKOD: TIntegerField;
    PersonelResimIBQRESIM: TBlobField;
    PersonelResimIBQPERSONELKOD: TIntegerField;
    FirmaIBQ: TIBQuery;
    FirmaUSQL: TIBUpdateSQL;
    FirmaDS: TDataSource;
    FirmaIBQFIRMAKOD: TIntegerField;
    FirmaIBQLOGO: TBlobField;
    FirmaIBQFIRMAUNVAN: TIBStringField;
    FirmaIBQYETKILI: TIBStringField;
    FirmaIBQVERGIDAIRE: TIBStringField;
    FirmaIBQVERGINO: TIBStringField;
    FirmaIBQADRES: TIBStringField;
    FirmaIBQTELEFON: TIBStringField;
    FirmaIBQFAKS: TIBStringField;
    FirmaIBQSERINO: TIBStringField;
    FirmaIBQYEDEKZAMANI: TIntegerField;
    FirmaIBQYEDEKSAAT: TIBStringField;
    FirmaIBQYEDEKYER: TIBStringField;
    FirmaIBQLISANS: TIntegerField;
    FirmaIBQCEKUYAR: TIBStringField;
    FirmaIBQTEL2: TIBStringField;
    FirmaIBQTEL3: TIBStringField;
    FirmaIBQWEB: TIBStringField;
    FirmaIBQMAIL: TIBStringField;
    FirmaIBQKULLANKOD: TIntegerField;
    FirmaIBQILCEKOD: TIntegerField;
    FirmaIBQSEHIRKOD: TIntegerField;
    PersonelIBQPERSONELKOD: TIntegerField;
    PersonelIBQPERSONELADI: TIBStringField;
    PersonelIBQACIKLAMA: TMemoField;
    PersonelIBQTEL1: TIBStringField;
    PersonelIBQTEL2: TIBStringField;
    PersonelIBQGSM: TIBStringField;
    PersonelIBQMAHALLE: TIBStringField;
    PersonelIBQCADDE: TIBStringField;
    PersonelIBQSOKAK: TIBStringField;
    PersonelIBQAPARTMAN: TIBStringField;
    PersonelIBQNOSU: TIBStringField;
    PersonelIBQILCEKOD: TIntegerField;
    PersonelIBQSEHIRKOD: TIntegerField;
    PersonelIBQVERGINO: TIBStringField;
    PersonelIBQKIMLIKNO: TIBStringField;
    PersonelIBQMAIL: TIBStringField;
    PersonelIBQMAAS: TFloatField;
    PersonelIBQAKTIVITE: TIntegerField;
    PersonelIBQPERSONELNO: TIntegerField;
    ParaBirSecIBQ: TIBQuery;
    ParaBirSecDS: TDataSource;
    DovizKurSecIBQ: TIBQuery;
    DovizKurSecUSQL: TIBUpdateSQL;
    DovizKurSecDS: TDataSource;
    DovizKurSecIBQDOVKURKOD: TIntegerField;
    DovizKurSecIBQTARIH: TDateTimeField;
    DovizKurSecIBQPARABIRKOD: TIntegerField;
    DovizKurSecIBQMBALIS: TFloatField;
    DovizKurSecIBQMBSATIS: TFloatField;
    DovizKurSecIBQEFEALIS: TFloatField;
    DovizKurSecIBQEFESATIS: TFloatField;
    DovizKurSecIBQSERALIS: TFloatField;
    DovizKurSecIBQSERSATIS: TFloatField;
    DovizKurSecIBQFIRMAKUR: TFloatField;
    DovizKurSecIBQSAAT: TTimeField;
    ParaBirSecIBQPARABIRKOD: TIntegerField;
    ParaBirSecIBQPARABIRIMI: TIBStringField;
    ParaBirSecIBQKISAADI: TIBStringField;
    ParaBirSecIBQFORMAT: TIBStringField;
    ParaBirSecIBQKUR: TFloatField;
    ParaBirSecIBQKURTIPI: TIBStringField;
    StokTipiIBQ: TIBQuery;
    StokTipiUSQL: TIBUpdateSQL;
    StokTipiDS: TDataSource;
    StokTipiIBQSTOKTIPIKOD: TIntegerField;
    StokTipiIBQSTOKTIPI: TIBStringField;
    BilgiIBQ: TIBQuery;
    BilgiUSQL: TIBUpdateSQL;
    BilgiDS: TDataSource;
    KullaniciIBQTARIH: TDateTimeField;
    BilgiIBQBILGIKOD: TIntegerField;
    BilgiIBQUSTBILGI: TMemoField;
    BilgiIBQALTBILGI: TMemoField;
    BilgiIBQBILGINO: TIntegerField;
    BilgiIBQBILGIADI: TIBStringField;
    procedure ParaBirimiIBQAfterPost(DataSet: TDataSet);
    procedure DovizKurIBQAfterPost(DataSet: TDataSet);
    procedure CariTiplerIBQAfterDelete(DataSet: TDataSet);
    procedure CariTiplerIBQAfterPost(DataSet: TDataSet);
    procedure ilIBQAfterDelete(DataSet: TDataSet);
    procedure ilIBQAfterPost(DataSet: TDataSet);
    procedure ilceIBQAfterPost(DataSet: TDataSet);
    procedure ilceIBQAfterDelete(DataSet: TDataSet);
    procedure SektorIBQAfterDelete(DataSet: TDataSet);
    procedure SektorIBQAfterPost(DataSet: TDataSet);
    procedure CariTipIBQAfterPost(DataSet: TDataSet);
    procedure CariTipIBQAfterDelete(DataSet: TDataSet);
    procedure GelirGiderIBQAfterDelete(DataSet: TDataSet);
    procedure GelirGiderIBQAfterPost(DataSet: TDataSet);
    procedure GGSecimIBQAfterPost(DataSet: TDataSet);
    procedure GGSecimIBQAfterDelete(DataSet: TDataSet);
    procedure KullaniciIBQAfterDelete(DataSet: TDataSet);
    procedure KullaniciIBQAfterPost(DataSet: TDataSet);
    procedure DovizKurIBQNewRecord(DataSet: TDataSet);
    procedure ilceIBQNewRecord(DataSet: TDataSet);
    procedure StokYeriIBQAfterDelete(DataSet: TDataSet);
    procedure StokYeriIBQAfterPost(DataSet: TDataSet);
    procedure GelirGiderIBQNewRecord(DataSet: TDataSet);
    procedure PersonelResimIBQAfterPost(DataSet: TDataSet);
    procedure PersonelResimIBQAfterDelete(DataSet: TDataSet);
    procedure FirmaIBQAfterDelete(DataSet: TDataSet);
    procedure FirmaIBQAfterPost(DataSet: TDataSet);
    procedure PersonelIBQAfterPost(DataSet: TDataSet);
    procedure PersonelIBQAfterDelete(DataSet: TDataSet);
    procedure ParaBirSecIBQAfterPost(DataSet: TDataSet);
    procedure ParaBirSecIBQAfterDelete(DataSet: TDataSet);
    procedure DovizKurSecIBQAfterPost(DataSet: TDataSet);
    procedure DovizKurSecIBQAfterDelete(DataSet: TDataSet);
    procedure BilgiIBQAfterPost(DataSet: TDataSet);
    procedure BilgiIBQAfterDelete(DataSet: TDataSet);
    procedure PersonelResimIBQNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSabit: TDMSabit;

implementation

Uses DataDM;
{$R *.dfm}

procedure TDMSabit.ParaBirimiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.DovizKurIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.CariTiplerIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.CariTiplerIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.ilIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.ilIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.ilceIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.ilceIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.SektorIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.SektorIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.CariTipIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.CariTipIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.GelirGiderIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.GelirGiderIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.GGSecimIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.GGSecimIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.KullaniciIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.KullaniciIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.DovizKurIBQNewRecord(DataSet: TDataSet);
begin
        DovizKurIBQTARIH.AsDateTime := BugununTarihi;
        DovizKurIBQPARABIRKOD.AsInteger := ParaBirimiIBQPARABIRKOD.AsInteger;
end;

procedure TDMSabit.ilceIBQNewRecord(DataSet: TDataSet);
begin
        ilceIBQSEHIRKOD.AsInteger := ilIBQSEHIRKOD.AsInteger;
end;

procedure TDMSabit.StokYeriIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.StokYeriIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.GelirGiderIBQNewRecord(DataSet: TDataSet);
begin
        GelirGiderIBQGELGITTUR.AsString :='Gider';
end;

procedure TDMSabit.PersonelResimIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.PersonelResimIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.FirmaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.FirmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.PersonelIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.PersonelIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.ParaBirSecIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.ParaBirSecIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);        DMData.Kayit(DataSet);
end;

procedure TDMSabit.DovizKurSecIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.DovizKurSecIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.BilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.BilgiIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSabit.PersonelResimIBQNewRecord(DataSet: TDataSet);
begin
        PersonelResimIBQPERSONELKOD.AsInteger := PersonelIBQPERSONELKOD.AsInteger;
end;

end.
