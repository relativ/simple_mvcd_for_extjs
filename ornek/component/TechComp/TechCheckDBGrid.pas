unit TechCheckDBGrid;

interface

uses
  Windows, Messages, SysUtils,Variants, Classes,Controls, ActnList,Graphics, Grids, DBGrids,
  DBCtrls,Forms, Buttons, StdCtrls,DB, ExtCtrls,ComCtrls, ExtDlgs,DBConsts,
  Menus, Mask,ADODB, IBCustomDataSet, IBQuery, ImgList,TechDBDateTimePicker;

  const
        TechDBGrid_ABOUT = 'Tech Yazýlým/ Serkan Güneþ '#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

type
    TTechCheckDBGrid = class;
    TCheckColumn = class;

    TCheckColumnClickEvent = procedure(Column: TCheckColumn) of object;
    TCheckColumnKeyPressEvent = procedure(Column: TCheckColumn;var Key: Char) of object;
    TTechColumnKeyDownEvent = procedure(Column: TCheckColumn; var Key: Word; Shift: TShiftState) of object;
    TCheckEditButtonClickEvent = procedure(Sender: TObject) of object;
    TCheckColumnChangeEvent = procedure(Sender: TCheckColumn) of object;

    {---------------TDBTechCheckGridInplaceEdit-----------------}

    TDBTechCheckGridInplaceEdit = class(TInplaceEditList)
  private
    FDataList: TDBLookupListBox;
    FUseDataList: Boolean;
    FLookupSource: TDatasource;
  protected
    procedure CloseUp(Accept: Boolean); override;
    procedure DoEditButtonClick; override;
    procedure DropDown; override;
    procedure UpdateContents; override;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
  public
    constructor Create(Owner: TComponent); override;
    property  DataList: TDBLookupListBox read FDataList;
  end;
{---------------TCheckColumn-----------------}
    TCheckColumn = class(TColumn)
  private
    FCheck,sirala: Boolean;
    FValueChecked: String;
    FValueUnChecked: String;
    FOnEditButtonClick: TCheckEditButtonClickEvent;
    FOnClick: TCheckColumnClickEvent;
    FOnKeyPress: TCheckColumnKeyPressEvent;
    FOnKeyDown: TTechColumnKeyDownEvent;
    FOnChange: TCheckColumnChangeEvent;
    siralacolor1: TColor;
    siralacolor2: TColor;
    procedure SetCheck(const Value: boolean);
    procedure SetValueChecked(const Value: string);
    procedure SetValueUnchecked(const Value: string);
    procedure SetSirala(Val: Boolean);
    procedure SetSirala1_Rengi(Val: TColor);
    procedure SetSirala2_Rengi(Val: TColor);
  protected
    procedure Click(Column: TCheckColumn); dynamic;
    procedure Change; dynamic;
    procedure KeyPress(Column: TCheckColumn; var Key: Char); dynamic;
    procedure KeyDown(Column: TCheckColumn; var Key: Word; Shift: TShiftState); dynamic;
    procedure EditButtonClick; dynamic;
  public
    constructor Create(Collection: TCollection); override;
  published
    property Check: Boolean read FCheck write SetCheck default false;
    property ValueChecked: String read FValueChecked write SetValueChecked;
    property ValueUnchecked: String read FValueUnchecked write SetValueUnchecked;
    property Siralama: Boolean read sirala write SetSirala;
    property Sirala1_Rengi: TColor read siralacolor1 write SetSirala1_Rengi stored true;
    property Sirala2_Rengi: TColor read siralacolor2 write SetSirala2_Rengi stored true;
    property OnClick: TCheckColumnClickEvent read FOnClick write FOnClick;
    property OnChange: TCheckColumnChangeEvent read FOnChange write FOnChange;
    property OnKeyPress: TCheckColumnKeyPressEvent read FOnKeyPress write FOnKeyPress;
    property OnKeyDown: TTechColumnKeyDownEvent read FOnKeyDown write FOnKeyDown;
    property OnEditButtonClick: TCheckEditButtonClickEvent read FOnEditButtonClick write FOnEditButtonClick;
  end;

  {---------------TTechCheckDBGrid-----------------}

    TTechCheckDBGrid = class(TDBGrid)
  private
        adi,FOtono,FSatirCheckField: string;
        sira,Editing,FSatirCiz,
        GetBaslikButton: boolean;
        FColor,FFontColor: TColor;
        FOptions: TGridOptions;
        FHitTest: TPoint;
        FOnGetEditText: TGetEditEvent;
        FDataLink: TGridDataLink;
        procedure SaveBoolean;
        function GetVersion: string;
        procedure SetVersion(const Val: string);
        procedure SetSatirCheckField(const Val: string);
        procedure SetOptions(Value: TGridOptions);
        procedure SetOtono(const Val: string);
        procedure SetColor(const Value: TColor);
        procedure SetFontColor(const Value: TColor);
        procedure SetSatirCiz(Val: Boolean);
        procedure SetBaslikButton(Val: Boolean);
        procedure WMSetCursor(var Msg: TWMSetCursor); message WM_SETCURSOR;
        procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
  protected
        procedure CalcSizingState(X, Y: Integer; var State: TGridState;
                var Index: Longint; var SizingPos, SizingOfs: Integer;
                var FixedInfo: TGridDrawInfo); override;
        procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
                Column: TColumn; State: TGridDrawState);override;
        function  CreateColumns: TDBGridColumns; override;
        function GetEditText(ACol, ARow: Longint): string; override;
        procedure CellClick(Column: TColumn); override;
        procedure TitleClick(Column: TColumn); override;
        procedure KeyPress(var Key: Char); override;
        procedure KeyDown(var Key: Word; Shift: TShiftState); override;
        function  CreateEditor: TInplaceEdit; override;
        Procedure Change; dynamic;
        procedure ColEnter; override;
        procedure ColExit; override;
        procedure DoEnter; override;
        Procedure DoExit; override;
        procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  public
        constructor Create(AOwner:TComponent); override;
  published
        BooleanList: TStringList;
        function RowChecked(Column: TColumn): Boolean;
        property BaslikButton: Boolean read GetBaslikButton write SetBaslikButton;
        property About: string read GetVersion write SetVersion;
        property SatirCiz: Boolean read FSatirCiz write SetSatirCiz;
        property SatirRengi: TColor read FColor write SetColor;
        property SatirCheckField: string read FSatirCheckField write SetSatirCheckField;
        property SatirFontRengi: TColor read FFontColor write SetFontColor;
        property OtoNoField: string read FOtono write SetOtono;
        property OnGetEditText: TGetEditEvent read FOnGetEditText write FOnGetEditText;
        property GridOptions: TGridOptions read FOptions write SetOptions;
        property GridLineWidth;
        property Selection;
        property DefaultColWidth;
        property DefaultRowHeight;
  end;

  procedure Register;

implementation

//--------TDBTechCheckGridInplaceEdit-----

constructor TDBTechCheckGridInplaceEdit.Create(Owner: TComponent);
begin
  inherited Create(Owner);
  FLookupSource := TDataSource.Create(Self);
end;

procedure TDBTechCheckGridInplaceEdit.CMTextChanged(var Message: TMessage);
begin
        TTechCheckDBGrid(Grid).Change;
end;

procedure TDBTechCheckGridInplaceEdit.CloseUp(Accept: Boolean);
var
  MasterField: TField;
  ListValue: Variant;
begin
  if ListVisible then
  begin
    if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
    if ActiveList = DataList then
      ListValue := DataList.KeyValue
    else
      if PickList.ItemIndex <> -1 then
        ListValue := PickList.Items[Picklist.ItemIndex];
    SetWindowPos(ActiveList.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);
    ListVisible := False;
    if Assigned(FDataList) then
      FDataList.ListSource := nil;
    FLookupSource.Dataset := nil;
    Invalidate;
    if Accept then
      if ActiveList = DataList then
        with TTechCheckDBGrid(Grid), Columns[SelectedIndex].Field do
        begin
          MasterField := DataSet.FieldByName(KeyFields);
          if MasterField.CanModify and FDataLink.Edit then
            MasterField.Value := ListValue;
        end
      else
        if (not VarIsNull(ListValue)) and EditCanModify then
          with TTechCheckDBGrid(Grid), Columns[SelectedIndex].Field do
            Text := ListValue;
  end;
end;

procedure TDBTechCheckGridInplaceEdit.DoEditButtonClick;
begin
        TTechCheckDBGrid(Grid).EditButtonClick;
end;

procedure TDBTechCheckGridInplaceEdit.DropDown;
var
  Column: TColumn;
begin
  if not ListVisible then
  begin
    with TTechCheckDBGrid(Grid) do
      Column := Columns[SelectedIndex];
    if ActiveList = FDataList then
      with Column.Field do
      begin
        FDataList.Color := Color;
        FDataList.Font := Font;
        FDataList.RowCount := Column.DropDownRows;
        FLookupSource.DataSet := LookupDataSet;
        FDataList.KeyField := LookupKeyFields;
        FDataList.ListField := LookupResultField;
        FDataList.ListSource := FLookupSource;
        FDataList.KeyValue := DataSet.FieldByName(KeyFields).Value;
      end
    else if ActiveList = PickList then
    begin
      PickList.Items.Assign(Column.PickList);
      DropDownRows := Column.DropDownRows;
    end;
  end;
  inherited DropDown;
end;

procedure TDBTechCheckGridInplaceEdit.UpdateContents;
var
  Column: TColumn;
begin
  inherited UpdateContents;
  if FUseDataList then
  begin
    if FDataList = nil then
    begin
      FDataList := TPopupDataList.Create(Self);
      FDataList.Visible := False;
      FDataList.Parent := Self;
      FDataList.OnMouseUp := ListMouseUp;
    end;
    ActiveList := FDataList;
  end;
  with TTechCheckDBGrid(Grid) do
    Column := Columns[SelectedIndex];
  Self.ReadOnly := Column.ReadOnly;
  Font.Assign(Column.Font);
  ImeMode := Column.ImeMode;
  ImeName := Column.ImeName;
end;


//------------------- TCheckColumn -----------------

constructor TCheckColumn.Create(Collection: TCollection);
  begin
    inherited;
    FValueChecked:='1';
    FValueUnchecked:='0';
  end;

procedure TCheckColumn.SetSirala(Val: Boolean);
begin
        sirala := Val;
end;

procedure TCheckColumn.SetSirala1_Rengi(Val: TColor);
begin
        siralacolor1 := Val;
end;

procedure TCheckColumn.SetSirala2_Rengi(Val: TColor);
begin
        siralacolor2 := Val;
end;

procedure TCheckColumn.SetCheck(const Value: boolean);
  begin
    FCheck:=Value;
    Changed(False);
  end;

procedure TCheckColumn.Click(Column: TCheckColumn);
begin
  if Assigned(FOnClick) then FOnClick(Column);
end;

procedure TCheckColumn.KeyPress(Column: TCheckColumn;var Key: Char);
begin
  if Assigned(FOnKeyPress) then FOnKeyPress(Column,Key);
end;

procedure TCheckColumn.KeyDown(Column: TCheckColumn; var Key: Word; Shift: TShiftState);
begin
  if Assigned(FOnKeyDown) then FOnKeyDown(Column,Key,Shift);
end;

procedure TCheckColumn.SetValueChecked(const Value: string);
  begin
    FValueChecked:=Value;
    Changed(False);
  end;

procedure TCheckColumn.SetValueUnchecked(const Value: string);
  begin
    FValueUnchecked:=Value;
    Changed(False);
  end;

procedure TCheckColumn.Change;
begin
  if Assigned(FOnChange) then
    FOnChange(Self)
end;

procedure TCheckColumn.EditButtonClick;
begin
  if Assigned(FOnEditButtonClick) then
    FOnEditButtonClick(Self)
  else
        GetGrid.ShowPopupEditor(Self);
end;

//------------------- grid -----------------

constructor TTechCheckDBGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := DataLink;
  BooleanList := TStringList.Create;
end;

function TTechCheckDBGrid.CreateEditor: TInplaceEdit;
begin
  Result := TDBTechCheckGridInplaceEdit.Create(Self);
end;

procedure TTechCheckDBGrid.SetOptions(Value: TGridOptions);
begin
  if FOptions <> Value then
  begin
    FOptions := Value;
    InvalidateGrid;
  end;
end;

procedure TTechCheckDBGrid.CalcSizingState(X, Y: Integer; var State: TGridState;
  var Index: Longint; var SizingPos, SizingOfs: Integer;
  var FixedInfo: TGridDrawInfo);

  procedure CalcAxisState(const AxisInfo: TGridAxisDrawInfo; Pos: Integer;
    NewState: TGridState);
  var
    I, Line, Back, Range: Integer;
  begin
    if (NewState = gsColSizing) and UseRightToLeftAlignment then 
      Pos := ClientWidth - Pos;
    with AxisInfo do
    begin
      Line := FixedBoundary;
      Range := EffectiveLineWidth;
      Back := 0;
      if Range < 7 then
      begin
        Range := 7;
        Back := (Range - EffectiveLineWidth) shr 1;
      end;
      for I := FirstGridCell to GridCellCount - 1 do
      begin
        Inc(Line, GetExtent(I));
        if Line > GridBoundary then Break;
        if (Pos >= Line - Back) and (Pos <= Line - Back + Range) then
        begin
          State := NewState;
          SizingPos := Line;
          SizingOfs := Line - Pos;
          Index := I;
          Exit;
        end;
        Inc(Line, EffectiveLineWidth);
      end;
      if (GridBoundary = GridExtent) and (Pos >= GridExtent - Back)
        and (Pos <= GridExtent) then
      begin
        State := NewState;
        SizingPos := GridExtent;
        SizingOfs := GridExtent - Pos;
        Index := LastFullVisibleCell + 1;
      end;
    end;
  end;

  function XOutsideHorzFixedBoundary: Boolean;
  begin
    with FixedInfo do
      if not UseRightToLeftAlignment then
        Result := X > Horz.FixedBoundary
      else
        Result := X < ClientWidth - Horz.FixedBoundary;
  end;

  function XOutsideOrEqualHorzFixedBoundary: Boolean;
  begin
    with FixedInfo do
      if not UseRightToLeftAlignment then
        Result := X >= Horz.FixedBoundary
      else
        Result := X <= ClientWidth - Horz.FixedBoundary;
  end;


var
  EffectiveOptions: TGridOptions;
begin
  State := gsNormal;
  Index := -1;
  EffectiveOptions := GridOptions;
  if csDesigning in ComponentState then
    EffectiveOptions := EffectiveOptions + DesignOptionsBoost;
  if [goColSizing, goRowSizing] * EffectiveOptions <> [] then
    with FixedInfo do
    begin
      Vert.GridExtent := ClientHeight;
      Horz.GridExtent := ClientWidth;
      if (XOutsideHorzFixedBoundary) and (goColSizing in EffectiveOptions) then
      begin
        if Y >= Vert.FixedBoundary then Exit;
        CalcAxisState(Horz, X, gsColSizing);
      end
      else if (Y > Vert.FixedBoundary) and (goRowSizing in EffectiveOptions) then
      begin
        if XOutsideOrEqualHorzFixedBoundary then Exit;
        CalcAxisState(Vert, Y, gsRowSizing);
      end;
    end;
end;

procedure TTechCheckDBGrid.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  DefaultHandler(Msg);
  FHitTest := ScreenToClient(SmallPointToPoint(Msg.Pos));
end;

procedure TTechCheckDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
        inherited;
        if Button = mbLeft then
        if Assigned(TCheckColumn(Columns[SelectedIndex]).OnClick) then
                TCheckColumn(Columns[SelectedIndex]).Click(TCheckColumn(Columns[SelectedIndex]));
end;

procedure TTechCheckDBGrid.WMSetCursor(var Msg: TWMSetCursor);
var
  DrawInfo: TGridDrawInfo;
  State: TGridState;
  Index: Longint;
  Pos, Ofs: Integer;
  Cur: HCURSOR;
begin
  Cur := 0;
  with Msg do
  begin
    if HitTest = HTCLIENT then
    begin
      if FGridState = gsNormal then
      begin
        CalcDrawInfo(DrawInfo);
        CalcSizingState(FHitTest.X, FHitTest.Y, State, Index, Pos, Ofs,
          DrawInfo);
      end else State := FGridState;
      if State = gsRowSizing then
        Cur := Screen.Cursors[crVSplit]
      else if State = gsColSizing then
        Cur := Screen.Cursors[crHSplit]
    end;
  end;
  if Cur <> 0 then SetCursor(Cur)
  else inherited;
end;

procedure TTechCheckDBGrid.SetOtono(const Val: string);
begin
        FOtono := Val;
        RecreateWnd;
end;

function TTechCheckDBGrid.RowChecked(Column: TColumn): Boolean;
begin
        if FOtono <> '' then
        begin
                if BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = '' then
                        Result := false
                else if BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = TCheckColumn(Column).ValueUnchecked then
                        Result := false
                else if BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = TCheckColumn(Column).ValueChecked then
                        Result := true
                else Result := false;
        end else Result := false;
end;

function TTechCheckDBGrid.CreateColumns: TDBGridColumns;
  begin
    Result := TDBGridColumns.Create(Self, TCheckColumn);
end;

procedure TTechCheckDBGrid.KeyPress(var Key: Char);
  begin
    if (Key=#$20)and TCheckColumn(Columns[SelectedIndex]).Check then
        SaveBoolean;
    if Assigned(TCheckColumn(Columns[SelectedIndex]).OnKeyPress) then
                TCheckColumn(Columns[SelectedIndex]).KeyPress(TCheckColumn(Columns[SelectedIndex]),Key);
    inherited KeyPress(Key);
end;

procedure TTechCheckDBGrid.KeyDown(var Key: Word; Shift: TShiftState);
begin
    if Assigned(TCheckColumn(Columns[SelectedIndex]).OnKeyDown) then
                TCheckColumn(Columns[SelectedIndex]).KeyDown(TCheckColumn(Columns[SelectedIndex]),Key,Shift);
    inherited KeyDown(Key,Shift);
end;

Procedure TTechCheckDBGrid.Change;
begin
        if Assigned(TCheckColumn(Columns[SelectedIndex]).OnChange) then
                TCheckColumn(Columns[SelectedIndex]).Change;
end;

procedure TTechCheckDBGrid.SaveBoolean;
  var column :TCheckColumn;

  begin
    column:=TCheckColumn(Columns[SelectedIndex]);
    if not column.ReadOnly then begin
    if SelectedField <> nil then
    begin
      SelectedField.Dataset.Edit;
      if SelectedField.AsString = column.ValueChecked then
      begin
         SelectedField.AsString := column.ValueUnchecked;
         if FOtono <> '' then
                 BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] := column.ValueUnchecked;
      end
      else begin
         SelectedField.AsString := column.ValueChecked;
         if FOtono <> '' then
                 BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] := column.ValueChecked;
      end;
      SelectedField.Dataset.Post;
    end else begin
    if (FOtono <> '') and (BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = column.ValueChecked) then
      begin
         BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] := column.ValueUnchecked;
      end
      else if (FOtono <> '') and (BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = column.ValueUnchecked) then
      begin
         BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] := column.ValueChecked;
      end else if (FOtono <> '') and (BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = '') then
        BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] := column.ValueChecked;
    end;
    end;
    Refresh;
    inherited;
  end;

procedure TTechCheckDBGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
        Bmp: TBitmap;
        OutRect: TRect;
        BmpWidth,i: Integer;
        SatirCheck: TCheckColumn;
begin
        inherited;
        begin
        if (DataSource <> nil) and (DataSource.DataSet.Active = true) then
        begin
                for i := 0 to Columns.Count - 1 do
                begin
                        if TCheckColumn(Columns[i]).FieldName = FSatirCheckField then
                                SatirCheck := TCheckColumn(Columns[i]);
                end;

                if (FSatirCiz = true) and (((FSatirCheckField <> '') and (SatirCheck.ValueChecked = DataSource.DataSet.FindField(FSatirCheckField).AsString))
                                        or ((Column.FieldName <> '') and (SatirCheck.ValueChecked = BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString]))) then
                begin
                        Canvas.Brush.Color := SatirRengi;
                        Canvas.Font.Color := SatirFontRengi;
                        Canvas.FillRect(Rect);
                        if not (Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint]) then
                        begin
                                if Column.Field.DataType in [ftMemo] then
                                        Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                                else Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.DisplayText);
                        end
                        else Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.DisplayText)+3),rect.Top+2,Column.Field.DisplayText);

                end;

                if TCheckColumn(Column).Check then begin
                        Canvas.FillRect(Rect);
                        if (Column.Field <> nil) and (Column.Field.AsString = TCheckColumn(Column).ValueUnchecked) then
                                DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_BUTTONCHECK)
                        else if (Column.Field <> nil) and (Column.Field.AsString = TCheckColumn(Column).ValueChecked) then
                                DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_CHECKED)
                        else
                                DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_BUTTONCHECK);
                        if (FOtono <> '') then
                        begin
                                if (BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = TCheckColumn(Column).ValueUnchecked) then
                                        DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_BUTTONCHECK)
                                else if (BooleanList.Values[DataSource.DataSet.FindField(FOtono).AsString] = TCheckColumn(Column).ValueChecked) then
                                        DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_CHECKED)
                                else DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_BUTTONCHECK);
                        end;

                end;

                OutRect := Rect;
                if (Column.Field <> nil) and (Column.Field.DataType = ftGraphic) then
                begin
                        Bmp := TBitmap.Create;
                        try
                                Bmp.Assign(Column.Field);
                                BmpWidth := Rect.Right - Rect.Left;
                                OutRect.Right :=Rect.Left + BmpWidth;
                                Canvas.StretchDraw(OutRect, Bmp);
                        finally
                                Bmp.Free;
                        end;
                        OutRect := Rect;
                        OutRect.Left := OutRect.Left + BmpWidth;
                end;

        end;
        end;
end;

procedure TTechCheckDBGrid.TitleClick(Column: TColumn);
var     s: string;
        i: integer;
begin
  inherited TitleClick(Column);
                if TCheckColumn(Column).Siralama = true then
                begin
                if (Column.FieldName <> '') and (Column.Field.FieldKind = fkData) then
                begin
                        if (DataSource <> nil) and (DataSource.DataSet.Active = true) then
                        begin
                        for i := 0 to Columns.Count - 1 do
                        begin
                               Columns.Items[i].Title.Color := FixedColor;
                        end;
                        if adi <> Column.FieldName then
                                sira := false;
                        if sira = false then
                        begin
                                s := ' ASC';
                                Column.Title.Color := TCheckColumn(Column).Sirala1_Rengi;
                                sira := true;
                        end
                        else
                        begin
                                Column.Title.Color := TCheckColumn(Column).Sirala2_Rengi;
                                s := ' DESC';
                                sira := false;
                        end;
                        adi := Column.FieldName;
                    {    if DataSource.DataSet is TQuery then
                        begin
                                if Pos(UpperCase('Order'),UpperCase(TQuery(DataSource.DataSet).SQL.Text)) <> 0 then
                                begin
                                        for i := 0 to TQuery(DataSource.DataSet).SQL.Count -1 do
                                        begin
                                                if (i <= TQuery(DataSource.DataSet).SQL.Count - 1) and (Pos(UpperCase('Order'),UpperCase(TQuery(DataSource.DataSet).SQL[i])) <> 0) then
                                                        TQuery(DataSource.DataSet).SQL.Delete(i);
                                        end;
                                end;
                                TQuery(DataSource.DataSet).Close;
                                TQuery(DataSource.DataSet).SQL.Add('Order by '+adi+s);
                                TQuery(DataSource.DataSet).Open;

                        end else if DataSource.DataSet is TIBQuery then
                        begin
                                if Pos(UpperCase('Order'),UpperCase(TIBQuery(DataSource.DataSet).SQL.Text)) <> 0 then
                                begin
                                        for i := 0 to TIBQuery(DataSource.DataSet).SQL.Count -1 do
                                        begin
                                                if (i <= TIBQuery(DataSource.DataSet).SQL.Count - 1) and (Pos(UpperCase('Order'),UpperCase(TIBQuery(DataSource.DataSet).SQL[i])) <> 0) then
                                                        TIBQuery(DataSource.DataSet).SQL.Delete(i);
                                        end;
                                end;
                                TIBQuery(DataSource.DataSet).Close;
                                TIBQuery(DataSource.DataSet).SQL.Add('Order by '+adi+s);
                                TIBQuery(DataSource.DataSet).Open;
                        end else if DataSource.DataSet is TADOQuery then
                        begin
                                if Pos(UpperCase('Order'),UpperCase(TADOQuery(DataSource.DataSet).SQL.Text)) <> 0 then
                                begin
                                        for i := 0 to TADOQuery(DataSource.DataSet).SQL.Count -1 do
                                        begin
                                                if (i <= TADOQuery(DataSource.DataSet).SQL.Count - 1) and (Pos(UpperCase('Order'),UpperCase(TADOQuery(DataSource.DataSet).SQL[i])) <> 0) then
                                                        TADOQuery(DataSource.DataSet).SQL.Delete(i);
                                        end;
                                end;
                                TADOQuery(DataSource.DataSet).Close;
                                TADOQuery(DataSource.DataSet).SQL.Add('Order by '+adi+s);
                                TADOQuery(DataSource.DataSet).Open;
                        end;  }
                end;
                end;
  end;
end;

function TTechCheckDBGrid.GetEditText(ACol, ARow: Longint): string;
begin
  Result := SelectedField.AsString;
  if Assigned(FOnGetEditText) then FOnGetEditText(Self, ACol, ARow, Result);
end;

procedure TTechCheckDBGrid.ColEnter;
  begin
    if TCheckColumn(Columns[SelectedIndex]).Check then begin
      Editing:=dgEditing in Options;
      Options:=Options-[dgEditing];
    end;
    inherited;
  end;

procedure TTechCheckDBGrid.DoEnter;
  begin
    if TCheckColumn(Columns[SelectedIndex]).Check then begin
      Editing:=dgEditing in Options;
      Options:=Options-[dgEditing];
    end;
    inherited;
  end;

procedure TTechCheckDBGrid.ColExit;
  begin
    if (TCheckColumn(Columns[SelectedIndex]).Check)and Editing then
     Options:=Options+[dgEditing];
    inherited;
  end;

procedure TTechCheckDBGrid.SetFontColor(const Value: TColor);
begin
        FFontColor := Value;
        RecreateWnd;
end;

procedure TTechCheckDBGrid.SetSatirCheckField(const Val: string);
begin
        FSatirCheckField := Val;
        RecreateWnd;
end;

procedure TTechCheckDBGrid.SetSatirCiz(Val: Boolean);
begin
        FSatirCiz := Val;
        RecreateWnd;
end;

procedure TTechCheckDBGrid.SetColor(const Value: TColor);
begin
        FColor := Value;
        RecreateWnd;
end;

procedure TTechCheckDBGrid.DoExit;
  begin
    if (TCheckColumn(Columns[SelectedIndex]).Check)and Editing then
     Options:=Options+[dgEditing];
    inherited;
  end;
procedure TTechCheckDBGrid.SetBaslikButton(Val: Boolean);
begin
        GetBaslikButton := Val;
        RecreateWnd;
end;

function TTechCheckDBGrid.GetVersion: string;
begin
  Result := TechDBGrid_ABOUT;
end;

procedure TTechCheckDBGrid.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlamaz }
end;

procedure TTechCheckDBGrid.CellClick(Column: TColumn);
begin
  begin
  if (DataSource <> nil) and (DataSource.DataSet.Active = true) then
  begin
  if TCheckColumn(Column).Check then SaveBoolean;
  end;
end;
  inherited CellClick(Column);
end;

procedure Register;
begin
  RegisterComponents('TechDB', [TTechCheckDBGrid]);
end;

end.
