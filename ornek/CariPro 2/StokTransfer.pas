unit StokTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, DBOnlineCombo, OnlineDBDateEdit,
  OnlineButton, Mask, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, OnlineEdit, DB, IBCustomDataSet, IBStoredProc,
  OnlineCustomControl, DBOnlineLookupCombo;

type
  TFStokTransfer = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label18: TLabel;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit16: TDBOnlineEdit;
    OnlineButton1: TOnlineButton;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    OnlineDBDateEdit1: TOnlineDBDateEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel5: TPanel;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBOnlineEdit6: TDBOnlineEdit;
    DBOnlineEdit15: TDBOnlineEdit;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    Panel4: TPanel;
    Panel9: TPanel;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    PopupMenu1: TPopupMenu;
    StokEkle1: TMenuItem;
    N3: TMenuItem;
    SatrEkle1: TMenuItem;
    SatrSil1: TMenuItem;
    N2: TMenuItem;
    skontolarGster1: TMenuItem;
    N4: TMenuItem;
    lemSrasnaGreSrala1: TMenuItem;
    Label1: TLabel;
    OnlineButton2: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    OnlineButton3: TOnlineButton;
    TransferProc: TIBStoredProc;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    TransferProcISLEMKOD3_IN: TIntegerField;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnlineButton3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure StokEkle1Click(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStokTransfer: TFStokTransfer;

implementation

uses StokislemDM, StokYeri, FiyatSorgu, SabitDM, StokDM,DataDM;

{$R *.dfm}

procedure DataAc;
begin
        if DMStokislem.StokTransferIBQ.Active =false then
        begin
                DMStokislem.StokTransferIBQ.Open;
                DMStokislem.StokTransferBodroIBQ.Open;
        end;
end;

procedure TFStokTransfer.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokTransfer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFStokTransfer.OnlineButton3Click(Sender: TObject);
begin
        TransferProc.ParamByName('ISLEMKOD_IN').AsInteger := DMStokislem.StokTransferIBQISLEMKOD.AsInteger;
        TransferProc.ParamByName('ISLEMTUR_IN').AsString := 'Stok Transfer Giriþi';
        TransferProc.ParamByName('KULLANKOD_IN').AsInteger := DMStokislem.StokTransferIBQKULLANKOD.AsInteger;
        TransferProc.ParamByName('STOKYERIKOD_IN').AsInteger := OnlineEdit1.Tag;
        TransferProc.Prepare;
        TransferProc.ExecProc;
end;

procedure TFStokTransfer.OnlineButton1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        FStokYeri.DataSet := DMStokislem.StokTransferIBQ;
        FStokYeri.BitBtn3.Visible := true;
        FStokYeri.ShowModal;
end;

procedure TFStokTransfer.OnlineButton2Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        FStokYeri.IslemEdit := OnlineEdit1;
        FStokYeri.BitBtn3.Visible := true;
        FStokYeri.ShowModal;
end;

procedure TFStokTransfer.StokEkle1Click(Sender: TObject);
begin
                DMStok.StokGrupKartIBQ.Close;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
                if Application.FindComponent('FFiyatSorgu') = nil then
                begin
                        Application.CreateForm(TFFiyatSorgu,FFiyatSorgu);
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Çýkýþ';
                        FFiyatSorgu.DataSet := DMStokislem.StokTransferBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end else begin
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Çýkýþ';
                        FFiyatSorgu.DataSet := DMStokislem.StokTransferBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end;
end;

procedure TFStokTransfer.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMStokislem.StokTransferIBQ.First;
end;

procedure TFStokTransfer.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMStokislem.StokTransferIBQ.Prior;
end;

procedure TFStokTransfer.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMStokislem.StokTransferIBQ.Next;
end;

procedure TFStokTransfer.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMStokislem.StokTransferIBQ.Last;
end;

procedure TFStokTransfer.BitBtn1Click(Sender: TObject);
begin
        DataAc;
        DMStokislem.StokTransferIBQ.Append;
        DMStokislem.StokTransferIBQ.Post;

end;

procedure TFStokTransfer.BitBtn2Click(Sender: TObject);
begin
        if DMStokislem.StokTransferIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mryes then
                       DMStokislem.StokTransferIBQ.Delete;
end;

procedure TFStokTransfer.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMStokislem.StokTransferIBQ.Modified then
                DMStokislem.StokTransferIBQ.Post;
end;

procedure TFStokTransfer.DBOnlineLookupCombo1Exit(Sender: TObject);
begin
        if DMStokislem.StokTransferIBQ.Modified then
                DMStokislem.StokTransferIBQ.Post;
end;

end.
