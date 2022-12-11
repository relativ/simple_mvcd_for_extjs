unit SenetDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMSenet = class(TDataModule)
    SenetlerIBQ: TIBQuery;
    SenetGirisIBQ: TIBQuery;
    SenetGirisUSQL: TIBUpdateSQL;
    SenetGirisDS: TDataSource;
    SGBodroIBQ: TIBQuery;
    SGBodroUSQL: TIBUpdateSQL;
    SGBodroDS: TDataSource;
    SenetYazmaIBQ: TIBQuery;
    SenetYazmaUSQL: TIBUpdateSQL;
    SenetYazmaDS: TDataSource;
    SYBodroIBQ: TIBQuery;
    SYBodroUSQL: TIBUpdateSQL;
    SYBodroDS: TDataSource;
    SenetCiroIBQ: TIBQuery;
    SenetCiroUSQL: TIBUpdateSQL;
    SenetCiroDS: TDataSource;
    SCBodroIBQ: TIBQuery;
    SCBodroUSQL: TIBUpdateSQL;
    SCBodroDS: TDataSource;
    SenetlerDS: TDataSource;
    SenetListIBQ: TIBQuery;
    SenetListDS: TDataSource;
    SenetListIBQISLEMKOD: TIntegerField;
    SenetListIBQCARIKOD: TIntegerField;
    SenetListIBQCARINO: TIntegerField;
    SenetListIBQSIRA: TIntegerField;
    SenetListIBQACIKLAMA: TIBStringField;
    SenetListIBQTEDIYE: TFloatField;
    SenetListIBQTAHSILAT: TFloatField;
    SenetListIBQD_TEDIYE: TFloatField;
    SenetListIBQD_TAHSILAT: TFloatField;
    SenetListIBQISLEMKURU: TFloatField;
    SenetListIBQVADE: TDateField;
    SenetListIBQBANKAKOD: TIntegerField;
    SenetListIBQPARABIRIMKOD: TIntegerField;
    SenetListIBQBANKA: TIBStringField;
    SenetListIBQKESIDEYERI: TIBStringField;
    SenetListIBQILKCIRO: TIBStringField;
    SenetListIBQKULLANKOD: TIntegerField;
    SenetListIBQEVRAKDURUMU: TIntegerField;
    SenetListIBQC_PARABIRIMI: TIBStringField;
    SenetListIBQC_CARIADI: TIBStringField;
    SenetListIBQC_KULLANICIADI: TIBStringField;
    SenetListIBQC_BANKAADI: TIBStringField;
    SenetListIBQKAPATMA: TIntegerField;
    SenetListIBQSISTEM: TIntegerField;
    SenetListIBQPERSONELKOD: TIntegerField;
    SenetListIBQISLEMTUR: TIBStringField;
    SenetListIBQISLEMTURKOD: TIntegerField;
    SenetListIBQBAGLANTINO: TIntegerField;
    SenetListIBQODENEN: TFloatField;
    SenetListIBQTAHSILEDILEN: TFloatField;
    SenetListIBQKALAN: TFloatField;
    EldenSTahsilatIBQ: TIBQuery;
    EldenSTahsilatSQL: TIBUpdateSQL;
    EldenSTahsilatDS: TDataSource;
    ESTahBodroIBQ: TIBQuery;
    ESTahBodroSQL: TIBUpdateSQL;
    ESTahBodroDS: TDataSource;
    BankadanSTahsilatIBQ: TIBQuery;
    BankadanSTahsilatSQL: TIBUpdateSQL;
    BankadanSTahsilatDS: TDataSource;
    BSTahBodroIBQ: TIBQuery;
    BSTahBodroSQL: TIBUpdateSQL;
    BSTahBodroDS: TDataSource;
    SenetYazmaIBQISLEMKOD: TIntegerField;
    SenetYazmaIBQCARIKOD: TIntegerField;
    SenetYazmaIBQCARINO: TIntegerField;
    SenetYazmaIBQISLEMTUR: TIBStringField;
    SenetYazmaIBQISLEMTURKOD: TIntegerField;
    SenetYazmaIBQTARIH: TDateField;
    SenetYazmaIBQACIKLAMA: TIBStringField;
    SenetYazmaIBQTEDIYE: TFloatField;
    SenetYazmaIBQTAHSILAT: TFloatField;
    SenetYazmaIBQD_TEDIYE: TFloatField;
    SenetYazmaIBQD_TAHSILAT: TFloatField;
    SenetYazmaIBQBANKAKOD: TIntegerField;
    SenetYazmaIBQKASAKOD: TIntegerField;
    SenetYazmaIBQMAKBUZNO: TIntegerField;
    SenetYazmaIBQKULLANKOD: TIntegerField;
    SenetYazmaIBQCARIKURU: TFloatField;
    SenetYazmaIBQISLEMKURU: TFloatField;
    SenetYazmaIBQPARABIRIMKOD: TIntegerField;
    SenetYazmaIBQPERSONELKOD: TIntegerField;
    SenetYazmaIBQBAGLANTINO: TIntegerField;
    SenetYazmaIBQSENETISLEMNO: TIntegerField;
    SenetYazmaIBQSAAT: TTimeField;
    SenetYazmaIBQGELGITKOD: TIBStringField;
    SenetYazmaIBQCARIPARABIRIMKOD: TIntegerField;
    SenetYazmaIBQC_CARIPARABIRIM: TIBStringField;
    SenetYazmaIBQC_PARABIRIMI: TIBStringField;
    SenetYazmaIBQC_KASAADI: TIBStringField;
    SenetYazmaIBQC_CARIADI: TIBStringField;
    SenetYazmaIBQC_GGMERKEZI: TIBStringField;
    SenetYazmaIBQC_KULLANICIADI: TIBStringField;
    SenetYazmaIBQC_BANKAADI: TIBStringField;
    SenetYazmaIBQKAPATMA: TIntegerField;
    SenetYazmaIBQSISTEM: TIntegerField;
    SenetYazmaIBQC_PERSONEL: TIBStringField;
    SenetYazmaIBQC_CARITEDIYE: TFloatField;
    SenetYazmaIBQC_CARITAHSILAT: TFloatField;
    SYBodroIBQSENETBODROKOD: TIntegerField;
    SYBodroIBQISLEMKOD: TIntegerField;
    SYBodroIBQCARIKOD: TIntegerField;
    SYBodroIBQCARINO: TIntegerField;
    SYBodroIBQSIRA: TIntegerField;
    SYBodroIBQACIKLAMA: TIBStringField;
    SYBodroIBQTEDIYE: TFloatField;
    SYBodroIBQTAHSILAT: TFloatField;
    SYBodroIBQD_TEDIYE: TFloatField;
    SYBodroIBQD_TAHSILAT: TFloatField;
    SYBodroIBQISLEMKURU: TFloatField;
    SYBodroIBQVADE: TDateField;
    SYBodroIBQBANKAKOD: TIntegerField;
    SYBodroIBQPARABIRIMKOD: TIntegerField;
    SYBodroIBQBANKA: TIBStringField;
    SYBodroIBQKESIDEYERI: TIBStringField;
    SYBodroIBQILKCIRO: TIBStringField;
    SYBodroIBQSENETSERINO: TIBStringField;
    SYBodroIBQKULLANKOD: TIntegerField;
    SYBodroIBQEVRAKDURUMU: TIntegerField;
    SYBodroIBQC_PARABIRIMI: TIBStringField;
    SYBodroIBQC_CARIADI: TIBStringField;
    SYBodroIBQC_KULLANICIADI: TIBStringField;
    SYBodroIBQC_BANKAADI: TIBStringField;
    SYBodroIBQKAPATMA: TIntegerField;
    SYBodroIBQSISTEM: TIntegerField;
    SYBodroIBQPERSONELKOD: TIntegerField;
    SYBodroIBQISLEMTUR: TIBStringField;
    SYBodroIBQISLEMTURKOD: TIntegerField;
    SYBodroIBQBAGLANTINO: TIntegerField;
    SYBodroIBQODENEN: TFloatField;
    SYBodroIBQTAHSILEDILEN: TFloatField;
    SYBodroIBQKALAN: TFloatField;
    SenetCiroIBQISLEMKOD: TIntegerField;
    SenetCiroIBQCARIKOD: TIntegerField;
    SenetCiroIBQCARINO: TIntegerField;
    SenetCiroIBQISLEMTUR: TIBStringField;
    SenetCiroIBQISLEMTURKOD: TIntegerField;
    SenetCiroIBQTARIH: TDateField;
    SenetCiroIBQACIKLAMA: TIBStringField;
    SenetCiroIBQTEDIYE: TFloatField;
    SenetCiroIBQTAHSILAT: TFloatField;
    SenetCiroIBQD_TEDIYE: TFloatField;
    SenetCiroIBQD_TAHSILAT: TFloatField;
    SenetCiroIBQBANKAKOD: TIntegerField;
    SenetCiroIBQKASAKOD: TIntegerField;
    SenetCiroIBQMAKBUZNO: TIntegerField;
    SenetCiroIBQKULLANKOD: TIntegerField;
    SenetCiroIBQCARIKURU: TFloatField;
    SenetCiroIBQISLEMKURU: TFloatField;
    SenetCiroIBQPARABIRIMKOD: TIntegerField;
    SenetCiroIBQPERSONELKOD: TIntegerField;
    SenetCiroIBQBAGLANTINO: TIntegerField;
    SenetCiroIBQSENETISLEMNO: TIntegerField;
    SenetCiroIBQSAAT: TTimeField;
    SenetCiroIBQGELGITKOD: TIBStringField;
    SenetCiroIBQCARIPARABIRIMKOD: TIntegerField;
    SenetCiroIBQC_CARIPARABIRIM: TIBStringField;
    SenetCiroIBQC_PARABIRIMI: TIBStringField;
    SenetCiroIBQC_KASAADI: TIBStringField;
    SenetCiroIBQC_CARIADI: TIBStringField;
    SenetCiroIBQC_GGMERKEZI: TIBStringField;
    SenetCiroIBQC_KULLANICIADI: TIBStringField;
    SenetCiroIBQC_BANKAADI: TIBStringField;
    SenetCiroIBQKAPATMA: TIntegerField;
    SenetCiroIBQSISTEM: TIntegerField;
    SenetCiroIBQC_PERSONEL: TIBStringField;
    SenetCiroIBQC_CARITEDIYE: TFloatField;
    SenetCiroIBQC_CARITAHSILAT: TFloatField;
    SCBodroIBQSENETBODROKOD: TIntegerField;
    SCBodroIBQISLEMKOD: TIntegerField;
    SCBodroIBQCARIKOD: TIntegerField;
    SCBodroIBQCARINO: TIntegerField;
    SCBodroIBQSIRA: TIntegerField;
    SCBodroIBQACIKLAMA: TIBStringField;
    SCBodroIBQTEDIYE: TFloatField;
    SCBodroIBQTAHSILAT: TFloatField;
    SCBodroIBQD_TEDIYE: TFloatField;
    SCBodroIBQD_TAHSILAT: TFloatField;
    SCBodroIBQISLEMKURU: TFloatField;
    SCBodroIBQVADE: TDateField;
    SCBodroIBQBANKAKOD: TIntegerField;
    SCBodroIBQPARABIRIMKOD: TIntegerField;
    SCBodroIBQBANKA: TIBStringField;
    SCBodroIBQKESIDEYERI: TIBStringField;
    SCBodroIBQILKCIRO: TIBStringField;
    SCBodroIBQSENETSERINO: TIBStringField;
    SCBodroIBQKULLANKOD: TIntegerField;
    SCBodroIBQEVRAKDURUMU: TIntegerField;
    SCBodroIBQC_PARABIRIMI: TIBStringField;
    SCBodroIBQC_CARIADI: TIBStringField;
    SCBodroIBQC_KULLANICIADI: TIBStringField;
    SCBodroIBQC_BANKAADI: TIBStringField;
    SCBodroIBQKAPATMA: TIntegerField;
    SCBodroIBQSISTEM: TIntegerField;
    SCBodroIBQPERSONELKOD: TIntegerField;
    SCBodroIBQISLEMTUR: TIBStringField;
    SCBodroIBQISLEMTURKOD: TIntegerField;
    SCBodroIBQBAGLANTINO: TIntegerField;
    SCBodroIBQODENEN: TFloatField;
    SCBodroIBQTAHSILEDILEN: TFloatField;
    SCBodroIBQKALAN: TFloatField;
    BankadanSTahsilatIBQISLEMKOD: TIntegerField;
    BankadanSTahsilatIBQCARIKOD: TIntegerField;
    BankadanSTahsilatIBQCARINO: TIntegerField;
    BankadanSTahsilatIBQISLEMTUR: TIBStringField;
    BankadanSTahsilatIBQISLEMTURKOD: TIntegerField;
    BankadanSTahsilatIBQTARIH: TDateField;
    BankadanSTahsilatIBQACIKLAMA: TIBStringField;
    BankadanSTahsilatIBQTEDIYE: TFloatField;
    BankadanSTahsilatIBQTAHSILAT: TFloatField;
    BankadanSTahsilatIBQD_TEDIYE: TFloatField;
    BankadanSTahsilatIBQD_TAHSILAT: TFloatField;
    BankadanSTahsilatIBQBANKAKOD: TIntegerField;
    BankadanSTahsilatIBQKASAKOD: TIntegerField;
    BankadanSTahsilatIBQMAKBUZNO: TIntegerField;
    BankadanSTahsilatIBQKULLANKOD: TIntegerField;
    BankadanSTahsilatIBQCARIKURU: TFloatField;
    BankadanSTahsilatIBQISLEMKURU: TFloatField;
    BankadanSTahsilatIBQPARABIRIMKOD: TIntegerField;
    BankadanSTahsilatIBQPERSONELKOD: TIntegerField;
    BankadanSTahsilatIBQBAGLANTINO: TIntegerField;
    BankadanSTahsilatIBQSENETISLEMNO: TIntegerField;
    BankadanSTahsilatIBQSAAT: TTimeField;
    BankadanSTahsilatIBQGELGITKOD: TIBStringField;
    BankadanSTahsilatIBQCARIPARABIRIMKOD: TIntegerField;
    BankadanSTahsilatIBQC_CARIPARABIRIM: TIBStringField;
    BankadanSTahsilatIBQC_PARABIRIMI: TIBStringField;
    BankadanSTahsilatIBQC_KASAADI: TIBStringField;
    BankadanSTahsilatIBQC_CARIADI: TIBStringField;
    BankadanSTahsilatIBQC_GGMERKEZI: TIBStringField;
    BankadanSTahsilatIBQC_KULLANICIADI: TIBStringField;
    BankadanSTahsilatIBQC_BANKAADI: TIBStringField;
    BankadanSTahsilatIBQKAPATMA: TIntegerField;
    BankadanSTahsilatIBQSISTEM: TIntegerField;
    BankadanSTahsilatIBQC_PERSONEL: TIBStringField;
    BankadanSTahsilatIBQC_CARITEDIYE: TFloatField;
    BankadanSTahsilatIBQC_CARITAHSILAT: TFloatField;
    BSTahBodroIBQISLEMKOD: TIntegerField;
    BSTahBodroIBQTARIH: TDateField;
    BSTahBodroIBQSENETNO: TIBStringField;
    BSTahBodroIBQACIKLAMA: TIBStringField;
    BSTahBodroIBQODENEN: TFloatField;
    BSTahBodroIBQTAHSILEDILEN: TFloatField;
    BSTahBodroIBQBAGLANTINO: TIntegerField;
    BSTahBodroIBQSENETISLEMKOD: TIntegerField;
    BSTahBodroIBQSISTEM: TIntegerField;
    BSTahBodroIBQPARABIRIMKOD: TIntegerField;
    BSTahBodroIBQISLEMKURU: TFloatField;
    BSTahBodroIBQC_TLTAHSILEDILEN: TFloatField;
    BSTahBodroIBQC_TLODENEN: TFloatField;
    BSTahBodroIBQC_PARABIRIMI: TIBStringField;
    SenetlerIBQSENETBODROKOD: TIntegerField;
    SenetlerIBQISLEMKOD: TIntegerField;
    SenetlerIBQCARIKOD: TIntegerField;
    SenetlerIBQCARINO: TIntegerField;
    SenetlerIBQSIRA: TIntegerField;
    SenetlerIBQACIKLAMA: TIBStringField;
    SenetlerIBQTEDIYE: TFloatField;
    SenetlerIBQTAHSILAT: TFloatField;
    SenetlerIBQD_TEDIYE: TFloatField;
    SenetlerIBQD_TAHSILAT: TFloatField;
    SenetlerIBQISLEMKURU: TFloatField;
    SenetlerIBQVADE: TDateField;
    SenetlerIBQBANKAKOD: TIntegerField;
    SenetlerIBQPARABIRIMKOD: TIntegerField;
    SenetlerIBQBANKA: TIBStringField;
    SenetlerIBQKESIDEYERI: TIBStringField;
    SenetlerIBQILKCIRO: TIBStringField;
    SenetlerIBQSENETSERINO: TIBStringField;
    SenetlerIBQKULLANKOD: TIntegerField;
    SenetlerIBQEVRAKDURUMU: TIntegerField;
    SenetlerIBQC_PARABIRIMI: TIBStringField;
    SenetlerIBQC_CARIADI: TIBStringField;
    SenetlerIBQC_KULLANICIADI: TIBStringField;
    SenetlerIBQC_BANKAADI: TIBStringField;
    SenetlerIBQKAPATMA: TIntegerField;
    SenetlerIBQSISTEM: TIntegerField;
    SenetlerIBQPERSONELKOD: TIntegerField;
    SenetlerIBQISLEMTUR: TIBStringField;
    SenetlerIBQISLEMTURKOD: TIntegerField;
    SenetlerIBQBAGLANTINO: TIntegerField;
    SenetlerIBQODENEN: TFloatField;
    SenetlerIBQTAHSILEDILEN: TFloatField;
    SenetlerIBQKALAN: TFloatField;
    SenetGirisIBQISLEMKOD: TIntegerField;
    SenetGirisIBQCARIKOD: TIntegerField;
    SenetGirisIBQCARINO: TIntegerField;
    SenetGirisIBQISLEMTUR: TIBStringField;
    SenetGirisIBQISLEMTURKOD: TIntegerField;
    SenetGirisIBQTARIH: TDateField;
    SenetGirisIBQACIKLAMA: TIBStringField;
    SenetGirisIBQTEDIYE: TFloatField;
    SenetGirisIBQTAHSILAT: TFloatField;
    SenetGirisIBQD_TEDIYE: TFloatField;
    SenetGirisIBQD_TAHSILAT: TFloatField;
    SenetGirisIBQBANKAKOD: TIntegerField;
    SenetGirisIBQKASAKOD: TIntegerField;
    SenetGirisIBQMAKBUZNO: TIntegerField;
    SenetGirisIBQKULLANKOD: TIntegerField;
    SenetGirisIBQCARIKURU: TFloatField;
    SenetGirisIBQISLEMKURU: TFloatField;
    SenetGirisIBQPARABIRIMKOD: TIntegerField;
    SenetGirisIBQPERSONELKOD: TIntegerField;
    SenetGirisIBQBAGLANTINO: TIntegerField;
    SenetGirisIBQSENETISLEMNO: TIntegerField;
    SenetGirisIBQSAAT: TTimeField;
    SenetGirisIBQGELGITKOD: TIBStringField;
    SenetGirisIBQCARIPARABIRIMKOD: TIntegerField;
    SenetGirisIBQC_CARIPARABIRIM: TIBStringField;
    SenetGirisIBQC_PARABIRIMI: TIBStringField;
    SenetGirisIBQC_KASAADI: TIBStringField;
    SenetGirisIBQC_CARIADI: TIBStringField;
    SenetGirisIBQC_GGMERKEZI: TIBStringField;
    SenetGirisIBQC_KULLANICIADI: TIBStringField;
    SenetGirisIBQC_BANKAADI: TIBStringField;
    SenetGirisIBQKAPATMA: TIntegerField;
    SenetGirisIBQSISTEM: TIntegerField;
    SenetGirisIBQC_PERSONEL: TIBStringField;
    SenetGirisIBQC_CARITEDIYE: TFloatField;
    SenetGirisIBQC_CARITAHSILAT: TFloatField;
    SGBodroIBQSENETBODROKOD: TIntegerField;
    SGBodroIBQISLEMKOD: TIntegerField;
    SGBodroIBQCARIKOD: TIntegerField;
    SGBodroIBQCARINO: TIntegerField;
    SGBodroIBQSIRA: TIntegerField;
    SGBodroIBQACIKLAMA: TIBStringField;
    SGBodroIBQTEDIYE: TFloatField;
    SGBodroIBQTAHSILAT: TFloatField;
    SGBodroIBQD_TEDIYE: TFloatField;
    SGBodroIBQD_TAHSILAT: TFloatField;
    SGBodroIBQISLEMKURU: TFloatField;
    SGBodroIBQVADE: TDateField;
    SGBodroIBQBANKAKOD: TIntegerField;
    SGBodroIBQPARABIRIMKOD: TIntegerField;
    SGBodroIBQBANKA: TIBStringField;
    SGBodroIBQKESIDEYERI: TIBStringField;
    SGBodroIBQILKCIRO: TIBStringField;
    SGBodroIBQSENETSERINO: TIBStringField;
    SGBodroIBQKULLANKOD: TIntegerField;
    SGBodroIBQEVRAKDURUMU: TIntegerField;
    SGBodroIBQC_PARABIRIMI: TIBStringField;
    SGBodroIBQC_CARIADI: TIBStringField;
    SGBodroIBQC_KULLANICIADI: TIBStringField;
    SGBodroIBQC_BANKAADI: TIBStringField;
    SGBodroIBQKAPATMA: TIntegerField;
    SGBodroIBQSISTEM: TIntegerField;
    SGBodroIBQPERSONELKOD: TIntegerField;
    SGBodroIBQISLEMTUR: TIBStringField;
    SGBodroIBQISLEMTURKOD: TIntegerField;
    SGBodroIBQBAGLANTINO: TIntegerField;
    SGBodroIBQODENEN: TFloatField;
    SGBodroIBQTAHSILEDILEN: TFloatField;
    SGBodroIBQKALAN: TFloatField;
    EldenSTahsilatIBQISLEMKOD: TIntegerField;
    EldenSTahsilatIBQCARIKOD: TIntegerField;
    EldenSTahsilatIBQCARINO: TIntegerField;
    EldenSTahsilatIBQISLEMTUR: TIBStringField;
    EldenSTahsilatIBQISLEMTURKOD: TIntegerField;
    EldenSTahsilatIBQTARIH: TDateField;
    EldenSTahsilatIBQACIKLAMA: TIBStringField;
    EldenSTahsilatIBQTEDIYE: TFloatField;
    EldenSTahsilatIBQTAHSILAT: TFloatField;
    EldenSTahsilatIBQD_TEDIYE: TFloatField;
    EldenSTahsilatIBQD_TAHSILAT: TFloatField;
    EldenSTahsilatIBQBANKAKOD: TIntegerField;
    EldenSTahsilatIBQKASAKOD: TIntegerField;
    EldenSTahsilatIBQMAKBUZNO: TIntegerField;
    EldenSTahsilatIBQKULLANKOD: TIntegerField;
    EldenSTahsilatIBQCARIKURU: TFloatField;
    EldenSTahsilatIBQISLEMKURU: TFloatField;
    EldenSTahsilatIBQPARABIRIMKOD: TIntegerField;
    EldenSTahsilatIBQPERSONELKOD: TIntegerField;
    EldenSTahsilatIBQBAGLANTINO: TIntegerField;
    EldenSTahsilatIBQSENETISLEMNO: TIntegerField;
    EldenSTahsilatIBQSAAT: TTimeField;
    EldenSTahsilatIBQGELGITKOD: TIBStringField;
    EldenSTahsilatIBQCARIPARABIRIMKOD: TIntegerField;
    EldenSTahsilatIBQC_CARIPARABIRIM: TIBStringField;
    EldenSTahsilatIBQC_PARABIRIMI: TIBStringField;
    EldenSTahsilatIBQC_KASAADI: TIBStringField;
    EldenSTahsilatIBQC_CARIADI: TIBStringField;
    EldenSTahsilatIBQC_GGMERKEZI: TIBStringField;
    EldenSTahsilatIBQC_KULLANICIADI: TIBStringField;
    EldenSTahsilatIBQC_BANKAADI: TIBStringField;
    EldenSTahsilatIBQKAPATMA: TIntegerField;
    EldenSTahsilatIBQSISTEM: TIntegerField;
    EldenSTahsilatIBQC_PERSONEL: TIBStringField;
    EldenSTahsilatIBQC_CARITEDIYE: TFloatField;
    EldenSTahsilatIBQC_CARITAHSILAT: TFloatField;
    ESTahBodroIBQISLEMKOD: TIntegerField;
    ESTahBodroIBQTARIH: TDateField;
    ESTahBodroIBQSENETNO: TIBStringField;
    ESTahBodroIBQACIKLAMA: TIBStringField;
    ESTahBodroIBQODENEN: TFloatField;
    ESTahBodroIBQTAHSILEDILEN: TFloatField;
    ESTahBodroIBQBAGLANTINO: TIntegerField;
    ESTahBodroIBQSENETISLEMKOD: TIntegerField;
    ESTahBodroIBQSISTEM: TIntegerField;
    ESTahBodroIBQPARABIRIMKOD: TIntegerField;
    ESTahBodroIBQISLEMKURU: TFloatField;
    ESTahBodroIBQC_TLTAHSILEDILEN: TFloatField;
    ESTahBodroIBQC_TLODENEN: TFloatField;
    ESTahBodroIBQC_PARABIRIMI: TIBStringField;
    procedure SenetGirisIBQAfterPost(DataSet: TDataSet);
    procedure SenetGirisIBQNewRecord(DataSet: TDataSet);
    procedure SenetYazmaIBQAfterPost(DataSet: TDataSet);
    procedure SenetYazmaIBQNewRecord(DataSet: TDataSet);
    procedure SenetCiroIBQAfterPost(DataSet: TDataSet);
    procedure SenetCiroIBQNewRecord(DataSet: TDataSet);
    procedure SGBodroIBQAfterPost(DataSet: TDataSet);
    procedure SGBodroIBQNewRecord(DataSet: TDataSet);
    procedure SYBodroIBQNewRecord(DataSet: TDataSet);
    procedure SCBodroIBQAfterPost(DataSet: TDataSet);
    procedure SCBodroIBQNewRecord(DataSet: TDataSet);

    procedure SYBodroIBQAfterPost(DataSet: TDataSet);
    procedure ESTahBodroIBQBAGLANTINOChange(Sender: TField);
    procedure ESTahBodroIBQNewRecord(DataSet: TDataSet);
    procedure EldenSTahsilatIBQNewRecord(DataSet: TDataSet);
    procedure EldenSTahsilatIBQAfterPost(DataSet: TDataSet);
    procedure ESTahBodroIBQAfterPost(DataSet: TDataSet);
    procedure SenetGirisIBQAfterEdit(DataSet: TDataSet);
    procedure SGBodroIBQAfterEdit(DataSet: TDataSet);
    procedure SenetYazmaIBQAfterEdit(DataSet: TDataSet);
    procedure SYBodroIBQAfterEdit(DataSet: TDataSet);
    procedure SenetCiroIBQAfterEdit(DataSet: TDataSet);
    procedure SCBodroIBQAfterEdit(DataSet: TDataSet);
    procedure EldenSTahsilatIBQAfterEdit(DataSet: TDataSet);
    procedure BankadanSTahsilatIBQAfterPost(DataSet: TDataSet);
    procedure BankadanSTahsilatIBQNewRecord(DataSet: TDataSet);
    procedure BankadanSTahsilatIBQAfterEdit(DataSet: TDataSet);
    procedure BSTahBodroIBQAfterPost(DataSet: TDataSet);
    procedure BSTahBodroIBQNewRecord(DataSet: TDataSet);
    procedure BSTahBodroIBQBAGLANTINOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSenet: TDMSenet;

implementation

Uses DataDM, SabitDM, KasaDM, BankaDM;
{$R *.dfm}

procedure TDMSenet.SenetGirisIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSenet.SenetGirisIBQNewRecord(DataSet: TDataSet);
begin
        SenetGirisIBQTARIH.AsDateTime := BugununTarihi;
        SenetGirisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SenetGirisIBQISLEMTUR.AsString := 'Senet Giriþi';
        SenetGirisIBQKAPATMA.AsInteger := 1;
        SenetGirisIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
end;

procedure TDMSenet.SenetYazmaIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSenet.SenetYazmaIBQNewRecord(DataSet: TDataSet);
begin
        SenetyazmaIBQTARIH.AsDateTime := BugununTarihi;
        SenetyazmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SenetyazmaIBQISLEMTUR.AsString := 'Çek Yazma';
        SenetyazmaIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;

end;

procedure TDMSenet.SenetCiroIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSenet.SenetCiroIBQNewRecord(DataSet: TDataSet);
begin
        SenetCiroIBQTARIH.AsDateTime := BugununTarihi;
        SenetCiroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SenetCiroIBQISLEMTUR.AsString := 'Çek Ciro';
        SenetCiroIBQPARABIRIMKOD.AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;

end;

procedure TDMSenet.SGBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := SGBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SenetGirisIBQ.Refresh;
        SGBodroIBQ.GotoBookmark(yer);
end;

procedure TDMSenet.SGBodroIBQNewRecord(DataSet: TDataSet);
begin
        SGBodroIBQISLEMTUR.AsString := 'Senet Giriþi';
        SGBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SGBodroIBQPARABIRIMKOD.AsInteger := SenetGirisIBQPARABIRIMKOD.AsInteger;
        SGBodroIBQISLEMKOD.AsInteger := SenetGirisIBQISLEMKOD.AsInteger;
        SGBodroIBQCARIKOD.AsInteger := SenetGirisIBQCARIKOD.AsInteger;
        SGBodroIBQCARINO.AsInteger := SenetGirisIBQCARINO.AsInteger;
end;

procedure TDMSenet.SYBodroIBQNewRecord(DataSet: TDataSet);
begin
        SYBodroIBQISLEMTUR.AsString := 'Çek Yazma';
        SYBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SYBodroIBQPARABIRIMKOD.AsInteger := SenetYazmaIBQPARABIRIMKOD.AsInteger;
        SYBodroIBQISLEMKOD.AsInteger := SenetYazmaIBQISLEMKOD.AsInteger;
end;

procedure TDMSenet.SCBodroIBQAfterPost(DataSet: TDataSet);

var
        yer :Pointer;
begin
        yer := SCBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SenetCiroIBQ.Refresh;
        SCBodroIBQ.GotoBookmark(yer);
end;

procedure TDMSenet.SCBodroIBQNewRecord(DataSet: TDataSet);
begin
        SCBodroIBQISLEMTUR.AsString := 'Çek Ciro';
        SCBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        SCBodroIBQISLEMKOD.AsInteger := SenetCiroIBQISLEMKOD.AsInteger;
end;



procedure TDMSenet.SYBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := SYBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        SenetYazmaIBQ.Refresh;
        SYBodroIBQ.GotoBookmark(yer);
end;

procedure TDMSenet.ESTahBodroIBQBAGLANTINOChange(Sender: TField);
begin
        if SenetlerIBQ.Locate('SENETBODROKOD',ESTahBodroIBQBAGLANTINO.AsInteger,[]) then
                ESTahBodroIBQTAHSILEDILEN.AsFloat := SenetlerIBQKALAN.AsFloat;
end;

procedure TDMSenet.ESTahBodroIBQNewRecord(DataSet: TDataSet);
begin
        ESTahBodroIBQSenetISLEMKOD.AsInteger := EldenSTahsilatIBQISLEMKOD.AsInteger;
        ESTahBodroIBQTARIH.AsDateTime := BugununTarihi;
end;

procedure TDMSenet.EldenSTahsilatIBQNewRecord(DataSet: TDataSet);
begin
        EldenSTahsilatIBQKASAKOD.AsInteger := DMKasa.KasaIBQKASAKOD.AsInteger;
        EldenSTahsilatIBQTARIH.AsDateTime := BugununTarihi;
        EldenSTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        EldenSTahsilatIBQISLEMTUR.AsString := 'Elden Çek Tahsilatý';

end;

procedure TDMSenet.EldenSTahsilatIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSenet.ESTahBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := ESTahBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        EldenSTahsilatIBQ.Refresh;
        ESTahBodroIBQ.GotoBookmark(yer);
end;

procedure TDMSenet.SenetGirisIBQAfterEdit(DataSet: TDataSet);
begin
        SenetGirisIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.SGBodroIBQAfterEdit(DataSet: TDataSet);
begin
        SGBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.SenetYazmaIBQAfterEdit(DataSet: TDataSet);
begin
        SenetYazmaIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.SYBodroIBQAfterEdit(DataSet: TDataSet);
begin
        SYBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.SenetCiroIBQAfterEdit(DataSet: TDataSet);
begin
        SenetCiroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.SCBodroIBQAfterEdit(DataSet: TDataSet);
begin
        SCBodroIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.EldenSTahsilatIBQAfterEdit(DataSet: TDataSet);
begin
        EldenSTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.BankadanSTahsilatIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMSenet.BankadanSTahsilatIBQNewRecord(DataSet: TDataSet);
begin
        BankadanSTahsilatIBQKASAKOD.AsInteger := DMbanka.BankaIBQBANKAKOD.AsInteger;
        BankadanSTahsilatIBQTARIH.AsDateTime := BugununTarihi;
        BankadanSTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        BankadanSTahsilatIBQISLEMTUR.AsString := 'Bankadan Çek Tahsilatý';

end;

procedure TDMSenet.BankadanSTahsilatIBQAfterEdit(DataSet: TDataSet);
begin
        BankadanSTahsilatIBQKULLANKOD.AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
end;

procedure TDMSenet.BSTahBodroIBQAfterPost(DataSet: TDataSet);
var
        yer :Pointer;
begin
        yer := BSTahBodroIBQ.GetBookmark;
        DMData.Kayit(DataSet);
        BankadanSTahsilatIBQ.Refresh;
        BSTahBodroIBQ.GotoBookmark(yer);
end;

procedure TDMSenet.BSTahBodroIBQNewRecord(DataSet: TDataSet);
begin
        BSTahBodroIBQSenetISLEMKOD.AsInteger := BankadanSTahsilatIBQISLEMKOD.AsInteger;
        BSTahBodroIBQTARIH.AsDateTime := BugununTarihi;
end;

procedure TDMSenet.BSTahBodroIBQBAGLANTINOChange(Sender: TField);
begin
        if SenetlerIBQ.Locate('SenetBODROKOD',BSTahBodroIBQBAGLANTINO.AsInteger,[]) then
                BSTahBodroIBQTAHSILEDILEN.AsFloat := SenetlerIBQKALAN.AsFloat;
end;

end.
