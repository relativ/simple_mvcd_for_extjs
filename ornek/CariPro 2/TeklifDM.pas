unit TeklifDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTeklif = class(TDataModule)
    TeklifVermeIBQ: TIBQuery;
    TeklifVermeUSQL: TIBUpdateSQL;
    TeklifVermeDS: TDataSource;
    TeklifVermeBodroIBQ: TIBQuery;
    TeklifVermeBodroSQL: TIBUpdateSQL;
    TeklifVermeBodroDS: TDataSource;
    TekliflerIBQ: TIBQuery;
    TekliflerSQL: TIBUpdateSQL;
    TekliflerDS: TDataSource;
    TeklifVermeBodroIBQBODROKOD: TIntegerField;
    TeklifVermeBodroIBQSIRANO: TIntegerField;
    TeklifVermeBodroIBQISLEMTUR: TIBStringField;
    TeklifVermeBodroIBQC_ISLEMTURKOD: TIntegerField;
    TeklifVermeBodroIBQCARIKOD: TIntegerField;
    TeklifVermeBodroIBQPARABIRIMKOD: TIntegerField;
    TeklifVermeBodroIBQTARIH: TDateField;
    TeklifVermeBodroIBQSTOKKOD: TIntegerField;
    TeklifVermeBodroIBQSTOKNO: TIntegerField;
    TeklifVermeBodroIBQBARKOD: TIBStringField;
    TeklifVermeBodroIBQSTOKADI: TIBStringField;
    TeklifVermeBodroIBQMIKTAR: TFloatField;
    TeklifVermeBodroIBQMIKTARCARPAN: TIntegerField;
    TeklifVermeBodroIBQGIRISMIKTAR: TFloatField;
    TeklifVermeBodroIBQCIKISMIKTAR: TFloatField;
    TeklifVermeBodroIBQBIRIM: TIBStringField;
    TeklifVermeBodroIBQBIRIMFIYAT: TFloatField;
    TeklifVermeBodroIBQALISFIYAT: TFloatField;
    TeklifVermeBodroIBQSATISTUTAR: TFloatField;
    TeklifVermeBodroIBQSATISFIYAT: TFloatField;
    TeklifVermeBodroIBQALISTUTAR: TFloatField;
    TeklifVermeBodroIBQALISMATRAHI: TFloatField;
    TeklifVermeBodroIBQSATISMATRAHI: TFloatField;
    TeklifVermeBodroIBQISKONTO1: TFloatField;
    TeklifVermeBodroIBQISKONTO2: TFloatField;
    TeklifVermeBodroIBQISKONTO3: TFloatField;
    TeklifVermeBodroIBQISKONTO4: TFloatField;
    TeklifVermeBodroIBQKDVORANI: TFloatField;
    TeklifVermeBodroIBQBAKIYE: TFloatField;
    TeklifVermeBodroIBQDURUM: TIntegerField;
    TeklifVermeBodroIBQACIKLAMA: TIBStringField;
    TeklifVermeBodroIBQKAPATMA: TIntegerField;
    TeklifVermeBodroIBQVADE: TDateField;
    TeklifVermeBodroIBQISLEMKURU: TFloatField;
    TeklifVermeBodroIBQGELGITKOD: TIBStringField;
    TeklifVermeBodroIBQPERSONELKOD: TIntegerField;
    TeklifVermeBodroIBQKULLANKOD: TIntegerField;
    TeklifVermeBodroIBQEVRAKDURUMU: TIntegerField;
    TeklifVermeBodroIBQSERINO: TIBStringField;
    TeklifVermeBodroIBQC_CARIADI: TIBStringField;
    TeklifVermeBodroIBQC_KULLANICIADI: TIBStringField;
    TeklifVermeBodroIBQC_PARABIRIMI: TIBStringField;
    TeklifVermeBodroIBQC_REELALIS: TFloatField;
    TeklifVermeBodroIBQC_REELSATIS: TFloatField;
    TeklifVermeBodroIBQISLEMKOD: TIntegerField;
    TeklifVermeBodroIBQKDVSECIM: TIBStringField;
    TeklifVermeBodroIBQC_TLALISTUTARI: TFloatField;
    TeklifVermeBodroIBQC_TLALISMATRAHI: TFloatField;
    TeklifVermeBodroIBQC_TLSATISTUTARI: TFloatField;
    TeklifVermeBodroIBQC_TLSATISMATRAHI: TFloatField;
    TeklifVermeBodroIBQC_TLBIRIMFIYAT: TFloatField;
    TeklifVermeBodroIBQC_GGMERKEZI: TIBStringField;
    TeklifVermeBodroIBQC_ALISKDVTUTAR: TFloatField;
    TeklifVermeBodroIBQC_SATISKDVTUTAR: TFloatField;
    TeklifVermeBodroIBQC_TLALISKDVTUTAR: TFloatField;
    TeklifVermeBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    TeklifVermeBodroIBQSISTEM: TIntegerField;
    TeklifVermeBodroIBQMALIYETFIYATI: TFloatField;
    TeklifVermeBodroIBQC_MALIYETTUTARI: TFloatField;
    TeklifVermeBodroIBQC_KARZARAR: TFloatField;
    TVermeBilgiIBQ: TIBQuery;
    TVermeBilgiSQL: TIBUpdateSQL;
    TVermeBilgiDS: TDataSource;
    TVermeBilgiIBQBILGIKOD: TIntegerField;
    TVermeBilgiIBQISLEMKOD: TIntegerField;
    TVermeBilgiIBQALTBILGI: TMemoField;
    TVermeBilgiIBQUSTBILGI: TMemoField;
    TVermeBilgiIBQALTISKONTO: TFloatField;
    TVermeBilgiIBQISLEMTURKOD: TIntegerField;
    TeklifVermeIBQISLEMKOD: TIntegerField;
    TeklifVermeIBQISLEMTUR: TIBStringField;
    TeklifVermeIBQISLEMTURKOD: TIntegerField;
    TeklifVermeIBQCARIKOD: TIntegerField;
    TeklifVermeIBQCARINO: TIntegerField;
    TeklifVermeIBQTEKLIFISLEMNO: TIntegerField;
    TeklifVermeIBQTARIH: TDateField;
    TeklifVermeIBQSAAT: TTimeField;
    TeklifVermeIBQACIKLAMA: TIBStringField;
    TeklifVermeIBQALISTUTAR: TFloatField;
    TeklifVermeIBQSATISTUTAR: TFloatField;
    TeklifVermeIBQALISMATRAH: TFloatField;
    TeklifVermeIBQALISKDVTUTAR: TFloatField;
    TeklifVermeIBQSATISMATRAH: TFloatField;
    TeklifVermeIBQSATISKDVTUTAR: TFloatField;
    TeklifVermeIBQCARIKURU: TFloatField;
    TeklifVermeIBQISLEMKURU: TFloatField;
    TeklifVermeIBQKAPATMA: TIntegerField;
    TeklifVermeIBQVADE: TDateField;
    TeklifVermeIBQGELGITKOD: TIBStringField;
    TeklifVermeIBQEVRAKNO: TIntegerField;
    TeklifVermeIBQBELGENO: TIntegerField;
    TeklifVermeIBQBAGLANTINO: TIntegerField;
    TeklifVermeIBQPARABIRIMKOD: TIntegerField;
    TeklifVermeIBQMAKBUZNO: TIntegerField;
    TeklifVermeIBQBILGIKOD: TIntegerField;
    TeklifVermeIBQKULLANKOD: TIntegerField;
    TeklifVermeIBQPERSONELKOD: TIntegerField;
    TeklifVermeIBQCARIPARABIRIMKOD: TIntegerField;
    TeklifVermeIBQC_CARIPARABIRIM: TIBStringField;
    TeklifVermeIBQC_PARABIRIMI: TIBStringField;
    TeklifVermeIBQC_CARIADI: TIBStringField;
    TeklifVermeIBQC_KULLANICIADI: TIBStringField;
    TeklifVermeIBQC_PERSONEL: TIBStringField;
    TeklifVermeIBQKDVSECIM: TIBStringField;
    TeklifVermeIBQD_ALISTUTAR: TFloatField;
    TeklifVermeIBQD_ALISKDVTUTAR: TFloatField;
    TeklifVermeIBQD_ALISMATRAH: TFloatField;
    TeklifVermeIBQC_GGMERKEZI: TIBStringField;
    TeklifVermeIBQC_FIYATSEC: TIntegerField;
    TeklifVermeIBQD_SATISTUTAR: TFloatField;
    TeklifVermeIBQD_SATISKDVTUTAR: TFloatField;
    TeklifVermeIBQD_SATISMATRAH: TFloatField;
    TeklifVermeIBQEVRAKTARIH: TDateField;
    TeklifVermeIBQSISTEM: TIntegerField;
    TekliflerIBQISLEMKOD: TIntegerField;
    TekliflerIBQISLEMTUR: TIBStringField;
    TekliflerIBQISLEMTURKOD: TIntegerField;
    TekliflerIBQCARIKOD: TIntegerField;
    TekliflerIBQCARINO: TIntegerField;
    TekliflerIBQTEKLIFISLEMNO: TIntegerField;
    TekliflerIBQTARIH: TDateField;
    TekliflerIBQSAAT: TTimeField;
    TekliflerIBQACIKLAMA: TIBStringField;
    TekliflerIBQALISTUTAR: TFloatField;
    TekliflerIBQSATISTUTAR: TFloatField;
    TekliflerIBQALISMATRAH: TFloatField;
    TekliflerIBQALISKDVTUTAR: TFloatField;
    TekliflerIBQSATISMATRAH: TFloatField;
    TekliflerIBQSATISKDVTUTAR: TFloatField;
    TekliflerIBQCARIKURU: TFloatField;
    TekliflerIBQISLEMKURU: TFloatField;
    TekliflerIBQKAPATMA: TIntegerField;
    TekliflerIBQVADE: TDateField;
    TekliflerIBQGELGITKOD: TIBStringField;
    TekliflerIBQEVRAKNO: TIntegerField;
    TekliflerIBQBELGENO: TIntegerField;
    TekliflerIBQBAGLANTINO: TIntegerField;
    TekliflerIBQPARABIRIMKOD: TIntegerField;
    TekliflerIBQMAKBUZNO: TIntegerField;
    TekliflerIBQBILGIKOD: TIntegerField;
    TekliflerIBQKULLANKOD: TIntegerField;
    TekliflerIBQPERSONELKOD: TIntegerField;
    TekliflerIBQCARIPARABIRIMKOD: TIntegerField;
    TekliflerIBQC_CARIPARABIRIM: TIBStringField;
    TekliflerIBQC_PARABIRIMI: TIBStringField;
    TekliflerIBQC_CARIADI: TIBStringField;
    TekliflerIBQC_KULLANICIADI: TIBStringField;
    TekliflerIBQC_PERSONEL: TIBStringField;
    TekliflerIBQKDVSECIM: TIBStringField;
    TekliflerIBQD_ALISTUTAR: TFloatField;
    TekliflerIBQD_ALISKDVTUTAR: TFloatField;
    TekliflerIBQD_ALISMATRAH: TFloatField;
    TekliflerIBQC_GGMERKEZI: TIBStringField;
    TekliflerIBQC_FIYATSEC: TIntegerField;
    TekliflerIBQD_SATISTUTAR: TFloatField;
    TekliflerIBQD_SATISKDVTUTAR: TFloatField;
    TekliflerIBQD_SATISMATRAH: TFloatField;
    TekliflerIBQEVRAKTARIH: TDateField;
    TekliflerIBQSISTEM: TIntegerField;
    TeklifAlmaIBQ: TIBQuery;
    TeklifAlmaSQL: TIBUpdateSQL;
    TeklifAlmaDS: TDataSource;
    TeklifAlmaBodroIBQ: TIBQuery;
    TeklifAlmaBodroSQL: TIBUpdateSQL;
    TeklifAlmaBodroDS: TDataSource;
    TAlmaBilgiIBQ: TIBQuery;
    TAlmaBilgiSQL: TIBUpdateSQL;
    TAlmaBilgiDS: TDataSource;
    TAlmaBilgiIBQBILGIKOD: TIntegerField;
    TAlmaBilgiIBQISLEMKOD: TIntegerField;
    TAlmaBilgiIBQALTBILGI: TMemoField;
    TAlmaBilgiIBQUSTBILGI: TMemoField;
    TAlmaBilgiIBQALTISKONTO: TFloatField;
    TAlmaBilgiIBQISLEMTURKOD: TIntegerField;
    TeklifAlmaIBQISLEMKOD: TIntegerField;
    TeklifAlmaIBQISLEMTUR: TIBStringField;
    TeklifAlmaIBQISLEMTURKOD: TIntegerField;
    TeklifAlmaIBQCARIKOD: TIntegerField;
    TeklifAlmaIBQCARINO: TIntegerField;
    TeklifAlmaIBQTEKLIFISLEMNO: TIntegerField;
    TeklifAlmaIBQTARIH: TDateField;
    TeklifAlmaIBQSAAT: TTimeField;
    TeklifAlmaIBQACIKLAMA: TIBStringField;
    TeklifAlmaIBQALISTUTAR: TFloatField;
    TeklifAlmaIBQSATISTUTAR: TFloatField;
    TeklifAlmaIBQALISMATRAH: TFloatField;
    TeklifAlmaIBQALISKDVTUTAR: TFloatField;
    TeklifAlmaIBQSATISMATRAH: TFloatField;
    TeklifAlmaIBQSATISKDVTUTAR: TFloatField;
    TeklifAlmaIBQCARIKURU: TFloatField;
    TeklifAlmaIBQISLEMKURU: TFloatField;
    TeklifAlmaIBQKAPATMA: TIntegerField;
    TeklifAlmaIBQVADE: TDateField;
    TeklifAlmaIBQGELGITKOD: TIBStringField;
    TeklifAlmaIBQEVRAKNO: TIntegerField;
    TeklifAlmaIBQBELGENO: TIntegerField;
    TeklifAlmaIBQBAGLANTINO: TIntegerField;
    TeklifAlmaIBQPARABIRIMKOD: TIntegerField;
    TeklifAlmaIBQMAKBUZNO: TIntegerField;
    TeklifAlmaIBQBILGIKOD: TIntegerField;
    TeklifAlmaIBQKULLANKOD: TIntegerField;
    TeklifAlmaIBQPERSONELKOD: TIntegerField;
    TeklifAlmaIBQCARIPARABIRIMKOD: TIntegerField;
    TeklifAlmaIBQC_CARIPARABIRIM: TIBStringField;
    TeklifAlmaIBQC_PARABIRIMI: TIBStringField;
    TeklifAlmaIBQC_CARIADI: TIBStringField;
    TeklifAlmaIBQC_KULLANICIADI: TIBStringField;
    TeklifAlmaIBQC_PERSONEL: TIBStringField;
    TeklifAlmaIBQKDVSECIM: TIBStringField;
    TeklifAlmaIBQD_ALISTUTAR: TFloatField;
    TeklifAlmaIBQD_ALISKDVTUTAR: TFloatField;
    TeklifAlmaIBQD_ALISMATRAH: TFloatField;
    TeklifAlmaIBQC_GGMERKEZI: TIBStringField;
    TeklifAlmaIBQC_FIYATSEC: TIntegerField;
    TeklifAlmaIBQD_SATISTUTAR: TFloatField;
    TeklifAlmaIBQD_SATISKDVTUTAR: TFloatField;
    TeklifAlmaIBQD_SATISMATRAH: TFloatField;
    TeklifAlmaIBQEVRAKTARIH: TDateField;
    TeklifAlmaIBQSISTEM: TIntegerField;
    TeklifAlmaBodroIBQBODROKOD: TIntegerField;
    TeklifAlmaBodroIBQSIRANO: TIntegerField;
    TeklifAlmaBodroIBQISLEMTUR: TIBStringField;
    TeklifAlmaBodroIBQC_ISLEMTURKOD: TIntegerField;
    TeklifAlmaBodroIBQCARIKOD: TIntegerField;
    TeklifAlmaBodroIBQPARABIRIMKOD: TIntegerField;
    TeklifAlmaBodroIBQTARIH: TDateField;
    TeklifAlmaBodroIBQSTOKKOD: TIntegerField;
    TeklifAlmaBodroIBQSTOKNO: TIntegerField;
    TeklifAlmaBodroIBQBARKOD: TIBStringField;
    TeklifAlmaBodroIBQSTOKADI: TIBStringField;
    TeklifAlmaBodroIBQMIKTAR: TFloatField;
    TeklifAlmaBodroIBQMIKTARCARPAN: TIntegerField;
    TeklifAlmaBodroIBQGIRISMIKTAR: TFloatField;
    TeklifAlmaBodroIBQCIKISMIKTAR: TFloatField;
    TeklifAlmaBodroIBQBIRIM: TIBStringField;
    TeklifAlmaBodroIBQBIRIMFIYAT: TFloatField;
    TeklifAlmaBodroIBQALISFIYAT: TFloatField;
    TeklifAlmaBodroIBQSATISTUTAR: TFloatField;
    TeklifAlmaBodroIBQSATISFIYAT: TFloatField;
    TeklifAlmaBodroIBQALISTUTAR: TFloatField;
    TeklifAlmaBodroIBQALISMATRAHI: TFloatField;
    TeklifAlmaBodroIBQSATISMATRAHI: TFloatField;
    TeklifAlmaBodroIBQISKONTO1: TFloatField;
    TeklifAlmaBodroIBQISKONTO2: TFloatField;
    TeklifAlmaBodroIBQISKONTO3: TFloatField;
    TeklifAlmaBodroIBQISKONTO4: TFloatField;
    TeklifAlmaBodroIBQKDVORANI: TFloatField;
    TeklifAlmaBodroIBQBAKIYE: TFloatField;
    TeklifAlmaBodroIBQDURUM: TIntegerField;
    TeklifAlmaBodroIBQACIKLAMA: TIBStringField;
    TeklifAlmaBodroIBQKAPATMA: TIntegerField;
    TeklifAlmaBodroIBQVADE: TDateField;
    TeklifAlmaBodroIBQISLEMKURU: TFloatField;
    TeklifAlmaBodroIBQGELGITKOD: TIBStringField;
    TeklifAlmaBodroIBQPERSONELKOD: TIntegerField;
    TeklifAlmaBodroIBQKULLANKOD: TIntegerField;
    TeklifAlmaBodroIBQEVRAKDURUMU: TIntegerField;
    TeklifAlmaBodroIBQSERINO: TIBStringField;
    TeklifAlmaBodroIBQC_CARIADI: TIBStringField;
    TeklifAlmaBodroIBQC_KULLANICIADI: TIBStringField;
    TeklifAlmaBodroIBQC_PARABIRIMI: TIBStringField;
    TeklifAlmaBodroIBQC_REELALIS: TFloatField;
    TeklifAlmaBodroIBQC_REELSATIS: TFloatField;
    TeklifAlmaBodroIBQISLEMKOD: TIntegerField;
    TeklifAlmaBodroIBQKDVSECIM: TIBStringField;
    TeklifAlmaBodroIBQC_TLALISTUTARI: TFloatField;
    TeklifAlmaBodroIBQC_TLALISMATRAHI: TFloatField;
    TeklifAlmaBodroIBQC_TLSATISTUTARI: TFloatField;
    TeklifAlmaBodroIBQC_TLSATISMATRAHI: TFloatField;
    TeklifAlmaBodroIBQC_TLBIRIMFIYAT: TFloatField;
    TeklifAlmaBodroIBQC_GGMERKEZI: TIBStringField;
    TeklifAlmaBodroIBQC_ALISKDVTUTAR: TFloatField;
    TeklifAlmaBodroIBQC_SATISKDVTUTAR: TFloatField;
    TeklifAlmaBodroIBQC_TLALISKDVTUTAR: TFloatField;
    TeklifAlmaBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    TeklifAlmaBodroIBQSISTEM: TIntegerField;
    TeklifAlmaBodroIBQMALIYETFIYATI: TFloatField;
    TeklifAlmaBodroIBQC_MALIYETTUTARI: TFloatField;
    TeklifAlmaBodroIBQC_KARZARAR: TFloatField;
    TekliflerIBQEVRAKDURUM: TIntegerField;
    TeklifVermeIBQEVRAKDURUM: TIntegerField;
    TeklifAlmaIBQEVRAKDURUM: TIntegerField;
    procedure TekliflerIBQAfterDelete(DataSet: TDataSet);
    procedure TekliflerIBQAfterPost(DataSet: TDataSet);
    procedure TekliflerIBQAfterEdit(DataSet: TDataSet);
    procedure TeklifVermeIBQNewRecord(DataSet: TDataSet);
    procedure TeklifVermeIBQAfterPost(DataSet: TDataSet);
    procedure TeklifVermeIBQAfterEdit(DataSet: TDataSet);
    procedure TeklifVermeBodroIBQNewRecord(DataSet: TDataSet);
    procedure TeklifVermeBodroIBQAfterDelete(DataSet: TDataSet);
    procedure TeklifVermeBodroIBQAfterPost(DataSet: TDataSet);
    procedure TeklifVermeBodroIBQAfterEdit(DataSet: TDataSet);
    procedure TVermeBilgiIBQAfterPost(DataSet: TDataSet);
    procedure TVermeBilgiIBQAfterDelete(DataSet: TDataSet);
    procedure TVermeBilgiIBQNewRecord(DataSet: TDataSet);
    procedure TeklifAlmaIBQAfterDelete(DataSet: TDataSet);
    procedure TeklifAlmaIBQAfterPost(DataSet: TDataSet);
    procedure TeklifAlmaIBQNewRecord(DataSet: TDataSet);
    procedure TeklifAlmaIBQAfterEdit(DataSet: TDataSet);
    procedure TeklifAlmaBodroIBQAfterDelete(DataSet: TDataSet);
    procedure TeklifAlmaBodroIBQAfterPost(DataSet: TDataSet);
    procedure TeklifAlmaBodroIBQNewRecord(DataSet: TDataSet);
    procedure TeklifAlmaBodroIBQAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTeklif: TDMTeklif;
  BarkodluAlis,BarkodluSatis,
  BarkodluAlisiade: boolean;
implementation

Uses DataDM, SabitDM;
{$R *.dfm}

procedure TDMTeklif.TekliflerIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TekliflerIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TekliflerIBQAfterEdit(DataSet: TDataSet);
begin
        TekliflerIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMTeklif.TeklifVermeIBQNewRecord(DataSet: TDataSet);
begin
        TeklifVermeIBQISLEMTUR.AsString  := 'Teklif Verme';
        TeklifVermeIBQTARIH.AsDateTime := BugununTarihi;
        TeklifVermeIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        TeklifVermeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        TeklifVermeIBQKDVSECIM.AsString := 'Hariç';
        TeklifVermeIBQEVRAKDURUM.AsInteger := 1;
end;

procedure TDMTeklif.TeklifVermeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TeklifVermeIBQAfterEdit(DataSet: TDataSet);
begin
        TeklifVermeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMTeklif.TeklifVermeBodroIBQNewRecord(DataSet: TDataSet);
begin
        TeklifVermeBodroIBQISLEMKOD.AsInteger := TeklifVermeIBQISLEMKOD.AsInteger;
        TeklifVermeBodroIBQISLEMTUR.AsString := 'Teklif Verme';
        TeklifVermeBodroIBQKDVSECIM.AsString := TeklifVermeIBQKDVSECIM.AsString;
        TeklifVermeBodroIBQTARIH.AsDateTime := TeklifVermeIBQTARIH.AsDateTime;
        TeklifVermeBodroIBQVADE.AsDateTime := TeklifVermeIBQTARIH.AsDateTime;
        TeklifVermeBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMTeklif.TeklifVermeBodroIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TeklifVermeBodroIBQAfterPost(DataSet: TDataSet);
Var
        Yer : Pointer;
begin
        Yer := TeklifVermeBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        TeklifVermeIBQ.Refresh;
        TeklifVermeBodroIBQ.GotoBookmark(Yer);
end;

procedure TDMTeklif.TeklifVermeBodroIBQAfterEdit(DataSet: TDataSet);
begin
        TeklifVermeBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMTeklif.TVermeBilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TVermeBilgiIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TVermeBilgiIBQNewRecord(DataSet: TDataSet);
begin
        TVermeBilgiIBQISLEMKOD.AsInteger := TeklifVermeIBQISLEMKOD.AsInteger;
        TVermeBilgiIBQISLEMTURKOD.AsInteger := TeklifVermeIBQISLEMTURKOD.AsInteger;
end;

procedure TDMTeklif.TeklifAlmaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TeklifAlmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TeklifAlmaIBQNewRecord(DataSet: TDataSet);
begin
        TeklifAlmaIBQISLEMTUR.AsString  := 'Teklif Alma';
        TeklifAlmaIBQTARIH.AsDateTime := BugununTarihi;
        TeklifAlmaIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        TeklifAlmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        TeklifAlmaIBQKDVSECIM.AsString := 'Hariç';
        TeklifAlmaIBQEVRAKDURUM.AsInteger := 1;
end;

procedure TDMTeklif.TeklifAlmaIBQAfterEdit(DataSet: TDataSet);
begin
        TeklifAlmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMTeklif.TeklifAlmaBodroIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMTeklif.TeklifAlmaBodroIBQAfterPost(DataSet: TDataSet);
Var
        Yer : Pointer;
begin
        Yer := TeklifAlmaBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        TeklifAlmaIBQ.Refresh;
        TeklifAlmaBodroIBQ.GotoBookmark(Yer);
end;
procedure TDMTeklif.TeklifAlmaBodroIBQNewRecord(DataSet: TDataSet);
begin
        TeklifAlmaBodroIBQISLEMKOD.AsInteger := TeklifAlmaIBQISLEMKOD.AsInteger;
        TeklifAlmaBodroIBQISLEMTUR.AsString := 'Teklif Alma';
        TeklifAlmaBodroIBQKDVSECIM.AsString := TeklifAlmaIBQKDVSECIM.AsString;
        TeklifAlmaBodroIBQTARIH.AsDateTime := TeklifAlmaIBQTARIH.AsDateTime;
        TeklifAlmaBodroIBQVADE.AsDateTime := TeklifAlmaIBQTARIH.AsDateTime;
        TeklifAlmaBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;

end;

procedure TDMTeklif.TeklifAlmaBodroIBQAfterEdit(DataSet: TDataSet);
begin
        TeklifAlmaBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

end.
