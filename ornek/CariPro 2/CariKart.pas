unit CariKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, OnlineDBCheckBox, DBOnlineLookupCombo,
  ComCtrls, DBOnlineRichEdit, Grids, DBGrids,
  OnlineDBGrid, OnlineButton, OnlineSearchEdit, OnlineCheckBox,
  OnlineCustomControl;

type
  TFCariKart = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit8: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    OnlineDBCheckBox1: TOnlineDBCheckbox;
    OnlineDBCheckBox2: TOnlineDBCheckbox;
    DBOnlineLookupCombo3: TDBOnlineLookupCombo;
    DBOnlineLookupCombo4: TDBOnlineLookupCombo;
    DBOnlineEdit15: TDBOnlineEdit;
    DBOnlineEdit16: TDBOnlineEdit;
    GroupBox3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    DBOnlineRichEdit1: TDBOnlineRichEdit;
    Label24: TLabel;
    OnlineDBGrid1: TOnlineDBGrid;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    OnlineDBCheckbox3: TOnlineDBCheckbox;
    DBOnlineRichEdit2: TDBOnlineRichEdit;
    DBOnlineRichEdit3: TDBOnlineRichEdit;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    DBOnlineEdit18: TDBOnlineEdit;
    DBOnlineEdit20: TDBOnlineEdit;
    DBOnlineEdit31: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit19: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    DBOnlineEdit17: TDBOnlineEdit;
    Label4: TLabel;
    DBOnlineEdit21: TDBOnlineEdit;
    Label13: TLabel;
    Label20: TLabel;
    DBOnlineEdit22: TDBOnlineEdit;
    DBOnlineEdit23: TDBOnlineEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBOnlineCombo2: TDBOnlineCombo;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    OnlineSearchEdit1: TOnlineSearchEdit;
    Label22: TLabel;
    DBOnlineEdit24: TDBOnlineEdit;
    DBOnlineLookupCombo5: TDBOnlineLookupCombo;
    Label23: TLabel;
    DBOnlineEdit25: TDBOnlineEdit;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    DBOnlineEdit26: TDBOnlineEdit;
    Label31: TLabel;
    DBOnlineEdit27: TDBOnlineEdit;
    Panel6: TPanel;
    GroupBox5: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    OnlineButton7: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBOnlineEdit4Exit(Sender: TObject);
    procedure DBOnlineEdit8Exit(Sender: TObject);
    procedure OnlineDBCheckBox2Click(Sender: TObject);
    procedure OnlineDBCheckBox1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineDBGrid2DblClick(Sender: TObject);
    procedure OnlineDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBOnlineCombo1Exit(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure OnlineButton7Click(Sender: TObject);
  private
        git: pointer;
  public
    { Public declarations }
  end;

var
  FCariKart: TFCariKart;

implementation

uses DataDM, SabitDM, DB, CariDM;

{$R *.dfm}

procedure TFCariKart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFCariKart.BFirstPageClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.First;
end;

procedure TFCariKart.ButtonPreviousClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Prior;
end;

procedure TFCariKart.ButtonNextClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Next;
end;

procedure TFCariKart.BLastPageClick(Sender: TObject);
begin
        DMCari.CariKartIBQ.Last;
end;

procedure TFCariKart.BitBtn1Click(Sender: TObject);
begin
        PageControl1.ActivePage := TabSheet1;
        if DMCari.CariKartIBQ.Modified then
                DMCari.CariKartIBQ.Post;
        DMCari.BosIBQ.SQL.Text := 'DELETE FROM CARIKART WHERE (CARIUNVAN1 IS NULL)';
        DMCari.BosIBQ.ExecSQL;
        DMCari.CariKartIBQ.Close;
        DMCari.CariKartIBQ.Open;
        DMCari.CariKartIBQ.Append;
        DMCari.CariKartIBQ.Post;
        DBOnlineEdit7.SetFocus;
end;

procedure TFCariKart.BitBtn2Click(Sender: TObject);
begin
       if DMCari.CariislemIBQ.Active = false then
                DMCari.CariislemIBQ.Open;
        if DMCari.CariKartIBQ.RecordCount>0 Then
        if DMCari.CariislemIBQ.Locate('CARIKOD',DMCari.CariKartIBQCARIKOD.AsString,[]) = False Then
        Begin
                if Application.MessageBox('Bu Cari Kartý silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        try
                                DMCari.CariKartIBQ.Delete;
                        except;
                                MessageBox(handle,'Ýþlem görmüþ Cari silinemez!...','Uyarý',MB_OK);
                        end;
                end;
        end
        else Application.MessageBox('Ýþlem görmüþ Cari Kartý Silemezsiniz','          Uyarý Mesajý', mb_OK);
end;

procedure TFCariKart.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFCariKart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineCombo) or
            (ActiveControl is TOnlineDBCheckBox) or
         (ActiveControl is TDBOnlineCombo) or (ActiveControl is TDBOnlineLookupCombo)    then
    begin
      if (TOnlineEdit(ActiveControl) <> OnlineEdit1)  then
      begin
              Perform(WM_NEXTDLGCTL, 0, 0);
              Key := #0;
      end;
    end;
  end;
end;

procedure TFCariKart.GroupBox1Exit(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Modified=True Then
                DMCari.CariKartIBQ.Post;
end;

procedure TFCariKart.OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit1.Text) <> 0 then
                begin

                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(TAMADI) like '+#39+OnlineEdit1.UpperTurk+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                end else begin
                        DMCari.CariKartIBQ.Close;
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('where Upper(TAMADI) like '+#39+OnlineEdit1.UpperTurk+'%'+#39);
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                end;
                DMCari.CariKartIBQ.Open;
                if DMCari.CariKartIBQ.RecordCount=0 Then
                Begin
                      Application.MessageBox('Bu isimde bir Cari Kart yok!',
                        '    Uyarý Mesajý', mb_OK);
                        DMCari.CariKartIBQ.SQL.Clear;
                        DMCari.CariKartIBQ.SQL.Add('select * from  CARIKART');
                        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
                        DMCari.CariKartIBQ.Open;
                        OnlineEdit1.SetFocus;
                        OnlineEdit1.SelectAll;
                end;
        end;


end;

procedure TFCariKart.FormShow(Sender: TObject);
begin
        DMSabit.ilIBQ.Open;
        DMSabit.ilceIBQ.Open;
        DMSabit.SektorIBQ.Open;
        DMSabit.CariTipIBQ.Open;
        DMSabit.ParaBirimiIBQ.Open;
        DMCari.KefilIBQ.Open;
        DMCari.CariKartIBQ.Open;
        DMSabit.SektorIBQ.Open;
end;

procedure TFCariKart.DBOnlineEdit4Exit(Sender: TObject);
begin
        try
                if DMCari.CariKartIBQ.Modified then
                        DMCari.CariKartIBQ.Post;
        except;
                MessageBox(handle,'Bu numarada bir cari kart var.'+#13+'Lütfen baþka bir numara giriniz!..','Uyarý',MB_OK);
                DBOnlineEdit4.SetFocus;
        end;

end;

procedure TFCariKart.DBOnlineEdit8Exit(Sender: TObject);
begin
        if (DBOnlineEdit8.Modified = true) or (DBOnlineEdit7.Modified = true) then
        begin
                DBOnlineEdit8.Modified := false;
                DBOnlineEdit7.Modified := false;
                if DMCari.CariKartIBQ.Modified then
                        DMCari.CariKartIBQ.Post;
                if DMCari.CariKartIBQTAMADI.AsString <> '' then
                begin
                        DMCari.CiftDenetimIBQ.SQL.Text := 'Select Count(*) Miktar From CARIKART where TAMADI ='+#39+DMCari.CariKartIBQTAMADI.AsString+#39;
                        DMCari.CiftDenetimIBQ.Open;
                        if DMCari.CiftDenetimIBQ.FindField('Miktar').AsInteger > 1 then
                                if MessageBox(handle,'Bu isimde (Ünvanda) bir Cari Kart mevcut kullanmak ister misiniz?','Uyarý',MB_YESNO)= mrNo then
                                begin
                                        DMCari.CariKartIBQ.Edit;
                                        DMCari.CariKartIBQCARIUNVAN1.AsString := '';
                                        DMCari.CariKartIBQCARIUNVAN2.AsString := '';
                                        DBOnlineEdit7.SetFocus;
                                end;
                        DMCari.CiftDenetimIBQ.Close;
                end;

        end;
end;

procedure TFCariKart.OnlineDBCheckBox2Click(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Modified = true then
                DMCari.CariKartIBQ.Post;
        DMCari.AktifCariIBQ.Close;
        DMCari.AktifCariIBQ.Open;
end;

procedure TFCariKart.OnlineDBCheckBox1Click(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Modified = true then
                DMCari.CariKartIBQ.Post;
        DMCari.AktifCariIBQ.Close;
        DMCari.AktifCariIBQ.Open;
end;

procedure TFCariKart.FormDestroy(Sender: TObject);
begin
        if DMCari.CariKartIBQ.Modified then
                DMCari.CariKartIBQ.Post;
        DMCari.CariKartIBQ.SQL.Text := 'select * from CARIKART';
        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
        DMCari.AktifCariIBQ.Close;
        DMCari.AktifCariIBQ.Open;
        DMCari.CariKartLookupIBQ.Close;
        DMCari.CariKartLookupIBQ.Open;
end;

procedure TFCariKart.BitBtn4Click(Sender: TObject);
begin
        DMCari.KefilIBQ.Append;
        DBOnlineEdit18.SetFocus;
end;

procedure TFCariKart.BitBtn5Click(Sender: TObject);
begin
        if DMCari.KefilIBQ.RecordCount > 0 then
        if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                DMCari.KefilIBQ.Delete;
end;

procedure TFCariKart.OnlineDBGrid2DblClick(Sender: TObject);
begin
     {   if Application.FindComponent('FCariHesap') = nil then
                Application.CreateForm(TFCariHesap,FCariHesap);
        FCariHesap.Show;
        DMCari.CariKartLookupIBQ.Locate('CARIKOD',DMCari.CariKartIBQCARIKOD.AsInteger,[]); }
end;

procedure TFCariKart.OnlineDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
                OnlineDBGrid2DblClick(sender);
end;

procedure TFCariKart.OnlineDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Key =VK_DELETE) and (Shift = [ssCTRL]) then
                Key := 0;
end;

procedure TFCariKart.DBOnlineCombo1Exit(Sender: TObject);
begin
        try
                if DMCari.CariKartIBQ.Modified then
                        DMCari.CariKartIBQ.Post;
        except;
                MessageBox(handle,'Ýþlem görmüþ carinin para birimi deðiþtirilemez','Uyarý',MB_OK);
        end;
end;

procedure TFCariKart.FormDeactivate(Sender: TObject);
begin
        git := DMCari.CariKartIBQ.GetBookmark;
        DMCari.CariKartIBQ.SQL.Text := 'select * from CARIKART';
        DMCari.CariKartIBQ.SQL.Add('Order By TAMADI');
        DMCari.CariKartIBQ.Open;
end;

procedure TFCariKart.FormActivate(Sender: TObject);
begin
        DMCari.CariKartIBQ.GotoBookmark(git);
end;

procedure TFCariKart.GroupBox3Exit(Sender: TObject);
begin
        if DMCari.KefilIBQ.Modified Then DMCari.KefilIBQ.Post;
end;

procedure TFCariKart.OnlineButton7Click(Sender: TObject);
var
        List: TStringList;
        i: integer;
begin
        List:= TStringList.Create;
        for i := 3 to DMCari.CariKartIBQ.FieldCount - 1 do
                List.Add(DMCari.CariKartIBQ.Fields[i].AsString);
        DMCari.CariKartIBQ.Append;
        for i := 3 to DMCari.CariKartIBQ.FieldCount - 1 do
            DMCari.CariKartIBQ.Fields[i].AsString :=List[i-3];
        DMCari.CariKartIBQ.Post;

end;

end.
