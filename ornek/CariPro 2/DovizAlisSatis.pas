unit DovizAlisSatis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OnlineButton, StdCtrls, Buttons, Mask, DBCtrls,
  DBOnlineEdit, ExtCtrls, Grids, DBGrids, DBOnlineCombo,
  OnlineCustomControl;

type
  TFDovizAlisSatis = class(TForm)
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
  FDovizAlisSatis: TFDovizAlisSatis;

implementation

Uses KasaDM, KasaSecim;

{$R *.dfm}

procedure TFDovizAlisSatis.YeniOdemeClick(Sender: TObject);
begin
        DMKasa.DovizASIBQ.Open;
        DMKasa.AktifKasaIBQ.Open;
        DMKasa.DovizASIBQ.Append;
        DMKasa.DovizASIBQ.Post;
        OnlineButton1.SetFocus;
end;

procedure TFDovizAlisSatis.OnlineButton1Click(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.FieldName := 'KASAKOD';
                FKasaSecim.ParaBirimField := 'PARABIRIMKOD';
                FKasaSecim.DataSet := DMKasa.DovizASIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFDovizAlisSatis.OnlineButton2Click(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.FieldName := 'VIRKASAKOD';
                FKasaSecim.ParaBirimField := 'VIRPARABIRKOD';
                FKasaSecim.DataSet := DMKasa.DovizASIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFDovizAlisSatis.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFDovizAlisSatis.OnlineEdit1Exit(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Modified = True Then
                DMKasa.DovizASIBQ.Post;
end;

procedure TFDovizAlisSatis.OnlineEdit4Exit(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Modified = True Then
                DMKasa.DovizASIBQ.Post;
end;

procedure TFDovizAlisSatis.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFDovizAlisSatis.BFirstPageClick(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Active = False Then
                DMKasa.DovizASIBQ.Open;
        DMKasa.DovizASIBQ.First;
end;

procedure TFDovizAlisSatis.ButtonPreviousClick(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Active = False Then
                DMKasa.DovizASIBQ.Open;
        DMKasa.DovizASIBQ.Prior;
end;

procedure TFDovizAlisSatis.ButtonNextClick(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Active = False Then
                DMKasa.DovizASIBQ.Open;
        DMKasa.DovizASIBQ.Next;
end;

procedure TFDovizAlisSatis.BLastPageClick(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.Active = False Then
                DMKasa.DovizASIBQ.Open;
        DMKasa.DovizASIBQ.Last;
end;

procedure TFDovizAlisSatis.BitBtn27Click(Sender: TObject);
begin
        if DMKasa.DovizASIBQ.RecordCount > 0 then
        if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)= mrYes then
        Begin
                DMKasa.DovizASIBQ.Edit;
                DMKasa.DovizASIBQSISTEM.AsInteger := 2;
                DMKasa.DovizASIBQ.Post;
                DMKasa.DovizASIBQ.Close;
        end;
end;

procedure TFDovizAlisSatis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DMKasa.DovizASIBQ.Close;
end;

end.
