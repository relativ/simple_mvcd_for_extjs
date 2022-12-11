unit AcikSatislar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, scExcelExport, ComCtrls, OnlineCustomControl,
  OnlineButton, Grids, DBGrids, OnlineDBGrid, StdCtrls, ExtCtrls;

type
  TFAcikSatislar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    OnlineButton1: TOnlineButton;
    OnlineButton2: TOnlineButton;
    GroupBox2: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcikSatislar: TFAcikSatislar;

implementation

{$R *.dfm}

Uses AlisSatisDM, KasaDM, ProcedureDM;

procedure TFAcikSatislar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := cafree;
end;

procedure TFAcikSatislar.FormShow(Sender: TObject);
begin
        DMAlisSatis.AcikSatislarIBQ.Open;
        DMAlisSatis.SatisKapatmaIBQ.Open;
end;

procedure TFAcikSatislar.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFAcikSatislar.OnlineButton1Click(Sender: TObject);
begin
        DMAlisSatis.SatisKapatmaIBQ.Append;
        DMAlisSatis.SatisKapatmaIBQBAGLANTINO.AsInteger := DMkasa.TahsilatIBQISLEMKOD.AsInteger;
        DMAlisSatis.SatisKapatmaIBQALISSATISNO.AsInteger := DMAlisSatis.AcikSatislarIBQALISSATISNO.AsInteger;
        DMAlisSatis.SatisKapatmaIBQALISSATISKOD.AsInteger := DMAlisSatis.AcikSatislarIBQISLEMKOD.AsInteger;
        if DMAlisSatis.AcikSatislarIBQSATISTUTAR.AsFloat <= DMkasa.TahsilatIBQTAHSILAT.AsFloat * DMkasa.TahsilatIBQISLEMKURU.AsFloat then
                DMAlisSatis.SatisKapatmaIBQTAHSILEDILEN.AsFloat := DMAlisSatis.AcikSatislarIBQSATISTUTAR.AsFloat
        else
                DMAlisSatis.SatisKapatmaIBQTAHSILEDILEN.AsFloat := DMkasa.TahsilatIBQTAHSILAT.AsFloat * DMkasa.TahsilatIBQISLEMKURU.AsFloat;
        DMAlisSatis.SatisKapatmaIBQ.Post;
        DMAlisSatis.AcikSatislarIBQ.Edit;
        DMAlisSatis.AcikSatislarIBQTAHSILEDILEN.AsFloat := DMAlisSatis.AcikSatislarIBQTAHSILEDILEN.AsFloat + DMAlisSatis.SatisKapatmaIBQTAHSILEDILEN.AsFloat;
        DMAlisSatis.AcikSatislarIBQ.Post;
        DMAlisSatis.SatisKapatmaIBQ.Refresh;
end;

procedure TFAcikSatislar.OnlineButton2Click(Sender: TObject);
begin
        DMProcedure.AlisSatisKapatmaProc.ParamByName('CARIKOD_IN').AsInteger :=DMkasa.TahsilatIBQCARIKOD.AsInteger;
        DMProcedure.AlisSatisKapatmaProc.ParamByName('ISLEMTURKOD_IN').AsInteger :=2;
        DMProcedure.AlisSatisKapatmaProc.ParamByName('GIRISLEMKOD_IN').AsInteger := DMkasa.TahsilatIBQISLEMKOD.AsInteger;
        DMProcedure.AlisSatisKapatmaProc.ParamByName('TUTAR_IN').AsFloat :=DMkasa.TahsilatIBQTAHSILAT.AsFloat * DMkasa.TahsilatIBQISLEMKURU.AsFloat;
        DMProcedure.AlisSatisKapatmaProc.Prepare;
        DMProcedure.AlisSatisKapatmaProc.ExecProc;
        DMAlisSatis.AcikSatislarIBQ.Close;
        DMAlisSatis.AcikSatislarIBQ.Open;
        DMAlisSatis.SatisKapatmaIBQ.Close;
        DMAlisSatis.SatisKapatmaIBQ.Open;



end;

end.
