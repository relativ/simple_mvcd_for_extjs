unit StokKontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, StdCtrls,
  Buttons, OnlineEdit, OnlineLabel,  ComCtrls,
  OnlineDBTreeView, Grids, DBGrids, ExtCtrls, AlignEdit, OnlineDBGrid,
  OnlineButton, Mask, DBCtrls, DBOnlineEdit,
  OnlineCustomControl;

type
  TFStokKontrol = class(TForm)
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    OnlineCheckBox3: TRadioButton;
    OnlineCheckBox4: TRadioButton;
    OnlineCheckBox5: TRadioButton;
    GroupBox12: TGroupBox;
    BitBtn2: TOnlineButton;
    GroupBox5: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    psDBTreeView1: TOnlineDBTree;
    OnlineLabel2: TOnlineLabel;
    DBOnlineEdit1: TDBOnlineEdit;
    OnlineEdit1: TOnlineEdit;
    BitBtn4: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    OnlineEdit3: TOnlineEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineCheckBox5Click(Sender: TObject);
    procedure OnlineCheckBox3Click(Sender: TObject);
    procedure OnlineCheckBox4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure psDBTreeView1Click(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Arama: boolean;
  public
    { Public declarations }
  end;

var
  FStokKontrol: TFStokKontrol;

implementation

uses StokDM;

{$R *.dfm}

procedure TFStokKontrol.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure TFStokKontrol.FormShow(Sender: TObject);
begin
        DMStok.StokGruplariIBQ.Open;
        DMStok.StokGrupKontrolIBQ.Close;
        DMStok.StokGrupKontrolIBQ.Open;
        DMStok.SKontrolBodroIBQ.Open;
        DMStok.StokKToplamIBQ.Open;
        OnlineEdit1.SetFocus;
        psDBTreeView1.RebuildTree;
end;

procedure TFStokKontrol.OnlineCheckBox5Click(Sender: TObject);
begin
        DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
        DMStok.StokGrupKontrolIBQ.Open;
        Arama := false;
end;

procedure TFStokKontrol.OnlineCheckBox3Click(Sender: TObject);
begin
        DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.ACTIVITE = '+#39+'Aktif'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
        DMStok.StokGrupKontrolIBQ.Open;
        Arama := false;
end;

procedure TFStokKontrol.OnlineCheckBox4Click(Sender: TObject);
begin
        DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.ACTIVITE = '+#39+'Pasif'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
        DMStok.StokGrupKontrolIBQ.Open;
        Arama := false;
end;

procedure TFStokKontrol.BitBtn4Click(Sender: TObject);
begin
        OnlineEdit1.Clear;
        OnlineEdit2.Clear;
        OnlineEdit3.Clear;
        DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and (STOKGRUP.ACTIVITE = '+#39+'Aktif'+#39+') and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
        DMStok.StokGrupKontrolIBQ.Open;

end;

procedure TFStokKontrol.psDBTreeView1Click(Sender: TObject);
begin
        if (not OnlineCheckBox3.Checked) or (Arama = true) then
        begin
                OnlineCheckBox3Click(sender);
                OnlineCheckBox3.Checked := true;
        end;
end;

procedure TFStokKontrol.OnlineEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
        begin
                Arama := true;
                DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.STOKKOD = STOKKART.STOKKOD) and (UPPER(STOKADI) LIKE '+#39+OnlineEdit1.UpperTurk+'%'#39+')');
                DMStok.StokGrupKontrolIBQ.Open;
        end;
end;

procedure TFStokKontrol.OnlineEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
        begin
                Arama := true;
                DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.STOKKOD = STOKKART.STOKKOD) and (UPPER(BARKOD) LIKE '+#39+OnlineEdit3.UpperTurk+'%'#39+')');
                DMStok.StokGrupKontrolIBQ.Open;
        end;
end;

procedure TFStokKontrol.OnlineEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
        begin
                Arama := true;
                DMStok.StokGrupKontrolIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKontrolIBQ.SQL.Add('where (STOKGRUP.STOKKOD = STOKKART.STOKKOD) and (UPPER(STOKNO) LIKE '+#39+OnlineEdit2.UpperTurk+'%'#39+')');
                DMStok.StokGrupKontrolIBQ.Open;
        end;
end;

procedure TFStokKontrol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
end;

end.
