unit NakitYatirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, IBCustomDataSet, IBQuery, OnlineButton,
  OnlineCustomControl;

type
  TFNakitYatirma = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    YeniNakitYatir: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn3: TOnlineButton;
    BitBtn4: TOnlineButton;
    Panel4: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit2: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    Panel2: TPanel;
    Label9: TLabel;
    Panel3: TPanel;
    Label13: TLabel;
    Label11: TLabel;
    DBEdit17: TDBOnlineEdit;
    DBEdit6: TDBOnlineEdit;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    Label6: TLabel;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    Label3: TLabel;
    DBOnlineEdit3: TDBOnlineEdit;
    OnlineButton3: TOnlineButton;

    procedure BitBtn25Click(Sender: TObject);
    procedure YeniNakitYatirClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBOnlineLookupCombo3Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure OnlineButton3Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FNakitYatirma: TFNakitYatirma;
  OdemeDegis: Boolean = false;

implementation

uses BankaDM, KasaSecim, BankaSec, KasaDM, PersonelSec;

{$R *.dfm}

procedure DataAc;
begin
        if DMBanka.NakitYatirmaIBQ.Active = false then
        begin
                DMKasa.AktifKasaIBQ.Open;
                DMBanka.NakitYatirmaIBQ.Open;
                DMBanka.BankaIBQ.Open;
        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;


procedure TFNakitYatirma.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFNakitYatirma.YeniNakitYatirClick(Sender: TObject);
begin
        DataAc;
        if DMBanka.BankaIBQ.RecordCount>0 Then
        Begin
                DMBanka.NakitYatirmaIBQ.Append;
                DBOnlineLookupCombo3Click(sender);

                if DMKasa.AktifKasaIBQ.Locate('PARABIRIMKOD',DMBanka.BankaIBQPARABIRKOD.AsString,[]) then
                begin
                        DMBanka.NakitYatirmaIBQ.Edit;
                        DMBanka.NakitYatirmaIBQBANKAKOD.AsInteger := DMBanka.BankaIBQBANKAKOD.AsInteger;
                        DMBanka.NakitYatirmaIBQKASAKOD.AsInteger := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
                        DMBanka.NakitYatirmaIBQACIKLAMA.AsString := DMKasa.AktifKasaIBQKASAADI.AsString +' --> '+DMBanka.BankaIBQHESAPADI.AsString;
                        DMBanka.NakitYatirmaIBQ.Post;
                        DBEdit17.SetFocus;

                end ELSE    Application.MessageBox('Bu parabiriminde bir kasa bulunamadý!',
                        '          Uyarý Mesajý', mb_OK+mb_DefButton2)
        end
        else Application.MessageBox('Kayýtlý bir banka bulunamadý! Lütfen bir banka ekleyiniz.',
                        '          Uyarý Mesajý', mb_OK+mb_DefButton2);


end;

procedure TFNakitYatirma.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitYatirmaIBQ.Prior;
end;

procedure TFNakitYatirma.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitYatirmaIBQ.Next;
end;

procedure TFNakitYatirma.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitYatirmaIBQ.Last;
end;

procedure TFNakitYatirma.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.NakitYatirmaIBQ.First;
end;

procedure TFNakitYatirma.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFNakitYatirma.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMBanka.NakitYatirmaIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        begin
                DMBanka.NakitYatirmaIBQ.Edit;
                DMBanka.NakitYatirmaIBQSISTEM.AsInteger := 2;
                DMBanka.NakitYatirmaIBQ.Post;
                DMBanka.NakitYatirmaIBQ.Close;
        end;
end;

procedure TFNakitYatirma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if DMBanka.NakitYatirmaIBQ.Modified = true then
                DMBanka.NakitYatirmaIBQ.Post;
        DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
        DMKasa.AktifKasaIBQ.Open;
        DMBanka.NakitYatirmaIBQ.Close;
        action := caFree;
end;

procedure TFNakitYatirma.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
                YeniNakitYatir.SetFocus;
end;

procedure TFNakitYatirma.DBEdit17Exit(Sender: TObject);
begin
        if DMBanka.NakitYatirmaIBQ.Modified = true then
                DMBanka.NakitYatirmaIBQ.Post;
end;

procedure TFNakitYatirma.DBOnlineLookupCombo3Click(Sender: TObject);
begin
        DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
        DMKasa.AktifKasaIBQ.SQL.Add('where PARABIRIMKOD='''+DMBanka.BankaIBQPARABIRKOD.AsString+'''');
        DMKasa.AktifKasaIBQ.Open;
end;

procedure TFNakitYatirma.OnlineButton1Click(Sender: TObject);
begin
        if DMBanka.NakitYatirmaIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.SQL.Add('where PARABIRIMKOD='+#39+DMBanka.NakitYatirmaIBQPARABIRIMKOD.AsString+#39);
                DMKasa.AktifKasaIBQ.Open;
                FKasaSecim.DataSet := DMBanka.NakitYatirmaIBQ;
                FKasaSecim.ShowModal;
                DMBanka.NakitYatirmaIBQ.Edit;
                DMBanka.NakitYatirmaIBQKASAKOD.AsInteger := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
                DMBanka.NakitYatirmaIBQ.Post;
                DMBanka.NakitYatirmaIBQ.Edit;
                DMBanka.NakitYatirmaIBQACIKLAMA.AsString := DMKasa.AktifKasaIBQKASAADI.AsString +' --> '+DMBanka.BankaIBQHESAPADI.AsString;
                DMBanka.NakitYatirmaIBQ.Post;
                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.Open;
        end;
end;

procedure TFNakitYatirma.OnlineButton2Click(Sender: TObject);
begin
        if DMBanka.NakitYatirmaIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.NakitYatirmaIBQ;
                FBankaSec.ShowModal;

                DMKasa.AktifKasaIBQ.SQL.Text := 'select * from KASA';
                DMKasa.AktifKasaIBQ.SQL.Add('Where PARABIRIMKOD='+IntToStr(DMBanka.NakitYatirmaIBQPARABIRIMKOD.AsInteger));
                DMKasa.AktifKasaIBQ.Open;
                DMBanka.NakitYatirmaIBQ.Edit;
                DMBanka.NakitYatirmaIBQKASAKOD.AsInteger := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
                DMBanka.NakitYatirmaIBQ.Post;
                DMBanka.NakitYatirmaIBQ.Edit;
                DMBanka.NakitYatirmaIBQACIKLAMA.AsString := DMKasa.AktifKasaIBQKASAADI.AsString +' --> '+DMBanka.BankaIBQHESAPADI.AsString;
                DMBanka.NakitYatirmaIBQ.Post;
        end;
end;

procedure TFNakitYatirma.OnlineButton3Click(Sender: TObject);
begin
        if DMBanka.NakitYatirmaIBQ.Active then
        begin
                DMBanka.NakitYatirmaIBQ.Open;
                FPersonelSec.DataSet := DMBanka.NakitYatirmaIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
