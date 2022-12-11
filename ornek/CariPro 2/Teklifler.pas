unit Teklifler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, OnlineButton,DB, Menus,
  scExcelExport, OnlineCheckBox, OnlineCustomControl;

type
  TFTeklifler = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    OnlineCombo1: TOnlineCombo;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    PopupMenu1: TPopupMenu;
    Busipariialaevir1: TMenuItem;
    Busipariisataevir1: TMenuItem;
    OnlineButton1: TOnlineButton;
    ncele1: TMenuItem;
    N2: TMenuItem;
    Panel6: TPanel;
    Acik: TOnlineCheckbox;
    Kapali: TOnlineCheckbox;
    Buteklifisiparialmayaevir1: TMenuItem;
    Buteklifisiparivermeyeevir1: TMenuItem;
    scExcelExport1: TscExcelExport;
    OnlineButton2: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AcikClick(Sender: TObject);
    procedure KapaliClick(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineDBGrid2DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Busipariialaevir1Click(Sender: TObject);
    procedure Busipariisataevir1Click(Sender: TObject);
    procedure Buteklifisiparialmayaevir1Click(Sender: TObject);
    procedure Buteklifisiparivermeyeevir1Click(Sender: TObject);
    procedure Buteklifigiriirsaliyesineevir1Click(Sender: TObject);
    procedure Buteklifikirsaliyesineevir1Click(Sender: TObject);
    procedure OnlineDBGrid2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ncele1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
  private
    procedure IslemSuzme;
  public
    { Public declarations }
  end;

var
  FTeklifler: TFTeklifler;

implementation

uses DataDM,TeklifVerme, TeklifAlma, Kopyala, TeklifDM, SiparisVerme,
  Girisirsaliyesi, ProcedureDM, SabitDM, CariDM, Alis, AlisSatisDM,
  SiparisAlma, SiparisDM, Satis;

{$R *.dfm}

procedure TFTeklifler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFTeklifler.BFirstPageClick(Sender: TObject);
begin
        DMTeklif.TekliflerIBQ.First;
end;

procedure TFTeklifler.ButtonPreviousClick(Sender: TObject);
begin
        DMTeklif.TekliflerIBQ.Prior;
end;

procedure TFTeklifler.ButtonNextClick(Sender: TObject);
begin
        DMTeklif.TekliflerIBQ.Next;
end;

procedure TFTeklifler.BLastPageClick(Sender: TObject);
begin
        DMTeklif.TekliflerIBQ.Last;
end;

procedure TFTeklifler.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFTeklifler.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFTeklifler.FormShow(Sender: TObject);
var
        gun,ay,yil: word;
begin
        DecodeDate(BugununTarihi,yil,ay,gun);
        DateTimePicker1.Date := EncodeDate(yil,ay,1);
        DateTimePicker2.Date := EncodeDate(yil,ay+1,1) - 1;
end;

procedure TFTeklifler.IslemSuzme;
var
        evrakturu: string;
begin
        if (Acik.Checked = true) and (Kapali.Checked = false) then
                evrakturu := ' AND (EVRAKDURUM = 1)'
        else if (Acik.Checked = false) and (Kapali.Checked = true) then
                evrakturu := ' AND (EVRAKDURUM = 2)'
        else if (Acik.Checked = true) and (Kapali.Checked = true) then
                evrakturu := ' AND (EVRAKDURUM = 1 OR EVRAKDURUM = 2)'
        else if (Acik.Checked = false) and (Kapali.Checked = false) then
                evrakturu := '';
        if OnlineCombo1.Text<>'Hepsi' then
        begin
                if OnlineCombo1.Text<>'' Then
                Begin    
                        DMTeklif.TekliflerIBQ.SQL.Clear;
                        DMTeklif.TekliflerIBQ.SQL.Add('select * from TEKLIFISLEM');
                        DMTeklif.TekliflerIBQ.SQL.Add('Where SISTEM<>2 and ISLEMTUR ='+#39+OnlineCombo1.Text+#39+evrakturu+' and  TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39);
                        DMTeklif.TekliflerIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
                        DMTeklif.TekliflerIBQ.Open;
                end;
        end else
        Begin
                DMTeklif.TekliflerIBQ.SQL.Clear;
                DMTeklif.TekliflerIBQ.SQL.Text:= 'select * from TEKLIFISLEM';
                DMTeklif.TekliflerIBQ.SQL.Add('Where SISTEM<>2 '+evrakturu+' and (ISLEMTUR ='+#39+'Teklif Alma'+#39+' or ISLEMTUR ='+#39+'Teklif Verme'+#39+')'+evrakturu+' and (TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+')');
                DMTeklif.TekliflerIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
                DMTeklif.TekliflerIBQ.Open;
        end;

end;

procedure TFTeklifler.BitBtn4Click(Sender: TObject);
begin
   {     FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariIslemlerListesi.or');
        FEvrak.Report.PreviewModal;  }
end;

procedure TFTeklifler.BitBtn5Click(Sender: TObject);
begin
   {     FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariIslemlerListesi.or');
        FEvrak.Report.Print;  }
end;

procedure TFTeklifler.AcikClick(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFTeklifler.KapaliClick(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFTeklifler.OnlineButton1Click(Sender: TObject);
begin
        islemsuzme;
end;

procedure TFTeklifler.OnlineDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
        if DMTeklif.TekliflerIBQEVRAKDURUM.AsInteger = 111 then
        begin
                OnlineDBGrid2.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid2.Canvas.Font.Color := clBlack;
                OnlineDBGrid2.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                                OnlineDBGrid2.Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.DisplayText)+4),
                                        rect.Top+2,Column.Field.DisplayText)
                        else OnlineDBGrid2.Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+2),
                                        rect.Top+2,Column.Field.AsString);
                end
                else
                Begin
                        if Column.Field.DataType in [ftMemo] then
                                OnlineDBGrid2.Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                        else OnlineDBGrid2.Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.AsString);
                end;
        end;
end;

procedure TFTeklifler.Busipariialaevir1Click(Sender: TObject);
var
        yer: pointer;
begin
        FKopyala.Show;
        DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TekliflerIBQISLEMKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Alýþ';
        DMProcedure.CeviriProc.ParamByName('TUR_IN').AsString := 'TEKLIFVERME-->ALIÞSATIÞ';
        DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('STOKYERIKOD_IN').AsInteger := 0;
        DMProcedure.CeviriProc.Prepare;
        DMProcedure.CeviriProc.ExecProc;
        if Application.FindComponent('FAlis') = nil then
                Application.CreateForm(TFAlis,FAlis);
        FAlis.Show;
        DMAlisSatis.AlisIBQ.Open;
        DMAlisSatis.AlisBodroIBQ.Open;
        DMAlisSatis.AlisIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD_OUT').AsInteger,[]);
        DMData.IBTCariPro.CommitRetaining;
        yer := DMTeklif.TekliflerIBQ.GetBookmark;
        DMTeklif.TekliflerIBQ.Close;
        DMTeklif.TekliflerIBQ.Open;
        DMTeklif.TekliflerIBQ.GotoBookmark(yer);
end;

procedure TFTeklifler.Busipariisataevir1Click(Sender: TObject);
var
        yer: pointer;
begin
        FKopyala.Show;
        DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TekliflerIBQISLEMKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Satýþ';
        DMProcedure.CeviriProc.ParamByName('TUR_IN').AsString := 'TEKLIFVERME-->ALIÞSATIÞ';
        DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('STOKYERIKOD_IN').AsInteger := 0;
        DMProcedure.CeviriProc.Prepare;
        DMProcedure.CeviriProc.ExecProc;     
        if Application.FindComponent('FSatis') = nil then
                Application.CreateForm(TFSatis,FSatis);
        FSatis.Show;
        DMAlisSatis.SatisIBQ.Open;
        DMAlisSatis.SatisBodroIBQ.Open;
        DMAlisSatis.SatisIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD_OUT').AsInteger,[]);
        DMData.IBTCariPro.CommitRetaining;
        yer := DMTeklif.TekliflerIBQ.GetBookmark;
        DMTeklif.TekliflerIBQ.Close;
        DMTeklif.TekliflerIBQ.Open;
        DMTeklif.TekliflerIBQ.GotoBookmark(yer);
end;

procedure TFTeklifler.Buteklifisiparialmayaevir1Click(Sender: TObject);
var
        yer: pointer;
begin
        FKopyala.Show;
        DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TekliflerIBQISLEMKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Sipariþ Alma';
        DMProcedure.CeviriProc.ParamByName('TUR_IN').AsString := 'TEKLIFVERME-->SÝPARÝÞ';
        DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('STOKYERIKOD_IN').AsInteger := 0;
        DMProcedure.CeviriProc.Prepare;
        DMProcedure.CeviriProc.ExecProc;
        if Application.FindComponent('FSiparisAlma') = nil then
                Application.CreateForm(TFSiparisAlma,FSiparisAlma);
        FSiparisAlma.Show;
        DMSiparis.SAlmaIBQ.Open;
        DMSiparis.SAlmaBodroIBQ.Open;
        DMSiparis.SAlmaIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD_OUT').AsInteger,[]);
        DMData.IBTCariPro.CommitRetaining;
        yer := DMTeklif.TekliflerIBQ.GetBookmark;
        DMTeklif.TekliflerIBQ.Close;
        DMTeklif.TekliflerIBQ.Open;
        DMTeklif.TekliflerIBQ.GotoBookmark(yer);
end;

procedure TFTeklifler.Buteklifisiparivermeyeevir1Click(Sender: TObject);
var
        yer: pointer;
begin
        FKopyala.Show;
        DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TekliflerIBQISLEMKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Sipariþ Verme';
        DMProcedure.CeviriProc.ParamByName('TUR_IN').AsString := 'TEKLIFVERME-->SÝPARÝÞ';
        DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('STOKYERIKOD_IN').AsInteger := 0;
        DMProcedure.CeviriProc.Prepare;
        DMProcedure.CeviriProc.ExecProc;
        if Application.FindComponent('FSiparisVerme') = nil then
                Application.CreateForm(TFSiparisVerme,FSiparisVerme);
        FSiparisVerme.Show;
        DMSiparis.SVermeIBQ.Open;
        DMSiparis.SVermeBodroIBQ.Open;
        DMSiparis.SVermeIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD_OUT').AsInteger,[]);
        DMData.IBTCariPro.CommitRetaining;
        yer := DMTeklif.TekliflerIBQ.GetBookmark;
        DMTeklif.TekliflerIBQ.Close;
        DMTeklif.TekliflerIBQ.Open;
        DMTeklif.TekliflerIBQ.GotoBookmark(yer);
end;

procedure TFTeklifler.Buteklifigiriirsaliyesineevir1Click(Sender: TObject);
var
        yer: pointer;
begin
   {     FKopyala.Show;
        RaporDM.CeviriProc.ParamByName('CAISLKOD_IN').AsInteger := DMTeklif.TekliflerIBQCAISLKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Giriþ Ýrsaliyesi';
        RaporDM.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := SabitDM.KullaniciIBQKULLANKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('HESAPILISKI').AsString := '0';
        RaporDM.CeviriProc.Prepare;
        RaporDM.CeviriProc.ExecProc;
        if Application.FindComponent('FGirisirsaliyesi') = nil then
                Application.CreateForm(TFGirisirsaliyesi,FGirisirsaliyesi);
        FGirisirsaliyesi.Show;
        CariDM.GirisirsaliyesiIBQ.Open;
        CariDM.GirisirsaliyesiBodroIBQ.Open;
        CariDM.GirisirsaliyesiIBQ.Locate('CAISLKOD',RaporDM.CeviriProc.ParamByName('CAISLKOD3_IN').AsInteger,[]);
        CariDM.IBTransaction1.CommitRetaining;
        yer := DMTeklif.TekliflerIBQ.GetBookmark;
        DMTeklif.TekliflerIBQ.Close;
        DMTeklif.TekliflerIBQ.Open;
        DMTeklif.TekliflerIBQ.GotoBookmark(yer); }
end;

procedure TFTeklifler.Buteklifikirsaliyesineevir1Click(Sender: TObject);
var
        yer: pointer;
begin
  {      FKopyala.Show;
        RaporDM.CeviriProc.ParamByName('CAISLKOD_IN').AsInteger := DMTeklif.TekliflerIBQCAISLKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Çýkýþ Ýrsaliyesi';
        RaporDM.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := SabitDM.KullaniciIBQKULLANKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('HESAPILISKI').AsString := '0';
        RaporDM.CeviriProc.Prepare;
        RaporDM.CeviriProc.ExecProc;
        if Application.FindComponent('FCikisirsaliyesi') = nil then
                Application.CreateForm(TFCikisirsaliyesi,FCikisirsaliyesi);
        FCikisirsaliyesi.Show;
        CariDM.CikisirsaliyesiIBQ.Open;
        CariDM.CikisirsaliyesiBodroIBQ.Open;
        CariDM.CikisirsaliyesiIBQ.Locate('CAISLKOD',RaporDM.CeviriProc.ParamByName('CAISLKOD3_IN').AsInteger,[]);
        CariDM.IBTransaction1.CommitRetaining;
        yer := DMTeklif.TekliflerIBQ.GetBookmark;
        DMTeklif.TekliflerIBQ.Close;
        DMTeklif.TekliflerIBQ.Open;
        DMTeklif.TekliflerIBQ.GotoBookmark(yer);  }
end;

procedure TFTeklifler.OnlineDBGrid2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
        if DMTeklif.TekliflerIBQEVRAKDURUM.AsInteger = 1 then
        begin
                if DMTeklif.TekliflerIBQISLEMTUR.AsString = 'Teklif Verme' then
                begin
                        Busipariisataevir1.Visible := true;
                        Buteklifisiparialmayaevir1.Visible := true;
                        Busipariialaevir1.Visible := false;
                        Buteklifisiparivermeyeevir1.Visible := false;

                end else begin
                        Busipariisataevir1.Visible := false;
                        Buteklifisiparialmayaevir1.Visible := false;
                        Busipariialaevir1.Visible := true;
                        Buteklifisiparivermeyeevir1.Visible := true;
                end;
        end else begin
                        Busipariisataevir1.Visible := false;
                        Buteklifisiparialmayaevir1.Visible := false;
                        Busipariialaevir1.Visible := false;
                        Buteklifisiparivermeyeevir1.Visible := false;

        end
end;

procedure TFTeklifler.ncele1Click(Sender: TObject);
begin
        if DMTeklif.TekliflerIBQISLEMTUR.AsString = 'Teklif Verme' then
        begin
                if Application.FindComponent('FTeklifVerme') = nil then
                        Application.CreateForm(TFTeklifVerme,FTeklifVerme);
                FTeklifVerme.Show;
                DMTeklif.TeklifVermeIBQ.Open;
                DMTeklif.TeklifVermeBodroIBQ.Open;
                DMTeklif.TeklifVermeIBQ.Locate('ISLEMKOD',DMTeklif.TekliflerIBQISLEMKOD.AsInteger,[]);
        end else begin
                if Application.FindComponent('FTeklifAlma') = nil then
                        Application.CreateForm(TFTeklifAlma,FTeklifAlma);
                FTeklifAlma.Show;
                DMTeklif.TeklifAlmaIBQ.Open;
                DMTeklif.TeklifAlmaBodroIBQ.Open;
                DMTeklif.TeklifAlmaIBQ.Locate('ISLEMKOD',DMTeklif.TekliflerIBQISLEMKOD.AsInteger,[]);
        end;
end;

procedure TFTeklifler.OnlineButton2Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

end.
