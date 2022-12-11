
unit Senetler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, ComCtrls,
  OnlineCombo, OnlineButton,DB, Menus, scExcelExport,
  OnlineCustomControl;

type
  TFSenetler = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn3: TOnlineButton;
    OnlineButton1: TOnlineButton;
    Panel6: TPanel;
    scExcelExport1: TscExcelExport;
    PopupMenu1: TPopupMenu;
    ExceleAt1: TMenuItem;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    OnlineButton2: TOnlineButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineDBGrid2DblClick(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OnlineButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
  private

  public
    IslemOnay: boolean;
    DataSet: TDataSet;
  end;

var
  FSenetler: TFSenetler;

implementation

uses SenetDM;

{$R *.dfm}

procedure TFSenetler.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFSenetler.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFSenetler.BitBtn4Click(Sender: TObject);
begin
    {    FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\MusteriCekleri.or');
        FEvrak.Report.PreviewModal;    }
end;

procedure TFSenetler.BitBtn5Click(Sender: TObject);
begin
     {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\MusteriCekleri.or');
        FEvrak.Report.Print;  }
end;

procedure TFSenetler.OnlineDBGrid2DblClick(Sender: TObject);
begin
        OnlineButton1Click(Sender);
end;

procedure TFSenetler.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFSenetler.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = Ord('P')) then
                BitBtn5Click(Sender)
        else if (Shift = [ssCTRL]) and (Key = Ord('O')) then
                BitBtn4Click(Sender);
end;

procedure TFSenetler.OnlineButton1Click(Sender: TObject);
var
        yer: pointer;
begin
        yer := DMSenet.SenetlerIBQ.GetBookmark;
        if DMSenet.SenetlerIBQISLEMTUR.AsString <> '' then 
        begin
                DataSet.Append;
                DataSet.FindField('BAGLANTINO').AsInteger := DMSenet.SenetlerIBQSENETBODROKOD.AsInteger;
                DataSet.Post;
                IslemOnay := true;
        end else IslemOnay := false;
        DMSenet.SenetlerIBQ.DisableControls;
        DMSenet.SenetlerIBQ.Close;
        DMSenet.SenetlerIBQ.Open;
        DMSenet.SenetlerIBQ.EnableControls;
        DMSenet.SenetlerIBQ.GotoBookmark(yer);
end;

procedure TFSenetler.FormShow(Sender: TObject);
begin
        DMSenet.SenetlerIBQ.Close;
        DMSenet.SenetlerIBQ.Open;
end;

procedure TFSenetler.OnlineButton2Click(Sender: TObject);
var
        i: integer;
begin
        for i := DMSenet.SenetlerIBQ.SQL.Count - 1 downto 0 do
        begin
                if (Pos(' and VADE >=',DMSenet.SenetlerIBQ.SQL[i]) <> 0) or (Pos('ORDER',UpperCase(DMSenet.SenetlerIBQ.SQL[i])) <> 0) then
                        DMSenet.SenetlerIBQ.SQL.Delete(i);
        end;

        DMSenet.SenetlerIBQ.SQL.Add(' and VADE >='+#39+DateToStr(DateTimePicker1.Date)+#39+' and VADE <='+#39+DateToStr(DateTimePicker2.Date)+#39);
        DMSenet.SenetlerIBQ.SQL.Add('ORDER BY ISLEMKOD');
        DMSenet.SenetlerIBQ.Open;
end;

end.
