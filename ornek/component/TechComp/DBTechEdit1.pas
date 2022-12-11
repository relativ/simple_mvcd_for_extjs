unit TDBTechEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls, TechEdit,
  DB,DBCtrls,Mask,Forms,Graphics;

type

  TTDBTechEdit = class;

  TTechFieldDataLink = class(TDataLink)
  private
    FField: TField;
    FFieldName: string;
    FControl: TComponent;
    FEditing: Boolean;
    FModified: Boolean;
    FOnDataChange: TNotifyEvent;
    FOnEditingChange: TNotifyEvent;
    FOnUpdateData: TNotifyEvent;
    FOnActiveChange: TNotifyEvent;
    function GetCanModify: Boolean;
    procedure SetEditing(Value: Boolean);
    procedure SetField(Value: TField);
    procedure SetFieldName(const Value: string);
    procedure UpdateField;
    procedure UpdateRightToLeft;
  protected
    procedure ActiveChanged; override;
    procedure EditingChanged; override;
    procedure FocusControl(Field: TFieldRef); override;
    procedure LayoutChanged; override;
    procedure RecordChanged(Field: TField); override;
    procedure UpdateData; override;
  public
    constructor Create;
    function Edit: Boolean;
    procedure Modified;
    procedure Reset;
    property CanModify: Boolean read GetCanModify;
    property Control: TComponent read FControl write FControl;
    property Editing: Boolean read FEditing;
    property Field: TField read FField;
    property FieldName: string read FFieldName write SetFieldName;
    property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
    property OnEditingChange: TNotifyEvent read FOnEditingChange write FOnEditingChange;
    property OnUpdateData: TNotifyEvent read FOnUpdateData write FOnUpdateData;
    property OnActiveChange: TNotifyEvent read FOnActiveChange write FOnActiveChange;
  end;


  TTDBTechEdit = class(TCustomMaskEdit)
  private
    f_iAlign: TAlignment;
    BuyukOku,TamBuyukOku: Boolean;
    SayiEdit: Boolean;
    CevirEdit: Boolean;
    color1: TColor;
    color2: TColor;
    LabelName,FUpperTurk: string;
    FDataLink: TTechFieldDataLink;
    FAlignment: TAlignment;
    FCanvas: TControlCanvas;
    FFocused: Boolean;
    procedure ActiveChange(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure EditingChange(Sender: TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetReadOnly: Boolean;
    function GetTextMargins: TPoint;
    procedure ResetMaxLength;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetFocused(Value: Boolean);
    procedure SetReadOnly(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure WMUndo(var Message: TMessage); message WM_UNDO;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure SetGirisColor(gcolor: TColor);
    procedure SetCikisColor(ccolor: TColor);
    procedure SetAlignment(iAlign: TAlignment);
    procedure SetCevirEdit(const Val: Boolean);
    procedure SetVersion(const Val: string);
    function  GetVersion: string;
    procedure BuyukYaz(const Val: Boolean);
    procedure TamBuyukYaz(const Val: Boolean);
    procedure SayiYaz(const Val: Boolean);
    Function VirgulGoster(x:Real):String;
  protected
    GetNumber: real;
    function EditCanModify: Boolean; override;
    procedure Change; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure Reset; override;
    procedure CreateParams(var aParams: TCreateParams); override;

  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function UseRightToLeftAlignment: Boolean; override;
    property Field: TField read GetField;
  published
    property RenkGiris: TColor read color1 write SetGirisColor;
    property RenkCikis: TColor read color2 write SetCikisColor;
    property Hizalama: TAlignment read f_iAlign write SetAlignment default taLeftJustify;
    property BuyukKucuk: Boolean read BuyukOku write BuyukYaz default false;
    property Buyuk: Boolean read TamBuyukOku write TamBuyukYaz default false;
    property Sayi: Boolean read SayiEdit write SayiYaz default false;
    property Ceviri: Boolean read CevirEdit write SetCevirEdit default false;
    property About: string read GetVersion write SetVersion stored FALSE;
    property CevirText: string read LabelName;
    property UpperTurk: string read FUpperTurk;
    property Number: real read GetNumber;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
    property Anchors;
    property AutoSelect;
    property AutoSize;
    property BevelEdges;
    property BevelInner;
    property BevelOuter;
    property BevelKind;
    property BevelWidth;
    property BiDiMode;
    property BorderStyle;
    property CharCase;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

procedure Register;

implementation



{ TTechFieldDataLink }

constructor TTechFieldDataLink.Create;
begin
  inherited Create;
  VisualControl := True;
end;

procedure TTechFieldDataLink.SetEditing(Value: Boolean);
begin
  if FEditing <> Value then
  begin
    FEditing := Value;
    FModified := False;
    if Assigned(FOnEditingChange) then FOnEditingChange(Self);
  end;
end;

procedure TTechFieldDataLink.SetFieldName(const Value: string);
begin
  if FFieldName <> Value then
  begin
    FFieldName :=  Value;
    UpdateField;
  end;
end;

procedure TTechFieldDataLink.SetField(Value: TField);
begin
  if FField <> Value then
  begin
    FField := Value;
    EditingChanged;
    RecordChanged(nil);
    UpdateRightToLeft;
  end;
end;

procedure TTechFieldDataLink.UpdateField;
begin
  if Active and (FFieldName <> '') then
  begin
    FField := nil;
    if Assigned(FControl) then
      SetField(GetFieldProperty(DataSource.DataSet, FControl, FFieldName)) else
      SetField(DataSource.DataSet.FieldByName(FFieldName));
  end else
    SetField(nil);
end;

procedure TTechFieldDataLink.UpdateRightToLeft;
var
  IsRightAligned: Boolean;
  AUseRightToLeftAlignment: Boolean;
begin
  if Assigned(FControl) and (FControl is TWinControl) then
    with FControl as TWinControl do
      if IsRightToLeft then
      begin
        IsRightAligned :=
          (GetWindowLong(Handle, GWL_EXSTYLE) and WS_EX_RIGHT) = WS_EX_RIGHT;
        AUseRightToLeftAlignment :=
          DBUseRightToLeftAlignment(TControl(FControl), Field);
        if (IsRightAligned and (not AUseRightToLeftAlignment)) or
           ((not IsRightAligned) and AUseRightToLeftAlignment) then
          Perform(CM_RECREATEWND, 0, 0);
      end;    
end;

function TTechFieldDataLink.Edit: Boolean;
begin
  if CanModify then inherited Edit;
  Result := FEditing;
end;

function TTechFieldDataLink.GetCanModify: Boolean;
begin
  Result := not ReadOnly and (Field <> nil) and Field.CanModify;
end;

procedure TTechFieldDataLink.Modified;
begin
  FModified := True;
end;

procedure TTechFieldDataLink.Reset;
begin
  RecordChanged(nil);
end;

procedure TTechFieldDataLink.ActiveChanged;
begin
  UpdateField;
  if Assigned(FOnActiveChange) then FOnActiveChange(Self);
end;

procedure TTechFieldDataLink.EditingChanged;
begin
  SetEditing(inherited Editing and CanModify);
end;

procedure TTechFieldDataLink.FocusControl(Field: TFieldRef);
begin
  if (Field^ <> nil) and (Field^ = FField) and (FControl is TWinControl) then
    if TWinControl(FControl).CanFocus then
    begin
      Field^ := nil;
      TWinControl(FControl).SetFocus;
    end;
end;

procedure TTechFieldDataLink.RecordChanged(Field: TField);
begin
  if (Field = nil) or (Field = FField) then
  begin
    if Assigned(FOnDataChange) then FOnDataChange(Self);
    FModified := False;
  end;
end;

procedure TTechFieldDataLink.LayoutChanged;
begin
  UpdateField;
end;

procedure TTechFieldDataLink.UpdateData;
begin
  if FModified then
  begin
    if (Field <> nil) and Assigned(FOnUpdateData) then FOnUpdateData(Self);
    FModified := False;
  end;
end;

{TTDBTechEdit}

function Cevir(Val : extended) : String;
const
  hanex : array[0..2, '0'..'9'] of String = (
    ('', 'Bir ', 'Ýki ', 'Üç ', 'Dört ', 'Beþ ', 'Altý ', 'Yedi ', 'Sekiz ', 'Dokuz '),
    ('', 'On ', 'Yirmi ', 'Otuz ', 'Kýrk ', 'Elli ', 'Atmýþ ', 'Yetmiþ ', 'Seksen ', 'Doksan '),
    ('', 'Yüz ', 'Ýki Yüz ', 'Üç Yüz ', 'Dört Yüz ', 'Beþ Yüz ', 'Altý Yüz ', 'Yedi Yüz ', 'Sekiz Yüz ', 'Dokuz Yüz '));
  katx : array[0..5] of String = ('', 'Bin ', 'Milyon ', 'Milyar ', 'Trilyon ', 'Katrilyon ');
var
  Kat : Integer;
function _Cevir(sy : String) : String;
var
  lsy, hn : Integer;
begin
  Result := ''; if sy = '' then Exit;
  if (sy = '1') and (kat = 1) then begin Result := 'Bin'; Exit; end;
  hn := 0; lsy := length(sy);
  while (hn < 3) and (hn < lsy)
  do
    begin
      Result := hanex[hn, sy[lsy - hn]] + Result;
      Inc(hn);
    end;
  Result := Result + katx[kat];
  Inc(kat);
  if lsy > 3 then Result := _Cevir(copy(sy, 1, lsy - 3)) + Result;
end;
begin
  Result := ''; kat := 0;
  Result := _Cevir(formatFloat('##0', int(Val)));
end;

procedure TTDBTechEdit.SetCevirEdit(const Val: Boolean);
begin
        CevirEdit := Val;
end;

Function TTDBTechEdit.VirgulGoster(x:Real):String;
Begin
        Result := FormatFloat('###,###', x);
end;

procedure TTDBTechEdit.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TTDBTechEdit.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

constructor TTDBTechEdit.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);
    inherited ReadOnly := True;
    ControlStyle := ControlStyle + [csReplicatable];
    FDataLink := TTechFieldDataLink.Create;
    FDataLink.Control := Self;
    FDataLink.OnDataChange := DataChange;
    FDataLink.OnEditingChange := EditingChange;
    FDataLink.OnUpdateData := UpdateData;
    FDataLink.OnActiveChange := ActiveChange;
    color1:=clInfobk;
    color2:=clwhite;
    f_iAlign := taLeftJustify;
    BuyukOku := false;
    if SayiEdit = true then
        text := '';

    if Sayi = true then
    begin
        if DataSource.DataSet.Active = false then
                text := '';
        if DataSource.DataSet.FindField(DataField).AsString = '' then
        begin
                DataSource.DataSet.Edit;
                DataSource.DataSet.FindField(DataField).AsInteger := 0;
                DataSource.DataSet.Post;
        end;
    end;
end;

destructor TTDBTechEdit.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  FCanvas.Free;
  inherited Destroy;
end;

function TTDBTechEdit.UseRightToLeftAlignment: Boolean;
begin
  Result := DBUseRightToLeftAlignment(Self, Field);
end;

procedure TTDBTechEdit.WMUndo(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TTDBTechEdit.WMPaste(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;

procedure TTDBTechEdit.WMCut(var Message: TMessage);
begin
  FDataLink.Edit;
  inherited;
end;


procedure TTDBTechEdit.CMEnter(var Message: TCMEnter); //kutucuða girdiðinde
begin
        Color := color1;
        Change;
        refresh;
    SetFocused(True);
  inherited;
  if SysLocale.FarEast and FDataLink.CanModify then
    inherited ReadOnly := False;
end;

procedure TTDBTechEdit.CMExit(var Message: TCMExit); // kutucuktan çýktýðýnda
begin
        Color := color2;
        refresh;
  try
        FDataLink.UpdateRecord;
  except
    SelectAll;
    SetFocus;
    raise;
  end;
  inherited;
  SetFocused(False);
  CheckCursor;
  DoExit;
end;

procedure TTDBTechEdit.SetFocused(Value: Boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
    if (FAlignment <> taLeftJustify) and not IsMasked then Invalidate;
    FDataLink.Reset;
  end;
end;

function TTDBTechEdit.EditCanModify: Boolean;
begin
  Result := FDataLink.Edit;
end;

procedure TTDBTechEdit.Change;
var
        VigulYeri:Integer;
        Sayi : String;
        i: integer;
        yer: integer;
        uzunluk: integer;
begin
        if SayiEdit = true then
        begin
                if pos(',',Text) = 0 then
                begin
                        if (Text<>'') and (Text <> VirgulGoster(GetNumber))  Then
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
                                GetNumber := StrToFloat(Sayi);
                                SelStart := yer+Length(Text)-uzunluk;
                        end else GetNumber := 0;
                                if CevirEdit = true then
                                        LabelName := Cevir(GetNumber);
                        end;
                end;
        if text <> '' then
        begin
                FUpperTurk := text;
                for i := 1 to length(text) do
                begin
                        if text[i]='a' Then FUpperTurk[i]:='A';
                        if text[i]='b' Then FUpperTurk[i]:='B';
                        if text[i]='c' Then FUpperTurk[i]:='C';
                        if text[i]='ç' Then FUpperTurk[i]:='Ç';
                        if text[i]='d' Then FUpperTurk[i]:='D';
                        if text[i]='e' Then FUpperTurk[i]:='E';
                        if text[i]='f' Then FUpperTurk[i]:='F';
                        if text[i]='g' Then FUpperTurk[i]:='G';
                        if text[i]='ð' Then FUpperTurk[i]:='Ð';
                        if text[i]='h' Then FUpperTurk[i]:='H';
                        if text[i]='ý' Then FUpperTurk[i]:='I';
                        if text[i]='i' Then FUpperTurk[i]:='Ý';
                        if text[i]='j' Then FUpperTurk[i]:='J';
                        if text[i]='k' Then FUpperTurk[i]:='K';
                        if text[i]='l' Then FUpperTurk[i]:='L';
                        if text[i]='m' Then FUpperTurk[i]:='M';
                        if text[i]='n' Then FUpperTurk[i]:='N';
                        if text[i]='o' Then FUpperTurk[i]:='O';
                        if text[i]='ö' Then FUpperTurk[i]:='Ö';
                        if text[i]='p' Then FUpperTurk[i]:='P';
                        if text[i]='r' Then FUpperTurk[i]:='R';
                        if text[i]='s' Then FUpperTurk[i]:='S';
                        if text[i]='þ' Then FUpperTurk[i]:='Þ';
                        if text[i]='t' Then FUpperTurk[i]:='T';
                        if text[i]='u' Then FUpperTurk[i]:='U';
                        if text[i]='ü' Then FUpperTurk[i]:='Ü';
                        if text[i]='v' Then FUpperTurk[i]:='V';
                        if text[i]='y' Then FUpperTurk[i]:='Y';
                        if text[i]='z' Then FUpperTurk[i]:='Z';
                        if text[i]='x' Then FUpperTurk[i]:='X';
                        if text[i]='q' Then FUpperTurk[i]:='Q';
                        if text[i]='w' Then FUpperTurk[i]:='W';
                end;

        end else begin
                FUpperTurk := '';
        end;
  FDataLink.Modified;
  inherited Change;
end;

function TTDBTechEdit.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TTDBTechEdit.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

function TTDBTechEdit.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TTDBTechEdit.SetDataField(const Value: string);
begin
  if not (csDesigning in ComponentState) then
    ResetMaxLength;
  FDataLink.FieldName := Value;
end;

function TTDBTechEdit.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TTDBTechEdit.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

function TTDBTechEdit.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TTDBTechEdit.ResetMaxLength;
var
  F: TField;
begin
  if (MaxLength > 0) and Assigned(DataSource) and Assigned(DataSource.DataSet) then
  begin
    F := DataSource.DataSet.FindField(DataField);
    if Assigned(F) and (F.DataType in [ftString, ftWideString]) and (F.Size = MaxLength) then
      MaxLength := 0;
  end;
end;

procedure TTDBTechEdit.ActiveChange(Sender: TObject);
begin
  ResetMaxLength;
end;

procedure TTDBTechEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
    FDataLink.Edit;
end;

procedure TTDBTechEdit.KeyPress(var Key: Char);
var
        i: integer;
begin
  inherited KeyPress(Key);
  if (Key in [#32..#255]) and (FDataLink.Field <> nil) and
    not FDataLink.Field.IsValidChar(Key) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
  case Key of
    ^H, ^V, ^X, #32..#255:
      FDataLink.Edit;
    #27:
      begin
        FDataLink.Reset;
        SelectAll;
        Key := #0;
      end;
  end;
  if SayiEdit = true then
        begin
                if (Key = #$20) and (text <> '') then
                        text := text + '000';
                IF (not (Key in ['0'..'9'])) and (Key <> ',') and (Key <> #8) and ( Key <> #13) and (Key <> Chr(VK_DELETE)) then
                        Key :=#0;
        end;
        if BuyukOku = true then
        begin
                if (SelStart = 0) or (Text[SelStart] = ' ') or (Text[SelStart] ='.') or (Text[SelStart] =':') or (Text[SelStart] ='[') or (Text[SelStart] ='/') or (Text[SelStart] ='-')
                 or (Text[SelStart] ='+') or (Text[SelStart] =']') or (Text[SelStart] ='(') or (Text[SelStart] =')') or (Text[SelStart] ='{') or (Text[SelStart] ='}') or (tryStrToInt(Text[SelStart],i)) then
                begin
                        if Key='a' Then Key:='A';
                        if Key='b' Then Key:='B';
                        if Key='c' Then Key:='C';
                        if Key='ç' Then Key:='Ç';
                        if Key='d' Then Key:='D';
                        if Key='e' Then Key:='E';
                        if Key='f' Then Key:='F';
                        if Key='g' Then Key:='G';
                        if Key='ð' Then Key:='Ð';
                        if Key='h' Then Key:='H';
                        if Key='ý' Then Key:='I';
                        if Key='i' Then Key:='Ý';
                        if Key='j' Then Key:='J';
                        if Key='k' Then Key:='K';
                        if Key='l' Then Key:='L';
                        if Key='m' Then Key:='M';
                        if Key='n' Then Key:='N';
                        if Key='o' Then Key:='O';
                        if Key='ö' Then Key:='Ö';
                        if Key='p' Then Key:='P';
                        if Key='r' Then Key:='R';
                        if Key='s' Then Key:='S';
                        if Key='þ' Then Key:='Þ';
                        if Key='t' Then Key:='T';
                        if Key='u' Then Key:='U';
                        if Key='ü' Then Key:='Ü';
                        if Key='v' Then Key:='V';
                        if Key='y' Then Key:='Y';
                        if Key='z' Then Key:='Z';
                        if Key='x' Then Key:='X';
                        if Key='q' Then Key:='Q';
                        if Key='w' Then Key:='W';                end
        else Begin
                        if Key='A' Then Key:='a';
                        if Key='B' Then Key:='b';
                        if Key='C' Then Key:='c';
                        if Key='Ç' Then Key:='ç';
                        if Key='D' Then Key:='d';
                        if Key='E' Then Key:='e';
                        if Key='F' Then Key:='f';
                        if Key='G' Then Key:='g';
                        if Key='Ð' Then Key:='ð';
                        if Key='H' Then Key:='h';
                        if Key='I' Then Key:='ý';
                        if Key='Ý' Then Key:='i';
                        if Key='J' Then Key:='j';
                        if Key='K' Then Key:='k';
                        if Key='L' Then Key:='l';
                        if Key='M' Then Key:='m';
                        if Key='N' Then Key:='n';
                        if Key='O' Then Key:='o';
                        if Key='Ö' Then Key:='ö';
                        if Key='P' Then Key:='p';
                        if Key='R' Then Key:='r';
                        if Key='S' Then Key:='s';
                        if Key='Þ' Then Key:='þ';
                        if Key='T' Then Key:='t';
                        if Key='U' Then Key:='u';
                        if Key='Ü' Then Key:='ü';
                        if Key='V' Then Key:='v';
                        if Key='Y' Then Key:='y';
                        if Key='Z' Then Key:='z';
                        if Key='X' Then Key:='x';
                        if Key='Q' Then Key:='q';
                        if Key='W' Then Key:='w';

             end;
             end;
        if TamBuyukOku = true then
        begin
                        if Key='a' Then Key:='A';
                        if Key='b' Then Key:='B';
                        if Key='c' Then Key:='C';
                        if Key='ç' Then Key:='Ç';
                        if Key='d' Then Key:='D';
                        if Key='e' Then Key:='E';
                        if Key='f' Then Key:='F';
                        if Key='g' Then Key:='G';
                        if Key='ð' Then Key:='Ð';
                        if Key='h' Then Key:='H';
                        if Key='ý' Then Key:='I';
                        if Key='i' Then Key:='Ý';
                        if Key='j' Then Key:='J';
                        if Key='k' Then Key:='K';
                        if Key='l' Then Key:='L';
                        if Key='m' Then Key:='M';
                        if Key='n' Then Key:='N';
                        if Key='o' Then Key:='O';
                        if Key='ö' Then Key:='Ö';
                        if Key='p' Then Key:='P';
                        if Key='r' Then Key:='R';
                        if Key='s' Then Key:='S';
                        if Key='þ' Then Key:='Þ';
                        if Key='t' Then Key:='T';
                        if Key='u' Then Key:='U';
                        if Key='ü' Then Key:='Ü';
                        if Key='v' Then Key:='V';
                        if Key='y' Then Key:='Y';
                        if Key='z' Then Key:='Z';
                        if Key='x' Then Key:='X';
                        if Key='q' Then Key:='Q';
                        if Key='w' Then Key:='W';
        end;

end;

procedure TTDBTechEdit.Loaded;
begin
  inherited Loaded;
  ResetMaxLength;
  if (csDesigning in ComponentState) then DataChange(Self);
end;

procedure TTDBTechEdit.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

procedure TTDBTechEdit.Reset;
begin
  FDataLink.Reset;
  SelectAll;
end;

procedure TTDBTechEdit.DataChange(Sender: TObject);
begin
  if FDataLink.Field <> nil then
  begin
    if FAlignment <> FDataLink.Field.Alignment then
    begin
      EditText := '';  {forces update}
      FAlignment := FDataLink.Field.Alignment;
    end;
    EditMask := FDataLink.Field.EditMask;
    if not (csDesigning in ComponentState) then
    begin
      if (FDataLink.Field.DataType in [ftString, ftWideString]) and (MaxLength = 0) then
        MaxLength := FDataLink.Field.Size;
    end;
    if FFocused and FDataLink.CanModify then
      Text := FDataLink.Field.Text
    else
    begin
      EditText := FDataLink.Field.DisplayText;
      if FDataLink.Editing and FDataLink.FModified then
        Modified := True;
    end;
  end else
  begin
    FAlignment := taLeftJustify;
    EditMask := '';
    if SayiEdit = false then
    begin
      if csDesigning in ComponentState then
        EditText := Name else EditText := '';
    end else
        EditText := '';
  end;
end;

procedure TTDBTechEdit.EditingChange(Sender: TObject);
begin
  inherited ReadOnly := not FDataLink.Editing;
end;

procedure TTDBTechEdit.UpdateData(Sender: TObject);
begin
  ValidateEdit;
  FDataLink.Modified;
  if Sayi = true then
        FDataLink.Field.AsFloat := GetNumber
  else  FDataLink.Field.Text := Text;
  //FDataLink.FModified := false;
end;

function TTDBTechEdit.GetTextMargins: TPoint;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  if NewStyleControls then
  begin
    if BorderStyle = bsNone then I := 0 else
      if Ctl3D then I := 1 else I := 2;
    Result.X := SendMessage(Handle, EM_GETMARGINS, 0, 0) and $0000FFFF + I;
    Result.Y := I;
  end else
  begin
    if BorderStyle = bsNone then I := 0 else
    begin
      DC := GetDC(0);
      GetTextMetrics(DC, SysMetrics);
      SaveFont := SelectObject(DC, Font.Handle);
      GetTextMetrics(DC, Metrics);
      SelectObject(DC, SaveFont);
      ReleaseDC(0, DC);
      I := SysMetrics.tmHeight;
      if I > Metrics.tmHeight then I := Metrics.tmHeight;
      I := I div 4;
    end;
    Result.X := I;
    Result.Y := I;
  end;
end;

function TTDBTechEdit.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := inherited ExecuteAction(Action) or (FDataLink <> nil) and
    FDataLink.ExecuteAction(Action);
end;

function TTDBTechEdit.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := inherited UpdateAction(Action) or (FDataLink <> nil) and
    FDataLink.UpdateAction(Action);
end;

procedure TTDBTechEdit.WMPaint(var Message: TWMPaint);
const
  AlignStyle : array[Boolean, TAlignment] of DWORD =
   ((WS_EX_LEFT, WS_EX_RIGHT, WS_EX_LEFT),
    (WS_EX_RIGHT, WS_EX_LEFT, WS_EX_LEFT));
var
  Left: Integer;
  Margins: TPoint;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
  AAlignment: TAlignment;
  ExStyle: DWORD;
begin
  AAlignment := FAlignment;
  if UseRightToLeftAlignment then ChangeBiDiModeAlignment(AAlignment);
  if ((AAlignment = taLeftJustify) or FFocused) and
    not (csPaintCopy in ControlState) then
  begin
    if SysLocale.MiddleEast and HandleAllocated and (IsRightToLeft) then
    begin { This keeps the right aligned text, right aligned }
      ExStyle := DWORD(GetWindowLong(Handle, GWL_EXSTYLE)) and (not WS_EX_RIGHT) and
        (not WS_EX_RTLREADING) and (not WS_EX_LEFTSCROLLBAR);
      if UseRightToLeftReading then ExStyle := ExStyle or WS_EX_RTLREADING;
      if UseRightToLeftScrollbar then ExStyle := ExStyle or WS_EX_LEFTSCROLLBAR;
      ExStyle := ExStyle or
        AlignStyle[UseRightToLeftAlignment, AAlignment];
      if DWORD(GetWindowLong(Handle, GWL_EXSTYLE)) <> ExStyle then
        SetWindowLong(Handle, GWL_EXSTYLE, ExStyle);
    end;
    inherited;
    Exit;
  end;
{ Since edit controls do not handle justification unless multi-line (and
  then only poorly) we will draw right and center justify manually unless
  the edit has the focus. }
  if FCanvas = nil then
  begin
    FCanvas := TControlCanvas.Create;
    FCanvas.Control := Self;
  end;
  DC := Message.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if not (NewStyleControls and Ctl3D) and (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;
      if not Enabled then
        Font.Color := clGrayText;
      if (csPaintCopy in ControlState) and (FDataLink.Field <> nil) then
      begin
        S := FDataLink.Field.DisplayText;
        case CharCase of
          ecUpperCase: S := AnsiUpperCase(S);
          ecLowerCase: S := AnsiLowerCase(S);
        end;
      end else
        S := EditText;
      if PasswordChar <> #0 then FillChar(S[1], Length(S), PasswordChar);
      Margins := GetTextMargins;
      case AAlignment of
        taLeftJustify: Left := Margins.X;
        taRightJustify: Left := ClientWidth - TextWidth(S) - Margins.X - 1;
      else
        Left := (ClientWidth - TextWidth(S)) div 2;
      end;
      if SysLocale.MiddleEast then UpdateTextFlags;
      TextRect(R, Left, Margins.Y, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
end;

procedure TTDBTechEdit.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

procedure TTDBTechEdit.SetAlignment(iAlign: TAlignment);
begin
    if iAlign <> f_iAlign then
        begin
                // Veriyi Kaydet
                f_iAlign := iAlign;

                // editi yeni hizalama sitili ile tekrar oluþtur.
                RecreateWnd;
        end;
end;

function TTDBTechEdit.GetVersion: string;
begin
  Result := TechEdit_ABOUT;
end;

procedure TTDBTechEdit.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlama }
end;

procedure TTDBTechEdit.BuyukYaz(const Val: Boolean);
begin
if (Val <> BuyukOku) And (SayiEdit = false) then
BuyukOku := Val;
SayiEdit := false;
TamBuyukOku := false;

  RecreateWnd;
end;

procedure TTDBTechEdit.TamBuyukYaz(const Val: Boolean);
begin
        TamBuyukOku := Val;
        SayiEdit := false;
        BuyukOku := false;
        RecreateWnd;
end;

procedure TTDBTechEdit.SayiYaz(const Val: Boolean);
begin
  if (Val <> SayiEdit) And (BuyukOku = False) then
   begin
     SayiEdit := Val;
     text :='';
   end;
  RecreateWnd;
end;

procedure TTDBTechEdit.CreateParams(var aParams: TCreateParams);
const
        AlignmentArray: array[TAlignment] of DWord =
                                (ES_LEFT, ES_RIGHT, ES_CENTER);
begin
        inherited CreateParams(aParams);
        aParams.Style := aParams.Style AND (NOT 0) OR (AlignmentArray[f_iAlign]);
end;



procedure Register;
begin
  RegisterComponents('TechDB', [TTDBTechEdit]);
end;

end.
