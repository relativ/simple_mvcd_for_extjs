unit Odeme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, OnlineLabel, IBCustomDataSet, IBQuery, OnlineEdit,
  OnlineButton, OnlineCustomControl;

type
  TFOdeme = class(TForm)
    OdemeMaxIBQuery: TIBQuery;
    OdemeMaxIBQueryMAX: TIntegerField;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit2: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    DBEdit8: TDBOnlineEdit;
    DBEdit9: TDBOnlineEdit;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn6: TOnlineButton;
    DBEdit22: TDBOnlineEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineButton2: TOnlineButton;
    YeniOdeme: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    Panel2: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    DBOnlineEdit3: TDBOnlineEdit;
    OnlineButton3: TOnlineButton;
    OnlineButton4: TOnlineButton;
    DBOnlineEdit10: TDBOnlineEdit;

    procedure BitBtn25Click(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBOnlineLookupCombo2Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure DBOnlineEdit9Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure OnlineButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOdeme: TFOdeme;
  ParaBirimiKur, BodroParaBirimiKur : Real;
  MesajGoster: Boolean;
  OdemeDegis: Boolean = false;
  Dovizkur1, Dovizkur2 : Real;

implementation

uses DataDM,  CariHesap, GelGidSec, KasaSecim, CariSecim, KasaDM, CariDM,
  SabitDM, AcikAlislar, PersonelSec;

{$R *.dfm}

procedure DataAc;
begin
        if DMKasa.OdemeIBQ.Active = false then
        begin
                DMKasa.OdemeIBQ.Open;
                DMKasa.KasaIBQ.Open;
                DMCari.AktifCariIBQ.Close;
                DMCari.AktifCariIBQ.open;
        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;
procedure TFOdeme.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFOdeme.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMKasa.OdemeIBQ.Prior;
end;

procedure TFOdeme.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMKasa.OdemeIBQ.Next;
end;

procedure TFOdeme.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMKasa.OdemeIBQ.Last;
end;

procedure TFOdeme.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMKasa.OdemeIBQ.First;
end;

procedure TFOdeme.BitBtn1Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Active then
        begin
                FCariSecim.DataSet := DMKasa.OdemeIBQ;
                FCariSecim.ShowModal;
        end;
end;

procedure TFOdeme.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFOdeme.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMKasa.OdemeIBQ.Modified = true then
                DMKasa.OdemeIBQ.Post;
        DMKasa.OdemeIBQ.Close;
        Action := caFree;
end;

procedure TFOdeme.DBEdit17Exit(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Modified then
                DMKasa.OdemeIBQ.Post;
end;

procedure TFOdeme.DBOnlineLookupCombo2Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Modified then
                DMKasa.OdemeIBQ.Post;
end;

procedure TFOdeme.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMKasa.OdemeIBQ.RecordCount > 0 then
        begin
                if MessageBox(handle,' Bu Ödemeyi silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMKasa.OdemeIBQ.Edit;
                        DMKasa.OdemeIBQSISTEM.AsInteger := 2;
                        DMKasa.OdemeIBQ.Post;
                        DMKasa.OdemeIBQ.Close;
                end;
        end;
end;

procedure TFOdeme.BitBtn2Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Kasa Hareketinin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo)=mrYes then
        Begin
                        DMKasa.OdemeIBQ.Edit;
                        DMKasa.OdemeIBQCARIKOD.Clear;
                        DMKasa.OdemeIBQCARINO.Clear;
                        DMKasa.OdemeIBQ.Post;
        end;

end;

procedure TFOdeme.DBEdit18Exit(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Modified then
                DMKasa.OdemeIBQ.Post;
end;

procedure TFOdeme.BitBtn6Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQCARIKOD.AsString <> '' then
        begin
                DMCari.CariKartLookupIBQ.Open;
                DMCari.CariislemIBQ.Open;
                if DMCari.CariKartLookupIBQ.Locate('CARIKOD',DMKasa.OdemeIBQCARIKOD.AsInteger,[]) then
                begin
                        if Application.FindComponent('FCariHesap') = nil then
                                Application.CreateForm(TFCariHesap,FCariHesap);
                        FCariHesap.Show;
                end else MessageBox(handle,'Cari bulunamadý...','Uyarý',MB_OK);
        end else MessageBox(handle,'Bu tahsilatýn carisi seçilmemiþ...','Uyarý',MB_OK);
end;

procedure TFOdeme.BitBtn3Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI'); 
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMKasa.OdemeIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFOdeme.OnlineButton1Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.DataSet := DMKasa.OdemeIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFOdeme.DBOnlineEdit9Exit(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Modified then
                DMKasa.OdemeIBQ.Post;
end;

procedure TFOdeme.DBEdit2Exit(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Modified then
                DMKasa.OdemeIBQ.Post;
end;

procedure TFOdeme.BitBtn4Click(Sender: TObject);
begin
       { FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\TediyeMakbuzu.oe');
        FEvrak.Report.PreviewModal; }
end;

procedure TFOdeme.BitBtn5Click(Sender: TObject);
begin
       { FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\TediyeMakbuzu.oe');
        FEvrak.Report.Print;  }
end;

procedure TFOdeme.YeniTahsilatClick(Sender: TObject);
begin
        DataAc;
        DMKasa.OdemeIBQ.Append;
        DMKasa.OdemeIBQKASAKOD.AsInteger := DMKasa.KasaIBQKASAKOD.AsInteger;;
        DMKasa.OdemeIBQ.post;
        OdemeDegis := false;
end;

procedure TFOdeme.DBEdit8Change(Sender: TObject);
begin
        if DMKasa.OdemeIBQCARIKOD.AsInteger<=0   Then
                OnlineButton2.Enabled := False else OnlineButton2.Enabled:=True;
end;

procedure TFOdeme.OnlineButton2Click(Sender: TObject);
begin
        if Application.FindComponent('FAcikAlislar') = nil then
                Application.CreateForm(TFAcikAlislar,FAcikAlislar);
        FAcikAlislar.ShowModal;
end;

procedure TFOdeme.OnlineButton4Click(Sender: TObject);
begin
        if DMKasa.OdemeIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMKasa.OdemeIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
