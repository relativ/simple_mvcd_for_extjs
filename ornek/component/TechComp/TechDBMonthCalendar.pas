unit TechDBMonthCalendar;

interface

uses
  Variants, Windows, SysUtils, Messages, Controls, Classes,
     Graphics, Menus, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls, DB,DBCtrls,dialogs;
  const
  TechDBDateTimePicker_ABOUT = 'Tech Yaz�l�m / Serkan G�ne�'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';


type
  TTechDBMonthCalendar = class;

  TTechMonthCalendarDataLink=class(TDataLink)
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
  protected
        procedure ActiveChanged; override;
        procedure EditingChanged; override;
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
  TTechDBMonthCalendar = class(TMonthCalendar)
  private
    FDataLink: TTechMonthCalendarDataLink;
    FFocused: Boolean;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure SetFocused(Value: Boolean);
    procedure ActiveChange(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure UpdateData(Sender: TObject);
    procedure EditingChange(Sender: TObject);
    function GetField: string;
    procedure SetField(const Value: string);
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    function GetDataField: TField;
  protected
    procedure Click; override;
  public
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy;                   override;
    property Field: TField read GetDataField;
  published
    property DataSource:TDataSource read GetDataSource write SetDataSource;
    property DataField: string read GetField write SetField;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBMonthCalendar]);
end;

constructor TTechMonthCalendarDataLink.Create;
begin
  inherited Create;
  VisualControl := True;
end;

function TTechMonthCalendarDataLink.GetCanModify: Boolean;
begin
  Result := not ReadOnly and (Field <> nil) and Field.CanModify;
end;

procedure TTechMonthCalendarDataLink.SetEditing(Value: Boolean);
begin
  if FEditing <> Value then
  begin
    FEditing := Value;
    FModified := False;
    if Assigned(FOnEditingChange) then FOnEditingChange(Self);
  end;
end;

procedure TTechMonthCalendarDataLink.SetField(Value: TField);
begin
  if FField <> Value then
  begin
    FField := Value;
    EditingChanged;
    RecordChanged(nil);
  end;
end;

procedure TTechMonthCalendarDataLink.SetFieldName(const Value: string);
begin
  if FFieldName <> Value then
  begin
    FFieldName :=  Value;
    UpdateField;
  end;
end;

procedure TTechMonthCalendarDataLink.UpdateField;
begin
  if Active and (FFieldName <> '') then
  begin
    if Assigned(FControl) then
      SetField(GetFieldProperty(DataSource.DataSet, FControl, FFieldName)) else
      SetField(DataSource.DataSet.FieldByName(FFieldName));
  end else
    SetField(nil);
end;

procedure TTechMonthCalendarDataLink.ActiveChanged;
begin
  UpdateField;
  if Assigned(FOnActiveChange) then FOnActiveChange(Self);
end;

procedure TTechMonthCalendarDataLink.EditingChanged;
begin
  SetEditing(inherited Editing and CanModify);
end;

procedure TTechMonthCalendarDataLink.LayoutChanged;
begin
  UpdateField;
end;

procedure TTechMonthCalendarDataLink.RecordChanged(Field: TField);
begin
  if (Field = nil) or (Field = FField) then
  begin
    if Assigned(FOnDataChange) then FOnDataChange(Self);
    FModified := False;
  end;
end;

procedure TTechMonthCalendarDataLink.UpdateData;
begin
  if FModified then
  begin
    if (Field <> nil) and Assigned(FOnUpdateData) then FOnUpdateData(Self);
    FModified := False;
  end;
end;

function TTechMonthCalendarDataLink.Edit: Boolean;
begin
  if CanModify then inherited Edit;
  Result := FEditing;
end;

procedure TTechMonthCalendarDataLink.Modified;
begin
  FModified := True;
end;

procedure TTechMonthCalendarDataLink.Reset;
begin
  RecordChanged(nil);
end;

        {TTechDBMonthCalendar}

constructor TTechDBMonthCalendar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TTechMonthCalendarDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
  FDataLink.OnActiveChange := ActiveChange;
  FDataLink.OnEditingChange := EditingChange;
end;

procedure TTechDBMonthCalendar.EditingChange(Sender: TObject);
begin
// bo�
end;

procedure TTechDBMonthCalendar.UpdateData(Sender: TObject);
begin
        if (FDataLink.Field <> nil) and (FDataLink.Field is TDateField) then
        begin
                if FDataLink.DataSet.RecordCount > 0 then
                begin
                        DataSource.DataSet.Edit;
                        DataSource.DataSet.FindField(GetField).AsString := DateToStr(Date);
                        DataSource.DataSet.Post;
                end else begin
                        DataSource.DataSet.Append;
                        DataSource.DataSet.FindField(GetField).AsString := DateToStr(Date);
                        DataSource.DataSet.Post;
                end;
        end
        else if (FDataLink.Field <> nil) and (FDataLink.Field is TDateTimeField) then
        begin
                if FDataLink.DataSet.RecordCount > 0 then
                begin
                        DataSource.DataSet.Edit;
                        DataSource.DataSet.FindField(GetField).AsString := DateTimeToStr(DateTime);
                        DataSource.DataSet.Post;
                end else begin
                        DataSource.DataSet.Append;
                        DataSource.DataSet.FindField(GetField).AsString := DateTimeToStr(DateTime);
                        DataSource.DataSet.Post;
                end;
        end;
end;

destructor TTechDBMonthCalendar.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

procedure TTechDBMonthCalendar.Click;
begin
  FDataLink.Modified;
  FDataLink.Edit;
  inherited Click;
end;

procedure TTechDBMonthCalendar.ActiveChange(Sender: TObject);
begin
        if (FDataLink.Field <> nil) and (FDataLink.Field is TDateField) and (FDataLink.DataSet.RecordCount > 0) and (FDataLink.Field.AsString <> '') then
                Date := StrToDate(FDataLink.Field.AsString)
        else if (FDataLink.Field <> nil) and (FDataLink.Field is TDateTimeField) and (FDataLink.DataSet.RecordCount > 0) and (FDataLink.Field.AsString <> '') then
                Date := StrToDate(FDataLink.Field.AsString);
end;

procedure TTechDBMonthCalendar.DataChange(Sender: TObject);
begin
        if (FDataLink.Field <> nil) and (FDataLink.Field is TDateField) and (FDataLink.DataSet.RecordCount > 0) and (FDataLink.Field.AsString <> '') and (FFocused = false) then
                Date := StrToDate(FDataLink.Field.AsString)
        else if (FDataLink.Field <> nil) and (FDataLink.Field is TDateTimeField) and (FDataLink.DataSet.RecordCount > 0) and (FDataLink.Field.AsString <> '') and (FFocused = false) then
                Date := StrToDate(FDataLink.Field.AsString);
end;

function TTechDBMonthCalendar.GetDataSource: TDataSource;
begin
        Result := FDataLink.DataSource;
end;

procedure TTechDBMonthCalendar.SetDataSource(const Value: TDataSource);
begin
     if FDataLink.DataSource<>Value then begin
        FDataLink.DataSource := Value;
     end;
end;

function TTechDBMonthCalendar.GetField: string;
begin
  Result := FDataLink.FieldName;
end;

function TTechDBMonthCalendar.GetDataField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TTechDBMonthCalendar.SetField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TTechDBMonthCalendar.CMExit(var Message: TCMExit);
begin
  try
        if FDataLink.Editing = true then
        begin
        if (FDataLink.Field <> nil) and (FDataLink.Field is TDateTimeField) then
        begin
                if FDataLink.DataSet.RecordCount > 0 then
                begin
                        FDataLink.DataSet.Edit;
                        FDataLink.Field.AsString := DateToStr(Date);
                        FDataLink.DataSet.Post;
                end else begin
                        FDataLink.DataSet.Append;
                        FDataLink.Field.AsString := DateToStr(Date);
                        FDataLink.DataSet.Post;
                end;
        end else if (FDataLink.Field <> nil) and (FDataLink.Field is TDateField) then
        begin
                if FDataLink.DataSet.RecordCount > 0 then
                begin
                        FDataLink.DataSet.Edit;
                        FDataLink.Field.AsString := DateToStr(Date);
                        FDataLink.DataSet.Post;
                end else begin
                        FDataLink.DataSet.Append;
                        FDataLink.Field.AsString := DateToStr(Date);
                        FDataLink.DataSet.Post;
                end;
        end;
  end;
  except
    SetFocus;
    raise;
  end;
  SetFocused(False);
  DoExit;
end;

procedure TTechDBMonthCalendar.SetFocused(Value: Boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
    FDataLink.Reset;
  end;
end;

procedure TTechDBMonthCalendar.CMEnter(var Message: TCMEnter);
begin
  SetFocused(True);
end;

end.
