unit DonemBBorc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OnlineDBDateEdit, Mask, DBCtrls, DBOnlineEdit,
  OnlineCustomControl, OnlineButton, ExtCtrls, DBOnlineLookupCombo;

type
  TFDonemBBorc = class(TForm)
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
  FDonemBBorc: TFDonemBBorc;

implementation

{$R *.dfm}

Uses CariDM, CariSecim,SabitDM, BankaDM, GelGidSec, PersonelSec;


Procedure DataAc;
Begin
        if DMCari.DBBorcIBQ.Active = False Then
        Begin
                DMCari.AktifCariIBQ.Open;
                DMCari.DBBorcIBQ.Open;
                DMSabit.ParaBirimiIBQ.Open;
        end;
end;


procedure TFDonemBBorc.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFDonemBBorc.YeniGelenHavaleClick(Sender: TObject);
begin
        DataAc;
        DMCari.DBBorcIBQ.Append;
        DMCari.DBBorcIBQ.Post;
        BitBtn2.SetFocus;
end;

procedure TFDonemBBorc.BitBtn2Click(Sender: TObject);
begin
        DataAc;
        FCariSecim.DataSet := DMCari.DBBorcIBQ;
        FCariSecim.ShowModal;
end;

procedure TFDonemBBorc.BFirstPageClick(Sender: TObject);
begin
         DataAc;
         DMCari.DBBorcIBQ.First;
end;

procedure TFDonemBBorc.ButtonPreviousClick(Sender: TObject);
begin
         DataAc;
         DMCari.DBBorcIBQ.Prior;
end;

procedure TFDonemBBorc.ButtonNextClick(Sender: TObject);
begin
         DataAc;
         DMCari.DBBorcIBQ.Next;
end;

procedure TFDonemBBorc.BLastPageClick(Sender: TObject);
begin
         DataAc;
         DMCari.DBBorcIBQ.Last;
end;

procedure TFDonemBBorc.BitBtn1Click(Sender: TObject);
begin
        if DMCari.DBBorcIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu Ýþlem ile '+#13+'Cari Hareketinin Cari Kart ile Baðlantýsý Kopacak'+#13+'Devam Etmek Ýstermisiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMCari.DBBorcIBQ.Edit;
                DMCari.DBBorcIBQCARIKOD.AsInteger:=0;
                DMCari.DBBorcIBQCARINO.AsInteger:=0;
                DMCari.DBBorcIBQ.Post;
        end;
end;

procedure TFDonemBBorc.DBOnlineEdit6Exit(Sender: TObject);
begin
        if DMCari.DBBorcIBQ.Modified Then DMCari.DBBorcIBQ.Post;
end;

procedure TFDonemBBorc.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFDonemBBorc.DBOnlineEdit9Exit(Sender: TObject);
begin
        if DMCari.DBBorcIBQ.Modified Then DMCari.DBBorcIBQ.Post;
end;

procedure TFDonemBBorc.DBOnlineLookupCombo1Click(Sender: TObject);
begin
if DMCari.DBBorcIBQ.Modified Then DMCari.DBBorcIBQ.Post;
end;

procedure TFDonemBBorc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DMCari.DBBorcIBQ.Close;
end;

procedure TFDonemBBorc.BitBtn27Click(Sender: TObject);
begin
        if DMCari.DBBorcIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        Begin
                DMCari.DBBorcIBQ.Edit;
                DMCari.DBBorcIBQSISTEM.AsInteger := 2;
                DMCari.DBBorcIBQ.Post;
                DMCari.DBBorcIBQ.Close;
        end;
end;

procedure TFDonemBBorc.BitBtn3Click(Sender: TObject);
begin
        if DMCari.DBBorcIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCari.DBBorcIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFDonemBBorc.OnlineButton1Click(Sender: TObject);
begin
        if DMCari.DBBorcIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMCari.DBBorcIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
