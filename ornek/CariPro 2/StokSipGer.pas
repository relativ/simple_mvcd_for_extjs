unit StokSipGer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, Menus, 
  OnlineButton, OnlineCustomControl, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxGridTableView, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid;

type
  TFStokSiparis = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    Panel6: TPanel;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineButton2: TOnlineButton;
    OnlineDBGrid2: TOnlineDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure lemSrasnaGreSrala1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStokSiparis: TFStokSiparis;

implementation

uses DataDM, StokRDM;

{$R *.dfm}

procedure TFStokSiparis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFStokSiparis.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokSiparis.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      key:=#0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFStokSiparis.BitBtn4Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\SiparisiGerekenStok.or');
        FEvrak.Report.PreviewModal; }
end;

procedure TFStokSiparis.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\SiparisiGerekenStok.or');
        FEvrak.Report.Print;  }
end;

procedure TFStokSiparis.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMRStok.SiparisGerekIBQ.SQL.Text := 'select * from STOKKART';
        DMRStok.SiparisGerekIBQ.SQL.Add('Order by STOKODU');
        DMRStok.SiparisGerekIBQ.Open;
end;

procedure TFStokSiparis.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMRStok.SiparisGerekIBQ.Close;
                DMRStok.SiparisGerekIBQ.Open;
        end;
end;

procedure TFStokSiparis.OnlineButton2Click(Sender: TObject);
begin
        DMRStok.SiparisGerekIBQ.Close;
        DMRStok.SiparisGerekIBQ.Open;
end;

end.
