unit UretimeCikis;

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
  TFUretimeCikis = class(TForm)
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
    Panel2: TPanel;
    GroupBox14: TGroupBox;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    OnlineDBGrid2: TOnlineDBGrid;
    GroupBox15: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    OnlineButton10: TOnlineButton;
    GroupBox16: TGroupBox;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
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
    OnlineButton14: TOnlineButton;
    OnlineButton15: TOnlineButton;
    ImageList1: TImageList;
    OnlineDBCheckbox1: TOnlineDBCheckbox;
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
    GroupBox1: TGroupBox;
    DBOnlineEdit11: TDBOnlineEdit;
    GroupBox12: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DBOnlineEdit27: TDBOnlineEdit;
    DBOnlineEdit28: TDBOnlineEdit;
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
    procedure GroupBox3Exit(Sender: TObject);
    procedure OnlineDBGrid1Columns16KeyPress(Column: TOnlineColumn;
      var Key: Char);
    procedure OnlineDBGrid1Columns7EditButtonClick(Column: TOnlineColumn);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineDBCheckbox1Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Exit(Sender: TObject);
    procedure OnlineButton5Click(Sender: TObject);
    procedure OnlineButton4Click(Sender: TObject);
    procedure OnlineDBGrid1Columns17KeyPress(Column: TOnlineColumn;
      var Key: Char);
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
    procedure OnlineEdit9Change(Sender: TObject);
    procedure OnlineEdit10Change(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FUretimeCikis: TFUretimeCikis;

implementation

uses StokislemDM, CariSecim, Main, StokDM,GelGidSec, FiyatSorgu, CariDM,
  SabitDM, Kopyala, ProcedureDM, DataDM, StokYeri, PersonelSec, ParaBirSec;

{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat(DMStokislem.UretimeCikisBodroIBQCikisTUTAR.DisplayFormat, x);
end;

Procedure Datalari_Ac;
Begin
        if DMStokislem.UretimeCikisIBQ.Active = false then
        begin
                DMStokislem.UretimeCikisIBQ.Open;
                DMStokislem.UretimeCikisBodroIBQ.Open;
                DMStokislem.AltUstBilgiIBQ.Open;
                if DMSabit.StokYeriIBQ.Active = False Then DMSabit.StokYeriIBQ.Open;
        end;


end;


procedure TFUretimeCikis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMStokislem.UretimeCikisIBQ.Close;
        DMStokislem.UretimeCikisBodroIBQ.Close;
        Action := caFree;
end;

procedure TFUretimeCikis.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMStokislem.UretimeCikisIBQ.First;
end;

procedure TFUretimeCikis.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMStokislem.UretimeCikisIBQ.Prior;
end;

procedure TFUretimeCikis.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMStokislem.UretimeCikisIBQ.Next;
end;

procedure TFUretimeCikis.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMStokislem.UretimeCikisIBQ.Last;
end;

procedure TFUretimeCikis.BitBtn1Click(Sender: TObject);
begin
        PageControl1.ActivePage := TabSheet1;
        DMStokislem.UretimeCikisBodroIBQ.DisableControls;
        Datalari_Ac;
        DMStokislem.UretimeCikisIBQ.Append;
        DMStokislem.UretimeCikisIBQ.Post;

        DMStokislem.UretimeCikisBodroIBQ.EnableControls;
end;

procedure TFUretimeCikis.BitBtn2Click(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.RecordCount>0 Then
        begin
                if (DMStokislem.UretimeCikisIBQBELGENO.AsString = '') or (DMStokislem.UretimeCikisIBQBELGENO.AsFloat = 0) then
                begin
                        if Application.MessageBox('Bu Stok Ýþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                        begin
                                DMStokislem.UretimeCikisIBQ.Edit;
                                DMStokislem.UretimeCikisIBQSISTEM.AsInteger := 2;
                                DMStokislem.UretimeCikisIBQ.Post;
                        end;
                end else MessageBox(handle,'Faturalandýrýlmýþ alýþý silemezsiniz...','Uyarý',MB_OK);
        end;
end;

procedure TFUretimeCikis.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFUretimeCikis.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFUretimeCikis.DBOnlineEdit4Change(Sender: TObject);
begin
        GroupBox6.Caption := ' Dövizli Tutar [ '+DMStokislem.UretimeCikisIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFUretimeCikis.OnlineDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
       if (DMStokislem.UretimeCikisBodroIBQKAPATMA.AsInteger=2) and
                ((DMStokislem.UretimeCikisBodroIBQCikisTUTAR.AsString<>'') or
                        (DMStokislem.UretimeCikisBodroIBQCIKISTUTAR.AsString<>'') or
                        (DMStokislem.UretimeCikisBodroIBQMIKTAR.AsString<>''))  Then
        Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                        begin
                                if (Column.Field <> DMStokislem.UretimeCikisBodroIBQCikisMIKTAR) and (Column.Field <> DMStokislem.UretimeCikisBodroIBQCIKISMIKTAR) then
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

procedure TFUretimeCikis.Builemikapat1Click(Sender: TObject);
begin
        DMStokislem.UretimeCikisBodroIBQ.edit;
        DMStokislem.UretimeCikisBodroIBQKAPATMA.AsInteger:=2;
        DMStokislem.UretimeCikisBodroIBQ.Post;
END;

procedure TFUretimeCikis.Busatilemia1Click(Sender: TObject);
begin
        DMStokislem.UretimeCikisBodroIBQ.edit;
        DMStokislem.UretimeCikisBodroIBQKAPATMA.AsInteger:=1;
        DMStokislem.UretimeCikisBodroIBQ.Post;
end;

procedure TFUretimeCikis.OnlineDBGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
        if DMStokislem.UretimeCikisIBQCARIHESAPILISKI.AsString ='1' Then
        Begin
        if (DMStokislem.UretimeCikisBodroIBQKAPATMA.AsInteger=1) Then
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
        if (DMStokislem.UretimeCikisBodroIBQCikisMIKTAR.AsFloat>0) or (DMStokislem.UretimeCikisBodroIBQCikisTUTAR.AsFloat>0) Then
                SatrSil1.Visible:=True else SatrSil1.Visible:=False;

end;

procedure TFUretimeCikis.OnlineDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if (Key=#13) Then
        Begin
                if (DMStokislem.UretimeCikisBodroIBQ.Modified=True ) Then
                        DMStokislem.UretimeCikisBodroIBQ.Post;
                OnlineDBGrid1.EditorMode :=True;
                if BarkodluCikis = True Then
                Begin
                        BarkodluCikis := False;
                        DMStokislem.UretimeCikisBodroIBQ.Append;
                end;
        end;


end;



procedure TFUretimeCikis.SatrEkle1Click(Sender: TObject);
begin
        DMStokislem.UretimeCikisBodroIBQ.Append;
end;

procedure TFUretimeCikis.SatrSil1Click(Sender: TObject);
begin
        if DMStokislem.UretimeCikisBodroIBQ.RecordCount>0 Then
        if Application.MessageBox('Bu satýrý silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
        Begin
                DMStokislem.UretimeCikisBodroIBQ.Delete;
                if (DMStokislem.UretimeCikisBodroIBQ.Modified=True ) Then
                        DMStokislem.UretimeCikisBodroIBQ.Post;
        end;
end;

procedure TFUretimeCikis.StokEkle1Click(Sender: TObject);
begin
                DMStok.StokGrupKartIBQ.Close;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
                if Application.FindComponent('FFiyatSorgu') = nil then
                begin
                        Application.CreateForm(TFFiyatSorgu,FFiyatSorgu);
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Çýkýþ';
                        FFiyatSorgu.DataSet := DMStokislem.UretimeCikisBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end else begin
                        FFiyatSorgu.SecimButonu.Enabled:=true;
                        FFiyatSorgu.IslemTuru := 'Çýkýþ';
                        FFiyatSorgu.DataSet := DMStokislem.UretimeCikisBodroIBQ;
                        FFiyatSorgu.ShowModal;
                end;
end;

procedure TFUretimeCikis.BitBtn4Click(Sender: TObject);
begin   {
if DMStokislem.UretimeCikisIBQTAHSILAT.AsFloat>0 Then
Begin
        SabitDM.ilceIBQuery.Open;
        SabitDM.ilIBQuery.Open;
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMStokislem.UretimeCikisIBQCARIADI.AsString +' '+DMStokislem.UretimeCikisIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMStokislem.UretimeCikisIBQCARIKOD.AsString,[]) Then
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

procedure TFUretimeCikis.BitBtn5Click(Sender: TObject);
begin             {
if DMStokislem.UretimeCikisIBQBELGENO.AsInteger > 0 then
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

if DMStokislem.UretimeCikisIBQTAHSILAT.AsFloat>0 Then
Begin

        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlisFaturasi.oe');
        TQRLabel(FEvrak.Report.FindComponent('Adres')).Caption :='';
        TQRLabel(FEvrak.Report.FindComponent('FaturaBasligi')).Caption := DMStokislem.UretimeCikisIBQCARIADI.AsString +' '+DMStokislem.UretimeCikisIBQCARISOYADI.AsString;
        if CariDM.CariKartIBQuery.Locate('CARIKOD',DMStokislem.UretimeCikisIBQCARIKOD.AsString,[]) Then
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

procedure TFUretimeCikis.HepsineStoaKaydet1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMStokislem.UretimeCikisBodroIBQ.GetBookmark;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMKOD_IN').AsInteger := DMStokislem.UretimeCikisBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumunuStokKaydetProc.ParamByName('ISLEMADI').AsString := 'STOKISLEM';
        DMProcedure.TumunuStokKaydetProc.Prepare;
        DMProcedure.TumunuStokKaydetProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMStokislem.UretimeCikisBodroIBQ.Close;
        DMStokislem.UretimeCikisBodroIBQ.Open;
        DMStokislem.UretimeCikisBodroIBQ.GotoBookmark(yer);

end;

procedure TFUretimeCikis.HibiriniStoakeydetme1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMStokislem.UretimeCikisBodroIBQ.GetBookmark;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMKOD_IN').AsInteger := DMStokislem.UretimeCikisBodroIBQISLEMKOD.AsInteger;
        DMProcedure.TumuStokSilProc.ParamByName('ISLEMADI').AsString := 'STOKISLEM';
        DMProcedure.TumuStokSilProc.Prepare;
        DMProcedure.TumuStokSilProc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        DMStokislem.UretimeCikisBodroIBQ.Close;
        DMStokislem.UretimeCikisBodroIBQ.Open;
        DMStokislem.UretimeCikisBodroIBQ.GotoBookmark(yer);

end;

procedure TFUretimeCikis.OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMcari.AktifCariIBQ.Close;
                DMcari.AktifCariIBQ.Open;
        end;
end;

procedure TFUretimeCikis.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMStokislem.UretimeCikisBodroIBQ.SQL.Text := 'select * from STOKISLEM Where ISLEMKOD=:ISLEMKOD';
        DMStokislem.UretimeCikisBodroIBQ.SQL.Add('Order by ISLEMKOD ASC');
        DMStokislem.UretimeCikisBodroIBQ.Open;

end;

procedure TFUretimeCikis.FormDestroy(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
        DMStokislem.UretimeCikisIBQ.Close;
        DMStokislem.UretimeCikisBodroIBQ.Close;
end;

procedure TFUretimeCikis.CariHesaplikisi1Click(Sender: TObject);
var
        yer: pointer;
begin

end;

procedure TFUretimeCikis.DBOnlineCombo1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                if DMStokislem.UretimeCikisIBQ.Modified then
                      DMStokislem.UretimeCikisIBQ.Post;
        end;
end;

procedure TFUretimeCikis.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
        DMStokislem.UretimeCikisIBQD_CikisTUTAR.DisplayFormat := '###,###.0 '+ DMStokislem.UretimeCikisIBQC_CARIPARABIRIM.AsString;
//        DMStokislem.UretimeCikisIBQD_TAHKDVTUTAR.DisplayFormat := '###,###.0 '+ DMStokislem.UretimeCikisIBQPARABIRIMI.AsString;
//        DMStokislem.UretimeCikisIBQD_TAHTUTAR.DisplayFormat := '###,###.0 '+ DMStokislem.UretimeCikisIBQPARABIRIMI.AsString;
        GroupBox6.Caption := ' Dövizli Tutar ['+DMStokislem.UretimeCikisIBQC_PARABIRIMI.AsString+']';
end;

procedure TFUretimeCikis.OnlineButton1Click(Sender: TObject);
begin
        if Application.FindComponent('FStokYeri') = nil then
                Application.CreateForm(TFStokYeri,FStokYeri);
        DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
        DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
        DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
        DMSabit.GGSecimIBQ.Open;
        FStokYeri.DataSet := DMStokislem.UretimeCikisIBQ;
        FStokYeri.BitBtn3.Visible := true;
        FStokYeri.Show;
end;

procedure TFUretimeCikis.DBOnlineEdit15Exit(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
end;

procedure TFUretimeCikis.OnlineButton2Click(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMStokislem.UretimeCikisIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFUretimeCikis.DBOnlineEdit5Exit(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
end;

procedure TFUretimeCikis.GroupBox3Exit(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
end;

procedure TFUretimeCikis.OnlineDBGrid1Columns16KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade <> '' then
                begin
                        Vade := DMStokislem.UretimeCikisIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[16]).Vade := '';
                        DMStokislem.UretimeCikisBodroIBQ.Edit;
                        DMStokislem.UretimeCikisBodroIBQVADE.AsDateTime := Vade;
                        DMStokislem.UretimeCikisBodroIBQ.Post;
                end;
        end;

end;

procedure TFUretimeCikis.OnlineDBGrid1Columns7EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMStokislem.UretimeCikisBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFUretimeCikis.GroupBox1Exit(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified Then
                DMStokislem.UretimeCikisIBQ.Post;
end;

procedure TFUretimeCikis.OnlineDBCheckbox1Click(Sender: TObject);
begin
        if OnlineDBCheckbox1.Caption = 'KDV Dahil' Then
                OnlineDBCheckbox1.Caption := 'KDV Hariç'
        else OnlineDBCheckbox1.Caption := 'KDV Dahil';
end;

procedure TFUretimeCikis.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
        GroupBox6.Caption := ' Dövizli Tutar [ '+DMStokislem.UretimeCikisIBQC_PARABIRIMI.AsString +' ] ';
end;

procedure TFUretimeCikis.DBOnlineLookupCombo1Exit(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Modified then
                DMStokislem.UretimeCikisIBQ.Post;
end;

procedure TFUretimeCikis.OnlineButton5Click(Sender: TObject);
var
        yer: pointer;
begin
        FKopyala.Show;
        DMProcedure.CeviriProc.ParamByName('ISLEMKOD_IN').AsInteger := DMStokislem.UretimeCikisIBQISLEMKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('ISLEMTUR_IN').AsString := 'Alýþ';
        DMProcedure.CeviriProc.ParamByName('KULLANKOD_IN').AsInteger := DMSabit.KullaniciIBQKULLANKOD.AsInteger;
        DMProcedure.CeviriProc.ParamByName('HESAPILISKI').AsString := '1';
        DMProcedure.CeviriProc.Prepare;
        DMProcedure.CeviriProc.ExecProc;
        DMStokislem.UretimeCikisIBQ.Close;
        DMStokislem.UretimeCikisIBQ.Open;
        DMStokislem.UretimeCikisBodroIBQ.Open;
        DMStokislem.UretimeCikisIBQ.Locate('ISLEMKOD',DMProcedure.CeviriProc.ParamByName('ISLEMKOD3_IN').AsInteger,[]);
        DMData.IBTCariPro.CommitRetaining;
end;

procedure TFUretimeCikis.OnlineButton4Click(Sender: TObject);
begin
        if DMStokislem.UretimeCikisIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMStokislem.UretimeCikisIBQ;
                FPersonelSec.ShowModal;
        end;
end;



procedure TFUretimeCikis.OnlineDBGrid1Columns17KeyPress(Column: TOnlineColumn;
  var Key: Char);
var
        Vade: TDateTime;
begin
        if Key = #13 then
        begin
                if TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade <> '' then
                begin
                        Vade := DMStokislem.UretimeCikisBodroIBQTARIH.AsDateTime+StrToInt(TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade);
                        TOnlineColumn(OnlineDBGrid1.Columns[17]).Vade := '';
                        DMStokislem.UretimeCikisBodroIBQ.Edit;
                        DMStokislem.UretimeCikisBodroIBQVADE.AsDateTime := Vade;
                        DMStokislem.UretimeCikisBodroIBQ.Post;
                end;
        end;

end;

procedure TFUretimeCikis.OnlineButton14Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit9;
        FPersonelSec.ShowModal;
end;

procedure TFUretimeCikis.OnlineButton15Click(Sender: TObject);
begin
        FPersonelSec.DataSet := nil;
        FPersonelSec.IslemNo := OnlineEdit10;
        FPersonelSec.ShowModal;
end;

procedure TFUretimeCikis.OnlineButton10Click(Sender: TObject);
begin
        DMStokislem.UretimeCikisIBQ.DisableControls;
        DMStokislem.UretimeCikisIBQ.SQL.Text := 'select * from STOKISLEM where ISLEMTURKOD=38 AND SISTEM<>2';
        DMStokislem.UretimeCikisIBQ.SQL.Add('and TARIH >='+#39+DateToStr(DateTimePicker1.Date)+#39+' and TARIH <='+#39+DateToStr(DateTimePicker2.Date)+#39);
        if (OnlineEdit1.Text <> '') and (OnlineEdit2.Text <> '') then
                DMStokislem.UretimeCikisIBQ.SQL.Add('and STOKISLEMNO >='+OnlineEdit1.Text+' and STOKISLEMNO <='+OnlineEdit2.Text);
       if (OnlineEdit5.Text <> '') and (OnlineEdit6.Text <> '') then
                DMStokislem.UretimeCikisIBQ.SQL.Add('and BELGENO >='+OnlineEdit5.Text+' and BELGENO <='+OnlineEdit6.Text);
        if (OnlineEdit7.Text <> '') and (OnlineEdit8.Text <> '') then
                DMStokislem.UretimeCikisIBQ.SQL.Add('and EVRAKNO >='+OnlineEdit7.Text+' and EVRAKNO <='+OnlineEdit8.Text);
        if (OnlineEdit9.Text <> '') and (OnlineEdit10.Text <> '') then
                DMStokislem.UretimeCikisIBQ.SQL.Add('and PERSONELKOD >='+IntToStr(OnlineEdit9.Tag)+' and PERSONELKOD <='+IntToStr(OnlineEdit10.Tag));
        DMStokislem.UretimeCikisIBQ.Open;
        DMStokislem.UretimeCikisBodroIBQ.Open;
        DMStokislem.UretimeCikisIBQ.EnableControls;
end;

procedure TFUretimeCikis.OnlineButton11Click(Sender: TObject);
begin
        OnlineEdit1.Text := '';
        OnlineEdit2.Text := '';
        OnlineEdit5.Text := '';
        OnlineEdit6.Text := '';
        OnlineEdit7.Text := '';
        OnlineEdit8.Text := '';
        OnlineEdit9.Text := '';
        OnlineEdit10.Text := '';

        OnlineEdit1.Tag := 0;
        OnlineEdit2.Tag := 0;
        OnlineEdit5.Tag := 0;
        OnlineEdit6.Tag := 0;
        OnlineEdit7.Tag := 0;
        OnlineEdit8.Tag := 0;
        OnlineEdit9.Tag := 0;
        OnlineEdit10.Tag := 0;
        DMStokislem.UretimeCikisIBQ.DisableControls;
        DMStokislem.UretimeCikisIBQ.SQL.Text := 'select * from STOKISLEM';
        DMStokislem.UretimeCikisIBQ.SQL.Add('where ISLEMTURKOD =38 AND SISTEM<>2');

        DMStokislem.UretimeCikisIBQ.Open;
        DMStokislem.UretimeCikisIBQ.EnableControls;
        
end;

procedure TFUretimeCikis.DBRichEdit1Enter(Sender: TObject);
begin
        DMStokislem.AltUstBilgiIBQ.Edit;
end;

procedure TFUretimeCikis.DBRichEdit1Exit(Sender: TObject);
begin
        if DMStokislem.AltUstBilgiIBQ.Modified then
                DMStokislem.AltUstBilgiIBQ.Post;
end;

procedure TFUretimeCikis.DBRichEdit2Enter(Sender: TObject);
begin
        DMStokislem.AltUstBilgiIBQ.Edit;
end;

procedure TFUretimeCikis.DBRichEdit2Exit(Sender: TObject);
begin
        if DMStokislem.AltUstBilgiIBQ.Modified then
                DMStokislem.AltUstBilgiIBQ.Post;
end;

procedure TFUretimeCikis.FontEdit1Accept(Sender: TObject);
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

procedure TFUretimeCikis.FontEdit1BeforeExecute(Sender: TObject);
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

procedure TFUretimeCikis.TabSheet2Show(Sender: TObject);
begin
        DateTimePicker1.DateTime := BugununTarihi;
        DateTimePicker2.DateTime := BugununTarihi;
end;

procedure TFUretimeCikis.FormShow(Sender: TObject);
begin
        DMStokislem.UretimeCikisIBQ.SQL.Text := 'select * from STOKISLEM';
        DMStokislem.UretimeCikisIBQ.SQL.Add('where ISLEMTURKOD =38 AND SISTEM<>2');
end;

procedure TFUretimeCikis.OnlineEdit9Change(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        if DMSabit.PersonelIBQ.Locate('PERSONELNO',OnlineEdit9.Text,[]) then
                OnlineEdit9.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
end;

procedure TFUretimeCikis.OnlineEdit10Change(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        if DMSabit.PersonelIBQ.Locate('PERSONELNO',OnlineEdit10.Text,[]) then
                OnlineEdit10.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
end;

end.
