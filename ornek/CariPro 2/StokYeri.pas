unit StokYeri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,  ExtCtrls, DBCtrls, Grids, DBGrids,
  StdCtrls, Buttons, Mask, OnlineDBTreeView, DBOnlineEdit, OnlineDBCheckBox,DBOnlineLookupCombo,
  DBOnlineCombo, DB, IBCustomDataSet, IBQuery, 
  OnlineButton, OnlineCheckBox, OnlineCustomControl, OnlineEdit;

type
  TFStokYeri = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    psDBTreeView1: TOnlineDBTree;
    Label1: TLabel;
    DBEdit1: TDBOnlineEdit;
    Label2: TLabel;
    DBEdit2: TDBOnlineEdit;
    Label3: TLabel;
    DBEdit3: TDBOnlineEdit;
    Label8: TLabel;
    DBEdit8: TDBOnlineEdit;
    Label9: TLabel;
    DBEdit9: TDBOnlineEdit;
    Label10: TLabel;
    DBEdit10: TDBOnlineEdit;
    Label11: TLabel;
    DBEdit11: TDBOnlineEdit;
    Label12: TLabel;
    DBEdit12: TDBOnlineEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBEdit13: TDBOnlineEdit;
    Label15: TLabel;
    DBEdit14: TDBOnlineEdit;
    BitBtn11: TOnlineButton;
    BitBtn12: TOnlineButton;
    BitBtn2: TOnlineButton;
    DBCheckBox1: TOnlineDBCheckBox;
    DBCheckBox2: TOnlineDBCheckBox;
    BitBtn1: TOnlineButton;
    BitBtn3: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    DataSet: TDataSet;
    IslemEdit: TOnlineEdit;
  end;

var
  FStokYeri: TFStokYeri;

implementation
{$R *.dfm}
uses StokDM, SabitDM, ProcedureDM, DataDM;
procedure TFStokYeri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSabit.StokYeriIBQ.Modified = true then
                DMSabit.StokYeriIBQ.Post;
        BitBtn3.Visible := false;
        Action := caFree;

end;

procedure TFStokYeri.BitBtn11Click(Sender: TObject);
begin
        psDBTreeView1.OnlineInsertNode;
        DBEdit2.SetFocus;
end;

procedure TFStokYeri.BitBtn12Click(Sender: TObject);
begin
        DMProcedure.Silme_Kontrol_Proc.ParamByName('KOD_IN').AsInteger :=
                                DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
        DMProcedure.Silme_Kontrol_Proc.ParamByName('TIP').AsString :='Stok Yeri';
        DMProcedure.Silme_Kontrol_Proc.Prepare;
        DMProcedure.Silme_Kontrol_Proc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        if DMProcedure.Silme_Kontrol_Proc.ParamByName('DURUM').AsString = '0' then
                psDBTreeView1.OnlineDeleteNode
        else ShowMessage('Kullanýmda Olan Stok Yerini Silemezsiniz...');
end;

procedure TFStokYeri.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure TFStokYeri.FormShow(Sender: TObject);
begin
        DMSabit.StokYeriIBQ.Open;
        psDBTreeView1.RebuildTree;
        DBEdit2.SetFocus;
end;

procedure TFStokYeri.FormKeyPress(Sender: TObject; var Key: Char);
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
end;

procedure TFStokYeri.BitBtn1Click(Sender: TObject);
begin
                psDBTreeView1.OnlineInsertSubNode;
                DBEdit2.SetFocus;
end;

procedure TFStokYeri.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBCheckBox)  then
    begin
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
    if (Key = VK_UP) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBCheckBox)  then
    begin
      Perform(WM_NEXTDLGCTL, 1, 0);
    end;
  end;
end;

procedure TFStokYeri.BitBtn3Click(Sender: TObject);
begin
        if DataSet <> nil then
        begin
                DataSet.Edit;
                DataSet.FindField('STOKYERIKOD').AsInteger := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
                DataSet.Post;
                DataSet := nil;
        end else if (DataSet = nil) and (IslemEdit <> nil) then begin
                IslemEdit.Tag := DMSabit.StokYeriIBQSTOKYERIKOD.AsInteger;
                IslemEdit.Text := DMSabit.StokYeriIBQSTOKYERIADI.AsString;
                IslemEdit := nil;
        end;
        close;
end;

end.
