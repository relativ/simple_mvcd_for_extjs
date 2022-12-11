unit TechDBGrid;

interface

uses
  Windows, Messages,Variants, SysUtils, Classes, Controls,Graphics, Grids, DBGrids,
  DBCtrls,Forms, Buttons, StdCtrls,DB, ExtCtrls,ComCtrls,Menus, Mask,
  Dialogs,ADODB, IBCustomDataSet, IBQuery, ImgList,TechDBDateTimePicker,
  ExtDlgs;

  const
  TechDBGrid_ABOUT = 'Tech Yaz�l�m/ Serkan G�ne� '#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

type
    TTechDBGrid = class;
    TTechColumn = class;

    TSortMarker=(smNone, smDown, smUp);

    TTechColumnClickEvent     = procedure(Column: TTechColumn) of object;
    TTechColumnKeyPressEvent  = procedure(Column: TTechColumn;var Key: Char) of object;
    TTechColumnKeyDownEvent   = procedure(Column: TTechColumn; var Key: Word; Shift: TShiftState) of object;
    TTechEditButtonClickEvent = procedure(Column: TTechColumn) of object;

  TDBTechGridInplaceEdit = class(TInplaceEditList)
  private
    FDataList: TDBLookupListBox;
    FUseDataList: Boolean;
    FLookupSource: TDatasource;
    FSifir: boolean;
    FGetNumber: Real;
    procedure WMKillFocus(var Message: TMessage); message WM_KillFocus;
  protected
    procedure Change; override;
    procedure CloseUp(Accept: Boolean); override;
    procedure DoEditButtonClick; override;
    procedure DropDown; override;
    procedure UpdateContents; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    constructor Create(Owner: TComponent); override;
    property  DataList: TDBLookupListBox read FDataList;
    property GetNumber : real read FGetNumber write FGetNumber;
  published

  end;

  TTechColumn = class(TColumn)
  private
    FOnClick: TTechColumnClickEvent;
    FOnKeyPress: TTechColumnKeyPressEvent;
    FOnKeyDown: TTechColumnKeyDownEvent;
    FOnEditButtonClick: TTechEditButtonClickEvent;
    siralacolor1: TColor;
    siralacolor2: TColor;
    sirala,FCokluTus: boolean;
    FAssignedValues: TColumnValues;
    FVade: string;
    procedure SetSirala(Val: Boolean);
    procedure SetSirala1_Rengi(Val: TColor);
    procedure SetSirala2_Rengi(Val: TColor);
  protected
    function  GetOwner: TPersistent; override;
    procedure Click(Column: TTechColumn); dynamic;
    procedure KeyPress(Column: TTechColumn; var Key: Char); dynamic;
    procedure KeyDown(Column: TTechColumn; var Key: Word; Shift: TShiftState); dynamic;
    procedure EditButtonClick; dynamic;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    property  AssignedValues: TColumnValues read FAssignedValues;
  published
    property Siralama: Boolean read sirala write SetSirala;
    property CokluTus: Boolean read FCokluTus write FCokluTus;
    property Sirala1_Rengi: TColor read siralacolor1 write SetSirala1_Rengi stored true;
    property Sirala2_Rengi: TColor read siralacolor2 write SetSirala2_Rengi stored true;
    property Vade: string read FVade write FVade;
    property OnEditButtonClick: TTechEditButtonClickEvent read FOnEditButtonClick write FOnEditButtonClick;
    property OnClick: TTechColumnClickEvent read FOnClick write FOnClick;
    property OnKeyPress: TTechColumnKeyPressEvent read FOnKeyPress write FOnKeyPress;
    property OnKeyDown: TTechColumnKeyDownEvent read FOnKeyDown write FOnKeyDown;
  end;
  
  {---------------TTechDBGrid-----------------}

    TTechDBGrid = class(TDBGrid)
  private
        FEditorMode,FSatirRenk: boolean;
        FSatirRenk1,FSatirFontRengi,FSatirFontRengi2: TColor;
        FSatirRenk2: TColor;
        FOptions: TGridOptions;
        FHitTest: TPoint;
        FDataLink: TGridDataLink;
      //  function AcquireFocus: Boolean;
        procedure SetOptions(Value: TGridOptions);
        procedure WMSetCursor(var Msg: TWMSetCursor); message WM_SETCURSOR;
        procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
        function GetVersion: string;
        procedure SetVersion(const Val: string);
        procedure SetSatirRenk(const Val: boolean);
        procedure SetSatirRenk1(const Val: TColor);
        procedure SetSatirRenk2(const Val: TColor);
        procedure SetSatirFontRengi(const Val: TColor);
        procedure SetSatirFontRengi2(const Val: TColor);
  protected
        procedure CalcSizingState(X, Y: Integer; var State: TGridState;
                var Index: Longint; var SizingPos, SizingOfs: Integer;
                var FixedInfo: TGridDrawInfo); override;
        procedure TitleClick(Column: TColumn); override;
        function  CreateColumns: TDBGridColumns; override;
        procedure EditButtonClick; override;
        procedure KeyPress(var Key: Char); override;
        procedure KeyDown(var Key: Word; Shift: TShiftState); override;
        function  CreateEditor: TInplaceEdit; override;
        procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState); override;
        procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
        procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
        {function DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint): Boolean; override;
        function DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint): Boolean; override;  }
//    function CellRect(ACol, ARow: Longint): TRect; override;
  public
        constructor Create(AOwner:TComponent); override;
        destructor Destroy; override;
  published
        property About: string read GetVersion write SetVersion;
        property SatirRenk: boolean read FSatirRenk write SetSatirRenk;
        property SatirRenk1: TColor read FSatirRenk1 write SetSatirRenk1;
        property SatirFontRengi: TColor read FSatirFontRengi write SetSatirFontRengi;
        property SatirFontRengi2: TColor read FSatirFontRengi2 write SetSatirFontRengi2;
        property SatirRenk2: TColor read FSatirRenk2 write SetSatirRenk2;
        property OnContextPopup;
        property GridLineWidth;
        property FixedRows;
        property DefaultRowHeight;
        property GridOptions: TGridOptions read FOptions write SetOptions
        default [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine,
        goRangeSelect];
        property Selection;
        property DefaultColWidth;
        property OnMouseWheelDown;
        property OnMouseWheelUp;
  end;


 var
        i: integer;
        adi: string;
        sira: boolean;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBGrid]);
end;

procedure KillMessage(Wnd: HWnd; Msg: Integer);
// Talep edilen mesaj silinir
// any WM_QUIT msgs that PeekMessage may also return
var
  M: TMsg;
begin
  M.Message := 0;
  if PeekMessage(M, Wnd, Msg, Msg, pm_Remove) and (M.Message = WM_QUIT) then
    PostQuitMessage(M.wparam);
end;

Function VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat('###,###', x);
end;

//--------TDBTechGridInplaceEdit-----

constructor TDBTechGridInplaceEdit.Create(Owner: TComponent);
begin
  inherited Create(Owner);
  FLookupSource := TDataSource.Create(Self);

end;

procedure TDBTechGridInplaceEdit.WMKillFocus(var Message: TMessage);
begin
        if FSifir = true then
        begin
                TTechDBGrid(Grid).DataSource.DataSet.Edit;
                TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Field.AsString := Text;
                TTechDBGrid(Grid).DataSource.DataSet.Post;
                FSifir := false;
        end;
        inherited;
end;

procedure TDBTechGridInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
var
        Date: TDateTime;
begin
  if (EditStyle = esEllipsis) and (Key = VK_RETURN) and (Shift = [ssCtrl]) then
  begin
    DoEditButtonClick;
    KillMessage(Handle, WM_CHAR);
  end
  else begin
        if (TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Field.DataType = ftDate) or
                (TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Field.DataType = ftDateTime) then
        begin
                if (TryStrToDateTime(Text,Date) = false) and ((Key = VK_UP) or (Key = VK_DOWN) or (Key = VK_RETURN)) then
                begin
                        TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Vade := text;
                        text := ''; 
                end;
        end else if TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).CokluTus then
        begin
                        if (key = VK_DIVIDE) then
                        begin
                                Text := Text+'000';
                                SelStart := Length(Text);
                                FSifir := true;
                                Key := 0;
                        end else if (key = VK_MULTIPLY) then
                        begin
                                Text := Text+'00';
                                SelStart := Length(Text);
                                FSifir := true;
                                Key := 0;
                        end;
                        if (Key = VK_UP) and (FSifir = true) then
                        begin
                                FSifir := false;
                                TTechDBGrid(Grid).DataSource.DataSet.Edit;
                                TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Field.AsString := Text;
                                if Assigned(TTechDBGrid(Grid).OnKeyDown) then
                                        TTechDBGrid(Grid).OnKeyDown(Grid,Key,Shift);
                        end else if (Key = VK_DOWN) and (FSifir = true) then
                        begin
                                FSifir := false;
                                TTechDBGrid(Grid).DataSource.DataSet.Edit;
                                TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Field.AsString := Text;
                                if Assigned(TTechDBGrid(Grid).OnKeyDown) then
                                        TTechDBGrid(Grid).OnKeyDown(Grid,Key,Shift);

                        end;

          end;
    inherited KeyDown(Key, Shift);
  end;
end;

procedure TDBTechGridInplaceEdit.KeyPress(var Key: Char);
{var
        VigulYeri:Integer;
        Sayi : String;
        yer: integer;
        uzunluk: integer; }
begin
        if (Key = #13) and (FSifir = true) then
        begin
                FSifir := false;
                TTechDBGrid(Grid).DataSource.DataSet.Edit;
                TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Field.AsString := Text;
                if Assigned(TTechDBGrid(Grid).OnKeyPress) then
                        TTechDBGrid(Grid).OnKeyPress(Grid,Key);
        end;
       { if TTechColumn(TTechDBGrid(Grid).Columns[TTechDBGrid(Grid).SelectedIndex]).Basamakla = true then
        begin
                if (Key in ['0'..'9']) or (Key = ',') then
                        text := text + Key;

                IF (Key <> ',') and (Key <> #8) and ( Key <> #13) and (Key <> Chr(VK_DELETE)) then
                        Key :=#0;
                if Key = #8 then
                begin
                        Key := #0;
                        Sayi:=Text;
                        Delete(Sayi,SelStart,SelStart);
                        Text := Sayi;
                end;

                if pos(',',Text) = 0 then
                begin
                        if (Text<>'') and (Text <> VirgulGoster(FGetNumber))  Then
                        Begin
                                yer := SelStart;
                                uzunluk := Length(Text);
                                Sayi:=Text;
                                VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                        VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                        VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                        VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                        VigulYeri :=Pos('.', Sayi);
                                if VigulYeri>0 Then Delete(Sayi,VigulYeri,1);
                                if Length(Text) > 3 then
                                        Text:=VirgulGoster(StrToFloat(Sayi));
                                FGetNumber := StrToFloat(Sayi);
                                SelStart := yer+Length(Text)-uzunluk;
                        end else FGetNumber := 0;
                        end;
                end;   }
        inherited KeyPress(Key);
end;

procedure TDBTechGridInplaceEdit.Change;
begin
        inherited Change;

end;

procedure TDBTechGridInplaceEdit.CloseUp(Accept: Boolean);
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
        with TTechDBGrid(Grid), Columns[SelectedIndex].Field do
        begin
          MasterField := DataSet.FieldByName(KeyFields);
          if MasterField.CanModify and FDataLink.Edit then
            MasterField.Value := ListValue;
        end
      else
        if (not VarIsNull(ListValue)) and EditCanModify then
          with TTechDBGrid(Grid), Columns[SelectedIndex].Field do
            Text := ListValue;
  end;
end;

procedure TDBTechGridInplaceEdit.DoEditButtonClick;
begin
        TTechDBGrid(Grid).EditButtonClick;
end;

procedure TDBTechGridInplaceEdit.DropDown;
var
  Column: TTechColumn;
begin
  if not ListVisible then
  begin
    with TTechDBGrid(Grid) do
      Column := TTechColumn(Columns[SelectedIndex]);
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

procedure TDBTechGridInplaceEdit.UpdateContents;
var
  Column: TTechColumn;
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
  with TTechDBGrid(Grid) do
    Column := TTechColumn(Columns[SelectedIndex]);
  Self.ReadOnly := Column.ReadOnly;
  Font.Assign(Column.Font);
  ImeMode := Column.ImeMode;
  ImeName := Column.ImeName;
end;

//----------TTechColumn-------------
constructor TTechColumn.Create(Collection: TCollection);
  begin
    inherited Create(Collection);
  end;

destructor TTechColumn.Destroy;
begin
        inherited Destroy;
end;

function TTechColumn.GetOwner: TPersistent;
begin
  Result := TTechDBGrid(Grid);
end;

procedure TTechColumn.SetSirala(Val: Boolean);
begin
        sirala := Val;
end;

procedure TTechColumn.SetSirala1_Rengi(Val: TColor);
begin
        siralacolor1 := Val;
end;

procedure TTechColumn.SetSirala2_Rengi(Val: TColor);
begin
        siralacolor2 := Val;
end;
procedure TTechColumn.Click(Column: TTechColumn);
begin
  if Assigned(FOnClick) then FOnClick(Column);
end;

procedure TTechColumn.KeyPress(Column: TTechColumn;var Key: Char);
begin
  if Assigned(FOnKeyPress) then FOnKeyPress(Column,Key);
end;

procedure TTechColumn.KeyDown(Column: TTechColumn; var Key: Word; Shift: TShiftState);
begin
  if Assigned(FOnKeyDown) then FOnKeyDown(Column,Key,Shift);
end;

procedure TTechColumn.EditButtonClick;
begin
  if Assigned(FOnEditButtonClick) then
    FOnEditButtonClick(Self)
  else
        GetGrid.ShowPopupEditor(Self);
end;

//------------------- grid -----------------

constructor TTechDBGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := DataLink;
end;

destructor TTechDBGrid.Destroy;
begin
        inherited Destroy;
end;

{function TTechDBGrid.AcquireFocus: Boolean;
begin
  Result := True;
  if FAcquireFocus and CanFocus and not (csDesigning in ComponentState) then
    begin
      if not Self.Focused then
        Self.SetFocus;
      Result := Focused or (InplaceEditor <> nil) and InplaceEditor.Focused;
    end;
end;

function TTechDBGrid.DoMouseWheelDown(Shift: TShiftState; MousePos: TPoint): Boolean;
begin
  Result := False;
  if Assigned(OnMouseWheelDown) then
    OnMouseWheelDown(Self, Shift, MousePos, Result);
  if not Result then
    begin
      if (not AcquireFocus) then
        Exit;
      if DataSource.DataSet.Active then
        begin
          DataSource.DataSet.Next;
          Scroll(DataSource.DataSet.RecNo);
          Result := true;
          Realign;
          Refresh;
        end;
    end;
end;

function TTechDBGrid.DoMouseWheelUp(Shift: TShiftState; MousePos: TPoint): Boolean;
begin
  Result := False;
  if Assigned(OnMouseWheelUp) then
    OnMouseWheelUp(Self, Shift, MousePos, Result);
  if not Result then
    begin
      if (not AcquireFocus) or (DataSource.DataSet.RecNo = 1) then
        Exit;
      if DataSource.DataSet.Active then
        begin
          DataSource.DataSet.Prior;
          Scroll(DataSource.DataSet.RecNo);
          Result := true;
          Realign;
          Refresh;
        end;
    end;
end; }


function TTechDBGrid.CreateEditor: TInplaceEdit;
begin
  Result := TDBTechGridInplaceEdit.Create(Self);
end;

function TTechDBGrid.CreateColumns: TDBGridColumns;
  begin
    Result := TDBGridColumns.Create(Self, TTechColumn);
end;

procedure TTechDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
        inherited;
        if Button = mbLeft then
        if Assigned(TTechColumn(Columns[SelectedIndex]).OnClick) then
                TTechColumn(Columns[SelectedIndex]).Click(TTechColumn(Columns[SelectedIndex]));
end;

procedure TTechDBGrid.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
        inherited MouseMove(Shift,X,Y);
end;

procedure TTechDBGrid.KeyPress(var Key: Char);
begin
        TTechColumn(Columns[SelectedIndex]).KeyPress(TTechColumn(Columns[SelectedIndex]),Key);
    inherited KeyPress(Key);

end;

procedure TTechDBGrid.KeyDown(var Key: Word; Shift: TShiftState);
begin
    if Assigned(TTechColumn(Columns[SelectedIndex]).OnKeyDown) then
                TTechColumn(Columns[SelectedIndex]).KeyDown(TTechColumn(Columns[SelectedIndex]),Key,Shift);

    inherited KeyDown(Key,Shift);
end;

procedure TTechDBGrid.EditButtonClick;
begin
    if Assigned(TTechColumn(Columns[SelectedIndex]).OnEditButtonClick) then
                TTechColumn(Columns[SelectedIndex]).EditButtonClick;
end;

procedure TTechDBGrid.SetOptions(Value: TGridOptions);
begin
  if FOptions <> Value then
  begin
    if goRowSelect in Value then
      Exclude(Value, goAlwaysShowEditor);
    FOptions := Value;
    if not FEditorMode then
      if goAlwaysShowEditor in Value then
        ShowEditor else
        HideEditor;
    InvalidateGrid;
  end;
end;

procedure TTechDBGrid.CalcSizingState(X, Y: Integer; var State: TGridState;
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

procedure TTechDBGrid.WMNCHitTest(var Msg: TWMNCHitTest);
begin
  DefaultHandler(Msg);
  FHitTest := ScreenToClient(SmallPointToPoint(Msg.Pos));
end;

procedure TTechDBGrid.WMSetCursor(var Msg: TWMSetCursor);
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

procedure TTechDBGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
        Bmp: TBitmap;
        OutRect: TRect;
        BmpWidth: Integer;
begin

        if FSatirRenk = true then
        begin
                if DataSource.DataSet.RecNo mod 2 > 0 then
                begin
                        Canvas.Brush.Color := FSatirRenk1;
                        Canvas.Font.Color := FSatirFontRengi;
                        Canvas.FillRect(Rect);
                        if not (Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint]) then
                        begin
                                if Column.Field.DataType in [ftMemo] then
                                        Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                                else Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.DisplayText);
                        end
                        else Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.DisplayText)+3),rect.Top+2,Column.Field.DisplayText);
                end else begin
                        Canvas.Brush.Color := FSatirRenk2;
                        Canvas.Font.Color := FSatirFontRengi2;
                        Canvas.FillRect(Rect);
                        if not (Column.Field.DataType in [ftInteger,ftSmallint,ftFloat,ftAutoInc,ftLargeint]) then
                        begin
                                if Column.Field.DataType in [ftMemo] then
                                        Canvas.TextOut(rect.Left+2,rect.Top+2,'(Not)')
                                else Canvas.TextOut(rect.Left+2,rect.Top+2,Column.Field.DisplayText);
                        end
                        else Canvas.TextOut(rect.Right-(Canvas.TextWidth(Column.Field.DisplayText)+3),rect.Top+2,Column.Field.DisplayText);
                end;
        end;
        
        inherited;
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

procedure TTechDBGrid.TitleClick(Column: TColumn);
var s: string;
    i: integer;
begin
  inherited TitleClick(Column);
                if TTechColumn(Column).Siralama = true then
                begin
                if (Column.FieldName <> '') and (Column.Field.FieldKind = fkData) then
                begin
                if (DataSource <> nil) and (DataSource.DataSet.Active = true) then
                begin
                        for i := 0 to Columns.Count - 1 do
                                Columns.Items[i].Title.Color := FixedColor;
                        if adi <> Column.FieldName then
                                sira := false;
                        if sira = false then
                        begin
                                s := ' ASC';
                                Column.Title.Color :=TTechColumn(Column).Sirala1_Rengi;
                                sira := true;
                        end else begin
                                Column.Title.Color := TTechColumn(Column).Sirala2_Rengi;
                                s := ' DESC';
                                sira := false;
                        end;
                        adi := Column.FieldName;
                      {  if DataSource.DataSet is TQuery then
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
                        end;   }
                end;
                end;
                end;
end;
function TTechDBGrid.GetVersion: string;
begin
  Result := TechDBGrid_ABOUT;
end;

procedure TTechDBGrid.SetVersion(const Val: string);
begin
  { Kay�t giri�i yap�lamaz }
end;

procedure TTechDBGrid.SetSatirRenk(const Val: boolean);
begin
        FSatirRenk := Val;
end;

procedure TTechDBGrid.SetSatirRenk1(const Val: TColor);
begin
        FSatirRenk1 :=  Val;
end;

procedure TTechDBGrid.SetSatirRenk2(const Val: TColor);
begin
        FSatirRenk2 :=  Val;
end;

procedure TTechDBGrid.SetSatirFontRengi(const Val: TColor);
begin
        FSatirFontRengi :=  Val;
end;

procedure TTechDBGrid.SetSatirFontRengi2(const Val: TColor);
begin
        FSatirFontRengi2 :=  Val;
end;

end.
