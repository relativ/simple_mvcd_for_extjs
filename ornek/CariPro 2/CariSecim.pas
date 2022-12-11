unit CariSecim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, OnlineDBCheckListBox, OnlineButton, OnlineEdit,
  Grids,DB, DBGrids, OnlineDBGrid, ExtCtrls,
  Menus, IBCustomDataSet, IBStoredProc, OnlineCustomControl, Mask,
  dfsSplitter;
  
type
  TFCariSecim = class(TForm)
    Panel10: TPanel;
    OnlineDBGrid2: TOnlineDBGrid;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    mnSe1: TMenuItem;
    mnBrak1: TMenuItem;
    CariSecimProc: TIBStoredProc;
    PopupMenu2: TPopupMenu;
    DetaylGster1: TMenuItem;
    Panel3: TPanel;
    dfsSplitter1: TdfsSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    OnlineDBCheckListBox1: TOnlineDBCheckListBox;
    OnlineEdit2: TOnlineEdit;
    OnlineEdit1: TOnlineEdit;
    BitBtn7: TOnlineButton;
    BitBtn6: TOnlineButton;
    BitBtn2: TOnlineButton;
    OnlineEdit3: TOnlineEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure mnSe1Click(Sender: TObject);
    procedure mnBrak1Click(Sender: TObject);
    procedure OnlineDBCheckListBox1ClickCheck(Sender: TObject);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnlineDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure OnlineDBCheckListBox1Enter(Sender: TObject);
    procedure DetaylGster1Click(Sender: TObject);
    procedure OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    IslemTur: string;
    DataSet: TDataSet;
    IslemNo: TOnlineEdit;
  end;

var
  FCariSecim: TFCariSecim;


implementation

{$R *.dfm}
 uses CariDM,SabitDM, DataDM;
procedure TFCariSecim.FormShow(Sender: TObject);
begin
        DMCari.AktifCariIBQ.Open;
        DMSabit.CariTipIBQ.Open;

end;

procedure TFCariSecim.BitBtn6Click(Sender: TObject);
var
        CariKod, CariNo: integer;
        yer: pointer;
        C_CAISLKOD, C_IslemNo : integer;
        C_VADE, C_BANKA: string;
        C_TEDIYE : Real;
begin
        if DMCari.AktifCariIBQUYARI.AsInteger =1 Then
                ShowMessage(DMCari.AktifCariIBQMESAJ.AsString);
        CariKod := DMCari.AktifCariIBQCARIKOD.AsInteger;
        CariNo := DMCari.AktifCariIBQCARINO.AsInteger;
        DMCari.AktifCariIBQ.Close;

        if DataSet <> nil  then
        if (DataSet.FindField('CARIKOD').AsInteger = CariKod) or (DataSet.FindField('CARIKOD').AsInteger = 0) or (DataSet.FindField('CARIKOD').AsString = '') then
        begin
                DataSet.Edit;
                if islemtur = 'Cari' Then
                Begin
                        DataSet.FindField('CARIKOD').AsInteger := CariKod;
                end else
                Begin
                        DataSet.FindField('CARIKOD').AsInteger := CariKod;
                        DataSet.FindField('CARINO').AsInteger := CariNo;
                end;
                DataSet.Post;
                close;
        end else begin
                if MessageBox(handle,'Cari Kartý deðiþtirmek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
                begin
                        DataSet.Edit;
                        DataSet.FindField('CARIKOD').AsInteger := CariKod;
                        DataSet.Post;

                        close;
                end;
        end;
        if DataSet = nil then
        begin
                IslemNo.Text := IntToStr(CariNo);
                IslemNo.Tag := CariKod;
                close;
        end;

end;

procedure TFCariSecim.BitBtn7Click(Sender: TObject);
begin
        close;
end;

procedure TFCariSecim.mnSe1Click(Sender: TObject);
var
        i: integer;
begin
        for i:= 0 to OnlineDBCheckListBox1.Items.Count - 1 do
                OnlineDBCheckListBox1.Checked[i] := true;
        OnlineDBCheckListBox1ClickCheck(Sender);

end;

procedure TFCariSecim.mnBrak1Click(Sender: TObject);
var
        i: integer;
begin
        for i:= 0 to OnlineDBCheckListBox1.Items.Count - 1 do
                OnlineDBCheckListBox1.Checked[i] := false;
        OnlineDBCheckListBox1ClickCheck(Sender);

end;

procedure TFCariSecim.OnlineDBCheckListBox1ClickCheck(Sender: TObject);
var
        i: integer;
        kosul: string;
begin
        kosul := ' (';
        for i:= 0 to OnlineDBCheckListBox1.Items.Count - 1 do
        begin
                if OnlineDBCheckListBox1.Checked[i] then
                begin
                        if kosul <> ' (' then
                                kosul := kosul + ' or CARITIPKOD='+#39+OnlineDBCheckListBox1.ID_List[i]+#39
                        else kosul := kosul+'CARITIPKOD='+#39+OnlineDBCheckListBox1.ID_List[i]+#39;
                end;
        end;
        kosul := kosul+')';
        DMCari.AktifCariIBQ.SQL.Text := 'select * from CARIKART';
        if kosul <> ' ()' then
                DMCari.AktifCariIBQ.SQL.Add('where BLOKE =2 and'+kosul)
        else DMCari.AktifCariIBQ.SQL.Add('where CARITIPKOD =:CARITIPKOD and BLOKE =2 ');
        DMCari.AktifCariIBQ.Open;
end;

procedure TFCariSecim.OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key :=#0;
                OnlineDBCheckListBox1ClickCheck(Sender);
                DMCari.AktifCariIBQ.SQL.Text := 'select * from CARIKART';
                DMCari.AktifCariIBQ.SQL.Add('where BLOKE =2 ');
                if Pos('%',OnlineEdit2.Text) = 0 then
                        DMCari.AktifCariIBQ.SQL.Add('and Upper(TAMADI) like '+#39+OnlineEdit2.UpperTurk+'%'#39)
                else DMCari.AktifCariIBQ.SQL.Add('and Upper(TAMADI) like '+#39+OnlineEdit2.UpperTurk+#39);
                DMCari.AktifCariIBQ.Open;
        end;
end;

procedure TFCariSecim.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMSabit.CariTipIBQ.Close;
                DMSabit.CariTipIBQ.Open;
                DMCari.AktifCariIBQ.Close;
                DMCari.AktifCariIBQ.Open;
        end;
end;

procedure TFCariSecim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMCari.AktifCariIBQ.Close;
end;

procedure TFCariSecim.OnlineDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
        if key = #13 then
                BitBtn6Click(Sender);
end;

procedure TFCariSecim.OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key :=#0;
                if DMCari.AktifCariIBQ.Locate('CARINO',OnlineEdit1.Text,[loCaseInsensitive, loPartialKey]) = false then
                        ShowMessage('Aradýðýnýz kayýt bulunamadý...');
        end;
end;

procedure TFCariSecim.BitBtn2Click(Sender: TObject);
begin
        OnlineDBCheckListBox1ClickCheck(Sender);
        OnlineEdit1.Text:='';
        OnlineEdit2.Text:='';
end;

procedure TFCariSecim.OnlineDBCheckListBox1Enter(Sender: TObject);
begin
        DMCari.AktifCariIBQ.SQL.Text := 'select * from CARIKART';
        DMCari.AktifCariIBQ.SQL.Add('where CARITIPKOD =:CARITIPKOD and BLOKE =2');
        DMCari.AktifCariIBQ.Open;
end;

procedure TFCariSecim.DetaylGster1Click(Sender: TObject);
begin
        DetaylGster1.Checked := not DetaylGster1.Checked;
        OnlineDBGrid2.Columns[2].Visible := DetaylGster1.Checked;
        OnlineDBGrid2.Columns[3].Visible := DetaylGster1.Checked;
        OnlineDBGrid2.Columns[4].Visible := DetaylGster1.Checked;
        OnlineDBGrid2.Columns[5].Visible := DetaylGster1.Checked;
end;

procedure TFCariSecim.OnlineEdit3KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key :=#0;
                OnlineDBCheckListBox1ClickCheck(Sender);
                DMCari.AktifCariIBQ.SQL.Text := 'select * from CARIKART';
                DMCari.AktifCariIBQ.SQL.Add('where BLOKE =2');
                if Pos('%',OnlineEdit3.Text) = 0 then
                        DMCari.AktifCariIBQ.SQL.Add('and Upper(KOD) like '+#39+OnlineEdit3.UpperTurk+'%'#39)
                else DMCari.AktifCariIBQ.SQL.Add('and Upper(KOD) like '+#39+OnlineEdit3.UpperTurk+#39);
                DMCari.AktifCariIBQ.Open;
        end;
end;

end.
