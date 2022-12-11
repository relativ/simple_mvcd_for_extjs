unit Siparisler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, OnlineButton,DB, Menus, 
  scExcelExport, OnlineCheckBox, OnlineCustomControl;

type
  TFSiparisler = class(TForm)
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
    Busipariigiriirsaliyesineevir1: TMenuItem;
    Busipariikirsaliyesineevir1: TMenuItem;
    N1: TMenuItem;
    ExceleAt1: TMenuItem;
    scExcelExport1: TscExcelExport;
    BuSipariiSipariVer1: TMenuItem;
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
    procedure Busipariigiriirsaliyesineevir1Click(Sender: TObject);
    procedure Busipariikirsaliyesineevir1Click(Sender: TObject);
    procedure OnlineDBGrid2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure ncele1Click(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
  private
    procedure IslemSuzme;
  public
    { Public declarations }
  end;

var
  FSiparisler: TFSiparisler;

implementation

uses DataDM, SiparisDM, Kopyala, Girisirsaliyesi, SiparisVerme, SiparisAlma;

{$R *.dfm}

procedure TFSiparisler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFSiparisler.BFirstPageClick(Sender: TObject);
begin
        DMSiparis.SiparislerIBQ.First;
end;

procedure TFSiparisler.ButtonPreviousClick(Sender: TObject);
begin
        DMSiparis.SiparislerIBQ.Prior;
end;

procedure TFSiparisler.ButtonNextClick(Sender: TObject);
begin
        DMSiparis.SiparislerIBQ.Next;
end;

procedure TFSiparisler.BLastPageClick(Sender: TObject);
begin
        DMSiparis.SiparislerIBQ.Last;
end;

procedure TFSiparisler.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFSiparisler.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFSiparisler.FormShow(Sender: TObject);
var
        gun,ay,yil: word;
begin
        DecodeDate(BugununTarihi,yil,ay,gun);
        DateTimePicker1.Date := EncodeDate(yil,ay,1);
        DateTimePicker2.Date := EncodeDate(yil,ay+1,1) - 1;
end;

procedure TFSiparisler.IslemSuzme;
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
                        DMSiparis.SiparislerIBQ.SQL.Clear;
                        DMSiparis.SiparislerIBQ.SQL.Add('select * from SIPARIS');
                        DMSiparis.SiparislerIBQ.SQL.Add('Where SISTEM<>2 AND  ISLEMTUR ='+#39+OnlineCombo1.Text+#39+evrakturu+' and  TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39);
                        DMSiparis.SiparislerIBQ.SQL.Add('ORDER BY TARIH');
                        DMSiparis.SiparislerIBQ.Open;
                end;
        end else
        Begin
                DMSiparis.SiparislerIBQ.SQL.Clear;
                DMSiparis.SiparislerIBQ.SQL.Text:= 'select * from SIPARIS';
                DMSiparis.SiparislerIBQ.SQL.Add('Where SISTEM<>2 '+evrakturu+' and (TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+')');
                DMSiparis.SiparislerIBQ.SQL.Add('ORDER BY TARIH');
                DMSiparis.SiparislerIBQ.Open;
        end;

end;

procedure TFSiparisler.BitBtn4Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariIslemlerListesi.or');
        FEvrak.Report.PreviewModal;  }
end;

procedure TFSiparisler.BitBtn5Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariIslemlerListesi.or');
        FEvrak.Report.Print; }
end;

procedure TFSiparisler.AcikClick(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFSiparisler.KapaliClick(Sender: TObject);
begin
        IslemSuzme;
end;

procedure TFSiparisler.OnlineButton1Click(Sender: TObject);
begin
        islemsuzme;
end;

procedure TFSiparisler.OnlineDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
        if DMSiparis.SiparislerIBQEVRAKDURUM.AsString = 'Açýk' then
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

procedure TFSiparisler.Busipariialaevir1Click(Sender: TObject);
var
        yer: pointer;
begin
  {      FKopyala.Show;
        RaporDM.CeviriProc.ParamByName('CAISLKOD_IN').AsInteger := DMSiparis.SiparislerIBQCAISLKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Alýþ';
        RaporDM.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := SabitDM.KullaniciIBQKULLANKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
        RaporDM.CeviriProc.Prepare;
        RaporDM.CeviriProc.ExecProc;
        if Application.FindComponent('FAlis') = nil then
                Application.CreateForm(TFAlis,FAlis);
        FAlis.Show;
        DMSiparis.AlisIBQ.Open;
        DMSiparis.AlisBodroIBQ.Open;
        DMSiparis.AlisIBQ.Locate('CAISLKOD',RaporDM.CeviriProc.ParamByName('CAISLKOD3_IN').AsInteger,[]);
        DMSiparis.IBTransaction1.CommitRetaining;
        yer := DMSiparis.SiparislerIBQ.GetBookmark;
        DMSiparis.SiparislerIBQ.Close;
        DMSiparis.SiparislerIBQ.Open;
        DMSiparis.SiparislerIBQ.GotoBookmark(yer);  }
end;

procedure TFSiparisler.Busipariisataevir1Click(Sender: TObject);
var
        yer: pointer;
begin
  {      FKopyala.Show;
        RaporDM.CeviriProc.ParamByName('CAISLKOD_IN').AsInteger := DMSiparis.SiparislerIBQCAISLKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Satýþ';
        RaporDM.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := SabitDM.KullaniciIBQKULLANKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
        RaporDM.CeviriProc.Prepare;
        RaporDM.CeviriProc.ExecProc;
        if Application.FindComponent('FSatis') = nil then
                Application.CreateForm(TFSatis,FSatis);
        FSatis.Show;
        DMSiparis.SatisIBQ.Open;
        DMSiparis.SatisBodroIBQ.Open;
        DMSiparis.SatisIBQ.Locate('CAISLKOD',RaporDM.CeviriProc.ParamByName('CAISLKOD3_IN').AsInteger,[]);
        DMSiparis.IBTransaction1.CommitRetaining;
        yer := DMSiparis.SiparislerIBQ.GetBookmark;
        DMSiparis.SiparislerIBQ.Close;
        DMSiparis.SiparislerIBQ.Open;
        DMSiparis.SiparislerIBQ.GotoBookmark(yer);  }
end;

procedure TFSiparisler.Busipariigiriirsaliyesineevir1Click(
  Sender: TObject);
var
        yer: pointer;
begin
  {      FKopyala.Show;
        RaporDM.CeviriProc.ParamByName('CAISLKOD_IN').AsInteger := DMSiparis.SiparislerIBQCAISLKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Giriþ Ýrsaliyesi';
        RaporDM.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := SabitDM.KullaniciIBQKULLANKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('HESAPILISKI').AsString := '0';
        RaporDM.CeviriProc.Prepare;
        RaporDM.CeviriProc.ExecProc;
        if Application.FindComponent('FGirisirsaliyesi') = nil then
                Application.CreateForm(TFGirisirsaliyesi,FGirisirsaliyesi);
        FGirisirsaliyesi.Show;
        DMSiparis.GirisirsaliyesiIBQ.Open;
        DMSiparis.GirisirsaliyesiBodroIBQ.Open;
        DMSiparis.GirisirsaliyesiIBQ.Locate('CAISLKOD',RaporDM.CeviriProc.ParamByName('CAISLKOD3_IN').AsInteger,[]);
        DMSiparis.IBTransaction1.CommitRetaining;
        yer := DMSiparis.SiparislerIBQ.GetBookmark;
        DMSiparis.SiparislerIBQ.Close;
        DMSiparis.SiparislerIBQ.Open;
        DMSiparis.SiparislerIBQ.GotoBookmark(yer);  }
end;

procedure TFSiparisler.Busipariikirsaliyesineevir1Click(Sender: TObject);
var
        yer: pointer;
begin
 {       FKopyala.Show;
        RaporDM.CeviriProc.ParamByName('CAISLKOD_IN').AsInteger := DMSiparis.SiparislerIBQCAISLKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Çýkýþ Ýrsaliyesi';
        RaporDM.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := SabitDM.KullaniciIBQKULLANKOD.AsInteger;
        RaporDM.CeviriProc.ParamByName('HESAPILISKI').AsString := '0';
        RaporDM.CeviriProc.Prepare;
        RaporDM.CeviriProc.ExecProc;
        if Application.FindComponent('FCikisIrsaliyesi') = nil then
                Application.CreateForm(TFCikisIrsaliyesi,FCikisIrsaliyesi);
        FCikisIrsaliyesi.Show;
        DMSiparis.CikisirsaliyesiIBQ.Open;
        DMSiparis.CikisirsaliyesiBodroIBQ.Open;
        DMSiparis.CikisirsaliyesiIBQ.Locate('CAISLKOD',RaporDM.CeviriProc.ParamByName('CAISLKOD3_IN').AsInteger,[]);
        DMSiparis.IBTransaction1.CommitRetaining;
        yer := DMSiparis.SiparislerIBQ.GetBookmark;
        DMSiparis.SiparislerIBQ.Close;
        DMSiparis.SiparislerIBQ.Open;
        DMSiparis.SiparislerIBQ.GotoBookmark(yer);  }
end;

procedure TFSiparisler.OnlineDBGrid2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
        if DMSiparis.SiparislerIBQEVRAKDURUM.AsInteger = 1 then
        begin
                if DMSiparis.SiparislerIBQISLEMTUR.AsString = 'Sipariþ Alma' then
                begin
                        Busipariisataevir1.Visible := true;
                        Busipariikirsaliyesineevir1.Visible := true;
                        Busipariialaevir1.Visible := false;
                        Busipariigiriirsaliyesineevir1.Visible := false;
                end else begin
                        Busipariisataevir1.Visible := false;
                        Busipariikirsaliyesineevir1.Visible := false;
                        Busipariialaevir1.Visible := true;
                        Busipariigiriirsaliyesineevir1.Visible := true;
                end;
        end else begin
                        Busipariisataevir1.Visible := false;
                        Busipariikirsaliyesineevir1.Visible := false;
                        Busipariialaevir1.Visible := false;
                        Busipariigiriirsaliyesineevir1.Visible := false;
        end;
end;

procedure TFSiparisler.ncele1Click(Sender: TObject);
begin
        if DMSiparis.SiparislerIBQISLEMTUR.AsString = 'Sipariþ Alma' then
        begin
                if Application.FindComponent('FSiparisAlma') = nil then
                        Application.CreateForm(TFSiparisAlma,FSiparisAlma);
                FSiparisAlma.Show;
                DMSiparis.SAlmaIBQ.Open;
                DMSiparis.SAlmaBodroIBQ.Open;
                DMSiparis.SAlmaIBQ.Locate('ISLEMKOD',DMSiparis.SiparislerIBQISLEMKOD.AsInteger,[]);
        end else begin
                if Application.FindComponent('FSiparisVerme') = nil then
                        Application.CreateForm(TFSiparisVerme,FSiparisVerme);
                FSiparisVerme.Show;
                DMSiparis.SVermeIBQ.Open;
                DMSiparis.SVermeBodroIBQ.Open;
                DMSiparis.SVermeIBQ.Locate('ISLEMKOD',DMSiparis.SiparislerIBQISLEMKOD.AsInteger,[]);
        end;
end;

procedure TFSiparisler.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

end.
