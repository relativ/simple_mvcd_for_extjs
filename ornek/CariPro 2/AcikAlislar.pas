unit AcikAlislar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, scExcelExport, ComCtrls, OnlineCustomControl,
  OnlineButton, Grids, DBGrids, OnlineDBGrid, StdCtrls, ExtCtrls;

type
  TFAcikAlislar = class(TForm)
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
  FAcikAlislar: TFAcikAlislar;

implementation

{$R *.dfm}

Uses AlisSatisDM, KasaDM, ProcedureDM;

procedure TFAcikAlislar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := cafree;
end;

procedure TFAcikAlislar.FormShow(Sender: TObject);
begin
        DMAlisSatis.AcikAlislarIBQ.Open;
        DMAlisSatis.AlisKapatmaIBQ.Open;
end;

procedure TFAcikAlislar.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFAcikAlislar.OnlineButton1Click(Sender: TObject);
begin
        DMAlisSatis.AlisKapatmaIBQ.Append;
        DMAlisSatis.AlisKapatmaIBQBAGLANTINO.AsInteger := DMkasa.OdemeIBQISLEMKOD.AsInteger;
        DMAlisSatis.AlisKapatmaIBQALISSATISNO.AsInteger := DMAlisSatis.AcikAlislarIBQALISSATISNO.AsInteger;
        DMAlisSatis.AlisKapatmaIBQALISSATISKOD.AsInteger := DMAlisSatis.AcikAlislarIBQISLEMKOD.AsInteger;
        if DMAlisSatis.AcikAlislarIBQALISTUTAR.AsFloat <= DMkasa.OdemeIBQTEDIYE.AsFloat * DMkasa.OdemeIBQISLEMKURU.AsFloat then
                DMAlisSatis.AlisKapatmaIBQODENEN.AsFloat := DMAlisSatis.AcikAlislarIBQALISTUTAR.AsFloat
        else
                DMAlisSatis.AlisKapatmaIBQODENEN.AsFloat := DMkasa.OdemeIBQTEDIYE.AsFloat * DMkasa.OdemeIBQISLEMKURU.AsFloat;
        DMAlisSatis.AlisKapatmaIBQ.Post;
        DMAlisSatis.AcikAlislarIBQ.Edit;
        DMAlisSatis.AcikAlislarIBQODENEN.AsFloat := DMAlisSatis.AcikAlislarIBQODENEN.AsFloat + DMAlisSatis.AlisKapatmaIBQODENEN.AsFloat;
        DMAlisSatis.AcikAlislarIBQ.Post;
        DMAlisSatis.AlisKapatmaIBQ.Refresh;
end;

procedure TFAcikAlislar.OnlineButton2Click(Sender: TObject);
begin
        DMProcedure.AlisSatisKapatmaProc.ParamByName('CARIKOD_IN').AsInteger :=DMkasa.OdemeIBQCARIKOD.AsInteger;
        DMProcedure.AlisSatisKapatmaProc.ParamByName('ISLEMTURKOD_IN').AsInteger :=1;
        DMProcedure.AlisSatisKapatmaProc.ParamByName('GIRISLEMKOD_IN').AsInteger := DMkasa.OdemeIBQISLEMKOD.AsInteger;
        DMProcedure.AlisSatisKapatmaProc.ParamByName('TUTAR_IN').AsFloat :=DMkasa.OdemeIBQTEDIYE.AsFloat * DMkasa.OdemeIBQISLEMKURU.AsFloat;
        DMProcedure.AlisSatisKapatmaProc.Prepare;
        DMProcedure.AlisSatisKapatmaProc.ExecProc;
        DMAlisSatis.AcikAlislarIBQ.Close;
        DMAlisSatis.AcikAlislarIBQ.Open;
        DMAlisSatis.AlisKapatmaIBQ.Close;
        DMAlisSatis.AlisKapatmaIBQ.Open;



end;

end.
