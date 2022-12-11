unit Bilgi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, OnlineButton, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, ComCtrls, ImgList, BandActn, StdActns, ExtActns,
  ActnList, ActnMan,DB, ToolWin, ActnCtrls, OnlineCustomControl;

type
  TFBilgi = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    Panel4: TPanel;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BitBtn3: TOnlineButton;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn5: TOnlineButton;
    BitBtn4: TOnlineButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    SecimButonu: TOnlineButton;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    ToolActionBar3: TActionToolBar;
    ToolActionBar1: TActionToolBar;
    ActionManager1: TActionManager;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    CustomizeActionBars1: TCustomizeActionBars;
    ImageList1: TImageList;
    FontEdit1: TFontEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SecimButonuClick(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBRichEdit2Change(Sender: TObject);
    procedure DBRichEdit2Exit(Sender: TObject);
    procedure DBRichEdit1Exit(Sender: TObject);
    procedure DBRichEdit1Change(Sender: TObject);
    procedure FontEdit1FontDialogApply(Sender: TObject; Wnd: HWND);
    procedure FontEdit1Accept(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
  private

  public
    DataSet: TDataSet;
  end;

var
  FBilgi: TFBilgi;

implementation

Uses SabitDM;

{$R *.dfm}

procedure TFBilgi.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFBilgi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFBilgi.BitBtn1Click(Sender: TObject);
begin
        DMSabit.BilgiIBQ.Open;
        DMSabit.BilgiIBQ.Append;
        OnlineDBGrid1.SetFocus;
end;

procedure TFBilgi.SecimButonuClick(Sender: TObject);
begin
        DataSet.Edit;
        DataSet.FindField('ALTBILGI').AsString := DMSabit.BilgiIBQALTBILGI.AsString;
        DataSet.FindField('USTBILGI').AsString := DMSabit.BilgiIBQUSTBILGI.AsString;
        DataSet.Post;
        close;
end;

procedure TFBilgi.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
        if  Key in ['0'..'9'] then
                Key := Key
        else Key := #0;
end;

procedure TFBilgi.DBRichEdit2Change(Sender: TObject);
begin
        if (DMSabit.BilgiIBQ.Active) and (DMSabit.BilgiIBQ.Modified = false) then
                DMSabit.BilgiIBQ.Edit;
end;

procedure TFBilgi.DBRichEdit2Exit(Sender: TObject);
begin
        if DMSabit.BilgiIBQ.Modified then
                DMSabit.BilgiIBQ.Post;
end;

procedure TFBilgi.DBRichEdit1Exit(Sender: TObject);
begin
        if DMSabit.BilgiIBQ.Modified then
                DMSabit.BilgiIBQ.Post;
end;

procedure TFBilgi.DBRichEdit1Change(Sender: TObject);
begin
        if (DMSabit.BilgiIBQ.Active) and (DMSabit.BilgiIBQ.Modified = false) then
                DMSabit.BilgiIBQ.Edit;
end;

procedure TFBilgi.FontEdit1FontDialogApply(Sender: TObject; Wnd: HWND);
begin
        if ActiveControl is TDBRichEdit then
        begin
                TDBRichEdit(ActiveControl).SelAttributes.Name := FontEdit1.Dialog.Font.Name;
                TDBRichEdit(ActiveControl).SelAttributes.Charset := FontEdit1.Dialog.Font.Charset;
                TDBRichEdit(ActiveControl).SelAttributes.Color := FontEdit1.Dialog.Font.Color;
                TDBRichEdit(ActiveControl).SelAttributes.Pitch := FontEdit1.Dialog.Font.Pitch;
                TDBRichEdit(ActiveControl).SelAttributes.Size := FontEdit1.Dialog.Font.Size;
                TDBRichEdit(ActiveControl).SelAttributes.Style := FontEdit1.Dialog.Font.Style;
        end;
end;

procedure TFBilgi.FontEdit1Accept(Sender: TObject);
begin
        if ActiveControl is TDBRichEdit then
        begin
                TDBRichEdit(ActiveControl).SelAttributes.Name := FontEdit1.Dialog.Font.Name;
                TDBRichEdit(ActiveControl).SelAttributes.Charset := FontEdit1.Dialog.Font.Charset;
                TDBRichEdit(ActiveControl).SelAttributes.Color := FontEdit1.Dialog.Font.Color;
                TDBRichEdit(ActiveControl).SelAttributes.Pitch := FontEdit1.Dialog.Font.Pitch;
                TDBRichEdit(ActiveControl).SelAttributes.Size := FontEdit1.Dialog.Font.Size;
                TDBRichEdit(ActiveControl).SelAttributes.Style := FontEdit1.Dialog.Font.Style;
        end;
end;

procedure TFBilgi.BitBtn2Click(Sender: TObject);
begin
        if DMSabit.BilgiIBQ.RecordCount > 0 then
          if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                DMSabit.BilgiIBQ.Delete;
end;

procedure TFBilgi.ButtonNextClick(Sender: TObject);
begin
        DMSabit.BilgiIBQ.Open;
        DMSabit.BilgiIBQ.Next;
end;

procedure TFBilgi.ButtonPreviousClick(Sender: TObject);
begin
        DMSabit.BilgiIBQ.Open;
        DMSabit.BilgiIBQ.Prior;
end;

end.
