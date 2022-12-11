unit BankadanCekOdeme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OnlineButton, StdCtrls, DBCtrls, DBOnlineCombo,
  OnlineDBDateEdit, Mask, DBOnlineEdit, ExtCtrls, OnlineCustomControl;

type
  TFBankaCekOde = class(TForm)
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
    Label15: TLabel;
    DBEdit15: TDBOnlineEdit;
    Label5: TLabel;
    DBOnlineEdit9: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    Label4: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
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
  FBankaCekOde: TFBankaCekOde;

implementation

{$R *.dfm}
uses FinansDM, CariSecim, GelGidSec, KasaSecim, Cekler, RaporDaMo, DB,
  BankaSec, Evraklar, Rapor2,main;

procedure TFBankaCekOde.BitBtn3Click(Sender: TObject);
begin
        if FinansDataM.BankaCekOdeIBQuery.Active  = false then
                YeniTahsilatClick(sender);
        FBankaSec.DataSet := FinansDataM.BankaCekOdeIBQuery;
        FBankaSec.ShowModal;
end;

procedure TFBankaCekOde.OnlineButton1Click(Sender: TObject);
begin
        FinansDataM.GelGidSecIBQuery.SQL.Text := 'select * from GELGIDER';
        FinansDataM.GelGidSecIBQuery.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
        FinansDataM.GelGidSecIBQuery.SQL.Add('Order by GELGITADI'); 
        FinansDataM.GelGidSecIBQuery.Open;
        if Application.FindComponent('FGelGidSec') = nil then
                Application.CreateForm(TFGelGidSec,FGelGidSec);
        FGelGidSec.DataSet := FinansDataM.BankaCekOdeIBQuery;
        FGelGidSec.ShowModal;
end;

procedure TFBankaCekOde.BFirstPageClick(Sender: TObject);
begin
        FinansDataM.BankaCekOdeIBQuery.Open;
        FinansDataM.BankaCekOdeIBQuery.First;
end;

procedure TFBankaCekOde.ButtonPreviousClick(Sender: TObject);
begin
        FinansDataM.BankaCekOdeIBQuery.Open;
        FinansDataM.BankaCekOdeIBQuery.Prior;
end;

procedure TFBankaCekOde.ButtonNextClick(Sender: TObject);
begin
        FinansDataM.BankaCekOdeIBQuery.Open;
        FinansDataM.BankaCekOdeIBQuery.Next;
end;

procedure TFBankaCekOde.BLastPageClick(Sender: TObject);
begin
        FinansDataM.BankaCekOdeIBQuery.Open;
        FinansDataM.BankaCekOdeIBQuery.Last;
end;

procedure TFBankaCekOde.YeniTahsilatClick(Sender: TObject);
begin
        FinansDataM.BankalarIBQuery.Open;
        if FinansDataM.BankalarIBQuery.RecordCount > 0 then
        begin
                if FinansDataM.BankaCekOdeIBQuery.Modified Then
                        FinansDataM.BankaCekOdeIBQuery.Post;
                FinansDataM.BankaCekOdeIBQuery.Close;
                FinansDataM.BankaCekOdeIBQuery.Open;
                FinansDataM.BankaCekOdeIBQuery.Append;
                FinansDataM.BankaCekOdeIBQueryBANKAKOD.AsInteger := FinansDataM.BankalarIBQueryBANKAKOD.AsInteger;
                FinansDataM.BankaCekOdeIBQuery.Post;
        end else ShowMessage('Banka eklemeden iþlem yapamazsýnýz!.');
end;

procedure TFBankaCekOde.BitBtn27Click(Sender: TObject);
var
        SilinecekBaglantiNo: integer;
begin
        if FinansDataM.BankaCekOdeIBQuery.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                begin
                        SilinecekBaglantiNo := FinansDataM.BankaCekOdeIBQueryBAGLANTINO.AsInteger;
                        FinansDataM.CekIBQuery.Open;
                        if FinansDataM.CekIBQuery.Locate('CAISLKOD',SilinecekBaglantiNo,[]) Then
                        Begin
                                FinansDataM.CekIBQuery.Edit;
                                FinansDataM.CekIBQueryBAGLANTINO.Clear;
                                FinansDataM.CekIBQueryKAPATMA.AsString  :='A';
                                FinansDataM.CekIBQuery.Post;
                        end;
                        FinansDataM.BankaCekOdeIBQuery.Delete;
                end;
end;

procedure TFBankaCekOde.BitBtn25Click(Sender: TObject);
begin
        close;
end;

procedure TFBankaCekOde.DBEdit11Exit(Sender: TObject);
begin
        if FinansDataM.BankaCekOdeIBQuery.Modified then
                FinansDataM.BankaCekOdeIBQuery.Post;
end;

procedure TFBankaCekOde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if FinansDataM.BankaCekOdeIBQuery.Modified then
                FinansDataM.BankaCekOdeIBQuery.Post;
        FinansDataM.BankaCekOdeIBQuery.Close;
end;

procedure TFBankaCekOde.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFBankaCekOde.GroupBox1Exit(Sender: TObject);
begin
        if FinansDataM.BankaCekOdeIBQuery.Modified Then
                FinansDataM.BankaCekOdeIBQuery.Post;
end;

procedure TFBankaCekOde.Panel6Exit(Sender: TObject);
begin
        if FinansDataM.BankaCekOdeIBQuery.Modified Then
                FinansDataM.BankaCekOdeIBQuery.Post;
end;

procedure TFBankaCekOde.OnlineButton2Click(Sender: TObject);
Var
        C_CAISLKOD, C_VADE, C_BANKA,C_IslemNo,C_ParaBirim : String;
        C_TAHSILAT : Real;
        BankaKod,CariKod,CariNo: integer;
begin
        RaporDM.CeklerIBQuery.SQL.Text := 'select * from CARIISLEM';
        RaporDM.CeklerIBQuery.SQL.Add('Where ISLEMTUR='+#39+'Çek Yazma'+#39+' and KAPATMA<>'+#39+'K'+#39);
        RaporDM.CeklerIBQuery.SQL.Add('ORDER BY CAISLKOD');
        if Application.FindComponent('FCekler') = nil then
                Application.CreateForm(TFCekler,FCekler);
        FCekler.DataSet := FinansDataM.BankaCekOdeIBQuery;
        FCekler.OnlineDBGrid2.Columns[4].Visible := true;
        FCekler.OnlineDBGrid2.Columns[3].Visible := false;
        FCekler.ShowModal;
        if FCekler.IslemOnay = true then
        begin
                FCekler.IslemOnay := false;
                FinansDataM.BankalarIBQuery.Open;
                BankaKod        := FinansDataM.BankalarIBQueryBANKAKOD.AsInteger;
                C_CAISLKOD      := RaporDM.CeklerIBQueryCAISLKOD.AsString;
                C_IslemNo       := RaporDM.CeklerIBQueryCAISLEMNO.AsString;
                C_VADE          := RaporDM.CeklerIBQueryVADE.AsString;
                C_BANKA         := RaporDM.CeklerIBQueryBANKA.AsString;
                C_TAHSILAT      := RaporDM.CeklerIBQueryD_TEDIYE.AsFloat;
                CariKod         := RaporDM.CeklerIBQueryCARIKOD.AsInteger;
                CariNo          := RaporDM.CeklerIBQueryCARINO.AsInteger;
                C_ParaBirim     := RaporDM.CeklerIBQueryPARABIRIMI.AsString;
                FinansDataM.BankaCekOdeIBQuery.Edit;
                FinansDataM.BankaCekOdeIBQueryISLEMTUR.AsString := 'Bankadan Çek Ödeme';
                FinansDataM.BankaCekOdeIBQueryCARIKOD.AsInteger := CariKod;
                FinansDataM.BankaCekOdeIBQueryCARINO.AsInteger := CariNo;
                FinansDataM.BankaCekOdeIBQueryACIKLAMA.AsString := C_IslemNo +' nolu Çeki Bankadan Ödeme';
                FinansDataM.BankaCekOdeIBQueryD_TEDIYE.AsFloat    := C_TAHSILAT;
                FinansDataM.BankaCekOdeIBQueryPARACIKIS.AsFloat    := C_TAHSILAT;
                FinansDataM.BankaCekOdeIBQueryVADE.AsString     := C_VADE;
                FinansDataM.BankaCekOdeIBQueryBANKA.AsString    := C_BANKA;
                FinansDataM.BankaCekOdeIBQueryBAGLANTINO.AsString := C_CAISLKOD;

                FinansDataM.BankaCekOdeIBQueryPARABIRIMI.AsString := C_ParaBirim;
                Rapor2DM.DovizKuruBulProc.ParamByName('PARABIRIMI_IN').AsString := C_ParaBirim;
                Rapor2DM.DovizKuruBulProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
                Rapor2DM.DovizKuruBulProc.Prepare;
                Rapor2DM.DovizKuruBulProc.ExecProc;

                FinansDataM.BankaCekOdeIBQueryISLEMKURU.AsFloat :=  Rapor2DM.DovizKuruBulProc.ParamByName('DEGER_OUT').AsFloat;

                if (FinansDataM.BankaCekOdeIBQueryBANKAKOD.AsInteger = 0) or (FinansDataM.BankaCekOdeIBQueryBANKAKOD.AsString = '') then
                        FinansDataM.BankaCekOdeIBQueryBANKAKOD.AsInteger := BankaKod;
                FinansDataM.BankaCekOdeIBQueryKAPATMA.AsString  :='K';
                FinansDataM.BankaCekOdeIBQuery.Post;
        end;

end;

procedure TFBankaCekOde.DBOnlineEdit9Change(Sender: TObject);
begin
        if (DBOnlineEdit9.Text <> '') and (DBOnlineEdit9.Text <> '0') then
                OnlineButton2.Enabled := false
        else OnlineButton2.Enabled := true;
end;

procedure TFBankaCekOde.BitBtn1Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\BankadanCekOde.oe');
        FEvrak.Report.PreviewModal;
end;

procedure TFBankaCekOde.BitBtn5Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\BankadanCekOde.oe');
        FEvrak.Report.Print;
end;

end.
