unit TechDBListBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  db,StdCtrls;

  const
  TechDBListBox_ABOUT = 'Tech Yazýlým / Serkan Güneþ'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';



type
  TTechDBListBox = class;
      TTechDBListBoxDataLink=class(TDataLink)
  private
        FDBListBox : TTechDBListBox;
        FOnDataChange: TNotifyEvent;
  public
        constructor CreateListBox(Owner:TTechDBListBox);
        procedure ActiveChanged;                      override;
        procedure DataSetScrolled(Distance: Integer); override;
        procedure RecordChanged(Field: TField);       override;
        procedure UpdateData;                       override;
        property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
  end;
  TTechDBListBox = class(TListBox)
  private
    FRootID: Integer;
    FFieldID: String;
    FFieldText: String;
    FDataLink: TTechDBListBoxDataLink;

    F_id, F_Text : TField;
    procedure SetVersion(const Val: string);
    procedure SetFieldID(const Value: String);
    procedure SetFieldText(const Value: String);
    procedure SetRootID(const Value: Integer);
    procedure SetAllFields;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
  protected
    function  GetVersion: string;
    procedure Click; override;
  public
    ID_List: TStringList;
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy;                   override;
    procedure   RebuildListBox;
    function  LocateDataSetID(Item: Integer):Boolean; virtual;
  published
    property About: string read GetVersion write SetVersion stored FALSE;

    property RootID:Integer read FRootID write SetRootID;
    property FieldID:String read FFieldID write SetFieldID;
    property FieldText:String read FFieldText write SetFieldText;

    property DataSource:TDataSource read GetDataSource write SetDataSource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBListBox]);
end;

{ TTechDBListBoxDataLink }

procedure TTechDBListBoxDataLink.ActiveChanged;
begin
  inherited ActiveChanged;
  FDBListBox.RebuildListBox;
end;

constructor TTechDBListBoxDataLink.CreateListBox(Owner: TTechDBListBox);
begin
     inherited Create;
     FDBListBox := Owner;
end;

procedure TTechDBListBoxDataLink.DataSetScrolled(Distance: Integer);
begin
     inherited DataSetScrolled(Distance);
end;

procedure TTechDBListBoxDataLink.RecordChanged(Field: TField);
begin
  inherited RecordChanged(Field);

end;

procedure TTechDBListBoxDataLink.UpdateData;
begin
  inherited UpdateData;
end;

{ ---------- TTechDBListBoxDataLink Sonu -------}

{ ---------- TTechDBListBox baþlangýcý --------}

function TTechDBListBox.GetVersion: string;
begin
  Result := TechDBListBox_ABOUT;
end;

procedure TTechDBListBox.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlamaz }
end;

procedure TTechDBListBox.SetFieldID(const Value: String);
begin
     if Value<>FFieldID then begin
        FFieldID := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBListBox.SetFieldText(const Value: String);
begin
     if Value<>FFieldText then begin
        FFieldText := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBListBox.SetRootID(const Value: Integer);
begin
     if Value<>FRootID then begin
        FRootID := Value;
        RebuildListBox;
     end;
end;

procedure TTechDBListBox.SetAllFields;
var D:TDataSet;
begin
   D:=FDataLink.DataSet;
   if Assigned(D) and D.Active then begin
        F_Id    := D.FindField(FFieldID);
        F_Text  := D.FindField(FFieldText);
   end else begin
        F_Id    := nil;
        F_Text  := nil;
   end;
end;

function TTechDBListBox.GetDataSource: TDataSource;
begin
        Result := FDataLink.DataSource;
end;

procedure TTechDBListBox.SetDataSource(const Value: TDataSource);
begin
     if FDataLink.DataSource<>Value then begin
        FDataLink.DataSource := Value;
        RebuildListBox;
     end;
end;

constructor TTechDBListBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TTechDBListBoxDataLink.CreateListBox(Self);
  ID_List := TStringList.Create;
end;

destructor TTechDBListBox.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TTechDBListBox.LocateDataSetID(Item: Integer):Boolean;
begin
    Result := False;
    if FDataLink.Active and Assigned(F_id) then begin
        if Item=F_ID.AsInteger then
                Result := True
        else
                Result := FDataLink.DataSet.Locate(FieldID, IntToStr(Item),[]);
    end;
end;

procedure TTechDBListBox.RebuildListBox;
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

procedure TTechDBListBox.Click;
begin
        LocateDataSetID(StrToInt(ID_List[ItemIndex]));
inherited Click;
end;
{ ---------- TTechDBListBox sonu --------}


end.
