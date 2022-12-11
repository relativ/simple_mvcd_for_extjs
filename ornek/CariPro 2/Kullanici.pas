unit Kullanici;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, ExtDlgs, Grids, DBGrids, OnlineDBGrid, jpeg,
  DBOnlineLookupCombo,DB, OnlineButton, ComCtrls, Menus,
  ShellCtrls,Printers,inifiles, OnlineCustomControl;

type
  TFKullanici = class(TForm)
    Notebook1: TNotebook;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn3: TOnlineButton;
    Panel5: TPanel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    OnlineEdit3: TOnlineEdit;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn4: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit7: TDBOnlineEdit;
    OnlineEdit1: TOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineDBGrid1: TOnlineDBGrid;
    GroupBox3: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    PopupMenu1: TPopupMenu;
    FormlarEkle1: TMenuItem;
    PopupMenu2: TPopupMenu;
    A1: TMenuItem;
    B1: TMenuItem;
    C1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormlarEkle1Click(Sender: TObject);
    procedure Sec(S : TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
    yer: pointer;
  public
    { Public declarations }
    procedure SetDefaultPrinter(const device: string);
  end;

var
  FKullanici: TFKullanici;

implementation

uses  SabitDM;

{$R *.dfm}

procedure TFKullanici.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSabit.KullaniciIBQ.Modified=True Then
        if DBOnlineEdit7.Text <> OnlineEdit1.Text then
        begin
                ShowMessage('Yanlýþ yazdýnýz. Lütfen Þifrenizi Kontrol Ediniz.');
                OnlineEdit1.Clear;
                DBOnlineEdit7.Clear;
                DBOnlineEdit7.SetFocus;
                Abort;
        end;
        DMSabit.KullaniciIBQ.GotoBookmark(yer);
        Action := caFree;
end;

procedure TFKullanici.BitBtn1Click(Sender: TObject);
begin
        if (DMSabit.KullaniciIBQ.Modified=True) and (DMSabit.KullaniciIBQ.RecordCount>0) Then
        Begin
                if DMSabit.KullaniciIBQKULLANICI.AsString='' Then
                        DMSabit.KullaniciIBQ.Delete;
                DMSabit.KullaniciIBQ.Post;
        end;
        DMSabit.KullaniciIBQ.Append;
        OnlineEdit1.Clear;
        DBOnlineEdit1.SetFocus;
end;

procedure TFKullanici.BitBtn2Click(Sender: TObject);
begin
        if DMSabit.KullaniciIBQ.RecordCount>1 Then
        if Application.MessageBox('Bu kullanýcýyý silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                DMSabit.KullaniciIBQ.Delete;
end;
                         
procedure TFKullanici.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFKullanici.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit) or
         (ActiveControl is TDBOnlineCombo) or (ActiveControl is TDBOnlineLookupCombo)  then
    begin
      Key:=#0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFKullanici.GroupBox1Exit(Sender: TObject);
begin
        if (DMSabit.KullaniciIBQ.Modified=True) and (DMSabit.KullaniciIBQ.RecordCount>0) Then
                if DMSabit.KullaniciIBQKULLANICI.AsString='' Then
                        DMSabit.KullaniciIBQ.Delete;

        if (DMSabit.KullaniciIBQ.Modified=True) Then
                DMSabit.KullaniciIBQ.Post;
end;

procedure TFKullanici.OnlineEdit1Exit(Sender: TObject);
begin
        if DBOnlineEdit7.Text <> OnlineEdit1.Text then
        begin
                ShowMessage('Yanlýþ yazdýnýz. Lütfen Þifrenizi Kontorl Ediniz.');
                OnlineEdit1.Clear;
                DBOnlineEdit7.Clear;
                DBOnlineEdit7.SetFocus;
        end;
end;

procedure TFKullanici.FormShow(Sender: TObject);
begin
        DMSabit.KullaniciIBQ.Open;
        OnlineEdit1.Text := DMSabit.KullaniciIBQSIFRE.AsString;
        OnlineEdit2.Text := DMSabit.KullaniciIBQKULLANICI.AsString;
        yer := DMSabit.KullaniciIBQ.GetBookmark;
end;

procedure TFKullanici.OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = VK_DELETE) then
                Key := 0;
end;

procedure TFKullanici.BitBtn4Click(Sender: TObject);
begin
        if DMSabit.KullaniciIBQ.Locate('KULLANICI',OnlineEdit2.Text,[loCaseInsensitive]) then
        begin
                if DMSabit.KullaniciIBQSIFRE.AsString = OnlineEdit3.Text then
                        notebook1.ActivePage := 'kullanici'
                else begin
                        MessageBox(handle,'Yanlýþ þifre girdiniz tekrar deneyin..','Uyarý',MB_OK);
                        OnlineEdit3.SetFocus;
                end;
        end else MessageBox(handle,'Böyle bir kullanýcý yok..','Uyarý',MB_OK);
end;

procedure TFKullanici.FormlarEkle1Click(Sender: TObject);
begin
{        if SabitDM.KullanFormIBQuery.RecordCount >0 Then
                MessageBox(handle,'Bu bilgiler eklenmiþ.','Uyarý',mb_OK)
        else
        Begin
                SabitDM.KullanFormIBQuery.Append;
                SabitDM.KullanFormIBQueryFORMADI.AsString := 'Alýþ Faturasý';
                SabitDM.KullanFormIBQueryYAZICI.AsString := 'Yazýcý';
                SabitDM.KullanFormIBQuery.Append;
                SabitDM.KullanFormIBQueryFORMADI.AsString := 'Satýþ Faturasý';
                SabitDM.KullanFormIBQueryYAZICI.AsString := 'Yazýcý';
                SabitDM.KullanFormIBQuery.Append;
                SabitDM.KullanFormIBQueryFORMADI.AsString := 'Tahsilat Makbuzu';
                SabitDM.KullanFormIBQueryYAZICI.AsString := 'Yazýcý';
                SabitDM.KullanFormIBQuery.Append;
                SabitDM.KullanFormIBQueryFORMADI.AsString := 'Tediye Makbuzu';
                SabitDM.KullanFormIBQueryYAZICI.AsString := 'Yazýcý';
                SabitDM.KullanFormIBQuery.Post;
        end; }
end;
procedure TFKullanici.Sec(S : TObject);
begin
      {  SabitDM.KullanFormIBQuery.Edit;
        SabitDM.KullanFormIBQueryYAZICI.AsString := Copy((S as tmenuitem).Caption,2,length((S as tmenuitem).Caption)-1) ;
        SabitDM.KullanFormIBQuery.post;  }
end;


// printer seçimi kullanýmý
{       FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\CariHesap.or');
    **  FKullanici.SetDefaultPrinter('MUHAMMED üzerinde otomatik HP LaserJet 1100 (MS)');
        FEvrak.Report.Print;
 }

procedure TFKullanici.SetDefaultPrinter(const device: string);
var     IniFile: TIniFile;
begin
        IniFile := TIniFile.Create('WIN.INI');
        try
            IniFile.WriteString('windows', 'device', device);
        except
            IniFile.Free;
        raise;
        end;
        IniFile.Free;
        SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, LPARAM(pchar('windows')));
end;

procedure TFKullanici.TabSheet1Show(Sender: TObject);
var     i:TMenuItem;
        s:byte;
begin
        PopupMenu2.Items.Clear;
        for s:=0 to Printer.Printers.Count-1 do
          begin
                i:=TMenuItem.Create(self);
                i.OnClick:=sec;
                i.Caption:=Printer.Printers.Strings[s];
                PopupMenu2.Items.Add(i);
          end;
end;

end.
