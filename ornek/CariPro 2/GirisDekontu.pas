unit GirisDekontu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OnlineDBDateEdit, Mask, DBCtrls, DBOnlineEdit,
  OnlineCustomControl, OnlineButton, ExtCtrls, DBOnlineLookupCombo;

type
  TFGirisDekontu = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    YeniGelenHavale: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    OnlineDBDateEdit1: TOnlineDBDateEdit;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    DBEdit22: TDBOnlineEdit;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBOnlineEdit6: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    Panel3: TPanel;
    Label8: TLabel;
    Label12: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    BitBtn3: TOnlineButton;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit7: TDBOnlineEdit;
    procedure BitBtn25Click(Sender: TObject);
    procedure YeniGelenHavaleClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBOnlineEdit6Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineEdit9Exit(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGirisDekontu: TFGirisDekontu;

implementation

{$R *.dfm}

Uses CariDM, CariSecim,SabitDM, BankaDM, GelGidSec, PersonelSec;


Procedure DataAc;
Begin
        if DMCari.GirisDekontuIBQ.Active = False Then
        Begin
                DMCari.AktifCariIBQ.Open;
                DMCari.GirisDekontuIBQ.Open;
                DMSabit.ParaBirimiIBQ.Open;
        end;
end;


procedure TFGirisDekontu.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFGirisDekontu.YeniGelenHavaleClick(Sender: TObject);
begin
        DataAc;
        DMCari.GirisDekontuIBQ.Append;
        DMCari.GirisDekontuIBQ.Post;
        BitBtn2.SetFocus;
end;

procedure TFGirisDekontu.BitBtn2Click(Sender: TObject);
begin
        DataAc;
        FCariSecim.DataSet := DMCari.GirisDekontuIBQ;
        FCariSecim.ShowModal;
end;

procedure TFGirisDekontu.BFirstPageClick(Sender: TObject);
begin
         DataAc;
         DMCari.GirisDekontuIBQ.First;
end;

procedure TFGirisDekontu.ButtonPreviousClick(Sender: TObject);
begin
         DataAc;
         DMCari.GirisDekontuIBQ.Prior;
end;

procedure TFGirisDekontu.ButtonNextClick(Sender: TObject);
begin
         DataAc;
         DMCari.GirisDekontuIBQ.Next;
end;

procedure TFGirisDekontu.BLastPageClick(Sender: TObject);
begin
         DataAc;
         DMCari.GirisDekontuIBQ.Last;
end;

procedure TFGirisDekontu.BitBtn1Click(Sender: TObject);
begin
        if DMCari.GirisDekontuIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Cari Hareketinin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMCari.GirisDekontuIBQ.Edit;
                DMCari.GirisDekontuIBQCARIKOD.AsInteger:=0;
                DMCari.GirisDekontuIBQCARINO.AsInteger:=0;
                DMCari.GirisDekontuIBQ.Post;
        end;
end;

procedure TFGirisDekontu.DBOnlineEdit6Exit(Sender: TObject);
begin
        if DMCari.GirisDekontuIBQ.Modified Then DMCari.GirisDekontuIBQ.Post;
end;

procedure TFGirisDekontu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;

end;

procedure TFGirisDekontu.DBOnlineEdit9Exit(Sender: TObject);
begin
        if DMCari.GirisDekontuIBQ.Modified Then DMCari.GirisDekontuIBQ.Post;
end;

procedure TFGirisDekontu.DBOnlineLookupCombo1Click(Sender: TObject);
begin
if DMCari.GirisDekontuIBQ.Modified Then DMCari.GirisDekontuIBQ.Post;
end;

procedure TFGirisDekontu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DMCari.GirisDekontuIBQ.Close;
end;

procedure TFGirisDekontu.BitBtn27Click(Sender: TObject);
begin
        if DMCari.GirisDekontuIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        Begin
                DMCari.GirisDekontuIBQ.Edit;
                DMCari.GirisDekontuIBQSISTEM.AsInteger := 2;
                DMCari.GirisDekontuIBQ.Post;
                DMCari.GirisDekontuIBQ.Close;
        end;
end;

procedure TFGirisDekontu.BitBtn3Click(Sender: TObject);
begin
       if DMCari.GirisDekontuIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCari.GirisDekontuIBQ;
                FGelGidSec.ShowModal;
        end
end;

procedure TFGirisDekontu.OnlineButton1Click(Sender: TObject);
begin
        if DMCari.GirisDekontuIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMCari.GirisDekontuIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
