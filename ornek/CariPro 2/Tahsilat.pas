unit Tahsilat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, OnlineLabel, IBCustomDataSet, IBQuery, OnlineEdit,
  OnlineButton, OnlineCustomControl;

type
  TFTahsilat = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    Panel3: TPanel;
    YeniTahsilat: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit2: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    DBEdit8: TDBOnlineEdit;
    DBEdit9: TDBOnlineEdit;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    Label4: TLabel;
    BitBtn6: TOnlineButton;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    Label15: TLabel;
    DBOnlineEdit5: TDBOnlineEdit;
    Label16: TLabel;
    DBOnlineEdit6: TDBOnlineEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    Label18: TLabel;
    DBEdit22: TDBOnlineEdit;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    Panel2: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    DBOnlineEdit3: TDBOnlineEdit;
    OnlineButton3: TOnlineButton;
    OnlineButton4: TOnlineButton;
    DBOnlineEdit10: TDBOnlineEdit;

    procedure BitBtn25Click(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure DBOnlineEdit9Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure OnlineButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTahsilat: TFTahsilat;
  ParaBirimiKur, BodroParaBirimiKur : Real;
  MesajGoster: Boolean;

implementation

uses DataDM, KasaDM, CariHesap, GelGidSec, KasaSecim, CariSecim, CariDM,
  SabitDM, AcikSatislar, PersonelSec;

{$R *.dfm}

procedure DataAc;
begin
        if DMKasa.TahsilatIBQ.Active = false then
        begin
                DMKasa.TahsilatIBQ.Open;
                DMKasa.KasaIBQ.Open;

        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;



procedure TFTahsilat.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFTahsilat.YeniTahsilatClick(Sender: TObject);
begin
        DataAc;
        DMKasa.TahsilatIBQ.Append;
        DMKasa.TahsilatIBQKASAKOD.AsInteger := DMKasa.KasaIBQKASAKOD.AsInteger;
        DMKasa.TahsilatIBQ.Post;
        DBEdit9.SetFocus;
end;

procedure TFTahsilat.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMKasa.TahsilatIBQ.Prior;
end;

procedure TFTahsilat.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMKasa.TahsilatIBQ.Next;
end;

procedure TFTahsilat.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMKasa.TahsilatIBQ.Last;
end;

procedure TFTahsilat.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMKasa.TahsilatIBQ.First;
end;

procedure TFTahsilat.BitBtn1Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Active = true then
        begin
                FCariSecim.DataSet := DMKasa.TahsilatIBQ;
                FCariSecim.islemtur := 'Kasa' ;
                FCariSecim.ShowModal;
        end;

end;

procedure TFTahsilat.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo)  then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;

end;

procedure TFTahsilat.BitBtn2Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Kasa Hareketinin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMKasa.TahsilatIBQ.Edit;
                DMKasa.TahsilatIBQCARIKOD.AsInteger:=0;
                DMKasa.TahsilatIBQCARINO.AsInteger:=0;
                DMKasa.TahsilatIBQ.Post;
        end;
end;

procedure TFTahsilat.BitBtn27Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        Begin
                DMKasa.TahsilatIBQ.Edit;
                DMKasa.TahsilatIBQSISTEM.AsInteger := 2;
                DMKasa.TahsilatIBQ.Post;
                DMKasa.TahsilatIBQ.Close;
        end;
end;

procedure TFTahsilat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMKasa.TahsilatIBQ.Modified = true then
                DMKasa.TahsilatIBQ.Post;
        DMKasa.TahsilatIBQ.Close;
         Action := caFree;
end;

procedure TFTahsilat.DBEdit17Exit(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Modified then
                DMKasa.TahsilatIBQ.Post;
end;

procedure TFTahsilat.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Modified then
                DMKasa.TahsilatIBQ.Post;
end;

procedure TFTahsilat.DBEdit18Exit(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Modified then
                DMKasa.TahsilatIBQ.Post;
end;

procedure TFTahsilat.BitBtn6Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQCARIKOD.AsString <> '' then
        begin
                DMCari.CariKartLookupIBQ.Open;
                DMCari.CariislemIBQ.Open;
                if DMCari.CariKartLookupIBQ.Locate('CARIKOD',DMKasa.TahsilatIBQCARIKOD.AsInteger,[]) then
                begin
                        if Application.FindComponent('FCariHesap') = nil then
                                Application.CreateForm(TFCariHesap,FCariHesap);
                        FCariHesap.Show;
                end else MessageBox(handle,'Cari bulunamadý...','Uyarý',MB_OK);
        end else MessageBox(handle,'Bu tahsilatýn carisi seçilmemiþ...','Uyarý',MB_OK);
end;

procedure TFTahsilat.BitBtn3Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMKasa.TahsilatIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFTahsilat.OnlineButton1Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.DataSet := DMKasa.TahsilatIBQ;
                FKasaSecim.ShowModal;
        end;

end;

procedure TFTahsilat.DBOnlineEdit9Exit(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Modified then
                DMKasa.TahsilatIBQ.Post;
end;

procedure TFTahsilat.DBEdit2Exit(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Modified then
                DMKasa.TahsilatIBQ.Post;
end;

procedure TFTahsilat.BitBtn4Click(Sender: TObject);
begin
       { FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\TahsilatMakbuzu.oe');
        FEvrak.Report.PreviewModal;   }
end;

procedure TFTahsilat.DBEdit8Change(Sender: TObject);
begin
        if DMKasa.TahsilatIBQCARIKOD.AsInteger<=0   Then
                OnlineButton2.Enabled := False else OnlineButton2.Enabled:=True;

end;

procedure TFTahsilat.OnlineButton2Click(Sender: TObject);
begin
        if Application.FindComponent('FAcikSatislar') = nil then
                Application.CreateForm(TFAcikSatislar,FAcikSatislar);
        FAcikSatislar.ShowModal;
end;

procedure TFTahsilat.OnlineButton4Click(Sender: TObject);
begin
        if DMKasa.TahsilatIBQ.Active then
        begin
                DMKasa.TahsilatIBQ.Open;
                FPersonelSec.DataSet := DMKasa.TahsilatIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
