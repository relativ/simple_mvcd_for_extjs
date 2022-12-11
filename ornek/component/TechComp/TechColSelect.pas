{$I TechDBGRID.INC}

unit TechColSelect;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Db, Checklst, TechDBGridPro, Buttons, ExtCtrls, ComCtrls, FlatStatusBar;

type
   TTechColSelectFrm = class(TForm)
      ColList: TCheckListBox;
      FlatStatusBar1: TFlatStatusBar;
      Panel1: TPanel;
      Okbtn: TSpeedButton;
      Panel2: TPanel;
      Cancelbtn: TSpeedButton;
      procedure FormActivate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure ColListKeyPress(Sender: TObject; var Key: Char);
      procedure ColListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
      procedure FormCreate(Sender: TObject);
      procedure OkbtnClick(Sender: TObject);
      procedure CancelbtnClick(Sender: TObject);
      procedure ColListDragOver(Sender, Source: TObject; X, Y: Integer;
         State: TDragState; var Accept: Boolean);
      procedure FormDestroy(Sender: TObject);
   private
      { Private declarations }
      FDataSource: TDataSource;
      FTechDBGrid: TTechDBGridPro;
   public
      { Public declarations }
      property DataSource: TDataSource read FDataSource write FDataSource;
      property TechDBGrid: TTechDBGridPro read FTechDBGrid write FTechDBGrid;
   end;

var
   TechColSelectFrm: TTechColSelectFrm;
   ColumnUpdate: Boolean;
   ExCheckWidth,
      ExCheckHeight: Integer;

implementation

uses DBGrids;

{$R *.DFM}

procedure TTechColSelectFrm.FormActivate(Sender: TObject);
var
   i, j: Integer;
begin
   ColumnUpdate := True;

   if TechDBGrid <> nil then
      begin
         with TechDBGrid do
            try
               if not (Assigned(DataSource) and
                  Assigned(DataSource.DataSet)) then exit;

               for i := 0 to TechDBGrid.Columns.Count - 1 do
                  begin
                     if Uppercase(TechDBGrid.Columns[i].Title.Caption) <> '<Görüntülenemiyor>' then
                        begin
                           j := ColList.Items.AddObject(TechDBGrid.Columns[i].Title.Caption, TechDBGrid.Columns[i].Field);
                           ColList.Checked[j] := TechDBGrid.Columns[i].Visible;
                        end;
                  end;
            finally
            end;

         if ColList.Items.Count > 0 then
            ColList.ItemIndex := 0;
      end;
end;

procedure TTechColSelectFrm.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: Integer;
   ContinueUpdate: Boolean;
begin
   if TechColSelectFrm.ModalResult = mrOk then
      begin
         ContinueUpdate := False;

         if ColumnUpdate then
            begin
               for i := 0 to ColList.Items.Count - 1 do
                  begin
                     if ColList.Checked[i] = True then
                        begin
                           ContinueUpdate := True;
                        end;
                  end;

               if ContinueUpdate = True then
                  begin
                     for i := 0 to ColList.Items.Count - 1 do
                        begin
                           with TechDBGrid.Columns[i] do
                              begin
                                 Visible := ColList.Checked[i];
                              end;
                        end;
                  end
               else
                  begin
                     MessageDlg('Tüm sütunlar gizlenemedi.', mtWarning, [mbOk], 0);
                  end;
            end;
      end;
end;

procedure TTechColSelectFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      begin
         TechColSelectFrm.ModalResult := mrCancel;
         ColumnUpdate := False;
      end;
end;

procedure TTechColSelectFrm.ColListKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      begin
         TechColSelectFrm.ModalResult := mrCancel;
         ColumnUpdate := False;
      end;
end;

procedure TTechColSelectFrm.ColListDrawItem(Control: TWinControl;
   Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
   DrawRect: TRect;
begin
   with TCheckListBox(Control).Canvas do
      begin
         FillRect(Rect);

         //LIST ITEMS

         TextRect(Rect, Rect.Left + 4, Rect.Top + 1, TCheckListBox(Control).Items.Strings[Index]);

         //Top
         Pen.Color := clWindow;
         MoveTo(Rect.Left, Rect.Top);
         LineTo(Rect.Right, Rect.Top);
         //Left
         {Pen.Color := clWhite;
         MoveTo(Rect.Left, Rect.Top + 1);
         LineTo(Rect.Left, Rect.Bottom - 1);}
         //Bottom
         Pen.Color := clBtnShadow;
         MoveTo(Rect.Left, Rect.Bottom - 1);
         LineTo(Rect.Right, Rect.Bottom - 1);
         //Right
         Pen.Color := clBtnShadow;
         MoveTo(Rect.Right - 1, Rect.Top);
         LineTo(Rect.Right - 1, Rect.Bottom - 1);

         //CHECK ITEMS

         DrawRect := Rect;
         DrawRect.Right := Rect.Left;
         DrawRect.Left := DrawRect.Right - (ExCheckWidth + 2);
         DrawRect.Top := Rect.Top;
         DrawRect.Bottom := Rect.Bottom;

         //Top
         Pen.Color := clWindow;
         MoveTo(DrawRect.Left, DrawRect.Top);
         LineTo(DrawRect.Right, DrawRect.Top);
         //Left
         Pen.Color := clWindow;
         MoveTo(DrawRect.Left, DrawRect.Top + 1);
         LineTo(DrawRect.Left, DrawRect.Bottom - 1);
         //Bottom
         Pen.Color := clBtnShadow;
         MoveTo(DrawRect.Left, DrawRect.Bottom - 1);
         LineTo(DrawRect.Right, DrawRect.Bottom - 1);
         //Right
         {Pen.Color := clBtnShadow;
         MoveTo(DrawRect.Right - 1, DrawRect.Top);
         LineTo(DrawRect.Right - 1, DrawRect.Bottom - 1);}
      end;

   if (odSelected in State) then
      begin
         TCheckListBox(Control).Canvas.FrameRect(Rect);
      end;
end;

procedure TTechColSelectFrm.FormCreate(Sender: TObject);
begin
   with TBitmap.Create do
      try
         Handle := LoadBitmap(0, PChar(32759));
         ExCheckWidth := Width div 4;
         ExCheckHeight := Height div 3;
      finally
         Free;
      end;
   Self.Caption := 'Özelleþtir';
   Okbtn.Caption := '&Tamam';
   Cancelbtn.Caption := '&Ýptal';

end;

procedure TTechColSelectFrm.OkbtnClick(Sender: TObject);
begin
   TechColSelectFrm.ModalResult := mrOk;
end;

procedure TTechColSelectFrm.CancelbtnClick(Sender: TObject);
begin
   TechColSelectFrm.ModalResult := mrCancel;
end;

procedure TTechColSelectFrm.ColListDragOver(Sender, Source: TObject; X,
   Y: Integer; State: TDragState; var Accept: Boolean);

   procedure MoveC;
   var
      i, i1: Integer;
      b: Boolean;
   begin
      i := ColList.Tag;
      ColList.Tag := -1;
      if i < 0 then
         exit;
      i1 := ColList.ItemAtPos(Point(x, y), True);
      if i1 < 0 then
         exit;
      b := ColList.Checked[i];
      ColList.Items.Move(i, i1);
      ColList.Checked[i1] := b;
   end;

begin
   if Sender = Source then
      begin
         Accept := True;
         case State of
            dsDragEnter: ColList.Tag := ColList.ItemAtPos(Point(x, y), True);
            dsDragLeave: MoveC;
         end;
      end;
end;

procedure TTechColSelectFrm.FormDestroy(Sender: TObject);
begin
   ColList.Items.Clear;
   inherited;
end;

end.

