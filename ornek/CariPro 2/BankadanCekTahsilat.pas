unit BankadanCekTahsilat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OnlineButton, StdCtrls, DBCtrls, DBOnlineCombo,
  OnlineDBDateEdit, Mask, DBOnlineEdit, ExtCtrls, OnlineCustomControl,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDBEdit;

type
  TFBankaCekTahsil = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBEdit11: TDBOnlineEdit;
    YeniTahsilat: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn1: TOnlineButton;
    BitBtn5: TOnlineButton;
    Panel6: TPanel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    BitBtn3: TOnlineButton;
    DBOnlineEdit6: TDBOnlineEdit;
    OnlineButton1: TOnlineButton;
    Panel3: TPanel;
    DBOnlineEdit1: TDBOnlineEdit;
    Label2: TLabel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    Label7: TLabel;
    OnlineDBDateEdit1: TOnlineDBDateEdit;
    DBEdit15: TDBOnlineEdit;
    Label15: TLabel;
    Label5: TLabel;
    DBOnlineEdit9: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    DBOnlineEdit7: TDBOnlineEdit;
    Label4: TLabel;
    Label19: TLabel;
    DBText1: TDBText;
    DBEdit12: TDBOnlineEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure Panel6Exit(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure DBOnlineEdit9Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBankaCekTahsil: TFBankaCekTahsil;

implementation

{$R *.dfm}
uses FinansDM, CariSecim, GelGidSec, KasaSecim, Cekler, RaporDaMo, DB,
  BankaSec, Evraklar, Rapor2,main;

procedure TFBankaCekTahsil.BitBtn3Click(Sender: TObject);
begin
        if FinansDataM.BankaCekTahIBQuery.Active  = false then
                YeniTahsilatClick(sender);
        FBankaSec.DataSet := FinansDataM.BankaCekTahIBQuery;
        FBankaSec.ShowModal;
end;

procedure TFBankaCekTahsil.OnlineButton1Click(Sender: TObject);
begin
        FinansDataM.GelGidSecIBQuery.SQL.Text := 'select * from GELGIDER';
        FinansDataM.GelGidSecIBQuery.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
        FinansDataM.GelGidSecIBQuery.SQL.Add('Order by GELGITADI'); 
        FinansDataM.GelGidSecIBQuery.Open;
        if Application.FindComponent('FGelGidSec') = nil then
                Application.CreateForm(TFGelGidSec,FGelGidSec);
        FGelGidSec.DataSet := FinansDataM.BankaCekTahIBQuery;
        FGelGidSec.ShowModal;
end;

procedure TFBankaCekTahsil.BFirstPageClick(Sender: TObject);
begin
        FinansDataM.BankaCekTahIBQuery.Open;
        FinansDataM.BankaCekTahIBQuery.First;
end;

procedure TFBankaCekTahsil.ButtonPreviousClick(Sender: TObject);
begin
        FinansDataM.BankaCekTahIBQuery.Open;
        FinansDataM.BankaCekTahIBQuery.Prior;
end;

procedure TFBankaCekTahsil.ButtonNextClick(Sender: TObject);
begin
        FinansDataM.BankaCekTahIBQuery.Open;
        FinansDataM.BankaCekTahIBQuery.Next;
end;

procedure TFBankaCekTahsil.BLastPageClick(Sender: TObject);
begin
        FinansDataM.BankaCekTahIBQuery.Open;
        FinansDataM.BankaCekTahIBQuery.Last;
end;

procedure TFBankaCekTahsil.YeniTahsilatClick(Sender: TObject);
begin
        FinansDataM.BankalarIBQuery.Open;
        FinansDataM.BankaCekTahIBQuery.Open;
        if FinansDataM.BankalarIBQuery.RecordCount > 0 then
        begin
                if FinansDataM.BankaCekTahIBQuery.Modified Then
                        FinansDataM.BankaCekTahIBQuery.Post;
                FinansDataM.BankaCekTahIBQuery.Append;
                FinansDataM.BankaCekTahIBQueryBANKAKOD.AsInteger := FinansDataM.BankalarIBQueryBANKAKOD.AsInteger;
                FinansDataM.BankaCekTahIBQuery.Post;
        end else ShowMessage('Banka eklemeden iþlem yapamazsýnýz!.');
end;

procedure TFBankaCekTahsil.BitBtn27Click(Sender: TObject);
var
        SilinecekBaglantiNo: integer;
begin
        if FinansDataM.BankaCekTahIBQuery.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                begin
                        SilinecekBaglantiNo := FinansDataM.BankaCekTahIBQueryBAGLANTINO.AsInteger;
                        FinansDataM.CekIBQuery.Open;
                        if FinansDataM.CekIBQuery.Locate('CAISLKOD',SilinecekBaglantiNo,[]) Then
                        Begin
                                FinansDataM.CekIBQuery.Edit;
                                FinansDataM.CekIBQueryBAGLANTINO.Clear;
                                FinansDataM.CekIBQueryKAPATMA.AsString  :='A';
                                FinansDataM.CekIBQuery.Post;
                        end;
                        FinansDataM.BankaCekTahIBQuery.Delete;
                end;
end;

procedure TFBankaCekTahsil.BitBtn25Click(Sender: TObject);
begin
        close;
end;

procedure TFBankaCekTahsil.DBEdit11Exit(Sender: TObject);
begin
        if FinansDataM.BankaCekTahIBQuery.Modified then
                FinansDataM.BankaCekTahIBQuery.Post;
end;

procedure TFBankaCekTahsil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if FinansDataM.BankaCekTahIBQuery.Modified then
                FinansDataM.BankaCekTahIBQuery.Post;
        FinansDataM.BankaCekTahIBQuery.Close;
end;

procedure TFBankaCekTahsil.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineCombo) or
         (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBDateEdit) then
    begin
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFBankaCekTahsil.GroupBox1Exit(Sender: TObject);
begin
        if FinansDataM.BankaCekTahIBQuery.Modified Then
                FinansDataM.BankaCekTahIBQuery.Post;
end;

procedure TFBankaCekTahsil.Panel6Exit(Sender: TObject);
begin
        if FinansDataM.BankaCekTahIBQuery.Modified Then
                FinansDataM.BankaCekTahIBQuery.Post;
end;

procedure TFBankaCekTahsil.OnlineButton2Click(Sender: TObject);
Var
        C_CAISLKOD, C_VADE, C_BANKA, C_IslemNo,C_ParaBirim: String;
        C_TEDIYE : Real;
        BankaKod,CariKod,CariNo: integer;
begin
        RaporDM.CeklerIBQuery.SQL.Text := 'select * from CARIISLEM';
        RaporDM.CeklerIBQuery.SQL.Add('Where ISLEMTUR='+#39+'Çek Giriþi'+#39+' and KAPATMA<>'+#39+'K'+#39);
        RaporDM.CeklerIBQuery.SQL.Add('ORDER BY CAISLKOD');
        if Application.FindComponent('FCekler') = nil then
                Application.CreateForm(TFCekler,FCekler);
        FCekler.DataSet := FinansDataM.BankaCekTahIBQuery;
        FCekler.OnlineDBGrid2.Columns[3].Visible := true;
        FCekler.OnlineDBGrid2.Columns[4].Visible := false;
        FCekler.ShowModal;
        if FCekler.IslemOnay = true then
        begin
                FinansDataM.BankalarIBQuery.Open;
                FCekler.IslemOnay := false;
                C_CAISLKOD      := RaporDM.CeklerIBQueryCAISLKOD.AsString;
                C_IslemNo       := RaporDM.CeklerIBQueryCAISLEMNO.AsString;
                C_VADE          := RaporDM.CeklerIBQueryVADE.AsString;
                C_BANKA         := RaporDM.CeklerIBQueryBANKA.AsString;
                C_TEDIYE        := RaporDM.CeklerIBQueryD_TAHSILAT.AsFloat;
                BankaKod        := FinansDataM.BankalarIBQueryBANKAKOD.AsInteger;
                CariKod         := RaporDM.CeklerIBQueryCARIKOD.AsInteger;
                CariNo          := RaporDM.CeklerIBQueryCARINO.AsInteger;
                C_ParaBirim     := RaporDM.CeklerIBQueryPARABIRIMI.AsString;
                DBEdit11.Sayi := false;
                FinansDataM.BankaCekTahIBQuery.Edit;
                FinansDataM.BankaCekTahIBQueryISLEMTUR.AsString := 'Bankadan Çek Tahsilatý';
                FinansDataM.BankaCekTahIBQueryCARIKOD.AsInteger := CariKod;
                FinansDataM.BankaCekTahIBQueryCARINO.AsInteger := CariNo;
                FinansDataM.BankaCekTahIBQueryACIKLAMA.AsString := C_IslemNo +' nolu Çekin Bankadan Tahsilatý';
                FinansDataM.BankaCekTahIBQueryD_TEDIYE.AsFloat    := C_TEDIYE;
                FinansDataM.BankaCekTahIBQueryPARAGIRIS.AsFloat    := C_TEDIYE;
                FinansDataM.BankaCekTahIBQueryVADE.AsString     := C_VADE;
                FinansDataM.BankaCekTahIBQueryBANKA.AsString    := C_BANKA;

                FinansDataM.BankaCekTahIBQueryPARABIRIMI.AsString := C_ParaBirim;
                Rapor2DM.DovizKuruBulProc.ParamByName('PARABIRIMI_IN').AsString := C_ParaBirim;
                Rapor2DM.DovizKuruBulProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
                Rapor2DM.DovizKuruBulProc.Prepare;
                Rapor2DM.DovizKuruBulProc.ExecProc;

                FinansDataM.BankaCekTahIBQueryISLEMKURU.AsFloat :=  Rapor2DM.DovizKuruBulProc.ParamByName('DEGER_OUT').AsFloat;
                if (FinansDataM.BankaCekTahIBQueryBANKAKOD.AsInteger = 0) or (FinansDataM.BankaCekTahIBQueryBANKAKOD.AsString = '') then
                        FinansDataM.BankaCekTahIBQueryBANKAKOD.AsInteger := BankaKod;
                FinansDataM.BankaCekTahIBQueryBAGLANTINO.AsString := C_CAISLKOD;
                FinansDataM.BankaCekTahIBQueryKAPATMA.AsString  :='K';
                FinansDataM.BankaCekTahIBQuery.Post;
                DBEdit11.Sayi := true;
        end;

end;

procedure TFBankaCekTahsil.DBOnlineEdit9Change(Sender: TObject);
begin
        if (DBOnlineEdit9.Text <> '') and (DBOnlineEdit9.Text <> '0') then
                OnlineButton2.Enabled := false
        else OnlineButton2.Enabled := true;
end;

procedure TFBankaCekTahsil.BitBtn1Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\BankadanCekTahsil.oe');
        FEvrak.Report.PreviewModal;
end;

procedure TFBankaCekTahsil.BitBtn5Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\BankadanCekTahsil.oe');
        FEvrak.Report.Print;
end;

end.
