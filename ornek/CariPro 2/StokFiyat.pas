unit StokFiyat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, Menus, 
  OnlineButton, ComCtrls, OnlineDBTreeView, dfsSplitter, scExcelExport,
  OnlineCustomControl, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFStokFiyat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    OnlineDBGrid1: TOnlineDBGrid;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    BitBtn3: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    PopupMenu1: TPopupMenu;
    AlFiyatnGster1: TMenuItem;
    N1: TMenuItem;
    KdvDahilGster1: TMenuItem;
    psDBTreeView1: TOnlineDBTree;
    dfsSplitter1: TdfsSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    N2: TMenuItem;
    mStoklarGster1: TMenuItem;
    N3: TMenuItem;
    ExceleAt1: TMenuItem;
    scExcelExport1: TscExcelExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure AlFiyatnGster1Click(Sender: TObject);
    procedure KdvDahilGster1Click(Sender: TObject);
    procedure OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure OnlineEdit2Exit(Sender: TObject);
    procedure mStoklarGster1Click(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStokFiyat: TFStokFiyat;

implementation

uses StokDM;

{$R *.dfm}

procedure TFStokFiyat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMStok.StokGrupKartIBQ.Modified=True Then
                DMStok.StokGrupKartIBQ.Post;
        Action := caFree;
end;

procedure TFStokFiyat.ButtonPreviousClick(Sender: TObject);
begin
        DMStok.StokGrupKartIBQ.Prior;
end;

procedure TFStokFiyat.ButtonNextClick(Sender: TObject);
begin
        DMStok.StokGrupKartIBQ.Next;
end;

procedure TFStokFiyat.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokFiyat.GroupBox1Exit(Sender: TObject);
begin
        if DMStok.StokGrupKartIBQ.Modified=True Then
                DMStok.StokGrupKartIBQ.Post;
end;

procedure TFStokFiyat.FormShow(Sender: TObject);
begin
        DMStok.StokGruplariIBQ.Close;
        DMStok.StokGruplariIBQ.Open;
        DMStok.FiyatListesiIBQ.Close;
        DMStok.FiyatListesiIBQ.Open;
end;

procedure TFStokFiyat.OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 Then
        begin
                Key := #0;
                if DMStok.StokGrupKartIBQ.Locate('STOKNO', OnlineEdit1.Text,[])= False  Then
                Begin
                        Application.MessageBox('Bu Numarada bir Stok Kartý yok!',
                                '    Uyarý Mesajý', mb_OK) ;
                        OnlineEdit1.SetFocus;
                end
                else OnlineDBGrid1.SetFocus;
        end;

end;

procedure TFStokFiyat.OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                if OnlineEdit2.Text <> '' then
                begin
                        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                        DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKADI) like '+#39+OnlineEdit2.UpperTurk+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                end else begin
                        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                        DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                end;
                Key := #0;
        end;
end;

procedure TFStokFiyat.BitBtn4Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\StokFiyatListesi.or');
        FEvrak.Report.PreviewModal;  }
end;

procedure TFStokFiyat.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\StokFiyatListesi.or');
        FEvrak.Report.Print;  }
end;

procedure TFStokFiyat.OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Key = VK_INSERT) or (Key = VK_DELETE) then
                Key := 0;
        if (Key = VK_DOWN) and (DMStok.FiyatListesiIBQ.RecordCount = DMStok.FiyatListesiIBQ.RecNo) then
                Key := 0;
        if Key = VK_F5 then
        begin
                DMStok.StokGrupKartIBQ.Close;
                DMStok.StokGrupKartIBQ.Open;
        end;
end;

procedure TFStokFiyat.FormDestroy(Sender: TObject);
begin
        if DMStok.StokGrupKartIBQ.Modified then
                DMStok.StokGrupKartIBQ.Post;
end;

procedure TFStokFiyat.AlFiyatnGster1Click(Sender: TObject);
begin
        if OnlineDBGrid1.Columns[3].Visible = True Then
                OnlineDBGrid1.Columns[3].Visible:=False
        else
        Begin
                OnlineDBGrid1.Columns[3].Visible:=True;
                OnlineDBGrid1.Columns[3].Width := 90;
        end;

        if AlFiyatnGster1.Checked = True Then
                AlFiyatnGster1.Checked := False
        else AlFiyatnGster1.Checked :=True;
end;

procedure TFStokFiyat.KdvDahilGster1Click(Sender: TObject);
begin
        if KdvDahilGster1.Checked = True Then
        Begin
                Panel2.Caption := 'Fiyat Listesi   [ Kdv Hariç]';
                OnlineDBGrid1.Columns[7].Visible:=False;
                OnlineDBGrid1.Columns[8].Visible:=False ;
                OnlineDBGrid1.Columns[9].Visible:=False  ;
                OnlineDBGrid1.Columns[4].Visible:=True;
                OnlineDBGrid1.Columns[4].Width := 90;
                OnlineDBGrid1.Columns[5].Visible:=True;
                OnlineDBGrid1.Columns[5].Width := 90;
                OnlineDBGrid1.Columns[6].Visible:=True;
                OnlineDBGrid1.Columns[6].Width := 90;
                KdvDahilGster1.Checked := False;
        end
        else
        Begin
                Panel2.Caption := 'Fiyat Listesi   [ Kdv Dahil]';
                OnlineDBGrid1.Columns[4].Visible:=False;
                OnlineDBGrid1.Columns[5].Visible:=False ;
                OnlineDBGrid1.Columns[6].Visible:=False  ;
                OnlineDBGrid1.Columns[7].Visible:=True;
                OnlineDBGrid1.Columns[7].Width := 90;
                OnlineDBGrid1.Columns[8].Visible:=True;
                OnlineDBGrid1.Columns[8].Width := 90;
                OnlineDBGrid1.Columns[9].Visible:=True;
                OnlineDBGrid1.Columns[9].Width := 90;
                KdvDahilGster1.Checked :=True;
        end;
end;

procedure TFStokFiyat.OnlineDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
                if DMStok.StokGrupKartIBQ.Modified then
                        DMStok.StokGrupKartIBQ.Post;
end;

procedure TFStokFiyat.FormActivate(Sender: TObject);
begin
    {    DMStok.StokGruplariIBQ.Close;
        DMStok.StokGruplariIBQ.Open;
        DMStok.StokGrupKartIBQ.Close;
        DMStok.StokGrupKartIBQ.Open;
       }

end;

procedure TFStokFiyat.OnlineEdit2Exit(Sender: TObject);
begin
        if OnlineEdit2.Text = '' then
        begin
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
        end;
end;

procedure TFStokFiyat.mStoklarGster1Click(Sender: TObject);
begin
        if mStoklarGster1.Checked = false then
        begin
                mStoklarGster1.Checked := true;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where  (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
        end else begin
                mStoklarGster1.Checked := false;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
        end;
end;

procedure TFStokFiyat.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

end.
