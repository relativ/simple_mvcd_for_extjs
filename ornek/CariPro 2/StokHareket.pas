unit StokHareket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, DBOnlineLookupCombo, Menus, DB,
  OnlineButton, OnlineDBTreeView, OnlineCustomControl, OnlineCheckBox,
  IBCustomDataSet, IBStoredProc, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxDBLookupComboBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid;

type
  TFStokHareket = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn3: TOnlineButton;
    PopupMenu1: TPopupMenu;
    lemSrasnaGreSrala1: TMenuItem;
    Panel9: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TOnlineButton;
    Panel10: TPanel;
    OnlineEdit2: TOnlineEdit;
    GroupBox3: TGroupBox;
    psDBTreeView1: TOnlineDBTree;
    GroupBox2: TGroupBox;
    Panel11: TPanel;
    BakiyeHesapla1: TMenuItem;
    ariheGre1: TMenuItem;
    lemSrasnaGre1: TMenuItem;
    StokHesapProc: TIBStoredProc;
    StokTarihProc: TIBStoredProc;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    ncele1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGrid1DBTableView1GirisMiktar: TcxGridDBColumn;
    cxGrid1DBTableView1CikisMiktar: TcxGridDBColumn;
    cxGrid1DBTableView1STOKKOD: TcxGridDBColumn;
    cxGrid1DBTableView1GRUPKOD: TcxGridDBColumn;
    cxGrid1DBTableView1GRUPLARKOD: TcxGridDBColumn;
    cxGrid1DBTableView1KONTROLNO: TcxGridDBColumn;
    cxGrid1DBTableView1ACTIVITE: TcxGridDBColumn;
    cxGrid1DBTableView1STOKKOD1: TcxGridDBColumn;
    cxGrid1DBTableView1STOKNO: TcxGridDBColumn;
    cxGrid1DBTableView1BARKOD: TcxGridDBColumn;
    cxGrid1DBTableView1STOKADI: TcxGridDBColumn;
    cxGrid1DBTableView1STOKTURU: TcxGridDBColumn;
    cxGrid1DBTableView1BIRIM: TcxGridDBColumn;
    cxGrid1DBTableView1BIRIMCARPAN: TcxGridDBColumn;
    cxGrid1DBTableView1KOLIMIKTAR: TcxGridDBColumn;
    cxGrid1DBTableView1SECIM: TcxGridDBColumn;
    cxGrid1DBTableView1PARABIRIMIKOD: TcxGridDBColumn;
    cxGrid1DBTableView1STOKTIPI: TcxGridDBColumn;
    cxGrid1DBTableView1ACTIVITE1: TcxGridDBColumn;
    cxGrid1DBTableView1KARORANI: TcxGridDBColumn;
    cxGrid1DBTableView1MINSEVIYE: TcxGridDBColumn;
    cxGrid1DBTableView1MAXSEVIYE: TcxGridDBColumn;
    cxGrid1DBTableView1SIPSEVIYE: TcxGridDBColumn;
    cxGrid1DBTableView1NEGSEVIYE: TcxGridDBColumn;
    cxGrid1DBTableView1KDVORAN: TcxGridDBColumn;
    cxGrid1DBTableView1ALISFIYAT: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYAT1: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYAT2: TcxGridDBColumn;
    cxGrid1DBTableView1SATISFIYAT3: TcxGridDBColumn;
    cxGrid1DBTableView1KDVLI_SATIS1: TcxGridDBColumn;
    cxGrid1DBTableView1KDVLI_SATIS2: TcxGridDBColumn;
    cxGrid1DBTableView1KDVLI_SATIS3: TcxGridDBColumn;
    cxGrid1DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid1DBTableView1DURUM: TcxGridDBColumn;
    cxGrid1DBTableView1REELALIS: TcxGridDBColumn;
    cxGrid1DBTableView1REELSATIS: TcxGridDBColumn;
    cxGrid1DBTableView1ORTALAMALIS: TcxGridDBColumn;
    cxGrid1DBTableView1ORTALAMSATIS: TcxGridDBColumn;
    cxGrid1DBTableView1SONALIS: TcxGridDBColumn;
    cxGrid1DBTableView1SONSATIS: TcxGridDBColumn;
    cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn;
    cxGrid1DBTableView1CARIKOD: TcxGridDBColumn;
    cxGrid1DBTableView1C_PARABIRIMI: TcxGridDBColumn;
    cxGrid1DBTableView1C_KAYNAKADI: TcxGridDBColumn;
    cxGrid1DBTableView1ALINANSIPARIS: TcxGridDBColumn;
    cxGrid1DBTableView1VERILENSIPARIS: TcxGridDBColumn;
    cxGrid1DBTableView1AGIRLIK: TcxGridDBColumn;
    cxGrid1DBTableView1HACIM: TcxGridDBColumn;
    cxGrid1DBTableView1C_DURUM: TcxGridDBColumn;
    cxGrid1DBTableView3GIRISMIKTAR: TcxGridDBColumn;
    cxGrid1DBTableView3CIKISMIKTAR: TcxGridDBColumn;
    cxGrid1DBTableView3STOKNO: TcxGridDBColumn;
    cxGrid1DBTableView3STOKADI: TcxGridDBColumn;
    cxGrid1DBTableView3BAKIYE: TcxGridDBColumn;
    cxGrid1DBTableView3C_DURUM: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure lemSrasnaGreSrala1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TLClick(Sender: TObject);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure lemSrasnaGre1Click(Sender: TObject);
    procedure ariheGre1Click(Sender: TObject);
    procedure ncele1Click(Sender: TObject);
    procedure cxGrid1DBTableView3CustomDrawPartBackground(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure psDBTreeView1Click(Sender: TObject);
    procedure psDBTreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure psDBTreeView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure IslemSuzme;
    procedure Suzme;
  public
    { Public declarations }
  end;

var
  FStokHareket: TFStokHareket;

implementation

uses DataDM, StokDM, StokRDM, StokGirisi;

{$R *.dfm}
Function VirgulGoster(x:Real):String;
Begin
    //    Result := FormatFloat(CariDM.AlisBodroIBQueryTAHSILAT.DisplayFormat, x);
end;

procedure TFStokHareket.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        DMRStok.StokHareketIBQ.Close;
        Action := caFree;
end;

procedure TFStokHareket.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokHareket.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      key:=#0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFStokHareket.FormShow(Sender: TObject);
var
        gun,ay,yil: word;
begin
        DecodeDate(BugununTarihi,yil,ay,gun);
        DateTimePicker1.Date := EncodeDate(yil,ay,1);
        DateTimePicker2.Date := EncodeDate(yil,ay+1,1) - 1;
        DMStok.StokGruplariIBQ.Open;
        DMRStok.StokHareketIBQ.Open;
        OnlineEdit2.SetFocus;
end;

procedure TFStokHareket.IslemSuzme;
begin
                DMRStok.StokHareketIBQ.SQL.Text:= 'select * from BODRO';
                DMRStok.StokHareketIBQ.SQL.Add('Where (STOKNO=:STOKNO) and (ISLEMTUR='+#39+'Satýþ'+#39+' or ISLEMTUR='+#39+'Alýþ'+#39+' or ISLEMTUR='+#39+'Satýþ Ýade'+#39+' or ISLEMTUR='+#39+'Alýþ Ýade'+#39+' or ISLEMTUR='+#39+'Stok Giriþi'+#39+' or ISLEMTUR='+#39+'Stok Çýkýþý'+#39+' or ISLEMTUR='+#39+'Sarf'+#39);
                DMRStok.StokHareketIBQ.SQL.Add(' or ISLEMTUR='+#39+'Sayým Fazlasý'+#39+' or ISLEMTUR='+#39+'Sayým Fazlasý'+#39+' or ISLEMTUR='+#39+'Ýmalat'+#39+' or ISLEMTUR='+#39+'Sayim Eksiði'+#39);
                DMRStok.StokHareketIBQ.SQL.Add(' or ISLEMTUR='+#39+'Fire'+#39+' or ISLEMTUR='+#39+'Üretime Çýkýþ'+#39+' OR (((ISLEMTUR='+#39+'Giriþ Ýrsaliyesi'+#39+') or (ISLEMTUR='+#39+'Çýkýþ Ýrsaliyesi'+#39+')) AND (EVRAKDURUMU='+#39+'Açýk'+#39+')))');
                DMRStok.StokHareketIBQ.SQL.Add('and ((TARIH>='+#39+DateToStr(DateTimePicker1.Date)+#39+') and (TARIH<='+#39+DateToStr(DateTimePicker2.Date)+#39+'))');
                DMRStok.StokHareketIBQ.SQL.Add('ORDER BY TARIH');
                DMRStok.StokHareketIBQ.Open;
end;

procedure TFStokHareket.Suzme;
var
        i: integer;
        s: string;
begin
        if Pos('PARABIRKOD',DMRStok.StokHareketIBQ.SQL.Text) <> 0 then
        begin
                for i := 0 to DMRStok.StokHareketIBQ.SQL.Count -1 do
                begin
                        if (i <= DMRStok.StokHareketIBQ.SQL.Count - 1) and (Pos(UpperCase('PARABIRKOD'),UpperCase(DMRStok.StokHareketIBQ.SQL[i])) <> 0) then
                                DMRStok.StokHareketIBQ.SQL.Delete(i);
                end;
        end;

        DMRStok.StokHareketIBQ.Open;
end;

procedure TFStokHareket.BitBtn4Click(Sender: TObject);
begin
       { FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\StokHareket.or');
        FEvrak.Report.PreviewModal;   }
end;

procedure TFStokHareket.BitBtn5Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\StokHareket.or');
        FEvrak.Report.Print;   }
end;

procedure TFStokHareket.lemSrasnaGreSrala1Click(Sender: TObject);
var
        i: integer;
begin
        for i:= DMRStok.StokHareketIBQ.SQL.Count - 1 downto 0 do
        begin
                if Pos('ORDER',UpperCase(DMRStok.StokHareketIBQ.SQL[i])) <> 0 then
                        DMRStok.StokHareketIBQ.SQL[i] := 'Order by BODROKOD';
                DMRStok.StokHareketIBQ.Open;
        end;
end;

procedure TFStokHareket.BitBtn1Click(Sender: TObject);
begin
        IslemSuzme;

end;

procedure TFStokHareket.TLClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFStokHareket.OnlineEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKODU,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.STOKODU = STOKKART.STOKODU) and UPPER(STOKKART.STOKADI) LIKE '+#39+OnlineEdit2.UpperTurk+'%'+#39);
                DMStok.StokGrupKartIBQ.SQL.Add('Order By STOKKART.STOKODU');
                DMStok.StokGrupKartIBQ.Open;
        end;
end;

procedure TFStokHareket.FormActivate(Sender: TObject);
begin
  {      StokDM.StGrupIBQuery.Close;
        StokDM.StGrupIBQuery.Open;
        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKODU,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKODU = STOKKART.STOKODU)');
        DMStok.StokGrupKartIBQ.SQL.Add('Order By STOKKART.STOKODU');
        DMStok.StokGrupKartIBQ.Open; }
end;

procedure TFStokHareket.lemSrasnaGre1Click(Sender: TObject);
var
        yer,yer1: pointer;
begin
    {    StokHesapProc.ParamByName('STOKNO_IN').AsInteger := DMRStok.StokHareketIBQSTOKNO.AsInteger;
        StokHesapProc.Prepare;
        StokHesapProc.ExecProc;
        yer:= DMStok.StokGrupKartIBQ.GetBookmark;
        yer1 := DMRStok.StokHareketIBQ.GetBookmark;
        DMRStok.StokHareketIBQ.DisableControls;
        DMStok.StokGrupKartIBQ.DisableControls;
        DMStok.StokGrupKartIBQ.Close;
        DMStok.StokGrupKartIBQ.Open;
        DMStok.StokGrupKartIBQ.GotoBookmark(yer);
        DMRStok.StokHareketIBQ.Close;
        DMRStok.StokHareketIBQ.Open;
        DMRStok.StokHareketIBQ.GotoBookmark(yer1);
        DMStok.StokGrupKartIBQ.EnableControls;
        DMRStok.StokHareketIBQ.EnableControls;  }
end;

procedure TFStokHareket.ariheGre1Click(Sender: TObject);
var
        yer,yer1: pointer;
begin
   {     StokTarihProc.ParamByName('STOKNO_IN').AsInteger := DMRStok.StokHareketIBQSTOKNO.AsInteger;
        StokTarihProc.Prepare;
        StokTarihProc.ExecProc;
        yer:= DMStok.StokGrupKartIBQ.GetBookmark;
        yer1 := DMRStok.StokHareketIBQ.GetBookmark;
        DMRStok.StokHareketIBQ.DisableControls;
        DMStok.StokGrupKartIBQ.DisableControls;
        DMStok.StokGrupKartIBQ.Close;
        DMStok.StokGrupKartIBQ.Open;
        DMStok.StokGrupKartIBQ.GotoBookmark(yer);
        DMRStok.StokHareketIBQ.Close;
        DMRStok.StokHareketIBQ.Open;
        DMRStok.StokHareketIBQ.GotoBookmark(yer1);
        DMStok.StokGrupKartIBQ.EnableControls;
        DMRStok.StokHareketIBQ.EnableControls;  }

end;

procedure TFStokHareket.ncele1Click(Sender: TObject);
begin
{if DMRStok.StokHareketIBQISLEMTUR.AsString = 'Alýþ' then
        begin
                if Application.FindComponent('FAlis') = nil then
                begin
                        Application.CreateForm(TFAlis,FAlis);
                        FAlis.Show;
                end else FAlis.Show;
                CariDM.AlisIBQuery.Open;
                CariDM.AlisBodroIBQuery.Open;
                CariDM.AlisIBQuery.Locate('CAISLKOD',DMRStok.StokHareketIBQCAISLKOD.AsInteger,[]);
        end else if DMRStok.StokHareketIBQISLEMTUR.AsString = 'Satýþ' then
        begin
                if Application.FindComponent('FSatis') = nil then
                begin
                        Application.CreateForm(TFSatis,FSatis);
                        FSatis.Show;
                end else FSatis.Show;
                CariDM.SatisIBQuery.Open;
                CariDM.SatisBodroIBQuery.Open;
                CariDM.SatisIBQuery.Locate('CAISLKOD',DMRStok.StokHareketIBQCAISLKOD.AsInteger,[]);
        end else if DMRStok.StokHareketIBQISLEMTUR.AsString = 'Stok Giriþi' then
        begin
                if Application.FindComponent('FStokGiris') = nil then
                begin
                        Application.CreateForm(TFStokGiris,FStokGiris);
                        FStokGiris.Show;
                end else FStokGiris.Show;
                StokDM.StokGirisIBQuery.Open;
                StokDM.GirisBodroIBQuery.Open;
                StokDM.StokGirisIBQuery.Locate('CAISLKOD',DMRStok.StokHareketIBQCAISLKOD.AsInteger,[]);
        end else if DMRStok.StokHareketIBQISLEMTUR.AsString = 'Stok Çýkýþý' then
        begin
                if Application.FindComponent('FStokCikis') = nil then
                begin
                        Application.CreateForm(TFStokCikis,FStokCikis);
                        FStokCikis.Show;
                end else FStokCikis.Show;
                StokDM.StokCikisIBQuery.Open;
                StokDM.CikisBodroIBQuery.Open;
                StokDM.StokCikisIBQuery.Locate('CAISLKOD',DMRStok.StokHareketIBQCAISLKOD.AsInteger,[]);
        end;        }
end;

procedure TFStokHareket.cxGrid1DBTableView3CustomDrawPartBackground(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
begin
     {  if (DMRStok.StokHareketIBQKAPATMA.AsString='A')  Then
        Begin
                ACanvas.Brush.Color := $00FFFFA8;
                ACanvas.Font.Color := clBlack;
                ACanvas.FillRect(AViewInfo.ContentBounds);
               
                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                        begin
                                if (Column.Field <> DMRStok.StokHareketIBQGIRISMIKTAR) and (Column.Field <> DMRStok.StokHareketIBQCIKISMIKTAR) then
                                ACanvas.TextOut(rect.Right-(Canvas.TextWidth(VirgulGoster(Column.Field.AsFloat))+4),
                                        rect.Top+2,VirgulGoster(Column.Field.AsFloat))
                                else ACanvas.TextOut(rect.Right-(Canvas.TextWidth(FloatToStr(Column.Field.AsFloat))+4),
                                        rect.Top+2,FloatToStr(Column.Field.AsFloat))
                        end
                        else ACanvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+2),
                                        rect.Top+2,Column.Field.AsString);
                end
                else
                Begin
                        if Column.Field.DataType in [ftMemo] then
                                ACanvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                        else ACanvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.AsString);
                end; 
        end;         }
end;

procedure TFStokHareket.cxGrid1DBTableView3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMRStok.StokHareketIBQ.Close;
                DMRStok.StokHareketIBQ.Open;
        end;
end;

procedure TFStokHareket.psDBTreeView1Click(Sender: TObject);
var
        s: TStringList;
begin
        s:= TStringList.Create;
        s.Text := 'select DISTINCT STOKGRUP.STOKODU,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        s.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKODU = STOKKART.STOKODU)');
        s.Add('Order By STOKKART.STOKODU');
        if s.Text <> DMStok.StokGrupKartIBQ.SQL.Text then
        begin
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKODU,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKODU = STOKKART.STOKODU)');
                DMStok.StokGrupKartIBQ.SQL.Add('Order By STOKKART.STOKODU');
        end;
end;

procedure TFStokHareket.psDBTreeView1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
        begin
                DMStok.StokGrupKartIBQ.Open;
                DMRStok.StokHareketIBQ.Open;
        end;

end;

procedure TFStokHareket.psDBTreeView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
        s: TStringList;
begin
        s:= TStringList.Create;
        s.Text := 'select DISTINCT STOKGRUP.STOKODU,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        s.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKODU = STOKKART.STOKODU)');
        s.Add('Order By STOKKART.STOKODU');
        if s.Text <> DMStok.StokGrupKartIBQ.SQL.Text then
        begin
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKODU,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKODU = STOKKART.STOKODU)');
                DMStok.StokGrupKartIBQ.SQL.Add('Order By STOKKART.STOKODU');
        end;

end;

end.

