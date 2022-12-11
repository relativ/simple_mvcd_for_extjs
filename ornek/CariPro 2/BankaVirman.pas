unit BankaVirman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OnlineButton, StdCtrls, Buttons, Mask, DBCtrls,
  DBOnlineEdit, ExtCtrls, Grids, DBGrids, DBOnlineCombo,
  OnlineCustomControl;

type
  TFBankaVirman = class(TForm)
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
    procedure OnlineEdit5Exit(Sender: TObject);
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
  FBankaVirman: TFBankaVirman;

implementation

Uses  BankaSec, BankaDM;

{$R *.dfm}

Procedure DataAc;
Begin
        if DMBanka.VirmanGonderenIBQ.Active = False Then
        Begin
                DMBanka.VirmanGonderenIBQ.Open;

                DMBanka.BankaIBQ.Open;
        end;
end;

procedure TFBankaVirman.YeniOdemeClick(Sender: TObject);
begin
        DataAc;
        DMBanka.VirmanGonderenIBQ.Append;
        DMBanka.VirmanGonderenIBQ.Post;

        OnlineButton1.SetFocus;
end;

procedure TFBankaVirman.OnlineButton1Click(Sender: TObject);
begin
        if DMBanka.VirmanGonderenIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.VirmanGonderenIBQ;
                FBankaSec.kodfield := 'BANKAKOD';
                FBankaSec.ShowModal;
        end;
end;

procedure TFBankaVirman.OnlineButton2Click(Sender: TObject);
begin
        if DMBanka.VirmanGonderenIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.VirmanGonderenIBQ;
                FBankaSec.kodfield := 'VIRBANKAKOD';
                FBankaSec.ShowModal;
        end;
end;

procedure TFBankaVirman.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFBankaVirman.OnlineEdit1Exit(Sender: TObject);
begin
        if DMBanka.VirmanGonderenIBQ.Modified = True Then
                DMBanka.VirmanGonderenIBQ.Post;
end;

procedure TFBankaVirman.OnlineEdit5Exit(Sender: TObject);
begin
        if DMBanka.VirmanGonderenIBQ.Modified = True Then
                DMBanka.VirmanGonderenIBQ.Post;
end;

procedure TFBankaVirman.OnlineEdit4Exit(Sender: TObject);
begin
        if DMBanka.VirmanGonderenIBQ.Modified = True Then
                DMBanka.VirmanGonderenIBQ.Post;
end;

procedure TFBankaVirman.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFBankaVirman.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.VirmanGonderenIBQ.First;
end;

procedure TFBankaVirman.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMBanka.VirmanGonderenIBQ.Prior;
end;

procedure TFBankaVirman.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMBanka.VirmanGonderenIBQ.Next;
end;

procedure TFBankaVirman.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.VirmanGonderenIBQ.Last;
end;

procedure TFBankaVirman.BitBtn27Click(Sender: TObject);
begin
        if DMBanka.VirmanGonderenIBQ.RecordCount > 0 then
        if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)= mrYes then
        begin
                DMBanka.VirmanGonderenIBQ.Edit;;
                DMBanka.VirmanGonderenIBQSISTEM.AsInteger := 2;
                DMBanka.VirmanGonderenIBQ.Post;
                DMBanka.VirmanGonderenIBQ.Close;
        end;
end;

procedure TFBankaVirman.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        //Action := caFree;
        DMBanka.VirmanGonderenIBQ.Close;
end;

end.
