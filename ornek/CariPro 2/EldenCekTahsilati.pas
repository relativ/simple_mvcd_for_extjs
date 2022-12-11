unit EldenCekTahsilati;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl, Menus;

type
  TFEldenCekTahsilat = class(TForm)
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
  FEldenCekTahsilat: TFEldenCekTahsilat;

implementation

uses CekDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, Cekler, DB, KasaDM,
  KasaSecim;

{$R *.dfm}

procedure TFEldenCekTahsilat.BitBtn11Click(Sender: TObject);
begin
        DMCek.EldenCTahsilatIBQ.Append;

end;

procedure TFEldenCekTahsilat.BitBtn1Click(Sender: TObject);
begin
   {     if EldenCTahsilatIBQ.RecordCount>0 Then
        Begin
                if (EldenCTahsilatIBQBANKA.AsString <> '') and (EldenCTahsilatIBQVADE.AsString <> '') and (EldenCTahsilatIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.CekGirBodIBQuery.Edit;
                        FinansDataM.CekGirBodIBQueryCEKSENETKOD.AsInteger      := EldenCTahsilatIBQCEKSENETKOD.AsInteger;
                        FinansDataM.CekGirBodIBQueryTUTAR.AsFloat              := EldenCTahsilatIBQTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVTUTAR.AsFloat           := EldenCTahsilatIBQDOVTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVKUR.AsFloat             := EldenCTahsilatIBQDOVKUR.AsFloat;
                        FinansDataM.CekGirBodIBQueryPARABIRKOD.AsInteger       := EldenCTahsilatIBQPARABIRKOD.AsInteger;
                        FinansDataM.CekGirBodIBQuerySONCIRO.AsString           := EldenCTahsilatIBQSONCIRO.AsString;
                        FinansDataM.CekGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFEldenCekTahsilat.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFEldenCekTahsilat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMCek.EldenCTahsilatIBQ.Modified then
                DMCek.EldenCTahsilatIBQ.Post;
        DMCek.EldenCTahsilatIBQ.Close;
        DMCek.ECTahBodroIBQ.Close;
        Action := caFree;
end;

procedure TFEldenCekTahsilat.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMCek.EldenCTahsilatIBQ.Active = false Then
        Begin
                DMCek.EldenCTahsilatIBQ.Open;
                DMCek.ECTahBodroIBQ.Open;
        end;
end;


procedure TFEldenCekTahsilat.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMCek.EldenCTahsilatIBQ.Append;
        DMCek.EldenCTahsilatIBQ.Post;
        OnlineDBGrid1.SetFocus;

end;

procedure TFEldenCekTahsilat.BitBtn27Click(Sender: TObject);
begin
        if DMCek.EldenCTahsilatIBQ.Active then
        begin
                if DMCek.EldenCTahsilatIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMCek.EldenCTahsilatIBQ.Edit;
                        DMCek.EldenCTahsilatIBQSISTEM.AsInteger :=2;
                        DMCek.EldenCTahsilatIBQ.Post;
                        DMCek.EldenCTahsilatIBQ.Close;
                        DMCek.ECTahBodroIBQ.Close;
                end;
        end;
end;

procedure TFEldenCekTahsilat.DBEdit11Exit(Sender: TObject);
begin
        if DMCek.EldenCTahsilatIBQ.Modified then
                DMCek.EldenCTahsilatIBQ.Post;
end;

procedure TFEldenCekTahsilat.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.EldenCTahsilatIBQ.First;
end;

procedure TFEldenCekTahsilat.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.EldenCTahsilatIBQ.Prior;
end;

procedure TFEldenCekTahsilat.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.EldenCTahsilatIBQ.Next;
end;

procedure TFEldenCekTahsilat.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.EldenCTahsilatIBQ.Last;
end;

procedure TFEldenCekTahsilat.OnlineButton1Click(Sender: TObject);
begin

        if DMCek.EldenCTahsilatIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.DataSet := DMCek.EldenCTahsilatIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFEldenCekTahsilat.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMCek.EldenCTahsilatIBQ.Modified then
                DMCek.EldenCTahsilatIBQ.Post;
end;

procedure TFEldenCekTahsilat.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMCek.EldenCTahsilatIBQ.Modified then
                DMCek.EldenCTahsilatIBQ.Post;
end;

procedure TFEldenCekTahsilat.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMCek.ECTahBodroIBQ;
        FParaBirimSecim.ShowModal;
        DMCek.ECTahBodroIBQ.Refresh;
end;

procedure TFEldenCekTahsilat.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMCek.ECTahBodroIBQ.Modified) then
                DMCek.ECTahBodroIBQ.Post;
end;

procedure TFEldenCekTahsilat.ekSe1Click(Sender: TObject);
begin
        FCekler.DataSet := DMCek.ECTahBodroIBQ;
        FCekler.ShowModal;
end;

procedure TFEldenCekTahsilat.OnlineButton6Click(Sender: TObject);
begin
        if DMCek.EldenCTahsilatIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCek.EldenCTahsilatIBQ;
                FGelGidSec.ShowModal;
        end;
end;

end.
