unit StokislemDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet,forms, Windows,IBUpdateSQL, IBQuery;

type
  TDMStokislem = class(TDataModule)
    StokGirisIBQ: TIBQuery;
    StokGirisIBQISLEMKOD: TIntegerField;
    StokGirisIBQCARIKOD: TIntegerField;
    StokGirisIBQCARINO: TIntegerField;
    StokGirisIBQISLEMTURKOD: TIntegerField;
    StokGirisIBQSTOKISLEMNO: TIntegerField;
    StokGirisIBQTARIH: TDateField;
    StokGirisIBQIRSALIYETARIH: TDateField;
    StokGirisIBQSAAT: TTimeField;
    StokGirisIBQACIKLAMA: TIBStringField;
    StokGirisIBQGIRISTUTAR: TFloatField;
    StokGirisIBQCIKISTUTAR: TFloatField;
    StokGirisIBQGIRISMATRAH: TFloatField;
    StokGirisIBQGIRISKDVTUTAR: TFloatField;
    StokGirisIBQCIKISMATRAH: TFloatField;
    StokGirisIBQCIKISKDVTUTAR: TFloatField;
    StokGirisIBQCARIKURU: TFloatField;
    StokGirisIBQISLEMKURU: TFloatField;
    StokGirisIBQKAPATMA: TIntegerField;
    StokGirisIBQVADE: TDateField;
    StokGirisIBQGELGITKOD: TIBStringField;
    StokGirisIBQEVRAKNO: TIntegerField;
    StokGirisIBQBELGENO: TIntegerField;
    StokGirisIBQBAGLANTINO: TIntegerField;
    StokGirisIBQCARIHESAPILISKI: TIntegerField;
    StokGirisIBQPARABIRIMKOD: TIntegerField;
    StokGirisIBQSTOKYERIKOD: TIntegerField;
    StokGirisIBQMAKBUZNO: TIntegerField;
    StokGirisIBQBILGIKOD: TIntegerField;
    StokGirisIBQKULLANKOD: TIntegerField;
    StokGirisIBQPERSONELKOD: TIntegerField;
    StokGirisIBQSISTEM: TIntegerField;
    StokGirisIBQCARIPARABIRIMKOD: TIntegerField;
    StokGirisIBQC_CARIPARABIRIM: TIBStringField;
    StokGirisIBQC_PARABIRIMI: TIBStringField;
    StokGirisIBQC_CARIADI: TIBStringField;
    StokGirisIBQC_STOKYERI: TIBStringField;
    StokGirisIBQC_KULLANICIADI: TIBStringField;
    StokGirisIBQC_PERSONEL: TIBStringField;
    StokGirisIBQFATURATARIH: TDateField;
    StokGirisIBQKDVSECIM: TIBStringField;
    StokGirisIBQC_GGMERKEZI: TIBStringField;
    StokGirisIBQIRSALIYENO: TIntegerField;
    StokGirisIBQEVRAKTARIH: TDateField;
    StokGirisIBQD_GIRISTUTAR: TFloatField;
    StokGirisIBQD_GIRISKDVTUTAR: TFloatField;
    StokGirisIBQD_GIRISMATRAH: TFloatField;
    StokGirisIBQD_CIKISTUTAR: TFloatField;
    StokGirisIBQD_CIKISKDVTUTAR: TFloatField;
    StokGirisIBQD_CIKISMATRAH: TFloatField;
    StokGirisUSQL: TIBUpdateSQL;
    StokGirisDS: TDataSource;
    GirisBodroIBQ: TIBQuery;
    GirisBodroUSQL: TIBUpdateSQL;
    GirisBodroDS: TDataSource;
    GirisBodroIBQBODROKOD: TIntegerField;
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
    GirisBodroIBQISLEMKOD: TIntegerField;
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
    AltUstBilgiIBQ: TIBQuery;
    AltUstBilgiIBQBILGIKOD: TIntegerField;
    AltUstBilgiIBQISLEMKOD: TIntegerField;
    AltUstBilgiIBQALTBILGI: TMemoField;
    AltUstBilgiIBQUSTBILGI: TMemoField;
    AltUstBilgiIBQALTISKONTO: TFloatField;
    AltUstBilgiIBQISLEMTURKOD: TIntegerField;
    IAltUstBilgiUSQL: TIBUpdateSQL;
    AltUstBilgiDS: TDataSource;
    StokCikisIBQ: TIBQuery;
    StokCikisUSQL: TIBUpdateSQL;
    StokCikisDS: TDataSource;
    CikisBodroIBQ: TIBQuery;
    CikisBodroUSQL: TIBUpdateSQL;
    CikisBodroDS: TDataSource;
    StokGirisIBQISLEMTUR: TIBStringField;
    StokCikisIBQISLEMKOD: TIntegerField;
    StokCikisIBQCARIKOD: TIntegerField;
    StokCikisIBQCARINO: TIntegerField;
    StokCikisIBQISLEMTURKOD: TIntegerField;
    StokCikisIBQSTOKISLEMNO: TIntegerField;
    StokCikisIBQTARIH: TDateField;
    StokCikisIBQIRSALIYETARIH: TDateField;
    StokCikisIBQSAAT: TTimeField;
    StokCikisIBQACIKLAMA: TIBStringField;
    StokCikisIBQGIRISTUTAR: TFloatField;
    StokCikisIBQCIKISTUTAR: TFloatField;
    StokCikisIBQGIRISMATRAH: TFloatField;
    StokCikisIBQGIRISKDVTUTAR: TFloatField;
    StokCikisIBQCIKISMATRAH: TFloatField;
    StokCikisIBQCIKISKDVTUTAR: TFloatField;
    StokCikisIBQCARIKURU: TFloatField;
    StokCikisIBQISLEMKURU: TFloatField;
    StokCikisIBQKAPATMA: TIntegerField;
    StokCikisIBQVADE: TDateField;
    StokCikisIBQGELGITKOD: TIBStringField;
    StokCikisIBQEVRAKNO: TIntegerField;
    StokCikisIBQBELGENO: TIntegerField;
    StokCikisIBQBAGLANTINO: TIntegerField;
    StokCikisIBQCARIHESAPILISKI: TIntegerField;
    StokCikisIBQPARABIRIMKOD: TIntegerField;
    StokCikisIBQSTOKYERIKOD: TIntegerField;
    StokCikisIBQMAKBUZNO: TIntegerField;
    StokCikisIBQBILGIKOD: TIntegerField;
    StokCikisIBQKULLANKOD: TIntegerField;
    StokCikisIBQPERSONELKOD: TIntegerField;
    StokCikisIBQSISTEM: TIntegerField;
    StokCikisIBQCARIPARABIRIMKOD: TIntegerField;
    StokCikisIBQC_CARIPARABIRIM: TIBStringField;
    StokCikisIBQC_PARABIRIMI: TIBStringField;
    StokCikisIBQC_CARIADI: TIBStringField;
    StokCikisIBQC_STOKYERI: TIBStringField;
    StokCikisIBQC_KULLANICIADI: TIBStringField;
    StokCikisIBQC_PERSONEL: TIBStringField;
    StokCikisIBQFATURATARIH: TDateField;
    StokCikisIBQKDVSECIM: TIBStringField;
    StokCikisIBQC_GGMERKEZI: TIBStringField;
    StokCikisIBQIRSALIYENO: TIntegerField;
    StokCikisIBQEVRAKTARIH: TDateField;
    StokCikisIBQD_GIRISTUTAR: TFloatField;
    StokCikisIBQD_GIRISKDVTUTAR: TFloatField;
    StokCikisIBQD_GIRISMATRAH: TFloatField;
    StokCikisIBQD_CIKISTUTAR: TFloatField;
    StokCikisIBQD_CIKISKDVTUTAR: TFloatField;
    StokCikisIBQD_CIKISMATRAH: TFloatField;
    StokCikisIBQISLEMTUR: TIBStringField;
    CikisBodroIBQBODROKOD: TIntegerField;
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
    CikisBodroIBQISLEMKOD: TIntegerField;
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
    StokTransferIBQ: TIBQuery;
    StokTransferUSQL: TIBUpdateSQL;
    StokTransferDS: TDataSource;
    StokTransferBodroIBQ: TIBQuery;
    StokTransferBodroUSQL: TIBUpdateSQL;
    StokTransferBodroDS: TDataSource;
    StokTransferIBQISLEMKOD: TIntegerField;
    StokTransferIBQISLEMTUR: TIBStringField;
    StokTransferIBQISLEMTURKOD: TIntegerField;
    StokTransferIBQCARIKOD: TIntegerField;
    StokTransferIBQCARINO: TIntegerField;
    StokTransferIBQSTOKISLEMNO: TIntegerField;
    StokTransferIBQTARIH: TDateField;
    StokTransferIBQIRSALIYETARIH: TDateField;
    StokTransferIBQSAAT: TTimeField;
    StokTransferIBQACIKLAMA: TIBStringField;
    StokTransferIBQGIRISTUTAR: TFloatField;
    StokTransferIBQCIKISTUTAR: TFloatField;
    StokTransferIBQGIRISMATRAH: TFloatField;
    StokTransferIBQGIRISKDVTUTAR: TFloatField;
    StokTransferIBQCIKISMATRAH: TFloatField;
    StokTransferIBQCIKISKDVTUTAR: TFloatField;
    StokTransferIBQCARIKURU: TFloatField;
    StokTransferIBQISLEMKURU: TFloatField;
    StokTransferIBQKAPATMA: TIntegerField;
    StokTransferIBQVADE: TDateField;
    StokTransferIBQGELGITKOD: TIBStringField;
    StokTransferIBQEVRAKNO: TIntegerField;
    StokTransferIBQBELGENO: TIntegerField;
    StokTransferIBQBAGLANTINO: TIntegerField;
    StokTransferIBQCARIHESAPILISKI: TIntegerField;
    StokTransferIBQPARABIRIMKOD: TIntegerField;
    StokTransferIBQSTOKYERIKOD: TIntegerField;
    StokTransferIBQMAKBUZNO: TIntegerField;
    StokTransferIBQBILGIKOD: TIntegerField;
    StokTransferIBQKULLANKOD: TIntegerField;
    StokTransferIBQPERSONELKOD: TIntegerField;
    StokTransferIBQCARIPARABIRIMKOD: TIntegerField;
    StokTransferIBQC_CARIPARABIRIM: TIBStringField;
    StokTransferIBQC_PARABIRIMI: TIBStringField;
    StokTransferIBQC_CARIADI: TIBStringField;
    StokTransferIBQC_STOKYERI: TIBStringField;
    StokTransferIBQC_KULLANICIADI: TIBStringField;
    StokTransferIBQC_PERSONEL: TIBStringField;
    StokTransferIBQFATURATARIH: TDateField;
    StokTransferIBQKDVSECIM: TIBStringField;
    StokTransferIBQC_GGMERKEZI: TIBStringField;
    StokTransferIBQIRSALIYENO: TIntegerField;
    StokTransferIBQEVRAKTARIH: TDateField;
    StokTransferIBQD_GIRISTUTAR: TFloatField;
    StokTransferIBQD_GIRISKDVTUTAR: TFloatField;
    StokTransferIBQD_GIRISMATRAH: TFloatField;
    StokTransferIBQD_CIKISTUTAR: TFloatField;
    StokTransferIBQD_CIKISKDVTUTAR: TFloatField;
    StokTransferIBQD_CIKISMATRAH: TFloatField;
    StokTransferIBQSISTEM: TIntegerField;
    StokTransferBodroIBQBODROKOD: TIntegerField;
    StokTransferBodroIBQSIRANO: TIntegerField;
    StokTransferBodroIBQISLEMTUR: TIBStringField;
    StokTransferBodroIBQC_ISLEMTURKOD: TIntegerField;
    StokTransferBodroIBQCARIKOD: TIntegerField;
    StokTransferBodroIBQPARABIRIMKOD: TIntegerField;
    StokTransferBodroIBQTARIH: TDateField;
    StokTransferBodroIBQSTOKKOD: TIntegerField;
    StokTransferBodroIBQSTOKNO: TIntegerField;
    StokTransferBodroIBQBARKOD: TIBStringField;
    StokTransferBodroIBQSTOKADI: TIBStringField;
    StokTransferBodroIBQMIKTAR: TFloatField;
    StokTransferBodroIBQMIKTARCARPAN: TIntegerField;
    StokTransferBodroIBQGIRISMIKTAR: TFloatField;
    StokTransferBodroIBQCIKISMIKTAR: TFloatField;
    StokTransferBodroIBQBIRIM: TIBStringField;
    StokTransferBodroIBQBIRIMFIYAT: TFloatField;
    StokTransferBodroIBQGIRISFIYAT: TFloatField;
    StokTransferBodroIBQCIKISFIYAT: TFloatField;
    StokTransferBodroIBQCIKISTUTAR: TFloatField;
    StokTransferBodroIBQGIRISTUTAR: TFloatField;
    StokTransferBodroIBQGIRISMATRAHI: TFloatField;
    StokTransferBodroIBQCIKISMATRAHI: TFloatField;
    StokTransferBodroIBQISKONTO1: TFloatField;
    StokTransferBodroIBQISKONTO2: TFloatField;
    StokTransferBodroIBQISKONTO3: TFloatField;
    StokTransferBodroIBQISKONTO4: TFloatField;
    StokTransferBodroIBQKDVORANI: TFloatField;
    StokTransferBodroIBQBAKIYE: TFloatField;
    StokTransferBodroIBQDURUM: TIntegerField;
    StokTransferBodroIBQACIKLAMA: TIBStringField;
    StokTransferBodroIBQKAPATMA: TIntegerField;
    StokTransferBodroIBQVADE: TDateField;
    StokTransferBodroIBQFATURANO: TIntegerField;
    StokTransferBodroIBQSTOKYERIKOD: TIntegerField;
    StokTransferBodroIBQISLEMKURU: TFloatField;
    StokTransferBodroIBQGELGITKOD: TIBStringField;
    StokTransferBodroIBQPERSONELKOD: TIntegerField;
    StokTransferBodroIBQKULLANKOD: TIntegerField;
    StokTransferBodroIBQSISTEM: TIntegerField;
    StokTransferBodroIBQEVRAKDURUMU: TIntegerField;
    StokTransferBodroIBQSERINO: TIBStringField;
    StokTransferBodroIBQCARIHESAPILISKI: TIntegerField;
    StokTransferBodroIBQC_CARIADI: TIBStringField;
    StokTransferBodroIBQC_STOKYERI: TIBStringField;
    StokTransferBodroIBQC_KULLANICIADI: TIBStringField;
    StokTransferBodroIBQC_PARABIRIMI: TIBStringField;
    StokTransferBodroIBQC_REELGIRIS: TFloatField;
    StokTransferBodroIBQC_REELCIKIS: TFloatField;
    StokTransferBodroIBQISLEMKOD: TIntegerField;
    StokTransferBodroIBQKDVSECIM: TIBStringField;
    StokTransferBodroIBQC_TLGIRISTUTARI: TFloatField;
    StokTransferBodroIBQC_TLGIRISMATRAHI: TFloatField;
    StokTransferBodroIBQC_TLCIKISTUTARI: TFloatField;
    StokTransferBodroIBQC_TLCIKISMATRAHI: TFloatField;
    StokTransferBodroIBQC_TLBIRIMFIYAT: TFloatField;
    StokTransferBodroIBQC_GGMERKEZI: TIBStringField;
    StokTransferBodroIBQC_GIRISKDVTUTAR: TFloatField;
    StokTransferBodroIBQC_CIKISKDVTUTAR: TFloatField;
    StokTransferBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    StokTransferBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    SayimFazlasiIBQ: TIBQuery;
    SayimFazlasiUSQL: TIBUpdateSQL;
    SayimFazlasiDS: TDataSource;
    SayimFazlasiBodroIBQ: TIBQuery;
    SayimFazlasiBodroUSQL: TIBUpdateSQL;
    SayimFazlasiBodroDS: TDataSource;
    SayimFazlasiIBQISLEMKOD: TIntegerField;
    SayimFazlasiIBQISLEMTUR: TIBStringField;
    SayimFazlasiIBQISLEMTURKOD: TIntegerField;
    SayimFazlasiIBQCARIKOD: TIntegerField;
    SayimFazlasiIBQCARINO: TIntegerField;
    SayimFazlasiIBQSTOKISLEMNO: TIntegerField;
    SayimFazlasiIBQTARIH: TDateField;
    SayimFazlasiIBQIRSALIYETARIH: TDateField;
    SayimFazlasiIBQSAAT: TTimeField;
    SayimFazlasiIBQACIKLAMA: TIBStringField;
    SayimFazlasiIBQGIRISTUTAR: TFloatField;
    SayimFazlasiIBQCIKISTUTAR: TFloatField;
    SayimFazlasiIBQGIRISMATRAH: TFloatField;
    SayimFazlasiIBQGIRISKDVTUTAR: TFloatField;
    SayimFazlasiIBQCIKISMATRAH: TFloatField;
    SayimFazlasiIBQCIKISKDVTUTAR: TFloatField;
    SayimFazlasiIBQCARIKURU: TFloatField;
    SayimFazlasiIBQISLEMKURU: TFloatField;
    SayimFazlasiIBQKAPATMA: TIntegerField;
    SayimFazlasiIBQVADE: TDateField;
    SayimFazlasiIBQGELGITKOD: TIBStringField;
    SayimFazlasiIBQEVRAKNO: TIntegerField;
    SayimFazlasiIBQBELGENO: TIntegerField;
    SayimFazlasiIBQBAGLANTINO: TIntegerField;
    SayimFazlasiIBQCARIHESAPILISKI: TIntegerField;
    SayimFazlasiIBQPARABIRIMKOD: TIntegerField;
    SayimFazlasiIBQSTOKYERIKOD: TIntegerField;
    SayimFazlasiIBQMAKBUZNO: TIntegerField;
    SayimFazlasiIBQBILGIKOD: TIntegerField;
    SayimFazlasiIBQKULLANKOD: TIntegerField;
    SayimFazlasiIBQPERSONELKOD: TIntegerField;
    SayimFazlasiIBQCARIPARABIRIMKOD: TIntegerField;
    SayimFazlasiIBQC_CARIPARABIRIM: TIBStringField;
    SayimFazlasiIBQC_PARABIRIMI: TIBStringField;
    SayimFazlasiIBQC_CARIADI: TIBStringField;
    SayimFazlasiIBQC_STOKYERI: TIBStringField;
    SayimFazlasiIBQC_KULLANICIADI: TIBStringField;
    SayimFazlasiIBQC_PERSONEL: TIBStringField;
    SayimFazlasiIBQFATURATARIH: TDateField;
    SayimFazlasiIBQKDVSECIM: TIBStringField;
    SayimFazlasiIBQC_GGMERKEZI: TIBStringField;
    SayimFazlasiIBQIRSALIYENO: TIntegerField;
    SayimFazlasiIBQEVRAKTARIH: TDateField;
    SayimFazlasiIBQD_GIRISTUTAR: TFloatField;
    SayimFazlasiIBQD_GIRISKDVTUTAR: TFloatField;
    SayimFazlasiIBQD_GIRISMATRAH: TFloatField;
    SayimFazlasiIBQD_CIKISTUTAR: TFloatField;
    SayimFazlasiIBQD_CIKISKDVTUTAR: TFloatField;
    SayimFazlasiIBQD_CIKISMATRAH: TFloatField;
    SayimFazlasiIBQSISTEM: TIntegerField;
    SayimFazlasiBodroIBQBODROKOD: TIntegerField;
    SayimFazlasiBodroIBQSIRANO: TIntegerField;
    SayimFazlasiBodroIBQISLEMTUR: TIBStringField;
    SayimFazlasiBodroIBQC_ISLEMTURKOD: TIntegerField;
    SayimFazlasiBodroIBQCARIKOD: TIntegerField;
    SayimFazlasiBodroIBQPARABIRIMKOD: TIntegerField;
    SayimFazlasiBodroIBQTARIH: TDateField;
    SayimFazlasiBodroIBQSTOKKOD: TIntegerField;
    SayimFazlasiBodroIBQSTOKNO: TIntegerField;
    SayimFazlasiBodroIBQBARKOD: TIBStringField;
    SayimFazlasiBodroIBQSTOKADI: TIBStringField;
    SayimFazlasiBodroIBQMIKTAR: TFloatField;
    SayimFazlasiBodroIBQMIKTARCARPAN: TIntegerField;
    SayimFazlasiBodroIBQGIRISMIKTAR: TFloatField;
    SayimFazlasiBodroIBQCIKISMIKTAR: TFloatField;
    SayimFazlasiBodroIBQBIRIM: TIBStringField;
    SayimFazlasiBodroIBQBIRIMFIYAT: TFloatField;
    SayimFazlasiBodroIBQGIRISFIYAT: TFloatField;
    SayimFazlasiBodroIBQCIKISFIYAT: TFloatField;
    SayimFazlasiBodroIBQCIKISTUTAR: TFloatField;
    SayimFazlasiBodroIBQGIRISTUTAR: TFloatField;
    SayimFazlasiBodroIBQGIRISMATRAHI: TFloatField;
    SayimFazlasiBodroIBQCIKISMATRAHI: TFloatField;
    SayimFazlasiBodroIBQISKONTO1: TFloatField;
    SayimFazlasiBodroIBQISKONTO2: TFloatField;
    SayimFazlasiBodroIBQISKONTO3: TFloatField;
    SayimFazlasiBodroIBQISKONTO4: TFloatField;
    SayimFazlasiBodroIBQKDVORANI: TFloatField;
    SayimFazlasiBodroIBQBAKIYE: TFloatField;
    SayimFazlasiBodroIBQDURUM: TIntegerField;
    SayimFazlasiBodroIBQACIKLAMA: TIBStringField;
    SayimFazlasiBodroIBQKAPATMA: TIntegerField;
    SayimFazlasiBodroIBQVADE: TDateField;
    SayimFazlasiBodroIBQFATURANO: TIntegerField;
    SayimFazlasiBodroIBQSTOKYERIKOD: TIntegerField;
    SayimFazlasiBodroIBQISLEMKURU: TFloatField;
    SayimFazlasiBodroIBQGELGITKOD: TIBStringField;
    SayimFazlasiBodroIBQPERSONELKOD: TIntegerField;
    SayimFazlasiBodroIBQKULLANKOD: TIntegerField;
    SayimFazlasiBodroIBQSISTEM: TIntegerField;
    SayimFazlasiBodroIBQEVRAKDURUMU: TIntegerField;
    SayimFazlasiBodroIBQSERINO: TIBStringField;
    SayimFazlasiBodroIBQCARIHESAPILISKI: TIntegerField;
    SayimFazlasiBodroIBQC_CARIADI: TIBStringField;
    SayimFazlasiBodroIBQC_STOKYERI: TIBStringField;
    SayimFazlasiBodroIBQC_KULLANICIADI: TIBStringField;
    SayimFazlasiBodroIBQC_PARABIRIMI: TIBStringField;
    SayimFazlasiBodroIBQC_REELGIRIS: TFloatField;
    SayimFazlasiBodroIBQC_REELCIKIS: TFloatField;
    SayimFazlasiBodroIBQISLEMKOD: TIntegerField;
    SayimFazlasiBodroIBQKDVSECIM: TIBStringField;
    SayimFazlasiBodroIBQC_TLGIRISTUTARI: TFloatField;
    SayimFazlasiBodroIBQC_TLGIRISMATRAHI: TFloatField;
    SayimFazlasiBodroIBQC_TLCIKISTUTARI: TFloatField;
    SayimFazlasiBodroIBQC_TLCIKISMATRAHI: TFloatField;
    SayimFazlasiBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SayimFazlasiBodroIBQC_GGMERKEZI: TIBStringField;
    SayimFazlasiBodroIBQC_GIRISKDVTUTAR: TFloatField;
    SayimFazlasiBodroIBQC_CIKISKDVTUTAR: TFloatField;
    SayimFazlasiBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    SayimFazlasiBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    UretimGirisIBQ: TIBQuery;
    UretimGirisUSQL: TIBUpdateSQL;
    UretimGirisDS: TDataSource;
    UGBodroIBQ: TIBQuery;
    UGBodroUSQL: TIBUpdateSQL;
    UGBodroDS: TDataSource;
    UretimGirisIBQISLEMKOD: TIntegerField;
    UretimGirisIBQISLEMTUR: TIBStringField;
    UretimGirisIBQISLEMTURKOD: TIntegerField;
    UretimGirisIBQCARIKOD: TIntegerField;
    UretimGirisIBQCARINO: TIntegerField;
    UretimGirisIBQSTOKISLEMNO: TIntegerField;
    UretimGirisIBQTARIH: TDateField;
    UretimGirisIBQIRSALIYETARIH: TDateField;
    UretimGirisIBQSAAT: TTimeField;
    UretimGirisIBQACIKLAMA: TIBStringField;
    UretimGirisIBQGIRISTUTAR: TFloatField;
    UretimGirisIBQCIKISTUTAR: TFloatField;
    UretimGirisIBQGIRISMATRAH: TFloatField;
    UretimGirisIBQGIRISKDVTUTAR: TFloatField;
    UretimGirisIBQCIKISMATRAH: TFloatField;
    UretimGirisIBQCIKISKDVTUTAR: TFloatField;
    UretimGirisIBQCARIKURU: TFloatField;
    UretimGirisIBQISLEMKURU: TFloatField;
    UretimGirisIBQKAPATMA: TIntegerField;
    UretimGirisIBQVADE: TDateField;
    UretimGirisIBQGELGITKOD: TIBStringField;
    UretimGirisIBQEVRAKNO: TIntegerField;
    UretimGirisIBQBELGENO: TIntegerField;
    UretimGirisIBQBAGLANTINO: TIntegerField;
    UretimGirisIBQCARIHESAPILISKI: TIntegerField;
    UretimGirisIBQPARABIRIMKOD: TIntegerField;
    UretimGirisIBQSTOKYERIKOD: TIntegerField;
    UretimGirisIBQMAKBUZNO: TIntegerField;
    UretimGirisIBQBILGIKOD: TIntegerField;
    UretimGirisIBQKULLANKOD: TIntegerField;
    UretimGirisIBQPERSONELKOD: TIntegerField;
    UretimGirisIBQCARIPARABIRIMKOD: TIntegerField;
    UretimGirisIBQC_CARIPARABIRIM: TIBStringField;
    UretimGirisIBQC_PARABIRIMI: TIBStringField;
    UretimGirisIBQC_CARIADI: TIBStringField;
    UretimGirisIBQC_STOKYERI: TIBStringField;
    UretimGirisIBQC_KULLANICIADI: TIBStringField;
    UretimGirisIBQC_PERSONEL: TIBStringField;
    UretimGirisIBQFATURATARIH: TDateField;
    UretimGirisIBQKDVSECIM: TIBStringField;
    UretimGirisIBQC_GGMERKEZI: TIBStringField;
    UretimGirisIBQIRSALIYENO: TIntegerField;
    UretimGirisIBQEVRAKTARIH: TDateField;
    UretimGirisIBQD_GIRISTUTAR: TFloatField;
    UretimGirisIBQD_GIRISKDVTUTAR: TFloatField;
    UretimGirisIBQD_GIRISMATRAH: TFloatField;
    UretimGirisIBQD_CIKISTUTAR: TFloatField;
    UretimGirisIBQD_CIKISKDVTUTAR: TFloatField;
    UretimGirisIBQD_CIKISMATRAH: TFloatField;
    UretimGirisIBQSISTEM: TIntegerField;
    UGBodroIBQBODROKOD: TIntegerField;
    UGBodroIBQSIRANO: TIntegerField;
    UGBodroIBQISLEMTUR: TIBStringField;
    UGBodroIBQC_ISLEMTURKOD: TIntegerField;
    UGBodroIBQCARIKOD: TIntegerField;
    UGBodroIBQPARABIRIMKOD: TIntegerField;
    UGBodroIBQTARIH: TDateField;
    UGBodroIBQSTOKKOD: TIntegerField;
    UGBodroIBQSTOKNO: TIntegerField;
    UGBodroIBQBARKOD: TIBStringField;
    UGBodroIBQSTOKADI: TIBStringField;
    UGBodroIBQMIKTAR: TFloatField;
    UGBodroIBQMIKTARCARPAN: TIntegerField;
    UGBodroIBQGIRISMIKTAR: TFloatField;
    UGBodroIBQCIKISMIKTAR: TFloatField;
    UGBodroIBQBIRIM: TIBStringField;
    UGBodroIBQBIRIMFIYAT: TFloatField;
    UGBodroIBQGIRISFIYAT: TFloatField;
    UGBodroIBQCIKISFIYAT: TFloatField;
    UGBodroIBQCIKISTUTAR: TFloatField;
    UGBodroIBQGIRISTUTAR: TFloatField;
    UGBodroIBQGIRISMATRAHI: TFloatField;
    UGBodroIBQCIKISMATRAHI: TFloatField;
    UGBodroIBQISKONTO1: TFloatField;
    UGBodroIBQISKONTO2: TFloatField;
    UGBodroIBQISKONTO3: TFloatField;
    UGBodroIBQISKONTO4: TFloatField;
    UGBodroIBQKDVORANI: TFloatField;
    UGBodroIBQBAKIYE: TFloatField;
    UGBodroIBQDURUM: TIntegerField;
    UGBodroIBQACIKLAMA: TIBStringField;
    UGBodroIBQKAPATMA: TIntegerField;
    UGBodroIBQVADE: TDateField;
    UGBodroIBQFATURANO: TIntegerField;
    UGBodroIBQSTOKYERIKOD: TIntegerField;
    UGBodroIBQISLEMKURU: TFloatField;
    UGBodroIBQGELGITKOD: TIBStringField;
    UGBodroIBQPERSONELKOD: TIntegerField;
    UGBodroIBQKULLANKOD: TIntegerField;
    UGBodroIBQSISTEM: TIntegerField;
    UGBodroIBQEVRAKDURUMU: TIntegerField;
    UGBodroIBQSERINO: TIBStringField;
    UGBodroIBQCARIHESAPILISKI: TIntegerField;
    UGBodroIBQC_CARIADI: TIBStringField;
    UGBodroIBQC_STOKYERI: TIBStringField;
    UGBodroIBQC_KULLANICIADI: TIBStringField;
    UGBodroIBQC_PARABIRIMI: TIBStringField;
    UGBodroIBQC_REELGIRIS: TFloatField;
    UGBodroIBQC_REELCIKIS: TFloatField;
    UGBodroIBQISLEMKOD: TIntegerField;
    UGBodroIBQKDVSECIM: TIBStringField;
    UGBodroIBQC_TLGIRISTUTARI: TFloatField;
    UGBodroIBQC_TLGIRISMATRAHI: TFloatField;
    UGBodroIBQC_TLCIKISTUTARI: TFloatField;
    UGBodroIBQC_TLCIKISMATRAHI: TFloatField;
    UGBodroIBQC_TLBIRIMFIYAT: TFloatField;
    UGBodroIBQC_GGMERKEZI: TIBStringField;
    UGBodroIBQC_GIRISKDVTUTAR: TFloatField;
    UGBodroIBQC_CIKISKDVTUTAR: TFloatField;
    UGBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    UGBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    SayimEksigiIBQ: TIBQuery;
    SayimEksigiUSQL: TIBUpdateSQL;
    SayimEksigiDS: TDataSource;
    SEBodroIBQ: TIBQuery;
    SEBodroUSQL: TIBUpdateSQL;
    SEBodroDS: TDataSource;
    SayimEksigiIBQISLEMKOD: TIntegerField;
    SayimEksigiIBQCARIKOD: TIntegerField;
    SayimEksigiIBQCARINO: TIntegerField;
    SayimEksigiIBQISLEMTURKOD: TIntegerField;
    SayimEksigiIBQSTOKISLEMNO: TIntegerField;
    SayimEksigiIBQTARIH: TDateField;
    SayimEksigiIBQIRSALIYETARIH: TDateField;
    SayimEksigiIBQSAAT: TTimeField;
    SayimEksigiIBQACIKLAMA: TIBStringField;
    SayimEksigiIBQGIRISTUTAR: TFloatField;
    SayimEksigiIBQCIKISTUTAR: TFloatField;
    SayimEksigiIBQGIRISMATRAH: TFloatField;
    SayimEksigiIBQGIRISKDVTUTAR: TFloatField;
    SayimEksigiIBQCIKISMATRAH: TFloatField;
    SayimEksigiIBQCIKISKDVTUTAR: TFloatField;
    SayimEksigiIBQCARIKURU: TFloatField;
    SayimEksigiIBQISLEMKURU: TFloatField;
    SayimEksigiIBQKAPATMA: TIntegerField;
    SayimEksigiIBQVADE: TDateField;
    SayimEksigiIBQGELGITKOD: TIBStringField;
    SayimEksigiIBQEVRAKNO: TIntegerField;
    SayimEksigiIBQBELGENO: TIntegerField;
    SayimEksigiIBQBAGLANTINO: TIntegerField;
    SayimEksigiIBQCARIHESAPILISKI: TIntegerField;
    SayimEksigiIBQPARABIRIMKOD: TIntegerField;
    SayimEksigiIBQSTOKYERIKOD: TIntegerField;
    SayimEksigiIBQMAKBUZNO: TIntegerField;
    SayimEksigiIBQBILGIKOD: TIntegerField;
    SayimEksigiIBQKULLANKOD: TIntegerField;
    SayimEksigiIBQPERSONELKOD: TIntegerField;
    SayimEksigiIBQSISTEM: TIntegerField;
    SayimEksigiIBQCARIPARABIRIMKOD: TIntegerField;
    SayimEksigiIBQC_CARIPARABIRIM: TIBStringField;
    SayimEksigiIBQC_PARABIRIMI: TIBStringField;
    SayimEksigiIBQC_CARIADI: TIBStringField;
    SayimEksigiIBQC_STOKYERI: TIBStringField;
    SayimEksigiIBQC_KULLANICIADI: TIBStringField;
    SayimEksigiIBQC_PERSONEL: TIBStringField;
    SayimEksigiIBQFATURATARIH: TDateField;
    SayimEksigiIBQKDVSECIM: TIBStringField;
    SayimEksigiIBQC_GGMERKEZI: TIBStringField;
    SayimEksigiIBQIRSALIYENO: TIntegerField;
    SayimEksigiIBQEVRAKTARIH: TDateField;
    SayimEksigiIBQD_GIRISTUTAR: TFloatField;
    SayimEksigiIBQD_GIRISKDVTUTAR: TFloatField;
    SayimEksigiIBQD_GIRISMATRAH: TFloatField;
    SayimEksigiIBQD_CIKISTUTAR: TFloatField;
    SayimEksigiIBQD_CIKISKDVTUTAR: TFloatField;
    SayimEksigiIBQD_CIKISMATRAH: TFloatField;
    SayimEksigiIBQISLEMTUR: TIBStringField;
    SEBodroIBQBODROKOD: TIntegerField;
    SEBodroIBQSIRANO: TIntegerField;
    SEBodroIBQISLEMTUR: TIBStringField;
    SEBodroIBQC_ISLEMTURKOD: TIntegerField;
    SEBodroIBQCARIKOD: TIntegerField;
    SEBodroIBQPARABIRIMKOD: TIntegerField;
    SEBodroIBQTARIH: TDateField;
    SEBodroIBQSTOKKOD: TIntegerField;
    SEBodroIBQSTOKNO: TIntegerField;
    SEBodroIBQBARKOD: TIBStringField;
    SEBodroIBQSTOKADI: TIBStringField;
    SEBodroIBQMIKTAR: TFloatField;
    SEBodroIBQMIKTARCARPAN: TIntegerField;
    SEBodroIBQGIRISMIKTAR: TFloatField;
    SEBodroIBQCIKISMIKTAR: TFloatField;
    SEBodroIBQBIRIM: TIBStringField;
    SEBodroIBQBIRIMFIYAT: TFloatField;
    SEBodroIBQGIRISFIYAT: TFloatField;
    SEBodroIBQCIKISFIYAT: TFloatField;
    SEBodroIBQCIKISTUTAR: TFloatField;
    SEBodroIBQGIRISTUTAR: TFloatField;
    SEBodroIBQGIRISMATRAHI: TFloatField;
    SEBodroIBQCIKISMATRAHI: TFloatField;
    SEBodroIBQISKONTO1: TFloatField;
    SEBodroIBQISKONTO2: TFloatField;
    SEBodroIBQISKONTO3: TFloatField;
    SEBodroIBQISKONTO4: TFloatField;
    SEBodroIBQKDVORANI: TFloatField;
    SEBodroIBQBAKIYE: TFloatField;
    SEBodroIBQDURUM: TIntegerField;
    SEBodroIBQACIKLAMA: TIBStringField;
    SEBodroIBQKAPATMA: TIntegerField;
    SEBodroIBQVADE: TDateField;
    SEBodroIBQFATURANO: TIntegerField;
    SEBodroIBQSTOKYERIKOD: TIntegerField;
    SEBodroIBQISLEMKURU: TFloatField;
    SEBodroIBQGELGITKOD: TIBStringField;
    SEBodroIBQPERSONELKOD: TIntegerField;
    SEBodroIBQKULLANKOD: TIntegerField;
    SEBodroIBQSISTEM: TIntegerField;
    SEBodroIBQEVRAKDURUMU: TIntegerField;
    SEBodroIBQSERINO: TIBStringField;
    SEBodroIBQCARIHESAPILISKI: TIntegerField;
    SEBodroIBQC_CARIADI: TIBStringField;
    SEBodroIBQC_STOKYERI: TIBStringField;
    SEBodroIBQC_KULLANICIADI: TIBStringField;
    SEBodroIBQC_PARABIRIMI: TIBStringField;
    SEBodroIBQC_REELGIRIS: TFloatField;
    SEBodroIBQC_REELCIKIS: TFloatField;
    SEBodroIBQISLEMKOD: TIntegerField;
    SEBodroIBQKDVSECIM: TIBStringField;
    SEBodroIBQC_TLGIRISTUTARI: TFloatField;
    SEBodroIBQC_TLGIRISMATRAHI: TFloatField;
    SEBodroIBQC_TLCIKISTUTARI: TFloatField;
    SEBodroIBQC_TLCIKISMATRAHI: TFloatField;
    SEBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SEBodroIBQC_GGMERKEZI: TIBStringField;
    SEBodroIBQC_GIRISKDVTUTAR: TFloatField;
    SEBodroIBQC_CIKISKDVTUTAR: TFloatField;
    SEBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    SEBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    SarfIBQ: TIBQuery;
    SarfUSQL: TIBUpdateSQL;
    SarfDS: TDataSource;
    SarfBodroIBQ: TIBQuery;
    SarfBodroUSQL: TIBUpdateSQL;
    SarfBodroDS: TDataSource;
    SarfIBQISLEMKOD: TIntegerField;
    SarfIBQCARIKOD: TIntegerField;
    SarfIBQCARINO: TIntegerField;
    SarfIBQISLEMTURKOD: TIntegerField;
    SarfIBQSTOKISLEMNO: TIntegerField;
    SarfIBQTARIH: TDateField;
    SarfIBQIRSALIYETARIH: TDateField;
    SarfIBQSAAT: TTimeField;
    SarfIBQACIKLAMA: TIBStringField;
    SarfIBQGIRISTUTAR: TFloatField;
    SarfIBQCIKISTUTAR: TFloatField;
    SarfIBQGIRISMATRAH: TFloatField;
    SarfIBQGIRISKDVTUTAR: TFloatField;
    SarfIBQCIKISMATRAH: TFloatField;
    SarfIBQCIKISKDVTUTAR: TFloatField;
    SarfIBQCARIKURU: TFloatField;
    SarfIBQISLEMKURU: TFloatField;
    SarfIBQKAPATMA: TIntegerField;
    SarfIBQVADE: TDateField;
    SarfIBQGELGITKOD: TIBStringField;
    SarfIBQEVRAKNO: TIntegerField;
    SarfIBQBELGENO: TIntegerField;
    SarfIBQBAGLANTINO: TIntegerField;
    SarfIBQCARIHESAPILISKI: TIntegerField;
    SarfIBQPARABIRIMKOD: TIntegerField;
    SarfIBQSTOKYERIKOD: TIntegerField;
    SarfIBQMAKBUZNO: TIntegerField;
    SarfIBQBILGIKOD: TIntegerField;
    SarfIBQKULLANKOD: TIntegerField;
    SarfIBQPERSONELKOD: TIntegerField;
    SarfIBQSISTEM: TIntegerField;
    SarfIBQCARIPARABIRIMKOD: TIntegerField;
    SarfIBQC_CARIPARABIRIM: TIBStringField;
    SarfIBQC_PARABIRIMI: TIBStringField;
    SarfIBQC_CARIADI: TIBStringField;
    SarfIBQC_STOKYERI: TIBStringField;
    SarfIBQC_KULLANICIADI: TIBStringField;
    SarfIBQC_PERSONEL: TIBStringField;
    SarfIBQFATURATARIH: TDateField;
    SarfIBQKDVSECIM: TIBStringField;
    SarfIBQC_GGMERKEZI: TIBStringField;
    SarfIBQIRSALIYENO: TIntegerField;
    SarfIBQEVRAKTARIH: TDateField;
    SarfIBQD_GIRISTUTAR: TFloatField;
    SarfIBQD_GIRISKDVTUTAR: TFloatField;
    SarfIBQD_GIRISMATRAH: TFloatField;
    SarfIBQD_CIKISTUTAR: TFloatField;
    SarfIBQD_CIKISKDVTUTAR: TFloatField;
    SarfIBQD_CIKISMATRAH: TFloatField;
    SarfIBQISLEMTUR: TIBStringField;
    SarfBodroIBQBODROKOD: TIntegerField;
    SarfBodroIBQSIRANO: TIntegerField;
    SarfBodroIBQISLEMTUR: TIBStringField;
    SarfBodroIBQC_ISLEMTURKOD: TIntegerField;
    SarfBodroIBQCARIKOD: TIntegerField;
    SarfBodroIBQPARABIRIMKOD: TIntegerField;
    SarfBodroIBQTARIH: TDateField;
    SarfBodroIBQSTOKKOD: TIntegerField;
    SarfBodroIBQSTOKNO: TIntegerField;
    SarfBodroIBQBARKOD: TIBStringField;
    SarfBodroIBQSTOKADI: TIBStringField;
    SarfBodroIBQMIKTAR: TFloatField;
    SarfBodroIBQMIKTARCARPAN: TIntegerField;
    SarfBodroIBQGIRISMIKTAR: TFloatField;
    SarfBodroIBQCIKISMIKTAR: TFloatField;
    SarfBodroIBQBIRIM: TIBStringField;
    SarfBodroIBQBIRIMFIYAT: TFloatField;
    SarfBodroIBQGIRISFIYAT: TFloatField;
    SarfBodroIBQCIKISFIYAT: TFloatField;
    SarfBodroIBQCIKISTUTAR: TFloatField;
    SarfBodroIBQGIRISTUTAR: TFloatField;
    SarfBodroIBQGIRISMATRAHI: TFloatField;
    SarfBodroIBQCIKISMATRAHI: TFloatField;
    SarfBodroIBQISKONTO1: TFloatField;
    SarfBodroIBQISKONTO2: TFloatField;
    SarfBodroIBQISKONTO3: TFloatField;
    SarfBodroIBQISKONTO4: TFloatField;
    SarfBodroIBQKDVORANI: TFloatField;
    SarfBodroIBQBAKIYE: TFloatField;
    SarfBodroIBQDURUM: TIntegerField;
    SarfBodroIBQACIKLAMA: TIBStringField;
    SarfBodroIBQKAPATMA: TIntegerField;
    SarfBodroIBQVADE: TDateField;
    SarfBodroIBQFATURANO: TIntegerField;
    SarfBodroIBQSTOKYERIKOD: TIntegerField;
    SarfBodroIBQISLEMKURU: TFloatField;
    SarfBodroIBQGELGITKOD: TIBStringField;
    SarfBodroIBQPERSONELKOD: TIntegerField;
    SarfBodroIBQKULLANKOD: TIntegerField;
    SarfBodroIBQSISTEM: TIntegerField;
    SarfBodroIBQEVRAKDURUMU: TIntegerField;
    SarfBodroIBQSERINO: TIBStringField;
    SarfBodroIBQCARIHESAPILISKI: TIntegerField;
    SarfBodroIBQC_CARIADI: TIBStringField;
    SarfBodroIBQC_STOKYERI: TIBStringField;
    SarfBodroIBQC_KULLANICIADI: TIBStringField;
    SarfBodroIBQC_PARABIRIMI: TIBStringField;
    SarfBodroIBQC_REELGIRIS: TFloatField;
    SarfBodroIBQC_REELCIKIS: TFloatField;
    SarfBodroIBQISLEMKOD: TIntegerField;
    SarfBodroIBQKDVSECIM: TIBStringField;
    SarfBodroIBQC_TLGIRISTUTARI: TFloatField;
    SarfBodroIBQC_TLGIRISMATRAHI: TFloatField;
    SarfBodroIBQC_TLCIKISTUTARI: TFloatField;
    SarfBodroIBQC_TLCIKISMATRAHI: TFloatField;
    SarfBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SarfBodroIBQC_GGMERKEZI: TIBStringField;
    SarfBodroIBQC_GIRISKDVTUTAR: TFloatField;
    SarfBodroIBQC_CIKISKDVTUTAR: TFloatField;
    SarfBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    SarfBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    FireIBQ: TIBQuery;
    FireUSQL: TIBUpdateSQL;
    FireDS: TDataSource;
    FireBodroIBQ: TIBQuery;
    FireBodroUSQL: TIBUpdateSQL;
    FireBodroDS: TDataSource;
    FireIBQISLEMKOD: TIntegerField;
    FireIBQCARIKOD: TIntegerField;
    FireIBQCARINO: TIntegerField;
    FireIBQISLEMTURKOD: TIntegerField;
    FireIBQSTOKISLEMNO: TIntegerField;
    FireIBQTARIH: TDateField;
    FireIBQIRSALIYETARIH: TDateField;
    FireIBQSAAT: TTimeField;
    FireIBQACIKLAMA: TIBStringField;
    FireIBQGIRISTUTAR: TFloatField;
    FireIBQCIKISTUTAR: TFloatField;
    FireIBQGIRISMATRAH: TFloatField;
    FireIBQGIRISKDVTUTAR: TFloatField;
    FireIBQCIKISMATRAH: TFloatField;
    FireIBQCIKISKDVTUTAR: TFloatField;
    FireIBQCARIKURU: TFloatField;
    FireIBQISLEMKURU: TFloatField;
    FireIBQKAPATMA: TIntegerField;
    FireIBQVADE: TDateField;
    FireIBQGELGITKOD: TIBStringField;
    FireIBQEVRAKNO: TIntegerField;
    FireIBQBELGENO: TIntegerField;
    FireIBQBAGLANTINO: TIntegerField;
    FireIBQCARIHESAPILISKI: TIntegerField;
    FireIBQPARABIRIMKOD: TIntegerField;
    FireIBQSTOKYERIKOD: TIntegerField;
    FireIBQMAKBUZNO: TIntegerField;
    FireIBQBILGIKOD: TIntegerField;
    FireIBQKULLANKOD: TIntegerField;
    FireIBQPERSONELKOD: TIntegerField;
    FireIBQSISTEM: TIntegerField;
    FireIBQCARIPARABIRIMKOD: TIntegerField;
    FireIBQC_CARIPARABIRIM: TIBStringField;
    FireIBQC_PARABIRIMI: TIBStringField;
    FireIBQC_CARIADI: TIBStringField;
    FireIBQC_STOKYERI: TIBStringField;
    FireIBQC_KULLANICIADI: TIBStringField;
    FireIBQC_PERSONEL: TIBStringField;
    FireIBQFATURATARIH: TDateField;
    FireIBQKDVSECIM: TIBStringField;
    FireIBQC_GGMERKEZI: TIBStringField;
    FireIBQIRSALIYENO: TIntegerField;
    FireIBQEVRAKTARIH: TDateField;
    FireIBQD_GIRISTUTAR: TFloatField;
    FireIBQD_GIRISKDVTUTAR: TFloatField;
    FireIBQD_GIRISMATRAH: TFloatField;
    FireIBQD_CIKISTUTAR: TFloatField;
    FireIBQD_CIKISKDVTUTAR: TFloatField;
    FireIBQD_CIKISMATRAH: TFloatField;
    FireIBQISLEMTUR: TIBStringField;
    FireBodroIBQBODROKOD: TIntegerField;
    FireBodroIBQSIRANO: TIntegerField;
    FireBodroIBQISLEMTUR: TIBStringField;
    FireBodroIBQC_ISLEMTURKOD: TIntegerField;
    FireBodroIBQCARIKOD: TIntegerField;
    FireBodroIBQPARABIRIMKOD: TIntegerField;
    FireBodroIBQTARIH: TDateField;
    FireBodroIBQSTOKKOD: TIntegerField;
    FireBodroIBQSTOKNO: TIntegerField;
    FireBodroIBQBARKOD: TIBStringField;
    FireBodroIBQSTOKADI: TIBStringField;
    FireBodroIBQMIKTAR: TFloatField;
    FireBodroIBQMIKTARCARPAN: TIntegerField;
    FireBodroIBQGIRISMIKTAR: TFloatField;
    FireBodroIBQCIKISMIKTAR: TFloatField;
    FireBodroIBQBIRIM: TIBStringField;
    FireBodroIBQBIRIMFIYAT: TFloatField;
    FireBodroIBQGIRISFIYAT: TFloatField;
    FireBodroIBQCIKISFIYAT: TFloatField;
    FireBodroIBQCIKISTUTAR: TFloatField;
    FireBodroIBQGIRISTUTAR: TFloatField;
    FireBodroIBQGIRISMATRAHI: TFloatField;
    FireBodroIBQCIKISMATRAHI: TFloatField;
    FireBodroIBQISKONTO1: TFloatField;
    FireBodroIBQISKONTO2: TFloatField;
    FireBodroIBQISKONTO3: TFloatField;
    FireBodroIBQISKONTO4: TFloatField;
    FireBodroIBQKDVORANI: TFloatField;
    FireBodroIBQBAKIYE: TFloatField;
    FireBodroIBQDURUM: TIntegerField;
    FireBodroIBQACIKLAMA: TIBStringField;
    FireBodroIBQKAPATMA: TIntegerField;
    FireBodroIBQVADE: TDateField;
    FireBodroIBQFATURANO: TIntegerField;
    FireBodroIBQSTOKYERIKOD: TIntegerField;
    FireBodroIBQISLEMKURU: TFloatField;
    FireBodroIBQGELGITKOD: TIBStringField;
    FireBodroIBQPERSONELKOD: TIntegerField;
    FireBodroIBQKULLANKOD: TIntegerField;
    FireBodroIBQSISTEM: TIntegerField;
    FireBodroIBQEVRAKDURUMU: TIntegerField;
    FireBodroIBQSERINO: TIBStringField;
    FireBodroIBQCARIHESAPILISKI: TIntegerField;
    FireBodroIBQC_CARIADI: TIBStringField;
    FireBodroIBQC_STOKYERI: TIBStringField;
    FireBodroIBQC_KULLANICIADI: TIBStringField;
    FireBodroIBQC_PARABIRIMI: TIBStringField;
    FireBodroIBQC_REELGIRIS: TFloatField;
    FireBodroIBQC_REELCIKIS: TFloatField;
    FireBodroIBQISLEMKOD: TIntegerField;
    FireBodroIBQKDVSECIM: TIBStringField;
    FireBodroIBQC_TLGIRISTUTARI: TFloatField;
    FireBodroIBQC_TLGIRISMATRAHI: TFloatField;
    FireBodroIBQC_TLCIKISTUTARI: TFloatField;
    FireBodroIBQC_TLCIKISMATRAHI: TFloatField;
    FireBodroIBQC_TLBIRIMFIYAT: TFloatField;
    FireBodroIBQC_GGMERKEZI: TIBStringField;
    FireBodroIBQC_GIRISKDVTUTAR: TFloatField;
    FireBodroIBQC_CIKISKDVTUTAR: TFloatField;
    FireBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    FireBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    UretimeCikisIBQ: TIBQuery;
    UretimeCikisUSQL: TIBUpdateSQL;
    UretimeCikisDS: TDataSource;
    UretimeCikisBodroIBQ: TIBQuery;
    UretimeCikisBodroUSQL: TIBUpdateSQL;
    UretimeCikisBodroDS: TDataSource;
    UretimeCikisIBQISLEMKOD: TIntegerField;
    UretimeCikisIBQCARIKOD: TIntegerField;
    UretimeCikisIBQCARINO: TIntegerField;
    UretimeCikisIBQISLEMTURKOD: TIntegerField;
    UretimeCikisIBQSTOKISLEMNO: TIntegerField;
    UretimeCikisIBQTARIH: TDateField;
    UretimeCikisIBQIRSALIYETARIH: TDateField;
    UretimeCikisIBQSAAT: TTimeField;
    UretimeCikisIBQACIKLAMA: TIBStringField;
    UretimeCikisIBQGIRISTUTAR: TFloatField;
    UretimeCikisIBQCIKISTUTAR: TFloatField;
    UretimeCikisIBQGIRISMATRAH: TFloatField;
    UretimeCikisIBQGIRISKDVTUTAR: TFloatField;
    UretimeCikisIBQCIKISMATRAH: TFloatField;
    UretimeCikisIBQCIKISKDVTUTAR: TFloatField;
    UretimeCikisIBQCARIKURU: TFloatField;
    UretimeCikisIBQISLEMKURU: TFloatField;
    UretimeCikisIBQKAPATMA: TIntegerField;
    UretimeCikisIBQVADE: TDateField;
    UretimeCikisIBQGELGITKOD: TIBStringField;
    UretimeCikisIBQEVRAKNO: TIntegerField;
    UretimeCikisIBQBELGENO: TIntegerField;
    UretimeCikisIBQBAGLANTINO: TIntegerField;
    UretimeCikisIBQCARIHESAPILISKI: TIntegerField;
    UretimeCikisIBQPARABIRIMKOD: TIntegerField;
    UretimeCikisIBQSTOKYERIKOD: TIntegerField;
    UretimeCikisIBQMAKBUZNO: TIntegerField;
    UretimeCikisIBQBILGIKOD: TIntegerField;
    UretimeCikisIBQKULLANKOD: TIntegerField;
    UretimeCikisIBQPERSONELKOD: TIntegerField;
    UretimeCikisIBQSISTEM: TIntegerField;
    UretimeCikisIBQCARIPARABIRIMKOD: TIntegerField;
    UretimeCikisIBQC_CARIPARABIRIM: TIBStringField;
    UretimeCikisIBQC_PARABIRIMI: TIBStringField;
    UretimeCikisIBQC_CARIADI: TIBStringField;
    UretimeCikisIBQC_STOKYERI: TIBStringField;
    UretimeCikisIBQC_KULLANICIADI: TIBStringField;
    UretimeCikisIBQC_PERSONEL: TIBStringField;
    UretimeCikisIBQFATURATARIH: TDateField;
    UretimeCikisIBQKDVSECIM: TIBStringField;
    UretimeCikisIBQC_GGMERKEZI: TIBStringField;
    UretimeCikisIBQIRSALIYENO: TIntegerField;
    UretimeCikisIBQEVRAKTARIH: TDateField;
    UretimeCikisIBQD_GIRISTUTAR: TFloatField;
    UretimeCikisIBQD_GIRISKDVTUTAR: TFloatField;
    UretimeCikisIBQD_GIRISMATRAH: TFloatField;
    UretimeCikisIBQD_CIKISTUTAR: TFloatField;
    UretimeCikisIBQD_CIKISKDVTUTAR: TFloatField;
    UretimeCikisIBQD_CIKISMATRAH: TFloatField;
    UretimeCikisIBQISLEMTUR: TIBStringField;
    UretimeCikisBodroIBQBODROKOD: TIntegerField;
    UretimeCikisBodroIBQSIRANO: TIntegerField;
    UretimeCikisBodroIBQISLEMTUR: TIBStringField;
    UretimeCikisBodroIBQC_ISLEMTURKOD: TIntegerField;
    UretimeCikisBodroIBQCARIKOD: TIntegerField;
    UretimeCikisBodroIBQPARABIRIMKOD: TIntegerField;
    UretimeCikisBodroIBQTARIH: TDateField;
    UretimeCikisBodroIBQSTOKKOD: TIntegerField;
    UretimeCikisBodroIBQSTOKNO: TIntegerField;
    UretimeCikisBodroIBQBARKOD: TIBStringField;
    UretimeCikisBodroIBQSTOKADI: TIBStringField;
    UretimeCikisBodroIBQMIKTAR: TFloatField;
    UretimeCikisBodroIBQMIKTARCARPAN: TIntegerField;
    UretimeCikisBodroIBQGIRISMIKTAR: TFloatField;
    UretimeCikisBodroIBQCIKISMIKTAR: TFloatField;
    UretimeCikisBodroIBQBIRIM: TIBStringField;
    UretimeCikisBodroIBQBIRIMFIYAT: TFloatField;
    UretimeCikisBodroIBQGIRISFIYAT: TFloatField;
    UretimeCikisBodroIBQCIKISFIYAT: TFloatField;
    UretimeCikisBodroIBQCIKISTUTAR: TFloatField;
    UretimeCikisBodroIBQGIRISTUTAR: TFloatField;
    UretimeCikisBodroIBQGIRISMATRAHI: TFloatField;
    UretimeCikisBodroIBQCIKISMATRAHI: TFloatField;
    UretimeCikisBodroIBQISKONTO1: TFloatField;
    UretimeCikisBodroIBQISKONTO2: TFloatField;
    UretimeCikisBodroIBQISKONTO3: TFloatField;
    UretimeCikisBodroIBQISKONTO4: TFloatField;
    UretimeCikisBodroIBQKDVORANI: TFloatField;
    UretimeCikisBodroIBQBAKIYE: TFloatField;
    UretimeCikisBodroIBQDURUM: TIntegerField;
    UretimeCikisBodroIBQACIKLAMA: TIBStringField;
    UretimeCikisBodroIBQKAPATMA: TIntegerField;
    UretimeCikisBodroIBQVADE: TDateField;
    UretimeCikisBodroIBQFATURANO: TIntegerField;
    UretimeCikisBodroIBQSTOKYERIKOD: TIntegerField;
    UretimeCikisBodroIBQISLEMKURU: TFloatField;
    UretimeCikisBodroIBQGELGITKOD: TIBStringField;
    UretimeCikisBodroIBQPERSONELKOD: TIntegerField;
    UretimeCikisBodroIBQKULLANKOD: TIntegerField;
    UretimeCikisBodroIBQSISTEM: TIntegerField;
    UretimeCikisBodroIBQEVRAKDURUMU: TIntegerField;
    UretimeCikisBodroIBQSERINO: TIBStringField;
    UretimeCikisBodroIBQCARIHESAPILISKI: TIntegerField;
    UretimeCikisBodroIBQC_CARIADI: TIBStringField;
    UretimeCikisBodroIBQC_STOKYERI: TIBStringField;
    UretimeCikisBodroIBQC_KULLANICIADI: TIBStringField;
    UretimeCikisBodroIBQC_PARABIRIMI: TIBStringField;
    UretimeCikisBodroIBQC_REELGIRIS: TFloatField;
    UretimeCikisBodroIBQC_REELCIKIS: TFloatField;
    UretimeCikisBodroIBQISLEMKOD: TIntegerField;
    UretimeCikisBodroIBQKDVSECIM: TIBStringField;
    UretimeCikisBodroIBQC_TLGIRISTUTARI: TFloatField;
    UretimeCikisBodroIBQC_TLGIRISMATRAHI: TFloatField;
    UretimeCikisBodroIBQC_TLCIKISTUTARI: TFloatField;
    UretimeCikisBodroIBQC_TLCIKISMATRAHI: TFloatField;
    UretimeCikisBodroIBQC_TLBIRIMFIYAT: TFloatField;
    UretimeCikisBodroIBQC_GGMERKEZI: TIBStringField;
    UretimeCikisBodroIBQC_GIRISKDVTUTAR: TFloatField;
    UretimeCikisBodroIBQC_CIKISKDVTUTAR: TFloatField;
    UretimeCikisBodroIBQC_TLGIRISKDVTUTAR: TFloatField;
    UretimeCikisBodroIBQC_TLCIKISKDVTUTARI: TFloatField;
    procedure StokGirisIBQNewRecord(DataSet: TDataSet);
    procedure StokGirisIBQAfterPost(DataSet: TDataSet);
    procedure GirisBodroIBQNewRecord(DataSet: TDataSet);
    procedure GirisBodroIBQAfterPost(DataSet: TDataSet);
    procedure GirisBodroIBQBARKODChange(Sender: TField);
    procedure StokCikisIBQAfterPost(DataSet: TDataSet);
    procedure StokCikisIBQNewRecord(DataSet: TDataSet);
    procedure CikisBodroIBQAfterPost(DataSet: TDataSet);
    procedure CikisBodroIBQNewRecord(DataSet: TDataSet);
    procedure CikisBodroIBQBARKODChange(Sender: TField);
    procedure StokTransferIBQAfterPost(DataSet: TDataSet);
    procedure StokTransferBodroIBQAfterPost(DataSet: TDataSet);
    procedure StokTransferIBQNewRecord(DataSet: TDataSet);
    procedure StokTransferBodroIBQNewRecord(DataSet: TDataSet);
    procedure StokTransferIBQAfterDelete(DataSet: TDataSet);
    procedure AltUstBilgiIBQAfterPost(DataSet: TDataSet);
    procedure SayimFazlasiIBQAfterPost(DataSet: TDataSet);
    procedure SayimFazlasiIBQNewRecord(DataSet: TDataSet);
    procedure SayimFazlasiBodroIBQAfterPost(DataSet: TDataSet);
    procedure SayimFazlasiBodroIBQNewRecord(DataSet: TDataSet);
    procedure SayimFazlasiBodroIBQBARKODChange(Sender: TField);
    procedure UGBodroIBQAfterPost(DataSet: TDataSet);
    procedure UretimGirisIBQAfterPost(DataSet: TDataSet);
    procedure UretimGirisIBQNewRecord(DataSet: TDataSet);
    procedure UGBodroIBQNewRecord(DataSet: TDataSet);
    procedure UGBodroIBQBARKODChange(Sender: TField);
    procedure SayimEksigiIBQNewRecord(DataSet: TDataSet);
    procedure SayimEksigiIBQAfterPost(DataSet: TDataSet);
    procedure SEBodroIBQAfterPost(DataSet: TDataSet);
    procedure SEBodroIBQNewRecord(DataSet: TDataSet);
    procedure SarfIBQAfterPost(DataSet: TDataSet);
    procedure SarfIBQNewRecord(DataSet: TDataSet);
    procedure SarfBodroIBQNewRecord(DataSet: TDataSet);
    procedure FireIBQAfterPost(DataSet: TDataSet);
    procedure FireIBQNewRecord(DataSet: TDataSet);
    procedure FireBodroIBQNewRecord(DataSet: TDataSet);
    procedure FireBodroIBQBARKODChange(Sender: TField);
    procedure SarfBodroIBQBARKODChange(Sender: TField);
    procedure SEBodroIBQBARKODChange(Sender: TField);
    procedure UretimeCikisIBQAfterPost(DataSet: TDataSet);
    procedure UretimeCikisIBQNewRecord(DataSet: TDataSet);
    procedure UretimeCikisBodroIBQNewRecord(DataSet: TDataSet);
    procedure UretimeCikisBodroIBQAfterPost(DataSet: TDataSet);
    procedure SarfBodroIBQAfterPost(DataSet: TDataSet);
    procedure FireBodroIBQAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMStokislem: TDMStokislem;
  BarkodluGiris,BarkodluCikis: boolean;

implementation

{$R *.dfm}
Uses DataDM, SabitDM, StokDM;
procedure TDMStokislem.StokGirisIBQNewRecord(DataSet: TDataSet);
begin
        StokGirisIBQISLEMTUR.AsString  := 'Stok Giriþi';
        StokGirisIBQTARIH.AsDateTime := BugununTarihi;
        StokGirisIBQFATURATARIH.AsDateTime := BugununTarihi;
        StokGirisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        StokGirisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        StokGirisIBQKDVSECIM.AsString := 'Hariç';
        StokGirisIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        StokGirisIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.StokGirisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.GirisBodroIBQNewRecord(DataSet: TDataSet);
begin
        GirisBodroIBQISLEMKOD.AsInteger := StokGirisIBQISLEMKOD.AsInteger;
        GirisBodroIBQISLEMTUR.AsString := 'Stok Giriþi';
        GirisBodroIBQKDVSECIM.AsString := StokGirisIBQKDVSECIM.AsString;
        GirisBodroIBQTARIH.AsDateTime := StokGirisIBQTARIH.AsDateTime;
        GirisBodroIBQVADE.AsDateTime := StokGirisIBQTARIH.AsDateTime;
        GirisBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        GirisBodroIBQSTOKYERIKOD.AsInteger := StokGirisIBQSTOKYERIKOD.AsInteger;

end;

procedure TDMStokislem.GirisBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := GirisBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        StokGirisIBQ.Refresh;
        GirisBodroIBQ.GotoBookmark(yer);
end;


procedure TDMStokislem.GirisBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FStokGiris') <> nil then
        if GirisBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', GirisBodroIBQBARKOD.AsString,[]) Then
        Begin
                if GirisBodroIBQSTOKNO.AsString='' Then
                Begin
                        GirisBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        GirisBodroIBQ.Post;
                        GirisBodroIBQ.Edit;
                        BarkodluGiris := True;
                end
                else
                if GirisBodroIBQSTOKNO.NewValue=GirisBodroIBQSTOKNO.OldValue Then
                        GirisBodroIBQBARKOD.NewValue := GirisBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                GirisBodroIBQSTOKNO.Clear;
                GirisBodroIBQGIRISMIKTAR.Clear;
                GirisBodroIBQBIRIMFIYAT.Clear;
                GirisBodroIBQBIRIM.Clear;
                GirisBodroIBQKDVORANI.Clear;
                GirisBodroIBQSTOKADI.Clear;
                GirisBodroIBQISKONTO1.Clear;
                GirisBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.StokCikisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.StokCikisIBQNewRecord(DataSet: TDataSet);
begin
        StokCikisIBQISLEMTUR.AsString  := 'Stok Çýkýþý';
        StokCikisIBQTARIH.AsDateTime := BugununTarihi;
        StokCikisIBQFATURATARIH.AsDateTime := BugununTarihi;
        StokCikisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        StokCikisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        StokCikisIBQKDVSECIM.AsString := 'Hariç';
        StokCikisIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        StokCikisIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.CikisBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := CikisBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        StokCikisIBQ.Refresh;
        CikisBodroIBQ.GotoBookmark(yer);
end;

procedure TDMStokislem.CikisBodroIBQNewRecord(DataSet: TDataSet);
begin
        CikisBodroIBQISLEMKOD.AsInteger := StokCikisIBQISLEMKOD.AsInteger;
        CikisBodroIBQISLEMTUR.AsString := 'Stok Çýkýþý';
        CikisBodroIBQKDVSECIM.AsString := StokCikisIBQKDVSECIM.AsString;
        CikisBodroIBQTARIH.AsDateTime := StokCikisIBQTARIH.AsDateTime;
        CikisBodroIBQVADE.AsDateTime := StokCikisIBQTARIH.AsDateTime;
        CikisBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CikisBodroIBQSTOKYERIKOD.AsInteger := StokCikisIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.CikisBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FStokCikis') <> nil then
        if CikisBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', CikisBodroIBQBARKOD.AsString,[]) Then
        Begin
                if CikisBodroIBQSTOKNO.AsString='' Then
                Begin
                        CikisBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        CikisBodroIBQ.Post;
                        CikisBodroIBQ.Edit;
                        BarkodluCikis := True;
                end
                else
                if CikisBodroIBQSTOKNO.NewValue=CikisBodroIBQSTOKNO.OldValue Then
                        CikisBodroIBQBARKOD.NewValue := CikisBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                CikisBodroIBQSTOKNO.Clear;
                CikisBodroIBQGIRISMIKTAR.Clear;
                CikisBodroIBQBIRIMFIYAT.Clear;
                CikisBodroIBQBIRIM.Clear;
                CikisBodroIBQKDVORANI.Clear;
                CikisBodroIBQSTOKADI.Clear;
                CikisBodroIBQISKONTO1.Clear;
                CikisBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.StokTransferIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.StokTransferBodroIBQAfterPost(DataSet: TDataSet);
var
        yer: pointer;
begin
        DMData.Kayit(DataSet);
        yer := StokTransferBodroIBQ.GetBookmark;
        StokTransferIBQ.Refresh;
        StokTransferBodroIBQ.GotoBookmark(yer);
end;

procedure TDMStokislem.StokTransferIBQNewRecord(DataSet: TDataSet);
begin
        StokTransferIBQISLEMTUR.AsString  := 'Stok Transfer Çýkýþý';
        StokTransferIBQTARIH.AsDateTime := BugununTarihi;
        StokTransferIBQFATURATARIH.AsDateTime := BugununTarihi;
        StokTransferIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        StokTransferIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        StokTransferIBQKDVSECIM.AsString := 'Hariç';
        StokTransferIBQCARIHESAPILISKI.AsInteger := 0;
end;

procedure TDMStokislem.StokTransferBodroIBQNewRecord(DataSet: TDataSet);
begin
        StokTransferBodroIBQISLEMKOD.AsInteger := StokTransferIBQISLEMKOD.AsInteger;
        StokTransferBodroIBQISLEMTUR.AsString := 'Stok Transfer Çýkýþý';
        StokTransferBodroIBQKDVSECIM.AsString := StokTransferIBQKDVSECIM.AsString;
        StokTransferBodroIBQTARIH.AsDateTime := StokTransferIBQTARIH.AsDateTime;
        StokTransferBodroIBQVADE.AsDateTime := StokTransferIBQTARIH.AsDateTime;
        StokTransferBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMStokislem.StokTransferIBQAfterDelete(DataSet: TDataSet);
var
        yer: pointer;
begin
        DMData.Kayit(DataSet);
        yer := StokTransferBodroIBQ.GetBookmark;
        StokTransferIBQ.Refresh;
        StokTransferBodroIBQ.GotoBookmark(yer);

end;

procedure TDMStokislem.AltUstBilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.SayimFazlasiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.SayimFazlasiIBQNewRecord(DataSet: TDataSet);
begin
        SayimFazlasiIBQISLEMTUR.AsString  := 'Sayým Fazlasý';
        SayimFazlasiIBQTARIH.AsDateTime := BugununTarihi;
        SayimFazlasiIBQFATURATARIH.AsDateTime := BugununTarihi;
        SayimFazlasiIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SayimFazlasiIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SayimFazlasiIBQKDVSECIM.AsString := 'Hariç';
        SayimFazlasiIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        SayimFazlasiIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.SayimFazlasiBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := SayimFazlasiBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SayimFazlasiIBQ.Refresh;
        SayimFazlasiBodroIBQ.GotoBookmark(yer);

end;

procedure TDMStokislem.SayimFazlasiBodroIBQNewRecord(DataSet: TDataSet);
begin
        SayimFazlasiBodroIBQISLEMKOD.AsInteger := SayimFazlasiIBQISLEMKOD.AsInteger;
        SayimFazlasiBodroIBQISLEMTUR.AsString := 'Sayým Fazlasý';
        SayimFazlasiBodroIBQKDVSECIM.AsString := SayimFazlasiIBQKDVSECIM.AsString;
        SayimFazlasiBodroIBQTARIH.AsDateTime := SayimFazlasiIBQTARIH.AsDateTime;
        SayimFazlasiBodroIBQVADE.AsDateTime := SayimFazlasiIBQTARIH.AsDateTime;
        SayimFazlasiBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SayimFazlasiBodroIBQSTOKYERIKOD.AsInteger := SayimFazlasiIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.SayimFazlasiBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FSayimFazlasi') <> nil then
        if SayimFazlasiBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', SayimFazlasiBodroIBQBARKOD.AsString,[]) Then
        Begin
                if SayimFazlasiBodroIBQSTOKNO.AsString='' Then
                Begin
                        SayimFazlasiBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        SayimFazlasiBodroIBQ.Post;
                        SayimFazlasiBodroIBQ.Edit;
                        BarkodluGiris := True;
                end
                else
                if SayimFazlasiBodroIBQSTOKNO.NewValue=SayimFazlasiBodroIBQSTOKNO.OldValue Then
                        SayimFazlasiBodroIBQBARKOD.NewValue := SayimFazlasiBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                SayimFazlasiBodroIBQSTOKNO.Clear;
                SayimFazlasiBodroIBQGIRISMIKTAR.Clear;
                SayimFazlasiBodroIBQBIRIMFIYAT.Clear;
                SayimFazlasiBodroIBQBIRIM.Clear;
                SayimFazlasiBodroIBQKDVORANI.Clear;
                SayimFazlasiBodroIBQSTOKADI.Clear;
                SayimFazlasiBodroIBQISKONTO1.Clear;
                SayimFazlasiBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.UGBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := UGBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        UretimGirisIBQ.Refresh;
        UGBodroIBQ.GotoBookmark(yer);

end;

procedure TDMStokislem.UretimGirisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.UretimGirisIBQNewRecord(DataSet: TDataSet);
begin
        UretimGirisIBQISLEMTUR.AsString  := 'Üretimden Giriþ';
        UretimGirisIBQTARIH.AsDateTime := BugununTarihi;
        UretimGirisIBQFATURATARIH.AsDateTime := BugununTarihi;
        UretimGirisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        UretimGirisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        UretimGirisIBQKDVSECIM.AsString := 'Hariç';
        UretimGirisIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        UretimGirisIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.UGBodroIBQNewRecord(DataSet: TDataSet);
begin
        UGBodroIBQISLEMKOD.AsInteger := UretimGirisIBQISLEMKOD.AsInteger;
        UGBodroIBQISLEMTUR.AsString := 'Üretimden Giriþ';
        UGBodroIBQKDVSECIM.AsString := UretimGirisIBQKDVSECIM.AsString;
        UGBodroIBQTARIH.AsDateTime := UretimGirisIBQTARIH.AsDateTime;
        UGBodroIBQVADE.AsDateTime := UretimGirisIBQTARIH.AsDateTime;
        UGBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        UGBodroIBQSTOKYERIKOD.AsInteger := UretimGirisIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.UGBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FUretimdenGiris') <> nil then
        if UGBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', UGBodroIBQBARKOD.AsString,[]) Then
        Begin
                if UGBodroIBQSTOKNO.AsString='' Then
                Begin
                        UGBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        UGBodroIBQ.Post;
                        UGBodroIBQ.Edit;
                        BarkodluGiris := True;
                end
                else
                if UGBodroIBQSTOKNO.NewValue=UGBodroIBQSTOKNO.OldValue Then
                        UGBodroIBQBARKOD.NewValue := UGBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                UGBodroIBQSTOKNO.Clear;
                UGBodroIBQGIRISMIKTAR.Clear;
                UGBodroIBQBIRIMFIYAT.Clear;
                UGBodroIBQBIRIM.Clear;
                UGBodroIBQKDVORANI.Clear;
                UGBodroIBQSTOKADI.Clear;
                UGBodroIBQISKONTO1.Clear;
                UGBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.SayimEksigiIBQNewRecord(DataSet: TDataSet);
begin
        SayimEksigiIBQISLEMTUR.AsString  := 'Sayým Eksiði';
        SayimEksigiIBQTARIH.AsDateTime := BugununTarihi;
        SayimEksigiIBQFATURATARIH.AsDateTime := BugununTarihi;
        SayimEksigiIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SayimEksigiIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SayimEksigiIBQKDVSECIM.AsString := 'Hariç';
        SayimEksigiIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        SayimEksigiIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.SayimEksigiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.SEBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := SEBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SayimEksigiIBQ.Refresh;
        SEBodroIBQ.GotoBookmark(yer);

end;

procedure TDMStokislem.SEBodroIBQNewRecord(DataSet: TDataSet);
begin
        SEBodroIBQISLEMKOD.AsInteger := SayimEksigiIBQISLEMKOD.AsInteger;
        SEBodroIBQISLEMTUR.AsString := 'Sayým Eksiði';
        SEBodroIBQKDVSECIM.AsString := SayimEksigiIBQKDVSECIM.AsString;
        SEBodroIBQTARIH.AsDateTime := SayimEksigiIBQTARIH.AsDateTime;
        SEBodroIBQVADE.AsDateTime := SayimEksigiIBQTARIH.AsDateTime;
        SEBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SEBodroIBQSTOKYERIKOD.AsInteger := SayimEksigiIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.SarfIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.SarfIBQNewRecord(DataSet: TDataSet);
begin
        SarfIBQISLEMTUR.AsString  := 'Sarf';
        SarfIBQTARIH.AsDateTime := BugununTarihi;
        SarfIBQFATURATARIH.AsDateTime := BugununTarihi;
        SarfIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SarfIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SarfIBQKDVSECIM.AsString := 'Hariç';
        SarfIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        SarfIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.SarfBodroIBQNewRecord(DataSet: TDataSet);
begin
        SarfBodroIBQISLEMKOD.AsInteger := SarfIBQISLEMKOD.AsInteger;
        SarfBodroIBQISLEMTUR.AsString := 'Sarf';
        SarfBodroIBQKDVSECIM.AsString := SarfIBQKDVSECIM.AsString;
        SarfBodroIBQTARIH.AsDateTime := SarfIBQTARIH.AsDateTime;
        SarfBodroIBQVADE.AsDateTime := SarfIBQTARIH.AsDateTime;
        SarfBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SarfBodroIBQSTOKYERIKOD.AsInteger := SarfIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.FireIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.FireIBQNewRecord(DataSet: TDataSet);
begin
        FireIBQISLEMTUR.AsString  := 'Fire';
        FireIBQTARIH.AsDateTime := BugununTarihi;
        FireIBQFATURATARIH.AsDateTime := BugununTarihi;
        FireIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        FireIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        FireIBQKDVSECIM.AsString := 'Hariç';
        FireIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        FireIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.FireBodroIBQNewRecord(DataSet: TDataSet);
begin
        FireBodroIBQISLEMKOD.AsInteger := FireIBQISLEMKOD.AsInteger;
        FireBodroIBQISLEMTUR.AsString := 'Sarf';
        FireBodroIBQKDVSECIM.AsString := FireIBQKDVSECIM.AsString;
        FireBodroIBQTARIH.AsDateTime := FireIBQTARIH.AsDateTime;
        FireBodroIBQVADE.AsDateTime := FireIBQTARIH.AsDateTime;
        FireBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        FireBodroIBQSTOKYERIKOD.AsInteger := FireIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.FireBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FFire') <> nil then
        if FireBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', FireBodroIBQBARKOD.AsString,[]) Then
        Begin
                if FireBodroIBQSTOKNO.AsString='' Then
                Begin
                        FireBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        FireBodroIBQ.Post;
                        FireBodroIBQ.Edit;
                        BarkodluGiris := True;
                end
                else
                if FireBodroIBQSTOKNO.NewValue=FireBodroIBQSTOKNO.OldValue Then
                        FireBodroIBQBARKOD.NewValue := FireBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                FireBodroIBQSTOKNO.Clear;
                FireBodroIBQGIRISMIKTAR.Clear;
                FireBodroIBQBIRIMFIYAT.Clear;
                FireBodroIBQBIRIM.Clear;
                FireBodroIBQKDVORANI.Clear;
                FireBodroIBQSTOKADI.Clear;
                FireBodroIBQISKONTO1.Clear;
                FireBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.SarfBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FSarf') <> nil then
        if SarfBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', SarfBodroIBQBARKOD.AsString,[]) Then
        Begin
                if SarfBodroIBQSTOKNO.AsString='' Then
                Begin
                        SarfBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        SarfBodroIBQ.Post;
                        SarfBodroIBQ.Edit;
                        BarkodluGiris := True;
                end
                else
                if SarfBodroIBQSTOKNO.NewValue=SarfBodroIBQSTOKNO.OldValue Then
                        SarfBodroIBQBARKOD.NewValue := SarfBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                SarfBodroIBQSTOKNO.Clear;
                SarfBodroIBQGIRISMIKTAR.Clear;
                SarfBodroIBQBIRIMFIYAT.Clear;
                SarfBodroIBQBIRIM.Clear;
                SarfBodroIBQKDVORANI.Clear;
                SarfBodroIBQSTOKADI.Clear;
                SarfBodroIBQISKONTO1.Clear;
                SarfBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.SEBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FSayimEksigi') <> nil then
        if SEBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', SEBodroIBQBARKOD.AsString,[]) Then
        Begin
                if SEBodroIBQSTOKNO.AsString='' Then
                Begin
                        SEBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        SEBodroIBQ.Post;
                        SEBodroIBQ.Edit;
                        BarkodluGiris := True;
                end
                else
                if SEBodroIBQSTOKNO.NewValue=SEBodroIBQSTOKNO.OldValue Then
                        SEBodroIBQBARKOD.NewValue := SEBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                SEBodroIBQSTOKNO.Clear;
                SEBodroIBQGIRISMIKTAR.Clear;
                SEBodroIBQBIRIMFIYAT.Clear;
                SEBodroIBQBIRIM.Clear;
                SEBodroIBQKDVORANI.Clear;
                SEBodroIBQSTOKADI.Clear;
                SEBodroIBQISKONTO1.Clear;
                SEBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMStokislem.UretimeCikisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStokislem.UretimeCikisIBQNewRecord(DataSet: TDataSet);
begin
        UretimeCikisIBQISLEMTUR.AsString  := 'Üretime Çýkýþ';
        UretimeCikisIBQTARIH.AsDateTime := BugununTarihi;
        UretimeCikisIBQFATURATARIH.AsDateTime := BugununTarihi;
        UretimeCikisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        UretimeCikisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        UretimeCikisIBQKDVSECIM.AsString := 'Hariç';
        UretimeCikisIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        UretimeCikisIBQCARIHESAPILISKI.AsInteger := 1;
end;

procedure TDMStokislem.UretimeCikisBodroIBQNewRecord(DataSet: TDataSet);
begin
        UretimeCikisBodroIBQISLEMKOD.AsInteger := UretimeCikisIBQISLEMKOD.AsInteger;
        UretimeCikisBodroIBQISLEMTUR.AsString := 'Üretime Çýkýþ';
        UretimeCikisBodroIBQKDVSECIM.AsString := UretimeCikisIBQKDVSECIM.AsString;
        UretimeCikisBodroIBQTARIH.AsDateTime := UretimeCikisIBQTARIH.AsDateTime;
        UretimeCikisBodroIBQVADE.AsDateTime := UretimeCikisIBQTARIH.AsDateTime;
        UretimeCikisBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        UretimeCikisBodroIBQSTOKYERIKOD.AsInteger := UretimeCikisIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMStokislem.UretimeCikisBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := UretimeCikisBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        UretimeCikisIBQ.Refresh;
        UretimeCikisBodroIBQ.GotoBookmark(yer);

end;

procedure TDMStokislem.SarfBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := SarfBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SarfIBQ.Refresh;
        SarfBodroIBQ.GotoBookmark(yer);

end;

procedure TDMStokislem.FireBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := FireBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        FireIBQ.Refresh;
        FireBodroIBQ.GotoBookmark(yer);

end;

end.
