unit EldenSenetTahsilati;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl, Menus;

type
  TFEldenSenetTahsilat = class(TForm)
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
  FEldenSenetTahsilat: TFEldenSenetTahsilat;

implementation

uses SenetDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, Cekler, DB, KasaDM,
  KasaSecim, Senetler;

{$R *.dfm}

procedure TFEldenSenetTahsilat.BitBtn11Click(Sender: TObject);
begin
        DMSenet.EldenSTahsilatIBQ.Append;

end;

procedure TFEldenSenetTahsilat.BitBtn1Click(Sender: TObject);
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

procedure TFEldenSenetTahsilat.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFEldenSenetTahsilat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSenet.EldenSTahsilatIBQ.Modified then
                DMSenet.EldenSTahsilatIBQ.Post;
        DMSenet.EldenSTahsilatIBQ.Close;
        DMSenet.ESTahBodroIBQ.Close;
        Action := caFree;
end;

procedure TFEldenSenetTahsilat.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMSenet.EldenSTahsilatIBQ.Active = false Then
        Begin
                DMSenet.EldenSTahsilatIBQ.Open;
                DMSenet.ESTahBodroIBQ.Open;
        end;
end;


procedure TFEldenSenetTahsilat.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMSenet.EldenSTahsilatIBQ.Append;
        DMSenet.EldenSTahsilatIBQ.Post;
        OnlineDBGrid1.SetFocus;

end;

procedure TFEldenSenetTahsilat.BitBtn27Click(Sender: TObject);
begin
        if DMSenet.EldenSTahsilatIBQ.Active then
        begin
                if DMSenet.EldenSTahsilatIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMSenet.EldenSTahsilatIBQ.Edit;
                        DMSenet.EldenSTahsilatIBQSISTEM.AsInteger :=2;
                        DMSenet.EldenSTahsilatIBQ.Post;
                        DMSenet.EldenSTahsilatIBQ.Close;
                        DMSenet.ESTahBodroIBQ.Close;
                end;
        end;
end;

procedure TFEldenSenetTahsilat.DBEdit11Exit(Sender: TObject);
begin
        if DMSenet.EldenSTahsilatIBQ.Modified then
                DMSenet.EldenSTahsilatIBQ.Post;
end;

procedure TFEldenSenetTahsilat.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.EldenSTahsilatIBQ.First;
end;

procedure TFEldenSenetTahsilat.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.EldenSTahsilatIBQ.Prior;
end;

procedure TFEldenSenetTahsilat.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.EldenSTahsilatIBQ.Next;
end;

procedure TFEldenSenetTahsilat.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.EldenSTahsilatIBQ.Last;
end;

procedure TFEldenSenetTahsilat.OnlineButton1Click(Sender: TObject);
begin

        if DMSenet.EldenSTahsilatIBQ.Active then
        begin
                if Application.FindComponent('FKasaSecim') = nil then
                        Application.CreateForm(TFKasaSecim,FKasaSecim);
                FKasaSecim.DataSet := DMSenet.EldenSTahsilatIBQ;
                FKasaSecim.ShowModal;
        end;
end;

procedure TFEldenSenetTahsilat.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMSenet.EldenSTahsilatIBQ.Modified then
                DMSenet.EldenSTahsilatIBQ.Post;
end;

procedure TFEldenSenetTahsilat.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMSenet.EldenSTahsilatIBQ.Modified then
                DMSenet.EldenSTahsilatIBQ.Post;
end;

procedure TFEldenSenetTahsilat.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMSenet.ESTahBodroIBQ;
        FParaBirimSecim.ShowModal;
        DMSenet.ESTahBodroIBQ.Refresh;
end;

procedure TFEldenSenetTahsilat.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMSenet.ESTahBodroIBQ.Modified) then
                DMSenet.ESTahBodroIBQ.Post;
end;

procedure TFEldenSenetTahsilat.ekSe1Click(Sender: TObject);
begin
        FSenetler.DataSet := DMSenet.ESTahBodroIBQ;
        FSenetler.ShowModal;
end;

procedure TFEldenSenetTahsilat.OnlineButton6Click(Sender: TObject);
begin
        if DMSenet.EldenSTahsilatIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMSenet.EldenSTahsilatIBQ;
                FGelGidSec.ShowModal;
        end;
end;

end.
