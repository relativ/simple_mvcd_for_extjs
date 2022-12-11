unit TechDBCheckListBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  db, ComCtrls, CommCtrl, CheckLst,Dialogs;

  const
  TechDBListBox_ABOUT = 'Tech Yazýlým / Serkan Güneþ'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';


type
  TTechDBCheckListBox = class;

    TTechDBCheckListBoxDataLink=class(TDataLink)
  private
        FDBListBox : TTechDBCheckListBox;
        FOnDataChange: TNotifyEvent;
  public
        constructor CreateListBox(Owner:TTechDBCheckListBox);
        procedure ActiveChanged;                      override;
        procedure DataSetScrolled(Distance: Integer); override;
        procedure RecordChanged(Field: TField);       override;
        procedure UpdateData;                       override;
        property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
  end;
  TTechDBCheckListBox = class(TCheckListBox)
  private
    FRootID: Integer;
    FFieldID: String;
    FFieldText: String;
    FFieldBoolean: String;
    FDataLink: TTechDBCheckListBoxDataLink;

    F_id, F_Text, F_Boolean : TField;
    procedure DataChange(Sender: TObject);
    procedure SetVersion(const Val: string);
    procedure SetFieldID(const Value: String);
    procedure SetFieldBoolean(const Value: String);
    procedure SetFieldText(const Value: String);
    procedure SetRootID(const Value: Integer);
    procedure SetAllFields;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
  protected
    function  GetVersion: string;
    procedure ClickCheck; override;
    procedure Click; override;
  public
    ID_List: TStringList;
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy;                   override;
    procedure   RebuildListBox;
    function  LocateDataSetID(Item: Integer):Boolean; virtual;
    function  DataSetID_is_Checked(Item: integer): boolean;
  published
    property About: string read GetVersion write SetVersion stored FALSE;

    property RootID:Integer read FRootID write SetRootID;
    property FieldID:String read FFieldID write SetFieldID;
    property FieldText:String read FFieldText write SetFieldText;
    property FieldBoolean:String read FFieldBoolean write SetFieldBoolean;

    property DataSource:TDataSource read GetDataSource write SetDataSource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBCheckListBox]);
end;

{ TTechDBCheckListBoxDataLink }

procedure TTechDBCheckListBoxDataLink.ActiveChanged;
begin
  inherited ActiveChanged;
  FDBListBox.RebuildListBox;
end;

constructor TTechDBCheckListBoxDataLink.CreateListBox(Owner: TTechDBCheckListBox);
begin
     inherited Create;
     FDBListBox := Owner;
end;

procedure TTechDBCheckListBoxDataLink.DataSetScrolled(Distance: Integer);
begin
     inherited DataSetScrolled(Distance);
end;

procedure TTechDBCheckListBoxDataLink.RecordChanged(Field: TField);
begin
  inherited RecordChanged(Field);

end;

procedure TTechDBCheckListBoxDataLink.UpdateData;
begin
  inherited UpdateData;
end;

{ ---------- TTechDBCheckListBoxDataLink Sonu -------}

{ ---------- TTechDBCheckListBox baþlangýcý --------}

function TTechDBCheckListBox.GetVersion: string;
begin
  Result := TechDBListBox_ABOUT;
end;

procedure TTechDBCheckListBox.DataChange(Sender: TObject);
begin
        if F_Boolean.AsString = '1' then
                Checked[FDataLink.DataSet.RecNo - 1] := true
        else Checked[FDataLink.DataSet.RecNo - 1] := false;
end;

procedure TTechDBCheckListBox.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlamaz }
end;

procedure TTechDBCheckListBox.SetFieldID(const Value: String);
begin
     if Value<>FFieldID then begin
        FFieldID := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBCheckListBox.SetFieldBoolean(const Value: String);
begin
     if Value<>FFieldBoolean then begin
        FFieldBoolean := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBCheckListBox.SetFieldText(const Value: String);
begin
     if Value<>FFieldText then begin
        FFieldText := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBCheckListBox.SetRootID(const Value: Integer);
begin
     if Value<>FRootID then begin
        FRootID := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBCheckListBox.SetAllFields;
var D:TDataSet;
begin
   D:=FDataLink.DataSet;
   if Assigned(D) and D.Active then begin
        F_Id    := D.FindField(FFieldID);
        F_Text  := D.FindField(FFieldText);
        if FFieldBoolean<>'' then F_Boolean := D.FindField(FFieldBoolean)
        else                   F_Boolean := nil;
   end else begin
        F_Id    := nil;
        F_Boolean:= nil;
        F_Text  := nil;
   end;
end;

function TTechDBCheckListBox.GetDataSource: TDataSource;
begin
        Result := FDataLink.DataSource;
end;

procedure TTechDBCheckListBox.SetDataSource(const Value: TDataSource);
begin
     if FDataLink.DataSource<>Value then begin
        FDataLink.DataSource := Value;
        RebuildListBox;
     end;
end;

constructor TTechDBCheckListBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TTechDBCheckListBoxDataLink.CreateListBox(Self);
  ID_List := TStringList.Create;
  FDataLink.OnDataChange := DataChange;
end;

destructor TTechDBCheckListBox.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TTechDBCheckListBox.DataSetID_is_Checked(Item: integer): boolean;
var
  i,a: integer;
begin
  a := -1;
  for i := 0 to ID_List.Count -1 do
  begin
    if ID_List[i] = IntToStr(Item) then
    begin
      a := i;
      break;
    end;
  end;
  if a > -1 then
  begin
    Result := Checked[a];
  end else result := false; 
end;

function TTechDBCheckListBox.LocateDataSetID(Item: Integer):Boolean;
begin
    Result := False;
    if FDataLink.Active and Assigned(F_id) then begin
        if Item=F_ID.AsInteger then
                Result := True
        else
                Result := FDataLink.DataSet.Locate(FieldID, IntToStr(Item),[]);
    end;
end;

procedure TTechDBCheckListBox.RebuildListBox;
var old_id                 : Integer;
    D                      : TDataSet;
    i                      : Integer;
begin
   Items.Clear;

   SetAllFields;

   if (F_ID=nil) or (F_Text=nil) then Exit;
   
   D:=FDataLink.DataSet;

   try
        Screen.Cursor := crSQLWait;
        old_id := F_ID.AsInteger;
        D.DisableControls;
        Items.BeginUpdate;
        Items.Clear;
        ID_List.Clear;

        D.First;
        while not D.Eof do begin
                with Items do
                begin
                        if F_Text <> nil then
                        begin
                                if Count - 1 = -1 then
                                begin
                                        i := 0;
                                        Insert(0, F_Text.AsString);
                                end
                                else
                                begin
                                        Insert(Count, F_Text.AsString);
                                        i := Count-1;
                                end;
                                if FFieldBoolean <> '' then
                                     if F_Boolean.AsString = '1' then
                                        Checked[i] := true
                                else
                                        Checked[i] := false;
                        end;
                end;
        if ID_List.Count <= D.RecordCount then
                ID_List.Add(F_ID.AsString)
        else begin
                ID_List.Clear;
                ID_List.Add(F_ID.AsString);
        end;
            D.Next;
        end;
   finally
        D.Locate(FieldID, old_id,[]);
        Screen.Cursor := crDefault;
        Items.EndUpdate;
        D.EnableControls;
   end;
end;

procedure TTechDBCheckListBox.ClickCheck;
begin
                if (DataSource <> nil) and (DataSource.DataSet <> nil) then
                begin
                        LocateDataSetID(StrToInt(ID_List[ItemIndex]));
                        if FFieldBoolean <> '' then
                        begin
                                FDataLink.DataSet.Edit;
                                if Checked[ItemIndex] = true then
                                        FDataLink.DataSet.FindField(FFieldBoolean).AsString := '1'
                                else
                                        FDataLink.DataSet.FindField(FFieldBoolean).AsString := '0';
                        end;
                end;
inherited ClickCheck;
end;

procedure TTechDBCheckListBox.Click;
begin
        LocateDataSetID(StrToInt(ID_List[ItemIndex]));
inherited Click;
end;
{ ---------- TTechDBCheckListBox sonu --------}


end.
