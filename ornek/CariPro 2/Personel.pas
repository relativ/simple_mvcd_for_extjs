unit Personel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBOnlineCombo, OnlineCheckBox, OnlineDBCheckbox,
  DBCtrls, DBOnlineLookupCombo, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid,
  OnlineSearchEdit, Mask, OnlineEdit, OnlineCustomControl, OnlineButton,
  ExtCtrls, ExtDlgs;

type
  TFPersonel = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    OnlineSearchEdit1: TOnlineSearchEdit;
    GroupBox5: TGroupBox;
    OnlineDBGrid2: TOnlineDBGrid;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit10: TDBOnlineEdit;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    DBOnlineEdit13: TDBOnlineEdit;
    DBOnlineEdit14: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    OnlineDBCheckBox1: TOnlineDBCheckbox;
    DBOnlineEdit15: TDBOnlineEdit;
    DBOnlineEdit16: TDBOnlineEdit;
    DBOnlineEdit21: TDBOnlineEdit;
    DBOnlineEdit22: TDBOnlineEdit;
    DBOnlineEdit24: TDBOnlineEdit;
    DBImage1: TDBImage;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    DBOnlineEdit4: TDBOnlineEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPersonel: TFPersonel;

implementation

{$R *.dfm}
uses SabitDM;
procedure TFPersonel.BitBtn1Click(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Append;
        DMSabit.PersonelIBQ.Post;
        DBOnlineEdit7.SetFocus;
end;

procedure TFPersonel.FormShow(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Close;
        DMSabit.PersonelIBQ.Open;
        DMSabit.PersonelResimIBQ.Close;
        DMSabit.PersonelResimIBQ.Open;
end;

procedure TFPersonel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action :=caFree;
end;

procedure TFPersonel.BitBtn3Click(Sender: TObject);
begin
        close;
end;

procedure TFPersonel.BitBtn2Click(Sender: TObject);
begin
        if DMSabit.PersonelIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                        DMSabit.PersonelIBQ.Delete;
end;

procedure TFPersonel.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFPersonel.GroupBox1Exit(Sender: TObject);
begin
        if DMSabit.PersonelIBQ.Modified Then DMSabit.PersonelIBQ.Post;
end;

procedure TFPersonel.DBImage1DblClick(Sender: TObject);
begin
        if OpenPictureDialog1.Execute then
        begin
                DMSabit.PersonelResimIBQ.Edit;
                DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
                DMSabit.PersonelResimIBQ.Post;
        end;
end;

end.
