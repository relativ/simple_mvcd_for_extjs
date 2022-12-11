unit KasaDevir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, OnlineLabel, IBCustomDataSet, IBQuery, OnlineEdit,
  OnlineButton, OnlineCustomControl;

type
  TFKasaDevir = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    YeniTahsilat: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    DBEdit1: TDBOnlineEdit;
    DBEdit2: TDBOnlineEdit;
    DBEdit5: TDBOnlineEdit;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    Label6: TLabel;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    Label2: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;

    procedure BitBtn25Click(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure DBOnlineEdit9Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKasaDevir: TFKasaDevir;
  ParaBirimiKur, BodroParaBirimiKur : Real;
  MesajGoster: Boolean;

implementation

uses KASADM,  KasaSecim;

{$R *.dfm}

procedure DataAc;
begin
        if DMKasa.KasaDevirIBQ.Active = false then
        begin
                DMKasa.KasaDevirIBQ.Open;
                DMKasa.AktifKasaIBQ.Open;

        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;



procedure TFKasaDevir.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFKasaDevir.YeniTahsilatClick(Sender: TObject);
begin
        DataAc;
        DMKasa.KasaDevirIBQ.Append;
        DMKasa.KasaDevirIBQKASAKOD.AsInteger := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
        DMKasa.KasaDevirIBQ.Post;
        DBOnlineEdit9.SetFocus;
end;

procedure TFKasaDevir.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMKasa.KasaDevirIBQ.Prior;
end;

procedure TFKasaDevir.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMKasa.KasaDevirIBQ.Next;
end;

procedure TFKasaDevir.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMKasa.KasaDevirIBQ.Last;
end;

procedure TFKasaDevir.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMKasa.KasaDevirIBQ.First;
end;

procedure TFKasaDevir.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFKasaDevir.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMKasa.KasaDevirIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        Begin
                DMKasa.KasaDevirIBQ.Edit;
                DMKasa.KasaDevirIBQSISTEM.AsInteger := 2;
                DMKasa.KasaDevirIBQ.Post;
                DMKasa.KasaDevirIBQ.Close;
        end;
end;

procedure TFKasaDevir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMKasa.KasaDevirIBQ.Modified = true then
                DMKasa.KasaDevirIBQ.Post;
        DMKasa.KasaDevirIBQ.Close;
         Action := caFree;
end;

procedure TFKasaDevir.DBEdit17Exit(Sender: TObject);
begin
        if DMKasa.KasaDevirIBQ.Modified then
                DMKasa.KasaDevirIBQ.Post;
end;

procedure TFKasaDevir.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMKasa.KasaDevirIBQ.Modified then
                DMKasa.KasaDevirIBQ.Post;
end;

procedure TFKasaDevir.DBEdit18Exit(Sender: TObject);
begin
        if DMKasa.KasaDevirIBQ.Modified then
                DMKasa.KasaDevirIBQ.Post;
end;

procedure TFKasaDevir.OnlineButton1Click(Sender: TObject);
begin
        if DMKasa.KasaDevirIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.DataSet := DMKasa.KasaDevirIBQ;
                FKasaSecim.ShowModal;
        end;

end;

procedure TFKasaDevir.DBOnlineEdit9Exit(Sender: TObject);
begin
        if DMKasa.KasaDevirIBQ.Modified then
                DMKasa.KasaDevirIBQ.Post;
end;

procedure TFKasaDevir.DBEdit2Exit(Sender: TObject);
begin
        if DMKasa.KasaDevirIBQ.Modified then
                DMKasa.KasaDevirIBQ.Post;
end;

end.
