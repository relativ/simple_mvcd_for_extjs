unit CekCiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl, Menus;

type
  TFCekCiro = class(TForm)
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
    Label5: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    OnlineButton2: TOnlineButton;
    OnlineButton3: TOnlineButton;
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
    procedure ekSe1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCekCiro: TFCekCiro;

implementation

uses CekDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, Cekler, DB;

{$R *.dfm}

procedure TFCekCiro.BitBtn11Click(Sender: TObject);
begin
        DMCek.CekCiroIBQ.Append;

end;

procedure TFCekCiro.BitBtn1Click(Sender: TObject);
begin
   {     if DMCek.CekCiroIBQ.RecordCount>0 Then
        Begin
                if (DMCek.CekCiroIBQBANKA.AsString <> '') and (DMCek.CekCiroIBQVADE.AsString <> '') and (DMCek.CekCiroIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.CekGirBodIBQuery.Edit;
                        FinansDataM.CekGirBodIBQueryCEKSENETKOD.AsInteger      := DMCek.CekCiroIBQCEKSENETKOD.AsInteger;
                        FinansDataM.CekGirBodIBQueryTUTAR.AsFloat              := DMCek.CekCiroIBQTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVTUTAR.AsFloat           := DMCek.CekCiroIBQDOVTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVKUR.AsFloat             := DMCek.CekCiroIBQDOVKUR.AsFloat;
                        FinansDataM.CekGirBodIBQueryPARABIRKOD.AsInteger       := DMCek.CekCiroIBQPARABIRKOD.AsInteger;
                        FinansDataM.CekGirBodIBQuerySONCIRO.AsString           := DMCek.CekCiroIBQSONCIRO.AsString;
                        FinansDataM.CekGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFCekCiro.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCekCiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMCek.CekCiroIBQ.Modified then
                DMCek.CekCiroIBQ.Post;
        DMCek.CekCiroIBQ.Close;
        DMCek.CCBodroIBQ.Close;
        Action := caFree;
end;

procedure TFCekCiro.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMCek.CekCiroIBQ.Active = false Then
        Begin
                DMCek.CekCiroIBQ.Open;
                DMCek.CCBodroIBQ.Open;
        end;
end;


procedure TFCekCiro.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMCek.CekCiroIBQ.Append;
        DMCek.CekCiroIBQ.Post;
        DMCek.CCBodroIBQ.Append;
        OnlineDBGrid1.SetFocus;

end;

procedure TFCekCiro.BitBtn3Click(Sender: TObject);
begin
        if DMCek.CekCiroIBQ.Active then
        begin
                FCariSecim.DataSet := DMCek.CekCiroIBQ;
                FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFCekCiro.BitBtn27Click(Sender: TObject);
begin
        if DMCek.CekCiroIBQ.Active then
        begin
                if DMCek.CekCiroIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMCek.CekCiroIBQ.Edit;
                        DMCek.CekCiroIBQSISTEM.AsInteger :=2;
                        DMCek.CekCiroIBQ.Post;
                        DMCek.CekCiroIBQ.Close;
                        DMCek.CCBodroIBQ.Close;
                end;
        end;
end;

procedure TFCekCiro.DBEdit11Exit(Sender: TObject);
begin
        if DMCek.CekCiroIBQ.Modified then
                DMCek.CekCiroIBQ.Post;
end;

procedure TFCekCiro.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekCiroIBQ.First;
end;

procedure TFCekCiro.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekCiroIBQ.Prior;
end;

procedure TFCekCiro.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekCiroIBQ.Next;
end;

procedure TFCekCiro.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekCiroIBQ.Last;
end;

procedure TFCekCiro.BitBtn4Click(Sender: TObject);
begin
        DMCek.CekCiroIBQ.Edit;
        DMCek.CekCiroIBQCARIKOD.AsInteger := 0;
        DMCek.CekCiroIBQCARINO.AsInteger := 0;
        DMCek.CekCiroIBQ.Post;
end;

procedure TFCekCiro.OnlineButton1Click(Sender: TObject);
begin
        if DMCek.CekCiroIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gider'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCek.CekCiroIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFCekCiro.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMCek.CekCiroIBQ.Modified then
                DMCek.CekCiroIBQ.Post;
end;

procedure TFCekCiro.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMCek.CekCiroIBQ.Modified then
                DMCek.CekCiroIBQ.Post;
end;

procedure TFCekCiro.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMCek.CCBodroIBQ;
        FParaBirimSecim.ShowModal;
        DMCek.CCBodroIBQ.Refresh;
end;

procedure TFCekCiro.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMCek.CCBodroIBQ.Modified) then
                DMCek.CCBodroIBQ.Post;
end;

procedure TFCekCiro.ekSe1Click(Sender: TObject);
begin
        FCekler.DataSet := DMCek.CCBodroIBQ;
        FCekler.ShowModal;
end;

end.
