unit BankaDevir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, OnlineDBGrid, ExtCtrls,
  DBCtrls, DBOnlineCombo, Mask, DBOnlineLookupCombo, Menus, DB,
  DBOnlineEdit, IBCustomDataSet, IBQuery, OnlineButton,
  OnlineCustomControl;

type
  TFBankaDevir = class(TForm)
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
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;

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
    procedure OnlineButton2Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FBankaDevir: TFBankaDevir;
  OdemeDegis: Boolean = false;

implementation

uses BankaDM,   BankaSec;

{$R *.dfm}

procedure DataAc;
begin
        if DMBanka.BankaDevirIBQ.Active = false then
        begin
                DMBanka.BankaDevirIBQ.Open;
                DMBanka.BankaIBQ.Open;
        end;
end;

Function GoruntuFormati(ParaTipi:Real):String;
Begin
        Result := FormatFloat('###,###', $);
end;


procedure TFBankaDevir.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFBankaDevir.YeniNakitYatirClick(Sender: TObject);
begin
        DataAc;
        DMBanka.BankaDevirIBQ.Append;
        DMBanka.BankaDevirIBQ.Post;
        DBEdit17.SetFocus;
end;

procedure TFBankaDevir.ButtonPreviousClick(Sender: TObject);
begin
        DataAc;
        DMBanka.BankaDevirIBQ.Prior;
end;

procedure TFBankaDevir.ButtonNextClick(Sender: TObject);
begin
        DataAc;
        DMBanka.BankaDevirIBQ.Next;
end;

procedure TFBankaDevir.BLastPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.BankaDevirIBQ.Last;
end;

procedure TFBankaDevir.BFirstPageClick(Sender: TObject);
begin
        DataAc;
        DMBanka.BankaDevirIBQ.First;
end;

procedure TFBankaDevir.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFBankaDevir.BitBtn27Click(Sender: TObject);
begin
        DataAc;
        if DMBanka.BankaDevirIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
        begin
                DMBanka.BankaDevirIBQ.Edit;
                DMBanka.BankaDevirIBQSISTEM.AsInteger := 2;
                DMBanka.BankaDevirIBQ.Post;
                DMBanka.BankaDevirIBQ.Close;
        end;
end;

procedure TFBankaDevir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if DMBanka.BankaDevirIBQ.Modified = true then
                DMBanka.BankaDevirIBQ.Post;
        DMBanka.BankaDevirIBQ.Close;
        action := caFree;
end;

procedure TFBankaDevir.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
                YeniNakitYatir.SetFocus;
end;

procedure TFBankaDevir.DBEdit17Exit(Sender: TObject);
begin
        if DMBanka.BankaDevirIBQ.Modified = true then
                DMBanka.BankaDevirIBQ.Post;
end;

procedure TFBankaDevir.OnlineButton2Click(Sender: TObject);
begin
        if DMBanka.BankaDevirIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMBanka.BankaDevirIBQ;
                FBankaSec.ShowModal;
        end;
end;

end.
