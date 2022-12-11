unit Ayarlar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBOnlineEdit, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  OnlineDBCheckBox, BrowseDr, ComCtrls, Grids, DBGrids,IBQuery, OnlineDBGrid,
  OnlineButton, OnlineCheckBox,
  OnlineCustomControl;

type
  TFAyarlar = class(TForm)
    dfsBrowseDirectoryDlg1: TdfsBrowseDirectoryDlg;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    DBEdit1: TDBEdit;
    BitBtn5: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    GroupBox2: TGroupBox;
    OnlineDBCheckBox1: TOnlineDBCheckBox;
    Label1: TLabel;
    procedure BitBtn5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet4Show(Sender: TObject);
    procedure OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAyarlar: TFAyarlar;

implementation

{$R *.dfm}
Uses SabitDM, Main;

procedure TFAyarlar.BitBtn5Click(Sender: TObject);
begin
        if dfsBrowseDirectoryDlg1.Execute then
        begin
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQYEDEKYER.AsString := dfsBrowseDirectoryDlg1.Selection;
                DMSabit.FirmaIBQ.Post;
        end;
end;

procedure TFAyarlar.RadioButton1Click(Sender: TObject);
begin
        DBEdit1.Enabled := false;
        Label2.Enabled := false;
end;

procedure TFAyarlar.RadioButton2Click(Sender: TObject);
begin
        DBEdit1.Enabled := true;
        Label2.Enabled := true;
end;

procedure TFAyarlar.RadioButton3Click(Sender: TObject);
begin
        DBEdit1.Enabled := false;
        Label2.Enabled := false;
end;

procedure TFAyarlar.FormShow(Sender: TObject);
begin
        PageControl1.ActivePage := TabSheet2;
    //    SabitDM.BicimIBQuery.Open;
        if (DMSabit.FirmaIBQYEDEKZAMANI.AsInteger = 0) or (DMSabit.FirmaIBQYEDEKZAMANI.AsString = '') then
                RadioButton3.Checked := true
        else if DMSabit.FirmaIBQYEDEKZAMANI.AsInteger = 1 then
                RadioButton1.Checked := true;

        if DMSabit.FirmaIBQYEDEKZAMANI.AsInteger = 2 then
        begin
                RadioButton2.Checked := true;
                DBEdit1.Enabled := true;
                Label2.Enabled := true;
        end else begin
                DBEdit1.Enabled := false;
                Label2.Enabled := false;
        end;
end;

procedure TFAyarlar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//        if SabitDM.BicimIBQuery.Modified then SabitDM.BicimIBQuery.Post;
        if DMSabit.FirmaIBQ.Modified then DMSabit.FirmaIBQ.Post;
        if RadioButton1.Checked = true then
        begin
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQYEDEKZAMANI.AsInteger := 1;
                DMSabit.FirmaIBQ.Post;
                AnaSayfa.Timer1.Enabled := true;
        end else if RadioButton2.Checked = true then
        begin
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQYEDEKZAMANI.AsInteger := 2;
                DMSabit.FirmaIBQ.Post;
                AnaSayfa.Timer1.Enabled := true;
        end else if RadioButton3.Checked = true then
        begin
                DMSabit.FirmaIBQ.Edit;
                DMSabit.FirmaIBQYEDEKZAMANI.AsInteger := 0;
                DMSabit.FirmaIBQ.Post;
                AnaSayfa.Timer1.Enabled := false;
        end;
     //   AnaSayfa.DisplayFormatAyar;
end;

procedure TFAyarlar.TabSheet4Show(Sender: TObject);
begin
        close;
end;

procedure TFAyarlar.OnlineDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key = VK_INSERT then
                Key := 0;
        if (Shift = [ssCTRL]) and (Key = VK_DELETE) then
                Key := 0;
    {    if (SabitDM.BicimIBQuery.RecNo = SabitDM.BicimIBQuery.RecordCount) and (Key = VK_DOWN) then
                key := 0; }
end;

procedure TFAyarlar.GroupBox2Exit(Sender: TObject);
begin
        if DMSabit.FirmaIBQ.Modified Then DMSabit.FirmaIBQ.Post;
end;

end.
