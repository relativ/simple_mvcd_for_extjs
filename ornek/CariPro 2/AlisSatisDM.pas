unit AlisSatisDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery,forms,windows,Controls,Dialogs,
  IBStoredProc;

type
  TDMAlisSatis = class(TDataModule)
    AlisIBQ: TIBQuery;
    AlisUSQL: TIBUpdateSQL;
    AlisDS: TDataSource;
    AlisBodroIBQ: TIBQuery;
    AlisBodroUSQL: TIBUpdateSQL;
    AlisBodroDS: TDataSource;
    AlisBilgiIBQ: TIBQuery;
    AlisBilgiUSQL: TIBUpdateSQL;
    AlisBilgiDS: TDataSource;
    SatisIBQ: TIBQuery;
    SatisUSQL: TIBUpdateSQL;
    SatisDS: TDataSource;
    SatisBodroIBQ: TIBQuery;
    SatisBodroUSQL: TIBUpdateSQL;
    SatisBodroDS: TDataSource;
    AlisIBQISLEMKOD: TIntegerField;
    AlisIBQCARIKOD: TIntegerField;
    AlisIBQALISSATISNO: TIntegerField;
    AlisIBQTARIH: TDateField;
    AlisIBQIRSALIYETARIH: TDateField;
    AlisIBQSAAT: TTimeField;
    AlisIBQACIKLAMA: TIBStringField;
    AlisIBQALISTUTAR: TFloatField;
    AlisIBQSATISTUTAR: TFloatField;
    AlisIBQALISMATRAH: TFloatField;
    AlisIBQALISKDVTUTAR: TFloatField;
    AlisIBQSATISMATRAH: TFloatField;
    AlisIBQSATISKDVTUTAR: TFloatField;
    AlisIBQD_TEDIYE: TFloatField;
    AlisIBQD_TAHSILAT: TFloatField;
    AlisIBQCARIKURU: TFloatField;
    AlisIBQISLEMKURU: TFloatField;
    AlisIBQTAHSILATMATRAH: TFloatField;
    AlisIBQTEDIYEMATRAH: TFloatField;
    AlisIBQKAPATMA: TIntegerField;
    AlisIBQCARINO: TIntegerField;
    AlisIBQGELGITKOD: TIBStringField;
    AlisIBQEVRAKNO: TIntegerField;
    AlisIBQBELGENO: TIntegerField;
    AlisIBQBAGLANTINO: TIntegerField;
    AlisIBQTAHSILKOD: TIntegerField;
    AlisIBQBODROKOD: TIntegerField;
    AlisIBQCARIHESAPILISKI: TIntegerField;
    AlisIBQPARABIRIMKOD: TIntegerField;
    AlisIBQSTOKYERIKOD: TIntegerField;
    AlisIBQMAKBUZNO: TIntegerField;
    AlisIBQBILGIKOD: TIntegerField;
    AlisIBQKULLANKOD: TIntegerField;
    AlisIBQPERSONELKOD: TIntegerField;
    AlisIBQSISTEM: TIntegerField;
    AlisIBQTAHSILEDILEN: TFloatField;
    AlisIBQODENEN: TFloatField;
    AlisIBQKALAN: TFloatField;
    AlisIBQCARIPARABIRIMKOD: TIntegerField;
    AlisIBQC_CARIPARABIRIM: TIBStringField;
    AlisIBQC_PARABIRIMI: TIBStringField;
    AlisIBQC_CARIADI: TIBStringField;
    AlisIBQC_STOKYERI: TIBStringField;
    AlisIBQC_KULLANICIADI: TIBStringField;
    AlisIBQC_PERSONEL: TIBStringField;
    AlisIBQFATURATARIH: TDateField;
    AlisIBQKDVSECIM: TIBStringField;
    AlisIBQISLEMTUR: TIBStringField;
    AlisIBQISLEMTURKOD: TIntegerField;
    AlisIBQD_ALISTUTAR: TFloatField;
    AlisIBQD_ALISKDVTUTAR: TFloatField;
    AlisIBQD_ALISMATRAH: TFloatField;
    AlisIBQC_GGMERKEZI: TIBStringField;
    AlisBodroIBQBODROKOD: TIntegerField;
    AlisBodroIBQSIRANO: TIntegerField;
    AlisBodroIBQISLEMTUR: TIBStringField;
    AlisBodroIBQC_ISLEMTURKOD: TIntegerField;
    AlisBodroIBQCARIKOD: TIntegerField;
    AlisBodroIBQPARABIRIMKOD: TIntegerField;
    AlisBodroIBQTARIH: TDateField;
    AlisBodroIBQSTOKKOD: TIntegerField;
    AlisBodroIBQSTOKNO: TIntegerField;
    AlisBodroIBQBARKOD: TIBStringField;
    AlisBodroIBQSTOKADI: TIBStringField;
    AlisBodroIBQMIKTAR: TFloatField;
    AlisBodroIBQMIKTARCARPAN: TIntegerField;
    AlisBodroIBQGIRISMIKTAR: TFloatField;
    AlisBodroIBQCIKISMIKTAR: TFloatField;
    AlisBodroIBQBIRIM: TIBStringField;
    AlisBodroIBQBIRIMFIYAT: TFloatField;
    AlisBodroIBQALISFIYAT: TFloatField;
    AlisBodroIBQSATISTUTAR: TFloatField;
    AlisBodroIBQSATISFIYAT: TFloatField;
    AlisBodroIBQALISTUTAR: TFloatField;
    AlisBodroIBQALISMATRAHI: TFloatField;
    AlisBodroIBQSATISMATRAHI: TFloatField;
    AlisBodroIBQISKONTO1: TFloatField;
    AlisBodroIBQISKONTO2: TFloatField;
    AlisBodroIBQISKONTO3: TFloatField;
    AlisBodroIBQISKONTO4: TFloatField;
    AlisBodroIBQKDVORANI: TFloatField;
    AlisBodroIBQBAKIYE: TFloatField;
    AlisBodroIBQDURUM: TIntegerField;
    AlisBodroIBQACIKLAMA: TIBStringField;
    AlisBodroIBQKAPATMA: TIntegerField;
    AlisBodroIBQVADE: TDateField;
    AlisBodroIBQFATURANO: TIntegerField;
    AlisBodroIBQSTOKYERIKOD: TIntegerField;
    AlisBodroIBQISLEMKURU: TFloatField;
    AlisBodroIBQGELGITKOD: TIBStringField;
    AlisBodroIBQPERSONELKOD: TIntegerField;
    AlisBodroIBQKULLANKOD: TIntegerField;
    AlisBodroIBQSISTEM: TIntegerField;
    AlisBodroIBQEVRAKDURUMU: TIntegerField;
    AlisBodroIBQSERINO: TIBStringField;
    AlisBodroIBQCARIHESAPILISKI: TIntegerField;
    AlisBodroIBQC_CARIADI: TIBStringField;
    AlisBodroIBQC_STOKYERI: TIBStringField;
    AlisBodroIBQC_KULLANICIADI: TIBStringField;
    AlisBodroIBQC_PARABIRIMI: TIBStringField;
    AlisBodroIBQC_REELALIS: TFloatField;
    AlisBodroIBQC_REELSATIS: TFloatField;
    AlisBodroIBQISLEMKOD: TIntegerField;
    AlisBodroIBQKDVSECIM: TIBStringField;
    AlisBodroIBQC_TLALISTUTARI: TFloatField;
    AlisBodroIBQC_TLALISMATRAHI: TFloatField;
    AlisBodroIBQC_TLALISKDVTUTAR: TFloatField;
    AlisBodroIBQC_TLSATISTUTARI: TFloatField;
    AlisBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    AlisBodroIBQC_TLSATISMATRAHI: TFloatField;
    AlisBodroIBQC_TLBIRIMFIYAT: TFloatField;
    AlisBodroIBQC_GGMERKEZI: TIBStringField;
    AlisIBQALTISKONTO: TFloatField;
    AlisBilgiIBQBILGIKOD: TIntegerField;
    AlisBilgiIBQISLEMKOD: TIntegerField;
    AlisBilgiIBQALTBILGI: TMemoField;
    AlisBilgiIBQUSTBILGI: TMemoField;
    AlisBilgiIBQALTISKONTO: TFloatField;
    AlisBilgiIBQISLEMTURKOD: TIntegerField;
    AlisBodroIBQC_ALISKDVTUTAR: TFloatField;
    AlisBodroIBQC_SATISKDVTUTAR: TFloatField;
    AlisIBQVADE: TDateField;
    AlisIBQD_SATISTUTAR: TFloatField;
    AlisIBQD_SATISKDVTUTAR: TFloatField;
    AlisIBQD_SATISMATRAH: TFloatField;
    AlisIBQIRSALIYENO: TIntegerField;
    AlisIBQEVRAKTARIH: TDateField;
    SatisIBQISLEMKOD: TIntegerField;
    SatisIBQCARIKOD: TIntegerField;
    SatisIBQALISSATISNO: TIntegerField;
    SatisIBQTARIH: TDateField;
    SatisIBQIRSALIYETARIH: TDateField;
    SatisIBQSAAT: TTimeField;
    SatisIBQACIKLAMA: TIBStringField;
    SatisIBQALISTUTAR: TFloatField;
    SatisIBQSATISTUTAR: TFloatField;
    SatisIBQALISMATRAH: TFloatField;
    SatisIBQALISKDVTUTAR: TFloatField;
    SatisIBQSATISMATRAH: TFloatField;
    SatisIBQSATISKDVTUTAR: TFloatField;
    SatisIBQD_TEDIYE: TFloatField;
    SatisIBQD_TAHSILAT: TFloatField;
    SatisIBQCARIKURU: TFloatField;
    SatisIBQISLEMKURU: TFloatField;
    SatisIBQTAHSILATMATRAH: TFloatField;
    SatisIBQTEDIYEMATRAH: TFloatField;
    SatisIBQKAPATMA: TIntegerField;
    SatisIBQCARINO: TIntegerField;
    SatisIBQGELGITKOD: TIBStringField;
    SatisIBQEVRAKNO: TIntegerField;
    SatisIBQBELGENO: TIntegerField;
    SatisIBQBAGLANTINO: TIntegerField;
    SatisIBQTAHSILKOD: TIntegerField;
    SatisIBQBODROKOD: TIntegerField;
    SatisIBQCARIHESAPILISKI: TIntegerField;
    SatisIBQPARABIRIMKOD: TIntegerField;
    SatisIBQSTOKYERIKOD: TIntegerField;
    SatisIBQMAKBUZNO: TIntegerField;
    SatisIBQBILGIKOD: TIntegerField;
    SatisIBQKULLANKOD: TIntegerField;
    SatisIBQPERSONELKOD: TIntegerField;
    SatisIBQSISTEM: TIntegerField;
    SatisIBQTAHSILEDILEN: TFloatField;
    SatisIBQODENEN: TFloatField;
    SatisIBQKALAN: TFloatField;
    SatisIBQCARIPARABIRIMKOD: TIntegerField;
    SatisIBQC_CARIPARABIRIM: TIBStringField;
    SatisIBQC_PARABIRIMI: TIBStringField;
    SatisIBQC_CARIADI: TIBStringField;
    SatisIBQC_STOKYERI: TIBStringField;
    SatisIBQC_KULLANICIADI: TIBStringField;
    SatisIBQC_PERSONEL: TIBStringField;
    SatisIBQFATURATARIH: TDateField;
    SatisIBQKDVSECIM: TIBStringField;
    SatisIBQISLEMTUR: TIBStringField;
    SatisIBQISLEMTURKOD: TIntegerField;
    SatisIBQD_ALISTUTAR: TFloatField;
    SatisIBQD_ALISKDVTUTAR: TFloatField;
    SatisIBQD_ALISMATRAH: TFloatField;
    SatisIBQC_GGMERKEZI: TIBStringField;
    SatisIBQALTISKONTO: TFloatField;
    SatisIBQVADE: TDateField;
    SatisIBQD_SATISTUTAR: TFloatField;
    SatisIBQD_SATISKDVTUTAR: TFloatField;
    SatisIBQD_SATISMATRAH: TFloatField;
    SatisIBQIRSALIYENO: TIntegerField;
    SatisIBQEVRAKTARIH: TDateField;
    SatisBodroIBQBODROKOD: TIntegerField;
    SatisBodroIBQSIRANO: TIntegerField;
    SatisBodroIBQISLEMTUR: TIBStringField;
    SatisBodroIBQC_ISLEMTURKOD: TIntegerField;
    SatisBodroIBQCARIKOD: TIntegerField;
    SatisBodroIBQPARABIRIMKOD: TIntegerField;
    SatisBodroIBQTARIH: TDateField;
    SatisBodroIBQSTOKKOD: TIntegerField;
    SatisBodroIBQSTOKNO: TIntegerField;
    SatisBodroIBQBARKOD: TIBStringField;
    SatisBodroIBQSTOKADI: TIBStringField;
    SatisBodroIBQMIKTAR: TFloatField;
    SatisBodroIBQMIKTARCARPAN: TIntegerField;
    SatisBodroIBQGIRISMIKTAR: TFloatField;
    SatisBodroIBQCIKISMIKTAR: TFloatField;
    SatisBodroIBQBIRIM: TIBStringField;
    SatisBodroIBQBIRIMFIYAT: TFloatField;
    SatisBodroIBQALISFIYAT: TFloatField;
    SatisBodroIBQSATISTUTAR: TFloatField;
    SatisBodroIBQSATISFIYAT: TFloatField;
    SatisBodroIBQALISTUTAR: TFloatField;
    SatisBodroIBQALISMATRAHI: TFloatField;
    SatisBodroIBQSATISMATRAHI: TFloatField;
    SatisBodroIBQISKONTO1: TFloatField;
    SatisBodroIBQISKONTO2: TFloatField;
    SatisBodroIBQISKONTO3: TFloatField;
    SatisBodroIBQISKONTO4: TFloatField;
    SatisBodroIBQKDVORANI: TFloatField;
    SatisBodroIBQBAKIYE: TFloatField;
    SatisBodroIBQDURUM: TIntegerField;
    SatisBodroIBQACIKLAMA: TIBStringField;
    SatisBodroIBQKAPATMA: TIntegerField;
    SatisBodroIBQVADE: TDateField;
    SatisBodroIBQFATURANO: TIntegerField;
    SatisBodroIBQSTOKYERIKOD: TIntegerField;
    SatisBodroIBQISLEMKURU: TFloatField;
    SatisBodroIBQGELGITKOD: TIBStringField;
    SatisBodroIBQPERSONELKOD: TIntegerField;
    SatisBodroIBQKULLANKOD: TIntegerField;
    SatisBodroIBQSISTEM: TIntegerField;
    SatisBodroIBQEVRAKDURUMU: TIntegerField;
    SatisBodroIBQSERINO: TIBStringField;
    SatisBodroIBQCARIHESAPILISKI: TIntegerField;
    SatisBodroIBQC_CARIADI: TIBStringField;
    SatisBodroIBQC_STOKYERI: TIBStringField;
    SatisBodroIBQC_KULLANICIADI: TIBStringField;
    SatisBodroIBQC_PARABIRIMI: TIBStringField;
    SatisBodroIBQC_REELALIS: TFloatField;
    SatisBodroIBQC_REELSATIS: TFloatField;
    SatisBodroIBQISLEMKOD: TIntegerField;
    SatisBodroIBQKDVSECIM: TIBStringField;
    SatisBodroIBQC_TLALISTUTARI: TFloatField;
    SatisBodroIBQC_TLALISMATRAHI: TFloatField;
    SatisBodroIBQC_TLALISKDVTUTAR: TFloatField;
    SatisBodroIBQC_TLSATISTUTARI: TFloatField;
    SatisBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    SatisBodroIBQC_TLSATISMATRAHI: TFloatField;
    SatisBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SatisBodroIBQC_GGMERKEZI: TIBStringField;
    SatisBodroIBQC_ALISKDVTUTAR: TFloatField;
    SatisBodroIBQC_SATISKDVTUTAR: TFloatField;
    SatisBilgiIBQ: TIBQuery;
    SatisBilgiUSQL: TIBUpdateSQL;
    SatisBilgiDS: TDataSource;
    SatisBilgiIBQBILGIKOD: TIntegerField;
    SatisBilgiIBQISLEMKOD: TIntegerField;
    SatisBilgiIBQALTBILGI: TMemoField;
    SatisBilgiIBQUSTBILGI: TMemoField;
    SatisBilgiIBQALTISKONTO: TFloatField;
    SatisBilgiIBQISLEMTURKOD: TIntegerField;
    SatisBodroIBQMALIYETFIYATI: TFloatField;
    SatisBodroIBQC_MALIYETTUTARI: TFloatField;
    SatisBodroIBQC_KARZARAR: TFloatField;
    AlisIBQC_FIYATSEC: TIntegerField;
    SatisIBQC_FIYATSEC: TIntegerField;
    AcikSatislarIBQ: TIBQuery;
    AcikSatislarUSQL: TIBUpdateSQL;
    AcikSatislarDS: TDataSource;
    AcikSatislarIBQISLEMKOD: TIntegerField;
    AcikSatislarIBQCARIKOD: TIntegerField;
    AcikSatislarIBQALISSATISNO: TIntegerField;
    AcikSatislarIBQTARIH: TDateField;
    AcikSatislarIBQIRSALIYETARIH: TDateField;
    AcikSatislarIBQSAAT: TTimeField;
    AcikSatislarIBQACIKLAMA: TIBStringField;
    AcikSatislarIBQALISTUTAR: TFloatField;
    AcikSatislarIBQSATISTUTAR: TFloatField;
    AcikSatislarIBQALISMATRAH: TFloatField;
    AcikSatislarIBQALISKDVTUTAR: TFloatField;
    AcikSatislarIBQSATISMATRAH: TFloatField;
    AcikSatislarIBQSATISKDVTUTAR: TFloatField;
    AcikSatislarIBQD_TEDIYE: TFloatField;
    AcikSatislarIBQD_TAHSILAT: TFloatField;
    AcikSatislarIBQCARIKURU: TFloatField;
    AcikSatislarIBQISLEMKURU: TFloatField;
    AcikSatislarIBQTAHSILATMATRAH: TFloatField;
    AcikSatislarIBQTEDIYEMATRAH: TFloatField;
    AcikSatislarIBQKAPATMA: TIntegerField;
    AcikSatislarIBQCARINO: TIntegerField;
    AcikSatislarIBQGELGITKOD: TIBStringField;
    AcikSatislarIBQEVRAKNO: TIntegerField;
    AcikSatislarIBQBELGENO: TIntegerField;
    AcikSatislarIBQBAGLANTINO: TIntegerField;
    AcikSatislarIBQTAHSILKOD: TIntegerField;
    AcikSatislarIBQBODROKOD: TIntegerField;
    AcikSatislarIBQCARIHESAPILISKI: TIntegerField;
    AcikSatislarIBQPARABIRIMKOD: TIntegerField;
    AcikSatislarIBQSTOKYERIKOD: TIntegerField;
    AcikSatislarIBQMAKBUZNO: TIntegerField;
    AcikSatislarIBQBILGIKOD: TIntegerField;
    AcikSatislarIBQKULLANKOD: TIntegerField;
    AcikSatislarIBQPERSONELKOD: TIntegerField;
    AcikSatislarIBQSISTEM: TIntegerField;
    AcikSatislarIBQTAHSILEDILEN: TFloatField;
    AcikSatislarIBQODENEN: TFloatField;
    AcikSatislarIBQKALAN: TFloatField;
    AcikSatislarIBQCARIPARABIRIMKOD: TIntegerField;
    AcikSatislarIBQC_CARIPARABIRIM: TIBStringField;
    AcikSatislarIBQC_PARABIRIMI: TIBStringField;
    AcikSatislarIBQC_CARIADI: TIBStringField;
    AcikSatislarIBQC_STOKYERI: TIBStringField;
    AcikSatislarIBQC_KULLANICIADI: TIBStringField;
    AcikSatislarIBQC_PERSONEL: TIBStringField;
    AcikSatislarIBQFATURATARIH: TDateField;
    AcikSatislarIBQKDVSECIM: TIBStringField;
    AcikSatislarIBQISLEMTUR: TIBStringField;
    AcikSatislarIBQISLEMTURKOD: TIntegerField;
    AcikSatislarIBQD_ALISTUTAR: TFloatField;
    AcikSatislarIBQD_ALISKDVTUTAR: TFloatField;
    AcikSatislarIBQD_ALISMATRAH: TFloatField;
    AcikSatislarIBQC_GGMERKEZI: TIBStringField;
    AcikSatislarIBQALTISKONTO: TFloatField;
    AcikSatislarIBQVADE: TDateField;
    AcikSatislarIBQD_SATISTUTAR: TFloatField;
    AcikSatislarIBQD_SATISKDVTUTAR: TFloatField;
    AcikSatislarIBQD_SATISMATRAH: TFloatField;
    AcikSatislarIBQIRSALIYENO: TIntegerField;
    AcikSatislarIBQEVRAKTARIH: TDateField;
    AcikSatislarIBQC_FIYATSEC: TIntegerField;
    SatisKapatmaIBQ: TIBQuery;
    SatisKapatmaUSQL: TIBUpdateSQL;
    SatisKapatmaDS: TDataSource;
    SatisKapatmaIBQISLEMKOD: TIntegerField;
    SatisKapatmaIBQTARIH: TDateField;
    SatisKapatmaIBQALISSATISNO: TIntegerField;
    SatisKapatmaIBQACIKLAMA: TIBStringField;
    SatisKapatmaIBQODENEN: TFloatField;
    SatisKapatmaIBQTAHSILEDILEN: TFloatField;
    SatisKapatmaIBQBAGLANTINO: TIntegerField;
    SatisKapatmaIBQALISSATISKOD: TIntegerField;
    AlisKapatmaIBQ: TIBQuery;
    AlisKapatmaUSQL: TIBUpdateSQL;
    AlisKapatmaDS: TDataSource;
    AlisKapatmaIBQISLEMKOD: TIntegerField;
    AlisKapatmaIBQTARIH: TDateField;
    AlisKapatmaIBQALISSATISNO: TIntegerField;
    AlisKapatmaIBQACIKLAMA: TIBStringField;
    AlisKapatmaIBQODENEN: TFloatField;
    AlisKapatmaIBQTAHSILEDILEN: TFloatField;
    AlisKapatmaIBQBAGLANTINO: TIntegerField;
    AlisKapatmaIBQALISSATISKOD: TIntegerField;
    AcikAlislarIBQ: TIBQuery;
    AcikAlislarSQL: TIBUpdateSQL;
    AcikAlislarDS: TDataSource;
    AcikAlislarIBQISLEMKOD: TIntegerField;
    AcikAlislarIBQCARIKOD: TIntegerField;
    AcikAlislarIBQALISSATISNO: TIntegerField;
    AcikAlislarIBQTARIH: TDateField;
    AcikAlislarIBQIRSALIYETARIH: TDateField;
    AcikAlislarIBQSAAT: TTimeField;
    AcikAlislarIBQACIKLAMA: TIBStringField;
    AcikAlislarIBQALISTUTAR: TFloatField;
    AcikAlislarIBQSATISTUTAR: TFloatField;
    AcikAlislarIBQALISMATRAH: TFloatField;
    AcikAlislarIBQALISKDVTUTAR: TFloatField;
    AcikAlislarIBQSATISMATRAH: TFloatField;
    AcikAlislarIBQSATISKDVTUTAR: TFloatField;
    AcikAlislarIBQD_TEDIYE: TFloatField;
    AcikAlislarIBQD_TAHSILAT: TFloatField;
    AcikAlislarIBQCARIKURU: TFloatField;
    AcikAlislarIBQISLEMKURU: TFloatField;
    AcikAlislarIBQTAHSILATMATRAH: TFloatField;
    AcikAlislarIBQTEDIYEMATRAH: TFloatField;
    AcikAlislarIBQKAPATMA: TIntegerField;
    AcikAlislarIBQCARINO: TIntegerField;
    AcikAlislarIBQGELGITKOD: TIBStringField;
    AcikAlislarIBQEVRAKNO: TIntegerField;
    AcikAlislarIBQBELGENO: TIntegerField;
    AcikAlislarIBQBAGLANTINO: TIntegerField;
    AcikAlislarIBQTAHSILKOD: TIntegerField;
    AcikAlislarIBQBODROKOD: TIntegerField;
    AcikAlislarIBQCARIHESAPILISKI: TIntegerField;
    AcikAlislarIBQPARABIRIMKOD: TIntegerField;
    AcikAlislarIBQSTOKYERIKOD: TIntegerField;
    AcikAlislarIBQMAKBUZNO: TIntegerField;
    AcikAlislarIBQBILGIKOD: TIntegerField;
    AcikAlislarIBQKULLANKOD: TIntegerField;
    AcikAlislarIBQPERSONELKOD: TIntegerField;
    AcikAlislarIBQSISTEM: TIntegerField;
    AcikAlislarIBQTAHSILEDILEN: TFloatField;
    AcikAlislarIBQODENEN: TFloatField;
    AcikAlislarIBQKALAN: TFloatField;
    AcikAlislarIBQCARIPARABIRIMKOD: TIntegerField;
    AcikAlislarIBQC_CARIPARABIRIM: TIBStringField;
    AcikAlislarIBQC_PARABIRIMI: TIBStringField;
    AcikAlislarIBQC_CARIADI: TIBStringField;
    AcikAlislarIBQC_STOKYERI: TIBStringField;
    AcikAlislarIBQC_KULLANICIADI: TIBStringField;
    AcikAlislarIBQC_PERSONEL: TIBStringField;
    AcikAlislarIBQFATURATARIH: TDateField;
    AcikAlislarIBQKDVSECIM: TIBStringField;
    AcikAlislarIBQISLEMTUR: TIBStringField;
    AcikAlislarIBQISLEMTURKOD: TIntegerField;
    AcikAlislarIBQD_ALISTUTAR: TFloatField;
    AcikAlislarIBQD_ALISKDVTUTAR: TFloatField;
    AcikAlislarIBQD_ALISMATRAH: TFloatField;
    AcikAlislarIBQC_GGMERKEZI: TIBStringField;
    AcikAlislarIBQALTISKONTO: TFloatField;
    AcikAlislarIBQVADE: TDateField;
    AcikAlislarIBQD_SATISTUTAR: TFloatField;
    AcikAlislarIBQD_SATISKDVTUTAR: TFloatField;
    AcikAlislarIBQD_SATISMATRAH: TFloatField;
    AcikAlislarIBQIRSALIYENO: TIntegerField;
    AcikAlislarIBQEVRAKTARIH: TDateField;
    AcikAlislarIBQC_FIYATSEC: TIntegerField;
    AlisiadeIBQ: TIBQuery;
    AlisiadeUSQL: TIBUpdateSQL;
    AlisiadeDS: TDataSource;
    AlisiadeBodroIBQ: TIBQuery;
    AlisiadeBodroUSQL: TIBUpdateSQL;
    AlisiadeBodroDS: TDataSource;
    AlisiadeIBQISLEMKOD: TIntegerField;
    AlisiadeIBQCARIKOD: TIntegerField;
    AlisiadeIBQALISSATISNO: TIntegerField;
    AlisiadeIBQTARIH: TDateField;
    AlisiadeIBQIRSALIYETARIH: TDateField;
    AlisiadeIBQSAAT: TTimeField;
    AlisiadeIBQACIKLAMA: TIBStringField;
    AlisiadeIBQALISTUTAR: TFloatField;
    AlisiadeIBQSATISTUTAR: TFloatField;
    AlisiadeIBQALISMATRAH: TFloatField;
    AlisiadeIBQALISKDVTUTAR: TFloatField;
    AlisiadeIBQSATISMATRAH: TFloatField;
    AlisiadeIBQSATISKDVTUTAR: TFloatField;
    AlisiadeIBQD_TEDIYE: TFloatField;
    AlisiadeIBQD_TAHSILAT: TFloatField;
    AlisiadeIBQCARIKURU: TFloatField;
    AlisiadeIBQISLEMKURU: TFloatField;
    AlisiadeIBQTAHSILATMATRAH: TFloatField;
    AlisiadeIBQTEDIYEMATRAH: TFloatField;
    AlisiadeIBQKAPATMA: TIntegerField;
    AlisiadeIBQCARINO: TIntegerField;
    AlisiadeIBQGELGITKOD: TIBStringField;
    AlisiadeIBQEVRAKNO: TIntegerField;
    AlisiadeIBQBELGENO: TIntegerField;
    AlisiadeIBQBAGLANTINO: TIntegerField;
    AlisiadeIBQTAHSILKOD: TIntegerField;
    AlisiadeIBQBODROKOD: TIntegerField;
    AlisiadeIBQCARIHESAPILISKI: TIntegerField;
    AlisiadeIBQPARABIRIMKOD: TIntegerField;
    AlisiadeIBQSTOKYERIKOD: TIntegerField;
    AlisiadeIBQMAKBUZNO: TIntegerField;
    AlisiadeIBQBILGIKOD: TIntegerField;
    AlisiadeIBQKULLANKOD: TIntegerField;
    AlisiadeIBQPERSONELKOD: TIntegerField;
    AlisiadeIBQSISTEM: TIntegerField;
    AlisiadeIBQTAHSILEDILEN: TFloatField;
    AlisiadeIBQODENEN: TFloatField;
    AlisiadeIBQKALAN: TFloatField;
    AlisiadeIBQCARIPARABIRIMKOD: TIntegerField;
    AlisiadeIBQC_CARIPARABIRIM: TIBStringField;
    AlisiadeIBQC_PARABIRIMI: TIBStringField;
    AlisiadeIBQC_CARIADI: TIBStringField;
    AlisiadeIBQC_STOKYERI: TIBStringField;
    AlisiadeIBQC_KULLANICIADI: TIBStringField;
    AlisiadeIBQC_PERSONEL: TIBStringField;
    AlisiadeIBQFATURATARIH: TDateField;
    AlisiadeIBQKDVSECIM: TIBStringField;
    AlisiadeIBQISLEMTUR: TIBStringField;
    AlisiadeIBQISLEMTURKOD: TIntegerField;
    AlisiadeIBQD_ALISTUTAR: TFloatField;
    AlisiadeIBQD_ALISKDVTUTAR: TFloatField;
    AlisiadeIBQD_ALISMATRAH: TFloatField;
    AlisiadeIBQC_GGMERKEZI: TIBStringField;
    AlisiadeIBQALTISKONTO: TFloatField;
    AlisiadeIBQVADE: TDateField;
    AlisiadeIBQD_SATISTUTAR: TFloatField;
    AlisiadeIBQD_SATISKDVTUTAR: TFloatField;
    AlisiadeIBQD_SATISMATRAH: TFloatField;
    AlisiadeIBQIRSALIYENO: TIntegerField;
    AlisiadeIBQEVRAKTARIH: TDateField;
    AlisiadeIBQC_FIYATSEC: TIntegerField;
    AlisiadeBodroIBQBODROKOD: TIntegerField;
    AlisiadeBodroIBQSIRANO: TIntegerField;
    AlisiadeBodroIBQISLEMTUR: TIBStringField;
    AlisiadeBodroIBQC_ISLEMTURKOD: TIntegerField;
    AlisiadeBodroIBQCARIKOD: TIntegerField;
    AlisiadeBodroIBQPARABIRIMKOD: TIntegerField;
    AlisiadeBodroIBQTARIH: TDateField;
    AlisiadeBodroIBQSTOKKOD: TIntegerField;
    AlisiadeBodroIBQSTOKNO: TIntegerField;
    AlisiadeBodroIBQBARKOD: TIBStringField;
    AlisiadeBodroIBQSTOKADI: TIBStringField;
    AlisiadeBodroIBQMIKTAR: TFloatField;
    AlisiadeBodroIBQMIKTARCARPAN: TIntegerField;
    AlisiadeBodroIBQGIRISMIKTAR: TFloatField;
    AlisiadeBodroIBQCIKISMIKTAR: TFloatField;
    AlisiadeBodroIBQBIRIM: TIBStringField;
    AlisiadeBodroIBQBIRIMFIYAT: TFloatField;
    AlisiadeBodroIBQALISFIYAT: TFloatField;
    AlisiadeBodroIBQSATISTUTAR: TFloatField;
    AlisiadeBodroIBQSATISFIYAT: TFloatField;
    AlisiadeBodroIBQALISTUTAR: TFloatField;
    AlisiadeBodroIBQALISMATRAHI: TFloatField;
    AlisiadeBodroIBQSATISMATRAHI: TFloatField;
    AlisiadeBodroIBQISKONTO1: TFloatField;
    AlisiadeBodroIBQISKONTO2: TFloatField;
    AlisiadeBodroIBQISKONTO3: TFloatField;
    AlisiadeBodroIBQISKONTO4: TFloatField;
    AlisiadeBodroIBQKDVORANI: TFloatField;
    AlisiadeBodroIBQBAKIYE: TFloatField;
    AlisiadeBodroIBQDURUM: TIntegerField;
    AlisiadeBodroIBQACIKLAMA: TIBStringField;
    AlisiadeBodroIBQKAPATMA: TIntegerField;
    AlisiadeBodroIBQVADE: TDateField;
    AlisiadeBodroIBQFATURANO: TIntegerField;
    AlisiadeBodroIBQSTOKYERIKOD: TIntegerField;
    AlisiadeBodroIBQISLEMKURU: TFloatField;
    AlisiadeBodroIBQGELGITKOD: TIBStringField;
    AlisiadeBodroIBQPERSONELKOD: TIntegerField;
    AlisiadeBodroIBQKULLANKOD: TIntegerField;
    AlisiadeBodroIBQSISTEM: TIntegerField;
    AlisiadeBodroIBQEVRAKDURUMU: TIntegerField;
    AlisiadeBodroIBQSERINO: TIBStringField;
    AlisiadeBodroIBQCARIHESAPILISKI: TIntegerField;
    AlisiadeBodroIBQC_CARIADI: TIBStringField;
    AlisiadeBodroIBQC_STOKYERI: TIBStringField;
    AlisiadeBodroIBQC_KULLANICIADI: TIBStringField;
    AlisiadeBodroIBQC_PARABIRIMI: TIBStringField;
    AlisiadeBodroIBQC_REELALIS: TFloatField;
    AlisiadeBodroIBQC_REELSATIS: TFloatField;
    AlisiadeBodroIBQISLEMKOD: TIntegerField;
    AlisiadeBodroIBQKDVSECIM: TIBStringField;
    AlisiadeBodroIBQC_TLALISTUTARI: TFloatField;
    AlisiadeBodroIBQC_TLALISMATRAHI: TFloatField;
    AlisiadeBodroIBQC_TLALISKDVTUTAR: TFloatField;
    AlisiadeBodroIBQC_TLSATISTUTARI: TFloatField;
    AlisiadeBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    AlisiadeBodroIBQC_TLSATISMATRAHI: TFloatField;
    AlisiadeBodroIBQC_TLBIRIMFIYAT: TFloatField;
    AlisiadeBodroIBQC_GGMERKEZI: TIBStringField;
    AlisiadeBodroIBQC_ALISKDVTUTAR: TFloatField;
    AlisiadeBodroIBQC_SATISKDVTUTAR: TFloatField;
    AlisiadeBodroIBQMALIYETFIYATI: TFloatField;
    AlisiadeBodroIBQC_MALIYETTUTARI: TFloatField;
    AlisiadeBodroIBQC_KARZARAR: TFloatField;
    AlisiadeBilgiIBQ: TIBQuery;
    AlisiadeBilgiUSQL: TIBUpdateSQL;
    AlisiadeBilgiDS: TDataSource;
    AlisiadeBilgiIBQBILGIKOD: TIntegerField;
    AlisiadeBilgiIBQISLEMKOD: TIntegerField;
    AlisiadeBilgiIBQALTBILGI: TMemoField;
    AlisiadeBilgiIBQUSTBILGI: TMemoField;
    AlisiadeBilgiIBQALTISKONTO: TFloatField;
    AlisiadeBilgiIBQISLEMTURKOD: TIntegerField;
    SatisiadeIBQ: TIBQuery;
    SatisiadeUSQL: TIBUpdateSQL;
    SatisiadeDS: TDataSource;
    SatisiadeBodroIBQ: TIBQuery;
    SatisiadeBodroUSQL: TIBUpdateSQL;
    SatisiadeBodroDS: TDataSource;
    SatisiadeIBQISLEMKOD: TIntegerField;
    SatisiadeIBQCARIKOD: TIntegerField;
    SatisiadeIBQALISSATISNO: TIntegerField;
    SatisiadeIBQTARIH: TDateField;
    SatisiadeIBQIRSALIYETARIH: TDateField;
    SatisiadeIBQSAAT: TTimeField;
    SatisiadeIBQACIKLAMA: TIBStringField;
    SatisiadeIBQALISTUTAR: TFloatField;
    SatisiadeIBQSATISTUTAR: TFloatField;
    SatisiadeIBQALISMATRAH: TFloatField;
    SatisiadeIBQALISKDVTUTAR: TFloatField;
    SatisiadeIBQSATISMATRAH: TFloatField;
    SatisiadeIBQSATISKDVTUTAR: TFloatField;
    SatisiadeIBQD_TEDIYE: TFloatField;
    SatisiadeIBQD_TAHSILAT: TFloatField;
    SatisiadeIBQCARIKURU: TFloatField;
    SatisiadeIBQISLEMKURU: TFloatField;
    SatisiadeIBQTAHSILATMATRAH: TFloatField;
    SatisiadeIBQTEDIYEMATRAH: TFloatField;
    SatisiadeIBQKAPATMA: TIntegerField;
    SatisiadeIBQCARINO: TIntegerField;
    SatisiadeIBQGELGITKOD: TIBStringField;
    SatisiadeIBQEVRAKNO: TIntegerField;
    SatisiadeIBQBELGENO: TIntegerField;
    SatisiadeIBQBAGLANTINO: TIntegerField;
    SatisiadeIBQTAHSILKOD: TIntegerField;
    SatisiadeIBQBODROKOD: TIntegerField;
    SatisiadeIBQCARIHESAPILISKI: TIntegerField;
    SatisiadeIBQPARABIRIMKOD: TIntegerField;
    SatisiadeIBQSTOKYERIKOD: TIntegerField;
    SatisiadeIBQMAKBUZNO: TIntegerField;
    SatisiadeIBQBILGIKOD: TIntegerField;
    SatisiadeIBQKULLANKOD: TIntegerField;
    SatisiadeIBQPERSONELKOD: TIntegerField;
    SatisiadeIBQSISTEM: TIntegerField;
    SatisiadeIBQTAHSILEDILEN: TFloatField;
    SatisiadeIBQODENEN: TFloatField;
    SatisiadeIBQKALAN: TFloatField;
    SatisiadeIBQCARIPARABIRIMKOD: TIntegerField;
    SatisiadeIBQC_CARIPARABIRIM: TIBStringField;
    SatisiadeIBQC_PARABIRIMI: TIBStringField;
    SatisiadeIBQC_CARIADI: TIBStringField;
    SatisiadeIBQC_STOKYERI: TIBStringField;
    SatisiadeIBQC_KULLANICIADI: TIBStringField;
    SatisiadeIBQC_PERSONEL: TIBStringField;
    SatisiadeIBQFATURATARIH: TDateField;
    SatisiadeIBQKDVSECIM: TIBStringField;
    SatisiadeIBQISLEMTUR: TIBStringField;
    SatisiadeIBQISLEMTURKOD: TIntegerField;
    SatisiadeIBQD_ALISTUTAR: TFloatField;
    SatisiadeIBQD_ALISKDVTUTAR: TFloatField;
    SatisiadeIBQD_ALISMATRAH: TFloatField;
    SatisiadeIBQC_GGMERKEZI: TIBStringField;
    SatisiadeIBQALTISKONTO: TFloatField;
    SatisiadeIBQVADE: TDateField;
    SatisiadeIBQD_SATISTUTAR: TFloatField;
    SatisiadeIBQD_SATISKDVTUTAR: TFloatField;
    SatisiadeIBQD_SATISMATRAH: TFloatField;
    SatisiadeIBQIRSALIYENO: TIntegerField;
    SatisiadeIBQEVRAKTARIH: TDateField;
    SatisiadeIBQC_FIYATSEC: TIntegerField;
    SatisiadeBodroIBQBODROKOD: TIntegerField;
    SatisiadeBodroIBQSIRANO: TIntegerField;
    SatisiadeBodroIBQISLEMTUR: TIBStringField;
    SatisiadeBodroIBQC_ISLEMTURKOD: TIntegerField;
    SatisiadeBodroIBQCARIKOD: TIntegerField;
    SatisiadeBodroIBQPARABIRIMKOD: TIntegerField;
    SatisiadeBodroIBQTARIH: TDateField;
    SatisiadeBodroIBQSTOKKOD: TIntegerField;
    SatisiadeBodroIBQSTOKNO: TIntegerField;
    SatisiadeBodroIBQBARKOD: TIBStringField;
    SatisiadeBodroIBQSTOKADI: TIBStringField;
    SatisiadeBodroIBQMIKTAR: TFloatField;
    SatisiadeBodroIBQMIKTARCARPAN: TIntegerField;
    SatisiadeBodroIBQGIRISMIKTAR: TFloatField;
    SatisiadeBodroIBQCIKISMIKTAR: TFloatField;
    SatisiadeBodroIBQBIRIM: TIBStringField;
    SatisiadeBodroIBQBIRIMFIYAT: TFloatField;
    SatisiadeBodroIBQALISFIYAT: TFloatField;
    SatisiadeBodroIBQSATISTUTAR: TFloatField;
    SatisiadeBodroIBQSATISFIYAT: TFloatField;
    SatisiadeBodroIBQALISTUTAR: TFloatField;
    SatisiadeBodroIBQALISMATRAHI: TFloatField;
    SatisiadeBodroIBQSATISMATRAHI: TFloatField;
    SatisiadeBodroIBQISKONTO1: TFloatField;
    SatisiadeBodroIBQISKONTO2: TFloatField;
    SatisiadeBodroIBQISKONTO3: TFloatField;
    SatisiadeBodroIBQISKONTO4: TFloatField;
    SatisiadeBodroIBQKDVORANI: TFloatField;
    SatisiadeBodroIBQBAKIYE: TFloatField;
    SatisiadeBodroIBQDURUM: TIntegerField;
    SatisiadeBodroIBQACIKLAMA: TIBStringField;
    SatisiadeBodroIBQKAPATMA: TIntegerField;
    SatisiadeBodroIBQVADE: TDateField;
    SatisiadeBodroIBQFATURANO: TIntegerField;
    SatisiadeBodroIBQSTOKYERIKOD: TIntegerField;
    SatisiadeBodroIBQISLEMKURU: TFloatField;
    SatisiadeBodroIBQGELGITKOD: TIBStringField;
    SatisiadeBodroIBQPERSONELKOD: TIntegerField;
    SatisiadeBodroIBQKULLANKOD: TIntegerField;
    SatisiadeBodroIBQSISTEM: TIntegerField;
    SatisiadeBodroIBQEVRAKDURUMU: TIntegerField;
    SatisiadeBodroIBQSERINO: TIBStringField;
    SatisiadeBodroIBQCARIHESAPILISKI: TIntegerField;
    SatisiadeBodroIBQC_CARIADI: TIBStringField;
    SatisiadeBodroIBQC_STOKYERI: TIBStringField;
    SatisiadeBodroIBQC_KULLANICIADI: TIBStringField;
    SatisiadeBodroIBQC_PARABIRIMI: TIBStringField;
    SatisiadeBodroIBQC_REELALIS: TFloatField;
    SatisiadeBodroIBQC_REELSATIS: TFloatField;
    SatisiadeBodroIBQISLEMKOD: TIntegerField;
    SatisiadeBodroIBQKDVSECIM: TIBStringField;
    SatisiadeBodroIBQC_TLALISTUTARI: TFloatField;
    SatisiadeBodroIBQC_TLALISMATRAHI: TFloatField;
    SatisiadeBodroIBQC_TLALISKDVTUTAR: TFloatField;
    SatisiadeBodroIBQC_TLSATISTUTARI: TFloatField;
    SatisiadeBodroIBQC_TLSATISKDVTUTARI: TFloatField;
    SatisiadeBodroIBQC_TLSATISMATRAHI: TFloatField;
    SatisiadeBodroIBQC_TLBIRIMFIYAT: TFloatField;
    SatisiadeBodroIBQC_GGMERKEZI: TIBStringField;
    SatisiadeBodroIBQC_ALISKDVTUTAR: TFloatField;
    SatisiadeBodroIBQC_SATISKDVTUTAR: TFloatField;
    SatisiadeBilgiIBQ: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    SatisiadeBilgiUSQL: TIBUpdateSQL;
    SatisiadeBilgiDS: TDataSource;
    procedure AlisBodroIBQBARKODChange(Sender: TField);
    procedure AlisIBQPARABIRIMKODChange(Sender: TField);
    procedure AlisBodroIBQSTOKNOChange(Sender: TField);
    procedure AlisBodroIBQAfterPost(DataSet: TDataSet);
    procedure AlisBodroIBQAfterDelete(DataSet: TDataSet);
    procedure AlisIBQAfterDelete(DataSet: TDataSet);
    procedure AlisIBQAfterPost(DataSet: TDataSet);
    procedure AlisBodroIBQNewRecord(DataSet: TDataSet);
    procedure AlisIBQNewRecord(DataSet: TDataSet);
    procedure AlisIBQAfterEdit(DataSet: TDataSet);
    procedure AlisBilgiIBQNewRecord(DataSet: TDataSet);
    procedure SatisIBQNewRecord(DataSet: TDataSet);
    procedure SatisIBQAfterPost(DataSet: TDataSet);
    procedure SatisBodroIBQAfterPost(DataSet: TDataSet);
    procedure SatisBodroIBQNewRecord(DataSet: TDataSet);
    procedure SatisBilgiIBQNewRecord(DataSet: TDataSet);
    procedure SatisBodroIBQMIKTARChange(Sender: TField);
    procedure AlisBodroIBQBIRIMChange(Sender: TField);
    procedure SatisBodroIBQBIRIMChange(Sender: TField);
    procedure AlisBodroIBQBIRIMFIYATChange(Sender: TField);
    procedure SatisBodroIBQBIRIMFIYATChange(Sender: TField);
    procedure SatisKapatmaIBQAfterPost(DataSet: TDataSet);
    procedure SatisKapatmaIBQAfterDelete(DataSet: TDataSet);
    procedure SatisKapatmaIBQNewRecord(DataSet: TDataSet);
    procedure AcikSatislarIBQAfterPost(DataSet: TDataSet);
    procedure AcikAlislarIBQAfterPost(DataSet: TDataSet);
    procedure AlisKapatmaIBQAfterDelete(DataSet: TDataSet);
    procedure AlisKapatmaIBQAfterPost(DataSet: TDataSet);
    procedure AlisKapatmaIBQNewRecord(DataSet: TDataSet);
    procedure SatisiadeIBQAfterDelete(DataSet: TDataSet);
    procedure SatisiadeIBQAfterEdit(DataSet: TDataSet);
    procedure SatisiadeIBQAfterPost(DataSet: TDataSet);
    procedure SatisiadeIBQNewRecord(DataSet: TDataSet);
    procedure SatisiadeBodroIBQNewRecord(DataSet: TDataSet);
    procedure SatisiadeBodroIBQAfterPost(DataSet: TDataSet);
    procedure SatisiadeBodroIBQAfterDelete(DataSet: TDataSet);
    procedure SatisiadeBodroIBQBARKODChange(Sender: TField);
    procedure SatisiadeBodroIBQBIRIMChange(Sender: TField);
    procedure SatisiadeBodroIBQBIRIMFIYATChange(Sender: TField);
    procedure SatisBodroIBQBARKODChange(Sender: TField);
    procedure AlisiadeBodroIBQBARKODChange(Sender: TField);
    procedure AlisiadeBodroIBQMIKTARChange(Sender: TField);
    procedure AlisiadeBodroIBQBIRIMChange(Sender: TField);
    procedure AlisiadeBodroIBQBIRIMFIYATChange(Sender: TField);
    procedure AlisiadeIBQAfterPost(DataSet: TDataSet);
    procedure AlisiadeIBQNewRecord(DataSet: TDataSet);
    procedure AlisiadeBodroIBQNewRecord(DataSet: TDataSet);
    procedure AlisiadeBodroIBQAfterPost(DataSet: TDataSet);
    procedure SatisBilgiIBQAfterPost(DataSet: TDataSet);
    procedure AlisBilgiIBQAfterPost(DataSet: TDataSet);
    procedure SatisIBQAfterEdit(DataSet: TDataSet);
    procedure SatisIBQAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public

  end;

var
  DMAlisSatis: TDMAlisSatis;
  BarkodluAlis,BarkodluSatis,
  BarkodluAlisiade: boolean;

implementation

{$R *.dfm}
uses DataDM, StokDM,KasaDM, SabitDM, Alis;

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat('###,###', x);
end;


procedure TDMAlisSatis.AlisBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FAlis') <> nil then
        if AlisBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', AlisBodroIBQBARKOD.AsString,[]) Then
        Begin
                if AlisBodroIBQSTOKNO.AsString='' Then
                Begin
                        AlisBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        AlisBodroIBQ.Post;
                        AlisBodroIBQ.Edit;
                        BarkodluAlis := True;
                end
                else
                if AlisBodroIBQSTOKNO.NewValue=AlisBodroIBQSTOKNO.OldValue Then
                        AlisBodroIBQBARKOD.NewValue := AlisBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                AlisBodroIBQSTOKNO.Clear;
                AlisBodroIBQGIRISMIKTAR.Clear;
                AlisBodroIBQBIRIMFIYAT.Clear;
                AlisBodroIBQBIRIM.Clear;
                AlisBodroIBQKDVORANI.Clear;
                AlisBodroIBQSTOKADI.Clear;
                AlisBodroIBQISKONTO1.Clear;
                AlisBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMAlisSatis.AlisIBQPARABIRIMKODChange(Sender: TField);
begin
        if Application.FindComponent('FAlis') <> nil then
                FAlis.GroupBox6.Caption := ' Dövizli Tutar ['+AlisIBQC_PARABIRIMI.AsString+']';
end;

procedure TDMAlisSatis.AlisBodroIBQSTOKNOChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FAlis') <> nil then
        if AlisBodroIBQSTOKNO.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('STOKNO', AlisBodroIBQSTOKNO.AsString,[]) Then
        Begin
                AlisBodroIBQSTOKADI.AsString := DMStok.StokKartiIBQSTOKADI.AsString;
                AlisBodroIBQKDVORANI.AsString := DMStok.StokKartiIBQKDVORAN.AsString;
                AlisBodroIBQBIRIM.AsString := DMStok.StokKartiIBQBIRIM.AsString;
                AlisBodroIBQBIRIMFIYAT.AsString := DMStok.StokKartiIBQALISFIYAT.AsString;
                AlisBodroIBQBARKOD.AsString := DMStok.StokKartiIBQBARKOD.AsString;
                if AlisBodroIBQGIRISMIKTAR.AsInteger=0 Then AlisBodroIBQGIRISMIKTAR.AsFloat :=1;
        end else
        Begin
                Application.MessageBox('Bu no ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                AlisBodroIBQ.Delete;
        end;
end;

procedure TDMAlisSatis.AlisBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := AlisBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        AlisIBQ.Refresh;
        AlisBodroIBQ.GotoBookmark(yer);
end;

procedure TDMAlisSatis.AlisBodroIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisBodroIBQNewRecord(DataSet: TDataSet);
begin
        AlisBodroIBQISLEMKOD.AsInteger := AlisIBQISLEMKOD.AsInteger;
        AlisBodroIBQISLEMTUR.AsString := 'Alýþ';
        AlisBodroIBQKDVSECIM.AsString := AlisIBQKDVSECIM.AsString;
        AlisBodroIBQTARIH.AsDateTime := AlisIBQTARIH.AsDateTime;
        AlisBodroIBQVADE.AsDateTime := AlisIBQTARIH.AsDateTime;
        AlisBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        AlisBodroIBQSTOKYERIKOD.AsInteger := AlisIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.AlisIBQNewRecord(DataSet: TDataSet);
begin
        AlisIBQISLEMTUR.AsString  := 'Alýþ';
        AlisIBQTARIH.AsDateTime := BugununTarihi;
        AlisIBQFATURATARIH.AsDateTime := BugununTarihi;
        AlisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        AlisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        AlisIBQKDVSECIM.AsString := 'Hariç';
        AlisIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.AlisIBQAfterEdit(DataSet: TDataSet);
begin
        AlisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMAlisSatis.AlisBilgiIBQNewRecord(DataSet: TDataSet);
begin
        AlisBilgiIBQISLEMKOD.AsInteger := AlisIBQISLEMKOD.AsInteger;
        AlisBilgiIBQISLEMTURKOD.AsInteger := AlisIBQISLEMTURKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisIBQNewRecord(DataSet: TDataSet);
begin
        SatisIBQISLEMTUR.AsString  := 'Satýþ';
        SatisIBQTARIH.AsDateTime := BugununTarihi;
        SatisIBQFATURATARIH.AsDateTime := BugununTarihi;
        SatisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SatisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SatisIBQKDVSECIM.AsString := 'Hariç';
        SatisIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := SatisBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SatisIBQ.Refresh;
        SatisBodroIBQ.GotoBookmark(yer);
end;

procedure TDMAlisSatis.SatisBodroIBQNewRecord(DataSet: TDataSet);
begin
        SatisBodroIBQISLEMKOD.AsInteger := SatisIBQISLEMKOD.AsInteger;
        SatisBodroIBQISLEMTUR.AsString := 'Satýþ';
        SatisBodroIBQKDVSECIM.AsString := SatisIBQKDVSECIM.AsString;
        SatisBodroIBQTARIH.AsDateTime := SatisIBQTARIH.AsDateTime;
        SatisBodroIBQVADE.AsDateTime := SatisIBQTARIH.AsDateTime;
        SatisBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SatisBodroIBQSTOKYERIKOD.AsInteger := SatisIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisBilgiIBQNewRecord(DataSet: TDataSet);
begin
        SatisBilgiIBQISLEMKOD.AsInteger := SatisIBQISLEMKOD.AsInteger;
        SatisBilgiIBQISLEMTURKOD.AsInteger := SatisIBQISLEMTURKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisBodroIBQMIKTARChange(Sender: TField);
begin
        if DMStok.StokKartiIBQ.Locate('STOKKOD',SatisBodroIBQSTOKKOD.AsInteger,[]) then
        if (DMStok.StokKartiIBQNEGSEVIYE.AsInteger = 1) and
                (SatisBodroIBQMIKTAR.AsFloat * SatisBodroIBQMIKTARCARPAN.AsFloat > DMStok.StokKartiIBQBAKIYE.AsFloat) then
        begin
                SatisBodroIBQMIKTAR.AsFloat := 0;
                ShowMessage('Yeterli miktarda stok yok!.');
        end;
end;

procedure TDMAlisSatis.AlisBodroIBQBIRIMChange(Sender: TField);
begin
        if AlisBodroIBQBIRIM.AsString = 'Koli' then
        begin
                if DMStok.StokKartiIBQ.Locate('STOKKOD',AlisBodroIBQSTOKKOD.AsInteger,[]) then
                begin
                        AlisBodroIBQMIKTARCARPAN.AsFloat :=DMStok.StokKartiIBQKOLIMIKTAR.AsFloat;
                end;
        end else AlisBodroIBQMIKTARCARPAN.AsFloat := 1;
end;

procedure TDMAlisSatis.SatisBodroIBQBIRIMChange(Sender: TField);
begin
        if SatisBodroIBQBIRIM.AsString = 'Koli' then
        begin
                if DMStok.StokKartiIBQ.Locate('STOKKOD',SatisBodroIBQSTOKKOD.AsInteger,[]) then
                begin
                        SatisBodroIBQMIKTARCARPAN.AsFloat :=DMStok.StokKartiIBQKOLIMIKTAR.AsFloat;
                end;
        end else SatisBodroIBQMIKTARCARPAN.AsFloat := 1;
end;

procedure TDMAlisSatis.AlisBodroIBQBIRIMFIYATChange(Sender: TField);
begin
     if AlisBodroIBQBIRIMFIYAT.AsFloat > 0 then
        if DMStok.StokKartiIBQ.Locate('STOKKOD',AlisBodroIBQSTOKKOD.AsInteger,[]) then
         begin
           if DMStok.StokKartiIBQALISFIYAT.AsFloat <> AlisBodroIBQBIRIMFIYAT.AsFloat THEN
            begin
                DMStok.StokKartiIBQ.Edit;
                DMStok.StokKartiIBQALISFIYAT.AsFloat := AlisBodroIBQBIRIMFIYAT.AsFloat;
                if MessageBox(Application.Handle,'Birim fiyat deðiþti'+#13+'Satýþ fiyatýnýda deðiþtirmek ister misiniz?','Bilgi',MB_YESNO)=mrYes then
                 begin
                        DMStok.StokKartiIBQSATISFIYAT1.AsFloat := AlisBodroIBQBIRIMFIYAT.AsFloat + ((AlisBodroIBQBIRIMFIYAT.AsFloat +
                                                (AlisBodroIBQBIRIMFIYAT.AsFloat * DMStok.StokKartiIBQKARORANI.AsFloat / 100)) * DMStok.StokKartiIBQKDVORAN.AsFloat / 100);

                 end;
                 DMStok.StokKartiIBQ.Post;
            end;
         end;
end;

procedure TDMAlisSatis.SatisBodroIBQBIRIMFIYATChange(Sender: TField);
begin
     if SatisBodroIBQBIRIMFIYAT.AsFloat > 0 then
        if DMStok.StokKartiIBQ.Locate('STOKKOD',SatisBodroIBQSTOKKOD.AsInteger,[]) then
         begin
           if SatisIBQCARIKOD.AsInteger > 0 then
            begin
             if DMStok.StokKartiIBQ.FindField('SATISFIYAT'+SatisIBQC_FIYATSEC.AsString).AsFloat > SatisBodroIBQBIRIMFIYAT.AsFloat THEN
               begin
                  if MessageBox(Application.Handle,'Satýþ fiyatýnýn altýnda bir deðer girildi devam etmek ister misiniz?','Uyarý',MB_YESNO)= mrNO then
                   begin
                      SatisBodroIBQBIRIMFIYAT.AsFloat := 0;
                   end;
               end;
            end else begin
             if DMStok.StokKartiIBQSATISFIYAT1.AsFloat > SatisBodroIBQBIRIMFIYAT.AsFloat THEN
               begin
                  if MessageBox(Application.Handle,'Satýþ fiyatýnýn altýnda bir deðer girildi devam etmek ister misiniz?','Uyarý',MB_YESNO)= mrNO then
                   begin
                      SatisBodroIBQBIRIMFIYAT.AsFloat := 0;
                   end;
               end;
            end;
         end;
end;

procedure TDMAlisSatis.SatisKapatmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisKapatmaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisKapatmaIBQNewRecord(DataSet: TDataSet);
begin
        SatisKapatmaIBQTARIH.AsDateTime := BugununTarihi;
end;

procedure TDMAlisSatis.AcikSatislarIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AcikAlislarIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisKapatmaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisKapatmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisKapatmaIBQNewRecord(DataSet: TDataSet);
begin
        AlisKapatmaIBQTARIH.AsDateTime := BugununTarihi;
end;

procedure TDMAlisSatis.SatisiadeIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisiadeIBQAfterEdit(DataSet: TDataSet);
begin
        SatisiadeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisiadeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisiadeIBQNewRecord(DataSet: TDataSet);
begin
        SatisiadeIBQISLEMTUR.AsString  := 'Satýþ Ýade';
        SatisiadeIBQTARIH.AsDateTime := BugununTarihi;
        SatisiadeIBQFATURATARIH.AsDateTime := BugununTarihi;
        SatisiadeIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        SatisiadeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SatisiadeIBQKDVSECIM.AsString := 'Hariç';
        SatisiadeIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisiadeBodroIBQNewRecord(DataSet: TDataSet);
begin

        SatisiadeBodroIBQISLEMKOD.AsInteger := SatisiadeIBQISLEMKOD.AsInteger;
        SatisiadeBodroIBQISLEMTUR.AsString := 'Satýþ Ýade';
        SatisiadeBodroIBQKDVSECIM.AsString := SatisiadeIBQKDVSECIM.AsString;
        SatisiadeBodroIBQTARIH.AsDateTime := SatisiadeIBQTARIH.AsDateTime;
        SatisiadeBodroIBQVADE.AsDateTime := SatisiadeIBQTARIH.AsDateTime;
        SatisiadeBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SatisiadeBodroIBQSTOKYERIKOD.AsInteger := SatisiadeIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisiadeBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := SatisiadeBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SatisiadeIBQ.Refresh;
        SatisiadeBodroIBQ.GotoBookmark(yer);

end;

procedure TDMAlisSatis.SatisiadeBodroIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisiadeBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FSatisiade') <> nil then
        if SatisiadeBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', SatisiadeBodroIBQBARKOD.AsString,[]) Then
        Begin
                if SatisiadeBodroIBQSTOKNO.AsString='' Then
                Begin
                        SatisiadeBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        SatisiadeBodroIBQ.Post;
                        SatisiadeBodroIBQ.Edit;
                        BarkodluAlis := True;
                end
                else
                if SatisiadeBodroIBQSTOKNO.NewValue=SatisiadeBodroIBQSTOKNO.OldValue Then
                        SatisiadeBodroIBQBARKOD.NewValue := SatisiadeBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                SatisiadeBodroIBQSTOKNO.Clear;
                SatisiadeBodroIBQGIRISMIKTAR.Clear;
                SatisiadeBodroIBQBIRIMFIYAT.Clear;
                SatisiadeBodroIBQBIRIM.Clear;
                SatisiadeBodroIBQKDVORANI.Clear;
                SatisiadeBodroIBQSTOKADI.Clear;
                SatisiadeBodroIBQISKONTO1.Clear;
                SatisiadeBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMAlisSatis.SatisiadeBodroIBQBIRIMChange(Sender: TField);
begin
        if SatisiadeBodroIBQBIRIM.AsString = 'Koli' then
        begin
                if DMStok.StokKartiIBQ.Locate('STOKKOD',SatisiadeBodroIBQSTOKKOD.AsInteger,[]) then
                begin
                        SatisiadeBodroIBQMIKTARCARPAN.AsFloat :=DMStok.StokKartiIBQKOLIMIKTAR.AsFloat;
                end;
        end else SatisiadeBodroIBQMIKTARCARPAN.AsFloat := 1;
end;

procedure TDMAlisSatis.SatisiadeBodroIBQBIRIMFIYATChange(Sender: TField);
begin
     if SatisiadeBodroIBQBIRIMFIYAT.AsFloat > 0 then
        if DMStok.StokKartiIBQ.Locate('STOKKOD',SatisiadeBodroIBQSTOKKOD.AsInteger,[]) then
         begin
           if DMStok.StokKartiIBQALISFIYAT.AsFloat <> SatisiadeBodroIBQBIRIMFIYAT.AsFloat THEN
            begin
                DMStok.StokKartiIBQ.Edit;
                DMStok.StokKartiIBQALISFIYAT.AsFloat := SatisiadeBodroIBQBIRIMFIYAT.AsFloat;
                if MessageBox(Application.Handle,'Birim fiyat deðiþti'+#13+'Satýþ fiyatýnýda deðiþtirmek ister misiniz?','Bilgi',MB_YESNO)=mrYes then
                 begin
                        DMStok.StokKartiIBQSATISFIYAT1.AsFloat := SatisiadeBodroIBQBIRIMFIYAT.AsFloat + ((SatisiadeBodroIBQBIRIMFIYAT.AsFloat +
                                                (SatisiadeBodroIBQBIRIMFIYAT.AsFloat * DMStok.StokKartiIBQKARORANI.AsFloat / 100)) * DMStok.StokKartiIBQKDVORAN.AsFloat / 100);

                 end;
                 DMStok.StokKartiIBQ.Post;
            end;
         end;
end;

procedure TDMAlisSatis.SatisBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FSatis') <> nil then
        if SatisBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', SatisBodroIBQBARKOD.AsString,[]) Then
        Begin
                if SatisBodroIBQSTOKNO.AsString='' Then
                Begin
                        SatisBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        SatisBodroIBQ.Post;
                        SatisBodroIBQ.Edit;
                        BarkodluSatis := True;
                end
                else
                if SatisBodroIBQSTOKNO.NewValue=SatisBodroIBQSTOKNO.OldValue Then
                        SatisBodroIBQBARKOD.NewValue := SatisBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                SatisBodroIBQSTOKNO.Clear;
                SatisBodroIBQGIRISMIKTAR.Clear;
                SatisBodroIBQBIRIMFIYAT.Clear;
                SatisBodroIBQBIRIM.Clear;
                SatisBodroIBQKDVORANI.Clear;
                SatisBodroIBQSTOKADI.Clear;
                SatisBodroIBQISKONTO1.Clear;
                SatisBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMAlisSatis.AlisiadeBodroIBQBARKODChange(Sender: TField);
begin
        DMStok.StokKartiIBQ.open;
        if Application.FindComponent('FAlisiade') <> nil then
        if AlisiadeBodroIBQBARKOD.AsString<>'' Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', AlisiadeBodroIBQBARKOD.AsString,[]) Then
        Begin
                if AlisiadeBodroIBQSTOKNO.AsString='' Then
                Begin
                        AlisiadeBodroIBQSTOKNO.AsString := DMStok.StokKartiIBQSTOKNO.AsString;
                        AlisiadeBodroIBQ.Post;
                        AlisiadeBodroIBQ.Edit;
                        BarkodluAlisiade := True;
                end
                else
                if AlisiadeBodroIBQSTOKNO.NewValue=AlisiadeBodroIBQSTOKNO.OldValue Then
                        AlisiadeBodroIBQBARKOD.NewValue := AlisiadeBodroIBQBARKOD.OldValue;
        end else
        Begin
                Application.MessageBox('Bu Barkod numarasý ile bir stok bulunmamakta!...','          Uyarý Mesajý', mb_Ok);
                AlisiadeBodroIBQSTOKNO.Clear;
                AlisiadeBodroIBQGIRISMIKTAR.Clear;
                AlisiadeBodroIBQBIRIMFIYAT.Clear;
                AlisiadeBodroIBQBIRIM.Clear;
                AlisiadeBodroIBQKDVORANI.Clear;
                AlisiadeBodroIBQSTOKADI.Clear;
                AlisiadeBodroIBQISKONTO1.Clear;
                AlisiadeBodroIBQBARKOD.Clear;
        end;
end;

procedure TDMAlisSatis.AlisiadeBodroIBQMIKTARChange(Sender: TField);
begin
        if DMStok.StokKartiIBQ.Locate('STOKKOD',AlisiadeBodroIBQSTOKKOD.AsInteger,[]) then
        if (DMStok.StokKartiIBQNEGSEVIYE.AsInteger = 1) and
                (AlisiadeBodroIBQMIKTAR.AsFloat * AlisiadeBodroIBQMIKTARCARPAN.AsFloat > DMStok.StokKartiIBQBAKIYE.AsFloat) then
        begin
                AlisiadeBodroIBQMIKTAR.AsFloat := 0;
                ShowMessage('Yeterli miktarda stok yok!.');
        end;
end;

procedure TDMAlisSatis.AlisiadeBodroIBQBIRIMChange(Sender: TField);
begin
        if AlisiadeBodroIBQBIRIM.AsString = 'Koli' then
        begin
                if DMStok.StokKartiIBQ.Locate('STOKKOD',AlisiadeBodroIBQSTOKKOD.AsInteger,[]) then
                begin
                        AlisiadeBodroIBQMIKTARCARPAN.AsFloat :=DMStok.StokKartiIBQKOLIMIKTAR.AsFloat;
                end;
        end else AlisiadeBodroIBQMIKTARCARPAN.AsFloat := 1;
end;

procedure TDMAlisSatis.AlisiadeBodroIBQBIRIMFIYATChange(Sender: TField);
begin
     if AlisiadeBodroIBQBIRIMFIYAT.AsFloat > 0 then
        if DMStok.StokKartiIBQ.Locate('STOKKOD',AlisiadeBodroIBQSTOKKOD.AsInteger,[]) then
         begin
           if SatisIBQCARIKOD.AsInteger > 0 then
            begin
             if DMStok.StokKartiIBQ.FindField('SATISFIYAT'+SatisIBQC_FIYATSEC.AsString).AsFloat > AlisiadeBodroIBQBIRIMFIYAT.AsFloat THEN
               begin
                  if MessageBox(Application.Handle,'Satýþ fiyatýnýn altýnda bir deðer girildi devam etmek ister misiniz?','Uyarý',MB_YESNO)= mrNO then
                   begin
                      AlisiadeBodroIBQBIRIMFIYAT.AsFloat := 0;
                   end;
               end;
            end else begin
             if DMStok.StokKartiIBQSATISFIYAT1.AsFloat > AlisiadeBodroIBQBIRIMFIYAT.AsFloat THEN
               begin
                  if MessageBox(Application.Handle,'Satýþ fiyatýnýn altýnda bir deðer girildi devam etmek ister misiniz?','Uyarý',MB_YESNO)= mrNO then
                   begin
                      AlisiadeBodroIBQBIRIMFIYAT.AsFloat := 0;
                   end;
               end;
            end;
         end;
end;

procedure TDMAlisSatis.AlisiadeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisiadeIBQNewRecord(DataSet: TDataSet);
begin
        AlisiadeIBQISLEMTUR.AsString  := 'Alýþ Ýade';
        AlisiadeIBQTARIH.AsDateTime := BugununTarihi;
        AlisiadeIBQFATURATARIH.AsDateTime := BugununTarihi;
        AlisiadeIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        AlisiadeIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        AlisiadeIBQKDVSECIM.AsString := 'Hariç';
        AlisiadeIBQSTOKYERIKOD.AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.AlisiadeBodroIBQNewRecord(DataSet: TDataSet);
begin
        AlisiadeBodroIBQISLEMKOD.AsInteger := AlisiadeIBQISLEMKOD.AsInteger;
        AlisiadeBodroIBQISLEMTUR.AsString := 'Alýþ Ýade';
        AlisiadeBodroIBQKDVSECIM.AsString := AlisiadeIBQKDVSECIM.AsString;
        AlisiadeBodroIBQTARIH.AsDateTime := AlisiadeIBQTARIH.AsDateTime;
        AlisiadeBodroIBQVADE.AsDateTime := AlisiadeIBQTARIH.AsDateTime;
        AlisiadeBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        AlisiadeBodroIBQSTOKYERIKOD.AsInteger := AlisiadeIBQSTOKYERIKOD.AsInteger;
end;

procedure TDMAlisSatis.AlisiadeBodroIBQAfterPost(DataSet: TDataSet);
var
    yer: pointer;
begin
        yer := AlisiadeBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        AlisiadeIBQ.Refresh;
        AlisiadeBodroIBQ.GotoBookmark(yer);

end;

procedure TDMAlisSatis.SatisBilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.AlisBilgiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMAlisSatis.SatisIBQAfterEdit(DataSet: TDataSet);
begin
        SatisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMAlisSatis.SatisIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

end.
