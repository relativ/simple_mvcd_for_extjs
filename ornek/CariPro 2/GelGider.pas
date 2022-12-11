unit GelGider;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, Grids, DBGrids, OnlineDBGrid, 
  OnlineButton, ComCtrls, OnlineDBTreeView, OnlineCustomControl;

type
  TFGelGider = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    BitBtn3: TOnlineButton;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    OnlineDBTree1: TOnlineDBTree;
    OnlineButton1: TOnlineButton;
    Panel5: TPanel;
    DBOnlineEdit1: TDBOnlineEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGelGider: TFGelGider;

implementation

uses DataDM, SabitDM;

{$R *.dfm}

procedure TFGelGider.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSabit.GelirGiderIBQ.Modified then
                DMSabit.GelirGiderIBQ.Post;
        Action := caFree;
end;

procedure TFGelGider.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFGelGider.GroupBox1Exit(Sender: TObject);
begin
        if (DMSabit.GelirGiderIBQ.Modified=True) and (DMSabit.GelirGiderIBQ.RecordCount>0) Then
        Begin
                if DMSabit.GelirGiderIBQGELGITADI.AsString='' Then
                        DMSabit.GelirGiderIBQ.Delete;
                DMSabit.GelirGiderIBQ.Post;
        end;

end;

procedure TFGelGider.BitBtn1Click(Sender: TObject);
begin
        OnlineDBTree1.OnlineInsertNode;
        DBOnlineEdit1.SetFocus;
end;

procedure TFGelGider.BitBtn2Click(Sender: TObject);
begin
        try
        if DMSabit.GelirGiderIBQ.RecordCount>0 Then
                if Application.MessageBox('Bu Gelir Gider Merkezini silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                        OnlineDBTree1.OnlineDeleteNode;
        except
                ShowMessage('Ýþlem görmüþ gelir gider merkezi silinemez!..');
        end;

end;

procedure TFGelGider.BitBtn4Click(Sender: TObject);
begin
      {  FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\GelirGiderMerkezleri.or');
        FEvrak.Report.PreviewModal;    }
end;

procedure TFGelGider.BitBtn5Click(Sender: TObject);
begin
     {   FEvrak.LoadFromFile(ExtractFileDir(Application.ExeName)+'\GelirGiderMerkezleri.or');
        FEvrak.Report.Print; }
end;

procedure TFGelGider.FormShow(Sender: TObject);
begin
        DMSabit.GelirGiderIBQ.open;
end;

procedure TFGelGider.OnlineButton1Click(Sender: TObject);
begin
        OnlineDBTree1.OnlineInsertSubNode;
        DBOnlineEdit1.SetFocus;
end;

end.
