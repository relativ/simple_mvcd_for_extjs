unit CikisDekontu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OnlineDBDateEdit, Mask, DBCtrls, DBOnlineEdit,
  OnlineCustomControl, OnlineButton, ExtCtrls, DBOnlineLookupCombo;

type
  TFCikisDekontu = class(TForm)
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
    procedure OnlineButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCikisDekontu: TFCikisDekontu;

implementation

{$R *.dfm}

Uses CariDM, CariSecim,SabitDM, BankaDM, PersonelSec, GelGidSec;


Procedure DataAc;
Begin
        if DMCari.CikisDekontuIBQ.Active = False Then
        Begin
                DMCari.AktifCariIBQ.Open;
                DMCari.CikisDekontuIBQ.Open;
                DMSabit.ParaBirimiIBQ.Open;
        end;
end;


procedure TFCikisDekontu.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFCikisDekontu.YeniGelenHavaleClick(Sender: TObject);
begin
        DataAc;
        DMCari.CikisDekontuIBQ.Append;
        DMCari.CikisDekontuIBQ.Post;
        BitBtn2.SetFocus;
end;

procedure TFCikisDekontu.BitBtn2Click(Sender: TObject);
begin
        DataAc;
        FCariSecim.DataSet := DMCari.CikisDekontuIBQ;
        FCariSecim.ShowModal;
end;

procedure TFCikisDekontu.BFirstPageClick(Sender: TObject);
begin
         DataAc;
         DMCari.CikisDekontuIBQ.First;
end;

procedure TFCikisDekontu.ButtonPreviousClick(Sender: TObject);
begin
         DataAc;
         DMCari.CikisDekontuIBQ.Prior;
end;

procedure TFCikisDekontu.ButtonNextClick(Sender: TObject);
begin
         DataAc;
         DMCari.CikisDekontuIBQ.Next;
end;

procedure TFCikisDekontu.BLastPageClick(Sender: TObject);
begin
         DataAc;
         DMCari.CikisDekontuIBQ.Last;
end;

procedure TFCikisDekontu.BitBtn1Click(Sender: TObject);
begin
        if DMCari.CikisDekontuIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Cari Hareketinin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMCari.CikisDekontuIBQ.Edit;
                DMCari.CikisDekontuIBQCARIKOD.AsInteger:=0;
                DMCari.CikisDekontuIBQCARINO.AsInteger:=0;
                DMCari.CikisDekontuIBQ.Post;
        end;
end;

procedure TFCikisDekontu.DBOnlineEdit6Exit(Sender: TObject);
begin
        if DMCari.CikisDekontuIBQ.Modified Then DMCari.CikisDekontuIBQ.Post;
end;

procedure TFCikisDekontu.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCikisDekontu.DBOnlineEdit9Exit(Sender: TObject);
begin
        if DMCari.CikisDekontuIBQ.Modified Then DMCari.CikisDekontuIBQ.Post;
end;

procedure TFCikisDekontu.DBOnlineLookupCombo1Click(Sender: TObject);
begin
if DMCari.CikisDekontuIBQ.Modified Then DMCari.CikisDekontuIBQ.Post;
end;

procedure TFCikisDekontu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DMCari.CikisDekontuIBQ.Close;
end;

procedure TFCikisDekontu.BitBtn27Click(Sender: TObject);
begin
        if DMCari.CikisDekontuIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        Begin
                DMCari.CikisDekontuIBQ.Edit;
                DMCari.CikisDekontuIBQSISTEM.AsInteger := 2;
                DMCari.CikisDekontuIBQ.Post;
                DMCari.CikisDekontuIBQ.Close;
        end;
end;

procedure TFCikisDekontu.OnlineButton1Click(Sender: TObject);
begin
        if DMCari.CikisDekontuIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMCari.CikisDekontuIBQ;
                FPersonelSec.ShowModal;
        end;
end;

procedure TFCikisDekontu.BitBtn3Click(Sender: TObject);
begin
       if DMCari.CikisDekontuIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCari.CikisDekontuIBQ;
                FGelGidSec.ShowModal;
        end
end;

end.
