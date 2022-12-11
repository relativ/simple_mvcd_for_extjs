unit BankaislemList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, OnlineButton, scExcelExport,
  OnlineCustomControl, OnlineCheckBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid;

type
  TFBankaislemList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    Panel10: TPanel;
    OnlineCombo1: TOnlineCombo;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn1: TOnlineButton;
    scExcelExport1: TscExcelExport;
    OnlineButton1: TOnlineButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn;
    cxGrid1DBTableView1BankaAdi: TcxGridDBColumn;
    cxGrid1DBTableView1TAHSILAT: TcxGridDBColumn;
    cxGrid1DBTableView1TEDIYE: TcxGridDBColumn;
    cxGrid1DBTableView1PARABIRIMI: TcxGridDBColumn;
    cxGrid1DBTableView1TamAdi: TcxGridDBColumn;
    cxGrid1DBTableView1KullaniciAdi: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TLClick(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
  private
    IslemTur: string;
    procedure IslemSuzme;
    procedure Suzme;
  public
    { Public declarations }
  end;

var
  FBankaislemList: TFBankaislemList;

implementation

uses DataDM, BankaDM;

{$R *.dfm}

procedure TFBankaislemList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFBankaislemList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFBankaislemList.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFBankaislemList.FormShow(Sender: TObject);
var
        gun,ay,yil: word;
begin
        DecodeDate(BugununTarihi,yil,ay,gun);
        DateTimePicker1.Date := EncodeDate(yil,ay,1);
        DateTimePicker2.Date := EncodeDate(yil,ay+1,1) - 1;
end;

procedure TFBankaislemList.IslemSuzme;
begin
        if IslemTur<>'Hepsi' then
        begin
                if IslemTur<>'' Then
                Begin
                        DMBanka.BankaislemlistIBQ.SQL.Clear;
                        DMBanka.BankaislemlistIBQ.SQL.Add('select * from BANKAISLEM');
                        DMBanka.BankaislemlistIBQ.SQL.Add('Where SISTEM<>2');
                        DMBanka.BankaislemlistIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
                        DMBanka.BankaislemlistIBQ.Open;
                end;
        end else
        Begin
                DMBanka.BankaislemlistIBQ.SQL.Clear;
                DMBanka.BankaislemlistIBQ.SQL.Text:= 'select * from BANKAISLEM';
                DMBanka.BankaislemlistIBQ.SQL.Add('Where  TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39);
                DMBanka.BankaislemlistIBQ.SQL.Add('AND SISTEM<>2');
                DMBanka.BankaislemlistIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
                DMBanka.BankaislemlistIBQ.Open;  
        end;

end;

procedure TFBankaislemList.DateTimePicker1Change(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFBankaislemList.DateTimePicker2Change(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFBankaislemList.BitBtn4Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Bankaislemleri.or');
        FEvrak.Report.PreviewModal;  }
end;

procedure TFBankaislemList.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Bankaislemleri.or');
        FEvrak.Report.Print;  }
end;

procedure TFBankaislemList.BitBtn1Click(Sender: TObject);
begin
        if OnlineCombo1.Text <> 'Hepsi' then
                IslemTur := IslemTurKod.Values[OnlineCombo1.Text]
        else IslemTur := 'Hepsi';
        IslemSuzme;
end;

procedure TFBankaislemList.Suzme;

begin

end;

procedure TFBankaislemList.TLClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFBankaislemList.OnlineButton1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

end.
