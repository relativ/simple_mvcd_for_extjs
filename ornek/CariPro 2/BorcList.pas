unit BorcList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, QRCtrls, QuickRpt,
  OnlineCombo, OnlineButton, ComCtrls,
  OnlineDBListView, CheckLst, OnlineDBCheckListBox, scExcelExport,
  OnlineCustomControl, OnlineCheckBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxGridTableView, cxGridCustomTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGridLevel, cxGrid;

type
  TFBorcList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    scExcelExport1: TscExcelExport;
    OnlineButton1: TOnlineButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
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
    OnlineEdit1: TOnlineEdit;
    OnlineDBCheckListBox1: TOnlineDBCheckListBox;
    OnlineDBCheckListBox2: TOnlineDBCheckListBox;
    OnlineButton3: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineCombo1Click(Sender: TObject);
    procedure TLClick(Sender: TObject);
    procedure UsdClick(Sender: TObject);
    procedure EuClick(Sender: TObject);
    procedure OnlineDBCheckListBox1ClickCheck(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineButton3Click(Sender: TObject);
  private
    procedure Suzme;
  public
    { Public declarations }
  end;

var
  FBorcList: TFBorcList;

implementation

uses CariRDM, SabitDM,DataDM;

{$R *.dfm}

procedure TFBorcList.Suzme;
begin
 {       DMRCari.BorclarimizIBQ.SQL.Text := 'select * from CARIKART Where (Durum='+#39+'Alacaklý'+#39+')  and (BAKIYE>=1)';
        if (Usd.Checked = false) and (eu.Checked = false) and (tl.Checked = true) then
                DMRCari.BorclarimizIBQ.SQL.Add('and KISAADI ='+#39+'TL'+#39)
        else if (Usd.Checked = true) and (eu.Checked = false) and (tl.Checked = false) then
                DMRCari.BorclarimizIBQ.SQL.Add('and KISAADI ='+#39+'USD'+#39)
        else if (Usd.Checked = false) and (eu.Checked = true) and (tl.Checked = false) then
                DMRCari.BorclarimizIBQ.SQL.Add('and KISAADI ='+#39+'EU'+#39)
        else if (Usd.Checked = false) and (eu.Checked = true) and (tl.Checked = true) then
                DMRCari.BorclarimizIBQ.SQL.Add('and (KISAADI ='+#39+'TL'+#39+' or KISAADI ='+#39+'EU'+#39+')')
        else if (Usd.Checked = true) and (eu.Checked = false) and (tl.Checked = true)  then
                DMRCari.BorclarimizIBQ.SQL.Add('and (KISAADI ='+#39+'TL'+#39+' or KISAADI ='+#39+'USD'+#39+')')
        else if (Usd.Checked = true) and (eu.Checked = true) and (tl.Checked = false)  then
                DMRCari.BorclarimizIBQ.SQL.Add('and (KISAADI ='+#39+'EU'+#39+' or KISAADI ='+#39+'USD'+#39+')')
        else if (Usd.Checked = true) and (eu.Checked = true) and (tl.Checked = true)  then
                DMRCari.BorclarimizIBQ.SQL.Add('and (KISAADI ='+#39+'EU'+#39+' or KISAADI ='+#39+'USD'+#39+' or KISAADI ='+#39+'TL'+#39+')')
        else if (Usd.Checked = false) and (eu.Checked = false) and (tl.Checked = false)  then
                DMRCari.BorclarimizIBQ.SQL.Add('and (KISAADI ='+#39+'EU'+#39+' or KISAADI ='+#39+'USD'+#39+' or KISAADI ='+#39+'TL'+#39+')');
        DMRCari.BorclarimizIBQ.Open;  }
end;

procedure TFBorcList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFBorcList.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFBorcList.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFBorcList.BitBtn4Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\BorcListesi.or');
        FEvrak.Report.PreviewModal; }
end;

procedure TFBorcList.BitBtn5Click(Sender: TObject);
begin
       { FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\BorcListesi.or');
        FEvrak.Report.Print;  }
end;

procedure TFBorcList.OnlineCombo1Click(Sender: TObject);
var
        ParaKisaad: string;
begin
  {      if OnlineCombo1.Text = 'Türk Lirasý' then
                ParaKisaad := 'TL'
        else if OnlineCombo1.Text = 'Amerikan Dolarý' then
                ParaKisaad := 'USD'
        else if OnlineCombo1.Text = 'Avrupa Para Birimi' then
                ParaKisaad := 'EU';
        RaporDM.CariKartTopProc.ParamByName('ISLEMTURU_IN').AsString := 'Borçlarýmýz';
        RaporDM.CariKartTopProc.ParamByName('PARABIRIMI_IN').AsString := OnlineCombo1.Text;
        RaporDM.CariKartTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        RaporDM.CariKartTopProc.Prepare;
        RaporDM.CariKartTopProc.ExecProc;
        CariDM.IBTransaction1.CommitRetaining;
        OnlineEdit1.Text := FormatFloat('###,###.00 '+ParaKisaad,RaporDM.CariKartTopProc.ParamByName('TOPLAM_OUT').AsFloat);
  }
end;

procedure TFBorcList.TLClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFBorcList.UsdClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFBorcList.EuClick(Sender: TObject);
begin
        Suzme;
end;

procedure TFBorcList.OnlineDBCheckListBox1ClickCheck(Sender: TObject);
var
        i: integer;
begin
        for i:= 0 to OnlineDBCheckListBox2.Items.Count - 1 do
                if i <> OnlineDBCheckListBox2.ItemIndex then
                        OnlineDBCheckListBox2.Checked[i] := false;

end;

procedure TFBorcList.OnlineButton1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFBorcList.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = VK_F5 then
        begin
                DMRCari.BorclarimizIBQ.Close;
                DMRCari.BorclarimizIBQ.Open;
    
        end;
end;

procedure TFBorcList.OnlineButton2Click(Sender: TObject);
begin
        DMRCari.BorclarimizIBQ.Close;
        DMRCari.BorclarimizIBQ.Open;
{        RaporDM.CariKartTopProc.ParamByName('ISLEMTURU_IN').AsString := 'Borçlarýmýz';
        RaporDM.CariKartTopProc.ParamByName('PARABIRIMI_IN').AsString := 'Türk Lirasý';
        RaporDM.CariKartTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        RaporDM.CariKartTopProc.Prepare;
        RaporDM.CariKartTopProc.ExecProc;
        CariDM.IBTransaction1.CommitRetaining;
        OnlineEdit1.Text := FormatFloat('###,###.00 TL',RaporDM.CariKartTopProc.ParamByName('TOPLAM_OUT').AsFloat);
}end;

procedure TFBorcList.FormShow(Sender: TObject);
begin
        DMSabit.CariTipIBQ.Open;
        DMSabit.ParaBirimiIBQ.Open;
end;

procedure TFBorcList.OnlineButton3Click(Sender: TObject);
var
        i: integer;
begin
        for i := 0 to OnlineDBCheckListBox2.Items.Count - 1 do
                if OnlineDBCheckListBox2.Checked[i] then
                        OnlineDBCheckListBox2.LocateDataSetID(i+1);
        DMRCari.AlacakAltTopProc.ParamByName('ISLEMTURU_IN').AsString := 'Borçlarýmýz';
        DMRCari.AlacakAltTopProc.ParamByName('PARABIRKOD_IN').AsInteger := DMSabit.ParaBirimiIBQPARABIRKOD.AsInteger;
        DMRCari.AlacakAltTopProc.ParamByName('TARIH_IN').AsString := DateToStr(BugununTarihi);
        DMRCari.AlacakAltTopProc.Prepare;
        DMRCari.AlacakAltTopProc.ExecProc;
        OnlineEdit1.Text := FormatFloat('###,###.0 '+DMSabit.ParaBirimiIBQKISAADI.AsString,DMRCari.AlacakAltTopProc.ParamByName('TOPLAM_OUT').AsFloat);

end;

end.
