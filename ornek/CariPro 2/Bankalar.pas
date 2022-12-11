unit Bankalar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DBOnlineCombo, Buttons, Grids, DBGrids, Mask,
  DBOnlineEdit, ComCtrls, ExtCtrls, Menus, DBOnlineLookupCombo,
  OnlineDBCheckBox, OnlineDBGrid, DB, IBCustomDataSet, IBQuery, DBTables,
  OnlineCombo, OnlineButton, OnlineEdit, OnlineCustomControl, IBStoredProc,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxGridTableView, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid;

type
  TFBankalar = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    GroupBox12: TGroupBox;
    BitBtn25: TOnlineButton;
    BitBtn26: TOnlineButton;
    BitBtn27: TOnlineButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    PopupMenu1: TPopupMenu;
    HesaplarOlutur1: TMenuItem;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    ProcTarihBanka: TIBStoredProc;
    BakiyeHesap1: TMenuItem;
    ariheGre1: TMenuItem;
    lemSrasnaGre1: TMenuItem;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    Panel4: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn;
    cxGrid1DBTableView1BANKAISLEMNO: TcxGridDBColumn;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1SAAT: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid1DBTableView1TEDIYE: TcxGridDBColumn;
    cxGrid1DBTableView1TAHSILAT: TcxGridDBColumn;
    cxGrid1DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid1DBTableView1DURUM: TcxGridDBColumn;
    cxGrid1DBTableView1CARINO: TcxGridDBColumn;
    cxGrid1DBTableView1MAKBUZNO: TcxGridDBColumn;
    cxGrid1DBTableView1C_PARABIRIMI: TcxGridDBColumn;
    cxGrid2DBTableView1BANKAADI: TcxGridDBColumn;
    cxGrid2DBTableView1HESAPADI: TcxGridDBColumn;
    cxGrid2DBTableView1C_PARABIRIMI: TcxGridDBColumn;
    cxGrid2DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid2DBTableView1DURUM: TcxGridDBColumn;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    Label18: TLabel;
    DBEdit3: TDBOnlineEdit;
    DBEdit4: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    DBEdit6: TDBOnlineEdit;
    DBEdit7: TDBOnlineEdit;
    DBEdit8: TDBOnlineEdit;
    DBEdit11: TDBOnlineEdit;
    DBEdit12: TDBOnlineEdit;
    DBEdit13: TDBOnlineEdit;
    DBEdit14: TDBOnlineEdit;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    DBOnlineLookupCombo3: TDBOnlineLookupCombo;
    DBEdit9: TDBOnlineEdit;
    DBEdit10: TDBOnlineEdit;
    DBOnlineCombo1: TDBOnlineCombo;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineLookupCombo5: TDBOnlineLookupCombo;
    ProcIslemBanka: TIBStoredProc;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    BankaGenelTopProc: TIBStoredProc;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    DBEdit2: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HesaplarOlutur1Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure ariheGre1Click(Sender: TObject);
    procedure lemSrasnaGre1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBankalar: TFBankalar;

implementation

Uses BankaDM, SabitDM,DataDM;

{$R *.dfm}

procedure TFBankalar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #40) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBCheckBox)  then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFBankalar.FormShow(Sender: TObject);
begin
        DMBanka.BankaIBQ.Close;
        DMBanka.BankaIBQ.Open;
        DMBanka.BankaislemIBQ.Close;
        DMBanka.BankaislemIBQ.Open;
        DMSabit.IlceIBQ.Open;
        DMSabit.ilIBQ.Open;
        PageControl1.ActivePage := TabSheet1;
        DBEdit3.SetFocus;
end;

procedure TFBankalar.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFBankalar.BitBtn26Click(Sender: TObject);
begin
        PageControl1.ActivePage:=TabSheet1;
        DMBanka.BankaIBQ.Append;
        DMBanka.BankaIBQ.Post;
        DBEdit3.SetFocus;
end;

procedure TFBankalar.BitBtn27Click(Sender: TObject);
begin
        if DMBanka.BankaIBQ.RecordCount > 0 then
        if DMBanka.BankaislemIBQ.RecordCount = 0 then
        begin
                if MessageBox(Handle,'Silmek istediðinizden emin misiniz ?',PChar('Uyarý'),MB_YesNo) = mrYes then
                begin
                        DMBanka.BankaIBQ.Delete;
                end;
        end else ShowMessage('Ýþlem görmüþ Banka silinemez...');
end;

procedure TFBankalar.BFirstPageClick(Sender: TObject);
begin
        DMBanka.BankaIBQ.First;
end;

procedure TFBankalar.ButtonPreviousClick(Sender: TObject);
begin
        DMBanka.BankaIBQ.Prior;
end;

procedure TFBankalar.ButtonNextClick(Sender: TObject);
begin
        DMBanka.BankaIBQ.Next;
end;

procedure TFBankalar.BLastPageClick(Sender: TObject);
begin
        DMBanka.BankaIBQ.Last;
end;

procedure TFBankalar.GroupBox3Exit(Sender: TObject);
begin
        if DMBanka.BankaIBQ.Modified = true then
                DMBanka.BankaIBQ.ApplyUpdates;
end;

procedure TFBankalar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMBanka.BankaislemIBQ.Modified = true then
                DMBanka.BankaislemIBQ.Post;
       // FinansDataM.GenelDurumIBQuery.Close;
        Action := caFree;
end;

procedure TFBankalar.HesaplarOlutur1Click(Sender: TObject);
//var
      //  HesapIsmi: string;
begin
   {     SabitDataModul.ParaBirimIBQuery.First;
        HesapIsmi := DMBanka.BankaIBQBANKAADI.AsString +' '+
                        SabitDataModul.ParaBirimIBQueryKISAADI.AsString+ ' Cari Hesap';
        if FinansDataM.BankaHesapIBQuery.Locate('HESAPADI',HesapIsmi,[]) = false then
        begin
                FinansDataM.BankaHesapIBQuery.Insert;
                FinansDataM.BankaHesapIBQueryHESAPADI.AsString :=
                        DMBanka.BankaIBQBANKAADI.AsString +' '+
                                SabitDataModul.ParaBirimIBQueryKISAADI.AsString+ ' Cari Hesap';
                FinansDataM.BankaHesapIBQueryPARABIRKOD.AsInteger := SabitDataModul.ParaBirimIBQueryPARABIRKOD.AsInteger;
                FinansDataM.BankaHesapIBQueryHESAPNO.AsString := '0000';
                FinansDataM.BankaHesapIBQueryHESAPTURU.AsString := 'Cari Hesap';
                FinansDataM.BankaHesapIBQuery.Post;
        end else ShowMessage(HesapIsmi+' Adýnda Bir Hesap Zaten Var!');

        HesapIsmi := DMBanka.BankaIBQBANKAADI.AsString +' '+
                        SabitDataModul.ParaBirimIBQueryKISAADI.AsString+ ' Kredi Kartý Hesabý';
        if FinansDataM.BankaHesapIBQuery.Locate('HESAPADI',HesapIsmi,[]) = false then
        begin
                FinansDataM.BankaHesapIBQuery.Insert;
                FinansDataM.BankaHesapIBQueryHESAPADI.AsString :=
                        DMBanka.BankaIBQBANKAADI.AsString +' '+
                                SabitDataModul.ParaBirimIBQueryKISAADI.AsString+ ' Kredi Kartý Hesabý';
                FinansDataM.BankaHesapIBQueryPARABIRKOD.AsInteger := SabitDataModul.ParaBirimIBQueryPARABIRKOD.AsInteger;
                FinansDataM.BankaHesapIBQueryHESAPNO.AsString := '0000';
                FinansDataM.BankaHesapIBQueryHESAPTURU.AsString := 'Kredi Kartý Hesabý';
                FinansDataM.BankaHesapIBQuery.Post;
        end else ShowMessage(HesapIsmi+' Adýnda Bir Hesap Zaten Var!');

        HesapIsmi := DMBanka.BankaIBQBANKAADI.AsString +' '+
                        SabitDataModul.ParaBirimIBQueryKISAADI.AsString+ ' Çek Hesabý';
        if FinansDataM.BankaHesapIBQuery.Locate('HESAPADI',HesapIsmi,[]) = false then
        begin
                FinansDataM.BankaHesapIBQuery.Insert;
                FinansDataM.BankaHesapIBQueryHESAPADI.AsString :=
                        DMBanka.BankaIBQBANKAADI.AsString +' '+
                                SabitDataModul.ParaBirimIBQueryKISAADI.AsString+ ' Çek Hesabý';
                FinansDataM.BankaHesapIBQueryPARABIRKOD.AsInteger := SabitDataModul.ParaBirimIBQueryPARABIRKOD.AsInteger;
                FinansDataM.BankaHesapIBQueryHESAPNO.AsString := '0000';
                FinansDataM.BankaHesapIBQueryHESAPTURU.AsString := 'Çek Hesabý';
                FinansDataM.BankaHesapIBQuery.Post;
        end else ShowMessage(HesapIsmi+' Adýnda Bir Hesap Zaten Var!');
       }
end;

procedure TFBankalar.TabSheet4Show(Sender: TObject);
begin
        BitBtn26.Visible := False;
        BitBtn27.Visible := False;
end;

procedure TFBankalar.TabSheet1Show(Sender: TObject);
begin
        BitBtn26.Visible := True;
        BitBtn27.Visible := True;
end;

procedure TFBankalar.TabSheet2Show(Sender: TObject);
begin
        BitBtn26.Visible := False;
        BitBtn27.Visible := False;
end;

procedure TFBankalar.ariheGre1Click(Sender: TObject);
var
        yer: pointer;
        i: integer;
begin
        yer := DMBanka.BankaislemIBQ.GetBookmark;
        DMBanka.BankaislemIBQ.DisableControls;
        ProcTarihBanka.ParamByName('BANKAKOD_IN').AsString := DMBanka.BankaIBQBANKAKOD.AsString;
        ProcTarihBanka.Prepare;
        ProcTarihBanka.ExecProc;
        for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
                cxGrid1DBTableView1.Columns[i].SortOrder := soNone;
        cxGrid1DBTableView1.GetColumnByFieldName('TARIH').SortOrder := soAscending;
        cxGrid1DBTableView1.GetColumnByFieldName('TARIH').SortIndex := 0;
        cxGrid1DBTableView1.GetColumnByFieldName('ISLEMKOD').SortOrder := soAscending;
        cxGrid1DBTableView1.GetColumnByFieldName('ISLEMKOD').SortIndex := 1;

        DMBanka.BankaislemIBQ.SQL.Text := 'select * from BANKAISLEM';
        DMBanka.BankaislemIBQ.SQL.Add('Where BANKAKOD=:BANKAKOD AND SISTEM<>2');
        DMBanka.BankaislemIBQ.SQL.Add('Order by TARIH,ISLEMKOD');
        DMBanka.BankaislemIBQ.Open;
        DMBanka.BankaislemIBQ.GotoBookmark(yer);
        
        DMBanka.BankaislemIBQ.EnableControls;

end;

procedure TFBankalar.lemSrasnaGre1Click(Sender: TObject);
var
        yer: pointer;
        i: integer;
begin
        yer := DMBanka.BankaislemIBQ.GetBookmark;
        DMBanka.BankaislemIBQ.DisableControls;
        ProcIslemBanka.ParamByName('BANKAKOD_IN').AsString := DMBanka.BankaIBQBANKAKOD.AsString;
        ProcIslemBanka.Prepare;
        ProcIslemBanka.ExecProc;

        for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
                cxGrid1DBTableView1.Columns[i].SortOrder := soNone;
        cxGrid1DBTableView1.GetColumnByFieldName('ISLEMKOD').SortOrder := soAscending;
        cxGrid1DBTableView1.GetColumnByFieldName('ISLEMKOD').SortIndex := 0;

        DMBanka.BankaislemIBQ.SQL.Text := 'select * from BANKAISLEM';
        DMBanka.BankaislemIBQ.SQL.Add('Where BANKAKOD=:BANKAKOD AND SISTEM<>2');
        DMBanka.BankaislemIBQ.SQL.Add('Order by ISLEMKOD');
        DMBanka.BankaislemIBQ.Open;
        DMBanka.BankaislemIBQ.GotoBookmark(yer);
        DMBanka.BankaislemIBQ.EnableControls;
end;

procedure TFBankalar.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
        yer: pointer;
begin
        if Key = VK_F5 then
        begin
                yer := DMBanka.BankaislemIBQ.GetBookmark;
                DMBanka.BankaislemIBQ.DisableControls;
                DMBanka.BankaislemIBQ.Close;
                DMBanka.BankaislemIBQ.Open;
                DMBanka.BankaislemIBQ.EnableControls;
                DMBanka.BankaislemIBQ.GotoBookmark(yer);

        end;
end;

procedure TFBankalar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMBanka.BankaIBQ.Close;
                DMBanka.BankaIBQ.Open;
                DMBanka.BankaislemIBQ.Close;
                DMBanka.BankaislemIBQ.Open;
        end;
end;

procedure TFBankalar.DBOnlineLookupCombo1Click(Sender: TObject);
var
        tutar: real;
        durum: string;

begin
        BankaGenelTopProc.ParamByName('ISLEMTURU_IN').AsString := 'BANKA';
        BankaGenelTopProc.ParamByName('PARABIRKOD_IN').AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        BankaGenelTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        BankaGenelTopProc.Prepare;
        BankaGenelTopProc.ExecProc;
        tutar := BankaGenelTopProc.ParamByName('BAKIYE_OUT').AsFloat;
        if tutar < 0 then
          begin
             durum := 'Eksi';
             tutar := tutar * -1;
        end else durum := 'Artý';

        OnlineEdit1.Text := FormatFloat('###,###.0 '+DMSabit.ParaBirimiIBQKISAADI.AsString,tutar);
        OnlineEdit2.Text := durum;
end;

procedure TFBankalar.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
        yer: pointer;
begin
        if Key = VK_F5 then
        begin
                yer := DMBanka.BankaIBQ.GetBookmark;
                DMBanka.BankaIBQ.DisableControls;
                DMBanka.BankaIBQ.Close;
                DMBanka.BankaIBQ.Open;
                DMBanka.BankaIBQ.EnableControls;
                DMBanka.BankaIBQ.GotoBookmark(yer);
        end;
end;

end.
