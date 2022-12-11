unit CariRDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery,
  IBStoredProc;

type
  TDMRCari = class(TDataModule)
    AlacaklarimizIBQ: TIBQuery;
    AlacaklarimizDS: TDataSource;
    AlacaklarimizIBQCARIKOD: TIntegerField;
    AlacaklarimizIBQCARINO: TIntegerField;
    AlacaklarimizIBQKOD: TIBStringField;
    AlacaklarimizIBQCARIUNVAN1: TIBStringField;
    AlacaklarimizIBQCARIUNVAN2: TIBStringField;
    AlacaklarimizIBQTAMADI: TIBStringField;
    AlacaklarimizIBQACIKLAMA: TMemoField;
    AlacaklarimizIBQCARITIPKOD: TIBStringField;
    AlacaklarimizIBQSEKTORKOD: TIBStringField;
    AlacaklarimizIBQTEL1: TIBStringField;
    AlacaklarimizIBQTEL2: TIBStringField;
    AlacaklarimizIBQTEL3: TIBStringField;
    AlacaklarimizIBQFAKS: TIBStringField;
    AlacaklarimizIBQGSM: TIBStringField;
    AlacaklarimizIBQMAHALLE: TIBStringField;
    AlacaklarimizIBQCADDE: TIBStringField;
    AlacaklarimizIBQSOKAK: TIBStringField;
    AlacaklarimizIBQAPARTMAN: TIBStringField;
    AlacaklarimizIBQNOSU: TIBStringField;
    AlacaklarimizIBQILCEKOD: TIntegerField;
    AlacaklarimizIBQSEHIRKOD: TIntegerField;
    AlacaklarimizIBQVERDAIRE: TIBStringField;
    AlacaklarimizIBQVERGINO: TIBStringField;
    AlacaklarimizIBQAKTIVITE: TIntegerField;
    AlacaklarimizIBQBLOKE: TIntegerField;
    AlacaklarimizIBQKREDILIMIT: TFloatField;
    AlacaklarimizIBQRISKLIMIT: TFloatField;
    AlacaklarimizIBQFIYATSECIM: TIntegerField;
    AlacaklarimizIBQPARABIRIMKOD: TIntegerField;
    AlacaklarimizIBQMAIL: TIBStringField;
    AlacaklarimizIBQWEB: TIBStringField;
    AlacaklarimizIBQKEFILKOD: TIntegerField;
    AlacaklarimizIBQUYARI: TIntegerField;
    AlacaklarimizIBQBAKIYE: TFloatField;
    AlacaklarimizIBQDURUM: TIBStringField;
    AlacaklarimizIBQMESAJ: TMemoField;
    AlacaklarimizIBQC_PARABIRIMI: TIBStringField;
    AlacaklarimizIBQYETKILI: TIBStringField;
    AlacaklarimizIBQISTIHBARAT: TMemoField;
    AlacaklarimizIBQC_ILCEADI: TIBStringField;
    AlacaklarimizIBQC_SEHIRADI: TIBStringField;
    AlacaklarimizIBQSECIM: TIntegerField;
    BorclarimizIBQ: TIBQuery;
    BorclarimizDS: TDataSource;
    AlacakAltTopProc: TIBStoredProc;
    BorclarimizIBQCARIKOD: TIntegerField;
    BorclarimizIBQCARINO: TIntegerField;
    BorclarimizIBQKOD: TIBStringField;
    BorclarimizIBQCARIUNVAN1: TIBStringField;
    BorclarimizIBQCARIUNVAN2: TIBStringField;
    BorclarimizIBQTAMADI: TIBStringField;
    BorclarimizIBQACIKLAMA: TMemoField;
    BorclarimizIBQCARITIPKOD: TIBStringField;
    BorclarimizIBQSEKTORKOD: TIBStringField;
    BorclarimizIBQTEL1: TIBStringField;
    BorclarimizIBQTEL2: TIBStringField;
    BorclarimizIBQTEL3: TIBStringField;
    BorclarimizIBQFAKS: TIBStringField;
    BorclarimizIBQGSM: TIBStringField;
    BorclarimizIBQMAHALLE: TIBStringField;
    BorclarimizIBQCADDE: TIBStringField;
    BorclarimizIBQSOKAK: TIBStringField;
    BorclarimizIBQAPARTMAN: TIBStringField;
    BorclarimizIBQNOSU: TIBStringField;
    BorclarimizIBQILCEKOD: TIntegerField;
    BorclarimizIBQSEHIRKOD: TIntegerField;
    BorclarimizIBQVERDAIRE: TIBStringField;
    BorclarimizIBQVERGINO: TIBStringField;
    BorclarimizIBQAKTIVITE: TIntegerField;
    BorclarimizIBQBLOKE: TIntegerField;
    BorclarimizIBQKREDILIMIT: TFloatField;
    BorclarimizIBQRISKLIMIT: TFloatField;
    BorclarimizIBQFIYATSECIM: TIntegerField;
    BorclarimizIBQPARABIRIMKOD: TIntegerField;
    BorclarimizIBQMAIL: TIBStringField;
    BorclarimizIBQWEB: TIBStringField;
    BorclarimizIBQKEFILKOD: TIntegerField;
    BorclarimizIBQUYARI: TIntegerField;
    BorclarimizIBQBAKIYE: TFloatField;
    BorclarimizIBQDURUM: TIBStringField;
    BorclarimizIBQMESAJ: TMemoField;
    BorclarimizIBQC_PARABIRIMI: TIBStringField;
    BorclarimizIBQYETKILI: TIBStringField;
    BorclarimizIBQISTIHBARAT: TMemoField;
    BorclarimizIBQC_ILCEADI: TIBStringField;
    BorclarimizIBQC_SEHIRADI: TIBStringField;
    BorclarimizIBQSECIM: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRCari: TDMRCari;

implementation

{$R *.dfm}
Uses DataDM, CariDM;

end.
