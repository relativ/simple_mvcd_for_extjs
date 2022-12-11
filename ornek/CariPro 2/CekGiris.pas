unit CekGiris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, DBOnlineCombo, DBOnlineLookupCombo,
  OnlineDBDateEdit, OnlineEdit, OnlineButton,
  OnlineCustomControl;

type
  TFCekGiris = class(TForm)
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
  FCekGiris: TFCekGiris;

implementation

uses CekDM, GelGidSec, CariSecim, SabitDM, ParaBirSec, PersonelSec;

{$R *.dfm}

procedure TFCekGiris.BitBtn11Click(Sender: TObject);
begin
        DMCek.CekGirisIBQ.Append;

end;

procedure TFCekGiris.BitBtn1Click(Sender: TObject);
begin
   {     if DMCek.CekGirisIBQ.RecordCount>0 Then
        Begin
                if (DMCek.CekGirisIBQBANKA.AsString <> '') and (DMCek.CekGirisIBQVADE.AsString <> '') and (DMCek.CekGirisIBQD_TAHSILAT.AsFloat > 0) then
                begin
                        FinansDataM.CekGirBodIBQuery.Edit;
                        FinansDataM.CekGirBodIBQueryCEKSENETKOD.AsInteger      := DMCek.CekGirisIBQCEKSENETKOD.AsInteger;
                        FinansDataM.CekGirBodIBQueryTUTAR.AsFloat              := DMCek.CekGirisIBQTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVTUTAR.AsFloat           := DMCek.CekGirisIBQDOVTUTAR.AsFloat;
                        FinansDataM.CekGirBodIBQueryDOVKUR.AsFloat             := DMCek.CekGirisIBQDOVKUR.AsFloat;
                        FinansDataM.CekGirBodIBQueryPARABIRKOD.AsInteger       := DMCek.CekGirisIBQPARABIRKOD.AsInteger;
                        FinansDataM.CekGirBodIBQuerySONCIRO.AsString           := DMCek.CekGirisIBQSONCIRO.AsString;
                        FinansDataM.CekGirBodIBQuery.Post;
                        Close;
                end else ShowMessage('Banka, Keþide Tarihi, Tutar Boþ Olamaz...');
        end;     }
end;

procedure TFCekGiris.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFCekGiris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMCek.CekGirisIBQ.Modified then
                DMCek.CekGirisIBQ.Post;
        DMCek.CekGirisIBQ.Close;
        Action := caFree;
end;

procedure TFCekGiris.BitBtn25Click(Sender: TObject);
begin
        Close;
end;


Procedure Datalari_Ac;
Begin
        if DMCek.CekGirisIBQ.Active = false Then
        Begin
                DMCek.CekGirisIBQ.Open;
                DMCek.CGBodroIBQ.Open;
        end;
end;


procedure TFCekGiris.YeniTahsilatClick(Sender: TObject);
begin
        Datalari_Ac;

        DMCek.CekGirisIBQ.Append;
        DMCek.CekGirisIBQ.Post;
        DMCek.CGBodroIBQ.Append;
        OnlineDBGrid1.SetFocus;

end;

procedure TFCekGiris.BitBtn3Click(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Active then
        begin
                FCariSecim.DataSet := DMCek.CekGirisIBQ;
                FCariSecim.ShowModal;
        end else MessageBox(handle,'Yeni iþlem yapmadan cari seçemezsiniz.','Uyarý',MB_OK);
end;

procedure TFCekGiris.BitBtn27Click(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Active then
        begin
                if DMCek.CekGirisIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                Begin
                        DMCek.CekGirisIBQ.Edit;
                        DMCek.CekGirisIBQSISTEM.AsInteger :=2;
                        DMCek.CekGirisIBQ.Post;
                        DMCek.CekGirisIBQ.Close;
                        DMCek.CGBodroIBQ.Close;
                end;
        end;
end;

procedure TFCekGiris.BFirstPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekGirisIBQ.First;
end;

procedure TFCekGiris.ButtonPreviousClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekGirisIBQ.Prior;
end;

procedure TFCekGiris.ButtonNextClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekGirisIBQ.Next;
end;

procedure TFCekGiris.BLastPageClick(Sender: TObject);
begin
        Datalari_Ac;
        DMCek.CekGirisIBQ.Last;
end;

procedure TFCekGiris.BitBtn4Click(Sender: TObject);
begin
        DMCek.CekGirisIBQ.Edit;
        DMCek.CekGirisIBQCARIKOD.AsInteger := 0;
        DMCek.CekGirisIBQCARINO.AsInteger := 0;
        DMCek.CekGirisIBQ.Post;
end;

procedure TFCekGiris.OnlineButton1Click(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Active then
        begin
                if Application.FindComponent('FGelGidSec') = nil then
                        Application.CreateForm(TFGelGidSec,FGelGidSec);
                DMSabit.GGSecimIBQ.SQL.Text := 'select * from GELGIDER';
                DMSabit.GGSecimIBQ.SQL.Add('where GELGITTUR = '+#39+'Gelir'+#39);
                DMSabit.GGSecimIBQ.SQL.Add('Order by GELGITADI');
                DMSabit.GGSecimIBQ.Open;
                FGelGidSec.DataSet := DMCek.CekGirisIBQ;
                FGelGidSec.ShowModal;
        end;
end;

procedure TFCekGiris.DBOnlineCombo1Exit(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Modified then
                DMCek.CekGirisIBQ.Post;
end;

procedure TFCekGiris.DBOnlineLookupCombo1Click(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Modified then
                DMCek.CekGirisIBQ.Post;
end;

procedure TFCekGiris.OnlineDBGrid1Columns6EditButtonClick(
  Column: TOnlineColumn);
begin
        FParaBirimSecim.DataSet := DMCek.CGBodroIBQ;
        FParaBirimSecim.ShowModal;
end;

procedure TFCekGiris.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key = #13) and (DMCek.CGBodroIBQ.Modified) then
                DMCek.CGBodroIBQ.Post;
end;

procedure TFCekGiris.DBOnlineEdit5Exit(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Modified then
                DMCek.CekGirisIBQ.Post;
end;

procedure TFCekGiris.DBEdit12Exit(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Modified then
                DMCek.CekGirisIBQ.Post;
end;

procedure TFCekGiris.OnlineButton9Click(Sender: TObject);
begin
        if DMCek.CekGirisIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet := DMCek.CekGirisIBQ;
                FPersonelSec.ShowModal;
        end;
end;

end.
