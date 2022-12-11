unit StokGrup;

interface

uses
  Windows, Messages,DB, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,  ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Mask, OnlineDBTreeView,OnlineDBCheckBox,DBOnlineLookupCombo,
  DBOnlineEdit,DBOnlineCombo, OnlineButton, OnlineCustomControl;

type
  TFStokGrup = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBOnlineEdit;
    psDBTreeView1: TOnlineDBTree;
    BitBtn11: TOnlineButton;
    BitBtn1: TOnlineButton;
    BitBtn12: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure psDBTreeView1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure psDBTreeView1DblClick(Sender: TObject);
    procedure psDBTreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStokGrup: TFStokGrup;

implementation
{$R *.dfm}
uses StokDM, ProcedureDM, CariDM, DataDM;
procedure TFStokGrup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        FStokGrup.BitBtn2.Visible:=False;
        Action := caFree;

end;

procedure TFStokGrup.BitBtn2Click(Sender: TObject);

begin
        DMStok.GrupBaglantiIBQ.Append;
        DMStok.GrupBaglantiIBQGRUPLARKOD.AsInteger := DMStok.StokGruplariIBQGRUPLARKOD.AsInteger;
        DMStok.GrupBaglantiIBQKONTROLNO.AsString := DMStok.StokGruplariIBQKONTROLNO.AsString;
        DMStok.GrupBaglantiIBQ.Post;
        Close;
end;

procedure TFStokGrup.BitBtn11Click(Sender: TObject);
begin
        psDBTreeView1.OnlineInsertNode;
        DBEdit2.SetFocus; 
end;

procedure TFStokGrup.BitBtn1Click(Sender: TObject);
begin
        psDBTreeView1.OnlineInsertSubNode;
        DBEdit2.SetFocus;
end;

procedure TFStokGrup.BitBtn12Click(Sender: TObject);
begin
        if DMStok.StokGruplariIBQ.RecordCount > 0 then
        begin
                DMProcedure.Silme_Kontrol_Proc.ParamByName('KOD_IN').AsInteger :=
                                DMStok.StokGruplariIBQGRUPLARKOD.AsInteger;
                DMProcedure.Silme_Kontrol_Proc.ParamByName('TIP').AsString :='Stok Gruplarý';
                DMProcedure.Silme_Kontrol_Proc.Prepare;
                DMProcedure.Silme_Kontrol_Proc.ExecProc;
                DMData.IBTCariPro.CommitRetaining;
                if DMProcedure.Silme_Kontrol_Proc.ParamByName('DURUM').AsString = '0' then
                        psDBTreeView1.OnlineDeleteNode
                else ShowMessage('Kullanýmda Olan Stok Grubunu Silemezsiniz...');
        end;
end;               

procedure TFStokGrup.FormShow(Sender: TObject);
begin
        DMStok.GrupBaglantiIBQ.Open;
        DMStok.GrupBaglantiIBQ.Open;
        psDBTreeView1.RebuildTree;
        DBEdit2.SetFocus;
end;

procedure TFStokGrup.Panel3Exit(Sender: TObject);
begin
        if DMStok.GrupBaglantiIBQ.Modified = True Then
                DMStok.GrupBaglantiIBQ.ApplyUpdates;
end;

procedure TFStokGrup.psDBTreeView1Enter(Sender: TObject);
begin
        if DMStok.GrupBaglantiIBQ.Modified = True Then
                DMStok.GrupBaglantiIBQ.ApplyUpdates;
end;

procedure TFStokGrup.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBCheckBox)  then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
  if Key = #27 then
        close;
end;

procedure TFStokGrup.DBEdit2Exit(Sender: TObject);
begin
        if DMStok.GrupBaglantiIBQ.Modified = true then
                DMStok.GrupBaglantiIBQ.Post;

end;

procedure TFStokGrup.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if key =#13 then
                BitBtn11.SetFocus;
end;

procedure TFStokGrup.GroupBox1Exit(Sender: TObject);
begin
        if DMStok.GrupBaglantiIBQ.Modified = true then
                DMStok.GrupBaglantiIBQ.Post;
end;

procedure TFStokGrup.BitBtn3Click(Sender: TObject);
begin
        close;
end;

procedure TFStokGrup.psDBTreeView1DblClick(Sender: TObject);
begin
        if BitBtn2.Visible=True Then
                BitBtn2Click(sender);
end;

procedure TFStokGrup.psDBTreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   {    if (Key = VK_DELETE) and (Shift = []) then
        begin
                if DMStok.StokGrupIBQ.RecordCount > 0 then
                begin
                        StokDM.Silme_Kontrol_Proc.ParamByName('KOD_IN').AsInteger :=
                                        DMStok.StokGrupIBQGRUPLARKOD.AsInteger;
                        StokDM.Silme_Kontrol_Proc.ParamByName('TIP').AsString :='Stok Gruplarý';
                        StokDM.Silme_Kontrol_Proc.Prepare;
                        StokDM.Silme_Kontrol_Proc.ExecProc;
                        CariDM.IBTransaction1.CommitRetaining;
                        if StokDM.Silme_Kontrol_Proc.ParamByName('DURUM').AsString = '0' then
                                psDBTreeView1.OnlineDeleteNode
                        else ShowMessage('Kullanýmda Olan Stok Grubunu Silemezsiniz...');
                end;
                Key := 0;
        end;  }
end;

end.
