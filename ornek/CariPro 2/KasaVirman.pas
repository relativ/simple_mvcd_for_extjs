unit KasaVirman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OnlineButton, StdCtrls, Buttons, Mask, DBCtrls,
  DBOnlineEdit, ExtCtrls, Grids, DBGrids, DBOnlineCombo,
  OnlineCustomControl;

type
  TFKasaVirman = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    OnlineEdit1: TDBOnlineEdit;
    OnlineEdit2: TDBOnlineEdit;
    OnlineEdit3: TDBOnlineEdit;
    OnlineEdit4: TDBOnlineEdit;
    OnlineEdit5: TDBOnlineEdit;
    OnlineEdit6: TDBOnlineEdit;
    OnlineEdit9: TDBOnlineEdit;
    Panel6: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    OnlineEdit11: TDBOnlineEdit;
    OnlineEdit13: TDBOnlineEdit;
    OnlineEdit15: TDBOnlineEdit;
    Panel5: TPanel;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    DBOnlineEdit2: TDBOnlineEdit;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    YeniOdeme: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    procedure YeniOdemeClick(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure OnlineEdit1Exit(Sender: TObject);
    procedure OnlineEdit4Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKasaVirman: TFKasaVirman;

implementation

Uses KasaDM, KasaSecim;

{$R *.dfm}

procedure TFKasaVirman.YeniOdemeClick(Sender: TObject);
begin
        DMKasa.KasaVirmanGonIBQ.Open;
        DMKasa.AktifKasaIBQ.Open;
        DMKasa.KasaVirmanGonIBQ.Append;
        DMKasa.KasaVirmanGonIBQ.Post;
        OnlineButton1.SetFocus;
end;

procedure TFKasaVirman.OnlineButton1Click(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.FieldName := 'KASAKOD';
                FKasaSecim.ParaBirimField := 'PARABIRIMKOD';
                FKasaSecim.DataSet := DMKasa.KasaVirmanGonIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFKasaVirman.OnlineButton2Click(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.FieldName := 'VIRKASAKOD';
                FKasaSecim.ParaBirimField := 'VIRPARABIRKOD';
                FKasaSecim.DataSet := DMKasa.KasaVirmanGonIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFKasaVirman.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFKasaVirman.OnlineEdit1Exit(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Modified = True Then
                DMKasa.KasaVirmanGonIBQ.Post;
end;

procedure TFKasaVirman.OnlineEdit4Exit(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Modified = True Then
                DMKasa.KasaVirmanGonIBQ.Post;
end;

procedure TFKasaVirman.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if  (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFKasaVirman.BFirstPageClick(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Active = False Then
                DMKasa.KasaVirmanGonIBQ.Open;
        DMKasa.KasaVirmanGonIBQ.First;
end;

procedure TFKasaVirman.ButtonPreviousClick(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Active = False Then
                DMKasa.KasaVirmanGonIBQ.Open;
        DMKasa.KasaVirmanGonIBQ.Prior;
end;

procedure TFKasaVirman.ButtonNextClick(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Active = False Then
                DMKasa.KasaVirmanGonIBQ.Open;
        DMKasa.KasaVirmanGonIBQ.Next;
end;

procedure TFKasaVirman.BLastPageClick(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.Active = False Then
                DMKasa.KasaVirmanGonIBQ.Open;
        DMKasa.KasaVirmanGonIBQ.Last;
end;

procedure TFKasaVirman.BitBtn27Click(Sender: TObject);
begin
        if DMKasa.KasaVirmanGonIBQ.RecordCount > 0 then
        if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)= mrYes then
        Begin
                DMKasa.KasaVirmanGonIBQ.Edit;
                DMKasa.KasaVirmanGonIBQSISTEM.AsInteger := 2;
                DMKasa.KasaVirmanGonIBQ.Post;
                DMKasa.KasaVirmanGonIBQ.Close;
        end;
end;

procedure TFKasaVirman.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DMKasa.KasaVirmanGonIBQ.Close;
end;

end.
