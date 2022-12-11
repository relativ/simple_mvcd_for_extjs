unit irsaliyeDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMirsaliye = class(TDataModule)
    GirisIrsaliyesiIBQ: TIBQuery;
    GirisIrsaliyesiUSQL: TIBUpdateSQL;
    GirisIrsaliyesiDS: TDataSource;
    GirisBodroIBQ: TIBQuery;
    GirisBodroSQL: TIBUpdateSQL;
    GirisBodroDS: TDataSource;
    GirisBodroIBQBODROKOD: TIntegerField;
    GirisBodroIBQISLEMKOD: TIntegerField;
    GirisBodroIBQSIRANO: TIntegerField;
    GirisBodroIBQISLEMTUR: TIBStringField;
    GirisBodroIBQC_ISLEMTURKOD: TIntegerField;
    GirisBodroIBQCARIKOD: TIntegerField;
    GirisBodroIBQPARABIRIMKOD: TIntegerField;
    GirisBodroIBQTARIH: TDateField;
    GirisBodroIBQSTOKKOD: TIntegerField;
    GirisBodroIBQSTOKNO: TIntegerField;
    GirisBodroIBQBARKOD: TIBStringField;
    GirisBodroIBQSTOKADI: TIBStringField;
    GirisBodroIBQMIKTAR: TFloatField;
    GirisBodroIBQMIKTARCARPAN: TIntegerField;
    GirisBodroIBQGIRISMIKTAR: TFloatField;
    GirisBodroIBQCIKISMIKTAR: TFloatField;
    GirisBodroIBQBIRIM: TIBStringField;
    GirisBodroIBQBIRIMFIYAT: TFloatField;
    GirisBodroIBQGIRISFIYAT: TFloatField;
    GirisBodroIBQCIKISFIYAT: TFloatField;
    GirisBodroIBQCIKISTUTAR: TFloatField;
    GirisBodroIBQGIRISTUTAR: TFloatField;
    GirisBodroIBQGIRISMATRAHI: TFloatField;
    GirisBodroIBQCIKISMATRAHI: TFloatField;
    GirisBodroIBQISKONTO1: TFloatField;
    GirisBodroIBQISKONTO2: TFloatField;
    GirisBodroIBQISKONTO3: TFloatField;
    GirisBodroIBQISKONTO4: TFloatField;
    GirisBodroIBQKDVORANI: TFloatField;
    GirisBodroIBQBAKIYE: TFloatField;
    GirisBodroIBQDURUM: TIntegerField;
    GirisBodroIBQACIKLAMA: TIBStringField;
    GirisBodroIBQKAPATMA: TIntegerField;
    GirisBodroIBQVADE: TDateField;
    GirisBodroIBQFATURANO: TIntegerField;
    GirisBodroIBQSTOKYERIKOD: TIntegerField;
    GirisBodroIBQISLEMKURU: TFloatField;
    GirisBodroIBQGELGITKOD: TIBStringField;
    GirisBodroIBQPERSONELKOD: TIntegerField;
    GirisBodroIBQKULLANKOD: TIntegerField;
    GirisBodroIBQSISTEM: TIntegerField;
    GirisBodroIBQEVRAKDURUMU: TIntegerField;
    GirisBodroIBQSERINO: TIBStringField;
    GirisBodroIBQCARIHESAPILISKI: TIntegerField;
    GirisBodroIBQC_CARIADI: TIBStringField;
    GirisBodroIBQC_STOKYERI: TIBStringField;
    GirisBodroIBQC_KULLANICIADI: TIBStringField;
    GirisBodroIBQC_PARABIRIMI: TIBStringField;
    GirisBodroIBQC_REELGIRIS: TFloatField;
    GirisBodroIBQC_REELCIKIS: TFloatField;
    GirisBodroIBQKDVSECIM: TIBStringField;
    GirisBodroIBQC_TLGIRISTUTARI: TFloatField;
    GirisBodroIBQC_TLGIRISMATRAHI: TFloatField;
    GirisBodroIBQC_TLCIKISTUTARI: TFloatField;
    GirisBodroIBQC_TLCIKISMATRAHI: TFloatField;
    GirisBodroIBQC_TLBIRIMFIYAT: TFloatField;
    GirisBodroIBQC_GGMERKEZI: TIBStringField;
    GirisBodroIBQC_GIRISKDVTUTAR: TFloatField;
    GirisBodroIBQC_CIKISKDVTUTAR: TFloatField;
    GirisBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    GirisBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    GAltUstBilgiIBQ: TIBQuery;
    GAltUstBilgiUSQL: TIBUpdateSQL;
    GAltUstBilgiDS: TDataSource;
    GAltUstBilgiIBQBILGIKOD: TIntegerField;
    GAltUstBilgiIBQISLEMKOD: TIntegerField;
    GAltUstBilgiIBQALTBILGI: TMemoField;
    GAltUstBilgiIBQUSTBILGI: TMemoField;
    GAltUstBilgiIBQALTISKONTO: TFloatField;
    GAltUstBilgiIBQISLEMTURKOD: TIntegerField;
    GirisIrsaliyesiIBQISLEMKOD: TIntegerField;
    GirisIrsaliyesiIBQISLEMTUR: TIBStringField;
    GirisIrsaliyesiIBQISLEMTURKOD: TIntegerField;
    GirisIrsaliyesiIBQCARIKOD: TIntegerField;
    GirisIrsaliyesiIBQCARINO: TIntegerField;
    GirisIrsaliyesiIBQIRALIYEISLEMNO: TIntegerField;
    GirisIrsaliyesiIBQTARIH: TDateField;
    GirisIrsaliyesiIBQIRSALIYETARIH: TDateField;
    GirisIrsaliyesiIBQSAAT: TTimeField;
    GirisIrsaliyesiIBQACIKLAMA: TIBStringField;
    GirisIrsaliyesiIBQGIRISTUTAR: TFloatField;
    GirisIrsaliyesiIBQCIKISTUTAR: TFloatField;
    GirisIrsaliyesiIBQGIRISMATRAH: TFloatField;
    GirisIrsaliyesiIBQGIRISKDVTUTAR: TFloatField;
    GirisIrsaliyesiIBQCIKISMATRAH: TFloatField;
    GirisIrsaliyesiIBQCIKISKDVTUTAR: TFloatField;
    GirisIrsaliyesiIBQCARIKURU: TFloatField;
    GirisIrsaliyesiIBQISLEMKURU: TFloatField;
    GirisIrsaliyesiIBQKAPATMA: TIntegerField;
    GirisIrsaliyesiIBQVADE: TDateField;
    GirisIrsaliyesiIBQGELGITKOD: TIBStringField;
    GirisIrsaliyesiIBQEVRAKNO: TIntegerField;
    GirisIrsaliyesiIBQBELGENO: TIntegerField;
    GirisIrsaliyesiIBQBAGLANTINO: TIntegerField;
    GirisIrsaliyesiIBQCARIHESAPILISKI: TIntegerField;
    GirisIrsaliyesiIBQPARABIRIMKOD: TIntegerField;
    GirisIrsaliyesiIBQSTOKYERIKOD: TIntegerField;
    GirisIrsaliyesiIBQMAKBUZNO: TIntegerField;
    GirisIrsaliyesiIBQBILGIKOD: TIntegerField;
    GirisIrsaliyesiIBQKULLANKOD: TIntegerField;
    GirisIrsaliyesiIBQPERSONELKOD: TIntegerField;
    GirisIrsaliyesiIBQCARIPARABIRIMKOD: TIntegerField;
    GirisIrsaliyesiIBQC_CARIPARABIRIM: TIBStringField;
    GirisIrsaliyesiIBQC_PARABIRIMI: TIBStringField;
    GirisIrsaliyesiIBQC_CARIADI: TIBStringField;
    GirisIrsaliyesiIBQC_STOKYERI: TIBStringField;
    GirisIrsaliyesiIBQC_KULLANICIADI: TIBStringField;
    GirisIrsaliyesiIBQC_PERSONEL: TIBStringField;
    GirisIrsaliyesiIBQFATURATARIH: TDateField;
    GirisIrsaliyesiIBQKDVSECIM: TIBStringField;
    GirisIrsaliyesiIBQC_GGMERKEZI: TIBStringField;
    GirisIrsaliyesiIBQIRSALIYENO: TIntegerField;
    GirisIrsaliyesiIBQEVRAKTARIH: TDateField;
    GirisIrsaliyesiIBQD_GIRISTUTAR: TFloatField;
    GirisIrsaliyesiIBQD_GIRISKDVTUTAR: TFloatField;
    GirisIrsaliyesiIBQD_GIRISMATRAH: TFloatField;
    GirisIrsaliyesiIBQD_CIKISTUTAR: TFloatField;
    GirisIrsaliyesiIBQD_CIKISKDVTUTAR: TFloatField;
    GirisIrsaliyesiIBQD_CIKISMATRAH: TFloatField;
    GirisIrsaliyesiIBQSISTEM: TIntegerField;
    CikisirsaliyesiIBQ: TIBQuery;
    CikisirsaliyesiSQL: TIBUpdateSQL;
    CikisirsaliyesiDS: TDataSource;
    CikisBodroIBQ: TIBQuery;
    CikisBodroSQL: TIBUpdateSQL;
    CikisBodroDS: TDataSource;
    CAltUstBilgiIBQ: TIBQuery;
    CAltUstBilgiSQL: TIBUpdateSQL;
    CAltUstBilgiDS: TDataSource;
    CikisirsaliyesiIBQISLEMKOD: TIntegerField;
    CikisirsaliyesiIBQISLEMTUR: TIBStringField;
    CikisirsaliyesiIBQISLEMTURKOD: TIntegerField;
    CikisirsaliyesiIBQCARIKOD: TIntegerField;
    CikisirsaliyesiIBQCARINO: TIntegerField;
    CikisirsaliyesiIBQIRALIYEISLEMNO: TIntegerField;
    CikisirsaliyesiIBQTARIH: TDateField;
    CikisirsaliyesiIBQIRSALIYETARIH: TDateField;
    CikisirsaliyesiIBQSAAT: TTimeField;
    CikisirsaliyesiIBQACIKLAMA: TIBStringField;
    CikisirsaliyesiIBQGIRISTUTAR: TFloatField;
    CikisirsaliyesiIBQCIKISTUTAR: TFloatField;
    CikisirsaliyesiIBQGIRISMATRAH: TFloatField;
    CikisirsaliyesiIBQGIRISKDVTUTAR: TFloatField;
    CikisirsaliyesiIBQCIKISMATRAH: TFloatField;
    CikisirsaliyesiIBQCIKISKDVTUTAR: TFloatField;
    CikisirsaliyesiIBQCARIKURU: TFloatField;
    CikisirsaliyesiIBQISLEMKURU: TFloatField;
    CikisirsaliyesiIBQKAPATMA: TIntegerField;
    CikisirsaliyesiIBQVADE: TDateField;
    CikisirsaliyesiIBQGELGITKOD: TIBStringField;
    CikisirsaliyesiIBQEVRAKNO: TIntegerField;
    CikisirsaliyesiIBQBELGENO: TIntegerField;
    CikisirsaliyesiIBQBAGLANTINO: TIntegerField;
    CikisirsaliyesiIBQCARIHESAPILISKI: TIntegerField;
    CikisirsaliyesiIBQPARABIRIMKOD: TIntegerField;
    CikisirsaliyesiIBQSTOKYERIKOD: TIntegerField;
    CikisirsaliyesiIBQMAKBUZNO: TIntegerField;
    CikisirsaliyesiIBQBILGIKOD: TIntegerField;
    CikisirsaliyesiIBQKULLANKOD: TIntegerField;
    CikisirsaliyesiIBQPERSONELKOD: TIntegerField;
    CikisirsaliyesiIBQCARIPARABIRIMKOD: TIntegerField;
    CikisirsaliyesiIBQC_CARIPARABIRIM: TIBStringField;
    CikisirsaliyesiIBQC_PARABIRIMI: TIBStringField;
    CikisirsaliyesiIBQC_CARIADI: TIBStringField;
    CikisirsaliyesiIBQC_STOKYERI: TIBStringField;
    CikisirsaliyesiIBQC_KULLANICIADI: TIBStringField;
    CikisirsaliyesiIBQC_PERSONEL: TIBStringField;
    CikisirsaliyesiIBQFATURATARIH: TDateField;
    CikisirsaliyesiIBQKDVSECIM: TIBStringField;
    CikisirsaliyesiIBQC_GGMERKEZI: TIBStringField;
    CikisirsaliyesiIBQIRSALIYENO: TIntegerField;
    CikisirsaliyesiIBQEVRAKTARIH: TDateField;
    CikisirsaliyesiIBQD_GIRISTUTAR: TFloatField;
    CikisirsaliyesiIBQD_GIRISKDVTUTAR: TFloatField;
    CikisirsaliyesiIBQD_GIRISMATRAH: TFloatField;
    CikisirsaliyesiIBQD_CIKISTUTAR: TFloatField;
    CikisirsaliyesiIBQD_CIKISKDVTUTAR: TFloatField;
    CikisirsaliyesiIBQD_CIKISMATRAH: TFloatField;
    CikisirsaliyesiIBQSISTEM: TIntegerField;
    CikisBodroIBQBODROKOD: TIntegerField;
    CikisBodroIBQISLEMKOD: TIntegerField;
    CikisBodroIBQSIRANO: TIntegerField;
    CikisBodroIBQISLEMTUR: TIBStringField;
    CikisBodroIBQC_ISLEMTURKOD: TIntegerField;
    CikisBodroIBQCARIKOD: TIntegerField;
    CikisBodroIBQPARABIRIMKOD: TIntegerField;
    CikisBodroIBQTARIH: TDateField;
    CikisBodroIBQSTOKKOD: TIntegerField;
    CikisBodroIBQSTOKNO: TIntegerField;
    CikisBodroIBQBARKOD: TIBStringField;
    CikisBodroIBQSTOKADI: TIBStringField;
    CikisBodroIBQMIKTAR: TFloatField;
    CikisBodroIBQMIKTARCARPAN: TIntegerField;
    CikisBodroIBQGIRISMIKTAR: TFloatField;
    CikisBodroIBQCIKISMIKTAR: TFloatField;
    CikisBodroIBQBIRIM: TIBStringField;
    CikisBodroIBQBIRIMFIYAT: TFloatField;
    CikisBodroIBQGIRISFIYAT: TFloatField;
    CikisBodroIBQCIKISFIYAT: TFloatField;
    CikisBodroIBQCIKISTUTAR: TFloatField;
    CikisBodroIBQGIRISTUTAR: TFloatField;
    CikisBodroIBQGIRISMATRAHI: TFloatField;
    CikisBodroIBQCIKISMATRAHI: TFloatField;
    CikisBodroIBQISKONTO1: TFloatField;
    CikisBodroIBQISKONTO2: TFloatField;
    CikisBodroIBQISKONTO3: TFloatField;
    CikisBodroIBQISKONTO4: TFloatField;
    CikisBodroIBQKDVORANI: TFloatField;
    CikisBodroIBQBAKIYE: TFloatField;
    CikisBodroIBQDURUM: TIntegerField;
    CikisBodroIBQACIKLAMA: TIBStringField;
    CikisBodroIBQKAPATMA: TIntegerField;
    CikisBodroIBQVADE: TDateField;
    CikisBodroIBQFATURANO: TIntegerField;
    CikisBodroIBQSTOKYERIKOD: TIntegerField;
    CikisBodroIBQISLEMKURU: TFloatField;
    CikisBodroIBQGELGITKOD: TIBStringField;
    CikisBodroIBQPERSONELKOD: TIntegerField;
    CikisBodroIBQKULLANKOD: TIntegerField;
    CikisBodroIBQSISTEM: TIntegerField;
    CikisBodroIBQEVRAKDURUMU: TIntegerField;
    CikisBodroIBQSERINO: TIBStringField;
    CikisBodroIBQCARIHESAPILISKI: TIntegerField;
    CikisBodroIBQC_CARIADI: TIBStringField;
    CikisBodroIBQC_STOKYERI: TIBStringField;
    CikisBodroIBQC_KULLANICIADI: TIBStringField;
    CikisBodroIBQC_PARABIRIMI: TIBStringField;
    CikisBodroIBQC_REELGIRIS: TFloatField;
    CikisBodroIBQC_REELCIKIS: TFloatField;
    CikisBodroIBQKDVSECIM: TIBStringField;
    CikisBodroIBQC_TLGIRISTUTARI: TFloatField;
    CikisBodroIBQC_TLGIRISMATRAHI: TFloatField;
    CikisBodroIBQC_TLCIKISTUTARI: TFloatField;
    CikisBodroIBQC_TLCIKISMATRAHI: TFloatField;
    CikisBodroIBQC_TLBIRIMFIYAT: TFloatField;
    CikisBodroIBQC_GGMERKEZI: TIBStringField;
    CikisBodroIBQC_GIRISKDVTUTAR: TFloatField;
    CikisBodroIBQC_CIKISKDVTUTAR: TFloatField;
    CikisBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    CikisBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    CAltUstBilgiIBQBILGIKOD: TIntegerField;
    CAltUstBilgiIBQISLEMKOD: TIntegerField;
    CAltUstBilgiIBQALTBILGI: TMemoField;
    CAltUstBilgiIBQUSTBILGI: TMemoField;
    CAltUstBilgiIBQALTISKONTO: TFloatField;
    CAltUstBilgiIBQISLEMTURKOD: TIntegerField;
    procedure GirisIrsaliyesiIBQAfterPost(DataSet: TDataSet);
    procedure GirisIrsaliyesiIBQNewRecord(DataSet: TDataSet);
    procedure GirisBodroIBQNewRecord(DataSet: TDataSet);
    procedure GirisBodroIBQAfterPost(DataSet: TDataSet);
    procedure GAltUstBilgiIBQAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMirsaliye: TDMirsaliye;
  BarkodluGiris,BarkodluCikis,
  BarkodluAlisiade: boolean;
implementation

Uses DataDM, SabitDM;
{$R *.dfm}

procedure TDMirsaliye.GirisIrsaliyesiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMirsaliye.GirisIrsaliyesiIBQNewRecord(DataSet: TDataSet);
begin
        GirisIrsaliyesiIBQISLEMTUR.AsString  := 'Giriþ Ýrsaliyesi';
        GirisIrsaliyesiIBQTARIH.AsDateTime := BugununTarihi;
        GirisIrsaliyesiIBQIRSALIYETARIH.AsDateTime := BugununTarihi;
        GirisIrsaliyesiIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        GirisIrsaliyesiIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        GirisIrsaliyesiIBQKDVSECIM.AsString := 'Hariç';
        GirisIrsaliyesiIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;

end;

procedure TDMirsaliye.GirisBodroIBQNewRecord(DataSet: TDataSet);
begin
        GirisBodroIBQISLEMKOD.AsInteger := GirisIrsaliyesiIBQISLEMKOD.AsInteger;
        GirisBodroIBQISLEMTUR.AsString := 'Giriþ Ýrsaliyesi';
        GirisBodroIBQKDVSECIM.AsString := GirisIrsaliyesiIBQKDVSECIM.AsString;
        GirisBodroIBQTARIH.AsDateTime := GirisIrsaliyesiIBQTARIH.AsDateTime;
        GirisBodroIBQVADE.AsDateTime := GirisIrsaliyesiIBQTARIH.AsDateTime;
        GirisBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        GirisBodroIBQSTOKYERIKOD.AsInteger := GirisIrsaliyesiIBQSTOKYERIKOD.AsInteger;

end;

procedure TDMirsaliye.GirisBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := GirisBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        GirisIrsaliyesiIBQ.Refresh;
        GirisBodroIBQ.GotoBookmark(yer);

end;

procedure TDMirsaliye.GAltUstBilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

end.
