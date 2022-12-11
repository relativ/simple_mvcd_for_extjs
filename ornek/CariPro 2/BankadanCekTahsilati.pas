unit BankadanCekTahsilati;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl, Menus;

type
  TFBankadanCekTahsilat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    YeniTahsilat: TOnlineButton;
    BitBtn27: TOnlineButton;
    BitBtn25: TOnlineButton;
    BitBtn1: TOnlineButton;
    BitBtn5: TOnlineButton;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    DBOnlineEdit10: TDBOnlineEdit;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    Panel8: TPanel;
    Panel7: TPanel;
    GroupBox4: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    Panel5: TPanel;
    PopupMenu1: TPopupMenu;
    ekSe1: TMenuItem;
    GroupBox5: TGroupBox;
    Label20: TLabel;
    Label22: TLabel;
    DBOnlineEdit16: TDBOnlineEdit;
    OnlineButton6: TOnlineButton;
    OnlineButton7: TOnlineButton;
    DBOnlineEdit18: TDBOnlineEdit;
    OnlineButton9: TOnlineButton;
    OnlineButton10: TOnlineButton;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit15: TDBOnlineEdit;
    Label6: TLabel;
    OnlineButton1: TOnlineButton;
    DBOnlineEdit4: TDBOnlineEdit;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn25Click(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure DBOnlineCombo1Exit(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure OnlineDBGrid1Columns6EditButtonClick(Column: TOnlineColumn);
    procedure OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ekSe1Click(Sender: TObject);
    procedure OnlineButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBankadanCekTahsilat: TFBankadanCekTahsilat;

implementation

uses CekDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, Cekler, DB, KasaDM,
  KasaSecim, BankaSec;

{$R *.dfm}

procedure TFBankadanCekTahsilat.BitBtn11Click(Sender: TObject);
begin
        DMCek.BankadanCTahsilatIBQ.Append;

end;

procedure TFBankadanCekTahsilat.BitBtn1Click(Sender: TObject);
begin
   {     if BankadanCTahsilatIBQ.RecordCount>0 Then
        Begin
                if (BankadanCTahsilatIBQBANKA.AsString <> '') and (BankadanCTahsilatIBQVADE.AsString <> '') and (BankadanCTahsilatIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.CekGirBodIBQuery.Edit;
                        FinansDataM.CekGirBodIBQueryCEKSENETKOD.AsInteger      := BankadanCTahsilatIBQCEKSENETKOD.AsInteger;
                        FinansDataM.CekGirBodIBQueryTUTAR.AsFloat              := BankadanCTahsilatIBQTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVTUTAR.AsFloat           := BankadanCTahsilatIBQDOVTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVKUR.AsFloat             := BankadanCTahsilatIBQDOVKUR.AsFloat;
                        FinansDataM.CekGirBodIBQueryPARABIRKOD.AsInteger       := BankadanCTahsilatIBQPARABIRKOD.AsInteger;
                        FinansDataM.CekGirBodIBQuerySONCIRO.AsString           := BankadanCTahsilatIBQSONCIRO.AsString;
                        FinansDataM.CekGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFBankadanCekTahsilat.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineLookupCombo)
        or (ActiveControl is TDBOnlineCombo) or (ActiveControl is TOnlineDBDateEdit) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFBankadanCekTahsilat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMCek.BankadanCTahsilatIBQ.Modified then
                DMCek.BankadanCTahsilatIBQ.Post;
        DMCek.BankadanCTahsilatIBQ.Close;
        DMCek.BCTahBodroIBQ.Close;
        Action := caFree;
end;

procedure TFBankadanCekTahsilat.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMCek.BankadanCTahsilatIBQ.Active = false Then
        Begin
                DMCek.BankadanCTahsilatIBQ.Open;
                DMCek.BCTahBodroIBQ.Open;
        end;
end;


procedure TFBankadanCekTahsilat.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMCek.BankadanCTahsilatIBQ.Append;
        DMCek.BankadanCTahsilatIBQ.Post;
        OnlineDBGrid1.SetFocus;

end;

procedure TFBankadanCekTahsilat.BitBtn27Click(Sender: TObject);
begin
        if DMCek.BankadanCTahsilatIBQ.Active then
        begin
                if DMCek.BankadanCTahsilatIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMCek.BankadanCTahsilatIBQ.Edit;
                        DMCek.BankadanCTahsilatIBQSISTEM.AsInteger :=2;
                        DMCek.BankadanCTahsilatIBQ.Post;
                        DMCek.BankadanCTahsilatIBQ.Close;
                        DMCek.BCTahBodroIBQ.Close;
                end;
        end;
end;

procedure TFBankadanCekTahsilat.DBEdit11Exit(Sender: TObject);
begin
        if DMCek.BankadanCTahsilatIBQ.Modified then
                DMCek.BankadanCTahsilatIBQ.Post;
end;

procedure TFBankadanCekTahsilat.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.BankadanCTahsilatIBQ.First;
end;

procedure TFBankadanCekTahsilat.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.BankadanCTahsilatIBQ.Prior;
end;

procedure TFBankadanCekTahsilat.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.BankadanCTahsilatIBQ.Next;
end;

procedure TFBankadanCekTahsilat.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.BankadanCTahsilatIBQ.Last;
end;

procedure TFBankadanCekTahsilat.OnlineButton1Click(Sender: TObject);
begin

        if DMCek.BankadanCTahsilatIBQ.Active then
        begin
                if Application.FindComponent('FBankaSec') = nil then
                        Application.CreateForm(TFBankaSec,FBankaSec);
                FBankaSec.DataSet := DMCek.BankadanCTahsilatIBQ;
                FBankaSec.ShowModal;
        end;
end;

procedure TFBankadanCekTahsilat.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMCek.BankadanCTahsilatIBQ.Modified then
                DMCek.BankadanCTahsilatIBQ.Post;
end;

procedure TFBankadanCekTahsilat.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMCek.BankadanCTahsilatIBQ.Modified then
                DMCek.BankadanCTahsilatIBQ.Post;
end;

procedure TFBankadanCekTahsilat.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMCek.BCTahBodroIBQ;
        FParaBirimSecim.ShowModal;
        DMCek.BCTahBodroIBQ.Refresh;
end;

procedure TFBankadanCekTahsilat.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMCek.BCTahBodroIBQ.Modified) then
                DMCek.BCTahBodroIBQ.Post;
end;

procedure TFBankadanCekTahsilat.ekSe1Click(Sender: TObject);
begin
        FCekler.DataSet := DMCek.BCTahBodroIBQ;
        FCekler.ShowModal;
end;

procedure TFBankadanCekTahsilat.OnlineButton6Click(Sender: TObject);
begin
        if DMCek.BankadanCTahsilatIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCek.BankadanCTahsilatIBQ;
                FGelGidSec.ShowModal;
        end;
end;

end.
