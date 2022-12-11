unit StokDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMStok = class(TDataModule)
StokKartUSQL: TIBUpdateSQL;
    StokKartDS: TDataSource;
    StokAlterIBQ: TIBQuery;
    StokAlterUSQL: TIBUpdateSQL;
    StokAlterDS: TDataSource;
    StokOzellikIBQ: TIBQuery;
    StokOzellikSQL5: TIBUpdateSQL;
    StokOzellikDS: TDataSource;
    StokGirisIBQ: TIBQuery;
    StokGirisUSQL: TIBUpdateSQL;
    StokGirisDS: TDataSource;
    FiyatListesiIBQ: TIBQuery;
    FiyatListesiUSQL: TIBUpdateSQL;
    FiyatListesiDS: TDataSource;
    GrupBaglantiIBQ: TIBQuery;
    GrupBaglantiIBQGurupAdi: TStringField;
    GrupBaglantiDS: TDataSource;
    StokGruplariIBQ: TIBQuery;
    StokGruplariDS: TDataSource;
    StokGruplariUSQL: TIBUpdateSQL;
    GrupBaglantiIBQGRUPKOD: TIntegerField;
    GrupBaglantiIBQGRUPLARKOD: TIntegerField;
    GrupBaglantiIBQKONTROLNO: TIBStringField;
    GrupBaglantiIBQACTIVITE: TIBStringField;
    StokKartLookupIBQ: TIBQuery;
    StokKartLookupDS: TDataSource;
    StokGrupKartDS: TDataSource;
    StokListIBQ: TIBQuery;
    StokListDS: TDataSource;
    StokListIBQSTOKNO: TIntegerField;
    StokListIBQSTOKADI: TIBStringField;
    StokListIBQSUMGIRISMIKTAR: TFloatField;
    StokListIBQSUMCIKISMIKTAR: TFloatField;
    StokListIBQBAKIYE: TFloatField;
    StokListIBQDURUM: TIntegerField;
    SKontrolBodroIBQ: TIBQuery;
    SKontrolBodroDS: TDataSource;
    GrupBaglantiUSQL: TIBUpdateSQL;
    StokAlterIBQALTERKOD: TIntegerField;
    StokAlterIBQSTOKKOD: TIntegerField;
    StokAlterIBQACIKLAMA: TIBStringField;
    StokAlterIBQSTOKBAGKOD: TIntegerField;
    StokOzellikIBQSTOKEZOLKOD: TIntegerField;
    StokOzellikIBQSTOKKOD: TIntegerField;
    StokOzellikIBQOZELLIKNO: TIntegerField;
    StokOzellikIBQOZELLIK: TIBStringField;
    StokOzellikIBQACIKLAMA: TIBStringField;
    StokGrupKontrolIBQ: TIBQuery;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StokGrupKontrolDS: TDataSource;
    StokKToplamIBQ: TIBQuery;
    StokKToplamDS: TDataSource;
    StokKToplamIBQSUMCIKMIK: TFloatField;
    StokKToplamIBQSUMGIRMIK: TFloatField;
    StokGrupKontrolIBQGRUPKOD: TIntegerField;
    StokGrupKontrolIBQGRUPLARKOD: TIntegerField;
    StokGrupKontrolIBQKONTROLNO: TIBStringField;
    StokGrupKontrolIBQACTIVITE: TIBStringField;
    StokGrupKontrolIBQSTOKNO: TIntegerField;
    StokGrupKontrolIBQBARKOD: TIBStringField;
    StokGrupKontrolIBQSTOKADI: TIBStringField;
    StokGrupKontrolIBQSTOKTURU: TIBStringField;
    StokGrupKontrolIBQBIRIM: TIBStringField;
    StokGrupKontrolIBQBIRIMCARPAN: TFloatField;
    StokGrupKontrolIBQKOLIMIKTAR: TIntegerField;
    StokGrupKontrolIBQSECIM: TIntegerField;
    StokGrupKontrolIBQPARABIRIMIKOD: TIntegerField;
    StokGrupKontrolIBQSTOKTIPI: TIBStringField;
    StokGrupKontrolIBQACTIVITE1: TIntegerField;
    StokGrupKontrolIBQKARORANI: TFloatField;
    StokGrupKontrolIBQMINSEVIYE: TIntegerField;
    StokGrupKontrolIBQMAXSEVIYE: TIntegerField;
    StokGrupKontrolIBQSIPSEVIYE: TIntegerField;
    StokGrupKontrolIBQNEGSEVIYE: TIntegerField;
    StokGrupKontrolIBQKDVORAN: TFloatField;
    StokGrupKontrolIBQALISFIYAT: TFloatField;
    StokGrupKontrolIBQSATISFIYAT1: TFloatField;
    StokGrupKontrolIBQSATISFIYAT2: TFloatField;
    StokGrupKontrolIBQSATISFIYAT3: TFloatField;
    StokGrupKontrolIBQKDVLI_SATIS1: TFloatField;
    StokGrupKontrolIBQKDVLI_SATIS2: TFloatField;
    StokGrupKontrolIBQKDVLI_SATIS3: TFloatField;
    StokGrupKontrolIBQBAKIYE: TFloatField;
    StokGrupKontrolIBQDURUM: TIntegerField;
    StokGrupKontrolIBQREELALIS: TFloatField;
    StokGrupKontrolIBQREELSATIS: TFloatField;
    StokGrupKontrolIBQORTALAMALIS: TFloatField;
    StokGrupKontrolIBQORTALAMSATIS: TFloatField;
    StokGrupKontrolIBQSONALIS: TFloatField;
    StokGrupKontrolIBQSONSATIS: TFloatField;
    StokGrupKontrolIBQACIKLAMA: TMemoField;
    StokKToplamIBQMiktar: TFloatField;
    StokGrupKartUSQL: TIBUpdateSQL;
    GrupBaglantiIBQSTOKKOD: TIntegerField;
    StokGrupKontrolIBQSTOKKOD: TIntegerField;
    StokGrupKontrolIBQSTOKKOD1: TIntegerField;
    StokGrupKontrolIBQSTOKKOD2: TIntegerField;
    StokKartiIBQ: TIBQuery;
    StokResimIBQ: TIBQuery;
    StokResimUSQL: TIBUpdateSQL;
    StokResimDS: TDataSource;
    StokResimIBQRESIMKOD: TIntegerField;
    StokResimIBQSTOKKOD: TIntegerField;
    StokResimIBQRESIM: TBlobField;
    StokKartiIBQSTOKKOD: TIntegerField;
    StokKartiIBQSTOKNO: TIntegerField;
    StokKartiIBQBARKOD: TIBStringField;
    StokKartiIBQSTOKADI: TIBStringField;
    StokKartiIBQSTOKTURU: TIBStringField;
    StokKartiIBQBIRIM: TIBStringField;
    StokKartiIBQBIRIMCARPAN: TFloatField;
    StokKartiIBQKOLIMIKTAR: TIntegerField;
    StokKartiIBQSECIM: TIntegerField;
    StokKartiIBQPARABIRIMIKOD: TIntegerField;
    StokKartiIBQSTOKTIPI: TIBStringField;
    StokKartiIBQACTIVITE: TIntegerField;
    StokKartiIBQKARORANI: TFloatField;
    StokKartiIBQMINSEVIYE: TIntegerField;
    StokKartiIBQMAXSEVIYE: TIntegerField;
    StokKartiIBQSIPSEVIYE: TIntegerField;
    StokKartiIBQNEGSEVIYE: TIntegerField;
    StokKartiIBQKDVORAN: TFloatField;
    StokKartiIBQALISFIYAT: TFloatField;
    StokKartiIBQSATISFIYAT1: TFloatField;
    StokKartiIBQSATISFIYAT2: TFloatField;
    StokKartiIBQSATISFIYAT3: TFloatField;
    StokKartiIBQKDVLI_SATIS1: TFloatField;
    StokKartiIBQKDVLI_SATIS2: TFloatField;
    StokKartiIBQKDVLI_SATIS3: TFloatField;
    StokKartiIBQBAKIYE: TFloatField;
    StokKartiIBQDURUM: TIntegerField;
    StokKartiIBQREELALIS: TFloatField;
    StokKartiIBQREELSATIS: TFloatField;
    StokKartiIBQORTALAMALIS: TFloatField;
    StokKartiIBQORTALAMSATIS: TFloatField;
    StokKartiIBQSONALIS: TFloatField;
    StokKartiIBQSONSATIS: TFloatField;
    StokKartiIBQACIKLAMA: TMemoField;
    StokKartiIBQCARIKOD: TIntegerField;
    StokKartiIBQC_PARABIRIMI: TIBStringField;
    StokKartiIBQC_KAYNAKADI: TIBStringField;
    StokKartLookupIBQSTOKKOD: TIntegerField;
    StokKartLookupIBQSTOKNO: TIntegerField;
    StokKartLookupIBQBARKOD: TIBStringField;
    StokKartLookupIBQSTOKADI: TIBStringField;
    StokKartLookupIBQSTOKTURU: TIBStringField;
    StokKartLookupIBQBIRIM: TIBStringField;
    StokKartLookupIBQBIRIMCARPAN: TFloatField;
    StokKartLookupIBQKOLIMIKTAR: TIntegerField;
    StokKartLookupIBQSECIM: TIntegerField;
    StokKartLookupIBQPARABIRIMIKOD: TIntegerField;
    StokKartLookupIBQSTOKTIPI: TIBStringField;
    StokKartLookupIBQACTIVITE: TIntegerField;
    StokKartLookupIBQKARORANI: TFloatField;
    StokKartLookupIBQMINSEVIYE: TIntegerField;
    StokKartLookupIBQMAXSEVIYE: TIntegerField;
    StokKartLookupIBQSIPSEVIYE: TIntegerField;
    StokKartLookupIBQNEGSEVIYE: TIntegerField;
    StokKartLookupIBQKDVORAN: TFloatField;
    StokKartLookupIBQALISFIYAT: TFloatField;
    StokKartLookupIBQSATISFIYAT1: TFloatField;
    StokKartLookupIBQSATISFIYAT2: TFloatField;
    StokKartLookupIBQSATISFIYAT3: TFloatField;
    StokKartLookupIBQKDVLI_SATIS1: TFloatField;
    StokKartLookupIBQKDVLI_SATIS2: TFloatField;
    StokKartLookupIBQKDVLI_SATIS3: TFloatField;
    StokKartLookupIBQBAKIYE: TFloatField;
    StokKartLookupIBQDURUM: TIntegerField;
    StokKartLookupIBQREELALIS: TFloatField;
    StokKartLookupIBQREELSATIS: TFloatField;
    StokKartLookupIBQORTALAMALIS: TFloatField;
    StokKartLookupIBQORTALAMSATIS: TFloatField;
    StokKartLookupIBQSONALIS: TFloatField;
    StokKartLookupIBQSONSATIS: TFloatField;
    StokKartLookupIBQACIKLAMA: TMemoField;
    StokKartLookupIBQCARIKOD: TIntegerField;
    StokKartLookupIBQC_PARABIRIMI: TIBStringField;
    StokKartLookupIBQC_KAYNAKADI: TIBStringField;
    StokAlterIBQC_STOKADI: TIBStringField;
    StokGruplariIBQGRUPLARKOD: TIntegerField;
    StokGruplariIBQANANO: TIntegerField;
    StokGruplariIBQGRUPADI: TIBStringField;
    StokGruplariIBQKONTROLNO: TIBStringField;
    StokGrupKartIBQ: TIBQuery;
    StokGrupKartIBQSTOKKOD: TIntegerField;
    StokGrupKartIBQGRUPKOD: TIntegerField;
    StokGrupKartIBQGRUPLARKOD: TIntegerField;
    StokGrupKartIBQKONTROLNO: TIBStringField;
    StokGrupKartIBQACTIVITE: TIBStringField;
    StokGrupKartIBQSTOKKOD1: TIntegerField;
    StokGrupKartIBQSTOKNO: TIntegerField;
    StokGrupKartIBQBARKOD: TIBStringField;
    StokGrupKartIBQSTOKADI: TIBStringField;
    StokGrupKartIBQSTOKTURU: TIBStringField;
    StokGrupKartIBQBIRIM: TIBStringField;
    StokGrupKartIBQBIRIMCARPAN: TFloatField;
    StokGrupKartIBQKOLIMIKTAR: TIntegerField;
    StokGrupKartIBQSECIM: TIntegerField;
    StokGrupKartIBQPARABIRIMIKOD: TIntegerField;
    StokGrupKartIBQSTOKTIPI: TIBStringField;
    StokGrupKartIBQACTIVITE1: TIntegerField;
    StokGrupKartIBQKARORANI: TFloatField;
    StokGrupKartIBQMINSEVIYE: TIntegerField;
    StokGrupKartIBQMAXSEVIYE: TIntegerField;
    StokGrupKartIBQSIPSEVIYE: TIntegerField;
    StokGrupKartIBQNEGSEVIYE: TIntegerField;
    StokGrupKartIBQKDVORAN: TFloatField;
    StokGrupKartIBQALISFIYAT: TFloatField;
    StokGrupKartIBQSATISFIYAT1: TFloatField;
    StokGrupKartIBQSATISFIYAT2: TFloatField;
    StokGrupKartIBQSATISFIYAT3: TFloatField;
    StokGrupKartIBQKDVLI_SATIS1: TFloatField;
    StokGrupKartIBQKDVLI_SATIS2: TFloatField;
    StokGrupKartIBQKDVLI_SATIS3: TFloatField;
    StokGrupKartIBQBAKIYE: TFloatField;
    StokGrupKartIBQDURUM: TIntegerField;
    StokGrupKartIBQREELALIS: TFloatField;
    StokGrupKartIBQREELSATIS: TFloatField;
    StokGrupKartIBQORTALAMALIS: TFloatField;
    StokGrupKartIBQORTALAMSATIS: TFloatField;
    StokGrupKartIBQSONALIS: TFloatField;
    StokGrupKartIBQSONSATIS: TFloatField;
    StokGrupKartIBQACIKLAMA: TMemoField;
    StokGrupKartIBQCARIKOD: TIntegerField;
    StokGrupKartIBQC_PARABIRIMI: TIBStringField;
    StokGrupKartIBQC_KAYNAKADI: TIBStringField;
    StokGrupKartIBQALINANSIPARIS: TFloatField;
    StokGrupKartIBQVERILENSIPARIS: TFloatField;
    StokGrupKartIBQAGIRLIK: TFloatField;
    StokGrupKartIBQHACIM: TFloatField;
    StokGrupKartIBQGirisMiktar: TFloatField;
    StokGrupKartIBQCikisMiktar: TFloatField;
    SKontrolBodroIBQSUMCIKMIK: TFloatField;
    SKontrolBodroIBQSUMGIRMIK: TFloatField;
    SKontrolBodroIBQC_STOKYERI: TIBStringField;
    SKontrolBodroIBQMiktar: TFloatField;
    SKontrolBodroIBQDurum: TStringField;
    StokGirisIBQISLEMKOD: TIntegerField;
    StokGirisIBQCARIKOD: TIntegerField;
    StokGirisIBQCARINO: TIntegerField;
    StokGirisIBQISLEMTUR: TIBStringField;
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
    IBQuery1: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    TimeField1: TTimeField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IntegerField6: TIntegerField;
    DateField3: TDateField;
    IBStringField3: TIBStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    DateField4: TDateField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IntegerField19: TIntegerField;
    DateField5: TDateField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    IBUpdateSQL1: TIBUpdateSQL;
    DataSource1: TDataSource;
    StokKartiIBQALINANSIPARIS: TFloatField;
    StokKartiIBQVERILENSIPARIS: TFloatField;
    StokKartiIBQAGIRLIK: TFloatField;
    StokKartiIBQHACIM: TFloatField;
    StokKartiIBQSTOKTIPIKOD: TIntegerField;
    StokKartiIBQC_STOKTIPI: TIBStringField;
    StokGrupKartIBQC_DURUM: TIBStringField;
    FiyatListesiIBQSTOKKOD: TIntegerField;
    FiyatListesiIBQGRUPKOD: TIntegerField;
    FiyatListesiIBQSTOKKOD1: TIntegerField;
    FiyatListesiIBQGRUPLARKOD: TIntegerField;
    FiyatListesiIBQKONTROLNO: TIBStringField;
    FiyatListesiIBQACTIVITE: TIBStringField;
    FiyatListesiIBQSTOKKOD2: TIntegerField;
    FiyatListesiIBQSTOKNO: TIntegerField;
    FiyatListesiIBQBARKOD: TIBStringField;
    FiyatListesiIBQSTOKADI: TIBStringField;
    FiyatListesiIBQSTOKTURU: TIBStringField;
    FiyatListesiIBQBIRIM: TIBStringField;
    FiyatListesiIBQBIRIMCARPAN: TFloatField;
    FiyatListesiIBQKOLIMIKTAR: TIntegerField;
    FiyatListesiIBQSECIM: TIntegerField;
    FiyatListesiIBQPARABIRIMIKOD: TIntegerField;
    FiyatListesiIBQSTOKTIPI: TIBStringField;
    FiyatListesiIBQACTIVITE1: TIntegerField;
    FiyatListesiIBQKARORANI: TFloatField;
    FiyatListesiIBQMINSEVIYE: TIntegerField;
    FiyatListesiIBQMAXSEVIYE: TIntegerField;
    FiyatListesiIBQSIPSEVIYE: TIntegerField;
    FiyatListesiIBQNEGSEVIYE: TIntegerField;
    FiyatListesiIBQKDVORAN: TFloatField;
    FiyatListesiIBQALISFIYAT: TFloatField;
    FiyatListesiIBQSATISFIYAT1: TFloatField;
    FiyatListesiIBQSATISFIYAT2: TFloatField;
    FiyatListesiIBQSATISFIYAT3: TFloatField;
    FiyatListesiIBQKDVLI_SATIS1: TFloatField;
    FiyatListesiIBQKDVLI_SATIS2: TFloatField;
    FiyatListesiIBQKDVLI_SATIS3: TFloatField;
    FiyatListesiIBQBAKIYE: TFloatField;
    FiyatListesiIBQDURUM: TIntegerField;
    FiyatListesiIBQREELALIS: TFloatField;
    FiyatListesiIBQREELSATIS: TFloatField;
    FiyatListesiIBQORTALAMALIS: TFloatField;
    FiyatListesiIBQORTALAMSATIS: TFloatField;
    FiyatListesiIBQSONALIS: TFloatField;
    FiyatListesiIBQSONSATIS: TFloatField;
    FiyatListesiIBQACIKLAMA: TMemoField;
    FiyatListesiIBQCARIKOD: TIntegerField;
    FiyatListesiIBQC_PARABIRIMI: TIBStringField;
    FiyatListesiIBQC_KAYNAKADI: TIBStringField;
    FiyatListesiIBQALINANSIPARIS: TFloatField;
    FiyatListesiIBQVERILENSIPARIS: TFloatField;
    FiyatListesiIBQAGIRLIK: TFloatField;
    FiyatListesiIBQHACIM: TFloatField;
    FiyatListesiIBQSTOKTIPIKOD: TIntegerField;
    FiyatListesiIBQC_STOKTIPI: TIBStringField;
    FiyatListesiIBQC_DURUM: TIBStringField;
    procedure StokKartiIBQAfterPost(DataSet: TDataSet);
    procedure StokKartiIBQAfterDelete(DataSet: TDataSet);
    procedure FiyatListesiIBQAfterDelete(DataSet: TDataSet);
    procedure FiyatListesiIBQAfterPost(DataSet: TDataSet);
    procedure StokGruplariIBQAfterPost(DataSet: TDataSet);
    procedure StokGruplariIBQAfterDelete(DataSet: TDataSet);
    procedure GrupBaglantiIBQAfterDelete(DataSet: TDataSet);
    procedure GrupBaglantiIBQAfterPost(DataSet: TDataSet);
    procedure StokAlterIBQAfterPost(DataSet: TDataSet);
    procedure StokAlterIBQAfterDelete(DataSet: TDataSet);
    procedure GrupBaglantiIBQNewRecord(DataSet: TDataSet);
    procedure StokKToplamIBQCalcFields(DataSet: TDataSet);
    procedure StokGrupKartIBQAfterPost(DataSet: TDataSet);
    procedure StokResimIBQAfterPost(DataSet: TDataSet);
    procedure StokResimIBQAfterDelete(DataSet: TDataSet);
    procedure StokResimIBQNewRecord(DataSet: TDataSet);
    procedure StokOzellikIBQNewRecord(DataSet: TDataSet);
    procedure SKontrolBodroIBQCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMStok: TDMStok;

implementation

Uses DataDM;
{$R *.dfm}

procedure TDMStok.StokKartiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.StokKartiIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.FiyatListesiIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.FiyatListesiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.StokGruplariIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.StokGruplariIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
        
end;

procedure TDMStok.GrupBaglantiIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.GrupBaglantiIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.StokAlterIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.StokAlterIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMStok.GrupBaglantiIBQNewRecord(DataSet: TDataSet);
begin
        GrupBaglantiIBQSTOKKOD.AsInteger := StokKartiIBQSTOKKOD.AsInteger;
end;

procedure TDMStok.StokKToplamIBQCalcFields(DataSet: TDataSet);
begin
        StokKToplamIBQMiktar.AsFloat := StokKToplamIBQSUMGIRMIK.AsFloat - StokKToplamIBQSUMCIKMIK.AsFloat;
end;

procedure TDMStok.StokGrupKartIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(dataset);
end;

procedure TDMStok.StokResimIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(dataset);
end;

procedure TDMStok.StokResimIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(dataset);
end;

procedure TDMStok.StokResimIBQNewRecord(DataSet: TDataSet);
begin
        StokResimIBQSTOKKOD.AsInteger := StokKartiIBQSTOKKOD.AsInteger;
end;

procedure TDMStok.StokOzellikIBQNewRecord(DataSet: TDataSet);
begin
        StokOzellikIBQSTOKKOD.AsInteger :=StokKartiIBQSTOKKOD.AsInteger;
end;

procedure TDMStok.SKontrolBodroIBQCalcFields(DataSet: TDataSet);
begin
        SKontrolBodroIBQMiktar.AsInteger := SKontrolBodroIBQSUMGIRMIK.AsInteger -  SKontrolBodroIBQSUMCIKMIK.AsInteger;
        if SKontrolBodroIBQMiktar.AsInteger <0 Then
        Begin
                SKontrolBodroIBQMiktar.AsInteger :=  SKontrolBodroIBQMiktar.AsInteger * (-1);
                SKontrolBodroIBQDurum.AsString := 'Eksi';
        end else
        if SKontrolBodroIBQMiktar.AsInteger >0 Then SKontrolBodroIBQDurum.AsString := 'Artý'
        else SKontrolBodroIBQDurum.AsString := '';
end;

end.
