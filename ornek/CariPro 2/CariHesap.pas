unit CariHesap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid,DB, Menus, ComCtrls,
  QRCtrls, QuickRpt, OnlineButton, OnlineCustomControl, scExcelExport,
  IBCustomDataSet, IBStoredProc, OnlineCheckBox, OnlineDBCheckbox,
  DBOnlineLookupCombo;


type
  TFCariHesap = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    BuAlleminiKapat1: TMenuItem;
    BuAlleminiA1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    OnlineEdit1: TOnlineEdit;
    GroupBox3: TGroupBox;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    GroupBox5: TGroupBox;
    OnlineDBGrid3: TOnlineDBGrid;
    lemSrasnaGreSrala1: TMenuItem;
    N2: TMenuItem;
    Panel5: TPanel;
    Panel8: TPanel;
    OnlineDBGrid4: TOnlineDBGrid;
    Panel10: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    OnlineEdit3: TOnlineEdit;
    OnlineEdit4: TOnlineEdit;
    Panel11: TPanel;
    Panel7: TPanel;
    Panel12: TPanel;
    OnlineDBGrid5: TOnlineDBGrid;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    OnlineEdit5: TOnlineEdit;
    OnlineEdit6: TOnlineEdit;
    OnlineEdit7: TOnlineEdit;
    Panel18: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DBText2: TDBText;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    OnlineDBGrid6: TOnlineDBGrid;
    ExceleAt1: TMenuItem;
    scExcelExport1: TscExcelExport;
    N3: TMenuItem;
    BakiyeHesapla1: TMenuItem;
    ariheGre1: TMenuItem;
    lemSrasnaGre1: TMenuItem;
    ProcIslemCari: TIBStoredProc;
    OnlineDBGrid1: TOnlineDBGrid;
    TabSheet5: TTabSheet;
    GroupBox7: TGroupBox;
    TabSheet6: TTabSheet;
    GroupBox8: TGroupBox;
    OnlineDBGrid7: TOnlineDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    DBOnlineEdit15: TDBOnlineEdit;
    DBOnlineEdit16: TDBOnlineEdit;
    DBOnlineEdit17: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    OnlineDBCheckBox1: TOnlineDBCheckbox;
    OnlineDBCheckBox2: TOnlineDBCheckbox;
    DBOnlineLookupCombo3: TDBOnlineLookupCombo;
    DBOnlineLookupCombo4: TDBOnlineLookupCombo;
    DBOnlineEdit18: TDBOnlineEdit;
    DBOnlineEdit19: TDBOnlineEdit;
    DBOnlineEdit21: TDBOnlineEdit;
    DBOnlineEdit22: TDBOnlineEdit;
    DBOnlineEdit23: TDBOnlineEdit;
    DBOnlineCombo2: TDBOnlineCombo;
    DBOnlineEdit24: TDBOnlineEdit;
    DBOnlineLookupCombo5: TDBOnlineLookupCombo;
    DBOnlineEdit25: TDBOnlineEdit;
    ProcTarihCari: TIBStoredProc;
    BitBtn1: TBitBtn;
    Label27: TLabel;
    DBOnlineEdit20: TDBOnlineEdit;
    OnlineEdit8: TOnlineEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineEdit4Change(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure OnlineDBGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure OnlineDBGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BuAlleminiKapat1Click(Sender: TObject);
    procedure BuAlleminiA1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure lemSrasnaGreSrala1Click(Sender: TObject);
    procedure OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet3Show(Sender: TObject);
    procedure OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineDBGrid1Columns6KeyPress(Column: TOnlineColumn;
      var Key: Char);
    procedure TabSheet2Show(Sender: TObject);
    procedure OnlineEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineDBGrid1Columns2KeyPress(Column: TOnlineColumn;
      var Key: Char);
    procedure DBOnlineEdit3Change(Sender: TObject);
    procedure DBOnlineEdit7Change(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure OnlineDBGrid1DblClick(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
    procedure ariheGre1Click(Sender: TObject);
    procedure lemSrasnaGre1Click(Sender: TObject);
    procedure GroupBox7Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineEdit20Change(Sender: TObject);
 
  private

  public
    Cariyer,islemyer: pointer;
  end;

var
  FCariHesap: TFCariHesap;
  CariAlisKontrol, CariSatisKontrol : Boolean;

implementation

uses DataDM,  Main, CariDM;

{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat(DMCari.CariislemIBQTAHSILAT.DisplayFormat, x);
end;


procedure TFCariHesap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMCari.CariislemIBQ.Close;
        Action := caFree;
end;

procedure TFCariHesap.BFirstPageClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.First;
end;

procedure TFCariHesap.ButtonPreviousClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Prior;
end;

procedure TFCariHesap.ButtonNextClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Next;
end;

procedure TFCariHesap.BLastPageClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Last;
end;

procedure TFCariHesap.BitBtn1Click(Sender: TObject);
  var
  yer,yer1: pointer;
begin
        yer := DMCari.CariKartIBQ.GetBookmark;
        yer1 := DMCari.CariislemIBQ.GetBookmark;
        DMCari.CariKartIBQ.Close;
        DMCari.CariKartIBQ.Open;
        DMCari.CariislemIBQ.Close;
        DMCari.CariislemIBQ.Open;
        DMCari.CariKartIBQ.GotoBookmark(yer);
        DMCari.CariislemIBQ.GotoBookmark(yer1);
end;

procedure TFCariHesap.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFCariHesap.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if  (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFCariHesap.DBOnlineEdit4Change(Sender: TObject);
begin
        OnlineEdit1.Text := DBOnlineEdit4.Text;
end;

procedure TFCariHesap.OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 Then
                if DMCari.CariKartIBQ.Locate('CariNo',OnlineEdit1.Text,[]) Then
                Begin
                        OnlineEdit1.Text := DBOnlineEdit4.Text;
                        OnlineDBGrid1.SetFocus;
                end
                else
                begin
                        OnlineEdit1.Text := DBOnlineEdit4.Text;
                        ShowMessage('Kayýt bulunamadý');
                end;
end;

procedure TFCariHesap.FormShow(Sender: TObject);
Var
        Para : String;
begin
        DMCari.CariKartIBQ.Open;
        DMCari.CariislemIBQ.Open;
        DMCari.CariislemIBQ.last;

     {   OnlineDBGrid1.Columns[15].Title.Caption :='Borcu ['+ DMCari.CariKartIBQC_PARABIRIMI.AsString+']';
        OnlineDBGrid1.Columns[16].Title.Caption :='Alacaðý ['+ Para+']';}

        PageControl1.ActivePage := TabSheet1;
        if (AnaSayfa.DikeyCariListe1.Checked = true) and (AnaSayfa.CariListe1.Checked = false) then
        begin
                Panel5.Visible := true;
                Splitter1.Visible := true;
                Splitter2.Visible := false;
                Panel7.Visible := false;
        end else if (AnaSayfa.DikeyCariListe1.Checked = false) and (AnaSayfa.CariListe1.Checked = true) then
        begin
                Panel5.Visible := false;
                Splitter1.Visible := false;
                Splitter2.Visible := true;
                Panel7.Visible := true;
        end else begin
                Panel5.Visible := false;
                Splitter1.Visible := false;
                Splitter2.Visible := false;
                Panel7.Visible := false;
        end;

end;

procedure TFCariHesap.OnlineDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
       if (DMCari.CariislemIBQKAPATMA.AsInteger=1) and
                ((DMCari.CariislemIBQISLEMTUR.AsString='Satýþ') or
                        (DMCari.CariislemIBQISLEMTUR.AsString='Alýþ Ýade'))and
                                ((DMCari.CariislemIBQTAHSILAT.AsFloat>0) or
                                        (DMCari.CariislemIBQTEDIYE.AsFloat>0))  Then
        Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                                OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(VirgulGoster(Column.Field.AsFloat))+4),
                                        rect.Top+2,VirgulGoster(Column.Field.AsFloat))
                        else OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+2),
                                        rect.Top+2,Column.Field.AsString);
                end else OnlineDBGrid1.Canvas.TextOut(rect.Left+2,
                                        rect.Top+2,Column.Field.AsString);
        end;

       if (DMCari.CariislemIBQKAPATMA.AsInteger=1) and
                ((DMCari.CariislemIBQISLEMTUR.AsString='Alýþ')
                        or (DMCari.CariislemIBQISLEMTUR.AsString='Satýþ Ýade')) and
                                ((DMCari.CariislemIBQTAHSILAT.AsFloat>0) or
                                        (DMCari.CariislemIBQTEDIYE.AsFloat>0))  Then
        Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFD9FF;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                                OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(VirgulGoster(Column.Field.AsFloat))+4),
                                        rect.Top+2,VirgulGoster(Column.Field.AsFloat))
                        else OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+2),
                                        rect.Top+2,Column.Field.AsString);
                end else OnlineDBGrid1.Canvas.TextOut(rect.Left+2,
                                        rect.Top+2,Column.Field.AsString);
        end;
end;

procedure TFCariHesap.OnlineDBGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  {      if ((DMCari.CariislemIBQISLEMTUR.AsString='Satýþ') or
                (DMCari.CariislemIBQISLEMTUR.AsString='Alýþ Ýade'))
                        and (DMCari.CariislemIBQKAPATMA.AsString='A')
                                and (DMCari.CariislemIBQTEDIYE.AsFloat>0) Then
        Begin
                BuAlleminiKapat1.Visible := true;
                BuAlleminiA1.Visible :=false;


        end else
        if ((DMCari.CariislemIBQISLEMTUR.AsString='Satýþ') or
                (DMCari.CariislemIBQISLEMTUR.AsString='Alýþ Ýade')) and
                        (DMCari.CariislemIBQKAPATMA.AsString='K')
                                and (DMCari.CariislemIBQTEDIYE.AsFloat>0) Then
        Begin
                BuAlleminiKapat1.Visible := False;
                BuAlleminiA1.Visible :=true;

        end else
        if ((DMCari.CariislemIBQISLEMTUR.AsString='Alýþ') or
                (DMCari.CariislemIBQISLEMTUR.AsString='Satýþ Ýade')) and
                        (DMCari.CariislemIBQKAPATMA.AsString='A')
                                and (DMCari.CariislemIBQTAHSILAT.AsFloat>0)  Then
        Begin
                BuAlleminiKapat1.Visible := True;
                BuAlleminiA1.Visible :=False;

        end else
        if ((DMCari.CariislemIBQISLEMTUR.AsString='Alýþ') or
                (DMCari.CariislemIBQISLEMTUR.AsString='Satýþ Ýade')) and
                        (DMCari.CariislemIBQKAPATMA.AsString='K') and
                                (DMCari.CariislemIBQTAHSILAT.AsFloat>0) Then
        Begin
                BuAlleminiKapat1.Visible := False;
                BuAlleminiA1.Visible :=True;

        end else
        if DMCari.CariislemIBQISLEMTUR.AsString = 'Ödeme' then
        begin
                BuAlleminiKapat1.Visible := False;
                BuAlleminiA1.Visible :=False;

        end
        else
        if DMCari.CariislemIBQISLEMTUR.AsString = 'Tahsilat' then
        begin
                BuAlleminiKapat1.Visible := False;
                BuAlleminiA1.Visible :=False;

        end
        else if ((DMCari.CariislemIBQISLEMTUR.AsString = 'Giriþ Dekontu') or (DMCari.CariislemIBQISLEMTUR.AsString = 'Çýkýþ Dekontu')) and (DMCari.CariislemIBQKAPATMA.AsString='A') then
        begin
                BuAlleminiKapat1.Visible := true;
                BuAlleminiA1.Visible :=False;
        end else if ((DMCari.CariislemIBQISLEMTUR.AsString = 'Giriþ Dekontu') or (DMCari.CariislemIBQISLEMTUR.AsString = 'Çýkýþ Dekontu')) and (DMCari.CariislemIBQKAPATMA.AsString='K') then
        begin
                BuAlleminiKapat1.Visible := false;
                BuAlleminiA1.Visible :=true;
        end else Abort;  }
end;

procedure TFCariHesap.OnlineDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if (Key=#13) and (DMCari.CariislemIBQ.Modified=True ) and
                ((DMCari.CariislemIBQTAHSILAT.AsFloat>0) or (DMCari.CariislemIBQTEDIYE.AsFloat>0)) Then
        begin
                        DMCari.CariislemIBQ.Post;
                        OnlineDBGrid1.EditorMode := true;
        end;

end;

procedure TFCariHesap.OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit2.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(TAMADI) like '+#39+OnlineEdit2.UpperTurk+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(TAMADI) like '+#39+OnlineEdit2.UpperTurk+'%'+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                end;
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQTAMADI.AsString = '' Then
                Begin
                      Application.MessageBox('Aradýðýnýz kayýt bulunamadý!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit2.SetFocus;
                        OnlineEdit2.SelectAll;
                end else
                Begin
                        DMCari.CariislemIBQ.Last;
                        PageControl1.ActivePage := TabSheet1;
                        OnlineDBGrid1.SetFocus;
                end;
        end;

end;

procedure TFCariHesap.BuAlleminiKapat1Click(Sender: TObject);
begin
                DMCari.CariislemIBQ.edit;
                DMCari.CariislemIBQKAPATMA.AsString:='K';
                DMCari.CariislemIBQ.Post;
end;

procedure TFCariHesap.BuAlleminiA1Click(Sender: TObject);
begin
                DMCari.CariislemIBQ.edit;
                DMCari.CariislemIBQKAPATMA.AsString:='A';
                DMCari.CariislemIBQ.Post;
end;

procedure TFCariHesap.BitBtn4Click(Sender: TObject);
begin
 {       if PageControl1.ActivePage = TabSheet1 then
        begin
                FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariHesap.or');
                FEvrak.Report.PreviewModal;
        end else if PageControl1.ActivePage = TabSheet2 then
        begin
                if StokDM.CariStokHareketIBQuery.RecordCount > 0 then
                begin
                        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariStokHareket.or');
                        FEvrak.Report.PreviewModal;
                end;
        end else if PageControl1.ActivePage = TabSheet3 then
        begin
                if FinansDataM.CariCekHareketIBQuery.RecordCount > 0 then
                begin
                        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariCekHareket.or');
                        FEvrak.Report.PreviewModal;
                end;
        end;   }
end;         

procedure TFCariHesap.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariHesap.or');
        FEvrak.Report.Print; }
end;

procedure TFCariHesap.lemSrasnaGreSrala1Click(Sender: TObject);
begin
        DMCari.CariislemIBQ.SQL.Text := 'select * from CARIISLEM Where CARIKOD=:CARIKOD AND SISTEM<>2';
        DMCari.CariislemIBQ.SQL.Add('Order By ISLEMKOD');
        DMCari.CariislemIBQ.Open;
end;

procedure TFCariHesap.OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = VK_DELETE) then
                Key := 0;
        
end;

procedure TFCariHesap.TabSheet3Show(Sender: TObject);
begin

        DMCari.CariCekIBQ.Close;
        DMCari.CariCekIBQ.Open;
end;

procedure TFCariHesap.OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 Then
        if DMCari.CariKartIBQ.Locate('CARINO', OnlineEdit3.Text,[])= False  Then
        Begin
                Application.MessageBox('Bu Numarada bir Cari Kart yok!',
                        '    Uyarý Mesajý', mb_OK);
                OnlineEdit3.SetFocus;
                OnlineEdit3.SelectAll;
        end;
end;

procedure TFCariHesap.OnlineEdit4KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit4.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(TAMADI) like '+#39+OnlineEdit4.UpperTurk+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(TAMADI) like '+#39+OnlineEdit4.UpperTurk+'%'+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                end;
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQ.RecordCount=0 Then
                Begin
                      Application.MessageBox('Aradýðýnýz kayýt bulunamadý!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit4.SetFocus;
                        OnlineEdit4.SelectAll;
                end;
        end;
end;

procedure TFCariHesap.OnlineEdit5KeyPress(Sender: TObject; var Key: Char);

begin
        if Key = #13 Then
        if DMCari.CariKartIBQ.Locate('CARINO', OnlineEdit5.Text,[])= False  Then
        Begin
                Application.MessageBox('Bu Numarada bir Cari Kart yok!',
                        '    Uyarý Mesajý', mb_OK);
                OnlineEdit5.SetFocus;
                OnlineEdit5.SelectAll;
        end;
end;

procedure TFCariHesap.OnlineEdit6KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit7.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN1) like '+#39+OnlineEdit6.UpperTurk+#39);
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN1) like '+#39+OnlineEdit6.UpperTurk+'%'+#39);
                end;
                if OnlineEdit7.Text <> '' then
                begin
                        if Pos('%',OnlineEdit7.Text) <> 0 then
                        begin
                                DMCari.CariKartIBQ.SQL.Add('and Upper(CARIUNVAN2) like '+#39+OnlineEdit7.UpperTurk+#39);
                        end else begin
                                DMCari.CariKartIBQ.SQL.Add('and Upper(CARIUNVAN2) like '+#39+OnlineEdit7.UpperTurk+'%'+#39);
                        end;
                end;
                DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1,CARIUNVAN2');
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQ.RecordCount=0 Then
                Begin
                      Application.MessageBox('Aradýðýnýz kayýt bulunamadý!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit6.SetFocus;
                        OnlineEdit6.SelectAll;
                end;
        end;
end;

procedure TFCariHesap.OnlineEdit7KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit7.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN2) like '+#39+OnlineEdit7.UpperTurk+#39);
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(CARIUNVAN2) like '+#39+OnlineEdit7.UpperTurk+'%'+#39);
                end;
                if OnlineEdit6.Text <> '' then
                begin
                        if Pos('%',OnlineEdit6.Text) <> 0 then
                        begin
                                DMCari.CariKartIBQ.SQL.Add('and Upper(CARIUNVAN1) like '+#39+OnlineEdit6.UpperTurk+#39);
                        end else begin
                                DMCari.CariKartIBQ.SQL.Add('and Upper(CARIUNVAN1) like '+#39+OnlineEdit6.UpperTurk+'%'+#39);
                        end;
                end;
                DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1,CARIUNVAN2');
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQ.RecordCount=0 Then
                Begin
                      Application.MessageBox('Aradýðýnýz kayýt bulunamadý!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By CARIUNVAN1');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit7.SetFocus;
                        OnlineEdit7.SelectAll;
                end;
        end;
end;
procedure TFCariHesap.OnlineDBGrid1Columns6KeyPress(Column: TOnlineColumn;
  var Key: Char);
begin
              if (Key<> #13) and (Key<> chr(VK_UP)) and (Key<> chr(VK_DOWN)) and (Key<> chr(VK_LEFT)) and (Key<> chr(VK_RIGHT)) then
                        Key := #0;
end;

procedure TFCariHesap.TabSheet2Show(Sender: TObject);
begin

        DMCari.CariStokIBQ.Close;
        DMCari.CariStokIBQ.Open;
end;

procedure TFCariHesap.OnlineEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key=vk_down then DMCari.CariKartIBQ.Next;
        if key=vk_up then DMCari.CariKartIBQ.Prior;
end;

procedure TFCariHesap.OnlineDBGrid1Columns2KeyPress(Column: TOnlineColumn;
  var Key: Char);
begin
              if (Key<> #13) and (Key<> chr(VK_UP)) and (Key<> chr(VK_DOWN)) and (Key<> chr(VK_LEFT)) and (Key<> chr(VK_RIGHT)) then
                        Key := #0;
end;

procedure TFCariHesap.DBOnlineEdit3Change(Sender: TObject);
begin
        if  DMCari.CariKartIBQDURUM.AsString ='Alacaklý' Then
           DBOnlineEdit3.Color := clGreen
        else if  DMCari.CariKartIBQDURUM.AsString ='Borçlu' Then
           DBOnlineEdit3.Color := clRed
        else if  DMCari.CariKartIBQDURUM.AsString ='' Then
           DBOnlineEdit3.Color := $00D2D2FF;
end;

procedure TFCariHesap.DBOnlineEdit7Change(Sender: TObject);
begin
        Panel2.Caption := 'Cari Hesap [ '+DMCari.CariKartIBQCARIUNVAN1.AsString+' '+DMCari.CariKartIBQCARIUNVAN2.AsString+ ' ]';
end;

procedure TFCariHesap.TabSheet4Show(Sender: TObject);
begin

        DMCari.CariBankaIBQ.Close;
        DMCari.CariBankaIBQ.Open;
end;

procedure TFCariHesap.OnlineDBGrid1DblClick(Sender: TObject);
var
        CaislKod_in: integer;
        IslemTur: string;
begin
   {     CaislKod_in :=  DMCari.CariislemIBQCAISLKOD.AsInteger;
        IslemTur := DMCari.CariislemIBQISLEMTUR.AsString;
        if IslemTur = 'Alýþ' then
        begin
                FormDeactivate(nil);
                CariDM.AlisIBQuery.Open;
                CariDM.AlisBodroIBQuery.Open;
                CariDM.AlisIBQuery.Locate('CAISLKOD',CaislKod_in,[]);
                if Application.FindComponent('FAlis') = nil then
                        Application.CreateForm(TFAlis,FAlis);
                FAlis.Show;
        end else if IslemTur = 'Satýþ' then
        begin
                FormDeactivate(nil);
                CariDM.SatisIBQuery.Open;
                CariDM.SatisBodroIBQuery.Open;
                CariDM.SatisIBQuery.Locate('CAISLKOD',CaislKod_in,[]);
                if Application.FindComponent('FSatis') = nil then
                        Application.CreateForm(TFSatis,FSatis);
                FSatis.Show;
        end else if IslemTur = 'Stok Giriþi' then
        begin
                FormDeactivate(nil);
                StokDM.StokGirisIBQuery.Open;
                StokDM.GirisBodroIBQuery.Open;
                StokDM.StokGirisIBQuery.Locate('CAISLKOD',CaislKod_in,[]);
                if Application.FindComponent('FStokGiris') = nil then
                        Application.CreateForm(TFStokGiris,FStokGiris);
                FStokGiris.Show;
        end else if IslemTur = 'Stok Çýkýþý' then
        begin
                FormDeactivate(nil);
                StokDM.StokCikisIBQuery.Open;
                StokDM.CikisBodroIBQuery.Open;
                StokDM.StokCikisIBQuery.Locate('CAISLKOD',CaislKod_in,[]);
                if Application.FindComponent('FStokCikis') = nil then
                        Application.CreateForm(TFStokCikis,FStokCikis);
                FStokCikis.Show;
        end;  }
end;

procedure TFCariHesap.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFCariHesap.ariheGre1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMCari.CariKartIBQ.GetBookmark;
        ProcTarihCari.ParamByName('CARIKOD_IN').AsInteger := DMCari.CariKartIBQCARIKOD.AsInteger;
        ProcTarihCari.ParamByName('CARIKOD2_IN').AsString := '';
        ProcTarihCari.Prepare;
        ProcTarihCari.ExecProc;
        DMCari.CariKartIBQ.GotoBookmark(yer);
        DMCari.CariislemIBQ.SQL.Text := 'select * from CARIISLEM';
        DMCari.CariislemIBQ.SQL.Add('Where CARIKOD=:CARIKOD AND SISTEM<>2');
        DMCari.CariislemIBQ.SQL.Add('Order By TARIH,ISLEMKOD');
        DMCari.CariislemIBQ.Open;
end;

procedure TFCariHesap.lemSrasnaGre1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMCari.CariKartIBQ.GetBookmark;
        ProcIslemCari.ParamByName('CARIKOD_IN').AsInteger := DMCari.CariKartIBQCARIKOD.AsInteger;
        ProcIslemCari.ParamByName('CARIKOD2_IN').AsString := '';
        ProcIslemCari.Prepare;
        ProcIslemCari.ExecProc;
        DMCari.CariKartIBQ.GotoBookmark(yer);
        DMCari.CariislemIBQ.SQL.Text := 'select * from CARIISLEM';
        DMCari.CariislemIBQ.SQL.Add('Where CARIKOD=:CARIKOD AND SISTEM<>2');
        DMCari.CariislemIBQ.SQL.Add('Order By ISLEMKOD');
        DMCari.CariislemIBQ.Open;
        

end;

procedure TFCariHesap.GroupBox7Exit(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Modified then
             DMCari.CariKartIBQ.Post;
end;

procedure TFCariHesap.FormActivate(Sender: TObject);
begin
        DMCari.CariislemIBQ.Refresh;
end;

procedure TFCariHesap.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  yer,yer1: pointer;
begin
        if Key = VK_F5 then
        begin
                yer := DMCari.CariKartIBQ.GetBookmark;
                yer1 := DMCari.CariislemIBQ.GetBookmark;
                DMCari.CariislemIBQ.Close;
                DMCari.CariKartIBQ.Close;
                DMCari.CariKartIBQ.Open;
                DMCari.CariislemIBQ.Open;
                DMCari.CariKartIBQ.GotoBookmark(yer);
                DMCari.CariislemIBQ.GotoBookmark(yer1);

        end;

end;

procedure TFCariHesap.OnlineEdit8KeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#13 Then
                if DMCari.CariKartIBQ.Locate('Kod',OnlineEdit8.Text,[]) Then
                Begin
                        OnlineEdit8.Text := DBOnlineEdit20.Text;
                        OnlineDBGrid1.SetFocus;
                end
                else
                begin
                        OnlineEdit8.Text := DBOnlineEdit20.Text;
                        ShowMessage('Kayýt bulunamadý');
                end;
end;

procedure TFCariHesap.DBOnlineEdit20Change(Sender: TObject);
begin
        OnlineEdit8.Text := DBOnlineEdit20.Text;
end;

end.
procedure TFCariHesap.FormActivate(Sender: TObject);
begin

end;


