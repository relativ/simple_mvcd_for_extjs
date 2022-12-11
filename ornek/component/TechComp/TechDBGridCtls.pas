{$I TechDBGRID.INC}
{$WARNINGS OFF}
{$HINTS OFF}

unit TechDBGridCtls;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Buttons, ExtCtrls, StdCtrls, Db, ComCtrls, FlatStatusBar, DBCtrls,
   Menus, ExtDlgs, Printers, DbTables,Jpeg
   {$IFDEF ADS}, AdsData, AdsFunc, AdsTable{$ENDIF}
, AdoDB, IBCustomDataSet, IBTable, IBQuery, DBClient;

type
   TTechDBGridCtlsForm = class(TForm)
      Memo1: TMemo;
      ScrollBox1: TScrollBox;
      FlatStatusBar1: TFlatStatusBar;
      DBImage: TImage;
      PopupMenu: TPopupMenu;
      Cut1: TMenuItem;
      Copy1: TMenuItem;
      Paste1: TMenuItem;
      N1: TMenuItem;
      Clear1: TMenuItem;
      OpenDialog: TOpenPictureDialog;
      SaveDialog: TSaveDialog;
      N2: TMenuItem;
      Open1: TMenuItem;
      Save1: TMenuItem;
      Panel1: TPanel;
      Okbtn: TSpeedButton;
      Panel2: TPanel;
      Cancelbtn: TSpeedButton;
      RichEdit1: TRichEdit;
      Panel3: TPanel;
      SaveAsbtn: TSpeedButton;
      Panel4: TPanel;
      PrintBtn: TSpeedButton;
      SaveAsDialog: TSaveDialog;
      PrintDialog: TPrintDialog;
      procedure CancelbtnClick(Sender: TObject);
      procedure OkbtnClick(Sender: TObject);
      procedure FormActivate(Sender: TObject);
      procedure MenuClick(Sender: TObject);
      procedure FileOpen(Sender: TObject);
      procedure SavebtnClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure Memo1KeyPress(Sender: TObject; var Key: Char);
      procedure RichEdit1KeyPress(Sender: TObject; var Key: Char);
      procedure SaveAsbtnClick(Sender: TObject);
      procedure PrintBtnClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
   private
      { Private declarations }
      FBlobCaption: string;
      FBlobField: TField;
      FDataSource: TDataSource;
      function GetBlobSize(Field: TBlobField): Longint;
      procedure WMEraseBkGnd(var Msg: TWMEraseBkGnd); message WM_ERASEBKGND;
   public
      { Public declarations }
      property BlobCaption: string read FBlobCaption write FBlobCaption;
      property BlobField: TField read FBlobField write FBlobField;
      property DataSource: TDataSource read FDataSource write FDataSource;
   end;

procedure WMEraseBkgndEx(WinControl: TWinControl; var Message: TWmEraseBkgnd);

var
   TechDBGridCtlsForm: TTechDBGridCtlsForm;

procedure PrintStrings(Strings: TStrings);

implementation

{$R *.DFM}

procedure TTechDBGridCtlsForm.CancelbtnClick(Sender: TObject);
begin
   TechDBGridCtlsForm.ModalResult := mrCancel;
end;

procedure TTechDBGridCtlsForm.OkbtnClick(Sender: TObject);
var
   ImageInfo: Boolean;
   BLOBStream: TBLOBStream;
   ADOBLOBStream: TADOBLOBStream;
   ClientBLOBStream: TClientBLOBStream;
begin
   if Memo1.Visible = True then
      begin
         if Assigned(FDataSource) then
            begin
               if (FDataSource.DataSet is TTable) then
                  begin
                     if (TTable(FDataSource.DataSet).ReadOnly = False) then
                        begin
                           FDataSource.DataSet.Edit;
                           FBlobField.AsString := Memo1.Lines.Text;
                        end;
                  end
               else
                  if (FDataSource.DataSet is TQuery) then
                     begin
                        if (TQuery(FDataSource.DataSet).CanModify = True) then
                           begin
                              FDataSource.DataSet.Edit;
                              FBlobField.AsString := Memo1.Lines.Text;
                           end;
                     end
                        else
                           if (FDataSource.DataSet is TADOTable) then
                              begin
                                 if (TADOTable(FDataSource.DataSet).Readonly = False) then
                                    begin
                                       FDataSource.DataSet.Edit;
                                       FBlobField.Assign(Memo1.Lines);
                                    end;
                              end
                           else
                              if (FDataSource.DataSet is TADOQuery) then
                                 begin
                                    if (TADOQuery(FDataSource.DataSet).CanModify = True) then
                                       begin
                                          FDataSource.DataSet.Edit;
                                          FBlobField.Assign(Memo1.Lines);
                                       end;
                                 end
                                    else
                                       if (FDataSource.DataSet is TIBTable) then
                                          begin
                                             if (TIBTable(FDataSource.DataSet).ReadOnly = False) then
                                                begin
                                                   FDataSource.DataSet.Edit;
                                                   FBlobField.AsString := Memo1.Lines.Text;
                                                end;
                                          end
                                       else
                                          if (FDataSource.DataSet is TIBQuery) then
                                             begin
                                                if (TIBQuery(FDataSource.DataSet).CanModify = True) then
                                                   begin
                                                      FDataSource.DataSet.Edit;
                                                      FBlobField.AsString := Memo1.Lines.Text;
                                                   end;
                                             end
                                          else
                                             if (FDataSource.DataSet is TClientDataSet) then
                                                begin
                                                   if (TClientDataSet(FDataSource.DataSet).ReadOnly = False) then
                                                      begin
                                                         FDataSource.DataSet.Edit;
                                                         FBlobField.AsString := Memo1.Lines.Text;
                                                      end;
                                                end;
            end
         else
            raise(Exception.Create('DataSource Bulunamadý'));
      end
   else
      if RichEdit1.Visible = True then
         begin
            if Assigned(FDataSource) then
               begin
                  if (FDataSource.DataSet is TTable) then
                     begin
                        if (TTable(FDataSource.DataSet).ReadOnly = False) then
                           begin
                              FDataSource.DataSet.Edit;
                              FBlobField.Assign(RichEdit1.Lines);
                           end;
                     end
                  else
                     if (FDataSource.DataSet is TQuery) then
                        begin
                           if (TQuery(FDataSource.DataSet).CanModify = True) then
                              begin
                                 FDataSource.DataSet.Edit;
                                 FBlobField.Assign(RichEdit1.Lines);
                              end;
                        end
                     else
                              if (FDataSource.DataSet is TADOTable) then
                                 begin
                                    if (TADOTable(FDataSource.DataSet).Readonly = False) then
                                       begin
                                          FDataSource.DataSet.Edit;
                                          FBlobField.Assign(RichEdit1.Lines);
                                       end;
                                 end
                              else
                                 if (FDataSource.DataSet is TADOQuery) then
                                    begin
                                       if (TADOQuery(FDataSource.DataSet).CanModify = True) then
                                          begin
                                             FDataSource.DataSet.Edit;
                                             FBlobField.Assign(RichEdit1.Lines);
                                          end;
                                    end
                                       else
                                          if (FDataSource.DataSet is TIBTable) then
                                             begin
                                                if (TIBTable(FDataSource.DataSet).Readonly = False) then
                                                   begin
                                                      FDataSource.DataSet.Edit;
                                                      FBlobField.Assign(RichEdit1.Lines);
                                                   end;
                                             end
                                          else
                                             if (FDataSource.DataSet is TIBQuery) then
                                                begin
                                                   if (TIBQuery(FDataSource.DataSet).CanModify = True) then
                                                      begin
                                                         FDataSource.DataSet.Edit;
                                                         FBlobField.Assign(RichEdit1.Lines);
                                                      end;
                                                end
                                             else
                                                if (FDataSource.DataSet is TClientDataSet) then
                                                   begin
                                                      if (TClientDataSet(FDataSource.DataSet).Readonly = False) then
                                                         begin
                                                            FDataSource.DataSet.Edit;
                                                            FBlobField.Assign(RichEdit1.Lines);
                                                         end;
                                                   end;
               end
            else
               raise(Exception.Create('DataSource bulunamadý...'));
         end
      else
         begin
            if FDataSource.State in [dsEdit, dsInsert] then
               begin
                  ImageInfo := DBImage.Picture.Graphic is TJPEGImage;

                  if ImageInfo then
                     begin
                           if (FDataSource.DataSet is TTable) or (FDataSource.DataSet is TQuery) then
                           begin
                                   BlobStream := TBLOBStream.Create(TBlobField(FBlobField), bmReadWrite);
                                   BlobStream.Seek(0, soFromBeginning);
                                   BlobStream.Truncate;
                                   DBImage.Picture.Graphic.SaveToStream(BlobStream);
                                   BlobStream.Free;
                           end;
                           if (FDataSource.DataSet is TADOTable) or (FDataSource.DataSet is TADOQuery) or (FDataSource.DataSet is TADODataSet) then
                           begin
                              ADOBlobStream := TADOBLOBStream.Create(TBlobField(FBlobField), bmReadWrite);
                              ADOBlobStream.Seek(0, soFromBeginning);
                              ADOBlobStream.Truncate;
                              DBImage.Picture.Graphic.SaveToStream(ADOBlobStream);
                              ADOBlobStream.Free;
                           end;
                           if (FDataSource.DataSet is TClientDataSet) then
                           begin
                              if FDataSource.DataSet is TClientDataSet then
                                 begin
                                    ClientBlobStream := TClientBLOBStream.Create(TBlobField(FBlobField), bmReadWrite);
                                    ClientBlobStream.Seek(0, soFromBeginning);
                                    ClientBlobStream.Truncate;
                                    DBImage.Picture.Graphic.SaveToStream(BlobStream);
                                    ClientBlobStream.Free;
                                 end;
                           end;
                           end;
                        end;
                     end;

   TechDBGridCtlsForm.ModalResult := mrYes;
end;

procedure TTechDBGridCtlsForm.FormActivate(Sender: TObject);
var
   MS1: TMemoryStream;
   BmpImage: TBitmap;
   BlobSize: string;
begin
   MS1 := nil;
   BmpImage := nil;

   TechDBGridCtlsForm.Caption := FBlobCaption;

   if ((FBlobField is TMemoField) or (FBlobField.DataType = ftBytes)) and (FBlobField.DataType <> ftFmtMemo) then
      begin
         Memo1.Lines.Text := FBlobField.AsString;
         if (FDataSource.DataSet is TTable) then
            begin
               if (TTable(FDataSource.DataSet).Readonly) then
                  Memo1.ReadOnly := True;
            end
         else
            if (FDataSource.DataSet is TQuery) then
               begin
                  if (TQuery(FDataSource.DataSet).CanModify = False) then
                     Memo1.ReadOnly := True;
               end;

         if (FDataSource.DataSet is TADOTable) then
            begin
               if (TADOTable(FDataSource.DataSet).Readonly) then
                  Memo1.ReadOnly := True;
            end
         else
            if (FDataSource.DataSet is TADOQuery) then
               begin
                  if (TADOQuery(FDataSource.DataSet).CanModify = False) then
                     Memo1.ReadOnly := True;
               end;
         if (FDataSource.DataSet is TIBTable) then
            begin
               if (TIBTable(FDataSource.DataSet).Readonly) then
                  Memo1.ReadOnly := True;
            end
         else
            if (FDataSource.DataSet is TIBQuery) then
               begin
                  if (TIBQuery(FDataSource.DataSet).CanModify = False) then
                     Memo1.ReadOnly := True;
               end;
         if (FDataSource.DataSet is TClientDataSet) then
            begin
               if (TClientDataSet(FDataSource.DataSet).CanModify = False) then
                  Memo1.ReadOnly := True;
            end;
         Memo1.Visible := True;
         Panel3.Visible := True;
         Panel4.Visible := True;
      end
   else
      if not ((FBlobField is TMemoField) or (FBlobField.DataType = ftBytes)) and (FBlobField.DataType <> ftFmtMemo) and (FBlobField is TBlobField) then
         begin
            try
               try
                  try
                     DBImage.Picture.Assign(FBlobField);
                     try
                        BlobSize := IntToStr(GetBlobSize(TBlobField(FBlobField)));
                        TechDBGridCtlsForm.Caption := '';
                        TechDBGridCtlsForm.Caption := FBlobCaption + ' - Bitmap Image - ' + BlobSize + 'Kb';
                     except
                        TechDBGridCtlsForm.Caption := '';
                        TechDBGridCtlsForm.Caption := FBlobCaption + ' - Bitmap Image';
                     end;
                  except
                     try
                        MS1 := TMemoryStream.Create;
                        TBlobField(FBlobField).SaveToStream(MS1);
                        MS1.Seek(78, soFromBeginning);

                        try
                           BlobSize := IntToStr(GetBlobSize(TBlobField(FBlobField)));
                           TechDBGridCtlsForm.Caption := '';
                           TechDBGridCtlsForm.Caption := FBlobCaption + ' - OLE Bitmap Image - ' + BlobSize + 'Kb';
                        except
                           TechDBGridCtlsForm.Caption := '';
                           TechDBGridCtlsForm.Caption := FBlobCaption + ' - OLE Bitmap Image';
                        end;

                        BmpImage := TBitmap.Create;
                        BmpImage.LoadFromStream(MS1);

                        DBImage.Picture.Assign(BmpImage);
                     finally
                        MS1.Free;
                        BmpImage.Free;
                     end;
                  end;
               except

                  end;

               ScrollBox1.Visible := True;
               Panel3.Visible := False;
               Panel4.Visible := False;
            except
               CancelbtnClick(Self);
               Close;
               //TechDBGridCtlsForm.ModalResult := mrCancel;
            end;
         end
      else
         if (FBlobField is TMemoField) or (FBlobField.DataType = ftFmtMemo) then
            begin
               RichEdit1.Lines.Assign(FBlobField);
               if (FDataSource.DataSet is TTable) then
                  begin
                     if (TTable(FDataSource.DataSet).Readonly) then
                        RichEdit1.ReadOnly := True;
                  end
               else
                  if (FDataSource.DataSet is TQuery) then
                     begin
                        if (TQuery(FDataSource.DataSet).CanModify = False) then
                           RichEdit1.ReadOnly := True;
                     end;
               if (FDataSource.DataSet is TADOTable) then
                  begin
                     if (TADOTable(FDataSource.DataSet).Readonly) then
                        RichEdit1.ReadOnly := True;
                  end
               else
                  if (FDataSource.DataSet is TADOQuery) then
                     begin
                        if (TADOQuery(FDataSource.DataSet).CanModify = False) then
                           RichEdit1.ReadOnly := True;
                     end;
               if (FDataSource.DataSet is TIBTable) then
                  begin
                     if (TIBTable(FDataSource.DataSet).Readonly) then
                        RichEdit1.ReadOnly := True;
                  end
               else
                  if (FDataSource.DataSet is TIBQuery) then
                     begin
                        if (TIBQuery(FDataSource.DataSet).CanModify = False) then
                           RichEdit1.ReadOnly := True;
                     end;
               if (FDataSource.DataSet is TClientDataSet) then
                  begin
                     if (TClientDataSet(FDataSource.DataSet).CanModify = False) then
                        RichEdit1.ReadOnly := True;
                  end;
               RichEdit1.Visible := True;
               Panel3.Visible := True;
               Panel4.Visible := True;
            end;
end;

procedure TTechDBGridCtlsForm.MenuClick(Sender: TObject);
begin
   case Integer(TMenuItem(Sender).Tag) of
      1: DBImage.Perform(WM_CUT, 0, 0);
      2: DBImage.Perform(WM_COPY, 0, 0);
      3: DBImage.Perform(WM_PASTE, 0, 0);
      4: DBImage.Picture.Graphic := nil;
   end;
end;

procedure TTechDBGridCtlsForm.FileOpen(Sender: TObject);
begin
   with OpenDialog do
      if Execute then
         DBImage.Picture.LoadFromFile(FileName);
end;

procedure TTechDBGridCtlsForm.SavebtnClick(Sender: TObject);
begin
   with SaveDialog do
      if Execute then
         begin
            DBImage.Picture.SaveToFile(FileName);
            ShowMessage(FileName + ' Kaydedildi !');
         end;
end;

procedure TTechDBGridCtlsForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      TechDBGridCtlsForm.ModalResult := mrCancel;
end;

procedure TTechDBGridCtlsForm.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      TechDBGridCtlsForm.ModalResult := mrCancel;
end;

procedure TTechDBGridCtlsForm.RichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      TechDBGridCtlsForm.ModalResult := mrCancel;
end;

function TTechDBGridCtlsForm.GetBlobSize(Field: TBlobField): Longint;
begin
   Result := 0;
   try
      with TBlobStream.Create(Field, bmRead) do
         try
            Result := Seek(0, 2);
         finally
            Free;
         end;
   except
      try
         with TADOBlobStream.Create(Field, bmRead) do
            try
               Result := Seek(0, 2);
            finally
               Free;
            end;
      except
         if FDataSource.DataSet is TClientDataSet then
            begin
               with TClientBlobStream.Create(Field, bmRead) do
                  try
                     Result := Seek(0, 2);
                  finally
                     Free;
                  end;
            end;
      end;
   end;
end;

procedure TTechDBGridCtlsForm.SaveAsbtnClick(Sender: TObject);
var
   F1: TextFile;
   i: integer;
begin
   if Memo1.Visible then
      begin
         with SaveAsDialog do
            begin
               if Execute then
                  begin
                     AssignFile(F1, FileName);
                     Rewrite(F1);
                     for i := 0 to Memo1.Lines.Count - 1 do
                        begin
                           Write(F1, Memo1.Lines[i] + #13 + #10);
                        end;
                     CloseFile(F1);
                     ShowMessage(FileName + ' Kaydedildi !');
                  end;
            end;
      end
   else
      begin
         with SaveAsDialog do
            begin
               if Execute then
                  begin
                     AssignFile(F1, FileName);
                     Rewrite(F1);
                     for i := 0 to RichEdit1.Lines.Count - 1 do
                        begin
                           Write(F1, RichEdit1.Lines[i] + #13 + #10);
                        end;
                     CloseFile(F1);
                     ShowMessage(FileName + ' Kaydedildi !');
                  end;
            end;
      end;
end;

procedure TTechDBGridCtlsForm.PrintBtnClick(Sender: TObject);
begin
   if Memo1.Visible then
      begin
         if PrintDialog.Execute then
            begin
               PrintStrings(Memo1.Lines);
            end;
      end
   else
      begin
         if PrintDialog.Execute then
            begin
               RichEdit1.Print(BlobCaption);
            end;
      end;
end;

procedure PrintStrings(Strings: TStrings);
var
   Prn: TextFile;
   i: word;
begin
   AssignPrn(Prn);
   try
      Rewrite(Prn);
      try
         for i := 0 to Strings.Count - 1 do
            writeln(Prn, Strings.Strings[i]);
      finally
         CloseFile(Prn);
      end;
   except
      on EInOutError do
         MessageDlg('Yazdýrma Hatasý.', mtError, [mbOk], 0);
   end;
end;

procedure TTechDBGridCtlsForm.FormCreate(Sender: TObject);
begin
   Self.ControlStyle := ControlStyle + [csOpaque];
   Perform(WM_PAINT, 0, 0);
end;

procedure TTechDBGridCtlsForm.WMEraseBkGnd(var Msg: TWMEraseBkGnd);
begin
   WMEraseBkgndEx(Self, Msg);
end;

procedure WMEraseBkgndEx(WinControl: TWinControl; var Message: TWmEraseBkgnd);
var
   i, Clip, SaveIndex: Integer;
begin
   with WinControl do
      if not DoubleBuffered or (TMessage(Message).wParam = TMessage(Message).lParam) then
         begin
            SaveIndex := SaveDC(Message.DC);
            Clip := SimpleRegion;

            if ControlCount > 0 then
               begin
                  for i := 0 to ControlCount - 1 do
                     if not (Controls[i] is TWinControl) then
                        with Controls[i] do
                           begin
                              if (Visible or (csDesigning in ComponentState) and
                                 not (csNoDesignVisible in ControlStyle)) and
                                 (csOpaque in ControlStyle) then
                                 begin
                                    Clip := ExcludeClipRect(Message.DC, Left, Top, Left + Width, Top + Height);
                                    if Clip = NullRegion then
                                       break;
                                 end;
                           end;
               end;

            if Clip <> NullRegion then
               FillRect(Message.DC, ClientRect, Brush.Handle);

            RestoreDC(Message.DC, SaveIndex);
         end;
   Message.Result := 1;
end;

end.

