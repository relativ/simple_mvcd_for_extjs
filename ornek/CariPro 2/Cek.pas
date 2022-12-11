unit Cek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, DB,Menus,
  IBCustomDataSet, IBStoredProc, OnlineButton, scExcelExport,
  OnlineCustomControl, CheckLst;

type
  TFCek = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Panel7: TPanel;
    Panel8: TPanel;
    OnlineDBGrid1: TOnlineDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    PopupMenu1: TPopupMenu;
    BitBtn6: TOnlineButton;
    BitBtn7: TOnlineButton;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    Mteriekleri1: TMenuItem;
    Firmaekleri1: TMenuItem;
    denenekler1: TMenuItem;
    ahsilEdilenekler1: TMenuItem;
    CiroEdilenekler1: TMenuItem;
    akasaVerilenekler1: TMenuItem;
    N3: TMenuItem;
    mKaytlar1: TMenuItem;
    Szme1: TMenuItem;
    N4: TMenuItem;
    scExcelExport1: TscExcelExport;
    ExceleAt1: TMenuItem;
    OnlineButton1: TOnlineButton;
    BitBtn3: TOnlineButton;
    CheckListBox1: TCheckListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineDBGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Panel4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Mteriekleri1Click(Sender: TObject);
    procedure Firmaekleri1Click(Sender: TObject);
    procedure denenekler1Click(Sender: TObject);
    procedure ahsilEdilenekler1Click(Sender: TObject);
    procedure CiroEdilenekler1Click(Sender: TObject);
    procedure akasaVerilenekler1Click(Sender: TObject);
    procedure mKaytlar1Click(Sender: TObject);
    procedure ExceleAt1Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
     CekCiro: Boolean;
  end;

var
  FCek: TFCek;


implementation

uses CekDM;

{$R *.dfm}

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat(DMCek.CekListIBQTAHSILAT.DisplayFormat, x);
end;


procedure TFCek.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        Action := caFree;
end;

procedure TFCek.BFirstPageClick(Sender: TObject);
begin
        DMCek.CekListIBQ.First;
end;

procedure TFCek.ButtonPreviousClick(Sender: TObject);
begin
        DMCek.CekListIBQ.Prior;
end;

procedure TFCek.ButtonNextClick(Sender: TObject);
begin
        DMCek.CekListIBQ.Next;
end;

procedure TFCek.BLastPageClick(Sender: TObject);
begin
        DMCek.CekListIBQ.Last;
end;

procedure TFCek.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFCek.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13) then
  begin
    if  (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo)  then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFCek.GroupBox1Exit(Sender: TObject);
begin
        if (DMCek.CekListIBQ.Modified=True) and (DMCek.CekListIBQ.RecordCount>0) Then
        Begin
                if (DMCek.CekListIBQTAHSILAT.AsString='') or (DMCek.CekListIBQTEDIYE.AsString='')  Then
                        DMCek.CekListIBQ.Delete;
                DMCek.CekListIBQ.Post;
        end;

end;

procedure TFCek.FormShow(Sender: TObject);
begin
        DMCek.CekListIBQ.Close;
        DMCek.CekListIBQ.open;

end;

procedure TFCek.OnlineDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if (Key=#13) and (DMCek.CekListIBQ.Modified=True) Then DMCek.CekListIBQ.Post;
end;

procedure TFCek.OnlineDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if (DMCek.CekListIBQKAPATMA.AsString='A') and
                ((DMCek.CekListIBQTAHSILAT.AsFloat>0) or
                        (DMCek.CekListIBQTEDIYE.AsFloat>0))  Then
       Begin
                OnlineDBGrid1.Canvas.Brush.Color := $00FFFFA8;
                OnlineDBGrid1.Canvas.Font.Color := clBlack;
                OnlineDBGrid1.Canvas.FillRect(Rect);

                if Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint] then
                begin
                        if Column.Field.DataType in [ftFloat] Then
                                OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(VirgulGoster(Column.Field.AsFloat))+4),
                                        rect.Top+2,VirgulGoster(Column.Field.AsFloat))
                        else OnlineDBGrid1.Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+2),
                                        rect.Top+2,Column.Field.AsString);
                end
                else
                Begin
                        if Column.Field.DataType in [ftMemo] then
                                OnlineDBGrid1.Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                        else OnlineDBGrid1.Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.AsString);
                end;
        end;

end;

procedure TFCek.Panel4Click(Sender: TObject);
begin
                FCek.OnlineDBGrid1.Columns[8].ButtonStyle := cbsEllipsis;
end;

procedure TFCek.BitBtn7Click(Sender: TObject);
begin
   {     FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CekHareket.or');
        FEvrak.Report.PreviewModal;  }
end;

procedure TFCek.BitBtn6Click(Sender: TObject);
begin
    {    FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CekHareket.or');
        FEvrak.Report.Print; }
end;

procedure TFCek.OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = VK_DELETE) then
                Key := 0;
        if Key = VK_F5 then
        begin
                DMCek.CekListIBQ.Close;
                DMCek.CekListIBQ.Open;
        end;

end;

procedure TFCek.FormDestroy(Sender: TObject);
begin
        if DMCek.CekListIBQ.Modified then
                DMCek.CekListIBQ.Post;
end;

procedure TFCek.FormActivate(Sender: TObject);
begin
        DMCek.CekListIBQ.Close;
        DMCek.CekListIBQ.Open;
end;

procedure TFCek.Mteriekleri1Click(Sender: TObject);
begin
        if Mteriekleri1.Checked = false then
        begin
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
                Mteriekleri1.Checked := true;
                Firmaekleri1.Checked := false;
                denenekler1.Checked := false;
                ahsilEdilenekler1.Checked := false;
                CiroEdilenekler1.Checked := false;
                akasaVerilenekler1.Checked := false;
        end else begin
                Mteriekleri1.Checked := false;
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
        end;
end;

procedure TFCek.Firmaekleri1Click(Sender: TObject);
begin
        if Firmaekleri1.Checked = false then
        begin
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Yazma'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
                Mteriekleri1.Checked := false;
                Firmaekleri1.Checked := true;
                denenekler1.Checked := false;
                ahsilEdilenekler1.Checked := false;
                CiroEdilenekler1.Checked := false;
                akasaVerilenekler1.Checked := false;
        end else begin
                Firmaekleri1.Checked := false;
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
        end;
end;

procedure TFCek.denenekler1Click(Sender: TObject);
var
        i: integer;
begin
        for i := DMCek.CekListIBQ.SQL.Count - 1 downto 0 do
        begin
                if Pos('ORDER',DMCek.CekListIBQ.SQL[i]) <> 0 then
                        DMCek.CekListIBQ.SQL.Delete(i);
                if Pos('KAPATMA',DMCek.CekListIBQ.SQL[i]) <> 0 then
                        DMCek.CekListIBQ.SQL.Delete(i);
        end;
        if denenekler1.Checked = false then
        begin
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('WHERE (ISLEMTUR='+#39+'Çek Giriþi'+#39+') AND (KAPATMA ='+#39+'K'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
                Mteriekleri1.Checked := false;
                Firmaekleri1.Checked := false;
                denenekler1.Checked := true;
                ahsilEdilenekler1.Checked := false;
                CiroEdilenekler1.Checked := false;
                akasaVerilenekler1.Checked := false;
        end else begin
                denenekler1.Checked := false;
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
        end;
end;

procedure TFCek.ahsilEdilenekler1Click(Sender: TObject);
var
        i: integer;
begin
        for i := DMCek.CekListIBQ.SQL.Count - 1 downto 0 do
        begin
                if Pos('ORDER',DMCek.CekListIBQ.SQL[i]) <> 0 then
                        DMCek.CekListIBQ.SQL.Delete(i);
                if Pos('KAPATMA',DMCek.CekListIBQ.SQL[i]) <> 0 then
                        DMCek.CekListIBQ.SQL.Delete(i);
        end;
        if ahsilEdilenekler1.Checked = false then
        begin
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('WHERE (ISLEMTUR='+#39+'Çek Yazma'+#39+') AND (KAPATMA ='+#39+'K'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
                Mteriekleri1.Checked := false;
                Firmaekleri1.Checked := false;
                denenekler1.Checked := false;
                ahsilEdilenekler1.Checked := true;
                CiroEdilenekler1.Checked := false;
                akasaVerilenekler1.Checked := false;
        end else begin
                ahsilEdilenekler1.Checked := false;
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
        end;
end;

procedure TFCek.CiroEdilenekler1Click(Sender: TObject);
begin
        if CiroEdilenekler1.Checked = false then
        begin
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Çýkýþý'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
                Mteriekleri1.Checked := false;
                Firmaekleri1.Checked := false;
                denenekler1.Checked := false;
                ahsilEdilenekler1.Checked := false;
                CiroEdilenekler1.Checked := true;
                akasaVerilenekler1.Checked := false;
        end else begin
                CiroEdilenekler1.Checked := false;
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
        end;
end;

procedure TFCek.akasaVerilenekler1Click(Sender: TObject);
begin
        if akasaVerilenekler1.Checked = false then
        begin
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
                Mteriekleri1.Checked := false;
                Firmaekleri1.Checked := false;
                denenekler1.Checked := false;
                ahsilEdilenekler1.Checked := false;
                CiroEdilenekler1.Checked := false;
                akasaVerilenekler1.Checked := true;
        end else begin
                akasaVerilenekler1.Checked := false;
                DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
                DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
                DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
                DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
                DMCek.CekListIBQ.Open;
        end;
end;

procedure TFCek.mKaytlar1Click(Sender: TObject);
begin
        DMCek.CekListIBQ.SQL.Text := 'select * from CEKBODRO';
        DMCek.CekListIBQ.SQL.Add('Where (ISLEMTUR='+#39+'Çek Giriþi'+#39+') or ( ISLEMTUR='+#39+'Çek Çýkýþý'+#39+') or');
        DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Elden Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Elden Çek Tahsilatý'+#39+') or');
        DMCek.CekListIBQ.SQL.Add('(ISLEMTUR='+#39+'Bankadan Çek Ödeme'+#39+') or ( ISLEMTUR='+#39+'Bankadan Çek Tahsilatý'+#39+')or ( ISLEMTUR='+#39+'Çek Yazma'+#39+') or ( ISLEMTUR='+#39+'Çek Cirosu'+#39+') or ( ISLEMTUR='+#39+'Pörtföyde'+#39+') or ( ISLEMTUR='#39+'Çek Takas'+#39+')');
        DMCek.CekListIBQ.SQL.Add('Order by CEKBODROKOD');
        DMCek.CekListIBQ.Open;
        Mteriekleri1.Checked := false;
        Firmaekleri1.Checked := false;
        denenekler1.Checked := false;
        ahsilEdilenekler1.Checked := false;
        CiroEdilenekler1.Checked := false;
        akasaVerilenekler1.Checked := false;
end;

procedure TFCek.ExceleAt1Click(Sender: TObject);
begin
        scExcelExport1.ExportDataset(true);
end;

procedure TFCek.OnlineButton1Click(Sender: TObject);
var
        yer : pointer;
begin
        yer := DMCek.CekListIBQ.GetBookmark;
        DMCek.CekListIBQ.Close;
        DMCek.CekListIBQ.Open;
        DMCek.CekListIBQ.GotoBookmark(yer);
end;

end.
