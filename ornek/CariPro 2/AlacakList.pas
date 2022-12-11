unit AlacakList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, QRCtrls, QuickRpt,
  OnlineButton, OnlineCombo, ComCtrls,
  OnlineDBListView, CheckLst, OnlineDBCheckListBox, scExcelExport,
  OnlineCustomControl, OnlineCheckBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid, Menus;

type
  TFAlacakList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    OnlineDBCheckListBox1: TOnlineDBCheckListBox;
    scExcelExport1: TscExcelExport;
    OnlineButton1: TOnlineButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    PopupMenu1: TPopupMenu;
    ncele1: TMenuItem;
    OnlineButton2: TOnlineButton;
    cxGrid1DBTableView1CARINO: TcxGridDBColumn;
    cxGrid1DBTableView1KOD: TcxGridDBColumn;
    cxGrid1DBTableView1TAMADI: TcxGridDBColumn;
    cxGrid1DBTableView1TEL1: TcxGridDBColumn;
    cxGrid1DBTableView1GSM: TcxGridDBColumn;
    cxGrid1DBTableView1KREDILIMIT: TcxGridDBColumn;
    cxGrid1DBTableView1RISKLIMIT: TcxGridDBColumn;
    cxGrid1DBTableView1MAIL: TcxGridDBColumn;
    cxGrid1DBTableView1BAKIYE: TcxGridDBColumn;
    cxGrid1DBTableView1DURUM: TcxGridDBColumn;
    cxGrid1DBTableView1C_PARABIRIMI: TcxGridDBColumn;
    cxGrid1DBTableView1YETKILI: TcxGridDBColumn;
    OnlineDBCheckListBox2: TOnlineDBCheckListBox;
    OnlineButton3: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineCombo1Click(Sender: TObject);
    procedure TLClick(Sender: TObject);
    procedure OnlineDBCheckListBox1ClickCheck(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure ncele1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineButton2Click(Sender: TObject);
    procedure OnlineButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineDBCheckListBox2ClickCheck(Sender: TObject);
  private
    procedure Suzme;
  public
    { Public declarations }
  end;

var
  FAlacakList: TFAlacakList;

implementation

uses CariRDM, CariHesap, SabitDM,CariDM,DataDM;

{$R *.dfm}

procedure TFAlacakList.Suzme;    
begin
  {      DMRCari.AlacaklarimizIBQ.SQL.Text := 'select * from CARIKART Where (Durum='+#39+'Borçlu'+#39+')  and (BAKIYE>=1)';
        if (Usd.Checked = false) and (eu.Checked = false) and (tl.Checked = true) then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and KISAADI ='+#39+'TL'+#39)
        else if (Usd.Checked = true) and (eu.Checked = false) and (tl.Checked = false) then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and KISAADI ='+#39+'USD'+#39)
        else if (Usd.Checked = false) and (eu.Checked = true) and (tl.Checked = false) then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and KISAADI ='+#39+'EU'+#39)
        else if (Usd.Checked = false) and (eu.Checked = true) and (tl.Checked = true) then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and (KISAADI ='+#39+'TL'+#39+' or KISAADI ='+#39+'EU'+#39+')')
        else if (Usd.Checked = true) and (eu.Checked = false) and (tl.Checked = true)  then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and (KISAADI ='+#39+'TL'+#39+' or KISAADI ='+#39+'USD'+#39+')')
        else if (Usd.Checked = true) and (eu.Checked = true) and (tl.Checked = false)  then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and (KISAADI ='+#39+'EU'+#39+' or KISAADI ='+#39+'USD'+#39+')')
        else if (Usd.Checked = true) and (eu.Checked = true) and (tl.Checked = true)  then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and (KISAADI ='+#39+'EU'+#39+' or KISAADI ='+#39+'USD'+#39+' or KISAADI ='+#39+'TL'+#39+')')
        else if (Usd.Checked = false) and (eu.Checked = false) and (tl.Checked = false)  then
                DMRCari.AlacaklarimizIBQ.SQL.Add('and (KISAADI ='+#39+'EU'+#39+' or KISAADI ='+#39+'USD'+#39+' or KISAADI ='+#39+'TL'+#39+')');
        DMRCari.AlacaklarimizIBQ.Open;}
end;

procedure TFAlacakList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFAlacakList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFAlacakList.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)   then
    begin
      key:=#0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFAlacakList.BitBtn4Click(Sender: TObject);
begin

     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlacakListesi.or');
        FEvrak.Report.PreviewModal;}
end;

procedure TFAlacakList.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\AlacakListesi.or');
        FEvrak.Report.Print;  }
end;

procedure TFAlacakList.OnlineCombo1Click(Sender: TObject);
var
        ParaKisaad: string;
begin
{        if OnlineCombo1.Text = 'Türk Lirasý' then
                ParaKisaad := 'TL'
        else if OnlineCombo1.Text = 'Amerikan Dolarý' then
                ParaKisaad := 'USD'
        else if OnlineCombo1.Text = 'Avrupa Para Birimi' then
                ParaKisaad := 'EU';
        RaporDM.CariKartTopProc.ParamByName('ISLEMTURU_IN').AsString := 'Alacaklarýmýz';
        RaporDM.CariKartTopProc.ParamByName('PARABIRIMI_IN').AsString := OnlineCombo1.Text;
        RaporDM.CariKartTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        RaporDM.CariKartTopProc.Prepare;
        RaporDM.CariKartTopProc.ExecProc;
        CariDM.IBTransaction1.CommitRetaining;
        OnlineEdit1.Text := FormatFloat('###,###.00 '+ParaKisaad,RaporDM.CariKartTopProc.ParamByName('TOPLAM_OUT').AsFloat);
}end;

procedure TFAlacakList.TLClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFAlacakList.OnlineDBCheckListBox1ClickCheck(Sender: TObject);
var
        i: integer;
begin
        DMRCari.AlacaklarimizIBQ.SQL.Text := 'select * from CARIKART Where (Durum='+#39+'Borçlu'+#39+')  and (BAKIYE>=1)';
        for i := 0 to OnlineDBCheckListBox1.Items.Count - 1 do
        begin
                if OnlineDBCheckListBox1.Checked[i] = true then
                begin
                        if Pos('(CARITIPKOD',DMRCari.AlacaklarimizIBQ.SQL.Text) = 0 then
                                DMRCari.AlacaklarimizIBQ.SQL.Add('and ((CARITIPKOD = '+OnlineDBCheckListBox1.ID_List[i]+')')
                        else DMRCari.AlacaklarimizIBQ.SQL.Add('or (CARITIPKOD = '+OnlineDBCheckListBox1.ID_List[i]+')');
                end;
        end;
        if Pos('(CARITIPKOD',DMRCari.AlacaklarimizIBQ.SQL.Text) <> 0 then
                DMRCari.AlacaklarimizIBQ.SQL.Add(')');
        DMRCari.AlacaklarimizIBQ.Open;
end;

procedure TFAlacakList.OnlineButton1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFAlacakList.ncele1Click(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Locate('CARIKOD',DMRCari.AlacaklarimizIBQCARIKOD.AsInteger,[]) then
        begin
                if Application.FindComponent('FCariHesap') = nil then
                                Application.CreateForm(TFCariHesap,FCariHesap);
                FCariHesap.Show;
        end else MessageBox(handle,'Cari bulunamadý...','Uyarý',MB_OK);
end;

procedure TFAlacakList.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMRCari.AlacaklarimizIBQ.Close;
                DMRCari.AlacaklarimizIBQ.Open;

        end;
end;

procedure TFAlacakList.OnlineButton2Click(Sender: TObject);
begin
        DMRCari.AlacaklarimizIBQ.Close;
        DMRCari.AlacaklarimizIBQ.Open;
 {       RaporDM.CariKartTopProc.ParamByName('ISLEMTURU_IN').AsString := 'Alacaklarýmýz';
        RaporDM.CariKartTopProc.ParamByName('PARABIRIMI_IN').AsString := 'Türk Lirasý';
        RaporDM.CariKartTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        RaporDM.CariKartTopProc.Prepare;
        RaporDM.CariKartTopProc.ExecProc;
        CariDM.IBTransaction1.CommitRetaining;
        OnlineEdit1.Text := FormatFloat('###,###.00 TL',RaporDM.CariKartTopProc.ParamByName('TOPLAM_OUT').AsFloat);
}end;

procedure TFAlacakList.OnlineButton3Click(Sender: TObject);
var
        i: integer;
begin
        for i := 0 to OnlineDBCheckListBox2.Items.Count - 1 do
                if OnlineDBCheckListBox2.Checked[i] then
                        OnlineDBCheckListBox2.LocateDataSetID(i+1);
        DMRCari.AlacakAltTopProc.ParamByName('ISLEMTURU_IN').AsString := 'Alacaklarýmýz';
        DMRCari.AlacakAltTopProc.ParamByName('PARABIRKOD_IN').AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        DMRCari.AlacakAltTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        DMRCari.AlacakAltTopProc.Prepare;
        DMRCari.AlacakAltTopProc.ExecProc;
        OnlineEdit1.Text := FormatFloat('###,###.0 '+DMSabit.ParaBirimiIBQKISAADI.AsString,DMRCari.AlacakAltTopProc.ParamByName('TOPLAM_OUT').AsFloat);
end;


procedure TFAlacakList.FormShow(Sender: TObject);
begin
        DMSabit.ParaBirimiIBQ.Open;
        DMSabit.CariTipIBQ.Open;
end;

procedure TFAlacakList.OnlineDBCheckListBox2ClickCheck(Sender: TObject);
var
        i: integer;
begin
        for i:= 0 to OnlineDBCheckListBox2.Items.Count - 1 do
                if i <> OnlineDBCheckListBox2.ItemIndex then
                        OnlineDBCheckListBox2.Checked[i] := false;
end;

end.
