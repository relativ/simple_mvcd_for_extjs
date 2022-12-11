unit StokDurum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, scExcelExport, StdCtrls, Mask, OnlineEdit, OnlineCustomControl,
  OnlineButton, Grids, DBGrids, OnlineDBGrid, ExtCtrls;

type
  TFStokDurum = class(TForm)
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
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    OnlineButton1: TOnlineButton;
    scExcelExport1: TscExcelExport;
    OnlineButton2: TOnlineButton;
    BitBtn3: TOnlineButton;
    procedure OnlineButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStokDurum: TFStokDurum;

implementation

{$R *.dfm}
Uses StokRDM;
procedure TFStokDurum.OnlineButton2Click(Sender: TObject);
begin
        DMRStok.StokDurumuIBQ.Open;
end;

procedure TFStokDurum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMRStok.StokDurumuIBQ.Close;
        action := caFree;
end;

procedure TFStokDurum.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokDurum.OnlineButton1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(True);
end;

end.

