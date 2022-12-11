unit Yedekleme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, IBServices, IdBaseComponent, IdComponent, IdIPWatch,
  StdCtrls, Buttons, ExtCtrls,IniFiles, Mask, DBCtrls, OnlineEdit,
  DBOnlineEdit, BrowseDr, ShellCtrls, OnlineButton,
  OnlineCustomControl;

type
  TFYedekleme = class(TForm)
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    ShellTreeView1: TShellTreeView;
    Memo1: TMemo;
    OnlineEdit1: TOnlineEdit;
    BitBtn1: TOnlineButton;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    BitBtn3: TOnlineButton;
    Memo2: TMemo;
    BitBtn2: TOnlineButton;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    OnlineEdit2: TOnlineEdit;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    IBBackupService1: TIBBackupService;
    IBRestoreService1: TIBRestoreService;
  public
    { Public declarations }
  end;

var
  FYedekleme: TFYedekleme;

implementation

uses DataDM, IBDatabase, Main, SabitDM, CariDM, StokDM;

{$R *.dfm}

Function YedeklemeTarihi(FileName : String): TDateTime;
var
  SearchRec : TSearchRec;
  DT        : TFileTime;
  ST        : TSystemTime;
begin
  Result := 0;
  If Not FileExists(FileName) Then Exit;
  Try
    SysUtils.FindFirst(FileName, faAnyFile, SearchRec);
    Try
      FileTimeToLocalFileTime(SearchRec.FindData.ftCreationTime,DT);
      FileTimeToSystemTime(DT, ST);
      Result := SystemTimeToDateTime(ST);
    Finally
      SysUtils.FindClose(SearchRec);
    End;
  Except
    Result := 0;
  End;
end;

procedure TFYedekleme.BitBtn1Click(Sender: TObject);
var
        s: string;
        IniFile: TIniFile;
        yer: string;
begin
IBBackupService1:= TIBBackupService.Create(nil);
ForceDirectories(OnlineEdit2.Text);
IniFile:= TIniFile.Create(ExtractFileDir(Application.ExeName)+'\DataBase.ini');
        if IniFile.ReadString(AnaSayfa.Sirket,'Adres','') <> '' then
                yer := IniFile.ReadString(AnaSayfa.Sirket,'Adres','');
s := OnlineEdit2.Text;
if s[length(s)] <>'\' then
s := s + '\';
if FileExists(s+OnlineEdit1.Text+'.gbk') then
begin
if MessageBox(handle,'Ayný isimde bir dosya var üzerine yazmak ister misiniz?','Uyarý',MB_YESNO)=mrYes then
begin
Memo1.Lines.Add('YEDEKLEME BAÞLADI !..');
 with IBBackupService1 do
  begin
    LoginPrompt := False;
    Params.Add('user_name='+IniFile.ReadString(AnaSayfa.Sirket,'User',''));
    Params.Add('password='+IniFile.ReadString(AnaSayfa.Sirket,'Sifre',''));
    Attach;
    try
      Verbose := True;
      DatabaseName := yer;
      if (OnlineEdit2.Text<> 'C:\') and (OnlineEdit2.Text <> 'c:\') and (OnlineEdit2.Text<> 'A:\') and (OnlineEdit2.Text <> 'a:\')
        and (OnlineEdit2.Text<> 'B:\') and (OnlineEdit2.Text <> 'b:\') and (OnlineEdit2.Text<> 'D:\') and (OnlineEdit2.Text <> 'd:\')
        and (OnlineEdit2.Text<> 'E:\') and (OnlineEdit2.Text <> 'e:\') and (OnlineEdit2.Text<> 'F:\') and (OnlineEdit2.Text <> 'f:\') then
        BackupFile.Add(OnlineEdit2.Text+'\'+OnlineEdit1.Text+'.gbk')
      else BackupFile.Add(OnlineEdit2.Text+OnlineEdit1.Text+'.gbk');

      ServiceStart;
      Memo1.Lines.Clear;
      Memo1.Lines.Add('YEDEKLEME BAÞLADI !..');
      While not Eof do
        Memo1.Lines.Add(GetNextLine);  
    finally
      if Active then
        Detach;
      Memo1.Lines.Add(s+OnlineEdit1.Text+'.gbk');
      Memo1.Lines.Add('YEDEKLEME BAÞARI ÝLE TAMAMLANDI !..');
    end;
  end;
 end;
 end else begin
Memo1.Lines.Add('YEDEKLEME BAÞLADI !..');
 with IBBackupService1 do
  begin
    LoginPrompt := False;
    Params.Add('user_name='+IniFile.ReadString(AnaSayfa.Sirket,'User',''));
    Params.Add('password='+IniFile.ReadString(AnaSayfa.Sirket,'Sifre',''));
    Attach;
    try
      Verbose := True;
      DatabaseName := yer;
      if (OnlineEdit2.Text<> 'C:\') and (OnlineEdit2.Text <> 'c:\') and (OnlineEdit2.Text<> 'A:\') and (OnlineEdit2.Text <> 'a:\')
        and (OnlineEdit2.Text<> 'B:\') and (OnlineEdit2.Text <> 'b:\') and (OnlineEdit2.Text<> 'D:\') and (OnlineEdit2.Text <> 'd:\')
        and (OnlineEdit2.Text<> 'E:\') and (OnlineEdit2.Text <> 'e:\') and (OnlineEdit2.Text<> 'F:\') and (OnlineEdit2.Text <> 'f:\') then
        BackupFile.Add(OnlineEdit2.Text+'\'+OnlineEdit1.Text+'.gbk')
      else BackupFile.Add(OnlineEdit2.Text+OnlineEdit1.Text+'.gbk');

      ServiceStart;
      Memo1.Lines.Clear;
      Memo1.Lines.Add('YEDEKLEME BAÞLADI !..');
      While not Eof do
        Memo1.Lines.Add(GetNextLine);  
    finally
      Active := False;
      Memo1.Lines.Add(s+OnlineEdit1.Text+'.gbk');
      Memo1.Lines.Add('YEDEKLEME BAÞARI ÝLE TAMAMLANDI !..');
    end;
  end;
 end;
 IBBackupService1.Free;
end;

procedure TFYedekleme.BitBtn3Click(Sender: TObject);
var
        IniFile: TIniFile;
        yer: string;
begin
IBRestoreService1:= TIBRestoreService.Create(nil);
if MessageBox(handle,'Geri yüklemek istediðinizden emin misiniz?','Uyarý',MB_YESNO) = mrYes then
begin
Memo2.Lines.Add('GERÝ YÜKLEME BAÞLADI !..');
DMData.IBDBCariPro.Close;
DMData.IBTCariPro.Active := false;
IniFile:= TIniFile.Create(ExtractFileDir(Application.ExeName)+'\DataBase.ini');
 with IBRestoreService1 do
  begin
    LoginPrompt := False;
    Options := [Replace,CreateNewDB];
    Params.Add('user_name='+IniFile.ReadString(AnaSayfa.Sirket,'User',''));
    Params.Add('password='+IniFile.ReadString(AnaSayfa.Sirket,'Sifre',''));
    Attach;
    try
      Verbose := True;
      PageSize := 16384;
      BackupFile.Add(LabeledEdit1.Text);
      if IniFile.ReadString(AnaSayfa.Sirket,'Adres','') <> '' then
        yer := IniFile.ReadString(AnaSayfa.Sirket,'Adres','');

      DatabaseName.Add(yer);
      ServiceStart;
      Memo2.Lines.Clear;
      Memo2.Lines.Add('GERÝ YÜKLEME BAÞLADI !..');
      While not Eof do
        Memo2.Lines.Add(GetNextLine);
    finally
        if Active then
                Detach;
        Memo2.Lines.Add('GERÝ YÜKLEME BAÞARI ÝLE TAMAMLANDI !..');
        DMData.IBDBCariPro.Open;
        DMData.IBTCariPro.StartTransaction;
        DMSabit.FirmaIBQ.Open;
        DMSabit.GelirGiderIBQ.Open;
        DMCari.CariKartIBQ.Open;
        DMStok.StokKartiIBQ.Open;
        DMCari.CariislemIBQ.Open;
        DMStok.FiyatListesiIBQ.Open;
        DMSabit.KullaniciIBQ.Open;
        DMSabit.ilceIBQ.Open;
        DMSabit.ilIBQ.Open;
     
    end;
  end;
 end;
 IBRestoreService1.Free;
end;

procedure TFYedekleme.BitBtn2Click(Sender: TObject);
begin
        if OpenDialog1.Execute then
        begin
                LabeledEdit1.Text := OpenDialog1.FileName;
                Label4.Caption := 'Bu data '+DateToStr(YedeklemeTarihi(OpenDialog1.FileName))+' tarihinde yedeklenmiþtir.';
        end;
end;

procedure TFYedekleme.FormShow(Sender: TObject);
begin
        Memo1.Lines.Clear;
        Memo2.Lines.Clear;
        LabeledEdit1.Text := '';

end;

procedure TFYedekleme.TabSheet1Show(Sender: TObject);
begin
        OnlineEdit1.Text := 'CariProData'+DateToStr(now);
        OnlineEdit2.Text := DMSabit.FirmaIBQYEDEKYER.AsString;
        if OnlineEdit2.Text = '' then
                OnlineEdit2.Text := ShellTreeView1.Path;
end;

procedure TFYedekleme.TabSheet4Show(Sender: TObject);
begin
        close;
end;

procedure TFYedekleme.ShellTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
        OnlineEdit2.Text := ShellTreeView1.Path;
end;

end.
