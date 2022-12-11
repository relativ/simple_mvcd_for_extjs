unit CariKartList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, OnlineButton, Menus,
  scExcelExport, OnlineCustomControl, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid;

type
  TFCariKartList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    OnlineEdit3: TOnlineEdit;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn3: TOnlineButton;
    scExcelExport1: TscExcelExport;
    PopupMenu1: TPopupMenu;
    CariHesabA1: TMenuItem;
    OnlineDBGrid1: TOnlineDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CariHesabA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCariKartList: TFCariKartList;

implementation

uses DataDM,  CariKart, CariHesap, CariDM;

{$R *.dfm}

procedure TFCariKartList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFCariKartList.BFirstPageClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.First;
end;

procedure TFCariKartList.ButtonPreviousClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Prior;
end;

procedure TFCariKartList.ButtonNextClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Next;
end;

procedure TFCariKartList.BLastPageClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Last;
end;

procedure TFCariKartList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFCariKartList.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      if (TOnlineEdit(ActiveControl) <> OnlineEdit1) or (TOnlineEdit(ActiveControl) <> OnlineEdit2) or
        (TOnlineEdit(ActiveControl) <> OnlineEdit3) then
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFCariKartList.GroupBox1Exit(Sender: TObject);
begin
        if (DMCari.CariKartIBQ.Modified=True) and (DMCari.CariKartIBQ.RecordCount>0) Then
        Begin
                if DMCari.CariKartIBQCARIUNVAN1.AsString='' Then
                        DMCari.CariKartIBQ.Delete;
                DMCari.CariKartIBQ.Post;
        end;
end;

procedure TFCariKartList.OnlineEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 Then
        if DMCari.CariKartIBQ.Locate('CARINO', OnlineEdit3.Text,[])= False  Then
                Application.MessageBox('Bu Numarada bir Cari Kart yok!',
                        '    Uyarý Mesajý', mb_OK);

end;

procedure TFCariKartList.OnlineEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit1.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN1) like '+#39+OnlineEdit1.UpperTurk+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1');
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN1) like '+#39+OnlineEdit1.UpperTurk+'%'+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1');
                end;
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQ.RecordCount=0 Then
                Begin
                      Application.MessageBox('Bu isimde bir Cari Kart yok!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit1.SetFocus;
                        OnlineEdit1.SelectAll;
                end
                else OnlineEdit1.SetFocus;;
        end;
end;

procedure TFCariKartList.OnlineEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit2.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN2) like '+#39+OnlineEdit2.UpperTurk+#39);
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN2) like '+#39+OnlineEdit2.UpperTurk+'%'+#39);
                end;
                if OnlineEdit1.Text <> '' then
                begin
                        if Pos('%',OnlineEdit1.Text) <> 0 then
                        begin
                                DMCari.CariKartIBQ.SQL.Add('and Upper(CARIUNVAN1) like '+#39+OnlineEdit1.UpperTurk+#39);
                        end else begin
                                DMCari.CariKartIBQ.SQL.Add('and Upper(CARIUNVAN1) like '+#39+OnlineEdit1.UpperTurk+'%'+#39);
                        end;
                end;
                DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1,CARIUNVAN2');
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQ.RecordCount=0 Then
                Begin
                      Application.MessageBox('Aradýðýnýz kayýt bulunamadý!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit1.SetFocus;
                        OnlineEdit1.SelectAll;
                end;
        end;
end;

procedure TFCariKartList.BitBtn4Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariKartListesi.or');
        FEvrak.Report.PreviewModal; }
end;

procedure TFCariKartList.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariKartListesi.or');
        FEvrak.Report.Print;   }
end;

procedure TFCariKartList.FormShow(Sender: TObject);
begin
        DMCari.CariKartIBQ.Close;
        DMCari.CariKartIBQ.Open;
end;

procedure TFCariKartList.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = VK_DELETE) then
                Key := 0;
        if Key = VK_F5 then
        begin
                DMCari.CariKartIBQ.Close;
                DMCari.CariKartIBQ.Open;
        end;
end;

procedure TFCariKartList.CariHesabA1Click(Sender: TObject);
begin
        if Application.FindComponent('FCariHesap') = nil then
                Application.CreateForm(TFCariHesap,FCariHesap);
        FCariHesap.Show;
        DMCari.CariKartLookupIBQ.Locate('CARIKOD',DMCari.CariKartIBQCARIKOD.AsInteger,[]);
end;

end.
