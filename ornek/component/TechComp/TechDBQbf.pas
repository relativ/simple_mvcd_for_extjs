{$I TechDBGRID.INC}

unit TechDBQbf;

interface

uses
   Windows, Classes, Graphics, Forms, Controls, Buttons, StdCtrls, ExtCtrls,
   Grids, DBGrids, DBTables, AdoDB, IBCustomDataSet, IBTable, IBQuery, DBClient;

procedure QueryByForm(grid: TDbGrid);
procedure SortByForm(grid: TDbGrid);

type
   TdlgTechDBQbf = class(TForm)
      gridQBF: TStringGrid;
      Panel1: TPanel;
      OKBtn: TSpeedButton;
      Panel2: TPanel;
      CancelBtn: TSpeedButton;
      procedure OKBtnClick(Sender: TObject);
      procedure CancelBtnClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure gridQBFKeyPress(Sender: TObject; var Key: Char);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   dlgTechDBQbf: TdlgTechDBQbf;

implementation

uses Dialogs, Db;

{$R *.DFM}

const
   qbfRowHeight = 16;
   qbfColWidth = 150;
   qbfFieldLabel = ' Sütun ';
   qbfValueLabel = ' Deðer ';
   qbfQueryCaption = ' Tablo için sorgu ';
   qbfSortCaption = ' Tablo için tür sýralamasý ';
var
   CallingGrid: TDbGrid;
   CallingMode: (modeQuery, modeSort);

procedure SetupAndShowForm;
var
   i, j, n: integer;
   tbl: TTable;
   adotbl: TADOTable;
   ibtbl: TIBTable;
   clienttbl: TClientDataSet;
   f: TField;
   bError: Boolean;
begin
   n := CallingGrid.FieldCount;
   if n <= 0 then
      begin
         MessageDlg('Fieldlar Eklenmeden bu iþlem yapýlamaz', mtWarning, [mbOK], 0);
      end
   else
      if CallingGrid.DataSource = nil then
         begin
            MessageDlg('Baðlý bir DataSource bulunanadý...', mtWarning, [mbOK], 0);
         end
      else
         if CallingGrid.DataSource.DataSet = nil then
            begin
               MessageDlg('Baðlý bir DataSet bulunamadý...', mtWarning, [mbOK], 0);
            end
         else
            begin
               bError := True;
               if (CallingGrid.DataSource.DataSet is TTable) then
                  bError := False;
               if (CallingGrid.DataSource.DataSet is TAdoTable) then
                  bError := False;
               if (CallingGrid.DataSource.DataSet is TIBTable) then
                  bError := False;
               if (CallingGrid.DataSource.DataSet is TClientDataSet) then
                  bError := False;
               if bError then
                  MessageDlg('Tanýnmayan bir DataSet türü...', mtWarning, [mbOK], 0)
               else
                  begin
                     with dlgTechDBQbf.gridQBF do
                        begin
                           DefaultRowHeight := qbfRowHeight;
                           Scrollbars := ssVertical;
                           ColCount := 3;
                           ColWidths[2] := 0;
                           RowCount := Succ(n);
                           Cells[0, 0] := qbfFieldLabel;
                           Options := Options + [goRowMoving];
                           if (CallingGrid.DataSource.DataSet is TTable) then
                                tbl := TTable(CallingGrid.DataSource.DataSet);
                           if (CallingGrid.DataSource.DataSet is TADOTable)  then
                                adotbl := TADOTable(CallingGrid.DataSource.DataSet);
                           if (CallingGrid.DataSource.DataSet is TIBTable) then
                                ibtbl := TIBTable(CallingGrid.DataSource.DataSet);
                           if CallingGrid.DataSource.DataSet is TClientDataSet then
                                clienttbl := TClientDataSet(CallingGrid.DataSource.DataSet);
                           if CallingMode = modeQuery then
                              begin
                                 if tbl <> nil then
                                        dlgTechDBQbf.Caption := qbfQueryCaption + tbl.TableName;
                                 if adotbl <> nil then
                                        dlgTechDBQbf.Caption := qbfQueryCaption + adotbl.TableName;
                                 if ibtbl <> nil then
                                        dlgTechDBQbf.Caption := qbfQueryCaption + ibtbl.TableName;
                                 if clienttbl <> nil then
                                        dlgTechDBQbf.Caption := qbfQueryCaption;
                                 Cells[1, 0] := qbfValueLabel;
                                 Options := Options + [goEditing];
                                 DefaultColWidth := qbfColWidth;
                              end
                           else
                              begin
                                 if tbl <> nil then
                                        dlgTechDBQbf.Caption := qbfSortCaption + tbl.TableName;
                                 if adotbl <> nil then
                                        dlgTechDBQbf.Caption := qbfSortCaption + adotbl.TableName;
                                 if ibtbl <> nil then
                                        dlgTechDBQbf.Caption := qbfSortCaption + ibtbl.TableName;
                                 if clienttbl <> nil then
                                        dlgTechDBQbf.Caption := qbfSortCaption;
                                 Cells[1, 0] := '';
                                 Options := Options - [goEditing];
                                 DefaultColWidth := (2 * qbfColWidth);
                              end;
                           j := 0;
                           for i := 1 to n do
                              begin
                                 f := CallingGrid.Fields[Pred(i)];
                                 if f.DataType in [ftBlob, ftBytes, ftGraphic, ftMemo, ftUnknown, ftVarBytes] then
                                    RowCount := Pred(RowCount)
                                 else
                                    begin
                                       Inc(j);
                                       Cells[0, j] := f.DisplayLabel;
                                       Cells[1, j] := '';
                                       Cells[2, j] := f.FieldName;
                                    end;
                              end;
                           dlgTechDBQbf.ShowModal;
                        end;
                  end;
            end;
end;

procedure QueryByForm(Grid: TDbGrid);
begin
   CallingGrid := Grid;
   CallingMode := modeQuery;
   SetupAndShowForm;
end;

procedure SortByForm(Grid: TDbGrid);
begin
   CallingGrid := Grid;
   CallingMode := modeSort;
   SetupAndShowForm;
end;

procedure TdlgTechDBQbf.CancelBtnClick(Sender: TObject);
begin
   dlgTechDBQbf.ModalResult := mrCancel;
   dlgTechDBQbf.Hide;
end;

procedure TdlgTechDBQbf.OKBtnClick(Sender: TObject);
var
   flds, sep, val: string;
   i, n: integer;
begin
   dlgTechDBQbf.ModalResult := mrOk;

   flds := '';
   sep := '';

   with dlgTechDBQbf.gridQBF do
      begin
         n := Pred(RowCount);
         if (n > 10) and (CallingMode = modeSort) then
            n := 10;
         if n > 0 then
            for i := 1 to n do
               begin
                  val := Cells[1, i];
                  if (CallingMode = modeSort) or (val <> '') then
                     begin
                        flds := flds + sep + Cells[2, i];
                        sep := ';';
                     end;
               end;

         if CallingGrid.DataSource.DataSet is TTable then
            begin
               with CallingGrid.DataSource.DataSet as TTable do
                  begin
                     IndexFieldNames := flds;
                     if (CallingMode = modeSort) or (flds = '') then
                        begin
                           CancelRange;
                        end
                     else
                        begin
                           SetRangeStart;
                           for i := 1 to n do
                              begin
                                 val := Cells[1, i];
                                 if val <> '' then
                                    begin
                                       FieldByName(Cells[2, i]).AsString := val;
                                    end;
                              end;
                           SetRangeEnd;
                           for i := 1 to n do
                              begin
                                 val := Cells[1, i];
                                 if val <> '' then
                                    begin
                                       FieldByName(Cells[2, i]).AsString := val;
                                    end;
                              end;
                           ApplyRange;
                        end;
                     Refresh;
                  end;
            end;
         if CallingGrid.DataSource.DataSet is TClientDataSet then
            begin
               with CallingGrid.DataSource.DataSet as TClientDataSet do
                  begin
                     IndexFieldNames := flds;
                     if (CallingMode = modeSort) or (flds = '') then
                        begin
                           CancelRange;
                        end
                     else
                        begin
                           SetRangeStart;
                           for i := 1 to n do
                              begin
                                 val := Cells[1, i];
                                 if val <> '' then
                                    begin
                                       FieldByName(Cells[2, i]).AsString := val;
                                    end;
                              end;
                           SetRangeEnd;
                           for i := 1 to n do
                              begin
                                 val := Cells[1, i];
                                 if val <> '' then
                                    begin
                                       FieldByName(Cells[2, i]).AsString := val;
                                    end;
                              end;
                           ApplyRange;
                        end;
                     //Refresh;
                  end;
            end;
      end;
   dlgTechDBQbf.Hide;
end;

procedure TdlgTechDBQbf.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      begin
         dlgTechDBQbf.ModalResult := mrCancel;
      end;
end;

procedure TdlgTechDBQbf.gridQBFKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then
      begin
         dlgTechDBQbf.ModalResult := mrCancel;
      end;
end;

end.

