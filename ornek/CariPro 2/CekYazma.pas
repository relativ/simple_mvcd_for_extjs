unit CekYazma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl;

type
  TFCekYazma = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    OnlineButton3: TOnlineButton;
    DBOnlineEdit9: TDBOnlineEdit;
    OnlineButton4: TOnlineButton;
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
    OnlineButton1: TOnlineButton;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    DBOnlineEdit15: TDBOnlineEdit;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn25Click(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure DBOnlineCombo1Exit(Sender: TObject);
    procedure DBOnlineLookupCombo1Click(Sender: TObject);
    procedure OnlineDBGrid1Columns6EditButtonClick(Column: TOnlineColumn);
    procedure OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineDBGrid1Columns3EditButtonClick(Column: TOnlineColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCekYazma: TFCekYazma;

implementation

uses CekDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, BankaSec;

{$R *.dfm}

procedure TFCekYazma.BitBtn11Click(Sender: TObject);
begin
        DMCek.CekYazmaIBQ.Append;

end;

procedure TFCekYazma.BitBtn1Click(Sender: TObject);
begin
   {     if DMCek.CekYazmaIBQ.RecordCount>0 Then
        Begin
                if (DMCek.CekYazmaIBQBANKA.AsString <> '') and (DMCek.CekYazmaIBQVADE.AsString <> '') and (DMCek.CekYazmaIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.CekGirBodIBQuery.Edit;
                        FinansDataM.CekGirBodIBQueryCEKSENETKOD.AsInteger      := DMCek.CekYazmaIBQCEKSENETKOD.AsInteger;
                        FinansDataM.CekGirBodIBQueryTUTAR.AsFloat              := DMCek.CekYazmaIBQTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVTUTAR.AsFloat           := DMCek.CekYazmaIBQDOVTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVKUR.AsFloat             := DMCek.CekYazmaIBQDOVKUR.AsFloat;
                        FinansDataM.CekGirBodIBQueryPARABIRKOD.AsInteger       := DMCek.CekYazmaIBQPARABIRKOD.AsInteger;
                        FinansDataM.CekGirBodIBQuerySONCIRO.AsString           := DMCek.CekYazmaIBQSONCIRO.AsString;
                        FinansDataM.CekGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFCekYazma.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCekYazma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMCek.CekYazmaIBQ.Modified then
                DMCek.CekYazmaIBQ.Post;
        DMCek.CekYazmaIBQ.Close;
        Action := caFree;
end;

procedure TFCekYazma.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMCek.CekYazmaIBQ.Active = false Then
        Begin
                DMCek.CekYazmaIBQ.Open;
                DMCek.CYBodroIBQ.Open;
        end;
end;


procedure TFCekYazma.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMCek.CekYazmaIBQ.Append;
        DMCek.CekYazmaIBQ.Post;
        DMCek.CYBodroIBQ.Append;
        OnlineDBGrid1.SetFocus;

end;

procedure TFCekYazma.BitBtn3Click(Sender: TObject);
begin
        if DMCek.CekYazmaIBQ.Active then
        begin
                FCariSecim.DataSet := DMCek.CekYazmaIBQ;
                FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFCekYazma.BitBtn27Click(Sender: TObject);
begin
        if DMCek.CekYazmaIBQ.Active then
        begin
                if DMCek.CekYazmaIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMCek.CekYazmaIBQ.Edit;
                        DMCek.CekYazmaIBQSISTEM.AsInteger :=2;
                        DMCek.CekYazmaIBQ.Post;
                        DMCek.CekYazmaIBQ.Close;
                        DMCek.CYBodroIBQ.Close;
                end;
        end;
end;

procedure TFCekYazma.DBEdit11Exit(Sender: TObject);
begin
        if DMCek.CekYazmaIBQ.Modified then
                DMCek.CekYazmaIBQ.Post;
end;

procedure TFCekYazma.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekYazmaIBQ.First;
end;

procedure TFCekYazma.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekYazmaIBQ.Prior;
end;

procedure TFCekYazma.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekYazmaIBQ.Next;
end;

procedure TFCekYazma.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekYazmaIBQ.Last;
end;

procedure TFCekYazma.BitBtn4Click(Sender: TObject);
begin
        DMCek.CekYazmaIBQ.Edit;
        DMCek.CekYazmaIBQCARIKOD.AsInteger := 0;
        DMCek.CekYazmaIBQCARINO.AsInteger := 0;
        DMCek.CekYazmaIBQ.Post;
end;

procedure TFCekYazma.OnlineButton1Click(Sender: TObject);
begin
        if DMCek.CekYazmaIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCek.CekYazmaIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFCekYazma.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMCek.CekYazmaIBQ.Modified then
                DMCek.CekYazmaIBQ.Post;
end;

procedure TFCekYazma.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMCek.CekYazmaIBQ.Modified then
                DMCek.CekYazmaIBQ.Post;
end;

procedure TFCekYazma.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMCek.CYBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFCekYazma.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMCek.CYBodroIBQ.Modified) then
                DMCek.CYBodroIBQ.Post;
end;

procedure TFCekYazma.OnlineDBGrid1Columns3EditButtonClick(
  Column: TOnlineColumn);
begin
        FBankaSec.DataSet :=DMCek.CYBodroIBQ;
        FBankaSec.ShowModal;
end;

end.
