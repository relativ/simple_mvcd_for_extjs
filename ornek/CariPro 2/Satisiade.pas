unit Satisiade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid,DB, Menus,
  IBCustomDataSet, IBQuery, IBUpdateSQL,QuickRpt, QRCtrls, DBOnlineLookupCombo,
  OnlineButton, OnlineDBDateEdit, OnlineCustomControl, ComCtrls,
  OnlineCheckBox, OnlineDBCheckbox, dfsSplitter, ToolWin, ActnMan,
  ActnCtrls, StdActns, BandActn, ExtActns, ActnList,Math, ImgList;

type
  TFSatisiade = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    Builemikapat1: TMenuItem;
    Busatilemia1: TMenuItem;
    N1: TMenuItem;
    HepsineStoaKaydet1: TMenuItem;
    HibiriniStoakeydetme1: TMenuItem;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    N2: TMenuItem;
    SatrEkle1: TMenuItem;
    SatrSil1: TMenuItem;
    StokEkle1: TMenuItem;
    N3: TMenuItem;
    lemSrasnaGreSrala1: TMenuItem;
    N5: TMenuItem;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    skontolarGster1: TMenuItem;
    N6: TMenuItem;
    FaturaMaxIBQuery: TIBQuery;
    FaturaMaxIBQueryFATURAMAX: TIntegerField;
    ActionManager1: TActionManager;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    CustomizeActionBars1: TCustomizeActionBars;
    FontEdit1: TFontEdit;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    OnlineButton5: TOnlineButton;
    OnlineButton6: TOnlineButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    dfsSplitter1: TdfsSplitter;
    GroupBox2: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit7: TDBOnlineEdit;
    BitBtn8: TOnlineButton;
    DBOnlineEdit11: TDBOnlineEdit;
    OnlineButton3: TOnlineButton;
    OnlineDBCheckbox1: TOnlineDBCheckbox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    OnlineDBDateEdit1: TOnlineDBDateEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel5: TPanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DBOnlineEdit15: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    TabSheet4: TTabSheet;
    GroupBox9: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBOnlineEdit22: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    GroupBox7: TGroupBox;
    Label18: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit16: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    DBOnlineEdit17: TDBOnlineEdit;
    OnlineButton4: TOnlineButton;
    OnlineButton7: TOnlineButton;
    OnlineButton8: TOnlineButton;
    TabSheet5: TTabSheet;
    GroupBox10: TGroupBox;
    Label21: TLabel;
    Label25: TLabel;
    Label8: TLabel;
    DBOnlineEdit18: TDBOnlineEdit;
    DBOnlineEdit25: TDBOnlineEdit;
    OnlineDBDateEdit2: TOnlineDBDateEdit;
    GroupBox11: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    DBOnlineEdit19: TDBOnlineEdit;
    DBOnlineEdit24: TDBOnlineEdit;
    GroupBox12: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DBOnlineEdit27: TDBOnlineEdit;
    DBOnlineEdit28: TDBOnlineEdit;
    TabSheet6: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    GroupBox8: TGroupBox;
    DBRichEdit1: TDBRichEdit;
    Panel11: TPanel;
    TabSheet8: TTabSheet;
    GroupBox13: TGroupBox;
    DBRichEdit2: TDBRichEdit;
    Panel10: TPanel;
    Panel2: TPanel;
    GroupBox14: TGroupBox;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    OnlineDBGrid2: TOnlineDBGrid;
    GroupBox15: TGroupBox;
    OnlineDBCheckbox2: TOnlineDBCheckbox;
    OnlineButton9: TOnlineButton;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    OnlineButton10: TOnlineButton;
    GroupBox16: TGroupBox;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    GroupBox17: TGroupBox;
    OnlineEdit3: TOnlineEdit;
    OnlineEdit4: TOnlineEdit;
    GroupBox18: TGroupBox;
    OnlineEdit5: TOnlineEdit;
    OnlineEdit6: TOnlineEdit;
    GroupBox19: TGroupBox;
    OnlineEdit7: TOnlineEdit;
    OnlineEdit8: TOnlineEdit;
    OnlineButton11: TOnlineButton;
    GroupBox20: TGroupBox;
    OnlineEdit9: TOnlineEdit;
    OnlineEdit10: TOnlineEdit;
    OnlineButton12: TOnlineButton;
    OnlineButton13: TOnlineButton;
    OnlineButton14: TOnlineButton;
    OnlineButton15: TOnlineButton;
    ImageList1: TImageList;
    ActionToolBar2: TActionToolBar;
    ActionToolBar1: TActionToolBar;
    ActionToolBar3: TActionToolBar;
    ActionToolBar4: TActionToolBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineEdit4Change(Sender: TObject);
    procedure OnlineDBGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Builemikapat1Click(Sender: TObject);
    procedure OnlineDBGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Busatilemia1Click(Sender: TObject);
    procedure SatrEkle1Click(Sender: TObject);
    procedure SatrSil1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure StokEkle1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure HepsineStoaKaydet1Click(Sender: TObject);
    procedure HibiriniStoakeydetme1Click(Sender: TObject);
    procedure OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lemSrasnaGreSrala1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CariHesaplikisi1Click(Sender: TObject);
    procedure DBOnlineCombo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineCombo1Exit(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure DBOnlineEdit15Exit(Sender: TObject);
    procedure skontolarGster1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure DBOnlineEdit5Exit(Sender: TObject);
    procedure DBOnlineEdit7Change(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure OnlineDBGrid1Columns16KeyPress(Column: TOnlineColumn;
      var Key: Char);
    procedure OnlineButton3Click(Sender: TObject);
    procedure OnlineDBGrid1Columns7EditButtonClick(Column: TOnlineColumn);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineDBCheckbox1Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Exit(Sender: TObject);
    procedure OnlineButton6Click(Sender: TObject);
    procedure OnlineButton5Click(Sender: TObject);
    procedure OnlineButton4Click(Sender: TObject);
    procedure OnlineButton9Click(Sender: TObject);
    procedure OnlineDBGrid1Columns17KeyPress(Column: TOnlineColumn;
      var Key: Char);
    procedure OnlineButton12Click(Sender: TObject);
    procedure OnlineButton13Click(Sender: TObject);
    procedure OnlineButton14Click(Sender: TObject);
    procedure OnlineButton15Click(Sender: TObject);
    procedure OnlineButton10Click(Sender: TObject);
    procedure OnlineButton11Click(Sender: TObject);
    procedure DBRichEdit1Enter(Sender: TObject);
    procedure DBRichEdit1Exit(Sender: TObject);
    procedure DBRichEdit2Enter(Sender: TObject);
    procedure DBRichEdit2Exit(Sender: TObject);
    procedure FontEdit1Accept(Sender: TObject);
    procedure FontEdit1BeforeExecute(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FSatisiade: TFSatisiade;

implementation

uses AlisSatisDM, CariSecim, Main, StokDM,GelGidSec, FiyatSorgu, CariDM,
  SabitDM, Kopyala, ProcedureDM, DataDM, StokYeri, PersonelSec, ParaBirSec,
  Satis;

{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat(DMAlisSatis.SatisiadeBodroIBQALISTUTAR.DisplayFormat, x);
end;

Procedure Datalari_Ac;
Begin
        if DMAlisSatis.SatisiadeIBQ.Active = false then
        begin
                DMAlisSatis.SatisiadeIBQ.Open;
                DMAlisSatis.SatisiadeBodroIBQ.Open;
                DMAlisSatis.SatisiadeBilgiIBQ.Open;
                if DMSabit.StokYeriIBQ.Active = False Then DMSabit.StokYeriIBQ.Open;
        end;


end;


procedure TFSatisiade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMAlisSatis.SatisiadeIBQ.Close;
        DMAlisSatis.SatisiadeBodroIBQ.Close;
        Action := caFree;
end;

procedure TFSatisiade.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMAlisSatis.SatisiadeIBQ.First;
end;

procedure TFSatisiade.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMAlisSatis.SatisiadeIBQ.Prior;
end;

procedure TFSatisiade.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMAlisSatis.SatisiadeIBQ.Next;
end;

procedure TFSatisiade.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMAlisSatis.SatisiadeIBQ.Last;
end;

procedure TFSatisiade.BitBtn1Click(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBodroIBQ.DisableControls;
        Datalari_Ac;
        DMAlisSatis.SatisiadeIBQ.Append;
        DMAlisSatis.SatisiadeIBQ.Post;
        BitBtn8.SetFocus;
        DMAlisSatis.SatisiadeBodroIBQ.EnableControls;
end;

procedure TFSatisiade.BitBtn2Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.RecordCount>0 Then
        begin
                if (DMAlisSatis.SatisiadeIBQBELGENO.AsString = '') or (DMAlisSatis.SatisiadeIBQBELGENO.AsFloat = 0) then
                begin
                        if Application.MessageBox('Bu Satýþ Ýade Ýþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                        Begin
                                DMAlisSatis.SatisiadeIBQ.Edit;
                                DMAlisSatis.SatisiadeIBQSISTEM.AsInteger := 2;
                                DMAlisSatis.SatisiadeIBQ.Post;
                                DMAlisSatis.SatisiadeIBQ.Close;
                                DMAlisSatis.SatisiadeBodroIBQ.Close;
                        end;
                end else MessageBox(handle,'Faturalandýrýlmýþ Satýþ iadeyi silemezsiniz...','Uyarý',MB_OK);
        end;
end;

procedure TFSatisiade.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFSatisiade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if  (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBDateEdit) then
    begin
    if not (ActiveControl is TDBOnlineCombo) then
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;

end;

procedure TFSatisiade.DBOnlineEdit4Change(Sender: TObject);
begin
        GroupBox6.Caption := ' Dövizli Tutar [ '+DMAlisSatis.SatisiadeIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFSatisiade.OnlineDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
       if (DMAlisSatis.SatisiadeBodroIBQKAPATMA.AsInteger=2) and
                ((DMAlisSatis.SatisiadeBodroIBQALISTUTAR.AsString<>'') or
                        (DMAlisSatis.SatisiadeBodroIBQSATISTUTAR.AsString<>'') or
                        (DMAlisSatis.SatisiadeBodroIBQMIKTAR.AsString<>''))  Then
        Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                        begin
                                if (Column.Field <> DMAlisSatis.SatisiadeBodroIBQGIRISMIKTAR) and (Column.Field <> DMAlisSatis.SatisiadeBodroIBQCIKISMIKTAR) then
                                OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(VirgulGoster(Column.Field.AsFloat))+4),
                                        rect.Top+2,VirgulGoster(Column.Field.AsFloat))
                                else OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(FloatToStr(Column.Field.AsFloat))+4),
                                        rect.Top+2,FloatToStr(Column.Field.AsFloat))
                        end
                        else OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+2),
                                        rect.Top+2,Column.Field.AsString);
                end
                else
                Begin
                        if Column.Field.DataType in [ftMemo] then
                                OnlineDBGrid1.Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                        else OnlineDBGrid1.Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.AsString);
                end;
        end;


end;

procedure TFSatisiade.Builemikapat1Click(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBodroIBQ.edit;
        DMAlisSatis.SatisiadeBodroIBQKAPATMA.AsInteger:=2;
        DMAlisSatis.SatisiadeBodroIBQ.Post;
END;


procedure TFSatisiade.Busatilemia1Click(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBodroIBQ.edit;
        DMAlisSatis.SatisiadeBodroIBQKAPATMA.AsInteger:=1;
        DMAlisSatis.SatisiadeBodroIBQ.Post;
end;

procedure TFSatisiade.OnlineDBGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
        if DMAlisSatis.SatisiadeIBQCARIHESAPILISKI.AsString ='1' Then
        Begin
        if (DMAlisSatis.SatisiadeBodroIBQKAPATMA.AsInteger=1) Then
        Begin
                Busatilemia1.Visible:=False;
                Builemikapat1.Visible := True;
                HepsineStoaKaydet1.Visible := True;
                HibiriniStoakeydetme1.Visible := False;
        end else
        Begin
                Busatilemia1.Visible:=True;
                Builemikapat1.Visible := False;
                HepsineStoaKaydet1.Visible := False;
                HibiriniStoakeydetme1.Visible := True;
        end;
        end;
        if (DMAlisSatis.SatisiadeBodroIBQGIRISMIKTAR.AsFloat>0) or (DMAlisSatis.SatisiadeBodroIBQALISTUTAR.AsFloat>0) Then
                SatrSil1.Visible:=True else SatrSil1.Visible:=False;

end;

procedure TFSatisiade.OnlineDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if (Key=#13) Then
        Begin
                if (DMAlisSatis.SatisiadeBodroIBQ.Modified=True ) Then
                        DMAlisSatis.SatisiadeBodroIBQ.Post;
                OnlineDBGrid1.EditorMode :=True;
                if BarkodluAlis = True Then
                Begin
                        BarkodluAlis := False;
                        DMAlisSatis.SatisiadeBodroIBQ.Append;
                end;
        end;


end;



procedure TFSatisiade.SatrEkle1Click(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBodroIBQ.Append;
end;

procedure TFSatisiade.SatrSil1Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeBodroIBQ.RecordCount>0 Then
        if Application.MessageBox('Bu satýrý silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
        Begin
                DMAlisSatis.SatisiadeBodroIBQ.Delete;
                if (DMAlisSatis.SatisiadeBodroIBQ.Modified=True ) Then
                        DMAlisSatis.SatisiadeBodroIBQ.Post;
        end;
end;

procedure TFSatisiade.BitBtn8Click(Sender: TObject);
begin
        if (DMAlisSatis.SatisiadeIBQ.Active) and (DMAlisSatis.SatisiadeBodroIBQ.Active) then
        begin
               FCariSecim.DataSet := DMAlisSatis.SatisiadeIBQ;
               FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFSatisiade.StokEkle1Click(Sender: TObject);
begin
                DMStok.StokGrupKartIBQ.Close;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
                if Application.FindComponent('FFiyatSorgu') = nil then
                begin
                        Application.CreateForm(TFFiyatSorgu,FFiyatSorgu);
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Giriþ';
                        FFiyatSorgu.DataSet := DMAlisSatis.SatisiadeBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end else begin
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Giriþ';
                        FFiyatSorgu.DataSet := DMAlisSatis.SatisiadeBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end;
end;

procedure TFSatisiade.BitBtn4Click(Sender: TObject);
begin   {
if DMAlisSatis.SatisiadeIBQTAHSILAT.AsFloat>0 Then
Begin
        SabitDM.ilceIBQuery.Open;
        SabitDM.ilIBQuery.Open;
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMAlisSatis.SatisiadeIBQCARIADI.AsString +' '+DMAlisSatis.SatisiadeIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMAlisSatis.SatisiadeIBQCARIKOD.AsString,[]) Then
        Begin
                if CariDM.CariKartIBQueryMAHALLE.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=CariDM.CariKartIBQueryMAHALLE.AsString +' ';
                if CariDM.CariKartIBQueryCADDE.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQueryCADDE.AsString +' ';
                if CariDM.CariKartIBQuerySOKAK.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQuerySOKAK.AsString +' ';
                if CariDM.CariKartIBQueryAPARTMAN.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQueryAPARTMAN.AsString +' ';
                if CariDM.CariKartIBQueryNOSU.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQueryNOSU.AsString +' ';
                if SabitDM.ilceIBQuery.Locate('ILCEKOD', CariDM.CariKartIBQueryILCEKOD.AsString,[]) Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + '      '+SabitDM.ilceIBQueryILCEADI.AsString +' / ';
                if SabitDM.ilIBQuery.Locate('SEHIRKOD', CariDM.CariKartIBQuerySEHIRKOD.AsString,[]) Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + SabitDM.ilIBQuerySEHIRADI.AsString ;

                TQRLabel(FEvrak.Report.FindComponent('VergiDairesi')).Caption :=CariDM.CariKartIBQueryVERDAIRE.AsString;
                TQRLabel(FEvrak.Report.FindComponent('VergiNo')).Caption :=CariDM.CariKartIBQueryVERGINO.AsString;

        end else begin
                TQRLabel(FEvrak.Report.FindComponent('VergiDairesi')).Caption :=' ';
                TQRLabel(FEvrak.Report.FindComponent('VergiNo')).Caption :=' ';
        end;
        FEvrak.Report.PreviewModal;
end else  Application.MessageBox('Yazdýrýlcak bir fatura tutarý bulunamadý','          Uyarý Mesajý', mb_OK);   }
end;

procedure TFSatisiade.BitBtn5Click(Sender: TObject);
begin             {
if DMAlisSatis.SatisiadeIBQBELGENO.AsInteger > 0 then
if MessageBox(handle,'Bu fatura daha önceden yazýlmaþ tekrar yazdýrmak ister misiniz?','Uyarý',MB_YESNO)= mrNo then
        Abort;
        SabitDM.KullanFormIBQuery.Open;
        SabitDM.ilceIBQuery.Open;
        SabitDM.ilIBQuery.Open;
        SabitDM.KullanFormIBQuery.First;
        repeat
                if SabitDM.KullanFormIBQueryFORMADI.value='Alýþ Faturasý' then FKullanici.SetDefaultPrinter(SabitDM.KullanFormIBQueryYAZICI.Value);
                SabitDM.KullanFormIBQuery.Next;
        until (SabitDM.KullanFormIBQueryFORMADI.value='Alýþ Faturasý')or(SabitDM.KullanFormIBQuery.Eof);

if DMAlisSatis.SatisiadeIBQTAHSILAT.AsFloat>0 Then
Begin

        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMAlisSatis.SatisiadeIBQCARIADI.AsString +' '+DMAlisSatis.SatisiadeIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMAlisSatis.SatisiadeIBQCARIKOD.AsString,[]) Then
        Begin
                if CariDM.CariKartIBQueryMAHALLE.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=CariDM.CariKartIBQueryMAHALLE.AsString +' ';
                if CariDM.CariKartIBQueryCADDE.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQueryCADDE.AsString +' ';
                if CariDM.CariKartIBQuerySOKAK.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQuerySOKAK.AsString +' ';
                if CariDM.CariKartIBQueryAPARTMAN.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQueryAPARTMAN.AsString +' ';
                if CariDM.CariKartIBQueryNOSU.AsString<>'' Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + CariDM.CariKartIBQueryNOSU.AsString +' ';
                if SabitDM.ilceIBQuery.Locate('ILCEKOD', CariDM.CariKartIBQueryILCEKOD.AsString,[]) Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + '      '+SabitDM.ilceIBQueryILCEADI.AsString +' / ';
                if SabitDM.ilIBQuery.Locate('SEHIRKOD', CariDM.CariKartIBQuerySEHIRKOD.AsString,[]) Then
                        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :=TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption + SabitDM.ilIBQuerySEHIRADI.AsString ;

                TQRLabel(FEvrak.Report.FindComponent('VergiDairesi')).Caption :=CariDM.CariKartIBQueryVERDAIRE.AsString;
                TQRLabel(FEvrak.Report.FindComponent('VergiNo')).Caption :=CariDM.CariKartIBQueryVERGINO.AsString;
        end else begin
                TQRLabel(FEvrak.Report.FindComponent('VergiDairesi')).Caption :=' ';
                TQRLabel(FEvrak.Report.FindComponent('VergiNo')).Caption :=' ';
        end;
        FEvrak.Report.Print;
end else  Application.MessageBox('Yazdýrýlcak bir fatura tutarý bulunamadý','          Uyarý Mesajý', mb_OK);  }
end;

procedure TFSatisiade.HepsineStoaKaydet1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMAlisSatis.SatisiadeBodroIBQ.GetBookmark;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMKOD_IN').AsInteger := DMAlisSatis.SatisiadeBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMADI').AsString := 'ALISSATIS';
        DMProcedure.TumunuStokKaydetProc.Prepare;
        DMProcedure.TumunuStokKaydetProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMAlisSatis.SatisiadeBodroIBQ.Close;
        DMAlisSatis.SatisiadeBodroIBQ.Open;
        DMAlisSatis.SatisiadeBodroIBQ.GotoBookmark(yer);

end;

procedure TFSatisiade.HibiriniStoakeydetme1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMAlisSatis.SatisiadeBodroIBQ.GetBookmark;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMKOD_IN').AsInteger := DMAlisSatis.SatisiadeBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMADI').AsString := 'ALISSATIS';
        DMProcedure.TumuStokSilProc.Prepare;
        DMProcedure.TumuStokSilProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMAlisSatis.SatisiadeBodroIBQ.Close;
        DMAlisSatis.SatisiadeBodroIBQ.Open;
        DMAlisSatis.SatisiadeBodroIBQ.GotoBookmark(yer);

end;

procedure TFSatisiade.OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMcari.AktifCariIBQ.Close;
                DMcari.AktifCariIBQ.Open;
        end;
end;

procedure TFSatisiade.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBodroIBQ.SQL.Text := 'select * from CARIISLEM Where ISLEMKOD=:ISLEMKOD';
        DMAlisSatis.SatisiadeBodroIBQ.SQL.Add('Order by ISLEMKOD ASC');
        DMAlisSatis.SatisiadeBodroIBQ.Open;

end;

procedure TFSatisiade.FormDestroy(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
        DMAlisSatis.SatisiadeIBQ.Close;
        DMAlisSatis.SatisiadeBodroIBQ.Close;
end;

procedure TFSatisiade.CariHesaplikisi1Click(Sender: TObject);
begin
    {    if CariHesaplikisi1.Checked=True Then
        Begin
                DMAlisSatis.SatisiadeIBQ.Edit;
                DMAlisSatis.SatisiadeIBQCARIHESAPILISKI.AsString :='0';
                DMAlisSatis.SatisiadeIBQ.Post;
                CariHesaplikisi1.Checked:=False;
        yer := DMAlisSatis.SatisiadeBodroIBQ.GetBookmark;
        StokDM.TumuStokSilProc.ParamByName('CAISLKOD_IN').AsInteger := DMAlisSatis.SatisiadeBodroIBQCAISLKOD.AsInteger;
        StokDM.TumuStokSilProc.Prepare;
        StokDM.TumuStokSilProc.ExecProc;
        CariDM.IBTransaction1.CommitRetaining;
        DMAlisSatis.SatisiadeBodroIBQ.Close;
        DMAlisSatis.SatisiadeBodroIBQ.Open;
        DMAlisSatis.SatisiadeBodroIBQ.GotoBookmark(yer);
                Busatilemia1.Visible:=False;
                Builemikapat1.Visible := False;
                HepsineStoaKaydet1.Visible := False;
                HibiriniStoakeydetme1.Visible := False;
        end else
        Begin
                DMAlisSatis.SatisiadeIBQ.Edit;
                DMAlisSatis.SatisiadeIBQCARIHESAPILISKI.AsString :='1';
                DMAlisSatis.SatisiadeIBQ.Post;
                CariHesaplikisi1.Checked := True;
        end;     }
end;

procedure TFSatisiade.DBOnlineCombo1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                if DMAlisSatis.SatisiadeIBQ.Modified then
                      DMAlisSatis.SatisiadeIBQ.Post;
        end;
end;

procedure TFSatisiade.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
        DMAlisSatis.SatisiadeIBQD_TAHSILAT.DisplayFormat := '###,###.0 '+ DMAlisSatis.SatisiadeIBQC_CARIPARABIRIM.AsString;
//        DMAlisSatis.SatisiadeIBQD_TAHKDVTUTAR.DisplayFormat := '###,###.0 '+ DMAlisSatis.SatisiadeIBQPARABIRIMI.AsString;
//        DMAlisSatis.SatisiadeIBQD_TAHTUTAR.DisplayFormat := '###,###.0 '+ DMAlisSatis.SatisiadeIBQPARABIRIMI.AsString;
        GroupBox6.Caption := ' Dövizli Tutar ['+DMAlisSatis.SatisiadeIBQC_PARABIRIMI.AsString+']';
end;

procedure TFSatisiade.OnlineButton1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
        DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
        DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
        DMSabit.GGSecimIBQ.Open;
        FStokYeri.DataSet := DMAlisSatis.SatisiadeIBQ;
        FStokYeri.BitBtn3.Visible := true;
        FStokYeri.Show;
end;

procedure TFSatisiade.DBOnlineEdit15Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
end;

procedure TFSatisiade.skontolarGster1Click(Sender: TObject);
begin
        if skontolarGster1.Checked then
        begin
                skontolarGster1.Checked := false;
                OnlineDBGrid1.Columns[8].Visible := false;
                OnlineDBGrid1.Columns[9].Visible := false;
                OnlineDBGrid1.Columns[10].Visible := false;
                OnlineDBGrid1.Columns[11].Visible := false;
        end else begin
                OnlineDBGrid1.Columns[8].Visible := true;
                OnlineDBGrid1.Columns[9].Visible := true;
                OnlineDBGrid1.Columns[10].Visible := true;
                OnlineDBGrid1.Columns[11].Visible := true;
                skontolarGster1.Checked := true;
        end;
end;

procedure TFSatisiade.OnlineButton2Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMAlisSatis.SatisiadeIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFSatisiade.DBOnlineEdit5Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
end;

procedure TFSatisiade.DBOnlineEdit7Change(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQC_CARIADI.AsString<>'' Then
                Panel2.Caption := 'Satýþ Ýade [ '+DMAlisSatis.SatisiadeIBQC_CARIADI.AsString + ' ]'
        else Panel2.Caption := 'Satýþ Ýade';
end;

procedure TFSatisiade.GroupBox3Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
end;

procedure TFSatisiade.OnlineDBGrid1Columns16KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade <> '' then
                begin
                        Vade := DMAlisSatis.SatisiadeIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade := '';
                        DMAlisSatis.SatisiadeBodroIBQ.Edit;
                        DMAlisSatis.SatisiadeBodroIBQVADE.AsDateTime := Vade;
                        DMAlisSatis.SatisiadeBodroIBQ.Post;
                end;
        end;

end;

procedure TFSatisiade.OnlineButton3Click(Sender: TObject);
begin
        if (DMAlisSatis.SatisiadeIBQCARIKOD.AsInteger > 0) or (DMAlisSatis.SatisiadeIBQCARINO.AsInteger > 0) then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Satýþ Ýadenin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMAlisSatis.SatisiadeIBQ.Edit;
                DMAlisSatis.SatisiadeIBQCARIKOD.AsInteger:=0;
                DMAlisSatis.SatisiadeIBQCARINO.AsInteger := 0;
                DMAlisSatis.SatisiadeIBQ.Post;
        end;
end;

procedure TFSatisiade.OnlineDBGrid1Columns7EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMAlisSatis.SatisiadeBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFSatisiade.GroupBox1Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified Then
                DMAlisSatis.SatisiadeIBQ.Post;
end;

procedure TFSatisiade.OnlineDBCheckbox1Click(Sender: TObject);
begin
        if OnlineDBCheckbox1.Caption = 'KDV Dahil' Then
                OnlineDBCheckbox1.Caption := 'KDV Hariç'
        else OnlineDBCheckbox1.Caption := 'KDV Dahil';
end;

procedure TFSatisiade.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
        GroupBox6.Caption := ' Dövizli Tutar [ '+DMAlisSatis.SatisiadeIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFSatisiade.DBOnlineLookupCombo1Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Modified then
                DMAlisSatis.SatisiadeIBQ.Post;
end;

procedure TFSatisiade.OnlineButton6Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeBodroIBQ.RecordCount >0 Then
        Begin
                FKopyala.Show;
                DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMAlisSatis.SatisiadeIBQISLEMKOD.AsInteger;
                DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Satýþ';
                DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
                DMProcedure.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
                DMProcedure.CeviriProc.Prepare;
                DMProcedure.CeviriProc.ExecProc;

                DMAlisSatis.SatisIBQ.Open;
                DMAlisSatis.SatisBodroIBQ.Open;
                DMAlisSatis.SatisIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD3_IN').AsInteger,[]);
                DMData.IBTCariPro.CommitRetaining;
                if Application.FindComponent('FSatis') = nil then
                Application.CreateForm(TFSatis,FSatis);
                FSatis.Show;
        end;
end;


procedure TFSatisiade.OnlineButton5Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeBodroIBQ.RecordCount >0 Then
        Begin
                FKopyala.Show;
                DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMAlisSatis.SatisiadeIBQISLEMKOD.AsInteger;
                DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Alýþ';
                DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
                DMProcedure.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
                DMProcedure.CeviriProc.Prepare;
                DMProcedure.CeviriProc.ExecProc;
                DMAlisSatis.SatisiadeIBQ.Close;
                DMAlisSatis.SatisiadeIBQ.Open;
                DMAlisSatis.SatisiadeBodroIBQ.Open;
                DMAlisSatis.SatisiadeIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD3_IN').AsInteger,[]);
                DMData.IBTCariPro.CommitRetaining;
        end;
end;

procedure TFSatisiade.OnlineButton4Click(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMAlisSatis.SatisiadeIBQ;
                FPersonelSec.ShowModal;
        end;
end;



procedure TFSatisiade.OnlineButton9Click(Sender: TObject);
var
        TopVade,TopFiyat,OrtVade: real;
begin
        if (DMAlisSatis.SatisiadeBodroIBQ.Active = true) and (DMAlisSatis.SatisiadeBodroIBQ.RecordCount > 0) then
        begin
                DMAlisSatis.SatisiadeBodroIBQ.First;
                while not DMAlisSatis.SatisiadeBodroIBQ.Eof do
                begin
                        TopVade := TopVade + (DMAlisSatis.SatisiadeBodroIBQALISTUTAR.AsFloat * (DMAlisSatis.SatisiadeBodroIBQVADE.AsDateTime - DMAlisSatis.SatisiadeIBQTARIH.AsDateTime));
                        TopFiyat := TopFiyat + DMAlisSatis.SatisiadeBodroIBQALISTUTAR.AsFloat;
                        DMAlisSatis.SatisiadeBodroIBQ.Next;
                end;
                OrtVade := TopVade / TopFiyat;
                OrtVade := OrtVade + (DMAlisSatis.SatisiadeIBQTARIH.AsFloat) ;
                DMAlisSatis.SatisiadeIBQ.Edit;
                DMAlisSatis.SatisiadeIBQVADE.AsString := DateToStr((OrtVade));
                DMAlisSatis.SatisiadeIBQ.Post;
        end;

 {
var
        OrtVade,ToplamVade,toplamkayit: real;
        OrtVadeTarih: TDateTime;
        yer: pointer;
        i: integer;
begin
        ToplamVade := 0;
        toplamkayit := 0;
        yer :=DMAlisSatis.SatisiadeBodroIBQ.GetBookmark;
        DMAlisSatis.SatisiadeBodroIBQ.DisableControls;
        DMAlisSatis.SatisiadeBodroIBQ.First;
        for i := 0 to DMAlisSatis.SatisiadeBodroIBQ.RecordCount do
        begin
      //  while not DMAlisSatis.SatisiadeBodroIBQ.Eof do
       // begin
                ToplamVade := ToplamVade + DMAlisSatis.SatisiadeBodroIBQVADE.AsDateTime;
                toplamkayit := toplamkayit + 1;
                DMAlisSatis.SatisiadeBodroIBQ.Next;
        end;
        DMAlisSatis.SatisiadeBodroIBQ.GotoBookmark(yer);
        DMAlisSatis.SatisiadeBodroIBQ.EnableControls;
        OrtVade := ToplamVade / toplamkayit;
        OrtVadeTarih := OrtVade;
        DMAlisSatis.SatisiadeIBQ.Edit;
        DMAlisSatis.SatisiadeIBQVADE.AsString :=DateToStr(OrtVadeTarih);
        DMAlisSatis.SatisiadeIBQ.Post;

               }
end;

procedure TFSatisiade.OnlineDBGrid1Columns17KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade <> '' then
                begin
                        Vade := DMAlisSatis.SatisiadeBodroIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade := '';
                        DMAlisSatis.SatisiadeBodroIBQ.Edit;
                        DMAlisSatis.SatisiadeBodroIBQVADE.AsDateTime := Vade;
                        DMAlisSatis.SatisiadeBodroIBQ.Post;
                end;
        end;

end;

procedure TFSatisiade.OnlineButton12Click(Sender: TObject);
begin
        FCariSecim.DataSet := nil;
        FCariSecim.IslemNo := OnlineEdit3;
        FCariSecim.ShowModal;

end;

procedure TFSatisiade.OnlineButton13Click(Sender: TObject);
begin
        FCariSecim.DataSet := nil;
        FCariSecim.IslemNo := OnlineEdit4;
        FCariSecim.ShowModal;
end;

procedure TFSatisiade.OnlineButton14Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit9;
        FPersonelSec.ShowModal;
end;

procedure TFSatisiade.OnlineButton15Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit10;
        FPersonelSec.ShowModal;
end;

procedure TFSatisiade.OnlineButton10Click(Sender: TObject);
begin
        DMAlisSatis.SatisiadeIBQ.DisableControls;
        DMAlisSatis.SatisiadeIBQ.SQL.Text := 'select * from ALISSATIS where ISLEMTURKOD=42 and SISTEM<>2';
        DMAlisSatis.SatisiadeIBQ.SQL.Add('AND TARIH >='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH <='+#39+DateToStr(DateTimePicker2.Date)+#39);
        if (OnlineEdit1.Text <> '') and (OnlineEdit2.Text <> '') then
                DMAlisSatis.SatisiadeIBQ.SQL.Add('and ALISSATISNO >='+IntToStr(OnlineEdit1.Tag)+' and ALISSATISNO <='+IntToStr(OnlineEdit2.Tag));
        if (OnlineEdit3.Text <> '') and (OnlineEdit4.Text <> '') then
                DMAlisSatis.SatisiadeIBQ.SQL.Add('and CARIKOD >='+IntToStr(OnlineEdit3.Tag)+' and CARIKOD <='+IntToStr(OnlineEdit4.Tag));
        if (OnlineEdit5.Text <> '') and (OnlineEdit6.Text <> '') then
                DMAlisSatis.SatisiadeIBQ.SQL.Add('and BELGENO >='+IntToStr(OnlineEdit5.Tag)+' and BELGENO <='+IntToStr(OnlineEdit6.Tag));
        if (OnlineEdit7.Text <> '') and (OnlineEdit8.Text <> '') then
                DMAlisSatis.SatisiadeIBQ.SQL.Add('and EVRAKNO >='+IntToStr(OnlineEdit7.Tag)+' and EVRAKNO <='+IntToStr(OnlineEdit8.Tag));
        if (OnlineEdit9.Text <> '') and (OnlineEdit10.Text <> '') then
                DMAlisSatis.SatisiadeIBQ.SQL.Add('and PERSONELKOD >='+IntToStr(OnlineEdit9.Tag)+' and PERSONELKOD <='+IntToStr(OnlineEdit10.Tag));
        DMAlisSatis.SatisiadeIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
        DMAlisSatis.SatisiadeIBQ.Open;
        DMAlisSatis.SatisiadeBodroIBQ.Open;
        DMAlisSatis.SatisiadeIBQ.EnableControls;
end;

procedure TFSatisiade.OnlineButton11Click(Sender: TObject);
begin
        OnlineEdit1.Text := '';
        OnlineEdit2.Text := '';
        OnlineEdit3.Text := '';
        OnlineEdit4.Text := '';
        OnlineEdit5.Text := '';
        OnlineEdit6.Text := '';
        OnlineEdit7.Text := '';
        OnlineEdit8.Text := '';
        OnlineEdit9.Text := '';
        OnlineEdit10.Text := '';

        OnlineEdit1.Tag := 0;
        OnlineEdit2.Tag := 0;
        OnlineEdit3.Tag := 0;
        OnlineEdit4.Tag := 0;
        OnlineEdit5.Tag := 0;
        OnlineEdit6.Tag := 0;
        OnlineEdit7.Tag := 0;
        OnlineEdit8.Tag := 0;
        OnlineEdit9.Tag := 0;
        OnlineEdit10.Tag := 0;
        DMAlisSatis.SatisiadeIBQ.DisableControls;
        DMAlisSatis.SatisiadeIBQ.SQL.Text := 'select * from ALISSATIS where ISLEMTURKOD=42 and SISTEM<>2';
        DMAlisSatis.SatisiadeIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
        DMAlisSatis.SatisiadeIBQ.Open;
        DMAlisSatis.SatisiadeIBQ.EnableControls;
        
end;

procedure TFSatisiade.DBRichEdit1Enter(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBilgiIBQ.Edit;
end;

procedure TFSatisiade.DBRichEdit1Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeBilgiIBQ.Modified then
                DMAlisSatis.SatisiadeBilgiIBQ.Post;
end;

procedure TFSatisiade.DBRichEdit2Enter(Sender: TObject);
begin
        DMAlisSatis.SatisiadeBilgiIBQ.Edit;
end;

procedure TFSatisiade.DBRichEdit2Exit(Sender: TObject);
begin
        if DMAlisSatis.SatisiadeBilgiIBQ.Modified then
                DMAlisSatis.SatisiadeBilgiIBQ.Post;
end;

procedure TFSatisiade.FontEdit1Accept(Sender: TObject);
begin
        if ActiveControl is TDBRichEdit then
         begin
           if TDBRichEdit(ActiveControl).SelText <> '' then
            begin
               TDBRichEdit(ActiveControl).SelAttributes.Name := FontEdit1.Dialog.Font.Name;
               TDBRichEdit(ActiveControl).SelAttributes.Charset := FontEdit1.Dialog.Font.Charset;
               TDBRichEdit(ActiveControl).SelAttributes.Color := FontEdit1.Dialog.Font.Color;
               TDBRichEdit(ActiveControl).SelAttributes.Pitch := FontEdit1.Dialog.Font.Pitch;
               TDBRichEdit(ActiveControl).SelAttributes.Size := FontEdit1.Dialog.Font.Size;
               TDBRichEdit(ActiveControl).SelAttributes.Style := FontEdit1.Dialog.Font.Style;
            end else begin
               TDBRichEdit(ActiveControl).Font.Name := FontEdit1.Dialog.Font.Name;
               TDBRichEdit(ActiveControl).Font.Charset := FontEdit1.Dialog.Font.Charset;
               TDBRichEdit(ActiveControl).Font.Color := FontEdit1.Dialog.Font.Color;
               TDBRichEdit(ActiveControl).Font.Pitch := FontEdit1.Dialog.Font.Pitch;
               TDBRichEdit(ActiveControl).Font.Size := FontEdit1.Dialog.Font.Size;
               TDBRichEdit(ActiveControl).Font.Style := FontEdit1.Dialog.Font.Style;
            end;
         end;
end;

procedure TFSatisiade.FontEdit1BeforeExecute(Sender: TObject);
begin
        if ActiveControl is TDBRichEdit then
         begin
           if TDBRichEdit(ActiveControl).SelText <> '' then
            begin
               FontEdit1.Dialog.Font.Name := TDBRichEdit(ActiveControl).SelAttributes.Name;
               FontEdit1.Dialog.Font.Charset := TDBRichEdit(ActiveControl).SelAttributes.Charset;
               FontEdit1.Dialog.Font.Color := TDBRichEdit(ActiveControl).SelAttributes.Color;
               FontEdit1.Dialog.Font.Pitch := TDBRichEdit(ActiveControl).SelAttributes.Pitch;
               FontEdit1.Dialog.Font.Size := TDBRichEdit(ActiveControl).SelAttributes.Size;
               FontEdit1.Dialog.Font.Style := TDBRichEdit(ActiveControl).SelAttributes.Style;

            end else begin
               FontEdit1.Dialog.Font := TDBRichEdit(ActiveControl).Font;
            end;
         end;
end;

procedure TFSatisiade.TabSheet2Show(Sender: TObject);
begin
        DateTimePicker1.DateTime := BugununTarihi;
        DateTimePicker2.DateTime := BugununTarihi;
end;

procedure TFSatisiade.FormShow(Sender: TObject);
begin
        DMAlisSatis.AlisiadeIBQ.SQL.Text := 'select * from ALISSATIS ';
        DMAlisSatis.AlisiadeIBQ.SQL.Add('where ISLEMTURKOD=42 and SISTEM<>2');
        DMAlisSatis.AlisiadeIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
end;

end.
