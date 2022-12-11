unit ProcedureDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBStoredProc;

type
  TDMProcedure = class(TDataModule)
    CeviriProc: TIBStoredProc;
    AlisToSatisProc: TIBStoredProc;
    Silme_Kontrol_Proc: TIBStoredProc;
    CeviriProcISLEMKOD3_IN: TIntegerField;
    TumunuStokKaydetProc: TIBStoredProc;
    TumuStokSilProc: TIBStoredProc;
    AlisSatisKapatmaProc: TIBStoredProc;
    KayitSilProc: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcedure: TDMProcedure;

implementation

{$R *.dfm}
Uses DataDM;

end.
