unit TeklifAlma;

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
  TFTeklifAlma = class(TForm)
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
    Label12: TLabel;
    Label19: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    DBOnlineEdit17: TDBOnlineEdit;
    OnlineButton4: TOnlineButton;
    OnlineButton7: TOnlineButton;
    OnlineButton8: TOnlineButton;
    TabSheet5: TTabSheet;
    GroupBox10: TGroupBox;
    Label21: TLabel;
    Label8: TLabel;
    DBOnlineEdit25: TDBOnlineEdit;
    OnlineDBDateEdit2: TOnlineDBDateEdit;
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
    KarZararAnalizi1: TMenuItem;
    DBOnlineEdit3: TDBOnlineEdit;
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
    procedure OnlineDBGrid1EditButtonClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure KarZararAnalizi1Click(Sender: TObject);
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
  FTeklifAlma: TFTeklifAlma;

implementation

uses TeklifDM, CariSecim, Main, StokDM,GelGidSec, FiyatSorgu, CariDM,
  SabitDM, Kopyala, ProcedureDM, DataDM, StokYeri, PersonelSec, ParaBirSec;

{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat(DMTeklif.TeklifAlmaBodroIBQALISTUTAR.DisplayFormat, x);
end;

Procedure Datalari_Ac;
Begin
        if DMTeklif.TeklifAlmaIBQ.Active = false then
        begin
                DMTeklif.TeklifAlmaIBQ.Open;
                DMTeklif.TeklifAlmaBodroIBQ.Open;
                DMTeklif.TAlmaBilgiIBQ.Open;
                if DMSabit.StokYeriIBQ.Active = False Then DMSabit.StokYeriIBQ.Open;
        end;


end;


procedure TFTeklifAlma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
        DMTeklif.TeklifAlmaIBQ.Close;
        DMTeklif.TeklifAlmaBodroIBQ.Close;
        Action := caFree;
end;

procedure TFTeklifAlma.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMTeklif.TeklifAlmaIBQ.First;
end;

procedure TFTeklifAlma.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMTeklif.TeklifAlmaIBQ.Prior;
end;

procedure TFTeklifAlma.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMTeklif.TeklifAlmaIBQ.Next;
end;

procedure TFTeklifAlma.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMTeklif.TeklifAlmaIBQ.Last;
end;

procedure TFTeklifAlma.BitBtn1Click(Sender: TObject);
begin

        DMTeklif.TeklifAlmaBodroIBQ.DisableControls;
        Datalari_Ac;
        DMTeklif.TeklifAlmaIBQ.Append;
        DMTeklif.TeklifAlmaIBQ.Post;
        BitBtn8.SetFocus;
        DMTeklif.TeklifAlmaBodroIBQ.EnableControls;
end;

procedure TFTeklifAlma.BitBtn2Click(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.RecordCount>0 Then
        begin
                if (DMTeklif.TeklifAlmaIBQBELGENO.AsString = '') or (DMTeklif.TeklifAlmaIBQBELGENO.AsFloat = 0) then
                begin
                        if Application.MessageBox('Bu Teklif Ýþlemini silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                        Begin
                                DMTeklif.TeklifAlmaIBQ.Edit;
                                DMTeklif.TeklifAlmaIBQSISTEM.AsInteger := 2;
                                DMTeklif.TeklifAlmaIBQ.Post;
                                DMTeklif.TeklifAlmaIBQ.Close;
                                DMTeklif.TeklifAlmaBodroIBQ.Close;
                        end;
                end else MessageBox(handle,'Faturalandýrýlmýþ teklifi silemezsiniz!..','Uyarý',MB_OK);
        end;
end;

procedure TFTeklifAlma.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFTeklifAlma.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFTeklifAlma.DBOnlineEdit4Change(Sender: TObject);
begin
        GroupBox6.Caption := ' Dövizli Tutar [ '+DMTeklif.TeklifAlmaIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFTeklifAlma.OnlineDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
       if (DMTeklif.TeklifAlmaBodroIBQKAPATMA.AsInteger=2) and
                ((DMTeklif.TeklifAlmaBodroIBQSATISTUTAR.AsString<>'') or
                        (DMTeklif.TeklifAlmaBodroIBQSATISTUTAR.AsString<>'') or
                        (DMTeklif.TeklifAlmaBodroIBQMIKTAR.AsString<>''))  Then
        Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                        begin
                                if (Column.Field <> DMTeklif.TeklifAlmaBodroIBQGIRISMIKTAR) and (Column.Field <> DMTeklif.TeklifAlmaBodroIBQCIKISMIKTAR) then
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

procedure TFTeklifAlma.Builemikapat1Click(Sender: TObject);
begin
        DMTeklif.TeklifAlmaBodroIBQ.edit;
        DMTeklif.TeklifAlmaBodroIBQKAPATMA.AsInteger:=2;
        DMTeklif.TeklifAlmaBodroIBQ.Post;
END;

procedure TFTeklifAlma.Busatilemia1Click(Sender: TObject);
begin
        DMTeklif.TeklifAlmaBodroIBQ.edit;
        DMTeklif.TeklifAlmaBodroIBQKAPATMA.AsInteger:=1;
        DMTeklif.TeklifAlmaBodroIBQ.Post;
end;

procedure TFTeklifAlma.OnlineDBGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
        if (DMTeklif.TeklifAlmaBodroIBQGIRISMIKTAR.AsFloat>0) or (DMTeklif.TeklifAlmaBodroIBQSATISTUTAR.AsFloat>0) Then
                SatrSil1.Visible:=True else SatrSil1.Visible:=False;

end;

procedure TFTeklifAlma.OnlineDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if (Key=#13) Then
        Begin
                if (DMTeklif.TeklifAlmaBodroIBQ.Modified=True ) Then
                        DMTeklif.TeklifAlmaBodroIBQ.Post;
                OnlineDBGrid1.EditorMode :=True;
                if BarkodluSatis = True Then
                Begin
                        BarkodluSatis := False;
                        DMTeklif.TeklifAlmaBodroIBQ.Append;
                end;
        end;


end;



procedure TFTeklifAlma.SatrEkle1Click(Sender: TObject);
begin
        DMTeklif.TeklifAlmaBodroIBQ.Append;
end;

procedure TFTeklifAlma.SatrSil1Click(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaBodroIBQ.RecordCount>0 Then
        if Application.MessageBox('Bu satýrý silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
        Begin
                DMTeklif.TeklifAlmaBodroIBQ.Delete;
                if (DMTeklif.TeklifAlmaBodroIBQ.Modified=True ) Then
                        DMTeklif.TeklifAlmaBodroIBQ.Post;
        end;
end;

procedure TFTeklifAlma.BitBtn8Click(Sender: TObject);
begin
        if (DMTeklif.TeklifAlmaIBQ.Active) and (DMTeklif.TeklifAlmaBodroIBQ.Active) then
        begin
               FCariSecim.DataSet := DMTeklif.TeklifAlmaIBQ;
               FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFTeklifAlma.StokEkle1Click(Sender: TObject);
begin
               { DMStok.StokGrupKartIBQ.Close;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open; }
                if Application.FindComponent('FFiyatSorgu') = nil then
                begin
                        Application.CreateForm(TFFiyatSorgu,FFiyatSorgu);
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Teklif-Sipariþ Çýkýþ';
                        FFiyatSorgu.DataSet := DMTeklif.TeklifAlmaBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end else begin
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Teklif-Sipariþ Çýkýþ';
                        FFiyatSorgu.DataSet := DMTeklif.TeklifAlmaBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end;
end;

procedure TFTeklifAlma.BitBtn4Click(Sender: TObject);
begin   {
if DMTeklif.TeklifAlmaIBQTAHSILAT.AsFloat>0 Then
Begin
        SabitDM.ilceIBQuery.Open;
        SabitDM.ilIBQuery.Open;
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMTeklif.TeklifAlmaIBQCARIADI.AsString +' '+DMTeklif.TeklifAlmaIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMTeklif.TeklifAlmaIBQCARIKOD.AsString,[]) Then
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

procedure TFTeklifAlma.BitBtn5Click(Sender: TObject);
begin             {
if DMTeklif.TeklifAlmaIBQBELGENO.AsInteger > 0 then
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

if DMTeklif.TeklifAlmaIBQTAHSILAT.AsFloat>0 Then
Begin

        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMTeklif.TeklifAlmaIBQCARIADI.AsString +' '+DMTeklif.TeklifAlmaIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMTeklif.TeklifAlmaIBQCARIKOD.AsString,[]) Then
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

procedure TFTeklifAlma.HepsineStoaKaydet1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMTeklif.TeklifAlmaBodroIBQ.GetBookmark;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TeklifAlmaBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMADI').AsString := 'TEKLIFISLEM';
        DMProcedure.TumunuStokKaydetProc.Prepare;
        DMProcedure.TumunuStokKaydetProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMTeklif.TeklifAlmaBodroIBQ.Close;
        DMTeklif.TeklifAlmaBodroIBQ.Open;
        DMTeklif.TeklifAlmaBodroIBQ.GotoBookmark(yer);

end;

procedure TFTeklifAlma.HibiriniStoakeydetme1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMTeklif.TeklifAlmaBodroIBQ.GetBookmark;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TeklifAlmaBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMADI').AsString := 'TEKLIFISLEM';
        DMProcedure.TumuStokSilProc.Prepare;
        DMProcedure.TumuStokSilProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMTeklif.TeklifAlmaBodroIBQ.Close;
        DMTeklif.TeklifAlmaBodroIBQ.Open;
        DMTeklif.TeklifAlmaBodroIBQ.GotoBookmark(yer);

end;

procedure TFTeklifAlma.OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMcari.AktifCariIBQ.Close;
                DMcari.AktifCariIBQ.Open;
        end;
end;

procedure TFTeklifAlma.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMTeklif.TeklifAlmaBodroIBQ.SQL.Text := 'select * from CARIISLEM Where ISLEMKOD=:ISLEMKOD';
        DMTeklif.TeklifAlmaBodroIBQ.SQL.Add('Order by ISLEMKOD ASC');
        DMTeklif.TeklifAlmaBodroIBQ.Open;

end;

procedure TFTeklifAlma.CariHesaplikisi1Click(Sender: TObject);
var
        yer: pointer;
begin
    {    if CariHesaplikisi1.Checked=True Then
        Begin
                DMTeklif.TeklifAlmaIBQ.Edit;
                DMTeklif.TeklifAlmaIBQCARIHESAPILISKI.AsString :='0';
                DMTeklif.TeklifAlmaIBQ.Post;
                CariHesaplikisi1.Checked:=False;
        yer := DMTeklif.TeklifAlmaBodroIBQ.GetBookmark;
        StokDM.TumuStokSilProc.ParamByName('CAISLKOD_IN').AsInteger := DMTeklif.TeklifAlmaBodroIBQCAISLKOD.AsInteger;
        StokDM.TumuStokSilProc.Prepare;
        StokDM.TumuStokSilProc.ExecProc;
        CariDM.IBTransaction1.CommitRetaining;
        DMTeklif.TeklifAlmaBodroIBQ.Close;
        DMTeklif.TeklifAlmaBodroIBQ.Open;
        DMTeklif.TeklifAlmaBodroIBQ.GotoBookmark(yer);
                Busatilemia1.Visible:=False;
                Builemikapat1.Visible := False;
                HepsineStoaKaydet1.Visible := False;
                HibiriniStoakeydetme1.Visible := False;
        end else
        Begin
                DMTeklif.TeklifAlmaIBQ.Edit;
                DMTeklif.TeklifAlmaIBQCARIHESAPILISKI.AsString :='1';
                DMTeklif.TeklifAlmaIBQ.Post;
                CariHesaplikisi1.Checked := True;
        end;     }
end;

procedure TFTeklifAlma.DBOnlineCombo1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                if DMTeklif.TeklifAlmaIBQ.Modified then
                      DMTeklif.TeklifAlmaIBQ.Post;
        end;
end;

procedure TFTeklifAlma.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
//        DMTeklif.TeklifAlmaIBQD_TAHSILAT.DisplayFormat := '###,###.0 '+ DMTeklif.TeklifAlmaIBQC_CARIPARABIRIM.AsString;
//        DMTeklif.TeklifAlmaIBQD_TAHKDVTUTAR.DisplayFormat := '###,###.0 '+ DMTeklif.TeklifAlmaIBQPARABIRIMI.AsString;
//        DMTeklif.TeklifAlmaIBQD_TAHTUTAR.DisplayFormat := '###,###.0 '+ DMTeklif.TeklifAlmaIBQPARABIRIMI.AsString;
        GroupBox6.Caption := ' Dövizli Tutar ['+DMTeklif.TeklifAlmaIBQC_PARABIRIMI.AsString+']';
end;

procedure TFTeklifAlma.OnlineButton1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
        DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
        DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
        DMSabit.GGSecimIBQ.Open;
        FStokYeri.DataSet := DMTeklif.TeklifAlmaIBQ;
        FStokYeri.BitBtn3.Visible := true;
        FStokYeri.Show;
end;

procedure TFTeklifAlma.DBOnlineEdit15Exit(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
end;

procedure TFTeklifAlma.skontolarGster1Click(Sender: TObject);
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

procedure TFTeklifAlma.OnlineButton2Click(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMTeklif.TeklifAlmaIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFTeklifAlma.DBOnlineEdit5Exit(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
end;

procedure TFTeklifAlma.DBOnlineEdit7Change(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQC_CARIADI.AsString<>'' Then
                Panel2.Caption := 'Teklif Alma [ '+DMTeklif.TeklifAlmaIBQC_CARIADI.AsString + ' ]'
        else Panel2.Caption := 'Teklif Alma';
end;

procedure TFTeklifAlma.GroupBox3Exit(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
end;

procedure TFTeklifAlma.OnlineDBGrid1Columns16KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade <> '' then
                begin
                        Vade := DMTeklif.TeklifAlmaIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade := '';
                        DMTeklif.TeklifAlmaBodroIBQ.Edit;
                        DMTeklif.TeklifAlmaBodroIBQVADE.AsDateTime := Vade;
                        DMTeklif.TeklifAlmaBodroIBQ.Post;
                end;
        end;

end;

procedure TFTeklifAlma.OnlineButton3Click(Sender: TObject);
begin
        if (DMTeklif.TeklifAlmaIBQCARIKOD.AsInteger > 0) or (DMTeklif.TeklifAlmaIBQCARINO.AsInteger > 0) then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Teklifin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMTeklif.TeklifAlmaIBQ.Edit;
                DMTeklif.TeklifAlmaIBQCARIKOD.AsInteger:=0;
                DMTeklif.TeklifAlmaIBQCARINO.AsInteger := 0;
                DMTeklif.TeklifAlmaIBQ.Post;
        end;
end;

procedure TFTeklifAlma.OnlineDBGrid1Columns7EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMTeklif.TeklifAlmaBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFTeklifAlma.GroupBox1Exit(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified Then
                DMTeklif.TeklifAlmaIBQ.Post;
end;

procedure TFTeklifAlma.OnlineDBCheckbox1Click(Sender: TObject);
begin
        if OnlineDBCheckbox1.Caption = 'KDV Dahil' Then
                OnlineDBCheckbox1.Caption := 'KDV Hariç'
        else OnlineDBCheckbox1.Caption := 'KDV Dahil';
end;

procedure TFTeklifAlma.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
        GroupBox6.Caption := ' Dövizli Tutar [ '+DMTeklif.TeklifAlmaIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFTeklifAlma.DBOnlineLookupCombo1Exit(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Modified then
                DMTeklif.TeklifAlmaIBQ.Post;
end;

procedure TFTeklifAlma.OnlineButton5Click(Sender: TObject);
var
        yer: pointer;
begin
        if DMTeklif.TeklifAlmaBodroIBQ.RecordCount >0 Then
        Begin
                FKopyala.Show;
                DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMTeklif.TeklifAlmaIBQISLEMKOD.AsInteger;
                DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Satýþ';
                DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
                DMProcedure.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
                DMProcedure.CeviriProc.Prepare;
                DMProcedure.CeviriProc.ExecProc;
                DMTeklif.TeklifAlmaIBQ.Close;
                DMTeklif.TeklifAlmaIBQ.Open;
                DMTeklif.TeklifAlmaBodroIBQ.Open;
                DMTeklif.TeklifAlmaIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD3_IN').AsInteger,[]);
                DMData.IBTCariPro.CommitRetaining;
        end;
end;

procedure TFTeklifAlma.OnlineButton4Click(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMTeklif.TeklifAlmaIBQ;
                FPersonelSec.ShowModal;
        end;
end;



procedure TFTeklifAlma.OnlineButton9Click(Sender: TObject);
var
        TopVade,TopFiyat,OrtVade: real;
begin
        if (DMTeklif.TeklifAlmaBodroIBQ.Active = true) and (DMTeklif.TeklifAlmaBodroIBQ.RecordCount > 0) then
        begin
                DMTeklif.TeklifAlmaBodroIBQ.First;
                while not DMTeklif.TeklifAlmaBodroIBQ.Eof do
                begin
                        TopVade := TopVade + (DMTeklif.TeklifAlmaBodroIBQSATISTUTAR.AsFloat * (DMTeklif.TeklifAlmaBodroIBQVADE.AsDateTime - DMTeklif.TeklifAlmaIBQTARIH.AsDateTime));
                        TopFiyat := TopFiyat + DMTeklif.TeklifAlmaBodroIBQSATISTUTAR.AsFloat;
                        DMTeklif.TeklifAlmaBodroIBQ.Next;
                end;
                OrtVade := TopVade / TopFiyat;
                OrtVade := OrtVade + (DMTeklif.TeklifAlmaIBQTARIH.AsFloat) ;
                DMTeklif.TeklifAlmaIBQ.Edit;
                DMTeklif.TeklifAlmaIBQVADE.AsString := DateToStr((OrtVade));
                DMTeklif.TeklifAlmaIBQ.Post;
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
        yer :=DMTeklif.TeklifAlmaBodroIBQ.GetBookmark;
        DMTeklif.TeklifAlmaBodroIBQ.DisableControls;
        DMTeklif.TeklifAlmaBodroIBQ.First;
        for i := 0 to DMTeklif.TeklifAlmaBodroIBQ.RecordCount do
        begin
      //  while not DMTeklif.TeklifAlmaBodroIBQ.Eof do
       // begin
                ToplamVade := ToplamVade + DMTeklif.TeklifAlmaBodroIBQVADE.AsDateTime;
                toplamkayit := toplamkayit + 1;
                DMTeklif.TeklifAlmaBodroIBQ.Next;
        end;
        DMTeklif.TeklifAlmaBodroIBQ.GotoBookmark(yer);
        DMTeklif.TeklifAlmaBodroIBQ.EnableControls;
        OrtVade := ToplamVade / toplamkayit;
        OrtVadeTarih := OrtVade;
        DMTeklif.TeklifAlmaIBQ.Edit;
        DMTeklif.TeklifAlmaIBQVADE.AsString :=DateToStr(OrtVadeTarih);
        DMTeklif.TeklifAlmaIBQ.Post;

               }
end;

procedure TFTeklifAlma.OnlineDBGrid1Columns17KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade <> '' then
                begin
                        Vade := DMTeklif.TeklifAlmaBodroIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade := '';
                        DMTeklif.TeklifAlmaBodroIBQ.Edit;
                        DMTeklif.TeklifAlmaBodroIBQVADE.AsDateTime := Vade;
                        DMTeklif.TeklifAlmaBodroIBQ.Post;
                end;
        end;

end;

procedure TFTeklifAlma.OnlineButton12Click(Sender: TObject);
begin
        FCariSecim.DataSet := nil;
        FCariSecim.IslemNo := OnlineEdit3;
        FCariSecim.ShowModal;

end;

procedure TFTeklifAlma.OnlineButton13Click(Sender: TObject);
begin
        FCariSecim.DataSet := nil;
        FCariSecim.IslemNo := OnlineEdit4;
        FCariSecim.ShowModal;
end;

procedure TFTeklifAlma.OnlineButton14Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit9;
        FPersonelSec.ShowModal;
end;

procedure TFTeklifAlma.OnlineButton15Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit10;
        FPersonelSec.ShowModal;
end;

procedure TFTeklifAlma.OnlineButton10Click(Sender: TObject);
begin
        DMTeklif.TeklifAlmaIBQ.DisableControls;
        DMTeklif.TeklifAlmaIBQ.SQL.Text := 'select * from TEKLIFISLEM where ISLEMTURKOD=30';
        DMTeklif.TeklifAlmaIBQ.SQL.Add('and TARIH >='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH <='+#39+DateToStr(DateTimePicker2.Date)+#39);
        if (OnlineEdit1.Text <> '') and (OnlineEdit2.Text <> '') then
                DMTeklif.TeklifAlmaIBQ.SQL.Add('and TEKLIFISLEMNO >='+OnlineEdit1.Text+' and TEKLIFISLEMNO <='+OnlineEdit2.Text);
        if (OnlineEdit3.Text <> '') and (OnlineEdit4.Text <> '') then
                DMTeklif.TeklifAlmaIBQ.SQL.Add('and CARIKOD >='+IntToStr(OnlineEdit3.Tag)+' and CARIKOD <='+IntToStr(OnlineEdit4.Tag));
        if (OnlineEdit5.Text <> '') and (OnlineEdit6.Text <> '') then
                DMTeklif.TeklifAlmaIBQ.SQL.Add('and BELGENO >='+OnlineEdit5.Text+' and BELGENO <='+OnlineEdit6.Text);
        if (OnlineEdit7.Text <> '') and (OnlineEdit8.Text <> '') then
                DMTeklif.TeklifAlmaIBQ.SQL.Add('and EVRAKNO >='+OnlineEdit7.Text+' and EVRAKNO <='+OnlineEdit8.Text);
        if (OnlineEdit9.Text <> '') and (OnlineEdit10.Text <> '') then
                DMTeklif.TeklifAlmaIBQ.SQL.Add('and PERSONELKOD >='+IntToStr(OnlineEdit9.Tag)+' and PERSONELKOD <='+IntToStr(OnlineEdit10.Tag));
        DMTeklif.TeklifAlmaIBQ.Open;
        DMTeklif.TeklifAlmaBodroIBQ.Open;
        DMTeklif.TeklifAlmaIBQ.EnableControls;
end;

procedure TFTeklifAlma.OnlineButton11Click(Sender: TObject);
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
        DMTeklif.TeklifAlmaIBQ.DisableControls;
        DMTeklif.TeklifAlmaIBQ.SQL.Text := 'select * from TEKLIFISLEM where ISLEMTURKOD=30 and SISTEM<>2';
        DMTeklif.TeklifAlmaIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
        DMTeklif.TeklifAlmaIBQ.Open;
        DMTeklif.TeklifAlmaIBQ.EnableControls;
        
end;

procedure TFTeklifAlma.DBRichEdit1Enter(Sender: TObject);
begin
        DMTeklif.TAlmaBilgiIBQ.Edit;
end;

procedure TFTeklifAlma.DBRichEdit1Exit(Sender: TObject);
begin
        if DMTeklif.TAlmaBilgiIBQ.Modified then
                DMTeklif.TAlmaBilgiIBQ.Post;
end;

procedure TFTeklifAlma.DBRichEdit2Enter(Sender: TObject);
begin
        DMTeklif.TAlmaBilgiIBQ.Edit;
end;

procedure TFTeklifAlma.DBRichEdit2Exit(Sender: TObject);
begin
        if DMTeklif.TAlmaBilgiIBQ.Modified then
                DMTeklif.TAlmaBilgiIBQ.Post;
end;

procedure TFTeklifAlma.FontEdit1Accept(Sender: TObject);
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

procedure TFTeklifAlma.FontEdit1BeforeExecute(Sender: TObject);
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

procedure TFTeklifAlma.TabSheet2Show(Sender: TObject);
begin
        DateTimePicker1.DateTime := BugununTarihi;
        DateTimePicker2.DateTime := BugununTarihi;
end;

procedure TFTeklifAlma.OnlineDBGrid1EditButtonClick(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Active then
        begin
                if Application.FindComponent('FParaBirimSecim') = nil then
                        Application.CreateForm(TFParaBirimSecim,FParaBirimSecim);
                FParaBirimSecim.DataSet := DMTeklif.TeklifAlmaIBQ;
                FParaBirimSecim.ShowModal;
        end;
end;

procedure TFTeklifAlma.PageControl2Change(Sender: TObject);
begin
        if DMTeklif.TeklifAlmaIBQ.Active = false then
                PageControl2.ActivePage := TabSheet3;
end;

procedure TFTeklifAlma.KarZararAnalizi1Click(Sender: TObject);
var
        AlisFiyat,SatisFiyat,Fark: real;
begin
        if DMTeklif.TeklifAlmaBodroIBQ.RecordCount>0 Then
        Begin
                DMTeklif.TeklifAlmaBodroIBQ.DisableControls;
                DMTeklif.TeklifAlmaBodroIBQ.First;
                while not DMTeklif.TeklifAlmaBodroIBQ.Eof do
                begin
                        AlisFiyat := AlisFiyat + DMTeklif.TeklifAlmaBodroIBQC_MALIYETTUTARI.AsFloat;
                        SatisFiyat := SatisFiyat + DMTeklif.TeklifAlmaBodroIBQSATISTUTAR.AsFloat;
                        DMTeklif.TeklifAlmaBodroIBQ.Next;
                end;
                DMTeklif.TeklifAlmaBodroIBQ.First;
                DMTeklif.TeklifAlmaBodroIBQ.EnableControls;
                Fark := SatisFiyat - AlisFiyat;
                MessageBox(handle,PChar('______________ KAR ZARAR ANALÝZÝ ______________'+#13+#13+'     Toplam Alýþ Fiyatý    :   '+FormatFloat('###,###',AlisFiyat)+#13+'     Toplam Satýþ Fiyatý  :   '+FormatFloat('###,###',SatisFiyat)+#13+'     Toplam Fiyat Farký  :   '+FormatFloat('###,###',Fark)),'Analiz',MB_OK);
        end;
end;

procedure TFTeklifAlma.FormShow(Sender: TObject);
begin
        DMTeklif.TeklifAlmaIBQ.SQL.Text := 'select * from TEKLIFISLEM ';
        DMTeklif.TeklifAlmaIBQ.SQL.Add('Where ISLEMTURKOD=30 and SISTEM<>2');
        DMTeklif.TeklifAlmaIBQ.SQL.Add('ORDER BY TARIH, ISLEMKOD');
end;

procedure TFTeklifAlma.OnlineEdit3Change(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Locate('CARINO',OnlineEdit3.Text,[]) then
                OnlineEdit3.Tag := DMCari.CariKartIBQCARIKOD.AsInteger;
end;

procedure TFTeklifAlma.OnlineEdit4Change(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Locate('CARINO',OnlineEdit4.Text,[]) then
                OnlineEdit4.Tag := DMCari.CariKartIBQCARIKOD.AsInteger;
end;

procedure TFTeklifAlma.OnlineEdit9Change(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        if DMSabit.PersonelIBQ.Locate('PERSONELNO',OnlineEdit9.Text,[]) then
                OnlineEdit9.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
end;

procedure TFTeklifAlma.OnlineEdit10Change(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        if DMSabit.PersonelIBQ.Locate('PERSONELNO',OnlineEdit10.Text,[]) then
                OnlineEdit10.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
end;

end.
