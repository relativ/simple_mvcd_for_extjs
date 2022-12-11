unit StokKartList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, Menus, 
  OnlineButton, scExcelExport, OnlineCustomControl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid;

type
  TFStokKartList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    BFirstPage: TOnlineButton;
    BLastPage: TOnlineButton;
    BitBtn3: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    PopupMenu1: TPopupMenu;
    lemSrasnaGreSrala1: TMenuItem;
    N1: TMenuItem;
    ExceleAt1: TMenuItem;
    scExcelExport1: TscExcelExport;
    StokKartnA1: TMenuItem;
    OnlineEdit3: TOnlineEdit;
    OnlineButton1: TOnlineButton;
    OnlineDBGrid1: TOnlineDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure lemSrasnaGreSrala1Click(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StokKartnA1Click(Sender: TObject);
    procedure OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStokKartList: TFStokKartList;

implementation

uses StokDM, StokKart;

{$R *.dfm}

procedure TFStokKartList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFStokKartList.BFirstPageClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.First;
end;

procedure TFStokKartList.ButtonPreviousClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Prior;
end;

procedure TFStokKartList.ButtonNextClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Next;
end;

procedure TFStokKartList.BLastPageClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Last;
end;

procedure TFStokKartList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokKartList.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      if (TOnlineEdit(ActiveControl) <> OnlineEdit1) or (TOnlineEdit(ActiveControl) <> OnlineEdit2) then
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFStokKartList.GroupBox1Exit(Sender: TObject);
begin
        if (DMStok.StokKartiIBQ.Modified=True) and (DMStok.StokKartiIBQ.RecordCount>0) Then
        Begin
                if DMStok.StokKartiIBQSTOKADI.AsString='' Then
                        DMStok.StokKartiIBQ.Delete;
                DMStok.StokKartiIBQ.Post;
        end;

end;

procedure TFStokKartList.OnlineEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 Then
        if DMStok.StokKartiIBQ.Locate('STOKNO', OnlineEdit1.Text,[loCaseInsensitive, loPartialKey])= False  Then
                Application.MessageBox('Bu Numarada bir Stok Kartý yok!',
                        '    Uyarý Mesajý', mb_OK);

end;

procedure TFStokKartList.OnlineEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit2.Text) <> 0 then
                begin

                        DMStok.StokKartiIBQ.Close;
                        DMStok.StokKartiIBQ.SQL.Clear;
                        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                        DMStok.StokKartiIBQ.SQL.Add('where Upper(STOKADI) like '+#39+OnlineEdit2.UpperTurk+#39);
                        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                end else begin
                        DMStok.StokKartiIBQ.Close;
                        DMStok.StokKartiIBQ.SQL.Clear;
                        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                        DMStok.StokKartiIBQ.SQL.Add('where Upper(STOKADI) like '+#39+OnlineEdit2.UpperTurk+'%'+#39);
                        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                end;
                DMStok.StokKartiIBQ.Open;
                if DMStok.StokKartiIBQ.RecordCount=0 Then
                Begin
                        Application.MessageBox('Bu Ýsimde bir Stok Kartý yok!',
                        '    Uyarý Mesajý', mb_OK);
                        DMStok.StokKartiIBQ.SQL.Clear;
                        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                        DMStok.StokKartiIBQ.Open;
                        OnlineEdit2.SetFocus;
                        OnlineEdit2.SelectAll;
                end
                else OnlineDBGrid1.SetFocus;
        end;

end;

procedure TFStokKartList.BitBtn4Click(Sender: TObject);
begin
{        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\StokKartListesi.or');
        FEvrak.Report.PreviewModal; }
end;

procedure TFStokKartList.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\StokKartListesi.or');
        FEvrak.Report.Print;     }
end;

procedure TFStokKartList.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMStok.StokKartiIBQ.SQL.Text := 'select * from STOKKART';
        DMStok.StokKartiIBQ.SQL.Add('Order by STOKKOD');
        DMStok.StokKartiIBQ.Open;

end;

procedure TFStokKartList.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFStokKartList.FormShow(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Open;
end;

procedure TFStokKartList.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = VK_DELETE) then
                Key := 0;
        if Key = VK_F5 then
        begin
                DMStok.StokKartiIBQ.Close;
                DMStok.StokKartiIBQ.Open;
        end;
end;

procedure TFStokKartList.StokKartnA1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokKart') = nil then
                Application.CreateForm(TFStokKart,FStokKart);
        FStokKart.Show;
end;

procedure TFStokKartList.OnlineEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 Then
        if DMStok.StokKartiIBQ.Locate('BARKOD', OnlineEdit3.Text,[loCaseInsensitive, loPartialKey])= False  Then
                Application.MessageBox('Bu Numarada bir Stok Kartý yok!',
                        '    Uyarý Mesajý', mb_OK);
end;

procedure TFStokKartList.OnlineButton1Click(Sender: TObject);
begin
        OnlineEdit1.Clear;
        OnlineEdit2.Clear;
        OnlineEdit3.Clear;
        DMStok.StokKartiIBQ.SQL.Clear;
        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
        DMStok.StokKartiIBQ.Open;
end;

procedure TFStokKartList.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
var
        s: string;
begin
        s := Key;
                if s = 'ü' then
                        s := 'Ü'
                else if s = 'ð' then
                        s := 'Ð'
                else if s = 'þ' then
                        s := 'Þ'
                else if s = 'ý' then
                        s := 'I'
                else if s = 'ö' then
                        s := 'Ö'
                else if s = 'ç' then
                        s := 'Ç'
                else if s = 'i' then
                        s := 'Ý';
        if (Key in ['A'..'Z']) or (Key in ['a'..'z']) or (Key in ['0'..'9']) or (s = 'Ü') or (s = 'Ð') or (s = 'Þ')
                         or (s = 'I') or (s = 'Ö') or (s = 'Ç') or (s = 'Ý')  then
        begin
                DMStok.StokKartiIBQ.SQL.Clear;
                DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                DMStok.StokKartiIBQ.SQL.Add('where UPPER(STOKADI) like '+#39+UpperCase(s)+'%'+#39);
                DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                DMStok.StokKartiIBQ.Open;
        end;
end;

end.
