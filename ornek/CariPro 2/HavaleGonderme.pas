unit HavaleGonderme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, IBCustomDataSet, IBQuery, OnlineEdit, 
  OnlineButton, OnlineDBDateEdit, OnlineCustomControl;

type
  TFHavaleGonderme = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    OnlineDBDateEdit2: TOnlineDBDateEdit;
    OnlineButton1: TOnlineButton;
    OnlineButton3: TOnlineButton;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    Panel7: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    DBOnlineEdit10: TDBOnlineEdit;
    OnlineButton4: TOnlineButton;
    DBOnlineEdit11: TDBOnlineEdit;
    OnlineButton5: TOnlineButton;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBOnlineEdit15: TDBOnlineEdit;
    DBOnlineEdit16: TDBOnlineEdit;
    DBOnlineEdit17: TDBOnlineEdit;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    YeniHavale: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineButton2: TOnlineButton;

    procedure BitBtn25Click(Sender: TObject);
    procedure YeniHavaleClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn27Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure OnlineButton5Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);

  private

  public
    { Public declarations }

  end;

var
  FHavaleGonderme: TFHavaleGonderme;
  OdemeDegis: Boolean = false;
  Eklendi: Boolean = false;

implementation

Uses BankaDM, DataDM, BankaSec, CariSecim, GelGidSec, CariDM, SabitDM;

{$R *.dfm}

procedure DataAc;
begin
        if DMBanka.HavaleGondermeIBQ.Active = false then
        begin
                DMBanka.HavaleGondermeIBQ.Open;
                DMBanka.BankaIBQ.Open;
                DMCari.AktifCariIBQ.Open;
        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;

procedure TFHavaleGonderme.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFHavaleGonderme.YeniHavaleClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleGondermeIBQ.Append;
        DMBanka.HavaleGondermeIBQ.Post;
        OnlineButton3.SetFocus;
end;

procedure TFHavaleGonderme.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleGondermeIBQ.Prior;
end;

procedure TFHavaleGonderme.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleGondermeIBQ.Next;
end;

procedure TFHavaleGonderme.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleGondermeIBQ.Last;
end;

procedure TFHavaleGonderme.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleGondermeIBQ.First;
end;

procedure TFHavaleGonderme.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFHavaleGonderme.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
                YeniHavale.SetFocus;
end;

procedure TFHavaleGonderme.BitBtn2Click(Sender: TObject);
begin
        if DMBanka.HavaleGondermeIBQ.Active then
        begin
                FCariSecim.DataSet := DMBanka.HavaleGondermeIBQ;
                FCariSecim.ShowModal;
        end;
end;

procedure TFHavaleGonderme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if DMBanka.HavaleGondermeIBQ.Modified then
                DMBanka.HavaleGondermeIBQ.Post;
        DMBanka.HavaleGondermeIBQ.Close;
        Action := caFree;
end;

procedure TFHavaleGonderme.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMBanka.HavaleGondermeIBQ.RecordCount > 0 then
        begin
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                begin
                        DMBanka.HavaleGondermeIBQ.Edit;
                        DMBanka.HavaleGondermeIBQSISTEM.AsInteger := 2;
                        DMBanka.HavaleGondermeIBQ.Post;
                        DMBanka.HavaleGondermeIBQ.Close;
                end;
        end;


end;

procedure TFHavaleGonderme.DBEdit17Exit(Sender: TObject);
begin
        if DMBanka.HavaleGondermeIBQ.Modified then
                DMBanka.HavaleGondermeIBQ.Post;       
end;

procedure TFHavaleGonderme.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMBanka.HavaleGondermeIBQ.Modified then
                DMBanka.HavaleGondermeIBQ.Post;
end;

procedure TFHavaleGonderme.OnlineButton2Click(Sender: TObject);
begin
        if DMBanka.HavaleGondermeIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.HavaleGondermeIBQ;
                FBankaSec.ShowModal;
        end;
end;

procedure TFHavaleGonderme.OnlineButton5Click(Sender: TObject);
begin
        if DMBanka.HavaleGondermeIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI'); 
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMBanka.HavaleGondermeIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFHavaleGonderme.OnlineButton1Click(Sender: TObject);
begin
        if DMBanka.HavaleGondermeIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Banka Hareketinin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMBanka.HavaleGondermeIBQ.Edit;
                DMBanka.HavaleGondermeIBQCARIKOD.AsInteger:=0;
                DMBanka.HavaleGondermeIBQCARINO.AsInteger:=0;
                DMBanka.HavaleGondermeIBQ.Post;
        end;
end;

end.
