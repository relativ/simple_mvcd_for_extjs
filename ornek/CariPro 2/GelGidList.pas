unit GelGidList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, CheckLst, OnlineDBCheckListBox, Menus, 
  OnlineButton, scExcelExport, OnlineCustomControl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxDBLookupComboBox, cxGridTableView, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid, OnlineDBTreeView, dfsSplitter;

type
  TFGelGidList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    Panel10: TPanel;
    OnlineCombo1: TOnlineCombo;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBOnlineEdit4: TDBOnlineEdit;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineDBCheckListBox1: TOnlineDBCheckListBox;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    mnSe1: TMenuItem;
    mnBrak1: TMenuItem;
    BitBtn1: TOnlineButton;
    scExcelExport1: TscExcelExport;
    OnlineButton1: TOnlineButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CAISLEMNO: TcxGridDBColumn;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn;
    cxGrid1DBTableView1GelGider: TcxGridDBColumn;
    cxGrid1DBTableView1D_TEDIYE: TcxGridDBColumn;
    cxGrid1DBTableView1D_TAHSILAT: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    dfsSplitter1: TdfsSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineDBCheckListBox1ClickCheck(Sender: TObject);
    procedure mnSe1Click(Sender: TObject);
    procedure mnBrak1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineDBTree1CheckClick(Sender: TObject; TreeNode: TTreeNode;
      value: Boolean);
  private
        procedure IslemSuzme;
  public
    { Public declarations }
  end;

var
  FGelGidList: TFGelGidList;

implementation

uses DataModul, Main, RaporDaMo, Evraklar,FinansDM;

{$R *.dfm}

procedure TFGelGidList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFGelGidList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFGelGidList.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFGelGidList.FormShow(Sender: TObject);
var
        gun,ay,yil: word;
begin
        DecodeDate(BugununTarihi,yil,ay,gun);
        DateTimePicker1.Date := EncodeDate(yil,ay,1);
        DateTimePicker2.Date := EncodeDate(yil,ay+1,1) - 1;
end;

procedure TFGelGidList.IslemSuzme;
var
        i: integer;
        GelGitMerkez: String;
begin
        for i := 0 to OnlineDBCheckListBox1.Items.Count - 1 do
        begin
                if OnlineDBCheckListBox1.Checked[i] = true then
                begin
                        if GelGitMerkez <> '' then
                                GelGitMerkez :=GelGitMerkez + ' OR GELGITKOD='+OnlineDBCheckListBox1.ID_List[i]
                        else GelGitMerkez := ' AND (GELGITKOD='+OnlineDBCheckListBox1.ID_List[i];
                end;
        end;

        if (GelGitMerkez <> '') and (GelGitMerkez <> ' AND GELGITKOD=') then
                GelGitMerkez := GelGitMerkez +')';
        if OnlineCombo1.Text<>'Hepsi' then
        begin
                if OnlineCombo1.Text<>'' Then
                Begin
                        if OnlineCombo1.Text = 'Gelir' then
                        begin
                                        RaporDM.GelirGiderListIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('select * from CARIISLEM');
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('Where (GELIR IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39);
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('ORDER BY TARIH');
                                        RaporDM.GelirGiderListIBQuery.Open;

                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('Where (GELIR IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'TL'+#39);
                                        RaporDM.GelirGiderListToplamTLIBQuery.Open;

                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('Where (GELIR IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'EU'+#39);
                                        RaporDM.GelirGiderListToplamEUIBQuery.Open;

                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('Where (GELIR IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'USD'+#39);
                                        RaporDM.GelirGiderListToplamUSDIBQuery.Open;

                        end else if OnlineCombo1.Text = 'Gider' then
                        begin
                                        RaporDM.GelirGiderListIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('select * from CARIISLEM');
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39);
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('ORDER BY TARIH');
                                        RaporDM.GelirGiderListIBQuery.Open;

                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'TL'+#39);

                                        RaporDM.GelirGiderListToplamTLIBQuery.Open;

                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'EU'+#39);

                                        RaporDM.GelirGiderListToplamEUIBQuery.Open;

                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'USD'+#39);

                                        RaporDM.GelirGiderListToplamUSDIBQuery.Open;
                        end else if OnlineCombo1.Text = '' then
                        begin
                                if (GelGitMerkez <> '') and (GelGitMerkez <> ' AND GELGITKOD=') then
                                begin
                                        RaporDM.GelirGiderListIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('select * from CARIISLEM');
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+GelGitMerkez);
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('ORDER BY TARIH');
                                        RaporDM.GelirGiderListIBQuery.Open;

                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'TL'+#39+GelGitMerkez);

                                        RaporDM.GelirGiderListToplamTLIBQuery.Open;

                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'EU'+#39+GelGitMerkez);

                                        RaporDM.GelirGiderListToplamEUIBQuery.Open;

                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI='+#39+'USD'+#39+GelGitMerkez);

                                        RaporDM.GelirGiderListToplamUSDIBQuery.Open;
                                end else begin
                                        RaporDM.GelirGiderListIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('select * from CARIISLEM');
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and GELGITKOD IS NOT NULL');
                                        RaporDM.GelirGiderListIBQuery.SQL.Add('ORDER BY TARIH');
                                        RaporDM.GelirGiderListIBQuery.Open;

                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and GELGITKOD IS NOT NULL and PARABIRIMI='+#39+'TL'+#39);

                                        RaporDM.GelirGiderListToplamTLIBQuery.Open;

                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and GELGITKOD IS NOT NULL and PARABIRIMI='+#39+'USD'+#39);

                                        RaporDM.GelirGiderListToplamUSDIBQuery.Open;

                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Clear;
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('Where (GIDER IS NOT NULL) AND TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and GELGITKOD IS NOT NULL and PARABIRIMI='+#39+'EU'+#39);

                                        RaporDM.GelirGiderListToplamEUIBQuery.Open;
                                end;
                        end;
                end;
        end else
        Begin
                if (GelGitMerkez <> '') and (GelGitMerkez <> ' AND GELGITKOD=') then
                begin
                        RaporDM.GelirGiderListIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListIBQuery.SQL.Text:= 'select * from CARIISLEM';
                        RaporDM.GelirGiderListIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+GelGitMerkez);
                        RaporDM.GelirGiderListIBQuery.SQL.Add('ORDER BY TARIH');
                        RaporDM.GelirGiderListIBQuery.Open;

                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI ='+#39+'TL'+#39+GelGitMerkez);

                        RaporDM.GelirGiderListToplamTLIBQuery.Open;

                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI ='+#39+'EU'+#39+GelGitMerkez);

                        RaporDM.GelirGiderListToplamEUIBQuery.Open;

                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI ='+#39+'USD'+#39+GelGitMerkez);

                        RaporDM.GelirGiderListToplamUSDIBQuery.Open;
                end else begin
                        RaporDM.GelirGiderListIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListIBQuery.SQL.Text:= 'select * from CARIISLEM';
                        RaporDM.GelirGiderListIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and GELGITKOD IS NOT NULL');
                        RaporDM.GelirGiderListIBQuery.SQL.Add('ORDER BY TARIH');
                        RaporDM.GelirGiderListIBQuery.Open;

                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                        RaporDM.GelirGiderListToplamTLIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI ='+#39+'TL'+#39+' and GELGITKOD IS NOT NULL');

                        RaporDM.GelirGiderListToplamTLIBQuery.Open;

                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                        RaporDM.GelirGiderListToplamEUIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI ='+#39+'EU'+#39+' and GELGITKOD IS NOT NULL');

                        RaporDM.GelirGiderListToplamEUIBQuery.Open;

                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Clear;
                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('select SUM(GELIR) SUMTAH,SUM(GIDER) SUMTED from CARIISLEM');
                        RaporDM.GelirGiderListToplamUSDIBQuery.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+' and PARABIRIMI ='+#39+'USD'+#39+' and GELGITKOD IS NOT NULL');

                        RaporDM.GelirGiderListToplamUSDIBQuery.Open;


                end;
        end;

end;

procedure TFGelGidList.BitBtn4Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\GelirGiderListesi.or');
        FEvrak.Report.PreviewModal;
end;

procedure TFGelGidList.BitBtn5Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\GelirGiderListesi.or');
        FEvrak.Report.Print;
end;

procedure TFGelGidList.OnlineDBCheckListBox1ClickCheck(Sender: TObject);
begin

        IslemSuzme;
end;

procedure TFGelGidList.mnSe1Click(Sender: TObject);
var
        i: integer;
begin
        for i := 0 to OnlineDBCheckListBox1.Items.Count - 1 do
                OnlineDBCheckListBox1.Checked[i] := true;
        IslemSuzme;
end;

procedure TFGelGidList.mnBrak1Click(Sender: TObject);
var
        i: integer;
begin
        for i := 0 to OnlineDBCheckListBox1.Items.Count - 1 do
                OnlineDBCheckListBox1.Checked[i] := true;
        IslemSuzme;

end;

procedure TFGelGidList.BitBtn1Click(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFGelGidList.OnlineButton1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFGelGidList.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                RaporDM.GelirGiderListIBQuery.Close;
                RaporDM.GelirGiderListIBQuery.Open;
                RaporDM.GelirGiderListToplamTLIBQuery.Close;
                RaporDM.GelirGiderListToplamTLIBQuery.Open;
                RaporDM.GelirGiderListToplamEUIBQuery.Close;
                RaporDM.GelirGiderListToplamEUIBQuery.Open;
                RaporDM.GelirGiderListToplamUSDIBQuery.Close;
                RaporDM.GelirGiderListToplamUSDIBQuery.Open;
        end;
end;

procedure TFGelGidList.OnlineDBTree1CheckClick(Sender: TObject;
  TreeNode: TTreeNode; value: Boolean);
begin
        if value then
        begin

        end else begin

        end;
end;

end.
