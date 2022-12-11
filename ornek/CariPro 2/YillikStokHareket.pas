unit YillikStokHareket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OnlineCombo, Menus, Mask, OnlineEdit,
  OnlineCustomControl, OnlineButton, ComCtrls, OnlineDBTreeView, ExtCtrls,
  Grids, DBGrids, OnlineCheckDBGrid, OnlineDBGrid;

type
  TFYillikStokHareket = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    GroupBox3: TGroupBox;
    psDBTreeView1: TOnlineDBTree;
    GroupBox2: TGroupBox;
    Panel11: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel4: TPanel;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn3: TOnlineButton;
    BitBtn1: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    OnlineCombo1: TOnlineCombo;
    OnlineCombo2: TOnlineCombo;
    OnlineDBGrid1: TOnlineDBGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FYillikStokHareket: TFYillikStokHareket;

implementation

{$R *.dfm}
Uses StokRDM;
procedure TFYillikStokHareket.BitBtn1Click(Sender: TObject);
begin
        DMRStok.YillikStokHIBQ.Open;
        DMRStok.YillikStokHIBQ.First;
        while not DMRStok.YillikStokHIBQ.Eof do
        Begin

                DMRStok.YillikStokHIBQOcak.AsFloat := DMRStok.YillikStokHIBQOcak.AsFloat + DMRStok.YillikStokHIBQGIRISMIKTAR.AsFloat - DMRStok.YillikStokHIBQCIKISMIKTAR.AsFloat;

                DMRStok.YillikStokHIBQ.Next;
        end;
end;

end.
