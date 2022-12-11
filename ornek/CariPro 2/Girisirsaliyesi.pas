unit Girisirsaliyesi;

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
  TFGirisIrsaliyesi = class(TForm)
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
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
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
    procedure OnlineEdit3Change(Sender: TObject);
    procedure OnlineEdit4Change(Sender: TObject);
    procedure OnlineEdit9Change(Sender: TObject);
    procedure OnlineEdit10Change(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FGirisIrsaliyesi: TFGirisIrsaliyesi;

implementation

uses irsaliyeDM, CariSecim, Main, StokDM,GelGidSec, FiyatSorgu, CariDM,
  SabitDM, Kopyala, ProcedureDM, DataDM, StokYeri, PersonelSec, ParaBirSec;

{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat(DMirsaliye.GirisBodroIBQGIRISTUTAR.DisplayFormat, x);
end;

Procedure Datalari_Ac;
Begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Active = false then
        begin
                DMirsaliye.GirisIrsaliyesiIBQ.Open;
                DMirsaliye.GirisBodroIBQ.Open;
                DMirsaliye.GAltUstBilgiIBQ.Open;
                if DMSabit.StokYeriIBQ.Active = False Then DMSabit.StokYeriIBQ.Open;
        end;


end;


procedure TFGirisIrsaliyesi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMirsaliye.GirisIrsaliyesiIBQ.Close;
        DMirsaliye.GirisBodroIBQ.Close;
        Action := caFree;
end;

procedure TFGirisIrsaliyesi.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMirsaliye.GirisIrsaliyesiIBQ.First;
end;

procedure TFGirisIrsaliyesi.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMirsaliye.GirisIrsaliyesiIBQ.Prior;
end;

procedure TFGirisIrsaliyesi.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMirsaliye.GirisIrsaliyesiIBQ.Next;
end;

procedure TFGirisIrsaliyesi.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMirsaliye.GirisIrsaliyesiIBQ.Last;
end;

procedure TFGirisIrsaliyesi.BitBtn1Click(Sender: TObject);
begin
        PageControl1.ActivePage := TabSheet1;
        DMirsaliye.GirisBodroIBQ.DisableControls;
        Datalari_Ac;
        DMirsaliye.GirisIrsaliyesiIBQ.Append;
        DMirsaliye.GirisIrsaliyesiIBQ.Post;
        BitBtn8.SetFocus;
        DMirsaliye.GirisBodroIBQ.EnableControls;
end;

procedure TFGirisIrsaliyesi.BitBtn2Click(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.RecordCount>0 Then
        begin
                if (DMirsaliye.GirisIrsaliyesiIBQBELGENO.AsString = '') or (DMirsaliye.GirisIrsaliyesiIBQBELGENO.AsFloat = 0) then
                begin
                        if Application.MessageBox('Bu Stok Ýþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                        begin
                                DMirsaliye.GirisIrsaliyesiIBQ.Edit;
                                DMirsaliye.GirisIrsaliyesiIBQSISTEM.AsInteger := 2;
                                DMirsaliye.GirisIrsaliyesiIBQ.Post;
                        end;
                end else MessageBox(handle,'Faturalandýrýlmýþ alýþý silemezsiniz...','Uyarý',MB_OK);
        end;
end;

procedure TFGirisIrsaliyesi.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFGirisIrsaliyesi.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFGirisIrsaliyesi.DBOnlineEdit4Change(Sender: TObject);
begin
        GroupBox6.Caption := ' Dövizli Tutar ['+DMirsaliye.GirisIrsaliyesiIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFGirisIrsaliyesi.OnlineDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
       if (DMirsaliye.GirisBodroIBQKAPATMA.AsInteger=2) and
                ((DMirsaliye.GirisBodroIBQGIRISTUTAR.AsString<>'') or
                        (DMirsaliye.GirisBodroIBQCIKISTUTAR.AsString<>'') or
                        (DMirsaliye.GirisBodroIBQMIKTAR.AsString<>''))  Then
        Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                        begin
                                if (Column.Field <> DMirsaliye.GirisBodroIBQGIRISMIKTAR) and (Column.Field <> DMirsaliye.GirisBodroIBQCIKISMIKTAR) then
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

procedure TFGirisIrsaliyesi.Builemikapat1Click(Sender: TObject);
begin
        DMirsaliye.GirisBodroIBQ.edit;
        DMirsaliye.GirisBodroIBQKAPATMA.AsInteger:=2;
        DMirsaliye.GirisBodroIBQ.Post;
END;

procedure TFGirisIrsaliyesi.Busatilemia1Click(Sender: TObject);
begin
        DMirsaliye.GirisBodroIBQ.edit;
        DMirsaliye.GirisBodroIBQKAPATMA.AsInteger:=1;
        DMirsaliye.GirisBodroIBQ.Post;
end;

procedure TFGirisIrsaliyesi.OnlineDBGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
        if DMirsaliye.GirisIrsaliyesiIBQCARIHESAPILISKI.AsString ='1' Then
        Begin
        if (DMirsaliye.GirisBodroIBQKAPATMA.AsInteger=1) Then
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
        if (DMirsaliye.GirisBodroIBQGIRISMIKTAR.AsFloat>0) or (DMirsaliye.GirisBodroIBQGIRISTUTAR.AsFloat>0) Then
                SatrSil1.Visible:=True else SatrSil1.Visible:=False;

end;

procedure TFGirisIrsaliyesi.OnlineDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if (Key=#13) Then
        Begin
                if (DMirsaliye.GirisBodroIBQ.Modified=True ) Then
                        DMirsaliye.GirisBodroIBQ.Post;
                OnlineDBGrid1.EditorMode :=True;
                if BarkodluGiris = True Then
                Begin
                        BarkodluGiris := False;
                        DMirsaliye.GirisBodroIBQ.Append;
                end;
        end;
end;



procedure TFGirisIrsaliyesi.SatrEkle1Click(Sender: TObject);
begin
        DMirsaliye.GirisBodroIBQ.Append;
end;

procedure TFGirisIrsaliyesi.SatrSil1Click(Sender: TObject);
begin
        if DMirsaliye.GirisBodroIBQ.RecordCount>0 Then
        if Application.MessageBox('Bu satýrý silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
        Begin
                DMirsaliye.GirisBodroIBQ.Delete;
                if (DMirsaliye.GirisBodroIBQ.Modified=True ) Then
                        DMirsaliye.GirisBodroIBQ.Post;
        end;
end;

procedure TFGirisIrsaliyesi.BitBtn8Click(Sender: TObject);
begin
        if (DMirsaliye.GirisIrsaliyesiIBQ.Active) and (DMirsaliye.GirisBodroIBQ.Active) then
        begin
               FCariSecim.DataSet := DMirsaliye.GirisIrsaliyesiIBQ;
               FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFGirisIrsaliyesi.StokEkle1Click(Sender: TObject);
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
                        FFiyatSorgu.DataSet := DMirsaliye.GirisBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end else begin
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Giriþ';
                        FFiyatSorgu.DataSet := DMirsaliye.GirisBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end;
end;

procedure TFGirisIrsaliyesi.BitBtn4Click(Sender: TObject);
begin   {
if DMirsaliye.GirisIrsaliyesiIBQTAHSILAT.AsFloat>0 Then
Begin
        SabitDM.ilceIBQuery.Open;
        SabitDM.ilIBQuery.Open;
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMirsaliye.GirisIrsaliyesiIBQCARIADI.AsString +' '+DMirsaliye.GirisIrsaliyesiIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMirsaliye.GirisIrsaliyesiIBQCARIKOD.AsString,[]) Then
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

procedure TFGirisIrsaliyesi.BitBtn5Click(Sender: TObject);
begin             {
if DMirsaliye.GirisIrsaliyesiIBQBELGENO.AsInteger > 0 then
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

if DMirsaliye.GirisIrsaliyesiIBQTAHSILAT.AsFloat>0 Then
Begin

        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMirsaliye.GirisIrsaliyesiIBQCARIADI.AsString +' '+DMirsaliye.GirisIrsaliyesiIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMirsaliye.GirisIrsaliyesiIBQCARIKOD.AsString,[]) Then
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

procedure TFGirisIrsaliyesi.HepsineStoaKaydet1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMirsaliye.GirisBodroIBQ.GetBookmark;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMKOD_IN').AsInteger := DMirsaliye.GirisBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMADI').AsString := 'IRSALIYE';
        DMProcedure.TumunuStokKaydetProc.Prepare;
        DMProcedure.TumunuStokKaydetProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMirsaliye.GirisBodroIBQ.Close;
        DMirsaliye.GirisBodroIBQ.Open;
        DMirsaliye.GirisBodroIBQ.GotoBookmark(yer);

end;

procedure TFGirisIrsaliyesi.HibiriniStoakeydetme1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMirsaliye.GirisBodroIBQ.GetBookmark;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMKOD_IN').AsInteger := DMirsaliye.GirisBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMADI').AsString := 'IRSALIYE';
        DMProcedure.TumuStokSilProc.Prepare;
        DMProcedure.TumuStokSilProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMirsaliye.GirisBodroIBQ.Close;
        DMirsaliye.GirisBodroIBQ.Open;
        DMirsaliye.GirisBodroIBQ.GotoBookmark(yer);

end;

procedure TFGirisIrsaliyesi.OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMcari.AktifCariIBQ.Close;
                DMcari.AktifCariIBQ.Open;
        end;
end;

procedure TFGirisIrsaliyesi.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMirsaliye.GirisBodroIBQ.SQL.Text := 'select * from IRSALIYE Where ISLEMKOD=:ISLEMKOD';
        DMirsaliye.GirisBodroIBQ.SQL.Add('Order by ISLEMKOD ASC');
        DMirsaliye.GirisBodroIBQ.Open;

end;

procedure TFGirisIrsaliyesi.FormDestroy(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
        DMirsaliye.GirisIrsaliyesiIBQ.Close;
        DMirsaliye.GirisBodroIBQ.Close;
end;

procedure TFGirisIrsaliyesi.CariHesaplikisi1Click(Sender: TObject);
var
        yer: pointer;
begin

end;

procedure TFGirisIrsaliyesi.DBOnlineCombo1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                      DMirsaliye.GirisIrsaliyesiIBQ.Post;
        end;
end;

procedure TFGirisIrsaliyesi.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
        DMirsaliye.GirisIrsaliyesiIBQD_GIRISTUTAR.DisplayFormat := '###,###.0 '+ DMirsaliye.GirisIrsaliyesiIBQC_CARIPARABIRIM.AsString;
//        DMirsaliye.GirisIrsaliyesiIBQD_TAHKDVTUTAR.DisplayFormat := '###,###.0 '+ DMirsaliye.GirisIrsaliyesiIBQPARABIRIMI.AsString;
//        DMirsaliye.GirisIrsaliyesiIBQD_TAHTUTAR.DisplayFormat := '###,###.0 '+ DMirsaliye.GirisIrsaliyesiIBQPARABIRIMI.AsString;
        GroupBox6.Caption := ' Dövizli Tutar ['+DMirsaliye.GirisIrsaliyesiIBQC_PARABIRIMI.AsString+']';
end;

procedure TFGirisIrsaliyesi.OnlineButton1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
        DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
        DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
        DMSabit.GGSecimIBQ.Open;
        FStokYeri.DataSet := DMirsaliye.GirisIrsaliyesiIBQ;
        FStokYeri.BitBtn3.Visible := true;
        FStokYeri.Show;
end;

procedure TFGirisIrsaliyesi.DBOnlineEdit15Exit(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.OnlineButton2Click(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMirsaliye.GirisIrsaliyesiIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFGirisIrsaliyesi.DBOnlineEdit5Exit(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.DBOnlineEdit7Change(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQC_CARIADI.AsString<>'' Then
                Panel2.Caption := 'Giriþ Ýrsaliyesi [ '+DMirsaliye.GirisIrsaliyesiIBQC_CARIADI.AsString + ' ]'
        else Panel2.Caption := 'Giriþ Ýrsaliyesi';
end;

procedure TFGirisIrsaliyesi.GroupBox3Exit(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.OnlineDBGrid1Columns16KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade <> '' then
                begin
                        Vade := DMirsaliye.GirisIrsaliyesiIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade := '';
                        DMirsaliye.GirisBodroIBQ.Edit;
                        DMirsaliye.GirisBodroIBQVADE.AsDateTime := Vade;
                        DMirsaliye.GirisBodroIBQ.Post;
                end;
        end;

end;

procedure TFGirisIrsaliyesi.OnlineButton3Click(Sender: TObject);
begin
        if (DMirsaliye.GirisIrsaliyesiIBQCARIKOD.AsInteger > 0) or (DMirsaliye.GirisIrsaliyesiIBQCARINO.AsInteger > 0) then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Bu Ýþlemin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMirsaliye.GirisIrsaliyesiIBQ.Edit;
                DMirsaliye.GirisIrsaliyesiIBQCARIKOD.AsInteger:=0;
                DMirsaliye.GirisIrsaliyesiIBQCARINO.AsInteger := 0;
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
        end;
end;

procedure TFGirisIrsaliyesi.OnlineDBGrid1Columns7EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMirsaliye.GirisBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFGirisIrsaliyesi.GroupBox1Exit(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified Then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.OnlineDBCheckbox1Click(Sender: TObject);
begin
        if OnlineDBCheckbox1.Caption = 'KDV Dahil' Then
                OnlineDBCheckbox1.Caption := 'KDV Hariç'
        else OnlineDBCheckbox1.Caption := 'KDV Dahil';
end;

procedure TFGirisIrsaliyesi.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
        GroupBox6.Caption := ' Dövizli Tutar ['+DMirsaliye.GirisIrsaliyesiIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFGirisIrsaliyesi.DBOnlineLookupCombo1Exit(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Modified then
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.OnlineButton5Click(Sender: TObject);
var
        yer: pointer;
begin
        FKopyala.Show;
        DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMirsaliye.GirisIrsaliyesiIBQISLEMKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Alýþ';
        DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
        DMProcedure.CeviriProc.Prepare;
        DMProcedure.CeviriProc.ExecProc;
        DMirsaliye.GirisIrsaliyesiIBQ.Close;
        DMirsaliye.GirisIrsaliyesiIBQ.Open;
        DMirsaliye.GirisBodroIBQ.Open;
        DMirsaliye.GirisIrsaliyesiIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD3_IN').AsInteger,[]);
        DMData.IBTCariPro.CommitRetaining;
end;

procedure TFGirisIrsaliyesi.OnlineButton4Click(Sender: TObject);
begin
        if DMirsaliye.GirisIrsaliyesiIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMirsaliye.GirisIrsaliyesiIBQ;
                FPersonelSec.ShowModal;
        end;
end;



procedure TFGirisIrsaliyesi.OnlineButton9Click(Sender: TObject);
var
        TopVade,TopFiyat,OrtVade: real;
begin
        if (DMirsaliye.GirisBodroIBQ.Active = true) and (DMirsaliye.GirisBodroIBQ.RecordCount > 0) then
        begin
                DMirsaliye.GirisBodroIBQ.First;
                while not DMirsaliye.GirisBodroIBQ.Eof do
                begin
                        TopVade := TopVade + (DMirsaliye.GirisBodroIBQGIRISTUTAR.AsFloat * (DMirsaliye.GirisBodroIBQVADE.AsDateTime - DMirsaliye.GirisIrsaliyesiIBQTARIH.AsDateTime));
                        TopFiyat := TopFiyat + DMirsaliye.GirisBodroIBQGIRISTUTAR.AsFloat;
                        DMirsaliye.GirisBodroIBQ.Next;
                end;
                OrtVade := TopVade / TopFiyat;
                OrtVade := OrtVade + (DMirsaliye.GirisIrsaliyesiIBQTARIH.AsFloat) ;
                DMirsaliye.GirisIrsaliyesiIBQ.Edit;
                DMirsaliye.GirisIrsaliyesiIBQVADE.AsString := DateToStr((OrtVade));
                DMirsaliye.GirisIrsaliyesiIBQ.Post;
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
        yer :=DMirsaliye.GirisBodroIBQ.GetBookmark;
        DMirsaliye.GirisBodroIBQ.DisableControls;
        DMirsaliye.GirisBodroIBQ.First;
        for i := 0 to DMirsaliye.GirisBodroIBQ.RecordCount do
        begin
      //  while not DMirsaliye.GirisBodroIBQ.Eof do
       // begin
                ToplamVade := ToplamVade + DMirsaliye.GirisBodroIBQVADE.AsDateTime;
                toplamkayit := toplamkayit + 1;
                DMirsaliye.GirisBodroIBQ.Next;
        end;
        DMirsaliye.GirisBodroIBQ.GotoBookmark(yer);
        DMirsaliye.GirisBodroIBQ.EnableControls;
        OrtVade := ToplamVade / toplamkayit;
        OrtVadeTarih := OrtVade;
        DMirsaliye.GirisIrsaliyesiIBQ.Edit;
        DMirsaliye.GirisIrsaliyesiIBQVADE.AsString :=DateToStr(OrtVadeTarih);
        DMirsaliye.GirisIrsaliyesiIBQ.Post;

               }
end;

procedure TFGirisIrsaliyesi.OnlineDBGrid1Columns17KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade <> '' then
                begin
                        Vade := DMirsaliye.GirisBodroIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade := '';
                        DMirsaliye.GirisBodroIBQ.Edit;
                        DMirsaliye.GirisBodroIBQVADE.AsDateTime := Vade;
                        DMirsaliye.GirisBodroIBQ.Post;
                end;
        end;

end;

procedure TFGirisIrsaliyesi.OnlineButton12Click(Sender: TObject);
begin
        FCariSecim.DataSet := nil;
        FCariSecim.IslemNo := OnlineEdit3;
        FCariSecim.ShowModal;

end;

procedure TFGirisIrsaliyesi.OnlineButton13Click(Sender: TObject);
begin
        FCariSecim.DataSet := nil;
        FCariSecim.IslemNo := OnlineEdit4;
        FCariSecim.ShowModal;
end;

procedure TFGirisIrsaliyesi.OnlineButton14Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit9;
        FPersonelSec.ShowModal;
end;

procedure TFGirisIrsaliyesi.OnlineButton15Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit10;
        FPersonelSec.ShowModal;
end;

procedure TFGirisIrsaliyesi.OnlineButton10Click(Sender: TObject);
begin
        DMirsaliye.GirisIrsaliyesiIBQ.DisableControls;
        DMirsaliye.GirisIrsaliyesiIBQ.SQL.Text := 'select * from IRSALIYE where ISLEMTURKOD=43 AND SISTEM<>2';
        DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('and TARIH >='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH <='+#39+DateToStr(DateTimePicker2.Date)+#39);
        if (OnlineEdit1.Text <> '') and (OnlineEdit2.Text <> '') then
                DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('and IRALIYEISLEMNO >='+OnlineEdit1.Text+' and IRALIYEISLEMNO <='+OnlineEdit2.Text);
        if (OnlineEdit3.Text <> '') and (OnlineEdit4.Text <> '') then
                DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('and CARINO >='+IntToStr(OnlineEdit3.Tag)+' and CARINO <='+IntToStr(OnlineEdit4.Tag));
        if (OnlineEdit5.Text <> '') and (OnlineEdit6.Text <> '') then
                DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('and BELGENO >='+OnlineEdit5.Text+' and BELGENO <='+OnlineEdit6.Text);
        if (OnlineEdit7.Text <> '') and (OnlineEdit8.Text <> '') then
                DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('and EVRAKNO >='+OnlineEdit7.Text+' and EVRAKNO <='+OnlineEdit8.Text);
        if (OnlineEdit9.Text <> '') and (OnlineEdit10.Text <> '') then
                DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('and PERSONELKOD >='+IntToStr(OnlineEdit9.Tag)+' and PERSONELKOD <='+IntToStr(OnlineEdit10.Tag));
        DMirsaliye.GirisIrsaliyesiIBQ.Open;
        DMirsaliye.GirisBodroIBQ.Open;
        DMirsaliye.GirisIrsaliyesiIBQ.EnableControls;
end;

procedure TFGirisIrsaliyesi.OnlineButton11Click(Sender: TObject);
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
        DMirsaliye.GirisIrsaliyesiIBQ.DisableControls;
        DMirsaliye.GirisIrsaliyesiIBQ.SQL.Text := 'select * from IRSALIYE';
        DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('where ISLEMTURKOD =43 AND SISTEM<>2');
        DMirsaliye.GirisIrsaliyesiIBQ.Open;
        DMirsaliye.GirisIrsaliyesiIBQ.EnableControls;
        
end;

procedure TFGirisIrsaliyesi.DBRichEdit1Enter(Sender: TObject);
begin
        DMirsaliye.GAltUstBilgiIBQ.Edit;
end;

procedure TFGirisIrsaliyesi.DBRichEdit1Exit(Sender: TObject);
begin
        if DMirsaliye.GAltUstBilgiIBQ.Modified then
                DMirsaliye.GAltUstBilgiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.DBRichEdit2Enter(Sender: TObject);
begin
        DMirsaliye.GAltUstBilgiIBQ.Edit;
end;

procedure TFGirisIrsaliyesi.DBRichEdit2Exit(Sender: TObject);
begin
        if DMirsaliye.GAltUstBilgiIBQ.Modified then
                DMirsaliye.GAltUstBilgiIBQ.Post;
end;

procedure TFGirisIrsaliyesi.FontEdit1Accept(Sender: TObject);
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

procedure TFGirisIrsaliyesi.FontEdit1BeforeExecute(Sender: TObject);
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

procedure TFGirisIrsaliyesi.TabSheet2Show(Sender: TObject);
begin
        DateTimePicker1.DateTime := BugununTarihi;
        DateTimePicker2.DateTime := BugununTarihi;
end;

procedure TFGirisIrsaliyesi.FormShow(Sender: TObject);
begin
        DMirsaliye.GirisIrsaliyesiIBQ.SQL.Text := 'select * from IRSALIYE';
        DMirsaliye.GirisIrsaliyesiIBQ.SQL.Add('where ISLEMTURKOD =43 AND SISTEM<>2');
end;

procedure TFGirisIrsaliyesi.OnlineEdit3Change(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Locate('CARINO',OnlineEdit3.Text,[]) then
                OnlineEdit3.Tag := DMCari.CariKartIBQCARIKOD.AsInteger;
end;

procedure TFGirisIrsaliyesi.OnlineEdit4Change(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Locate('CARINO',OnlineEdit4.Text,[]) then
                OnlineEdit4.Tag := DMCari.CariKartIBQCARIKOD.AsInteger;
end;

procedure TFGirisIrsaliyesi.OnlineEdit9Change(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        if DMSabit.PersonelIBQ.Locate('PERSONELNO',OnlineEdit9.Text,[]) then
                OnlineEdit9.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
end;

procedure TFGirisIrsaliyesi.OnlineEdit10Change(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        if DMSabit.PersonelIBQ.Locate('PERSONELNO',OnlineEdit10.Text,[]) then
                OnlineEdit10.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
end;

end.
