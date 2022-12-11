unit TechCheckDBGrid;

interface

uses
  Windows, Messages, SysUtils, Classes,Controls, ActnList,Graphics, Grids, DBGrids,
  DBCtrls,Forms, Buttons, StdCtrls,DB, ExtCtrls,ComCtrls, ExtDlgs,DBConsts,
  Menus, Mask, DBTables,ADODB,Dialogs, IBCustomDataSet, IBQuery, ImgList,TechDBGrid,
  TechDBDateTimePicker;

  const
        TechDBGrid_ABOUT = 'Tech Yazýlým/ Serkan Güneþ '#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

type
    TTechCheckDBGrid = class;
    TCheckColumn = class;

    TCheckColumnClickEvent = procedure(Column: TCheckColumn) of object;
    TCheckColumnKeyPressEvent = procedure(Column: TCheckColumn;var Key: Char) of object;
{---------------TCheckColumn-----------------}
    TCheckColumn = class(TColumn)
  private
    FCheck: Boolean;
    FDate: Boolean;
    FMemo: Boolean;
    FValueChecked: String;
    FValueUnChecked: String;
    FOnClick: TCheckColumnClickEvent;
    FOnKeyPress: TCheckColumnKeyPressEvent;
    procedure SetCheck(const Value: boolean);
    procedure SetDate(const Value: boolean);
    procedure SetMemo(const Value: boolean);
    procedure SetValueChecked(const Value: string);
    procedure SetValueUnchecked(const Value: string);
  protected
    procedure Click(Column: TCheckColumn); dynamic;
    procedure KeyPress(Column: TCheckColumn;var Key: Char); dynamic;
  public
    constructor Create(Collection: TCollection); override;
  published
    property Check: Boolean read FCheck write SetCheck default false;
    property Date: Boolean read FDate write SetDate default false;
    property Memo: Boolean read FMemo write SetMemo default false;
    property ValueChecked: String read FValueChecked write SetValueChecked;
    property ValueUnchecked: String read FValueUnchecked write SetValueUnchecked;
    property OnClick: TCheckColumnClickEvent read FOnClick write FOnClick;
    property OnKeyPress: TCheckColumnKeyPressEvent read FOnKeyPress write FOnKeyPress;
  end;

  {---------------TTechCheckDBGrid-----------------}

    TTechCheckDBGrid = class(TDBGrid)
  private
        adi,FOtono,FSatirCheckField: string;
        sirala,sira,Editing,FSatirCiz,
        GetBaslikButton,FEditorMode,FExpanded: boolean;
        siralacolor1,siralacolor2: TColor;
        FColor,FFontColor: TColor;
        GridDate: TTechDBDateTimePicker;
        GridMemo: TDBMemo;
        TechDBGrid: TTechDBGrid;
        FOptions: TGridOptions;
        FHitTest: TPoint;
        FOnGetEditText: TGetEditEvent;
        GetDataSource: TDataSource;
        procedure SaveBoolean;
        function GetVersion: string;
        procedure SetVersion(const Val: string);
        procedure SetSatirCheckField(const Val: string);
        procedure SetOptions(Value: TGridOptions);
        procedure SetOtono(const Val: string);
        procedure SetColor(const Value: TColor);
        procedure SetFontColor(const Value: TColor);
        procedure SetSirala(Val: Boolean);
        procedure SetSatirCiz(Val: Boolean);
        procedure SetBaslikButton(Val: Boolean);
        procedure SetSirala1_Rengi(Val: TColor);
        procedure SetSirala2_Rengi(Val: TColor);
        procedure WMSetCursor(var Msg: TWMSetCursor); message WM_SETCURSOR;
        procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
        procedure SetDataSource(Value: TDataSource);
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
        procedure ColEnter; override;
        procedure ColExit; override;
        procedure DoEnter; override;
        Procedure DoExit; override;
        procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
        procedure DrawCell(ACol, ARow: Longint; ARect: TRect;
      AState: TGridDrawState); override;
        procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  public
        constructor Create(AOwner:TComponent); override;
  published
        BooleanList: TStringList;
        function RowChecked(Column: TColumn): Boolean;
        property Siralama: Boolean read sirala write SetSirala;
        property Expanded: Boolean read FExpanded;
        property BaslikButton: Boolean read GetBaslikButton write SetBaslikButton;
        property Sirala1_Rengi: TColor read siralacolor1 write SetSirala1_Rengi;
        property Sirala2_Rengi: TColor read siralacolor2 write SetSirala2_Rengi;
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
        property AltDataSource: TDataSource read GetDataSource write SetDataSource;
  end;

  procedure Register;

implementation

//------------------- TCheckColumn -----------------

constructor TCheckColumn.Create(Collection: TCollection);
  begin
    inherited;
    FValueChecked:='1';
    FValueUnchecked:='0';
  end;

procedure TCheckColumn.SetCheck(const Value: boolean);
  begin
    FCheck:=Value;
    FDate := false;
    FMemo := false;
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

procedure TCheckColumn.SetDate(const Value: boolean);
  begin
    FDate:=Value;
    FMemo := false;
    FCheck := false;
    Changed(False);
  end;
procedure TCheckColumn.SetMemo(const Value: boolean);
  begin
    FMemo:=Value;
    FDate:=false;
    FCheck := false;
    Changed(False);
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

//------------------- grid -----------------

constructor TTechCheckDBGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
        BooleanList := TStringList.Create;
        GridMemo := TDBMemo.Create(self);
        GridMemo.Parent := self;
        GridMemo.BorderStyle := bsNone;
        GridMemo.Visible := false;

        GridDate := TTechDBDateTimePicker.Create(self);
        GridDate.Parent := self;
        GridDate.CalColors.TitleBackColor := clGray;
        GridDate.Visible := false;
end;

procedure TTechCheckDBGrid.SetDataSource(Value: TDataSource);
begin
        GetDataSource := Value;
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
        BmpWidth: Integer;
begin
        inherited;
        begin
        if (DataSource <> nil) and (DataSource.DataSet.Active = true) then
        begin
                if (FSatirCiz = true) and (RowChecked(Column) = true) then
                begin
                        Canvas.Brush.Color := SatirRengi;
                        Canvas.Font.Color := SatirFontRengi;
                        Canvas.FillRect(Rect);
                        if (Column.FieldName <> '') and (TCheckColumn(Column).Check = false) then
                        if not (Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint]) then
                        begin
                                if Column.Field.DataType in [ftMemo] then
                                        Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                                else Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.AsString);
                        end
                        else Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+3),rect.Top+2,Column.Field.AsString);

                end;

                if (FSatirCiz = true) and (FSatirCheckField <> '') and (DataSource.DataSet.FindField(FSatirCheckField).AsString = TCheckColumn(Column).ValueChecked) then
                begin
                        Canvas.Brush.Color := SatirRengi;
                        Canvas.Font.Color := SatirFontRengi;
                        Canvas.FillRect(Rect);
                        if (Column.FieldName <> '') and (TCheckColumn(Column).Check = false) then
                        if not (Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint]) then
                        begin
                                if Column.Field.DataType in [ftMemo] then
                                        Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                                else Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.AsString);
                        end
                        else Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.AsString)+3),rect.Top+2,Column.Field.AsString);

                end;

                if TCheckColumn(Column).Check then begin
                        Canvas.FillRect(Rect);
                        if (Column.Field <> nil) and (Column.Field.AsString = TCheckColumn(Column).ValueUnchecked) then
                                DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_BUTTONCHECK)
                        else if (Column.Field <> nil) and (Column.Field.AsString = TCheckColumn(Column).ValueChecked) then
                                DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_CHECKED)
                        else
                                DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,DFCS_BUTTONCHECK);
                        if (FOtono <> '') and (Column.FieldName = '') then
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

                if (gdFocused in State) and (EditorMode = true) and (TCheckColumn(Column).Date = true) then
                begin
                        GridDate.Visible := true;
                        GridDate.DataSource := DataSource;
                        GridDate.DataField := Column.FieldName;
                        GridDate.Top := Rect.Top;
                        GridDate.Left := Rect.Left;
                        GridDate.Height := Rect.Bottom - Rect.Top+2;
                        GridDate.Width := Rect.Right - Rect.Left+2;
                        GridDate.SetFocus;
                end;

                if (TCheckColumn(Column).Memo = true) then
                begin
                        GridMemo.DataSource := DataSource;
                        GridMemo.DataField := Column.FieldName;
                        GridMemo.Top := Rect.Top;
                        GridMemo.Left := Rect.Left;
                        GridMemo.Height := Rect.Bottom - Rect.Top+2;
                        GridMemo.Width := Rect.Right - Rect.Left+2;
                        GridMemo.Visible := true;
                        GridMemo.SetFocus;
                end;

        end;
        end;
end;

procedure TTechCheckDBGrid.TitleClick(Column: TColumn);
var     s: string;
        i: integer;
begin
  inherited TitleClick(Column);
                if sirala = true then
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
                                Column.Title.Color :=siralacolor1;
                                sira := true;
                        end
                        else
                        begin
                                Column.Title.Color := siralacolor2;
                                s := ' DESC';
                                sira := false;
                        end;
                        adi := Column.FieldName;
                        if DataSource.DataSet is TQuery then
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
                        end;
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

procedure TTechCheckDBGrid.SetSirala(Val: Boolean);
begin
        sirala := Val;
        RecreateWnd;
end;

procedure TTechCheckDBGrid.SetSirala1_Rengi(Val: TColor);
begin
        siralacolor1 := Val;
        RecreateWnd;
end;

procedure TTechCheckDBGrid.SetSirala2_Rengi(Val: TColor);
begin
        siralacolor2 := Val;
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

procedure TTechCheckDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
        if Button = mbLeft then
        begin
                if X <= 10 then
                begin
                        if AltDataSource <> nil then
                        begin
                                if FExpanded then
                                begin
                                        FExpanded := false;
                                        TechDBGrid.Visible := false;
                                        Realign
                                end else begin
                                        FExpanded := true;
                                        TechDBGrid:= TTechDBGrid.Create(self);
                                        if Y+100 <= Height then
                                                TechDBGrid.Top := Y
                                        else TechDBGrid.Top := Height - 125;
                                        TechDBGrid.Left := 11;
                                        TechDBGrid.Width := Width - 11;
                                        TechDBGrid.Height := 100;
                                        TechDBGrid.DataSource := AltDataSource;
                                        TechDBGrid.FixedColor := FixedColor;
                                        TechDBGrid.GridLineWidth := 0;
                                        TechDBGrid.Color := Color;
                                        TechDBGrid.Font := Font;
                                        TechDBGrid.TitleFont := TitleFont;
                                        TechDBGrid.Options := Options - [dgIndicator];
                                        TechDBGrid.BorderStyle := bsNone;
                                        TechDBGrid.Parent := self;
                                end;
                        end;
                end;
        end;
        inherited MouseDown(Button,Shift,X,Y);
end;

procedure TTechCheckDBGrid.DrawCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState);

  procedure _DrawExpandButton(AX, AY: Integer; AExpanded: Boolean);
  begin
    Canvas.Pen.Color := clBlack;
    Canvas.Brush.Color := FixedColor;
    Canvas.Rectangle(AX, AY, AX + 10, AY + 11);
    Canvas.Polyline([Point(AX + 2, AY + 5), Point(AX + 9, AY + 5)]);
    if not AExpanded then
      Canvas.Polyline([Point(AX + 5, AY + 2), Point(AX + 5, AY + 9)]);
  end;
    procedure _YanCizgi(AX, AY,AXL,AYL: Integer);
    begin
        Canvas.Brush.Color := FixedColor;
        Canvas.FillRect(Rect(AX,0,AXL,AYL));
    end;
begin
inherited;
    if (ACol = 0) and (ARow > 0) and (AltDataSource <> nil) then
    begin
        _YanCizgi(0,0,15,height);
        _DrawExpandButton(ARect.Left, ARect.Top + 3, FExpanded);
    end;
end;

procedure Register;
begin
  RegisterComponents('TechDB', [TTechCheckDBGrid]);
end;

end.
