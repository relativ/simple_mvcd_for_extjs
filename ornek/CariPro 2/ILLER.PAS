unit iller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, OnlineDBGrid, OnlineEdit, Buttons,
  ExtCtrls, Mask, DBCtrls, DBOnlineEdit, OnlineButton,
  OnlineCustomControl;

type
  TFiller = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox12: TGroupBox;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    BitBtn26: TOnlineButton;
    BitBtn27: TOnlineButton;
    GroupBox4: TGroupBox;
    BitBtn25: TOnlineButton;
    OnlineEdit1: TOnlineEdit;
    OnlineEdit2: TOnlineEdit;
    OnlineDBGrid2: TOnlineDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn6: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    OnlineDBGrid1: TOnlineDBGrid;
    procedure BitBtn25Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineEdit1Exit(Sender: TObject);
    procedure DBOnlineEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filler: TFiller;

implementation

uses SabitDM;


{$R *.dfm}

procedure TFiller.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFiller.FormShow(Sender: TObject);
begin
        DMSabit.ilIBQ.Open;
        DMSabit.ilceIBQ.Open;
end;

procedure TFiller.BitBtn26Click(Sender: TObject);
begin
        DMSabit.ilIBQ.Append;
        DBOnlineEdit1.SetFocus;
end;

procedure TFiller.BitBtn27Click(Sender: TObject);
begin
        if DMSabit.ilIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)= mrYes then
                        DMSabit.ilIBQ.Delete;
end;

procedure TFiller.BitBtn6Click(Sender: TObject);
begin
        if DMSabit.ilceIBQ.RecordCount > 0 then
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)= mrYes then
                        DMSabit.ilceIBQ.Delete;
end;

procedure TFiller.BitBtn5Click(Sender: TObject);
begin
        DMSabit.ilceIBQ.Append;
        DBOnlineEdit2.SetFocus;
end;

procedure TFiller.BitBtn1Click(Sender: TObject);
begin
        DMSabit.ilceIBQ.First;
end;

procedure TFiller.BitBtn2Click(Sender: TObject);
begin
        DMSabit.ilceIBQ.Prior;
end;

procedure TFiller.BitBtn3Click(Sender: TObject);
begin
        DMSabit.ilceIBQ.Next;
end;

procedure TFiller.BitBtn4Click(Sender: TObject);
begin
        DMSabit.ilceIBQ.Last;
end;

procedure TFiller.BLastPageClick(Sender: TObject);
begin
        DMSabit.ilIBQ.Last;
end;

procedure TFiller.ButtonNextClick(Sender: TObject);
begin
        DMSabit.ilIBQ.Next;
end;

procedure TFiller.ButtonPreviousClick(Sender: TObject);
begin
        DMSabit.ilIBQ.Prior;
end;

procedure TFiller.BFirstPageClick(Sender: TObject);
begin
        DMSabit.ilIBQ.First;
end;

procedure TFiller.OnlineEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                DMSabit.ilIBQ.SQL.Clear;
                DMSabit.ilIBQ.SQL.Add('select * from SEHIR');
                if Pos('%',OnlineEdit1.Text) = 0 then
                        DMSabit.ilIBQ.SQL.Add('where Upper(SEHIRADI) like '+#39+OnlineEdit1.UpperTurk+'%'+#39)
                else DMSabit.ilIBQ.SQL.Add('where Upper(SEHIRADI) like '+#39+OnlineEdit1.UpperTurk+#39);
                DMSabit.ilIBQ.SQL.Add('Order by SEHIRADI');
                DMSabit.ilIBQ.Open;
        end;
end;

procedure TFiller.OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        begin
                Key := #0;
                DMSabit.ilceIBQ.SQL.Clear;
                DMSabit.ilceIBQ.SQL.Add('select * from ILCE');
                if Pos('%',OnlineEdit2.Text) = 0 then
                        DMSabit.ilceIBQ.SQL.Add('where SEHIRKOD =:SEHIRKOD and Upper(ILCEADI) like '+#39+OnlineEdit2.UpperTurk+'%'+#39)
                else DMSabit.ilceIBQ.SQL.Add('where SEHIRKOD =:SEHIRKOD and Upper(ILCEADI) like '+#39+OnlineEdit2.UpperTurk+#39);
                DMSabit.ilceIBQ.SQL.Add('Order by ILCEADI');
                DMSabit.ilceIBQ.Open;
        end;
end;

procedure TFiller.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        action := caFree;
end;

procedure TFiller.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TOnlineEdit) or (ActiveControl is TDBOnlineEdit)  then
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;
            
procedure TFiller.DBOnlineEdit1Exit(Sender: TObject);
begin
        if DMSabit.ilIBQ.Modified then
                DMSabit.ilIBQ.Post;

end;

procedure TFiller.DBOnlineEdit2Exit(Sender: TObject);
begin
        if DMSabit.ilceIBQ.Modified then
                DMSabit.ilceIBQ.Post;
end;

end.
