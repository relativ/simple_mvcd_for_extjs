unit Kasalar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DBOnlineCombo, Buttons, Grids, DBGrids, Mask,
  DBOnlineEdit, ComCtrls, ExtCtrls, Menus, DBOnlineLookupCombo,
  OnlineDBCheckBox, OnlineDBGrid, DB, IBCustomDataSet, IBQuery, OnlineEdit,
  OnlineCombo, OnlineDateEdit, OnlineDBCheckListBox, CheckLst, 
  OnlineButton, scExcelExport, OnlineCustomControl, IBStoredProc, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxGridTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid;

type
  TFKasalar = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    GroupBox12: TGroupBox;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    BitBtn25: TOnlineButton;
    KasaMaxIBQuery: TIBQuery;
    KasaMaxIBQueryMAX: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    GroupBox6: TGroupBox;
    ButtonBakiyeHesap: TButton;
    BitBtn26: TOnlineButton;
    BitBtn27: TOnlineButton;
    scExcelExport1: TscExcelExport;
    PopupMenu2: TPopupMenu;
    ExceleAt1: TMenuItem;
    BakiyeHesapla1: TMenuItem;
    ariheGre1: TMenuItem;
    lemSrasnaGre1: TMenuItem;
    ProcTarihKasa: TIBStoredProc;
    ProcIslemKasa: TIBStoredProc;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1CAISLEMNO: TcxGridDBColumn;
    cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid1DBTableView1D_TAHSILAT: TcxGridDBColumn;
    cxGrid1DBTableView1D_TEDIYE: TcxGridDBColumn;
    cxGrid1DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid1DBTableView1DURUM: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1KASAADI: TcxGridDBColumn;
    cxGrid2DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid2DBTableView1PARABIRIMI: TcxGridDBColumn;
    cxGrid2DBTableView1DURUM: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    Panel6: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    cxGrid3DBTableView1KASANO: TcxGridDBColumn;
    cxGrid3DBTableView1KASAADI: TcxGridDBColumn;
    cxGrid3DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid3DBTableView1C_PARABIRIMI: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    KasaGenelTopProc: TIBStoredProc;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label17: TLabel;
    DBEdit2: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineEdit4: TDBOnlineEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnlineCombo1Click(Sender: TObject);
    procedure DBOnlineLookupCombo2Click(Sender: TObject);
    procedure DBOnlineLookupCombo3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBOnlineLookupCombo5Click(Sender: TObject);
    procedure DBOnlineLookupCombo4Click(Sender: TObject);
    procedure OnlineDBCheckListBox1ClickCheck(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
    procedure ariheGre1Click(Sender: TObject);
    procedure lemSrasnaGre1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel6Exit(Sender: TObject);
    procedure cxGrid3DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKasalar: TFKasalar;

implementation

uses KasaDM, SabitDM,DataDM, Main;

{$R *.dfm}

procedure TFKasalar.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFKasalar.FormShow(Sender: TObject);
begin
        DMKasa.KasaIBQ.Close;
        DMKasa.KasaIBQ.Open;
        DMKasa.KasaHareketIBQ.Close;
        DMKasa.KasaHareketIBQ.Open;
        DMSabit.ParaBirimiIBQ.Open;
        PageControl1.ActivePage:=TabSheet1;
        DBEdit3.SetFocus;
end;

procedure TFKasalar.BitBtn26Click(Sender: TObject);
begin
        PageControl1.ActivePage := TabSheet1;
        DMKasa.KasaIBQ.Append;
        DBEdit3.SetFocus;
end;

procedure TFKasalar.BitBtn27Click(Sender: TObject);
begin
        if DMKasa.KasaIBQ.RecordCount > 0 then
        if DMKasa.KasaHareketIBQ.RecordCount > 0 then
                ShowMessage('Ýþlem görmüþ kasa silinemez...')
        else begin
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
                DMKasa.KasaIBQ.Delete;
        end;
end;

procedure TFKasalar.BLastPageClick(Sender: TObject);
begin
        DMKasa.KasaIBQ.Last;
end;

procedure TFKasalar.ButtonNextClick(Sender: TObject);
begin
        DMKasa.KasaIBQ.Next;
end;

procedure TFKasalar.ButtonPreviousClick(Sender: TObject);
begin
        DMKasa.KasaIBQ.Prior;
end;

procedure TFKasalar.BFirstPageClick(Sender: TObject);
begin
        DMKasa.KasaIBQ.First;
end;

procedure TFKasalar.BitBtn25Click(Sender: TObject);
begin
        close;
end;

procedure TFKasalar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//        FinansDataM.GenelDurumQuery.Close;
        Action := caFree;
end;

procedure TFKasalar.OnlineCombo1Click(Sender: TObject);
begin
   {     DMKasa.KasaHareketIBQ.SQL.Clear;
        DMKasa.KasaHareketIBQ.SQL.Add('select * from KASAHARE');
        DMKasa.KasaHareketIBQ.SQL.Add('Where KASAKOD=:KASAKOD and (TEDIYE<>0 or TAHSILAT<>0)');
        if OnlineCombo1.Text <> 'Hepsi' then
                DMKasa.KasaHareketIBQ.SQL.Add('and ISLEMTUR LIKE '+#39+OnlineCombo1.Text+#39);
        DMKasa.KasaHareketIBQ.SQL.Add('Order By KAHAKOD');
        DMKasa.KasaHareketIBQ.Open;  }
end;

procedure TFKasalar.DBOnlineLookupCombo2Click(Sender: TObject);
var
        tutar: real;
        durum: string;

begin
        KasaGenelTopProc.ParamByName('ISLEMTURU_IN').AsString := 'KASA';
        KasaGenelTopProc.ParamByName('PARABIRKOD_IN').AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        KasaGenelTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        KasaGenelTopProc.Prepare;
        KasaGenelTopProc.ExecProc;
        tutar := KasaGenelTopProc.ParamByName('BAKIYE_OUT').AsFloat;
        if tutar < 0 then
          begin
             durum := 'Eksi';
             tutar := tutar * -1;
        end else durum := 'Artý';

        OnlineEdit1.Text := FormatFloat('###,###.0 '+DMSabit.ParaBirimiIBQKISAADI.AsString,tutar);
        OnlineEdit2.Text := durum;

end;

procedure TFKasalar.DBOnlineLookupCombo3Click(Sender: TObject);
begin
     {   DMKasa.KasaHareketIBQ.SQL.Clear;
        DMKasa.KasaHareketIBQ.SQL.Add('select * from KASAHARE');
        DMKasa.KasaHareketIBQ.SQL.Add('Where KASAKOD=:KASAKOD and (TEDIYE <> 0 or TAHSILAT <> 0)');
        DMKasa.KasaHareketIBQ.SQL.Add('and GELGIDKOD ='+IntToStr(CariislemDModul.GGTakibiIBQueryGELGITKOD.AsInteger));
        DMKasa.KasaHareketIBQ.SQL.Add('Order By KAHAKOD');
        DMKasa.KasaHareketIBQ.Open;}
end;

procedure TFKasalar.BitBtn1Click(Sender: TObject);
begin
        DMKasa.KasaHareketIBQ.SQL.Clear;
        DMKasa.KasaHareketIBQ.SQL.Add('select * from KASAHARE');
        DMKasa.KasaHareketIBQ.SQL.Add('Where KASAKOD=:KASAKOD and (TEDIYE <> 0 or TAHSILAT <> 0)');
        DMKasa.KasaHareketIBQ.SQL.Add('Order By KAHAKOD');
        DMKasa.KasaHareketIBQ.Open;
end;

procedure TFKasalar.TabSheet3Show(Sender: TObject);
begin
//        FinansDataM.GenelDurumQuery.Close;
  //      FinansDataM.GenelDurumQuery.Open;
        BitBtn26.Visible :=False;
        BitBtn27.Visible := False;
end;

procedure TFKasalar.DBOnlineLookupCombo5Click(Sender: TObject);
begin
     {   FinansDataM.GenelDurumQuery.SQL.Clear;
        FinansDataM.GenelDurumQuery.SQL.Add('SELECT Kasa.KASAADI, SUM( Kasahare.TEDIYE ) Tediye, SUM( Kasahare.TAHSILAT ) Tahsilat, Kasa.PARABIRKOD');
        FinansDataM.GenelDurumQuery.SQL.Add('FROM KASA Kasa');
        FinansDataM.GenelDurumQuery.SQL.Add('   INNER JOIN KASAHARE Kasahare');
        FinansDataM.GenelDurumQuery.SQL.Add('   ON  (Kasa.KASAKOD = Kasahare.KASAKOD)');
        FinansDataM.GenelDurumQuery.SQL.Add('where Kasa.KASAADI like '+DMKasa.KasaIBQKASAADI.AsString);
        FinansDataM.GenelDurumQuery.SQL.Add('GROUP BY Kasa.KASAADI, Kasa.PARABIRKOD');
        FinansDataM.GenelDurumQuery.Open;  }

end;

procedure TFKasalar.DBOnlineLookupCombo4Click(Sender: TObject);
begin
      {  FinansDataM.GenelDurumQuery.SQL.Clear;
        FinansDataM.GenelDurumQuery.SQL.Add('SELECT Kasa.KASAADI, SUM( Kasahare.TEDIYE ) Tediye, SUM( Kasahare.TAHSILAT ) Tahsilat, Kasa.PARABIRKOD');
        FinansDataM.GenelDurumQuery.SQL.Add('FROM KASA Kasa');
        FinansDataM.GenelDurumQuery.SQL.Add('   INNER JOIN KASAHARE Kasahare');
        FinansDataM.GenelDurumQuery.SQL.Add('   ON  (Kasa.KASAKOD = Kasahare.KASAKOD)');
        FinansDataM.GenelDurumQuery.SQL.Add('where Kasa.PARABIRKOD = '+SabitDataModul.ParaBirimIBQueryPARABIRKOD.AsString);
        FinansDataM.GenelDurumQuery.SQL.Add('GROUP BY Kasa.KASAADI, Kasa.PARABIRKOD');
        FinansDataM.GenelDurumQuery.Open;}
end;

procedure TFKasalar.OnlineDBCheckListBox1ClickCheck(Sender: TObject);
//var
//        i: integer;
 //       s,s1,s2: String;
begin
     {   s := DMKasa.KasaHareketIBQ.SQL[0];
        s1 := DMKasa.KasaHareketIBQ.SQL[1];
        DMKasa.KasaHareketIBQ.SQL.Clear;
        DMKasa.KasaHareketIBQ.SQL.Add(s);
        DMKasa.KasaHareketIBQ.SQL.Add(s1);
        for i := 0 to OnlineDBCheckListBox1.Items.Count - 1 do
        begin
                if OnlineDBCheckListBox1.Checked[i] = true then
                begin
                        OnlineDBCheckListBox1.LocateDataSetID(i);
                        if Pos('(ODEARKOD',DMKasa.KasaHareketIBQ.SQL.Text) = 0 then
                                DMKasa.KasaHareketIBQ.SQL.Add('and (ODEARKOD='+SabitDataModul.OdeAracIBQueryODEARKOD.AsString)
                        else
                                DMKasa.KasaHareketIBQ.SQL.Add('or ODEARKOD='+SabitDataModul.OdeAracIBQueryODEARKOD.AsString);
                end;
        end;
        if Pos('(ODEARKOD',DMKasa.KasaHareketIBQ.SQL.Text) <> 0 then
                DMKasa.KasaHareketIBQ.SQL.Add(')');
        DMKasa.KasaHareketIBQ.Open; }

end;

procedure TFKasalar.TabSheet1Show(Sender: TObject);
begin
        BitBtn26.Visible :=True;
        BitBtn27.Visible := True;
end;

procedure TFKasalar.TabSheet2Show(Sender: TObject);
begin
        BitBtn26.Visible :=False;
        BitBtn27.Visible := False;
        DMKasa.KasaHareketIBQ.DisableControls;
        DMKasa.KasaHareketIBQ.Last;
        DMKasa.KasaHareketIBQ.EnableControls;

end;

procedure TFKasalar.TabSheet3Exit(Sender: TObject);
begin
        OnlineEdit1.Text := '';
        OnlineEdit2.Text := '';
end;

procedure TFKasalar.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFKasalar.ariheGre1Click(Sender: TObject);
var
        yer: pointer;
        i: integer;
begin
        yer := DMKasa.KasaHareketIBQ.GetBookmark;
        DMKasa.KasaHareketIBQ.DisableControls;
        ProcTarihKasa.ParamByName('KASAKOD_IN').AsInteger := DMKasa.KasaHareketIBQKASAKOD.AsInteger;
        ProcTarihKasa.Prepare;
        ProcTarihKasa.ExecProc;
        for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
                cxGrid1DBTableView1.Columns[i].SortOrder := soNone;
        cxGrid1DBTableView1.GetColumnByFieldName('TARIH').SortOrder := soAscending;
        cxGrid1DBTableView1.GetColumnByFieldName('ISLEMKOD').SortOrder := soAscending;    
        DMKasa.KasaHareketIBQ.SQL.Text := 'select * from KASAISLEM';
        DMKasa.KasaHareketIBQ.SQL.Add('Where KASAKOD=:KASAKOD AND SISTEM<>2');
        DMKasa.KasaHareketIBQ.SQL.Add('Order by TARIH,ISLEMKOD');
        DMKasa.KasaHareketIBQ.Open;
        DMKasa.KasaHareketIBQ.GotoBookmark(yer);
        DMKasa.KasaHareketIBQ.EnableControls;
end;

procedure TFKasalar.lemSrasnaGre1Click(Sender: TObject);
var
        yer: pointer;
        i: integer;
begin
        yer := DMKasa.KasaHareketIBQ.GetBookmark;
        DMKasa.KasaHareketIBQ.DisableControls;
        ProcIslemKasa.ParamByName('KASAKOD_IN').AsInteger := DMKasa.KasaIBQKASAKOD.AsInteger;
        ProcIslemKasa.Prepare;
        ProcIslemKasa.ExecProc;
        for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
                cxGrid1DBTableView1.Columns[i].SortOrder := soNone;
        cxGrid1DBTableView1.GetColumnByFieldName('ISLEMKOD').SortOrder := soAscending;
        DMKasa.KasaHareketIBQ.SQL.Text := 'select * from KASAISLEM';
        DMKasa.KasaHareketIBQ.SQL.Add('Where KASAKOD=:KASAKOD AND SISTEM<>2');
        DMKasa.KasaHareketIBQ.SQL.Add('Order by ISLEMKOD');
        DMKasa.KasaHareketIBQ.Open;
        DMKasa.KasaHareketIBQ.GotoBookmark(yer);
        DMKasa.KasaHareketIBQ.EnableControls;
end;

procedure TFKasalar.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
        yer: pointer;
begin
        if Key = VK_F5 then
        begin
                yer := DMKasa.KasaHareketIBQ.GetBookmark;
                DMKasa.KasaHareketIBQ.DisableControls;
                DMKasa.KasaHareketIBQ.Close;
                DMKasa.KasaHareketIBQ.Open;
                DMKasa.KasaHareketIBQ.EnableControls;
                DMKasa.KasaHareketIBQ.GotoBookmark(yer);
        end;
end;

procedure TFKasalar.Panel6Exit(Sender: TObject);
begin
        if DMKasa.KasaIBQ.Modified Then DMKasa.KasaIBQ.Post;
end;

procedure TFKasalar.cxGrid3DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
           DMKasa.KasaIBQ.Close;
           DMKasa.KasaIBQ.Open;
        end;
end;

procedure TFKasalar.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
        yer: pointer;
begin
        if Key = VK_F5 then
        begin
                yer := DMKasa.KasaIBQ.GetBookmark;
                DMKasa.KasaIBQ.DisableControls;
                DMKasa.KasaIBQ.Close;
                DMKasa.KasaIBQ.Open;
                DMKasa.KasaIBQ.EnableControls;
                DMKasa.KasaIBQ.GotoBookmark(yer);
        end;
end;

end.
