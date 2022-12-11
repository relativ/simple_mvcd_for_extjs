unit HavaleALma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, IBCustomDataSet, IBQuery, OnlineEdit,
  OnlineButton, OnlineDBDateEdit, OnlineCustomControl;

type
  TFHavaleAlma = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Label8: TLabel;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    Panel4: TPanel;
    DBOnlineEdit4: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    OnlineDBDateEdit1: TOnlineDBDateEdit;
    Label10: TLabel;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    DBOnlineEdit3: TDBOnlineEdit;
    Label3: TLabel;
    DBOnlineEdit5: TDBOnlineEdit;
    Label18: TLabel;
    DBEdit22: TDBOnlineEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBOnlineEdit6: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit11: TDBOnlineEdit;
    Label5: TLabel;
    DBOnlineEdit1: TDBOnlineEdit;
    Label12: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    OnlineButton1: TOnlineButton;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    YeniGelenHavale: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineButton3: TOnlineButton;

    procedure BitBtn25Click(Sender: TObject);
    procedure YeniGelenHavaleClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure DBOnlineEdit6Exit(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);


  private

  public
    { Public declarations }

  end;

var
  FHavaleAlma: TFHavaleAlma;
  OdemeDegis: Boolean = false;
  Eklendi: Boolean = false;

implementation

uses BankaDM,DataDM, BankaSec, CariSecim, GelGidSec, CariDM, SabitDM;

{$R *.dfm}
procedure DataAc;
begin
        if DMBanka.HavaleAlmaIBQ.Active = false then
        begin
                DMBanka.HavaleAlmaIBQ.Open;
                DMBanka.BankaIBQ.Open;
                DMCari.AktifCariIBQ.Open;
        end;
end;

procedure TFHavaleAlma.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFHavaleAlma.YeniGelenHavaleClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleAlmaIBQ.Append;
        DMBanka.HavaleAlmaIBQ.Post;
        BitBtn2.SetFocus;
end;

procedure TFHavaleAlma.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleAlmaIBQ.Prior;
end;

procedure TFHavaleAlma.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleAlmaIBQ.Next;
end;

procedure TFHavaleAlma.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleAlmaIBQ.Last;
end;

procedure TFHavaleAlma.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleAlmaIBQ.First;
end;

procedure TFHavaleAlma.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFHavaleAlma.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMBanka.HavaleAlmaIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        begin
                DMBanka.HavaleAlmaIBQ.Edit;
                DMBanka.HavaleAlmaIBQSISTEM.AsInteger := 2;
                DMBanka.HavaleAlmaIBQ.Post;
                DMBanka.HavaleAlmaIBQ.Close;
        end;
end;

procedure TFHavaleAlma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if DMBanka.HavaleAlmaIBQ.Modified = true then
                DMBanka.HavaleAlmaIBQ.Post;
        DMBanka.HavaleAlmaIBQ.Close;
        action := caFree;
end;

procedure TFHavaleAlma.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
                YeniGelenHavale.SetFocus;
end;

procedure TFHavaleAlma.BitBtn2Click(Sender: TObject);
begin
        DataAc;
        FCariSecim.DataSet := DMBanka.HavaleAlmaIBQ;
        FCariSecim.ShowModal;
end;

procedure TFHavaleAlma.BitBtn1Click(Sender: TObject);
begin
        DataAc;
        DMBanka.HavaleAlmaIBQ.Edit;
        DMBanka.HavaleAlmaIBQCARIKOD.AsInteger := 0;
        DMBanka.HavaleAlmaIBQCARINO.AsInteger := 0;
        DMBanka.HavaleAlmaIBQ.Post;
end;

procedure TFHavaleAlma.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMBanka.HavaleAlmaIBQ.Modified then
                DMBanka.HavaleAlmaIBQ.Post;
end;

procedure TFHavaleAlma.OnlineButton2Click(Sender: TObject);
begin
        if DMBanka.HavaleAlmaIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.HavaleAlmaIBQ;
                FBankaSec.ShowModal;
        end;
end;

procedure TFHavaleAlma.DBOnlineEdit6Exit(Sender: TObject);
begin
        if DMBanka.HavaleAlmaIBQ.Modified Then
                DMBanka.HavaleAlmaIBQ.Post;
end;

procedure TFHavaleAlma.OnlineButton1Click(Sender: TObject);
begin
        if DMBanka.HavaleAlmaIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMBanka.HavaleAlmaIBQ;
                FGelGidSec.ShowModal;
        end;
end;



end.
