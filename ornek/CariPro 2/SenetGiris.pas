unit SenetGiris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl;

type
  TFSenetGiris = class(TForm)
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
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    DBEdit11: TDBOnlineEdit;
    DBEdit12: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
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
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    GroupBox5: TGroupBox;
    Label20: TLabel;
    Label22: TLabel;
    DBOnlineEdit16: TDBOnlineEdit;
    OnlineButton6: TOnlineButton;
    OnlineButton7: TOnlineButton;
    DBOnlineEdit18: TDBOnlineEdit;
    OnlineButton9: TOnlineButton;
    OnlineButton10: TOnlineButton;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn25Click(Sender: TObject);
    procedure YeniTahsilatClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
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
    procedure DBOnlineEdit5Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure OnlineButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSenetGiris: TFSenetGiris;

implementation

uses SenetDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, PersonelSec;

{$R *.dfm}

procedure TFSenetGiris.BitBtn11Click(Sender: TObject);
begin
        DMSenet.SenetGirisIBQ.Append;

end;

procedure TFSenetGiris.BitBtn1Click(Sender: TObject);
begin
   {     if DMSenet.SenetGirisIBQ.RecordCount>0 Then
        Begin
                if (DMSenet.SenetGirisIBQBANKA.AsString <> '') and (DMSenet.SenetGirisIBQVADE.AsString <> '') and (DMSenet.SenetGirisIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.SenetGirBodIBQuery.Edit;
                        FinansDataM.SenetGirBodIBQuerySenetSENETKOD.AsInteger      := DMSenet.SenetGirisIBQSenetSENETKOD.AsInteger;
                        FinansDataM.SenetGirBodIBQueryTUTAR.AsFloat              := DMSenet.SenetGirisIBQTUTAR.AsFloat;
                        FinansDataM.SenetGirBodIBQueryDOVTUTAR.AsFloat           := DMSenet.SenetGirisIBQDOVTUTAR.AsFloat;
                        FinansDataM.SenetGirBodIBQueryDOVKUR.AsFloat             := DMSenet.SenetGirisIBQDOVKUR.AsFloat;
                        FinansDataM.SenetGirBodIBQueryPARABIRKOD.AsInteger       := DMSenet.SenetGirisIBQPARABIRKOD.AsInteger;
                        FinansDataM.SenetGirBodIBQuerySONCIRO.AsString           := DMSenet.SenetGirisIBQSONCIRO.AsString;
                        FinansDataM.SenetGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFSenetGiris.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFSenetGiris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSenet.SenetGirisIBQ.Modified then
                DMSenet.SenetGirisIBQ.Post;
        DMSenet.SenetGirisIBQ.Close;
        Action := caFree;
end;

procedure TFSenetGiris.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMSenet.SenetGirisIBQ.Active = false Then
        Begin
                DMSenet.SenetGirisIBQ.Open;
                DMSenet.SGBodroIBQ.Open;
        end;
end;


procedure TFSenetGiris.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetGirisIBQ.Append;
        DMSenet.SenetGirisIBQ.Post;
        DMSenet.SGBodroIBQ.Append;
        OnlineDBGrid1.SetFocus;

end;

procedure TFSenetGiris.BitBtn3Click(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Active then
        begin
                FCariSecim.DataSet := DMSenet.SenetGirisIBQ;
                FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFSenetGiris.BitBtn27Click(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Active then
        begin
                if DMSenet.SenetGirisIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMSenet.SenetGirisIBQ.Edit;
                        DMSenet.SenetGirisIBQSISTEM.AsInteger :=2;
                        DMSenet.SenetGirisIBQ.Post;
                        DMSenet.SenetGirisIBQ.Close;
                        DMSenet.SGBodroIBQ.Close;
                end;
        end;
end;

procedure TFSenetGiris.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetGirisIBQ.First;
end;

procedure TFSenetGiris.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetGirisIBQ.Prior;
end;

procedure TFSenetGiris.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetGirisIBQ.Next;
end;

procedure TFSenetGiris.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMSenet.SenetGirisIBQ.Last;
end;

procedure TFSenetGiris.BitBtn4Click(Sender: TObject);
begin
        DMSenet.SenetGirisIBQ.Edit;
        DMSenet.SenetGirisIBQCARIKOD.AsInteger := 0;
        DMSenet.SenetGirisIBQCARINO.AsInteger := 0;
        DMSenet.SenetGirisIBQ.Post;
end;

procedure TFSenetGiris.OnlineButton1Click(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMSenet.SenetGirisIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFSenetGiris.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Modified then
                DMSenet.SenetGirisIBQ.Post;
end;

procedure TFSenetGiris.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Modified then
                DMSenet.SenetGirisIBQ.Post;
end;

procedure TFSenetGiris.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMSenet.SGBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFSenetGiris.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMSenet.SGBodroIBQ.Modified) then
                DMSenet.SGBodroIBQ.Post;
end;

procedure TFSenetGiris.DBOnlineEdit5Exit(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Modified then
                DMSenet.SenetGirisIBQ.Post;
end;

procedure TFSenetGiris.DBEdit12Exit(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Modified then
                DMSenet.SenetGirisIBQ.Post;
end;

procedure TFSenetGiris.OnlineButton9Click(Sender: TObject);
begin
        if DMSenet.SenetGirisIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMSenet.SenetGirisIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
