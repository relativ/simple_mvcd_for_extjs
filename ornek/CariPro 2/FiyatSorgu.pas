unit FiyatSorgu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OnlineLabel, DBCtrls, DBOnlineLookupCombo, Buttons,
  Grids, DBGrids, ExtCtrls, OnlineEdit, ComCtrls, OnlineDBTreeView, DB,
  IBCustomDataSet, IBUpdateSQL, IBQuery, DBTables, OnlineDBListView,
  Mask, AlignEdit, DBOnlineEdit, OnlineIBQuery, OnlineButton, OnlineDBGrid,
  OnlineCustomControl, OnlineCheckBox;

type
  TFFiyatSorgu = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    psDBTreeView1: TOnlineDBTree;
    DBGrid2: TOnlineDBGrid;
    OnlineCheckBox2: TOnlineCheckBox;
    AktifStoklar: TRadioButton;
    PasifStoklar: TRadioButton;
    GroupBox12: TGroupBox;
    OnlineEdit1: TOnlineEdit;
    BitBtn4: TOnlineButton;
    SecimButonu: TOnlineButton;
    BitBtn2: TOnlineButton;
    TumStoklar: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    OnlineCheckbox6: TOnlineCheckbox;
    OnlineCheckbox1: TOnlineCheckbox;
    OnlineEdit2: TOnlineEdit;
    OnlineEdit3: TOnlineEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SecimButonuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TumStoklarClick(Sender: TObject);
    procedure AktifStoklarClick(Sender: TObject);
    procedure PasifStoklarClick(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineCheckbox6Click(Sender: TObject);
    procedure OnlineCheckBox2Click(Sender: TObject);
    procedure psDBTreeView1Click(Sender: TObject);
    procedure OnlineCheckbox1Click(Sender: TObject);
    procedure OnlineEdit1Exit(Sender: TObject);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    function StokSec(IslemTuru: string;DataSet:TDataSet): boolean;
  public
        IslemTuru: string;
        DataSet:TDataSet;
  end;

var
  FFiyatSorgu: TFFiyatSorgu;

implementation

Uses StokDM;

{$R *.dfm}

procedure TFFiyatSorgu.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure TFFiyatSorgu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        SecimButonu.Enabled:=False;
end;

procedure TFFiyatSorgu.FormShow(Sender: TObject);
begin
        DMStok.StokGrupKartIBQ.Close;
        DMStok.StokGruplariIBQ.Close;

        if IslemTuru ='Çýkýþ' Then
        Begin
                OnlineCheckbox1.Checked:=True;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD) and (BAKIYE >0 and BAKIYE IS NOT NULL)');
        end else
        Begin
                OnlineCheckbox1.Checked:=False;
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
        end;

        DMStok.StokGrupKartIBQ.Open;
        DMStok.StokGruplariIBQ.Open;
        OnlineEdit1.SetFocus;
end;

function TFFiyatSorgu.StokSec(IslemTuru: string;DataSet:TDataSet): boolean;
var
        miktar: extended;
        yer: pointer;
begin

        try
                yer := DMStok.StokGrupKartIBQ.GetBookmark;
                if DMStok.StokGrupKartIBQSTOKADI.AsString<>'' Then
                Begin
                        if IslemTuru = 'Giriþ' then
                        
                        begin
                                if DataSet.Locate('STOKNO',DMStok.StokGrupKartIBQStokNo.AsInteger,[]) = false then
                                begin
                                        DataSet.Append;
                                        DataSet.FindField('STOKKOD').AsInteger := DMStok.StokGrupKartIBQSTOKKOD.AsInteger;                                        
                                        DataSet.FindField('STOKNO').AsInteger := DMStok.StokGrupKartIBQStokNo.AsInteger;
                                        if DataSet.Modified then
                                                DataSet.Post;
                                end else begin
                                        if MessageBox(handle,'Bu ürün daha önceden seçilmiþ!.. Giriþ miktarýný artýrmak ister misiniz?','Uyarý',MB_YESNO) = mrYes then
                                        begin
                                                if tryStrToFloat(InputBox('Stok Giriþ Miktarý','Giriþ miktarýný yazýn',DataSet.FindField('MIKTAR').AsString),miktar) then
                                                begin
                                                        DataSet.Edit;
                                                        DataSet.FindField('MIKTAR').AsFloat := miktar;
                                                        if DataSet.Modified then
                                                                DataSet.Post;
                                                end else begin
                                                        ShowMessage('Lütfen sayýsal bir deðer girin.');
                                                        if tryStrToFloat(InputBox('Stok Giriþ Miktarý','Giriþ miktarýný yazýn',DataSet.FindField('MIKTAR').AsString),miktar) then
                                                        begin
                                                                DataSet.Edit;
                                                                DataSet.FindField('MIKTAR').AsFloat := miktar;
                                                                if DataSet.Modified then
                                                                        DataSet.Post;
                                                        end;
                                                end;
                                        end;
                                end;
                                Result := true;
                        end else if IslemTuru = 'Çýkýþ' then
                        begin
                              if (DMStok.StokGrupKartIBQNEGSEVIYE.AsInteger =2 ) or (DMStok.StokGrupKartIBQBAKIYE.AsFloat > 0) then
                              begin
                                if DataSet.Locate('STOKNO',DMStok.StokGrupKartIBQStokNo.AsInteger,[]) = false then
                                begin
                                        DataSet.Append;
                                        DataSet.FindField('STOKKOD').AsInteger := DMStok.StokGrupKartIBQSTOKKOD.AsInteger;
                                        DataSet.FindField('STOKNO').AsInteger := DMStok.StokGrupKartIBQStokNo.AsInteger;
                                        if DataSet.Modified then
                                                DataSet.Post;
                                end else begin
                                        if MessageBox(handle,'Bu ürün daha önceden seçilmiþ!.. Çýkýþ miktarýný artýrmak ister misiniz?','Uyarý',MB_YESNO) = mrYes then
                                        begin
                                                if tryStrToFloat(InputBox('Stok Çýkýþ Miktarý','Çýkýþ miktarýný yazýn',DataSet.FindField('MIKTAR').AsString),miktar) then
                                                begin
                                                        DataSet.Edit;
                                                        DataSet.FindField('MIKTAR').AsFloat := miktar;
                                                        if DataSet.Modified then
                                                                DataSet.Post;
                                                end else begin
                                                        ShowMessage('Lütfen sayýsal bir deðer girin.');
                                                        if tryStrToFloat(InputBox('Stok Çýkýþ Miktarý','Çýkýþ miktarýný yazýn',DataSet.FindField('MIKTAR').AsString),miktar) then
                                                        begin
                                                                DataSet.Edit;
                                                                DataSet.FindField('MIKTAR').AsFloat := miktar;
                                                                if DataSet.Modified then
                                                                        DataSet.Post;
                                                        end;
                                                end;
                                        end;
                                end;
                                Result := true;
                              end else begin
                                ShowMessage('Yeterli Miktarda Stok Yok!..');
                                Result := false;
                              end;

                end else if IslemTuru = 'Teklif-Sipariþ Çýkýþ' then
                        begin
                                if DataSet.Locate('STOKNO',DMStok.StokGrupKartIBQStokNo.AsInteger,[]) = false then
                                begin
                                        DataSet.Append;
                                        DataSet.FindField('STOKKOD').AsInteger := DMStok.StokGrupKartIBQSTOKKOD.AsInteger;
                                        DataSet.FindField('STOKNO').AsInteger := DMStok.StokGrupKartIBQStokNo.AsInteger;
                                        if DataSet.Modified then
                                                DataSet.Post;
                                end else begin
                                        if MessageBox(handle,'Bu ürün daha önceden seçilmiþ!.. Miktarý artýrmak ister misiniz?','Uyarý',MB_YESNO) = mrYes then
                                        begin
                                                if tryStrToFloat(InputBox('Stok Miktarý','Miktarý yazýn',DataSet.FindField('MIKTAR').AsString),miktar) then
                                                begin
                                                        DataSet.Edit;
                                                        DataSet.FindField('MIKTAR').AsFloat := miktar;
                                                        if DataSet.Modified then
                                                                DataSet.Post;
                                                end else begin
                                                        ShowMessage('Lütfen sayýsal bir deðer girin.');
                                                        if tryStrToFloat(InputBox('Stok Miktarý','Miktarý yazýn',DataSet.FindField('MIKTAR').AsString),miktar) then
                                                        begin
                                                                DataSet.Edit;
                                                                DataSet.FindField('MIKTAR').AsFloat := miktar;
                                                                if DataSet.Modified then
                                                                        DataSet.Post;
                                                        end;
                                                end;
                                        end;
                                end;
                                Result := true;
                end;
                end else Result := false;
                DataSet.Refresh;
                DMStok.StokGrupKartIBQ.GotoBookmark(yer);

        except;
                Result := false;
        end;
end;

procedure TFFiyatSorgu.SecimButonuClick(Sender: TObject);
begin
        StokSec(IslemTuru,DataSet);
end;

procedure TFFiyatSorgu.DBGrid1DblClick(Sender: TObject);
begin
        SecimButonuClick(sender);
end;

procedure TFFiyatSorgu.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
                SecimButonuClick(sender);
end;

procedure TFFiyatSorgu.TumStoklarClick(Sender: TObject);
begin
        if OnlineCheckbox1.Checked = false then
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART where STOKGRUP.STOKKOD = STOKKART.STOKKOD'
        else DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART where STOKGRUP.STOKKOD = STOKKART.STOKKOD and BAKIYE > 0 and BAKIYE IS NOT NULL';
        DMStok.StokGrupKartIBQ.Open;
end;

procedure TFFiyatSorgu.AktifStoklarClick(Sender: TObject);
begin
        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        if OnlineCheckbox1.Checked = false then
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
        else DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD) and (BAKIYE >0 and BAKIYE IS NOT NULL)');
        DMStok.StokGrupKartIBQ.Open;
end;

procedure TFFiyatSorgu.PasifStoklarClick(Sender: TObject);
begin
        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
        if OnlineCheckbox1.Checked = false then
                DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39+' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
        else DMStok.StokGrupKartIBQ.SQL.Add('where (STOKGRUP.KONTROLNO like :KONTROLNO || '+#39+'%'+#39+') and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39+' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD) and (BAKIYE > 0 and BAKIYE IS NOT NULL)');
        DMStok.StokGrupKartIBQ.Open;
end;

procedure TFFiyatSorgu.OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                if OnlineEdit1.Text <> '' then
                begin
                        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                        if TumStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKADI) like '+#39+OnlineEdit1.UpperTurk+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
                        else if AktifStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKADI) like '+#39+OnlineEdit1.UpperTurk+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
                        else if PasifStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKADI) like '+#39+OnlineEdit1.UpperTurk+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                end else begin
                        if TumStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end else if AktifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                        end else if PasifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end;
                end;
                Key := #0;
        end;
end;

procedure TFFiyatSorgu.BitBtn4Click(Sender: TObject);
begin
        OnlineEdit1.Clear;
        OnlineEdit2.Clear;
        OnlineEdit3.Clear;
        if TumStoklar.Checked then
        begin
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
        end else if AktifStoklar.Checked then
        begin
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
        end else if PasifStoklar.Checked then
        begin
                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                DMStok.StokGrupKartIBQ.Open;
        end;
end;

procedure TFFiyatSorgu.DBGrid2DblClick(Sender: TObject);
begin
        SecimButonuClick(sender);
end;

procedure TFFiyatSorgu.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
                SecimButonuClick(sender);
end;

procedure TFFiyatSorgu.OnlineCheckbox6Click(Sender: TObject);
begin
        DBGrid2.Columns[4].Visible := OnlineCheckbox6.Checked;
        DBGrid2.Columns[4].Width := 100;
end;

procedure TFFiyatSorgu.OnlineCheckBox2Click(Sender: TObject);
begin
        DBGrid2.Columns[5].Visible := OnlineCheckbox2.Checked;
        DBGrid2.Columns[6].Visible := OnlineCheckbox2.Checked;
        DBGrid2.Columns[7].Visible := OnlineCheckbox2.Checked;
end;

procedure TFFiyatSorgu.psDBTreeView1Click(Sender: TObject);
begin
        if not AktifStoklar.Checked then
        begin
                AktifStoklarClick(sender);
                AktifStoklar.Checked := true;
        end;
        if OnlineEdit1.Text <> '' then
        begin
                OnlineEdit1.Text := '';
                        if TumStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end else if AktifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                        end else if PasifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end;
        end;
end;

procedure TFFiyatSorgu.OnlineCheckbox1Click(Sender: TObject);
begin
        if AktifStoklar.Checked then
                AktifStoklarClick(sender)
        else if TumStoklar.Checked then
                TumStoklarClick(sender)
        else if PasifStoklar.Checked then
                PasifStoklarClick(sender);
end;

procedure TFFiyatSorgu.OnlineEdit1Exit(Sender: TObject);
begin
        if OnlineEdit1.Text = '' then
        begin
                OnlineEdit1.Text := '';
                        if TumStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end else if AktifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                        end else if PasifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end;
        end;
end;

procedure TFFiyatSorgu.OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                if OnlineEdit2.Text <> '' then
                begin
                        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                        if TumStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKNO) like '+#39+OnlineEdit2.UpperTurk+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
                        else if AktifStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKNO) like '+#39+OnlineEdit2.UpperTurk+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
                        else if PasifStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(STOKNO) like '+#39+OnlineEdit2.UpperTurk+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                end else begin
                        if TumStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end else if AktifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'1'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                        end else if PasifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE ='+#39+'Pasif'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end;
                end;
                Key := #0;
        end;
end;

procedure TFFiyatSorgu.OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                if OnlineEdit3.Text <> '' then
                begin
                        DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                        if TumStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(BARKOD) like '+#39+OnlineEdit3.UpperTurk+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
                        else if AktifStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(BARKOD) like '+#39+OnlineEdit3.UpperTurk+'%'+#39+' and STOKGRUP.ACTIVITE =1 and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)')
                        else if PasifStoklar.Checked then
                                DMStok.StokGrupKartIBQ.SQL.Add('where UPPER(BARKOD) like '+#39+OnlineEdit3.UpperTurk+'%'+#39+' and STOKGRUP.ACTIVITE =2 and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                end else begin
                        if TumStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39 + ' and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end else if AktifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE =1 and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                        DMStok.StokGrupKartIBQ.Open;
                        end else if PasifStoklar.Checked then
                        begin
                                DMStok.StokGrupKartIBQ.SQL.Text := 'select DISTINCT STOKGRUP.STOKKOD,STOKGRUP.* ,STOKKART.* from STOKGRUP,STOKKART';
                                DMStok.StokGrupKartIBQ.SQL.Add('where KONTROLNO like :KONTROLNO || '+#39+'%'+#39+' and STOKGRUP.ACTIVITE =2 and (STOKGRUP.STOKKOD = STOKKART.STOKKOD)');
                                DMStok.StokGrupKartIBQ.Open;
                        end;
                end;
                Key := #0;
        end;
end;

end.
