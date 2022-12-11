unit SiparisDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMSiparis = class(TDataModule)
    SiparislerIBQ: TIBQuery;
    SiparislerUSQL: TIBUpdateSQL;
    SiparislerDS: TDataSource;
    SVermeIBQ: TIBQuery;
    SVermeSQL: TIBUpdateSQL;
    SVermeDS: TDataSource;
    SVermeBodroIBQ: TIBQuery;
    SVermeBodroSQL: TIBUpdateSQL;
    SVermeBodroDS: TDataSource;
    SiparislerIBQISLEMKOD: TIntegerField;
    SiparislerIBQISLEMTURKOD: TIntegerField;
    SiparislerIBQCARIKOD: TIntegerField;
    SiparislerIBQCARINO: TIntegerField;
    SiparislerIBQSIPARISNO: TIntegerField;
    SiparislerIBQTARIH: TDateField;
    SiparislerIBQSAAT: TTimeField;
    SiparislerIBQACIKLAMA: TIBStringField;
    SiparislerIBQALISTUTAR: TFloatField;
    SiparislerIBQSATISTUTAR: TFloatField;
    SiparislerIBQALISMATRAH: TFloatField;
    SiparislerIBQALISKDVTUTAR: TFloatField;
    SiparislerIBQSATISMATRAH: TFloatField;
    SiparislerIBQSATISKDVTUTAR: TFloatField;
    SiparislerIBQD_TEDIYE: TFloatField;
    SiparislerIBQD_TAHSILAT: TFloatField;
    SiparislerIBQCARIKURU: TFloatField;
    SiparislerIBQISLEMKURU: TFloatField;
    SiparislerIBQTAHSILATMATRAH: TFloatField;
    SiparislerIBQTEDIYEMATRAH: TFloatField;
    SiparislerIBQKAPATMA: TIntegerField;
    SiparislerIBQVADE: TDateField;
    SiparislerIBQGELGITKOD: TIBStringField;
    SiparislerIBQEVRAKNO: TIntegerField;
    SiparislerIBQBELGENO: TIntegerField;
    SiparislerIBQBAGLANTINO: TIntegerField;
    SiparislerIBQPARABIRIMKOD: TIntegerField;
    SiparislerIBQSTOKYERIKOD: TIntegerField;
    SiparislerIBQMAKBUZNO: TIntegerField;
    SiparislerIBQBILGIKOD: TIntegerField;
    SiparislerIBQKULLANKOD: TIntegerField;
    SiparislerIBQPERSONELKOD: TIntegerField;
    SiparislerIBQCARIPARABIRIMKOD: TIntegerField;
    SiparislerIBQC_CARIPARABIRIM: TIBStringField;
    SiparislerIBQC_PARABIRIMI: TIBStringField;
    SiparislerIBQC_CARIADI: TIBStringField;
    SiparislerIBQC_STOKYERI: TIBStringField;
    SiparislerIBQC_KULLANICIADI: TIBStringField;
    SiparislerIBQC_PERSONEL: TIBStringField;
    SiparislerIBQEVRAKTARIH: TDateField;
    SiparislerIBQKDVSECIM: TIBStringField;
    SiparislerIBQD_ALISTUTAR: TFloatField;
    SiparislerIBQD_ALISKDVTUTAR: TFloatField;
    SiparislerIBQD_ALISMATRAH: TFloatField;
    SiparislerIBQD_SATISTUTAR: TFloatField;
    SiparislerIBQD_SATISKDVTUTAR: TFloatField;
    SiparislerIBQD_SATISMATRAH: TFloatField;
    SiparislerIBQC_GGMERKEZI: TIBStringField;
    SiparislerIBQC_FIYATSEC: TIntegerField;
    SiparislerIBQSISTEM: TIntegerField;
    SVermeBodroIBQBODROKOD: TIntegerField;
    SVermeBodroIBQSIRANO: TIntegerField;
    SVermeBodroIBQISLEMTUR: TIBStringField;
    SVermeBodroIBQC_ISLEMTURKOD: TIntegerField;
    SVermeBodroIBQCARIKOD: TIntegerField;
    SVermeBodroIBQPARABIRIMKOD: TIntegerField;
    SVermeBodroIBQTARIH: TDateField;
    SVermeBodroIBQSTOKKOD: TIntegerField;
    SVermeBodroIBQSTOKNO: TIntegerField;
    SVermeBodroIBQBARKOD: TIBStringField;
    SVermeBodroIBQSTOKADI: TIBStringField;
    SVermeBodroIBQMIKTAR: TFloatField;
    SVermeBodroIBQMIKTARCARPAN: TIntegerField;
    SVermeBodroIBQGIRISMIKTAR: TFloatField;
    SVermeBodroIBQCIKISMIKTAR: TFloatField;
    SVermeBodroIBQBIRIM: TIBStringField;
    SVermeBodroIBQBIRIMFIYAT: TFloatField;
    SVermeBodroIBQALISFIYAT: TFloatField;
    SVermeBodroIBQSATISTUTAR: TFloatField;
    SVermeBodroIBQSATISFIYAT: TFloatField;
    SVermeBodroIBQALISTUTAR: TFloatField;
    SVermeBodroIBQALISMATRAHI: TFloatField;
    SVermeBodroIBQSATISMATRAHI: TFloatField;
    SVermeBodroIBQISKONTO1: TFloatField;
    SVermeBodroIBQISKONTO2: TFloatField;
    SVermeBodroIBQISKONTO3: TFloatField;
    SVermeBodroIBQISKONTO4: TFloatField;
    SVermeBodroIBQKDVORANI: TFloatField;
    SVermeBodroIBQACIKLAMA: TIBStringField;
    SVermeBodroIBQKAPATMA: TIntegerField;
    SVermeBodroIBQVADE: TDateField;
    SVermeBodroIBQSTOKYERIKOD: TIntegerField;
    SVermeBodroIBQISLEMKURU: TFloatField;
    SVermeBodroIBQGELGITKOD: TIBStringField;
    SVermeBodroIBQPERSONELKOD: TIntegerField;
    SVermeBodroIBQKULLANKOD: TIntegerField;
    SVermeBodroIBQEVRAKDURUMU: TIntegerField;
    SVermeBodroIBQSERINO: TIBStringField;
    SVermeBodroIBQCARIHESAPILISKI: TIntegerField;
    SVermeBodroIBQC_CARIADI: TIBStringField;
    SVermeBodroIBQC_STOKYERI: TIBStringField;
    SVermeBodroIBQC_KULLANICIADI: TIBStringField;
    SVermeBodroIBQC_PARABIRIMI: TIBStringField;
    SVermeBodroIBQC_REELALIS: TFloatField;
    SVermeBodroIBQC_REELSATIS: TFloatField;
    SVermeBodroIBQISLEMKOD: TIntegerField;
    SVermeBodroIBQKDVSECIM: TIBStringField;
    SVermeBodroIBQC_TLALISTUTARI: TFloatField;
    SVermeBodroIBQC_TLALISMATRAHI: TFloatField;
    SVermeBodroIBQC_TLSATISTUTARI: TFloatField;
    SVermeBodroIBQC_TLSATISMATRAHI: TFloatField;
    SVermeBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SVermeBodroIBQC_GGMERKEZI: TIBStringField;
    SVermeBodroIBQC_ALISKDVTUTAR: TFloatField;
    SVermeBodroIBQC_SATISKDVTUTAR: TFloatField;
    SVermeBodroIBQC_TLALISKDVTUTAR: TFloatField;
    SVermeBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    SVermeBodroIBQSISTEM: TIntegerField;
    SVermeBodroIBQMALIYETFIYATI: TFloatField;
    SVermeBodroIBQC_MALIYETTUTARI: TFloatField;
    SVermeBodroIBQC_KARZARAR: TFloatField;
    SVermeBilgiIBQ: TIBQuery;
    SVermeBilgiIBQBILGIKOD: TIntegerField;
    SVermeBilgiIBQISLEMKOD: TIntegerField;
    SVermeBilgiIBQALTBILGI: TMemoField;
    SVermeBilgiIBQUSTBILGI: TMemoField;
    SVermeBilgiIBQALTISKONTO: TFloatField;
    SVermeBilgiIBQISLEMTURKOD: TIntegerField;
    SVermeBilgiSQL: TIBUpdateSQL;
    SVermeBilgiDS: TDataSource;
    SAlmaIBQ: TIBQuery;
    SAlmaSQL: TIBUpdateSQL;
    SAlmaDS: TDataSource;
    SAlmaBodroIBQ: TIBQuery;
    SAlmaBodroSQL: TIBUpdateSQL;
    SAlmaBodroDS: TDataSource;
    SAlmaBilgiIBQ: TIBQuery;
    SAlmaBilgiSQL: TIBUpdateSQL;
    SAlmaBilgiDS: TDataSource;
    SAlmaBilgiIBQBILGIKOD: TIntegerField;
    SAlmaBilgiIBQISLEMKOD: TIntegerField;
    SAlmaBilgiIBQALTBILGI: TMemoField;
    SAlmaBilgiIBQUSTBILGI: TMemoField;
    SAlmaBilgiIBQALTISKONTO: TFloatField;
    SAlmaBilgiIBQISLEMTURKOD: TIntegerField;
    SiparislerIBQEVRAKDURUM: TIntegerField;
    SVermeIBQISLEMKOD: TIntegerField;
    SVermeIBQISLEMTUR: TIBStringField;
    SVermeIBQISLEMTURKOD: TIntegerField;
    SVermeIBQCARIKOD: TIntegerField;
    SVermeIBQCARINO: TIntegerField;
    SVermeIBQSIPARISNO: TIntegerField;
    SVermeIBQTARIH: TDateField;
    SVermeIBQSAAT: TTimeField;
    SVermeIBQACIKLAMA: TIBStringField;
    SVermeIBQALISTUTAR: TFloatField;
    SVermeIBQSATISTUTAR: TFloatField;
    SVermeIBQALISMATRAH: TFloatField;
    SVermeIBQALISKDVTUTAR: TFloatField;
    SVermeIBQSATISMATRAH: TFloatField;
    SVermeIBQSATISKDVTUTAR: TFloatField;
    SVermeIBQD_TEDIYE: TFloatField;
    SVermeIBQD_TAHSILAT: TFloatField;
    SVermeIBQCARIKURU: TFloatField;
    SVermeIBQISLEMKURU: TFloatField;
    SVermeIBQTAHSILATMATRAH: TFloatField;
    SVermeIBQTEDIYEMATRAH: TFloatField;
    SVermeIBQKAPATMA: TIntegerField;
    SVermeIBQVADE: TDateField;
    SVermeIBQGELGITKOD: TIBStringField;
    SVermeIBQEVRAKNO: TIntegerField;
    SVermeIBQBELGENO: TIntegerField;
    SVermeIBQBAGLANTINO: TIntegerField;
    SVermeIBQPARABIRIMKOD: TIntegerField;
    SVermeIBQSTOKYERIKOD: TIntegerField;
    SVermeIBQMAKBUZNO: TIntegerField;
    SVermeIBQBILGIKOD: TIntegerField;
    SVermeIBQKULLANKOD: TIntegerField;
    SVermeIBQPERSONELKOD: TIntegerField;
    SVermeIBQCARIPARABIRIMKOD: TIntegerField;
    SVermeIBQC_CARIPARABIRIM: TIBStringField;
    SVermeIBQC_PARABIRIMI: TIBStringField;
    SVermeIBQC_CARIADI: TIBStringField;
    SVermeIBQC_STOKYERI: TIBStringField;
    SVermeIBQC_KULLANICIADI: TIBStringField;
    SVermeIBQC_PERSONEL: TIBStringField;
    SVermeIBQEVRAKTARIH: TDateField;
    SVermeIBQKDVSECIM: TIBStringField;
    SVermeIBQD_ALISTUTAR: TFloatField;
    SVermeIBQD_ALISKDVTUTAR: TFloatField;
    SVermeIBQD_ALISMATRAH: TFloatField;
    SVermeIBQD_SATISTUTAR: TFloatField;
    SVermeIBQD_SATISKDVTUTAR: TFloatField;
    SVermeIBQD_SATISMATRAH: TFloatField;
    SVermeIBQC_GGMERKEZI: TIBStringField;
    SVermeIBQC_FIYATSEC: TIntegerField;
    SVermeIBQSISTEM: TIntegerField;
    SVermeIBQEVRAKDURUM: TIntegerField;
    SAlmaIBQISLEMKOD: TIntegerField;
    SAlmaIBQISLEMTUR: TIBStringField;
    SAlmaIBQISLEMTURKOD: TIntegerField;
    SAlmaIBQCARIKOD: TIntegerField;
    SAlmaIBQCARINO: TIntegerField;
    SAlmaIBQSIPARISNO: TIntegerField;
    SAlmaIBQTARIH: TDateField;
    SAlmaIBQSAAT: TTimeField;
    SAlmaIBQACIKLAMA: TIBStringField;
    SAlmaIBQALISTUTAR: TFloatField;
    SAlmaIBQSATISTUTAR: TFloatField;
    SAlmaIBQALISMATRAH: TFloatField;
    SAlmaIBQALISKDVTUTAR: TFloatField;
    SAlmaIBQSATISMATRAH: TFloatField;
    SAlmaIBQSATISKDVTUTAR: TFloatField;
    SAlmaIBQD_TEDIYE: TFloatField;
    SAlmaIBQD_TAHSILAT: TFloatField;
    SAlmaIBQCARIKURU: TFloatField;
    SAlmaIBQISLEMKURU: TFloatField;
    SAlmaIBQTAHSILATMATRAH: TFloatField;
    SAlmaIBQTEDIYEMATRAH: TFloatField;
    SAlmaIBQKAPATMA: TIntegerField;
    SAlmaIBQVADE: TDateField;
    SAlmaIBQGELGITKOD: TIBStringField;
    SAlmaIBQEVRAKNO: TIntegerField;
    SAlmaIBQBELGENO: TIntegerField;
    SAlmaIBQBAGLANTINO: TIntegerField;
    SAlmaIBQPARABIRIMKOD: TIntegerField;
    SAlmaIBQSTOKYERIKOD: TIntegerField;
    SAlmaIBQMAKBUZNO: TIntegerField;
    SAlmaIBQBILGIKOD: TIntegerField;
    SAlmaIBQKULLANKOD: TIntegerField;
    SAlmaIBQPERSONELKOD: TIntegerField;
    SAlmaIBQCARIPARABIRIMKOD: TIntegerField;
    SAlmaIBQC_CARIPARABIRIM: TIBStringField;
    SAlmaIBQC_PARABIRIMI: TIBStringField;
    SAlmaIBQC_CARIADI: TIBStringField;
    SAlmaIBQC_STOKYERI: TIBStringField;
    SAlmaIBQC_KULLANICIADI: TIBStringField;
    SAlmaIBQC_PERSONEL: TIBStringField;
    SAlmaIBQEVRAKTARIH: TDateField;
    SAlmaIBQKDVSECIM: TIBStringField;
    SAlmaIBQD_ALISTUTAR: TFloatField;
    SAlmaIBQD_ALISKDVTUTAR: TFloatField;
    SAlmaIBQD_ALISMATRAH: TFloatField;
    SAlmaIBQD_SATISTUTAR: TFloatField;
    SAlmaIBQD_SATISKDVTUTAR: TFloatField;
    SAlmaIBQD_SATISMATRAH: TFloatField;
    SAlmaIBQC_GGMERKEZI: TIBStringField;
    SAlmaIBQC_FIYATSEC: TIntegerField;
    SAlmaIBQSISTEM: TIntegerField;
    SAlmaIBQEVRAKDURUM: TIntegerField;
    SAlmaBodroIBQBODROKOD: TIntegerField;
    SAlmaBodroIBQSIRANO: TIntegerField;
    SAlmaBodroIBQISLEMTUR: TIBStringField;
    SAlmaBodroIBQC_ISLEMTURKOD: TIntegerField;
    SAlmaBodroIBQCARIKOD: TIntegerField;
    SAlmaBodroIBQPARABIRIMKOD: TIntegerField;
    SAlmaBodroIBQTARIH: TDateField;
    SAlmaBodroIBQSTOKKOD: TIntegerField;
    SAlmaBodroIBQSTOKNO: TIntegerField;
    SAlmaBodroIBQBARKOD: TIBStringField;
    SAlmaBodroIBQSTOKADI: TIBStringField;
    SAlmaBodroIBQMIKTAR: TFloatField;
    SAlmaBodroIBQMIKTARCARPAN: TIntegerField;
    SAlmaBodroIBQGIRISMIKTAR: TFloatField;
    SAlmaBodroIBQCIKISMIKTAR: TFloatField;
    SAlmaBodroIBQBIRIM: TIBStringField;
    SAlmaBodroIBQBIRIMFIYAT: TFloatField;
    SAlmaBodroIBQALISFIYAT: TFloatField;
    SAlmaBodroIBQSATISTUTAR: TFloatField;
    SAlmaBodroIBQSATISFIYAT: TFloatField;
    SAlmaBodroIBQALISTUTAR: TFloatField;
    SAlmaBodroIBQALISMATRAHI: TFloatField;
    SAlmaBodroIBQSATISMATRAHI: TFloatField;
    SAlmaBodroIBQISKONTO1: TFloatField;
    SAlmaBodroIBQISKONTO2: TFloatField;
    SAlmaBodroIBQISKONTO3: TFloatField;
    SAlmaBodroIBQISKONTO4: TFloatField;
    SAlmaBodroIBQKDVORANI: TFloatField;
    SAlmaBodroIBQACIKLAMA: TIBStringField;
    SAlmaBodroIBQKAPATMA: TIntegerField;
    SAlmaBodroIBQVADE: TDateField;
    SAlmaBodroIBQSTOKYERIKOD: TIntegerField;
    SAlmaBodroIBQISLEMKURU: TFloatField;
    SAlmaBodroIBQGELGITKOD: TIBStringField;
    SAlmaBodroIBQPERSONELKOD: TIntegerField;
    SAlmaBodroIBQKULLANKOD: TIntegerField;
    SAlmaBodroIBQEVRAKDURUMU: TIntegerField;
    SAlmaBodroIBQSERINO: TIBStringField;
    SAlmaBodroIBQCARIHESAPILISKI: TIntegerField;
    SAlmaBodroIBQC_CARIADI: TIBStringField;
    SAlmaBodroIBQC_STOKYERI: TIBStringField;
    SAlmaBodroIBQC_KULLANICIADI: TIBStringField;
    SAlmaBodroIBQC_PARABIRIMI: TIBStringField;
    SAlmaBodroIBQC_REELALIS: TFloatField;
    SAlmaBodroIBQC_REELSATIS: TFloatField;
    SAlmaBodroIBQISLEMKOD: TIntegerField;
    SAlmaBodroIBQKDVSECIM: TIBStringField;
    SAlmaBodroIBQC_TLALISTUTARI: TFloatField;
    SAlmaBodroIBQC_TLALISMATRAHI: TFloatField;
    SAlmaBodroIBQC_TLSATISTUTARI: TFloatField;
    SAlmaBodroIBQC_TLSATISMATRAHI: TFloatField;
    SAlmaBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SAlmaBodroIBQC_GGMERKEZI: TIBStringField;
    SAlmaBodroIBQC_ALISKDVTUTAR: TFloatField;
    SAlmaBodroIBQC_SATISKDVTUTAR: TFloatField;
    SAlmaBodroIBQC_TLALISKDVTUTAR: TFloatField;
    SAlmaBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    SAlmaBodroIBQSISTEM: TIntegerField;
    SAlmaBodroIBQMALIYETFIYATI: TFloatField;
    SAlmaBodroIBQC_MALIYETTUTARI: TFloatField;
    SAlmaBodroIBQC_KARZARAR: TFloatField;
    SiparislerIBQISLEMTUR: TIBStringField;
    procedure SiparislerIBQAfterPost(DataSet: TDataSet);
    procedure SVermeIBQAfterPost(DataSet: TDataSet);
    procedure SVermeBodroIBQAfterPost(DataSet: TDataSet);
    procedure SVermeBilgiIBQAfterPost(DataSet: TDataSet);
    procedure SiparislerIBQAfterDelete(DataSet: TDataSet);
    procedure SVermeIBQAfterDelete(DataSet: TDataSet);
    procedure SVermeBodroIBQAfterDelete(DataSet: TDataSet);
    procedure SVermeBilgiIBQAfterDelete(DataSet: TDataSet);
    procedure SVermeIBQNewRecord(DataSet: TDataSet);
    procedure SVermeBodroIBQNewRecord(DataSet: TDataSet);
    procedure SAlmaIBQAfterPost(DataSet: TDataSet);
    procedure SAlmaIBQNewRecord(DataSet: TDataSet);
    procedure SAlmaBodroIBQNewRecord(DataSet: TDataSet);
    procedure SAlmaBodroIBQAfterPost(DataSet: TDataSet);
    procedure SAlmaBodroIBQAfterEdit(DataSet: TDataSet);
    procedure SAlmaIBQAfterEdit(DataSet: TDataSet);
    procedure SVermeIBQAfterEdit(DataSet: TDataSet);
    procedure SVermeBodroIBQAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSiparis: TDMSiparis;
  BarkodluAlis,BarkodluSatis,
  BarkodluAlisiade: boolean;
implementation

Uses DataDM, SabitDM;
{$R *.dfm}

procedure TDMSiparis.SiparislerIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SVermeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SVermeBodroIBQAfterPost(DataSet: TDataSet);
Var
        Yer : Pointer;
begin
        Yer := SVermeBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SVermeIBQ.Refresh;
        SVermeBodroIBQ.GotoBookmark(Yer);
end;

procedure TDMSiparis.SVermeBilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SiparislerIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SVermeIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SVermeBodroIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SVermeBilgiIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SVermeIBQNewRecord(DataSet: TDataSet);
begin
        SVermeIBQISLEMTUR.AsString  := 'Sipariþ Verme';
        SVermeIBQTARIH.AsDateTime := BugununTarihi;
        SVermeIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SVermeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SVermeIBQKDVSECIM.AsString := 'Hariç';
        SVermeIBQEVRAKDURUM.AsInteger := 1;
end;

procedure TDMSiparis.SVermeBodroIBQNewRecord(DataSet: TDataSet);
begin
        SVermeBodroIBQISLEMKOD.AsInteger := SVermeIBQISLEMKOD.AsInteger;
        SVermeBodroIBQISLEMTUR.AsString := 'Sipariþ Verme';
        SVermeBodroIBQKDVSECIM.AsString := SVermeIBQKDVSECIM.AsString;
        SVermeBodroIBQTARIH.AsDateTime := SVermeIBQTARIH.AsDateTime;
        SVermeBodroIBQVADE.AsDateTime := SVermeIBQTARIH.AsDateTime;
        SVermeBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;

end;

procedure TDMSiparis.SAlmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSiparis.SAlmaIBQNewRecord(DataSet: TDataSet);
begin
        SAlmaIBQISLEMTUR.AsString  := 'Sipariþ Alma';
        SAlmaIBQTARIH.AsDateTime := BugununTarihi;
        SAlmaIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SAlmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SAlmaIBQKDVSECIM.AsString := 'Hariç';
        SAlmaIBQEVRAKDURUM.AsInteger := 1;
end;

procedure TDMSiparis.SAlmaBodroIBQNewRecord(DataSet: TDataSet);
begin
        SAlmaBodroIBQISLEMKOD.AsInteger := SAlmaIBQISLEMKOD.AsInteger;
        SAlmaBodroIBQISLEMTUR.AsString := 'Sipariþ Alma';
        SAlmaBodroIBQKDVSECIM.AsString := SAlmaIBQKDVSECIM.AsString;
        SAlmaBodroIBQTARIH.AsDateTime := SAlmaIBQTARIH.AsDateTime;
        SAlmaBodroIBQVADE.AsDateTime := SAlmaIBQTARIH.AsDateTime;
        SAlmaBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;

end;

procedure TDMSiparis.SAlmaBodroIBQAfterPost(DataSet: TDataSet);
Var
        Yer : Pointer;
begin
        Yer := SAlmaBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SAlmaIBQ.Refresh;
        SAlmaBodroIBQ.GotoBookmark(Yer);
end;

procedure TDMSiparis.SAlmaBodroIBQAfterEdit(DataSet: TDataSet);
begin
        SAlmaBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSiparis.SAlmaIBQAfterEdit(DataSet: TDataSet);
begin
        SAlmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSiparis.SVermeIBQAfterEdit(DataSet: TDataSet);
begin
        SVermeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSiparis.SVermeBodroIBQAfterEdit(DataSet: TDataSet);
begin
        SVermeBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

end.
