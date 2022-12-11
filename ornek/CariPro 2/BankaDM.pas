unit BankaDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMBanka = class(TDataModule)
    BankaIBQ: TIBQuery;
    BankaUSQL: TIBUpdateSQL;
    BankaDS: TDataSource;
    BankaislemIBQ: TIBQuery;
    BankaislemSQL: TIBUpdateSQL;
    BankaislemDS: TDataSource;
    NakitYatirmaIBQ: TIBQuery;
    NakitYatirmaUSQL: TIBUpdateSQL;
    NakitYatirmaDS: TDataSource;
    NakitCekmeIBQ: TIBQuery;
    NakitCekmeSQL: TIBUpdateSQL;
    NakitCekmeDS: TDataSource;
    HavaleAlmaIBQ: TIBQuery;
    HavaleAlmaUSQL: TIBUpdateSQL;
    HavaleAlmaDS: TDataSource;
    HavaleGondermeIBQ: TIBQuery;
    HavaleGondermeUSQL: TIBUpdateSQL;
    HavaleGondermeDS: TDataSource;
    BankaIBQBANKAKOD: TIntegerField;
    BankaIBQBANKAADI: TIBStringField;
    BankaIBQHESAPADI: TIBStringField;
    BankaIBQHESAPTURU: TIBStringField;
    BankaIBQHESAPNO: TIBStringField;
    BankaIBQPARABIRKOD: TIntegerField;
    BankaIBQMUDUR: TIBStringField;
    BankaIBQYETKILI: TIBStringField;
    BankaIBQSUBE: TIBStringField;
    BankaIBQSUBEKOD: TIBStringField;
    BankaIBQADRES: TIBStringField;
    BankaIBQILKOD: TIntegerField;
    BankaIBQILCEKOD: TIntegerField;
    BankaIBQTELEFON1: TIBStringField;
    BankaIBQTELEFON2: TIBStringField;
    BankaIBQMAIL: TIBStringField;
    BankaIBQWEB: TIBStringField;
    BankaIBQNOTU: TMemoField;
    BankaIBQC_PARABIRIMI: TIBStringField;
    BankaislemIBQISLEMKOD: TIntegerField;
    BankaislemIBQCARIKOD: TIntegerField;
    BankaislemIBQBANKAKOD: TIntegerField;
    BankaislemIBQISLEMTUR: TIBStringField;
    BankaislemIBQISLEMTURKOD: TIntegerField;
    BankaislemIBQBANKAISLEMNO: TIntegerField;
    BankaislemIBQTARIH: TDateField;
    BankaislemIBQSAAT: TTimeField;
    BankaislemIBQACIKLAMA: TIBStringField;
    BankaislemIBQTEDIYE: TFloatField;
    BankaislemIBQTAHSILAT: TFloatField;
    BankaislemIBQBAKIYE: TFloatField;
    BankaislemIBQDURUM: TIntegerField;
    BankaislemIBQKASAKOD: TIntegerField;
    BankaislemIBQCARINO: TIntegerField;
    BankaislemIBQGELGITKOD: TIBStringField;
    BankaislemIBQEVRAKNO: TIntegerField;
    BankaislemIBQBELGENO: TIntegerField;
    BankaislemIBQBAGLANTINO: TIntegerField;
    BankaislemIBQPARABIRIMKOD: TIntegerField;
    BankaislemIBQMAKBUZNO: TIntegerField;
    BankaislemIBQKULLANKOD: TIntegerField;
    BankaislemIBQPERSONELKOD: TIntegerField;
    BankaislemIBQSISTEM: TIntegerField;
    BankaislemIBQD_TEDIYE: TFloatField;
    BankaislemIBQD_TAHSILAT: TFloatField;
    BankaislemIBQCARIKURU: TFloatField;
    BankaislemIBQISLEMKURU: TFloatField;
    BankaislemIBQCARIPARABIRIMKOD: TIntegerField;
    BankaislemIBQC_PARABIRIMI: TIBStringField;
    BankaislemIBQC_CARIPARABIRIM: TIBStringField;
    BankaislemIBQC_KASAADI: TIBStringField;
    BankaislemIBQC_HESAPADI: TIBStringField;
    VirmanGonderenIBQ: TIBQuery;
    VirmanGonderenUSQL: TIBUpdateSQL;
    VirmanGonderenDS: TDataSource;
    VirmanGonderenIBQISLEMKOD: TIntegerField;
    VirmanGonderenIBQCARIKOD: TIntegerField;
    VirmanGonderenIBQBANKAKOD: TIntegerField;
    VirmanGonderenIBQISLEMTUR: TIBStringField;
    VirmanGonderenIBQISLEMTURKOD: TIntegerField;
    VirmanGonderenIBQBANKAISLEMNO: TIntegerField;
    VirmanGonderenIBQTARIH: TDateField;
    VirmanGonderenIBQSAAT: TTimeField;
    VirmanGonderenIBQACIKLAMA: TIBStringField;
    VirmanGonderenIBQTEDIYE: TFloatField;
    VirmanGonderenIBQTAHSILAT: TFloatField;
    VirmanGonderenIBQBAKIYE: TFloatField;
    VirmanGonderenIBQDURUM: TIntegerField;
    VirmanGonderenIBQKASAKOD: TIntegerField;
    VirmanGonderenIBQCARINO: TIntegerField;
    VirmanGonderenIBQGELGITKOD: TIBStringField;
    VirmanGonderenIBQEVRAKNO: TIntegerField;
    VirmanGonderenIBQBELGENO: TIntegerField;
    VirmanGonderenIBQBAGLANTINO: TIntegerField;
    VirmanGonderenIBQPARABIRIMKOD: TIntegerField;
    VirmanGonderenIBQMAKBUZNO: TIntegerField;
    VirmanGonderenIBQKULLANKOD: TIntegerField;
    VirmanGonderenIBQPERSONELKOD: TIntegerField;
    VirmanGonderenIBQSISTEM: TIntegerField;
    VirmanGonderenIBQD_TEDIYE: TFloatField;
    VirmanGonderenIBQD_TAHSILAT: TFloatField;
    VirmanGonderenIBQCARIKURU: TFloatField;
    VirmanGonderenIBQISLEMKURU: TFloatField;
    VirmanGonderenIBQCARIPARABIRIMKOD: TIntegerField;
    VirmanGonderenIBQC_PARABIRIMI: TIBStringField;
    VirmanGonderenIBQC_CARIPARABIRIM: TIBStringField;
    VirmanGonderenIBQC_KASAADI: TIBStringField;
    VirmanGonderenIBQC_HESAPADI: TIBStringField;
    VirmanGonderenIBQKAPATMA: TIntegerField;
    VirmanGonderenIBQC_CARIADI: TIBStringField;
    VirmanGonderenIBQC_GGMERKEZI: TIBStringField;
    BankaIBQC_SEHIRADI: TIBStringField;
    BankaIBQC_ILCEADI: TIBStringField;
    BankaIBQC_BAKIYE: TFloatField;
    BankaislemIBQKAPATMA: TIntegerField;
    BankaislemIBQC_CARIADI: TIBStringField;
    BankaislemIBQC_GGMERKEZI: TIBStringField;
    BankaislemIBQC_KULLANICIADI: TIBStringField;
    BankaislemIBQC_DURUM: TIBStringField;
    BankaIBQC_DURUM: TIBStringField;
    BankaDevirIBQ: TIBQuery;
    BankaDevirSQL: TIBUpdateSQL;
    BankaDevirDS: TDataSource;
    NakitYatirmaIBQISLEMKOD: TIntegerField;
    NakitYatirmaIBQCARIKOD: TIntegerField;
    NakitYatirmaIBQBANKAKOD: TIntegerField;
    NakitYatirmaIBQISLEMTUR: TIBStringField;
    NakitYatirmaIBQISLEMTURKOD: TIntegerField;
    NakitYatirmaIBQBANKAISLEMNO: TIntegerField;
    NakitYatirmaIBQTARIH: TDateField;
    NakitYatirmaIBQSAAT: TTimeField;
    NakitYatirmaIBQACIKLAMA: TIBStringField;
    NakitYatirmaIBQTEDIYE: TFloatField;
    NakitYatirmaIBQTAHSILAT: TFloatField;
    NakitYatirmaIBQBAKIYE: TFloatField;
    NakitYatirmaIBQDURUM: TIntegerField;
    NakitYatirmaIBQKASAKOD: TIntegerField;
    NakitYatirmaIBQCARINO: TIntegerField;
    NakitYatirmaIBQGELGITKOD: TIBStringField;
    NakitYatirmaIBQEVRAKNO: TIntegerField;
    NakitYatirmaIBQBELGENO: TIntegerField;
    NakitYatirmaIBQBAGLANTINO: TIntegerField;
    NakitYatirmaIBQPARABIRIMKOD: TIntegerField;
    NakitYatirmaIBQMAKBUZNO: TIntegerField;
    NakitYatirmaIBQKULLANKOD: TIntegerField;
    NakitYatirmaIBQPERSONELKOD: TIntegerField;
    NakitYatirmaIBQSISTEM: TIntegerField;
    NakitYatirmaIBQD_TEDIYE: TFloatField;
    NakitYatirmaIBQD_TAHSILAT: TFloatField;
    NakitYatirmaIBQCARIKURU: TFloatField;
    NakitYatirmaIBQISLEMKURU: TFloatField;
    NakitYatirmaIBQCARIPARABIRIMKOD: TIntegerField;
    NakitYatirmaIBQC_PARABIRIMI: TIBStringField;
    NakitYatirmaIBQC_CARIPARABIRIM: TIBStringField;
    NakitYatirmaIBQC_KASAADI: TIBStringField;
    NakitYatirmaIBQC_HESAPADI: TIBStringField;
    NakitYatirmaIBQKAPATMA: TIntegerField;
    NakitYatirmaIBQC_CARIADI: TIBStringField;
    NakitYatirmaIBQC_GGMERKEZI: TIBStringField;
    NakitYatirmaIBQC_KULLANICIADI: TIBStringField;
    NakitYatirmaIBQC_DURUM: TIBStringField;
    NakitCekmeIBQISLEMKOD: TIntegerField;
    NakitCekmeIBQCARIKOD: TIntegerField;
    NakitCekmeIBQBANKAKOD: TIntegerField;
    NakitCekmeIBQISLEMTUR: TIBStringField;
    NakitCekmeIBQISLEMTURKOD: TIntegerField;
    NakitCekmeIBQBANKAISLEMNO: TIntegerField;
    NakitCekmeIBQTARIH: TDateField;
    NakitCekmeIBQSAAT: TTimeField;
    NakitCekmeIBQACIKLAMA: TIBStringField;
    NakitCekmeIBQTEDIYE: TFloatField;
    NakitCekmeIBQTAHSILAT: TFloatField;
    NakitCekmeIBQBAKIYE: TFloatField;
    NakitCekmeIBQDURUM: TIntegerField;
    NakitCekmeIBQKASAKOD: TIntegerField;
    NakitCekmeIBQCARINO: TIntegerField;
    NakitCekmeIBQGELGITKOD: TIBStringField;
    NakitCekmeIBQEVRAKNO: TIntegerField;
    NakitCekmeIBQBELGENO: TIntegerField;
    NakitCekmeIBQBAGLANTINO: TIntegerField;
    NakitCekmeIBQPARABIRIMKOD: TIntegerField;
    NakitCekmeIBQMAKBUZNO: TIntegerField;
    NakitCekmeIBQKULLANKOD: TIntegerField;
    NakitCekmeIBQPERSONELKOD: TIntegerField;
    NakitCekmeIBQSISTEM: TIntegerField;
    NakitCekmeIBQD_TEDIYE: TFloatField;
    NakitCekmeIBQD_TAHSILAT: TFloatField;
    NakitCekmeIBQCARIKURU: TFloatField;
    NakitCekmeIBQISLEMKURU: TFloatField;
    NakitCekmeIBQCARIPARABIRIMKOD: TIntegerField;
    NakitCekmeIBQC_PARABIRIMI: TIBStringField;
    NakitCekmeIBQC_CARIPARABIRIM: TIBStringField;
    NakitCekmeIBQC_KASAADI: TIBStringField;
    NakitCekmeIBQC_HESAPADI: TIBStringField;
    NakitCekmeIBQKAPATMA: TIntegerField;
    NakitCekmeIBQC_CARIADI: TIBStringField;
    NakitCekmeIBQC_GGMERKEZI: TIBStringField;
    NakitCekmeIBQC_KULLANICIADI: TIBStringField;
    NakitCekmeIBQC_DURUM: TIBStringField;
    HavaleAlmaIBQISLEMKOD: TIntegerField;
    HavaleAlmaIBQCARIKOD: TIntegerField;
    HavaleAlmaIBQBANKAKOD: TIntegerField;
    HavaleAlmaIBQISLEMTUR: TIBStringField;
    HavaleAlmaIBQISLEMTURKOD: TIntegerField;
    HavaleAlmaIBQBANKAISLEMNO: TIntegerField;
    HavaleAlmaIBQTARIH: TDateField;
    HavaleAlmaIBQSAAT: TTimeField;
    HavaleAlmaIBQACIKLAMA: TIBStringField;
    HavaleAlmaIBQTEDIYE: TFloatField;
    HavaleAlmaIBQTAHSILAT: TFloatField;
    HavaleAlmaIBQBAKIYE: TFloatField;
    HavaleAlmaIBQDURUM: TIntegerField;
    HavaleAlmaIBQKASAKOD: TIntegerField;
    HavaleAlmaIBQCARINO: TIntegerField;
    HavaleAlmaIBQGELGITKOD: TIBStringField;
    HavaleAlmaIBQEVRAKNO: TIntegerField;
    HavaleAlmaIBQBELGENO: TIntegerField;
    HavaleAlmaIBQBAGLANTINO: TIntegerField;
    HavaleAlmaIBQPARABIRIMKOD: TIntegerField;
    HavaleAlmaIBQMAKBUZNO: TIntegerField;
    HavaleAlmaIBQKULLANKOD: TIntegerField;
    HavaleAlmaIBQPERSONELKOD: TIntegerField;
    HavaleAlmaIBQSISTEM: TIntegerField;
    HavaleAlmaIBQD_TEDIYE: TFloatField;
    HavaleAlmaIBQD_TAHSILAT: TFloatField;
    HavaleAlmaIBQCARIKURU: TFloatField;
    HavaleAlmaIBQISLEMKURU: TFloatField;
    HavaleAlmaIBQCARIPARABIRIMKOD: TIntegerField;
    HavaleAlmaIBQC_PARABIRIMI: TIBStringField;
    HavaleAlmaIBQC_CARIPARABIRIM: TIBStringField;
    HavaleAlmaIBQC_KASAADI: TIBStringField;
    HavaleAlmaIBQC_HESAPADI: TIBStringField;
    HavaleAlmaIBQKAPATMA: TIntegerField;
    HavaleAlmaIBQC_CARIADI: TIBStringField;
    HavaleAlmaIBQC_GGMERKEZI: TIBStringField;
    HavaleAlmaIBQC_KULLANICIADI: TIBStringField;
    HavaleAlmaIBQC_DURUM: TIBStringField;
    HavaleGondermeIBQISLEMKOD: TIntegerField;
    HavaleGondermeIBQCARIKOD: TIntegerField;
    HavaleGondermeIBQBANKAKOD: TIntegerField;
    HavaleGondermeIBQISLEMTUR: TIBStringField;
    HavaleGondermeIBQISLEMTURKOD: TIntegerField;
    HavaleGondermeIBQBANKAISLEMNO: TIntegerField;
    HavaleGondermeIBQTARIH: TDateField;
    HavaleGondermeIBQSAAT: TTimeField;
    HavaleGondermeIBQACIKLAMA: TIBStringField;
    HavaleGondermeIBQTEDIYE: TFloatField;
    HavaleGondermeIBQTAHSILAT: TFloatField;
    HavaleGondermeIBQBAKIYE: TFloatField;
    HavaleGondermeIBQDURUM: TIntegerField;
    HavaleGondermeIBQKASAKOD: TIntegerField;
    HavaleGondermeIBQCARINO: TIntegerField;
    HavaleGondermeIBQGELGITKOD: TIBStringField;
    HavaleGondermeIBQEVRAKNO: TIntegerField;
    HavaleGondermeIBQBELGENO: TIntegerField;
    HavaleGondermeIBQBAGLANTINO: TIntegerField;
    HavaleGondermeIBQPARABIRIMKOD: TIntegerField;
    HavaleGondermeIBQMAKBUZNO: TIntegerField;
    HavaleGondermeIBQKULLANKOD: TIntegerField;
    HavaleGondermeIBQPERSONELKOD: TIntegerField;
    HavaleGondermeIBQSISTEM: TIntegerField;
    HavaleGondermeIBQD_TEDIYE: TFloatField;
    HavaleGondermeIBQD_TAHSILAT: TFloatField;
    HavaleGondermeIBQCARIKURU: TFloatField;
    HavaleGondermeIBQISLEMKURU: TFloatField;
    HavaleGondermeIBQCARIPARABIRIMKOD: TIntegerField;
    HavaleGondermeIBQC_PARABIRIMI: TIBStringField;
    HavaleGondermeIBQC_CARIPARABIRIM: TIBStringField;
    HavaleGondermeIBQC_KASAADI: TIBStringField;
    HavaleGondermeIBQC_HESAPADI: TIBStringField;
    HavaleGondermeIBQKAPATMA: TIntegerField;
    HavaleGondermeIBQC_CARIADI: TIBStringField;
    HavaleGondermeIBQC_GGMERKEZI: TIBStringField;
    HavaleGondermeIBQC_KULLANICIADI: TIBStringField;
    HavaleGondermeIBQC_DURUM: TIBStringField;
    BankaDevirIBQISLEMKOD: TIntegerField;
    BankaDevirIBQCARIKOD: TIntegerField;
    BankaDevirIBQBANKAKOD: TIntegerField;
    BankaDevirIBQISLEMTUR: TIBStringField;
    BankaDevirIBQISLEMTURKOD: TIntegerField;
    BankaDevirIBQBANKAISLEMNO: TIntegerField;
    BankaDevirIBQTARIH: TDateField;
    BankaDevirIBQSAAT: TTimeField;
    BankaDevirIBQACIKLAMA: TIBStringField;
    BankaDevirIBQTEDIYE: TFloatField;
    BankaDevirIBQTAHSILAT: TFloatField;
    BankaDevirIBQBAKIYE: TFloatField;
    BankaDevirIBQDURUM: TIntegerField;
    BankaDevirIBQKASAKOD: TIntegerField;
    BankaDevirIBQCARINO: TIntegerField;
    BankaDevirIBQGELGITKOD: TIBStringField;
    BankaDevirIBQEVRAKNO: TIntegerField;
    BankaDevirIBQBELGENO: TIntegerField;
    BankaDevirIBQBAGLANTINO: TIntegerField;
    BankaDevirIBQPARABIRIMKOD: TIntegerField;
    BankaDevirIBQMAKBUZNO: TIntegerField;
    BankaDevirIBQKULLANKOD: TIntegerField;
    BankaDevirIBQPERSONELKOD: TIntegerField;
    BankaDevirIBQSISTEM: TIntegerField;
    BankaDevirIBQD_TEDIYE: TFloatField;
    BankaDevirIBQD_TAHSILAT: TFloatField;
    BankaDevirIBQCARIKURU: TFloatField;
    BankaDevirIBQISLEMKURU: TFloatField;
    BankaDevirIBQCARIPARABIRIMKOD: TIntegerField;
    BankaDevirIBQC_PARABIRIMI: TIBStringField;
    BankaDevirIBQC_CARIPARABIRIM: TIBStringField;
    BankaDevirIBQC_KASAADI: TIBStringField;
    BankaDevirIBQC_HESAPADI: TIBStringField;
    BankaDevirIBQKAPATMA: TIntegerField;
    BankaDevirIBQC_CARIADI: TIBStringField;
    BankaDevirIBQC_GGMERKEZI: TIBStringField;
    BankaDevirIBQC_KULLANICIADI: TIBStringField;
    BankaDevirIBQC_DURUM: TIBStringField;
    BankaislemlistIBQ: TIBQuery;
    BankaislemlistDS: TDataSource;
    BankaislemlistIBQISLEMKOD: TIntegerField;
    BankaislemlistIBQCARIKOD: TIntegerField;
    BankaislemlistIBQBANKAKOD: TIntegerField;
    BankaislemlistIBQISLEMTUR: TIBStringField;
    BankaislemlistIBQISLEMTURKOD: TIntegerField;
    BankaislemlistIBQBANKAISLEMNO: TIntegerField;
    BankaislemlistIBQTARIH: TDateField;
    BankaislemlistIBQSAAT: TTimeField;
    BankaislemlistIBQACIKLAMA: TIBStringField;
    BankaislemlistIBQTEDIYE: TFloatField;
    BankaislemlistIBQTAHSILAT: TFloatField;
    BankaislemlistIBQBAKIYE: TFloatField;
    BankaislemlistIBQDURUM: TIntegerField;
    BankaislemlistIBQKASAKOD: TIntegerField;
    BankaislemlistIBQCARINO: TIntegerField;
    BankaislemlistIBQGELGITKOD: TIBStringField;
    BankaislemlistIBQEVRAKNO: TIntegerField;
    BankaislemlistIBQBELGENO: TIntegerField;
    BankaislemlistIBQBAGLANTINO: TIntegerField;
    BankaislemlistIBQPARABIRIMKOD: TIntegerField;
    BankaislemlistIBQMAKBUZNO: TIntegerField;
    BankaislemlistIBQKULLANKOD: TIntegerField;
    BankaislemlistIBQPERSONELKOD: TIntegerField;
    BankaislemlistIBQSISTEM: TIntegerField;
    BankaislemlistIBQD_TEDIYE: TFloatField;
    BankaislemlistIBQD_TAHSILAT: TFloatField;
    BankaislemlistIBQCARIKURU: TFloatField;
    BankaislemlistIBQISLEMKURU: TFloatField;
    BankaislemlistIBQCARIPARABIRIMKOD: TIntegerField;
    BankaislemlistIBQC_PARABIRIMI: TIBStringField;
    BankaislemlistIBQC_CARIPARABIRIM: TIBStringField;
    BankaislemlistIBQC_KASAADI: TIBStringField;
    BankaislemlistIBQC_HESAPADI: TIBStringField;
    BankaislemlistIBQKAPATMA: TIntegerField;
    BankaislemlistIBQC_CARIADI: TIBStringField;
    BankaislemlistIBQC_GGMERKEZI: TIBStringField;
    BankaislemlistIBQC_KULLANICIADI: TIBStringField;
    BankaislemlistIBQC_DURUM: TIBStringField;
    NakitYatirmaIBQC_PERSONEL: TIBStringField;
    NakitCekmeIBQC_PERSONEL: TIBStringField;
    HavaleAlmaIBQC_PERSONEL: TIBStringField;
    HavaleGondermeIBQC_PERSONEL: TIBStringField;
    BankaDevirIBQC_PERSONEL: TIBStringField;
    BankaislemIBQC_PERSONEL: TIBStringField;
    VirmanGonderenIBQC_KULLANICIADI: TIBStringField;
    VirmanGonderenIBQC_DURUM: TIBStringField;
    VirmanGonderenIBQC_PERSONEL: TIBStringField;
    VirmanGonderenIBQVIRBANKAKOD: TIntegerField;
    VirmanGonderenIBQVIRPARABIRKOD: TIntegerField;
    VirmanGonderenIBQVIRKURU: TFloatField;
    VirmanGonderenIBQC_VIRMAN: TFloatField;
    VirmanGonderenIBQC_ALANBANKA_PB: TIBStringField;
    VirmanGonderenIBQC_ALANBANKA: TIBStringField;
    procedure BankaIBQAfterDelete(DataSet: TDataSet);
    procedure BankaIBQAfterPost(DataSet: TDataSet);
    procedure BankaislemIBQAfterPost(DataSet: TDataSet);
    procedure BankaislemIBQAfterDelete(DataSet: TDataSet);
    procedure NakitYatirmaIBQNewRecord(DataSet: TDataSet);
    procedure BankaIBQBANKAADIChange(Sender: TField);
    procedure BankaIBQNewRecord(DataSet: TDataSet);
    procedure NakitCekmeIBQNewRecord(DataSet: TDataSet);
    procedure NakitCekmeIBQAfterDelete(DataSet: TDataSet);
    procedure NakitCekmeIBQAfterPost(DataSet: TDataSet);
    procedure HavaleAlmaIBQAfterDelete(DataSet: TDataSet);
    procedure HavaleAlmaIBQAfterPost(DataSet: TDataSet);
    procedure HavaleGondermeIBQAfterPost(DataSet: TDataSet);
    procedure HavaleGondermeIBQAfterDelete(DataSet: TDataSet);
    procedure NakitYatirmaIBQAfterDelete(DataSet: TDataSet);
    procedure NakitYatirmaIBQAfterPost(DataSet: TDataSet);
    procedure HavaleAlmaIBQNewRecord(DataSet: TDataSet);
    procedure HavaleGondermeIBQNewRecord(DataSet: TDataSet);
    procedure BankaDevirIBQAfterPost(DataSet: TDataSet);
    procedure BankaDevirIBQAfterEdit(DataSet: TDataSet);
    procedure BankaDevirIBQNewRecord(DataSet: TDataSet);
    procedure VirmanGonderenIBQAfterPost(DataSet: TDataSet);
    procedure VirmanGonderenIBQAfterDelete(DataSet: TDataSet);
    procedure VirmanAlanIBQAfterDelete(DataSet: TDataSet);
    procedure VirmanAlanIBQAfterPost(DataSet: TDataSet);
    procedure VirmanGonderenIBQNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMBanka: TDMBanka;

implementation

Uses DataDM, SabitDM;
{$R *.dfm}

procedure TDMBanka.BankaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.BankaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.BankaislemIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.BankaislemIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.NakitYatirmaIBQNewRecord(DataSet: TDataSet);
begin
        NakitYatirmaIBQTARIH.AsDateTime := BugununTarihi;
        NakitYatirmaIBQISLEMTUR.AsString := 'Nakit Yatýrma';
        NakitYatirmaIBQBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
        NakitYatirmaIBQKULLANKOD.AsString := DMSabit.KullaniciIBQKULLANKOD.AsString;

end;

procedure TDMBanka.BankaIBQBANKAADIChange(Sender: TField);
begin
        if  BankaIBQHESAPADI.Value='' then
             BankaIBQHESAPADI.AsString:=BankaIBQBANKAADI.AsString +
                        ' ' +BankaIBQC_PARABIRIMI.Value +
                        ' ' +BankaIBQHESAPTURU.AsString;
end;

procedure TDMBanka.BankaIBQNewRecord(DataSet: TDataSet);
begin
        BankaIBQHESAPTURU.AsString := 'Cari Hesap';
        BankaIBQPARABIRKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
end;

procedure TDMBanka.NakitCekmeIBQNewRecord(DataSet: TDataSet);
begin
        NakitCekmeIBQTARIH.AsDateTime := BugununTarihi;
        NakitCekmeIBQISLEMTUR.AsString := 'Nakit Çekme';
        NakitCekmeIBQKULLANKOD.AsString := DMSabit.KullaniciIBQKULLANKOD.AsString;
        NakitCekmeIBQBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
end;

procedure TDMBanka.NakitCekmeIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.NakitCekmeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.HavaleAlmaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.HavaleAlmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.HavaleGondermeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.HavaleGondermeIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.NakitYatirmaIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.NakitYatirmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.HavaleAlmaIBQNewRecord(DataSet: TDataSet);
begin
        HavaleAlmaIBQTARIH.AsDateTime := BugununTarihi;
        HavaleAlmaIBQISLEMTUR.AsString := 'Havale Alma';
        HavaleAlmaIBQKULLANKOD.AsString := DMSabit.KullaniciIBQKULLANKOD.AsString;
        HavaleAlmaIBQBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
end;

procedure TDMBanka.HavaleGondermeIBQNewRecord(DataSet: TDataSet);
begin
        HavaleGondermeIBQTARIH.AsDateTime := BugununTarihi;
        HavaleGondermeIBQISLEMTUR.AsString := 'Havale Gönderme';
        HavaleGondermeIBQKULLANKOD.AsString := DMSabit.KullaniciIBQKULLANKOD.AsString;
        HavaleGondermeIBQBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
end;

procedure TDMBanka.BankaDevirIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.BankaDevirIBQAfterEdit(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.BankaDevirIBQNewRecord(DataSet: TDataSet);
begin
        BankaDevirIBQTARIH.AsDateTime := BugununTarihi;
        BankaDevirIBQISLEMTUR.AsString := 'Banka Devir';
        BankaDevirIBQBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
        BankaDevirIBQKULLANKOD.AsString := DMSabit.KullaniciIBQKULLANKOD.AsString;
end;

procedure TDMBanka.VirmanGonderenIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.VirmanGonderenIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.VirmanAlanIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.VirmanAlanIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMBanka.VirmanGonderenIBQNewRecord(DataSet: TDataSet);
begin
        VirmanGonderenIBQTARIH.AsDateTime := BugununTarihi;
        VirmanGonderenIBQISLEMTUR.AsString := 'Banka Virman';
        VirmanGonderenIBQBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
        BankaIBQ.Next;
        VirmanGonderenIBQVIRBANKAKOD.AsInteger := BankaIBQBANKAKOD.AsInteger;
        VirmanGonderenIBQKULLANKOD.AsString := DMSabit.KullaniciIBQKULLANKOD.AsString;
        VirmanGonderenIBQSISTEM.AsInteger := 1;

end;

end.
