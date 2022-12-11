unit NakitCekme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, IBCustomDataSet, IBQuery, OnlineButton,
  OnlineCustomControl;

type
  TFNakitCekme = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    Panel3: TPanel;
    Label13: TLabel;
    DBEdit17: TDBOnlineEdit;
    YeniCekme: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    DBEdit6: TDBOnlineEdit;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit2: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    BitBtn3: TOnlineButton;
    BitBtn4: TOnlineButton;
    Panel2: TPanel;
    Label11: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    Panel4: TPanel;
    DBOnlineEdit1: TDBOnlineEdit;
    Label6: TLabel;
    OnlineButton1: TOnlineButton;
    Label9: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    Label3: TLabel;
    DBOnlineEdit3: TDBOnlineEdit;
    OnlineButton3: TOnlineButton;

    procedure BitBtn25Click(Sender: TObject);
    procedure YeniCekmeClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17Exit(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure OnlineButton3Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FNakitCekme: TFNakitCekme;
  OdemeDegis: Boolean = false;
  Eklendi: Boolean = false;

implementation

uses BankaDM, KasaSecim, BankaSec, KasaDM, PersonelSec;



{$R *.dfm}
procedure DataAc;
begin
        if DMBanka.NakitCekmeIBQ.Active = false then
        begin
                DMKasa.AktifKasaIBQ.Open;
                DMBanka.NakitCekmeIBQ.open;
                DMBanka.BankaIBQ.Open;
        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;

procedure TFNakitCekme.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFNakitCekme.YeniCekmeClick(Sender: TObject);
begin
        DataAc;
        if DMBanka.BankaIBQ.RecordCount>0 Then
        Begin
                DMBanka.NakitCekmeIBQ.Append;
                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.SQL.Add('where PARABIRIMKOD='''+DMBanka.BankaIBQPARABIRKOD.AsString+'''');
                DMKasa.AktifKasaIBQ.Open;

                if DMKasa.AktifKasaIBQ.Locate('PARABIRIMKOD',DMBanka.BankaIBQPARABIRKOD.AsString,[]) then
                begin
                        DMBanka.NakitCekmeIBQ.Edit;
                        DMBanka.NakitCekmeIBQKASAKOD.AsInteger := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
                        DMBanka.NakitCekmeIBQACIKLAMA.AsString := DMBanka.BankaIBQHESAPADI.AsString +' --> '+ DMKasa.AktifKasaIBQKASAADI.AsString;
                        DBEdit17.SetFocus;
                end ELSE    Application.MessageBox('Bu parabiriminde bir kasa bulunamadý!',
                        '          Uyarý Mesajý', mb_OK+mb_DefButton2) ;
                DMBanka.NakitCekmeIBQ.Post;
        end
        else Application.MessageBox('Kayýtlý bir banka bulunamadý! Lütfen bir banka ekleyiniz.',
                        '          Uyarý Mesajý', mb_OK+mb_DefButton2);
end;

procedure TFNakitCekme.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitCekmeIBQ.Prior;
end;

procedure TFNakitCekme.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitCekmeIBQ.Next;
end;

procedure TFNakitCekme.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitCekmeIBQ.Last;
end;

procedure TFNakitCekme.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitCekmeIBQ.First;
end;

procedure TFNakitCekme.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFNakitCekme.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMBanka.NakitCekmeIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        begin
                DMBanka.NakitCekmeIBQ.Edit;
                DMBanka.NakitCekmeIBQSISTEM.AsInteger := 2;
                DMBanka.NakitCekmeIBQ.Post;
                DMBanka.NakitCekmeIBQ.Close;
        end;
end;

procedure TFNakitCekme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if DMBanka.NakitCekmeIBQ.Modified = true then
                DMBanka.NakitCekmeIBQ.Post;
        DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
        DMKasa.AktifKasaIBQ.Open;
        DMBanka.NakitCekmeIBQ.Close;
        Action := caFree;
end;

procedure TFNakitCekme.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
                YeniCekme.SetFocus;
end;

procedure TFNakitCekme.DBEdit17Exit(Sender: TObject);
begin
        if DMBanka.NakitCekmeIBQ.Modified = true then
                DMBanka.NakitCekmeIBQ.Post;
end;

procedure TFNakitCekme.OnlineButton1Click(Sender: TObject);
begin
        if DMBanka.NakitCekmeIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.SQL.Add('where PARABIRIMKOD='+#39+DMBanka.NakitCekmeIBQPARABIRIMKOD.AsString+#39);
                DMKasa.AktifKasaIBQ.Open;
                FKasaSecim.DataSet := DMBanka.NakitCekmeIBQ;
                FKasaSecim.ShowModal;
                DMBanka.NakitCekmeIBQ.Edit;
                DMBanka.NakitCekmeIBQACIKLAMA.AsString := DMBanka.NakitCekmeIBQC_HESAPADI.AsString +' --> '+ DMKasa.AktifKasaIBQKASAADI.AsString;
                DMBanka.NakitCekmeIBQ.Post;
                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.Open;
        end;
end;

procedure TFNakitCekme.OnlineButton2Click(Sender: TObject);
begin
        if DMBanka.NakitCekmeIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.NakitCekmeIBQ;
                FBankaSec.ShowModal;
                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.SQL.Add('where PARABIRIMKOD='+IntToStr(DMBanka.NakitCekmeIBQPARABIRIMKOD.AsInteger));
                DMKasa.AktifKasaIBQ.Open;
                DMBanka.NakitCekmeIBQ.Edit;
                DMBanka.NakitCekmeIBQKASAKOD.AsInteger := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
                DMBanka.NakitCekmeIBQ.Post;
                DMBanka.NakitCekmeIBQ.Edit;
                DMBanka.NakitCekmeIBQACIKLAMA.AsString := DMBanka.NakitCekmeIBQC_HESAPADI.AsString +' --> '+ DMKasa.AktifKasaIBQKASAADI.AsString;
                DMBanka.NakitCekmeIBQ.Post;
        end;
end;

procedure TFNakitCekme.OnlineButton3Click(Sender: TObject);
begin
        if DMBanka.NakitCekmeIBQ.Active then
        begin
                DMBanka.NakitYatirmaIBQ.Open;
                FPersonelSec.DataSet := DMBanka.NakitCekmeIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
