unit CekDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMCek = class(TDataModule)
    CeklerIBQ: TIBQuery;
    CekGirisIBQ: TIBQuery;
    CekGirisUSQL: TIBUpdateSQL;
    CekGirisDS: TDataSource;
    CGBodroIBQ: TIBQuery;
    CGBodroUSQL: TIBUpdateSQL;
    CGBodroDS: TDataSource;
    CekGirisIBQISLEMKOD: TIntegerField;
    CekGirisIBQCARIKOD: TIntegerField;
    CekGirisIBQISLEMTUR: TIBStringField;
    CekGirisIBQISLEMTURKOD: TIntegerField;
    CekGirisIBQCEKISLEMNO: TIntegerField;
    CekGirisIBQTARIH: TDateField;
    CekGirisIBQSAAT: TTimeField;
    CekGirisIBQACIKLAMA: TIBStringField;
    CekGirisIBQTEDIYE: TFloatField;
    CekGirisIBQTAHSILAT: TFloatField;
    CekGirisIBQD_TEDIYE: TFloatField;
    CekGirisIBQD_TAHSILAT: TFloatField;
    CekGirisIBQCARIKURU: TFloatField;
    CekGirisIBQISLEMKURU: TFloatField;
    CekGirisIBQCARINO: TIntegerField;
    CekGirisIBQGELGITKOD: TIBStringField;
    CekGirisIBQKASAKOD: TIntegerField;
    CekGirisIBQBAGLANTINO: TIntegerField;
    CekGirisIBQBANKAKOD: TIntegerField;
    CekGirisIBQPARABIRIMKOD: TIntegerField;
    CekGirisIBQKULLANKOD: TIntegerField;
    CekGirisIBQCARIPARABIRIMKOD: TIntegerField;
    CekGirisIBQC_CARIPARABIRIM: TIBStringField;
    CekGirisIBQC_PARABIRIMI: TIBStringField;
    CekGirisIBQC_KASAADI: TIBStringField;
    CekGirisIBQC_CARIADI: TIBStringField;
    CekGirisIBQC_GGMERKEZI: TIBStringField;
    CekGirisIBQC_KULLANICIADI: TIBStringField;
    CekGirisIBQC_BANKAADI: TIBStringField;
    CekGirisIBQKAPATMA: TIntegerField;
    CekGirisIBQSISTEM: TIntegerField;
    CekGirisIBQPERSONELKOD: TIntegerField;
    CekGirisIBQMAKBUZNO: TIntegerField;
    CGBodroIBQCEKBODROKOD: TIntegerField;
    CGBodroIBQISLEMKOD: TIntegerField;
    CGBodroIBQCARIKOD: TIntegerField;
    CGBodroIBQCARINO: TIntegerField;
    CGBodroIBQSIRA: TIntegerField;
    CGBodroIBQACIKLAMA: TIBStringField;
    CGBodroIBQTEDIYE: TFloatField;
    CGBodroIBQTAHSILAT: TFloatField;
    CGBodroIBQD_TEDIYE: TFloatField;
    CGBodroIBQD_TAHSILAT: TFloatField;
    CGBodroIBQISLEMKURU: TFloatField;
    CGBodroIBQVADE: TDateField;
    CGBodroIBQBANKAKOD: TIntegerField;
    CGBodroIBQPARABIRIMKOD: TIntegerField;
    CGBodroIBQBANKA: TIBStringField;
    CGBodroIBQKESIDEYERI: TIBStringField;
    CGBodroIBQILKCIRO: TIBStringField;
    CGBodroIBQCEKSERINO: TIBStringField;
    CGBodroIBQKULLANKOD: TIntegerField;
    CGBodroIBQEVRAKDURUMU: TIntegerField;
    CGBodroIBQC_PARABIRIMI: TIBStringField;
    CGBodroIBQC_CARIADI: TIBStringField;
    CGBodroIBQC_KULLANICIADI: TIBStringField;
    CGBodroIBQC_BANKAADI: TIBStringField;
    CGBodroIBQKAPATMA: TIntegerField;
    CGBodroIBQSISTEM: TIntegerField;
    CGBodroIBQPERSONELKOD: TIntegerField;
    CGBodroIBQISLEMTUR: TIBStringField;
    CGBodroIBQISLEMTURKOD: TIntegerField;
    CekYazmaIBQ: TIBQuery;
    CekYazmaUSQL: TIBUpdateSQL;
    CekYazmaDS: TDataSource;
    CYBodroIBQ: TIBQuery;
    CYBodroUSQL: TIBUpdateSQL;
    CYBodroDS: TDataSource;
    CekYazmaIBQISLEMKOD: TIntegerField;
    CekYazmaIBQCARIKOD: TIntegerField;
    CekYazmaIBQCARINO: TIntegerField;
    CekYazmaIBQISLEMTUR: TIBStringField;
    CekYazmaIBQTARIH: TDateField;
    CekYazmaIBQACIKLAMA: TIBStringField;
    CekYazmaIBQTEDIYE: TFloatField;
    CekYazmaIBQTAHSILAT: TFloatField;
    CekYazmaIBQD_TEDIYE: TFloatField;
    CekYazmaIBQD_TAHSILAT: TFloatField;
    CekYazmaIBQBANKAKOD: TIntegerField;
    CekYazmaIBQKASAKOD: TIntegerField;
    CekYazmaIBQMAKBUZNO: TIntegerField;
    CekYazmaIBQKULLANKOD: TIntegerField;
    CekYazmaIBQCARIKURU: TFloatField;
    CekYazmaIBQISLEMKURU: TFloatField;
    CekYazmaIBQPARABIRIMKOD: TIntegerField;
    CekYazmaIBQPERSONELKOD: TIntegerField;
    CekYazmaIBQBAGLANTINO: TIntegerField;
    CekYazmaIBQISLEMTURKOD: TIntegerField;
    CekYazmaIBQCEKISLEMNO: TIntegerField;
    CekYazmaIBQSAAT: TTimeField;
    CekYazmaIBQGELGITKOD: TIBStringField;
    CekYazmaIBQCARIPARABIRIMKOD: TIntegerField;
    CekYazmaIBQC_CARIPARABIRIM: TIBStringField;
    CekYazmaIBQC_PARABIRIMI: TIBStringField;
    CekYazmaIBQC_KASAADI: TIBStringField;
    CekYazmaIBQC_CARIADI: TIBStringField;
    CekYazmaIBQC_GGMERKEZI: TIBStringField;
    CekYazmaIBQC_KULLANICIADI: TIBStringField;
    CekYazmaIBQC_BANKAADI: TIBStringField;
    CekYazmaIBQKAPATMA: TIntegerField;
    CekYazmaIBQSISTEM: TIntegerField;
    CekCiroIBQ: TIBQuery;
    CekCiroUSQL: TIBUpdateSQL;
    CekCiroDS: TDataSource;
    CCBodroIBQ: TIBQuery;
    CCBodroUSQL: TIBUpdateSQL;
    CCBodroDS: TDataSource;
    CekCiroIBQISLEMKOD: TIntegerField;
    CekCiroIBQCARIKOD: TIntegerField;
    CekCiroIBQCARINO: TIntegerField;
    CekCiroIBQISLEMTUR: TIBStringField;
    CekCiroIBQTARIH: TDateField;
    CekCiroIBQACIKLAMA: TIBStringField;
    CekCiroIBQTEDIYE: TFloatField;
    CekCiroIBQTAHSILAT: TFloatField;
    CekCiroIBQD_TEDIYE: TFloatField;
    CekCiroIBQD_TAHSILAT: TFloatField;
    CekCiroIBQBANKAKOD: TIntegerField;
    CekCiroIBQKASAKOD: TIntegerField;
    CekCiroIBQMAKBUZNO: TIntegerField;
    CekCiroIBQKULLANKOD: TIntegerField;
    CekCiroIBQCARIKURU: TFloatField;
    CekCiroIBQISLEMKURU: TFloatField;
    CekCiroIBQPARABIRIMKOD: TIntegerField;
    CekCiroIBQPERSONELKOD: TIntegerField;
    CekCiroIBQBAGLANTINO: TIntegerField;
    CekCiroIBQISLEMTURKOD: TIntegerField;
    CekCiroIBQCEKISLEMNO: TIntegerField;
    CekCiroIBQSAAT: TTimeField;
    CekCiroIBQGELGITKOD: TIBStringField;
    CekCiroIBQCARIPARABIRIMKOD: TIntegerField;
    CekCiroIBQC_CARIPARABIRIM: TIBStringField;
    CekCiroIBQC_PARABIRIMI: TIBStringField;
    CekCiroIBQC_KASAADI: TIBStringField;
    CekCiroIBQC_CARIADI: TIBStringField;
    CekCiroIBQC_GGMERKEZI: TIBStringField;
    CekCiroIBQC_KULLANICIADI: TIBStringField;
    CekCiroIBQC_BANKAADI: TIBStringField;
    CekCiroIBQKAPATMA: TIntegerField;
    CekCiroIBQSISTEM: TIntegerField;
    CeklerDS: TDataSource;
    CeklerUSQL: TIBUpdateSQL;
    CGBodroIBQBAGLANTINO: TIntegerField;
    CGBodroIBQODENEN: TFloatField;
    CGBodroIBQTAHSILEDILEN: TFloatField;
    CGBodroIBQKALAN: TFloatField;
    CekListIBQ: TIBQuery;
    CekListDS: TDataSource;
    CekListUSQL: TIBUpdateSQL;
    CekListIBQCEKBODROKOD: TIntegerField;
    CekListIBQISLEMKOD: TIntegerField;
    CekListIBQCARIKOD: TIntegerField;
    CekListIBQCARINO: TIntegerField;
    CekListIBQSIRA: TIntegerField;
    CekListIBQACIKLAMA: TIBStringField;
    CekListIBQTEDIYE: TFloatField;
    CekListIBQTAHSILAT: TFloatField;
    CekListIBQD_TEDIYE: TFloatField;
    CekListIBQD_TAHSILAT: TFloatField;
    CekListIBQISLEMKURU: TFloatField;
    CekListIBQVADE: TDateField;
    CekListIBQBANKAKOD: TIntegerField;
    CekListIBQPARABIRIMKOD: TIntegerField;
    CekListIBQBANKA: TIBStringField;
    CekListIBQKESIDEYERI: TIBStringField;
    CekListIBQILKCIRO: TIBStringField;
    CekListIBQCEKSERINO: TIBStringField;
    CekListIBQKULLANKOD: TIntegerField;
    CekListIBQEVRAKDURUMU: TIntegerField;
    CekListIBQC_PARABIRIMI: TIBStringField;
    CekListIBQC_CARIADI: TIBStringField;
    CekListIBQC_KULLANICIADI: TIBStringField;
    CekListIBQC_BANKAADI: TIBStringField;
    CekListIBQKAPATMA: TIntegerField;
    CekListIBQSISTEM: TIntegerField;
    CekListIBQPERSONELKOD: TIntegerField;
    CekListIBQISLEMTUR: TIBStringField;
    CekListIBQISLEMTURKOD: TIntegerField;
    CekListIBQBAGLANTINO: TIntegerField;
    CekListIBQODENEN: TFloatField;
    CekListIBQTAHSILEDILEN: TFloatField;
    CekListIBQKALAN: TFloatField;
    CeklerIBQCEKBODROKOD: TIntegerField;
    CeklerIBQISLEMKOD: TIntegerField;
    CeklerIBQCARIKOD: TIntegerField;
    CeklerIBQCARINO: TIntegerField;
    CeklerIBQSIRA: TIntegerField;
    CeklerIBQACIKLAMA: TIBStringField;
    CeklerIBQTEDIYE: TFloatField;
    CeklerIBQTAHSILAT: TFloatField;
    CeklerIBQD_TEDIYE: TFloatField;
    CeklerIBQD_TAHSILAT: TFloatField;
    CeklerIBQISLEMKURU: TFloatField;
    CeklerIBQVADE: TDateField;
    CeklerIBQBANKAKOD: TIntegerField;
    CeklerIBQPARABIRIMKOD: TIntegerField;
    CeklerIBQBANKA: TIBStringField;
    CeklerIBQKESIDEYERI: TIBStringField;
    CeklerIBQILKCIRO: TIBStringField;
    CeklerIBQCEKSERINO: TIBStringField;
    CeklerIBQKULLANKOD: TIntegerField;
    CeklerIBQEVRAKDURUMU: TIntegerField;
    CeklerIBQC_PARABIRIMI: TIBStringField;
    CeklerIBQC_CARIADI: TIBStringField;
    CeklerIBQC_KULLANICIADI: TIBStringField;
    CeklerIBQC_BANKAADI: TIBStringField;
    CeklerIBQKAPATMA: TIntegerField;
    CeklerIBQSISTEM: TIntegerField;
    CeklerIBQPERSONELKOD: TIntegerField;
    CeklerIBQISLEMTUR: TIBStringField;
    CeklerIBQISLEMTURKOD: TIntegerField;
    CeklerIBQBAGLANTINO: TIntegerField;
    CeklerIBQODENEN: TFloatField;
    CeklerIBQTAHSILEDILEN: TFloatField;
    CeklerIBQKALAN: TFloatField;
    CYBodroIBQCEKBODROKOD: TIntegerField;
    CYBodroIBQISLEMKOD: TIntegerField;
    CYBodroIBQCARIKOD: TIntegerField;
    CYBodroIBQCARINO: TIntegerField;
    CYBodroIBQSIRA: TIntegerField;
    CYBodroIBQACIKLAMA: TIBStringField;
    CYBodroIBQTEDIYE: TFloatField;
    CYBodroIBQTAHSILAT: TFloatField;
    CYBodroIBQD_TEDIYE: TFloatField;
    CYBodroIBQD_TAHSILAT: TFloatField;
    CYBodroIBQISLEMKURU: TFloatField;
    CYBodroIBQVADE: TDateField;
    CYBodroIBQBANKAKOD: TIntegerField;
    CYBodroIBQPARABIRIMKOD: TIntegerField;
    CYBodroIBQBANKA: TIBStringField;
    CYBodroIBQKESIDEYERI: TIBStringField;
    CYBodroIBQILKCIRO: TIBStringField;
    CYBodroIBQCEKSERINO: TIBStringField;
    CYBodroIBQKULLANKOD: TIntegerField;
    CYBodroIBQEVRAKDURUMU: TIntegerField;
    CYBodroIBQC_PARABIRIMI: TIBStringField;
    CYBodroIBQC_CARIADI: TIBStringField;
    CYBodroIBQC_KULLANICIADI: TIBStringField;
    CYBodroIBQC_BANKAADI: TIBStringField;
    CYBodroIBQKAPATMA: TIntegerField;
    CYBodroIBQSISTEM: TIntegerField;
    CYBodroIBQPERSONELKOD: TIntegerField;
    CYBodroIBQISLEMTUR: TIBStringField;
    CYBodroIBQISLEMTURKOD: TIntegerField;
    CYBodroIBQBAGLANTINO: TIntegerField;
    CYBodroIBQODENEN: TFloatField;
    CYBodroIBQTAHSILEDILEN: TFloatField;
    CYBodroIBQKALAN: TFloatField;
    CCBodroIBQCEKBODROKOD: TIntegerField;
    CCBodroIBQISLEMKOD: TIntegerField;
    CCBodroIBQCARIKOD: TIntegerField;
    CCBodroIBQCARINO: TIntegerField;
    CCBodroIBQSIRA: TIntegerField;
    CCBodroIBQACIKLAMA: TIBStringField;
    CCBodroIBQTEDIYE: TFloatField;
    CCBodroIBQTAHSILAT: TFloatField;
    CCBodroIBQD_TEDIYE: TFloatField;
    CCBodroIBQD_TAHSILAT: TFloatField;
    CCBodroIBQISLEMKURU: TFloatField;
    CCBodroIBQVADE: TDateField;
    CCBodroIBQBANKAKOD: TIntegerField;
    CCBodroIBQPARABIRIMKOD: TIntegerField;
    CCBodroIBQBANKA: TIBStringField;
    CCBodroIBQKESIDEYERI: TIBStringField;
    CCBodroIBQILKCIRO: TIBStringField;
    CCBodroIBQCEKSERINO: TIBStringField;
    CCBodroIBQKULLANKOD: TIntegerField;
    CCBodroIBQEVRAKDURUMU: TIntegerField;
    CCBodroIBQC_PARABIRIMI: TIBStringField;
    CCBodroIBQC_CARIADI: TIBStringField;
    CCBodroIBQC_KULLANICIADI: TIBStringField;
    CCBodroIBQC_BANKAADI: TIBStringField;
    CCBodroIBQKAPATMA: TIntegerField;
    CCBodroIBQSISTEM: TIntegerField;
    CCBodroIBQPERSONELKOD: TIntegerField;
    CCBodroIBQISLEMTUR: TIBStringField;
    CCBodroIBQISLEMTURKOD: TIntegerField;
    CCBodroIBQBAGLANTINO: TIntegerField;
    CCBodroIBQODENEN: TFloatField;
    CCBodroIBQTAHSILEDILEN: TFloatField;
    CCBodroIBQKALAN: TFloatField;
    CekGirisIBQC_PERSONEL: TIBStringField;
    CekGirisIBQC_CARITAHSILAT: TFloatField;
    CekGirisIBQC_CARITEDIYE: TFloatField;
    CekYazmaIBQC_PERSONEL: TIBStringField;
    CekYazmaIBQC_CARITAHSILAT: TFloatField;
    CekYazmaIBQC_CARITEDIYE: TFloatField;
    CekCiroIBQC_PERSONEL: TIBStringField;
    CekCiroIBQC_CARITAHSILAT: TFloatField;
    CekCiroIBQC_CARITEDIYE: TFloatField;
    EldenCTahsilatIBQ: TIBQuery;
    EldenCTahsilatSQL: TIBUpdateSQL;
    EldenCTahsilatDS: TDataSource;
    ECTahBodroIBQ: TIBQuery;
    ECTahBodroSQL: TIBUpdateSQL;
    ECTahBodroDS: TDataSource;
    EldenCTahsilatIBQISLEMKOD: TIntegerField;
    EldenCTahsilatIBQCARIKOD: TIntegerField;
    EldenCTahsilatIBQCARINO: TIntegerField;
    EldenCTahsilatIBQISLEMTUR: TIBStringField;
    EldenCTahsilatIBQTARIH: TDateField;
    EldenCTahsilatIBQACIKLAMA: TIBStringField;
    EldenCTahsilatIBQTEDIYE: TFloatField;
    EldenCTahsilatIBQTAHSILAT: TFloatField;
    EldenCTahsilatIBQD_TEDIYE: TFloatField;
    EldenCTahsilatIBQD_TAHSILAT: TFloatField;
    EldenCTahsilatIBQBANKAKOD: TIntegerField;
    EldenCTahsilatIBQKASAKOD: TIntegerField;
    EldenCTahsilatIBQMAKBUZNO: TIntegerField;
    EldenCTahsilatIBQKULLANKOD: TIntegerField;
    EldenCTahsilatIBQCARIKURU: TFloatField;
    EldenCTahsilatIBQISLEMKURU: TFloatField;
    EldenCTahsilatIBQPARABIRIMKOD: TIntegerField;
    EldenCTahsilatIBQPERSONELKOD: TIntegerField;
    EldenCTahsilatIBQBAGLANTINO: TIntegerField;
    EldenCTahsilatIBQISLEMTURKOD: TIntegerField;
    EldenCTahsilatIBQCEKISLEMNO: TIntegerField;
    EldenCTahsilatIBQSAAT: TTimeField;
    EldenCTahsilatIBQGELGITKOD: TIBStringField;
    EldenCTahsilatIBQCARIPARABIRIMKOD: TIntegerField;
    EldenCTahsilatIBQC_CARIPARABIRIM: TIBStringField;
    EldenCTahsilatIBQC_PARABIRIMI: TIBStringField;
    EldenCTahsilatIBQC_KASAADI: TIBStringField;
    EldenCTahsilatIBQC_CARIADI: TIBStringField;
    EldenCTahsilatIBQC_GGMERKEZI: TIBStringField;
    EldenCTahsilatIBQC_KULLANICIADI: TIBStringField;
    EldenCTahsilatIBQC_BANKAADI: TIBStringField;
    EldenCTahsilatIBQKAPATMA: TIntegerField;
    EldenCTahsilatIBQSISTEM: TIntegerField;
    EldenCTahsilatIBQC_PERSONEL: TIBStringField;
    EldenCTahsilatIBQC_CARITEDIYE: TFloatField;
    EldenCTahsilatIBQC_CARITAHSILAT: TFloatField;
    ECTahBodroIBQISLEMKOD: TIntegerField;
    ECTahBodroIBQTARIH: TDateField;
    ECTahBodroIBQACIKLAMA: TIBStringField;
    ECTahBodroIBQODENEN: TFloatField;
    ECTahBodroIBQTAHSILEDILEN: TFloatField;
    ECTahBodroIBQBAGLANTINO: TIntegerField;
    ECTahBodroIBQCEKNO: TIBStringField;
    ECTahBodroIBQCEKISLEMKOD: TIntegerField;
    ECTahBodroIBQSISTEM: TIntegerField;
    ECTahBodroIBQPARABIRIMKOD: TIntegerField;
    ECTahBodroIBQISLEMKURU: TFloatField;
    ECTahBodroIBQC_TLTAHSILEDILEN: TFloatField;
    ECTahBodroIBQC_TLODENEN: TFloatField;
    ECTahBodroIBQC_PARABIRIMI: TIBStringField;
    BankadanCTahsilatIBQ: TIBQuery;
    BankadanCTahsilatSQL: TIBUpdateSQL;
    BankadanCTahsilatDS: TDataSource;
    BCTahBodroIBQ: TIBQuery;
    BCTahBodroSQL: TIBUpdateSQL;
    BCTahBodroDS: TDataSource;
    BankadanCTahsilatIBQISLEMKOD: TIntegerField;
    BankadanCTahsilatIBQCARIKOD: TIntegerField;
    BankadanCTahsilatIBQCARINO: TIntegerField;
    BankadanCTahsilatIBQISLEMTUR: TIBStringField;
    BankadanCTahsilatIBQTARIH: TDateField;
    BankadanCTahsilatIBQACIKLAMA: TIBStringField;
    BankadanCTahsilatIBQTEDIYE: TFloatField;
    BankadanCTahsilatIBQTAHSILAT: TFloatField;
    BankadanCTahsilatIBQD_TEDIYE: TFloatField;
    BankadanCTahsilatIBQD_TAHSILAT: TFloatField;
    BankadanCTahsilatIBQBANKAKOD: TIntegerField;
    BankadanCTahsilatIBQKASAKOD: TIntegerField;
    BankadanCTahsilatIBQMAKBUZNO: TIntegerField;
    BankadanCTahsilatIBQKULLANKOD: TIntegerField;
    BankadanCTahsilatIBQCARIKURU: TFloatField;
    BankadanCTahsilatIBQISLEMKURU: TFloatField;
    BankadanCTahsilatIBQPARABIRIMKOD: TIntegerField;
    BankadanCTahsilatIBQPERSONELKOD: TIntegerField;
    BankadanCTahsilatIBQBAGLANTINO: TIntegerField;
    BankadanCTahsilatIBQISLEMTURKOD: TIntegerField;
    BankadanCTahsilatIBQCEKISLEMNO: TIntegerField;
    BankadanCTahsilatIBQSAAT: TTimeField;
    BankadanCTahsilatIBQGELGITKOD: TIBStringField;
    BankadanCTahsilatIBQCARIPARABIRIMKOD: TIntegerField;
    BankadanCTahsilatIBQC_CARIPARABIRIM: TIBStringField;
    BankadanCTahsilatIBQC_PARABIRIMI: TIBStringField;
    BankadanCTahsilatIBQC_KASAADI: TIBStringField;
    BankadanCTahsilatIBQC_CARIADI: TIBStringField;
    BankadanCTahsilatIBQC_GGMERKEZI: TIBStringField;
    BankadanCTahsilatIBQC_KULLANICIADI: TIBStringField;
    BankadanCTahsilatIBQC_BANKAADI: TIBStringField;
    BankadanCTahsilatIBQKAPATMA: TIntegerField;
    BankadanCTahsilatIBQSISTEM: TIntegerField;
    BankadanCTahsilatIBQC_PERSONEL: TIBStringField;
    BankadanCTahsilatIBQC_CARITEDIYE: TFloatField;
    BankadanCTahsilatIBQC_CARITAHSILAT: TFloatField;
    BCTahBodroIBQISLEMKOD: TIntegerField;
    BCTahBodroIBQTARIH: TDateField;
    BCTahBodroIBQACIKLAMA: TIBStringField;
    BCTahBodroIBQODENEN: TFloatField;
    BCTahBodroIBQTAHSILEDILEN: TFloatField;
    BCTahBodroIBQBAGLANTINO: TIntegerField;
    BCTahBodroIBQCEKNO: TIBStringField;
    BCTahBodroIBQCEKISLEMKOD: TIntegerField;
    BCTahBodroIBQSISTEM: TIntegerField;
    BCTahBodroIBQPARABIRIMKOD: TIntegerField;
    BCTahBodroIBQISLEMKURU: TFloatField;
    BCTahBodroIBQC_TLTAHSILEDILEN: TFloatField;
    BCTahBodroIBQC_TLODENEN: TFloatField;
    BCTahBodroIBQC_PARABIRIMI: TIBStringField;
    procedure CekGirisIBQAfterPost(DataSet: TDataSet);
    procedure CekGirisIBQNewRecord(DataSet: TDataSet);
    procedure CekyazmaIBQAfterPost(DataSet: TDataSet);
    procedure CekyazmaIBQNewRecord(DataSet: TDataSet);
    procedure CekCiroIBQAfterPost(DataSet: TDataSet);
    procedure CekCiroIBQNewRecord(DataSet: TDataSet);
    procedure CGBodroIBQAfterPost(DataSet: TDataSet);
    procedure CGBodroIBQNewRecord(DataSet: TDataSet);
    procedure CYBodroIBQNewRecord(DataSet: TDataSet);
    procedure CCBodroIBQAfterPost(DataSet: TDataSet);
    procedure CCBodroIBQNewRecord(DataSet: TDataSet);
    procedure CCBodroIBQCekTahsilatChange(Sender: TField);
    procedure CYBodroIBQAfterPost(DataSet: TDataSet);
    procedure ECTahBodroIBQBAGLANTINOChange(Sender: TField);
    procedure ECTahBodroIBQNewRecord(DataSet: TDataSet);
    procedure EldenCTahsilatIBQNewRecord(DataSet: TDataSet);
    procedure EldenCTahsilatIBQAfterPost(DataSet: TDataSet);
    procedure ECTahBodroIBQAfterPost(DataSet: TDataSet);
    procedure CekGirisIBQAfterEdit(DataSet: TDataSet);
    procedure CGBodroIBQAfterEdit(DataSet: TDataSet);
    procedure CekYazmaIBQAfterEdit(DataSet: TDataSet);
    procedure CYBodroIBQAfterEdit(DataSet: TDataSet);
    procedure CekCiroIBQAfterEdit(DataSet: TDataSet);
    procedure CCBodroIBQAfterEdit(DataSet: TDataSet);
    procedure EldenCTahsilatIBQAfterEdit(DataSet: TDataSet);
    procedure BankadanCTahsilatIBQAfterPost(DataSet: TDataSet);
    procedure BankadanCTahsilatIBQNewRecord(DataSet: TDataSet);
    procedure BankadanCTahsilatIBQAfterEdit(DataSet: TDataSet);
    procedure BCTahBodroIBQAfterPost(DataSet: TDataSet);
    procedure BCTahBodroIBQNewRecord(DataSet: TDataSet);
    procedure BCTahBodroIBQBAGLANTINOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCek: TDMCek;

implementation

Uses DataDM, SabitDM, KasaDM, BankaDM;
{$R *.dfm}

procedure TDMCek.CekGirisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCek.CekGirisIBQNewRecord(DataSet: TDataSet);
begin
        CekGirisIBQTARIH.AsDateTime := BugununTarihi;
        CekGirisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CekGirisIBQISLEMTUR.AsString := 'Çek Giriþi';
        CekGirisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
end;

procedure TDMCek.CekyazmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCek.CekyazmaIBQNewRecord(DataSet: TDataSet);
begin
        CekyazmaIBQTARIH.AsDateTime := BugununTarihi;
        CekyazmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CekyazmaIBQISLEMTUR.AsString := 'Çek Yazma';
        CekyazmaIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;

end;

procedure TDMCek.CekCiroIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCek.CekCiroIBQNewRecord(DataSet: TDataSet);
begin
        CekCiroIBQTARIH.AsDateTime := BugununTarihi;
        CekCiroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CekCiroIBQISLEMTUR.AsString := 'Çek Ciro';
        CekCiroIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;

end;

procedure TDMCek.CGBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := CGBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        CekGirisIBQ.Refresh;
        CGBodroIBQ.GotoBookmark(yer);
end;

procedure TDMCek.CGBodroIBQNewRecord(DataSet: TDataSet);
begin
        CGBodroIBQISLEMTUR.AsString := 'Çek Giriþi';
        CGBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CGBodroIBQPARABIRIMKOD.AsInteger := CekGirisIBQPARABIRIMKOD.AsInteger;
        CGBodroIBQISLEMKOD.AsInteger := CekGirisIBQISLEMKOD.AsInteger;
        CGBodroIBQCARIKOD.AsInteger := CekGirisIBQCARIKOD.AsInteger;
        CGBodroIBQCARINO.AsInteger := CekGirisIBQCARINO.AsInteger;
end;

procedure TDMCek.CYBodroIBQNewRecord(DataSet: TDataSet);
begin
        CYBodroIBQISLEMTUR.AsString := 'Çek Yazma';
        CYBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CYBodroIBQPARABIRIMKOD.AsInteger := CekYazmaIBQPARABIRIMKOD.AsInteger;
        CYBodroIBQISLEMKOD.AsInteger := CekYazmaIBQISLEMKOD.AsInteger;
end;

procedure TDMCek.CCBodroIBQAfterPost(DataSet: TDataSet);

var
        yer :Pointer;
begin
        yer := CCBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        CekCiroIBQ.Refresh;
        CCBodroIBQ.GotoBookmark(yer);
end;

procedure TDMCek.CCBodroIBQNewRecord(DataSet: TDataSet);
begin
        CCBodroIBQISLEMTUR.AsString := 'Çek Ciro';
        CCBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        CCBodroIBQISLEMKOD.AsInteger := CekCiroIBQISLEMKOD.AsInteger;
end;

procedure TDMCek.CCBodroIBQCekTahsilatChange(Sender: TField);
begin
     //   CCBodroIBQD_TEDIYE.AsFloat :=CCBodroIBQCekTahsilat.AsFloat;
end;

procedure TDMCek.CYBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := CYBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        CekYazmaIBQ.Refresh;
        CYBodroIBQ.GotoBookmark(yer);
end;

procedure TDMCek.ECTahBodroIBQBAGLANTINOChange(Sender: TField);
begin
        if CeklerIBQ.Locate('CEKBODROKOD',ECTahBodroIBQBAGLANTINO.AsInteger,[]) then
                ECTahBodroIBQTAHSILEDILEN.AsFloat := CeklerIBQKALAN.AsFloat;
end;

procedure TDMCek.ECTahBodroIBQNewRecord(DataSet: TDataSet);
begin
        ECTahBodroIBQCEKISLEMKOD.AsInteger := EldenCTahsilatIBQISLEMKOD.AsInteger;
        ECTahBodroIBQTARIH.AsDateTime := BugununTarihi;
end;

procedure TDMCek.EldenCTahsilatIBQNewRecord(DataSet: TDataSet);
begin
        EldenCTahsilatIBQKASAKOD.AsInteger := DMKasa.KasaIBQKASAKOD.AsInteger;
        EldenCTahsilatIBQTARIH.AsDateTime := BugununTarihi;
        EldenCTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        EldenCTahsilatIBQISLEMTUR.AsString := 'Elden Çek Tahsilatý';

end;

procedure TDMCek.EldenCTahsilatIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCek.ECTahBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := ECTahBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        EldenCTahsilatIBQ.Refresh;
        ECTahBodroIBQ.GotoBookmark(yer);
end;

procedure TDMCek.CekGirisIBQAfterEdit(DataSet: TDataSet);
begin
        CekGirisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.CGBodroIBQAfterEdit(DataSet: TDataSet);
begin
        CGBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.CekYazmaIBQAfterEdit(DataSet: TDataSet);
begin
        CekYazmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.CYBodroIBQAfterEdit(DataSet: TDataSet);
begin
        CYBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.CekCiroIBQAfterEdit(DataSet: TDataSet);
begin
        CekCiroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.CCBodroIBQAfterEdit(DataSet: TDataSet);
begin
        CCBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.EldenCTahsilatIBQAfterEdit(DataSet: TDataSet);
begin
        EldenCTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.BankadanCTahsilatIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMCek.BankadanCTahsilatIBQNewRecord(DataSet: TDataSet);
begin
        BankadanCTahsilatIBQKASAKOD.AsInteger := DMbanka.BankaIBQBANKAKOD.AsInteger;
        BankadanCTahsilatIBQTARIH.AsDateTime := BugununTarihi;
        BankadanCTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        BankadanCTahsilatIBQISLEMTUR.AsString := 'Bankadan Çek Tahsilatý';

end;

procedure TDMCek.BankadanCTahsilatIBQAfterEdit(DataSet: TDataSet);
begin
        BankadanCTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMCek.BCTahBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := BCTahBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        BankadanCTahsilatIBQ.Refresh;
        BCTahBodroIBQ.GotoBookmark(yer);
end;

procedure TDMCek.BCTahBodroIBQNewRecord(DataSet: TDataSet);
begin
        BCTahBodroIBQCEKISLEMKOD.AsInteger := BankadanCTahsilatIBQISLEMKOD.AsInteger;
        BCTahBodroIBQTARIH.AsDateTime := BugununTarihi;
end;

procedure TDMCek.BCTahBodroIBQBAGLANTINOChange(Sender: TField);
begin
        if CeklerIBQ.Locate('CEKBODROKOD',BCTahBodroIBQBAGLANTINO.AsInteger,[]) then
                BCTahBodroIBQTAHSILEDILEN.AsFloat := CeklerIBQKALAN.AsFloat;
end;

end.
