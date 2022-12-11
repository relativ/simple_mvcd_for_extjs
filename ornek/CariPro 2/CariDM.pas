unit CariDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery,
  IBStoredProc,Graphics, DBTables;

type
  TDMCari = class(TDataModule)
    CariKartIBQ: TIBQuery;
    CariKartUSQL: TIBUpdateSQL;
    CariKartDS: TDataSource;
    CariKartLookupIBQ: TIBQuery;
    KefilIBQ: TIBQuery;
    IKefilUSQL: TIBUpdateSQL;
    KefilDS: TDataSource;
    CiftDenetimIBQ: TIBQuery;
    AktifCariIBQ: TIBQuery;
    BosIBQ: TIBQuery;
    CariislemIBQ: TIBQuery;
    CariislemUSQL: TIBUpdateSQL;
    CariislemDS: TDataSource;
    CariKartIBQCARIKOD: TIntegerField;
    CariKartIBQCARINO: TIntegerField;
    CariKartIBQKOD: TIBStringField;
    CariKartIBQCARIUNVAN1: TIBStringField;
    CariKartIBQCARIUNVAN2: TIBStringField;
    CariKartIBQTAMADI: TIBStringField;
    CariKartIBQACIKLAMA: TMemoField;
    CariKartIBQCARITIPKOD: TIBStringField;
    CariKartIBQSEKTORKOD: TIBStringField;
    CariKartIBQTEL1: TIBStringField;
    CariKartIBQTEL2: TIBStringField;
    CariKartIBQTEL3: TIBStringField;
    CariKartIBQFAKS: TIBStringField;
    CariKartIBQGSM: TIBStringField;
    CariKartIBQMAHALLE: TIBStringField;
    CariKartIBQCADDE: TIBStringField;
    CariKartIBQSOKAK: TIBStringField;
    CariKartIBQAPARTMAN: TIBStringField;
    CariKartIBQNOSU: TIBStringField;
    CariKartIBQILCEKOD: TIntegerField;
    CariKartIBQSEHIRKOD: TIntegerField;
    CariKartIBQVERDAIRE: TIBStringField;
    CariKartIBQVERGINO: TIBStringField;
    CariKartIBQAKTIVITE: TIntegerField;
    CariKartIBQBLOKE: TIntegerField;
    CariKartIBQKREDILIMIT: TFloatField;
    CariKartIBQRISKLIMIT: TFloatField;
    CariKartIBQFIYATSECIM: TIntegerField;
    CariKartIBQPARABIRIMKOD: TIntegerField;
    CariKartIBQMAIL: TIBStringField;
    CariKartIBQWEB: TIBStringField;
    CariKartIBQKEFILKOD: TIntegerField;
    CariKartIBQUYARI: TIntegerField;
    CariKartIBQBAKIYE: TFloatField;
    CariKartIBQDURUM: TIBStringField;
    CariKartLookupIBQCARIKOD: TIntegerField;
    CariKartLookupIBQCARINO: TIntegerField;
    CariKartLookupIBQKOD: TIBStringField;
    CariKartLookupIBQCARIUNVAN1: TIBStringField;
    CariKartLookupIBQCARIUNVAN2: TIBStringField;
    CariKartLookupIBQTAMADI: TIBStringField;
    CariStokIBQ: TIBQuery;
    CariStokDS: TDataSource;
    CariCekIBQ: TIBQuery;
    CariCekDS: TDataSource;
    CariBankaIBQ: TIBQuery;
    CariBankaDS: TDataSource;
    CariKartIBQMESAJ: TMemoField;
    CariKartIBQC_PARABIRIMI: TIBStringField;
    AktifCariDS: TDataSource;
    CariSecimProc: TIBStoredProc;
    CariKartIBQYETKILI: TIBStringField;
    KefilIBQKEFILKOD: TIntegerField;
    KefilIBQADI: TIBStringField;
    KefilIBQSOYADI: TIBStringField;
    KefilIBQMESLEGI: TIBStringField;
    KefilIBQMEMLEKETI: TIBStringField;
    KefilIBQADRES: TIBStringField;
    KefilIBQTELEFON: TIBStringField;
    KefilIBQGSM: TIBStringField;
    KefilIBQACIKLAMA: TMemoField;
    KefilIBQCARIKOD: TIntegerField;
    CariKartIBQISTIHBARAT: TMemoField;
    CariislemIBQISLEMKOD: TIntegerField;
    CariislemIBQCARIKOD: TIntegerField;
    CariislemIBQISLEMTUR: TIBStringField;
    CariislemIBQISLEMTURKOD: TIntegerField;
    CariislemIBQCAISLEMNO: TIntegerField;
    CariislemIBQTARIH: TDateField;
    CariislemIBQSAAT: TTimeField;
    CariislemIBQACIKLAMA: TIBStringField;
    CariislemIBQTEDIYE: TFloatField;
    CariislemIBQTAHSILAT: TFloatField;
    CariislemIBQBAKIYE: TFloatField;
    CariislemIBQDURUM: TIntegerField;
    CariislemIBQD_TEDIYE: TFloatField;
    CariislemIBQD_TAHSILAT: TFloatField;
    CariislemIBQCARIKURU: TFloatField;
    CariislemIBQISLEMKURU: TFloatField;
    CariislemIBQKAPATMA: TIntegerField;
    CariislemIBQCARINO: TIntegerField;
    CariislemIBQBAGLANTINO: TIntegerField;
    CariislemIBQCARIHESAPILISKI: TIntegerField;
    CariislemIBQPARABIRIMKOD: TIntegerField;
    CariislemIBQMAKBUZNO: TIntegerField;
    CariislemIBQKULLANKOD: TIntegerField;
    CariislemIBQPERSONELKOD: TIntegerField;
    CariislemIBQSISTEM: TIntegerField;
    CariislemIBQC_PARABIRIMI: TIBStringField;
    CariCekIBQISLEMKOD: TIntegerField;
    CariCekIBQCARIKOD: TIntegerField;
    CariCekIBQISLEMTUR: TIBStringField;
    CariCekIBQISLEMTURKOD: TIntegerField;
    CariCekIBQCEKISLEMNO: TIntegerField;
    CariCekIBQTARIH: TDateField;
    CariCekIBQSAAT: TTimeField;
    CariCekIBQACIKLAMA: TIBStringField;
    CariCekIBQTEDIYE: TFloatField;
    CariCekIBQTAHSILAT: TFloatField;
    CariCekIBQBAKIYE: TFloatField;
    CariCekIBQDURUM: TIBStringField;
    CariCekIBQD_TEDIYE: TFloatField;
    CariCekIBQD_TAHSILAT: TFloatField;
    CariCekIBQCARIKURU: TFloatField;
    CariCekIBQISLEMKURU: TFloatField;
    CariCekIBQVADE: TDateField;
    CariCekIBQCARINO: TIntegerField;
    CariCekIBQGELGITKOD: TIBStringField;
    CariCekIBQKASAKOD: TIntegerField;
    CariCekIBQBAGLANTINO: TIntegerField;
    CariCekIBQBANKAKOD: TIntegerField;
    CariCekIBQPARABIRIMKOD: TIntegerField;
    CariCekIBQBANKA: TIBStringField;
    CariCekIBQKESIDEYERI: TIBStringField;
    CariCekIBQMAKBUZNO: TIntegerField;
    CariCekIBQILKCIRO: TIBStringField;
    CariCekIBQCEKSERINO: TIBStringField;
    CariCekIBQKULLANKOD: TIntegerField;
    CariCekIBQSISTEM: TIntegerField;
    CariCekIBQEVRAKDURUMU: TIntegerField;
    CariCekIBQCARIPARABIRIMKOD: TIntegerField;
    CariCekIBQC_CARIPARABIRIM: TIBStringField;
    CariBankaIBQISLEMKOD: TIntegerField;
    CariBankaIBQCARIKOD: TIntegerField;
    CariBankaIBQBANKAKOD: TIntegerField;
    CariBankaIBQISLEMTUR: TIBStringField;
    CariBankaIBQISLEMTURKOD: TIntegerField;
    CariBankaIBQBANKAISLEMNO: TIntegerField;
    CariBankaIBQTARIH: TDateField;
    CariBankaIBQSAAT: TTimeField;
    CariBankaIBQACIKLAMA: TIBStringField;
    CariBankaIBQTEDIYE: TFloatField;
    CariBankaIBQTAHSILAT: TFloatField;
    CariBankaIBQBAKIYE: TFloatField;
    CariBankaIBQDURUM: TIntegerField;
    CariBankaIBQKASAKOD: TIntegerField;
    CariBankaIBQCARINO: TIntegerField;
    CariBankaIBQGELGITKOD: TIBStringField;
    CariBankaIBQEVRAKNO: TIntegerField;
    CariBankaIBQBELGENO: TIntegerField;
    CariBankaIBQBAGLANTINO: TIntegerField;
    CariBankaIBQPARABIRIMKOD: TIntegerField;
    CariBankaIBQMAKBUZNO: TIntegerField;
    CariBankaIBQKULLANKOD: TIntegerField;
    CariBankaIBQPERSONELKOD: TIntegerField;
    CariBankaIBQSISTEM: TIntegerField;
    CariBankaIBQD_TEDIYE: TFloatField;
    CariBankaIBQD_TAHSILAT: TFloatField;
    CariBankaIBQCARIKURU: TFloatField;
    CariBankaIBQISLEMKURU: TFloatField;
    CariBankaIBQCARIPARABIRIMKOD: TIntegerField;
    CariBankaIBQC_PARABIRIMI: TIBStringField;
    CariBankaIBQC_CARIPARABIRIM: TIBStringField;
    CariBankaIBQC_KASAADI: TIBStringField;
    CariBankaIBQC_HESAPADI: TIBStringField;
    CariKartIBQC_ILCEADI: TIBStringField;
    CariKartIBQC_SEHIRADI: TIBStringField;
    AktifCariIBQCARIKOD: TIntegerField;
    AktifCariIBQCARINO: TIntegerField;
    AktifCariIBQKOD: TIBStringField;
    AktifCariIBQCARIUNVAN1: TIBStringField;
    AktifCariIBQCARIUNVAN2: TIBStringField;
    AktifCariIBQTAMADI: TIBStringField;
    AktifCariIBQACIKLAMA: TMemoField;
    AktifCariIBQCARITIPKOD: TIBStringField;
    AktifCariIBQSEKTORKOD: TIBStringField;
    AktifCariIBQTEL1: TIBStringField;
    AktifCariIBQTEL2: TIBStringField;
    AktifCariIBQTEL3: TIBStringField;
    AktifCariIBQFAKS: TIBStringField;
    AktifCariIBQGSM: TIBStringField;
    AktifCariIBQMAHALLE: TIBStringField;
    AktifCariIBQCADDE: TIBStringField;
    AktifCariIBQSOKAK: TIBStringField;
    AktifCariIBQAPARTMAN: TIBStringField;
    AktifCariIBQNOSU: TIBStringField;
    AktifCariIBQILCEKOD: TIntegerField;
    AktifCariIBQSEHIRKOD: TIntegerField;
    AktifCariIBQVERDAIRE: TIBStringField;
    AktifCariIBQVERGINO: TIBStringField;
    AktifCariIBQAKTIVITE: TIntegerField;
    AktifCariIBQBLOKE: TIntegerField;
    AktifCariIBQKREDILIMIT: TFloatField;
    AktifCariIBQRISKLIMIT: TFloatField;
    AktifCariIBQFIYATSECIM: TIntegerField;
    AktifCariIBQPARABIRIMKOD: TIntegerField;
    AktifCariIBQMAIL: TIBStringField;
    AktifCariIBQWEB: TIBStringField;
    AktifCariIBQKEFILKOD: TIntegerField;
    AktifCariIBQUYARI: TIntegerField;
    AktifCariIBQBAKIYE: TFloatField;
    AktifCariIBQDURUM: TIBStringField;
    AktifCariIBQMESAJ: TMemoField;
    AktifCariIBQC_PARABIRIMI: TIBStringField;
    AktifCariIBQYETKILI: TIBStringField;
    AktifCariIBQISTIHBARAT: TMemoField;
    AktifCariIBQC_ILCEADI: TIBStringField;
    AktifCariIBQC_SEHIRADI: TIBStringField;
    GirisDekontuIBQ: TIBQuery;
    GirisDekontuUSQL: TIBUpdateSQL;
    GirisDekontuDS: TDataSource;
    CariislemIBQCARIPARABIRIMKOD: TIntegerField;
    CariislemIBQC_CARIPARABIRIM: TIBStringField;
    CariislemIBQC_CARIADI: TIBStringField;
    CikisDekontuIBQ: TIBQuery;
    CikisDekontuUSQL: TIBUpdateSQL;
    CikisDekontuDS: TDataSource;
    DBAlacakIBQ: TIBQuery;
    DBAlacakUSQL: TIBUpdateSQL;
    DBAlacakDS: TDataSource;
    DBBorcIBQ: TIBQuery;
    DBBorcUSQL: TIBUpdateSQL;
    DBBorcDS: TDataSource;
    Query1: TQuery;
    CariislemIBQC_PERSONEL: TIBStringField;
    CariislemIBQC_DURUM: TIBStringField;
    CariStokIBQSTOKNO: TIntegerField;
    CariStokIBQSTOKADI: TIBStringField;
    CariStokIBQBODROKOD: TIntegerField;
    CariStokIBQSIRANO: TIntegerField;
    CariStokIBQISLEMTUR: TIBStringField;
    CariStokIBQC_ISLEMTURKOD: TIntegerField;
    CariStokIBQCARIKOD: TIntegerField;
    CariStokIBQPARABIRIMKOD: TIntegerField;
    CariStokIBQTARIH: TDateField;
    CariStokIBQSTOKKOD: TIntegerField;
    CariStokIBQBARKOD: TIBStringField;
    CariStokIBQMIKTAR: TFloatField;
    CariStokIBQMIKTARCARPAN: TIntegerField;
    CariStokIBQGIRISMIKTAR: TFloatField;
    CariStokIBQCIKISMIKTAR: TFloatField;
    CariStokIBQBIRIM: TIBStringField;
    CariStokIBQBIRIMFIYAT: TFloatField;
    CariStokIBQGIRISFIYAT: TFloatField;
    CariStokIBQCIKISFIYAT: TFloatField;
    CariStokIBQCIKISTUTAR: TFloatField;
    CariStokIBQGIRISTUTAR: TFloatField;
    CariStokIBQGIRISMATRAHI: TFloatField;
    CariStokIBQCIKISMATRAHI: TFloatField;
    CariStokIBQISKONTO1: TFloatField;
    CariStokIBQISKONTO2: TFloatField;
    CariStokIBQISKONTO3: TFloatField;
    CariStokIBQISKONTO4: TFloatField;
    CariStokIBQKDVORANI: TFloatField;
    CariStokIBQBAKIYE: TFloatField;
    CariStokIBQDURUM: TIntegerField;
    CariStokIBQACIKLAMA: TIBStringField;
    CariStokIBQKAPATMA: TIntegerField;
    CariStokIBQVADE: TDateField;
    CariStokIBQFATURANO: TIntegerField;
    CariStokIBQSTOKYERIKOD: TIntegerField;
    CariStokIBQISLEMKURU: TFloatField;
    CariStokIBQGELGITKOD: TIBStringField;
    CariStokIBQPERSONELKOD: TIntegerField;
    CariStokIBQKULLANKOD: TIntegerField;
    CariStokIBQSISTEM: TIntegerField;
    CariStokIBQEVRAKDURUMU: TIntegerField;
    CariStokIBQSERINO: TIBStringField;
    CariStokIBQCARIHESAPILISKI: TIntegerField;
    CariStokIBQC_CARIADI: TIBStringField;
    CariStokIBQC_STOKYERI: TIBStringField;
    CariStokIBQC_KULLANICIADI: TIBStringField;
    CariStokIBQC_PARABIRIMI: TIBStringField;
    CariStokIBQC_REELGIRIS: TFloatField;
    CariStokIBQC_REELCIKIS: TFloatField;
    CariStokIBQISLEMKOD: TIntegerField;
    CariStokIBQKDVSECIM: TIBStringField;
    CariStokIBQC_TLGIRISTUTARI: TFloatField;
    CariStokIBQC_TLGIRISMATRAHI: TFloatField;
    CariStokIBQC_TLCIKISTUTARI: TFloatField;
    CariStokIBQC_TLCIKISMATRAHI: TFloatField;
    CariStokIBQC_TLBIRIMFIYAT: TFloatField;
    CariStokIBQC_GGMERKEZI: TIBStringField;
    CariStokIBQC_GIRISKDVTUTAR: TFloatField;
    CariStokIBQC_CIKISKDVTUTAR: TFloatField;
    CariStokIBQC_TLGIRISKDVTUTAR: TFloatField;
    CariStokIBQC_TLCIKISKDVTUTARI: TFloatField;
    CariStokIBQBODROKOD1: TIntegerField;
    CariStokIBQSIRANO1: TIntegerField;
    CariStokIBQISLEMTUR1: TIBStringField;
    CariStokIBQC_ISLEMTURKOD1: TIntegerField;
    CariStokIBQCARIKOD1: TIntegerField;
    CariStokIBQPARABIRIMKOD1: TIntegerField;
    CariStokIBQTARIH1: TDateField;
    CariStokIBQSTOKKOD1: TIntegerField;
    CariStokIBQSTOKNO1: TIntegerField;
    CariStokIBQBARKOD1: TIBStringField;
    CariStokIBQSTOKADI1: TIBStringField;
    CariStokIBQMIKTAR1: TFloatField;
    CariStokIBQMIKTARCARPAN1: TIntegerField;
    CariStokIBQGIRISMIKTAR1: TFloatField;
    CariStokIBQCIKISMIKTAR1: TFloatField;
    CariStokIBQBIRIM1: TIBStringField;
    CariStokIBQBIRIMFIYAT1: TFloatField;
    CariStokIBQALISFIYAT: TFloatField;
    CariStokIBQSATISTUTAR: TFloatField;
    CariStokIBQSATISFIYAT: TFloatField;
    CariStokIBQALISTUTAR: TFloatField;
    CariStokIBQALISMATRAHI: TFloatField;
    CariStokIBQSATISMATRAHI: TFloatField;
    CariStokIBQISKONTO11: TFloatField;
    CariStokIBQISKONTO21: TFloatField;
    CariStokIBQISKONTO31: TFloatField;
    CariStokIBQISKONTO41: TFloatField;
    CariStokIBQKDVORANI1: TFloatField;
    CariStokIBQBAKIYE1: TFloatField;
    CariStokIBQDURUM1: TIntegerField;
    CariStokIBQACIKLAMA1: TIBStringField;
    CariStokIBQKAPATMA1: TIntegerField;
    CariStokIBQVADE1: TDateField;
    CariStokIBQFATURANO1: TIntegerField;
    CariStokIBQSTOKYERIKOD1: TIntegerField;
    CariStokIBQISLEMKURU1: TFloatField;
    CariStokIBQGELGITKOD1: TIBStringField;
    CariStokIBQPERSONELKOD1: TIntegerField;
    CariStokIBQKULLANKOD1: TIntegerField;
    CariStokIBQEVRAKDURUMU1: TIntegerField;
    CariStokIBQSERINO1: TIBStringField;
    CariStokIBQCARIHESAPILISKI1: TIntegerField;
    CariStokIBQC_CARIADI1: TIBStringField;
    CariStokIBQC_STOKYERI1: TIBStringField;
    CariStokIBQC_KULLANICIADI1: TIBStringField;
    CariStokIBQC_PARABIRIMI1: TIBStringField;
    CariStokIBQC_REELALIS: TFloatField;
    CariStokIBQC_REELSATIS: TFloatField;
    CariStokIBQISLEMKOD1: TIntegerField;
    CariStokIBQKDVSECIM1: TIBStringField;
    CariStokIBQC_TLALISTUTARI: TFloatField;
    CariStokIBQC_TLALISMATRAHI: TFloatField;
    CariStokIBQC_TLSATISTUTARI: TFloatField;
    CariStokIBQC_TLSATISMATRAHI: TFloatField;
    CariStokIBQC_TLBIRIMFIYAT1: TFloatField;
    CariStokIBQC_GGMERKEZI1: TIBStringField;
    CariStokIBQC_ALISKDVTUTAR: TFloatField;
    CariStokIBQC_SATISKDVTUTAR: TFloatField;
    CariStokIBQC_TLALISKDVTUTAR: TFloatField;
    CariStokIBQC_TLSATISKDVTUTARI: TFloatField;
    CariStokIBQSISTEM1: TIntegerField;
    CariStokIBQMALIYETFIYATI: TFloatField;
    CariStokIBQC_MALIYETTUTARI: TFloatField;
    CariStokIBQC_KARZARAR: TFloatField;
    CariKartIBQSECIM: TIntegerField;
    GirisDekontuIBQISLEMKOD: TIntegerField;
    GirisDekontuIBQCARIKOD: TIntegerField;
    GirisDekontuIBQISLEMTUR: TIBStringField;
    GirisDekontuIBQISLEMTURKOD: TIntegerField;
    GirisDekontuIBQCAISLEMNO: TIntegerField;
    GirisDekontuIBQTARIH: TDateField;
    GirisDekontuIBQSAAT: TTimeField;
    GirisDekontuIBQACIKLAMA: TIBStringField;
    GirisDekontuIBQTEDIYE: TFloatField;
    GirisDekontuIBQTAHSILAT: TFloatField;
    GirisDekontuIBQBAKIYE: TFloatField;
    GirisDekontuIBQDURUM: TIntegerField;
    GirisDekontuIBQD_TEDIYE: TFloatField;
    GirisDekontuIBQD_TAHSILAT: TFloatField;
    GirisDekontuIBQCARIKURU: TFloatField;
    GirisDekontuIBQISLEMKURU: TFloatField;
    GirisDekontuIBQKAPATMA: TIntegerField;
    GirisDekontuIBQCARINO: TIntegerField;
    GirisDekontuIBQBAGLANTINO: TIntegerField;
    GirisDekontuIBQCARIHESAPILISKI: TIntegerField;
    GirisDekontuIBQPARABIRIMKOD: TIntegerField;
    GirisDekontuIBQMAKBUZNO: TIntegerField;
    GirisDekontuIBQKULLANKOD: TIntegerField;
    GirisDekontuIBQPERSONELKOD: TIntegerField;
    GirisDekontuIBQSISTEM: TIntegerField;
    GirisDekontuIBQC_PARABIRIMI: TIBStringField;
    GirisDekontuIBQCARIPARABIRIMKOD: TIntegerField;
    GirisDekontuIBQC_CARIPARABIRIM: TIBStringField;
    GirisDekontuIBQC_CARIADI: TIBStringField;
    GirisDekontuIBQC_PERSONEL: TIBStringField;
    GirisDekontuIBQC_DURUM: TIBStringField;
    CikisDekontuIBQISLEMKOD: TIntegerField;
    CikisDekontuIBQCARIKOD: TIntegerField;
    CikisDekontuIBQISLEMTUR: TIBStringField;
    CikisDekontuIBQISLEMTURKOD: TIntegerField;
    CikisDekontuIBQCAISLEMNO: TIntegerField;
    CikisDekontuIBQTARIH: TDateField;
    CikisDekontuIBQSAAT: TTimeField;
    CikisDekontuIBQACIKLAMA: TIBStringField;
    CikisDekontuIBQTEDIYE: TFloatField;
    CikisDekontuIBQTAHSILAT: TFloatField;
    CikisDekontuIBQBAKIYE: TFloatField;
    CikisDekontuIBQDURUM: TIntegerField;
    CikisDekontuIBQD_TEDIYE: TFloatField;
    CikisDekontuIBQD_TAHSILAT: TFloatField;
    CikisDekontuIBQCARIKURU: TFloatField;
    CikisDekontuIBQISLEMKURU: TFloatField;
    CikisDekontuIBQKAPATMA: TIntegerField;
    CikisDekontuIBQCARINO: TIntegerField;
    CikisDekontuIBQBAGLANTINO: TIntegerField;
    CikisDekontuIBQCARIHESAPILISKI: TIntegerField;
    CikisDekontuIBQPARABIRIMKOD: TIntegerField;
    CikisDekontuIBQMAKBUZNO: TIntegerField;
    CikisDekontuIBQKULLANKOD: TIntegerField;
    CikisDekontuIBQPERSONELKOD: TIntegerField;
    CikisDekontuIBQSISTEM: TIntegerField;
    CikisDekontuIBQC_PARABIRIMI: TIBStringField;
    CikisDekontuIBQCARIPARABIRIMKOD: TIntegerField;
    CikisDekontuIBQC_CARIPARABIRIM: TIBStringField;
    CikisDekontuIBQC_CARIADI: TIBStringField;
    CikisDekontuIBQC_PERSONEL: TIBStringField;
    CikisDekontuIBQC_DURUM: TIBStringField;
    DBAlacakIBQISLEMKOD: TIntegerField;
    DBAlacakIBQCARIKOD: TIntegerField;
    DBAlacakIBQISLEMTUR: TIBStringField;
    DBAlacakIBQISLEMTURKOD: TIntegerField;
    DBAlacakIBQCAISLEMNO: TIntegerField;
    DBAlacakIBQTARIH: TDateField;
    DBAlacakIBQSAAT: TTimeField;
    DBAlacakIBQACIKLAMA: TIBStringField;
    DBAlacakIBQTEDIYE: TFloatField;
    DBAlacakIBQTAHSILAT: TFloatField;
    DBAlacakIBQBAKIYE: TFloatField;
    DBAlacakIBQDURUM: TIntegerField;
    DBAlacakIBQD_TEDIYE: TFloatField;
    DBAlacakIBQD_TAHSILAT: TFloatField;
    DBAlacakIBQCARIKURU: TFloatField;
    DBAlacakIBQISLEMKURU: TFloatField;
    DBAlacakIBQKAPATMA: TIntegerField;
    DBAlacakIBQCARINO: TIntegerField;
    DBAlacakIBQBAGLANTINO: TIntegerField;
    DBAlacakIBQCARIHESAPILISKI: TIntegerField;
    DBAlacakIBQPARABIRIMKOD: TIntegerField;
    DBAlacakIBQMAKBUZNO: TIntegerField;
    DBAlacakIBQKULLANKOD: TIntegerField;
    DBAlacakIBQPERSONELKOD: TIntegerField;
    DBAlacakIBQSISTEM: TIntegerField;
    DBAlacakIBQC_PARABIRIMI: TIBStringField;
    DBAlacakIBQCARIPARABIRIMKOD: TIntegerField;
    DBAlacakIBQC_CARIPARABIRIM: TIBStringField;
    DBAlacakIBQC_CARIADI: TIBStringField;
    DBAlacakIBQC_PERSONEL: TIBStringField;
    DBAlacakIBQC_DURUM: TIBStringField;
    DBBorcIBQISLEMKOD: TIntegerField;
    DBBorcIBQCARIKOD: TIntegerField;
    DBBorcIBQISLEMTUR: TIBStringField;
    DBBorcIBQISLEMTURKOD: TIntegerField;
    DBBorcIBQCAISLEMNO: TIntegerField;
    DBBorcIBQTARIH: TDateField;
    DBBorcIBQSAAT: TTimeField;
    DBBorcIBQACIKLAMA: TIBStringField;
    DBBorcIBQTEDIYE: TFloatField;
    DBBorcIBQTAHSILAT: TFloatField;
    DBBorcIBQBAKIYE: TFloatField;
    DBBorcIBQDURUM: TIntegerField;
    DBBorcIBQD_TEDIYE: TFloatField;
    DBBorcIBQD_TAHSILAT: TFloatField;
    DBBorcIBQCARIKURU: TFloatField;
    DBBorcIBQISLEMKURU: TFloatField;
    DBBorcIBQKAPATMA: TIntegerField;
    DBBorcIBQCARINO: TIntegerField;
    DBBorcIBQBAGLANTINO: TIntegerField;
    DBBorcIBQCARIHESAPILISKI: TIntegerField;
    DBBorcIBQPARABIRIMKOD: TIntegerField;
    DBBorcIBQMAKBUZNO: TIntegerField;
    DBBorcIBQKULLANKOD: TIntegerField;
    DBBorcIBQPERSONELKOD: TIntegerField;
    DBBorcIBQSISTEM: TIntegerField;
    DBBorcIBQC_PARABIRIMI: TIBStringField;
    DBBorcIBQCARIPARABIRIMKOD: TIntegerField;
    DBBorcIBQC_CARIPARABIRIM: TIBStringField;
    DBBorcIBQC_CARIADI: TIBStringField;
    DBBorcIBQC_PERSONEL: TIBStringField;
    DBBorcIBQC_DURUM: TIBStringField;
    GirisDekontuIBQGELGITKOD: TIntegerField;
    CikisDekontuIBQGELGITKOD: TIntegerField;
    DBAlacakIBQGELGITKOD: TIntegerField;
    DBBorcIBQGELGITKOD: TIntegerField;
    CariislemIBQGELGITKOD: TIntegerField;
    GirisDekontuIBQC_GGMERKEZI: TIBStringField;
    CikisDekontuIBQC_GGMERKEZI: TIBStringField;
    DBAlacakIBQC_GGMERKEZI: TIBStringField;
    DBBorcIBQC_GGMERKEZI: TIBStringField;
    procedure CariKartIBQCARIUNVAN1Change(Sender: TField);
    procedure CariKartIBQAfterPost(DataSet: TDataSet);
    procedure KefilIBQAfterDelete(DataSet: TDataSet);
    procedure KefilIBQAfterPost(DataSet: TDataSet);
    procedure CariislemIBQAfterPost(DataSet: TDataSet);
    procedure CariislemIBQAfterDelete(DataSet: TDataSet);
    procedure CariKartIBQNewRecord(DataSet: TDataSet);
    procedure IBQuery1AfterPost(DataSet: TDataSet);
    procedure IBQuery1AfterDelete(DataSet: TDataSet);
    procedure KefilIBQNewRecord(DataSet: TDataSet);
    procedure GirisDekontuIBQNewRecord(DataSet: TDataSet);
    procedure GirisDekontuIBQAfterDelete(DataSet: TDataSet);
    procedure GirisDekontuIBQAfterPost(DataSet: TDataSet);
    procedure CikisDekontuIBQAfterPost(DataSet: TDataSet);
    procedure CikisDekontuIBQAfterDelete(DataSet: TDataSet);
    procedure CikisDekontuIBQNewRecord(DataSet: TDataSet);
    procedure GirisDekontuIBQAfterEdit(DataSet: TDataSet);
    procedure CikisDekontuIBQAfterEdit(DataSet: TDataSet);
    procedure DBAlacakIBQAfterPost(DataSet: TDataSet);
    procedure DBBorcIBQAfterPost(DataSet: TDataSet);
    procedure DBAlacakIBQNewRecord(DataSet: TDataSet);
    procedure DBAlacakIBQAfterEdit(DataSet: TDataSet);
    procedure DBBorcIBQNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public

  end;

var
  DMCari: TDMCari;

implementation

Uses DataDM,SabitDM;
{$R *.dfm}

procedure TDMCari.CariKartIBQCARIUNVAN1Change(Sender: TField);
begin

        if DMCari.CariKartIBQCARIUNVAN2.AsString='' Then
                DMCari.CariKartIBQTAMADI.AsString :=
                        DMCari.CariKartIBQCARIUNVAN1.AsString
        else
        DMCari.CariKartIBQTAMADI.AsString :=
                DMCari.CariKartIBQCARIUNVAN2.AsString +' '+
                        DMCari.CariKartIBQCARIUNVAN1.AsString;
end;

procedure TDMCari.CariKartIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.KefilIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.KefilIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.CariislemIBQAfterPost(DataSet: TDataSet);
var
        konum: pointer;
begin
        konum := DataSet.GetBookmark;
        DMData.Kayit(DataSet);
        CariKartIBQ.Refresh;
        DataSet.GotoBookmark(konum);
end;

procedure TDMCari.CariislemIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.CariKartIBQNewRecord(DataSet: TDataSet);
begin
        CariKartIBQCARITIPKOD.AsInteger := DMSabit.CariTipIBQCARITIPKOD.AsInteger;
end;

procedure TDMCari.IBQuery1AfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.IBQuery1AfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.KefilIBQNewRecord(DataSet: TDataSet);
begin
        KefilIBQCARIKOD.AsInteger := CariKartIBQCARIKOD.AsInteger;
end;

procedure TDMCari.GirisDekontuIBQNewRecord(DataSet: TDataSet);
begin
        GirisDekontuIBQISLEMTUR.AsString := 'Giriþ Dekontu';
        GirisDekontuIBQTARIH.AsDateTime := BugununTarihi;
        GirisDekontuIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        GirisDekontuIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
end;

procedure TDMCari.GirisDekontuIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.GirisDekontuIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.CikisDekontuIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.CikisDekontuIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.CikisDekontuIBQNewRecord(DataSet: TDataSet);
begin
        CikisDekontuIBQISLEMTUR.AsString := 'Çýkýþ Dekontu';
        CikisDekontuIBQTARIH.AsDateTime := BugununTarihi;
        CikisDekontuIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CikisDekontuIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;

end;

procedure TDMCari.GirisDekontuIBQAfterEdit(DataSet: TDataSet);
begin
        GirisDekontuIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCari.CikisDekontuIBQAfterEdit(DataSet: TDataSet);
begin
        CikisDekontuIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCari.DBAlacakIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.DBBorcIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCari.DBAlacakIBQNewRecord(DataSet: TDataSet);
begin
        DBAlacakIBQISLEMTUR.AsString := 'Dönem Baþý Alacaðý';
        DBAlacakIBQTARIH.AsDateTime := BugununTarihi;
        DBAlacakIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DBAlacakIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;

end;

procedure TDMCari.DBAlacakIBQAfterEdit(DataSet: TDataSet);
begin
        DBAlacakIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCari.DBBorcIBQNewRecord(DataSet: TDataSet);
begin
        DBBorcIBQISLEMTUR.AsString := 'Dönem Baþý Borcu';
        DBBorcIBQTARIH.AsDateTime := BugununTarihi;
        DBBorcIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DBBorcIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
end;

end.
