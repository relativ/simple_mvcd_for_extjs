unit EldenCekTahsilat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OnlineButton, StdCtrls, DBCtrls, DBOnlineCombo,
  OnlineDBDateEdit, Mask, DBOnlineEdit, ExtCtrls, OnlineCustomControl;

type
  TFEldenCekTahsil = class(TForm)
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
    DBEdit12: TDBOnlineEdit;
    Label19: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
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
  FEldenCekTahsil: TFEldenCekTahsil;

implementation

uses FinansDM, RaporDaMo, Cekler, Evraklar, KasaSecim, GelGidSec, SabitDaMo,
  DB,main, Rapor2, DataModul;

{$R *.dfm}

procedure DataAc;
begin
        FinansDataM.EldenCekTahsilIBQuery.Close;
        FinansDataM.EldenCekTahsilIBQuery.Open;
        CariDM.CariKartIBQuery.Close;
        CariDM.CariKartIBQuery.Open;

end;

procedure TFEldenCekTahsil.BitBtn3Click(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active then
        begin
                if FinansDataM.EldenCekTahsilIBQuery.Active = false  = false then
                        YeniTahsilatClick(sender);
                FKasaSecim.DataSet := FinansDataM.EldenCekTahsilIBQuery;
                FKasaSecim.ShowModal;
        end else ShowMessage('Çek tahsilatý datasýný açmadan çek seçemezsiniz!..');
end;

procedure TFEldenCekTahsil.OnlineButton1Click(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active then
        begin
                FinansDataM.GelGidSecIBQuery.SQL.Text := 'select * from GELGIDER';
                FinansDataM.GelGidSecIBQuery.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                FinansDataM.GelGidSecIBQuery.SQL.Add('Order by GELGITADI'); 
                FinansDataM.GelGidSecIBQuery.Open;
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                FGelGidSec.DataSet := FinansDataM.EldenCekTahsilIBQuery;
                FGelGidSec.ShowModal;
        end else ShowMessage('Çek tahsilatý datasýný açmadan çek seçemezsiniz!..');
end;

procedure TFEldenCekTahsil.BFirstPageClick(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active = false then
                DataAc;
        FinansDataM.EldenCekTahsilIBQuery.First;
end;

procedure TFEldenCekTahsil.ButtonPreviousClick(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active = false then
                DataAc;
        FinansDataM.EldenCekTahsilIBQuery.Prior;
end;

procedure TFEldenCekTahsil.ButtonNextClick(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active = false then
                DataAc;
        FinansDataM.EldenCekTahsilIBQuery.Next;
end;

procedure TFEldenCekTahsil.BLastPageClick(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active = false then
                DataAc;
        FinansDataM.EldenCekTahsilIBQuery.Last;
end;

procedure TFEldenCekTahsil.YeniTahsilatClick(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active = false then
                DataAc;
        if FinansDataM.EldenCekTahsilIBQuery.Modified Then
                FinansDataM.EldenCekTahsilIBQuery.Post;
        FinansDataM.EldenCekTahsilIBQuery.Append;
        FinansDataM.EldenCekTahsilIBQueryKASAKOD.AsInteger := FinansDataM.KasalarIBQueryKASAKOD.AsInteger;
        FinansDataM.EldenCekTahsilIBQuery.Post;
end;

procedure TFEldenCekTahsil.BitBtn27Click(Sender: TObject);
var
        SilinecekBaglantiNo: integer;
begin
        if FinansDataM.EldenCekTahsilIBQuery.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                begin
                        SilinecekBaglantiNo := FinansDataM.EldenCekTahsilIBQueryBAGLANTINO.AsInteger;
                        FinansDataM.CekIBQuery.Open;
                        if FinansDataM.CekIBQuery.Locate('CAISLKOD',SilinecekBaglantiNo,[]) Then
                        Begin
                                FinansDataM.CekIBQuery.Edit;
                                FinansDataM.CekIBQueryBAGLANTINO.Clear;
                                FinansDataM.CekIBQueryKAPATMA.AsString  :='A';
                                FinansDataM.CekIBQuery.Post;
                        end;
                        FinansDataM.EldenCekTahsilIBQuery.Delete;
                end;
end;

procedure TFEldenCekTahsil.BitBtn25Click(Sender: TObject);
begin
        close;
end;

procedure TFEldenCekTahsil.DBEdit11Exit(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Modified then
                FinansDataM.EldenCekTahsilIBQuery.Post;
end;

procedure TFEldenCekTahsil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Modified then
                FinansDataM.EldenCekTahsilIBQuery.Post;
        FinansDataM.EldenCekTahsilIBQuery.Close;
end;

procedure TFEldenCekTahsil.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFEldenCekTahsil.GroupBox1Exit(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Modified Then
                FinansDataM.EldenCekTahsilIBQuery.Post;
end;

procedure TFEldenCekTahsil.Panel6Exit(Sender: TObject);
begin
        if FinansDataM.EldenCekTahsilIBQuery.Modified Then
                FinansDataM.EldenCekTahsilIBQuery.Post;
end;

procedure TFEldenCekTahsil.OnlineButton2Click(Sender: TObject);
Var
        C_CAISLKOD, C_VADE, C_BANKA, C_IslemNo,C_ParaBirim : String;
        C_TEDIYE : Real;
        KasaKod,CariKod,CariNo: integer;
begin
        if FinansDataM.EldenCekTahsilIBQuery.Active then
        begin
                RaporDM.CeklerIBQuery.SQL.Text := 'select * from CARIISLEM';
                RaporDM.CeklerIBQuery.SQL.Add('Where ISLEMTUR='+#39+'Çek Giriþi'+#39+' and KAPATMA<>'+#39+'K'+#39);
                RaporDM.CeklerIBQuery.SQL.Add('ORDER BY CAISLKOD');
                if Application.FindComponent('FCekler') = nil then
                        Application.CreateForm(TFCekler,FCekler);
                FCekler.DataSet := FinansDataM.EldenCekTahsilIBQuery;
                FCekler.OnlineDBGrid2.Columns[3].Visible := true;
                FCekler.OnlineDBGrid2.Columns[4].Visible := false;
                FCekler.ShowModal;
                if FCekler.IslemOnay = true then
                begin
                        FCekler.IslemOnay := false;
                        KasaKod        := FinansDataM.KasalarIBQueryKASAKOD.AsInteger;
                        C_CAISLKOD      := RaporDM.CeklerIBQueryCAISLKOD.AsString;
                        C_IslemNo       := RaporDM.CeklerIBQueryCAISLEMNO.AsString;
                        C_VADE          := RaporDM.CeklerIBQueryVADE.AsString;
                        C_BANKA         := RaporDM.CeklerIBQueryBANKA.AsString;
                        C_TEDIYE        := RaporDM.CeklerIBQueryD_TAHSILAT.AsFloat;
                        CariKod         := RaporDM.CeklerIBQueryCARIKOD.AsInteger;
                        CariNo          := RaporDM.CeklerIBQueryCARINO.AsInteger;
                        C_ParaBirim     := RaporDM.CeklerIBQueryPARABIRIMI.AsString;
                        FinansDataM.EldenCekTahsilIBQuery.Edit;
                        FinansDataM.EldenCekTahsilIBQueryISLEMTUR.AsString := 'Elden Çek Tahsilatý';
                        FinansDataM.EldenCekTahsilIBQueryCARIKOD.AsInteger := CariKod;
                        FinansDataM.EldenCekTahsilIBQueryCARINO.AsInteger := CariNo;
                        FinansDataM.EldenCekTahsilIBQueryACIKLAMA.AsString := C_IslemNo +' nolu Çekin Elden Tahsilatý';
                        FinansDataM.EldenCekTahsilIBQueryD_TAHSILAT.AsFloat    := C_TEDIYE;
                        FinansDataM.EldenCekTahsilIBQueryVADE.AsString     := C_VADE;
                        FinansDataM.EldenCekTahsilIBQueryBANKA.AsString    := C_BANKA;

                        FinansDataM.EldenCekTahsilIBQueryPARABIRIMI.AsString := C_ParaBirim;

                        Rapor2DM.DovizKuruBulProc.ParamByName('PARABIRIMI_IN').AsString := C_ParaBirim;
                        Rapor2DM.DovizKuruBulProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
                        Rapor2DM.DovizKuruBulProc.Prepare;
                        Rapor2DM.DovizKuruBulProc.ExecProc;

                        FinansDataM.EldenCekTahsilIBQueryISLEMKURU.AsFloat :=  Rapor2DM.DovizKuruBulProc.ParamByName('DEGER_OUT').AsFloat;
                        if (FinansDataM.EldenCekTahsilIBQueryKASAKOD.AsInteger = 0) or (FinansDataM.EldenCekTahsilIBQueryKASAKOD.AsString = '') then
                                FinansDataM.EldenCekTahsilIBQueryKASAKOD.AsInteger := KasaKod;
                        FinansDataM.EldenCekTahsilIBQueryKAPATMA.AsString  :='K';
                        FinansDataM.EldenCekTahsilIBQuery.Post;
                end;
        end else ShowMessage('Çek tahsilatý datasýný açmadan çek seçemezsiniz!..');

end;

procedure TFEldenCekTahsil.DBOnlineEdit9Change(Sender: TObject);
begin
        if (DBOnlineEdit9.Text <> '') and (DBOnlineEdit9.Text <> '0') then
                OnlineButton2.Enabled := false
        else OnlineButton2.Enabled := true;
end;

procedure TFEldenCekTahsil.BitBtn1Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\EldenCekTahsil.oe');
        FEvrak.Report.PreviewModal;
end;

procedure TFEldenCekTahsil.BitBtn5Click(Sender: TObject);
begin
        FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\EldenCekTahsil.oe');
        FEvrak.Report.Print;
end;

end.
