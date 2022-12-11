unit KasaislemList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, OnlineButton, scExcelExport,
  OnlineCustomControl, OnlineCheckBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxGridTableView, cxGridCustomTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid;

type
  TFKasaislemList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    OnlineCombo1: TOnlineCombo;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    scExcelExport1: TscExcelExport;
    OnlineButton1: TOnlineButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1SAAT: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid1DBTableView1TEDIYE: TcxGridDBColumn;
    cxGrid1DBTableView1TAHSILAT: TcxGridDBColumn;
    cxGrid1DBTableView1CARINO: TcxGridDBColumn;
    cxGrid1DBTableView1MAKBUZNO: TcxGridDBColumn;
    cxGrid1DBTableView1D_TEDIYE: TcxGridDBColumn;
    cxGrid1DBTableView1D_TAHSILAT: TcxGridDBColumn;
    cxGrid1DBTableView1CARIKURU: TcxGridDBColumn;
    cxGrid1DBTableView1ISLEMKURU: TcxGridDBColumn;
    cxGrid1DBTableView1KASAISLEMNO: TcxGridDBColumn;
    cxGrid1DBTableView1C_PARABIRIMI: TcxGridDBColumn;
    cxGrid1DBTableView1C_KASAADI: TcxGridDBColumn;
    cxGrid1DBTableView1C_CARIADI: TcxGridDBColumn;
    cxGrid1DBTableView1C_GGMERKEZI: TcxGridDBColumn;
    cxGrid1DBTableView1C_KULLANICIADI: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TLClick(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IslemTur: string;
    procedure IslemSuzme;
    procedure Suzme;
  public
    { Public declarations }
  end;

var
  FKasaislemList: TFKasaislemList;

implementation

uses    KasaDM, DataDM;

{$R *.dfm}

procedure  TFKasaislemList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFKasaislemList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFKasaislemList.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFKasaislemList.FormShow(Sender: TObject);
var
        gun,ay,yil: word;
begin
        DecodeDate(BugununTarihi,yil,ay,gun);
        DateTimePicker1.Date := EncodeDate(yil,ay,1);
        DateTimePicker2.Date := EncodeDate(yil,ay+1,1) - 1;

end;

procedure TFKasaislemList.IslemSuzme;
begin
        if IslemTur<>'Hepsi' then
        begin
                if IslemTur<>'' Then
                Begin
                        DMKasa.KasaislemlistIBQ.SQL.Clear;
                        DMKasa.KasaislemlistIBQ.SQL.Add('select * from KASAISLEM');
                        DMKasa.KasaislemlistIBQ.SQL.Add('Where  SISTEM<>2');
                        DMKasa.KasaislemlistIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
                        DMKasa.KasaislemlistIBQ.Open;

                end;
        end else
        Begin
                DMKasa.KasaislemlistIBQ.SQL.Clear;
                DMKasa.KasaislemlistIBQ.SQL.Text:= 'select * from KASAISLEM';
                DMKasa.KasaislemlistIBQ.SQL.Add('Where TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39);
                DMKasa.KasaislemlistIBQ.SQL.Add('AND SISTEM<>2');
                DMKasa.KasaislemlistIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD') ;
                DMKasa.KasaislemlistIBQ.Open;


        end;

end;

procedure TFKasaislemList.Suzme;

begin

end;

procedure TFKasaislemList.BitBtn4Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Kasaislemleri.or');
        FEvrak.Report.PreviewModal;}
end;

procedure TFKasaislemList.BitBtn5Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Kasaislemleri.or');
        FEvrak.Report.Print;  }
end;

procedure TFKasaislemList.BitBtn1Click(Sender: TObject);
begin
        if OnlineCombo1.Text <> 'Hepsi' then
                IslemTur := IslemTurKod.Values[OnlineCombo1.Text]
        else IslemTur := 'Hepsi';
        IslemSuzme;
end;

procedure TFKasaislemList.TLClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFKasaislemList.OnlineButton1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFKasaislemList.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMKasa.KasaislemlistIBQ.Close;
                DMKasa.KasaislemlistIBQ.Open;
        end;
end;

end.
