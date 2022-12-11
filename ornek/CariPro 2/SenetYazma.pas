unit SenetYazma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl;

type
  TFSenetYazma = class(TForm)
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
  FSenetYazma: TFSenetYazma;

implementation

uses SenetDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, BankaSec;

{$R *.dfm}

procedure TFSenetYazma.BitBtn11Click(Sender: TObject);
begin
        DMSenet.SenetYazmaIBQ.Append;

end;

procedure TFSenetYazma.BitBtn1Click(Sender: TObject);
begin
   {     if DMSenet.SenetYazmaIBQ.RecordCount>0 Then
        Begin
                if (DMSenet.SenetYazmaIBQBANKA.AsString <> '') and (DMSenet.SenetYazmaIBQVADE.AsString <> '') and (DMSenet.SenetYazmaIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.CekGirBodIBQuery.Edit;
                        FinansDataM.CekGirBodIBQueryCEKSENETKOD.AsInteger      := DMSenet.SenetYazmaIBQCEKSENETKOD.AsInteger;
                        FinansDataM.CekGirBodIBQueryTUTAR.AsFloat              := DMSenet.SenetYazmaIBQTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVTUTAR.AsFloat           := DMSenet.SenetYazmaIBQDOVTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVKUR.AsFloat             := DMSenet.SenetYazmaIBQDOVKUR.AsFloat;
                        FinansDataM.CekGirBodIBQueryPARABIRKOD.AsInteger       := DMSenet.SenetYazmaIBQPARABIRKOD.AsInteger;
                        FinansDataM.CekGirBodIBQuerySONCIRO.AsString           := DMSenet.SenetYazmaIBQSONCIRO.AsString;
                        FinansDataM.CekGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFSenetYazma.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFSenetYazma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSenet.SenetYazmaIBQ.Modified then
                DMSenet.SenetYazmaIBQ.Post;
        DMSenet.SenetYazmaIBQ.Close;
        Action := caFree;
end;

procedure TFSenetYazma.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMSenet.SenetYazmaIBQ.Active = false Then
        Begin
                DMSenet.SenetYazmaIBQ.Open;
                DMSenet.SYBodroIBQ.Open;
        end;
end;


procedure TFSenetYazma.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMSenet.SenetYazmaIBQ.Append;
        DMSenet.SenetYazmaIBQ.Post;
        DMSenet.SYBodroIBQ.Append;
        OnlineDBGrid1.SetFocus;

end;

procedure TFSenetYazma.BitBtn3Click(Sender: TObject);
begin
        if DMSenet.SenetYazmaIBQ.Active then
        begin
                FCariSecim.DataSet := DMSenet.SenetYazmaIBQ;
                FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFSenetYazma.BitBtn27Click(Sender: TObject);
begin
        if DMSenet.SenetYazmaIBQ.Active then
        begin
                if DMSenet.SenetYazmaIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMSenet.SenetYazmaIBQ.Edit;
                        DMSenet.SenetYazmaIBQSISTEM.AsInteger :=2;
                        DMSenet.SenetYazmaIBQ.Post;
                        DMSenet.SenetYazmaIBQ.Close;
                        DMSenet.SYBodroIBQ.Close;
                end;
        end;
end;

procedure TFSenetYazma.DBEdit11Exit(Sender: TObject);
begin
        if DMSenet.SenetYazmaIBQ.Modified then
                DMSenet.SenetYazmaIBQ.Post;
end;

procedure TFSenetYazma.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetYazmaIBQ.First;
end;

procedure TFSenetYazma.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetYazmaIBQ.Prior;
end;

procedure TFSenetYazma.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetYazmaIBQ.Next;
end;

procedure TFSenetYazma.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetYazmaIBQ.Last;
end;

procedure TFSenetYazma.BitBtn4Click(Sender: TObject);
begin
        DMSenet.SenetYazmaIBQ.Edit;
        DMSenet.SenetYazmaIBQCARIKOD.AsInteger := 0;
        DMSenet.SenetYazmaIBQCARINO.AsInteger := 0;
        DMSenet.SenetYazmaIBQ.Post;
end;

procedure TFSenetYazma.OnlineButton1Click(Sender: TObject);
begin
        if DMSenet.SenetYazmaIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMSenet.SenetYazmaIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFSenetYazma.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMSenet.SenetYazmaIBQ.Modified then
                DMSenet.SenetYazmaIBQ.Post;
end;

procedure TFSenetYazma.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMSenet.SenetYazmaIBQ.Modified then
                DMSenet.SenetYazmaIBQ.Post;
end;

procedure TFSenetYazma.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMSenet.SYBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFSenetYazma.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMSenet.SYBodroIBQ.Modified) then
                DMSenet.SYBodroIBQ.Post;
end;

procedure TFSenetYazma.OnlineDBGrid1Columns3EditButtonClick(
  Column: TOnlineColumn);
begin
        FBankaSec.DataSet :=DMSenet.SYBodroIBQ;
        FBankaSec.ShowModal;
end;

end.
