unit ProjeDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMProje = class(TDataModule)
    ProjeIBQ: TIBQuery;
    ProjeSQL: TIBUpdateSQL;
    ProjeDS: TDataSource;
    islemIBQ: TIBQuery;
    islemSQL: TIBUpdateSQL;
    islemDS: TDataSource;
    ProjeIBQPROJEKOD: TIntegerField;
    ProjeIBQPROJENO: TIntegerField;
    ProjeIBQTARIH: TDateField;
    ProjeIBQPROJEADI: TIBStringField;
    ProjeIBQBATARIH: TDateField;
    ProjeIBQBITTARIH: TDateField;
    ProjeIBQKULLANKOD: TIntegerField;
    ProjeIBQUYARI: TIntegerField;
    ProjeIBQDURUM: TIBStringField;
    ProjeIBQISLEMSURESI: TIntegerField;
    ProjeIBQPERSONELKOD: TIntegerField;
    ProjeIBQC_PERSONEL: TIBStringField;
    islemIBQISLEMKOD: TIntegerField;
    islemIBQPROJEKOD: TIntegerField;
    islemIBQACILAMA: TIBStringField;
    islemIBQTARIH: TDateTimeField;
    islemIBQKULLANKOD: TIntegerField;
    islemIBQPERSONELKOD: TIntegerField;
    islemIBQDURUM: TIBStringField;
    islemIBQC_PERSONEL: TIBStringField;
    procedure ProjeIBQAfterPost(DataSet: TDataSet);
    procedure islemIBQAfterPost(DataSet: TDataSet);
    procedure islemIBQAfterDelete(DataSet: TDataSet);
    procedure ProjeIBQAfterDelete(DataSet: TDataSet);
    procedure ProjeIBQNewRecord(DataSet: TDataSet);
    procedure islemIBQNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProje: TDMProje;

implementation

{$R *.dfm}

Uses DataDM;
procedure TDMProje.ProjeIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMProje.islemIBQAfterPost(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMProje.islemIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMProje.ProjeIBQAfterDelete(DataSet: TDataSet);
begin
        DMData.Kayit(DataSet);
end;

procedure TDMProje.ProjeIBQNewRecord(DataSet: TDataSet);
begin
        ProjeIBQTARIH.AsDateTime := BugununTarihi;
        ProjeIBQDURUM.AsString :='Baþlatýlmamýþ';
end;

procedure TDMProje.islemIBQNewRecord(DataSet: TDataSet);
begin
        islemIBQTARIH.AsDateTime := BugununTarihi;
        islemIBQPROJEKOD.AsInteger := ProjeIBQPROJEKOD.AsInteger;
        islemIBQDURUM.AsString := 'Devam Ediyor';
end;

end.
