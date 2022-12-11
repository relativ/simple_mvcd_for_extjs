unit TechDBListView;

interface

uses
  Windows, Messages, SysUtils, Classes,Controls,Forms,
  db, ComCtrls, CommCtrl;

  const
  TechDBListView_ABOUT = 'Tech Yaz�l�m / Serkan G�ne�'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';


type
  TTechDBListView = class;
  TTechDBListViewOption = (dtInsertEnabled, dtDeleteEnabled, dtCascadeDeleteEnabled,
                     dtDragDropEnabled, dtArrowsEnabled, dtUsePopupMenu);

  TTechDBListViewOptions = set of TTechDBListViewOption;

  TTechDBListViewDataLink=class(TDataLink)
  private
        FDBListView : TTechDBListView;
        FOnDataChange: TNotifyEvent;
        FOnEditingChange: TNotifyEvent;
        FOnUpdateData: TNotifyEvent;
        FOnActiveChange: TNotifyEvent;
  public
        constructor CreateListView(Owner:TTechDBListView);
        procedure ActiveChanged;                      override;
        procedure DataSetScrolled(Distance: Integer); override;
        procedure RecordChanged(Field: TField);       override;
        procedure UpdateData;                       override;
        property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
        property OnEditingChange: TNotifyEvent read FOnEditingChange write FOnEditingChange;
        property OnUpdateData: TNotifyEvent read FOnUpdateData write FOnUpdateData;
        property OnActiveChange: TNotifyEvent read FOnActiveChange write FOnActiveChange;
  end;

  
  TTechDBListView = class(TListView)
  private
    FFieldID: String;
    FFieldImage: String;
    FFieldText: String;
    FFieldState: String;
    FDataLink: TTechDBListViewDataLink;

    F_id, F_Parent, F_Text, F_image, F_State : TField;
    FTechOptions: TTechDBListViewOptions;

    procedure DataChange(Sender: TObject);
    procedure SetVersion(const Val: string);
    procedure SetFieldID(const Value: String);
    procedure SetFieldImage(const Value: String);
    procedure SetFieldState(const Value: String);
    procedure SetFieldText(const Value: String);
    procedure SetAllFields;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    procedure SetTechOptions(const Value: TTechDBListViewOptions);

  protected
    InDeleteMode : Boolean;
    InInsertMode : Boolean;
    InEditMode   : Boolean;

    function  LocateDataSetID(Node: TListItem):Boolean; virtual;
    function  GetVersion: string;
  public
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy;                   override;
    procedure   RebuildListView;
    function    GetNodeID(id:Integer):TListItem;
    procedure Edit(const Item: TLVItem); override;

    procedure Change(Item: TListItem; Change: Integer); override;
    procedure SynchronizeWithDataSet;
  published
    property About: string read GetVersion write SetVersion stored FALSE;

    property FieldID:String read FFieldID write SetFieldID;
    property FieldText:String read FFieldText write SetFieldText;
    property FieldImage:String read FFieldImage write SetFieldImage;
    property FieldState:String read FFieldState write SetFieldState;
    property DataSource:TDataSource read GetDataSource write SetDataSource;
    property TechOptions:TTechDBListViewOptions read FTechOptions write SetTechOptions;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBListView]);
end;

//--------------------- TTechDBListView----------------

procedure TTechDBListView.Change(Item: TListItem; Change: Integer);
begin
  inherited Change(Item,Change);
  LocateDataSetID(Item);
end;

procedure TTechDBListView.DataChange(Sender: TObject);
begin
        if (FFieldID <> '') and (FFieldText <>'') and (DataSource.DataSet.RecordCount > 0) and (DataSource.DataSet.Modified = true) then
                        GetNodeID(DataSource.DataSet.FindField(FFieldID).AsInteger).Caption := DataSource.DataSet.FindField(FFieldText).AsString;
end;

constructor TTechDBListView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TTechDBListViewDataLink.CreateListView(Self);
  FDataLink.OnDataChange := DataChange;
  InDeleteMode := False;
  DragMode     := dmAutomatic;
end;

function TTechDBListView.GetVersion: string;
begin
  Result := TechDBListView_ABOUT;
end;

procedure TTechDBListView.SetVersion(const Val: string);
begin
  { Kay�t giri�i yap�lama }
end;

destructor TTechDBListView.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

function TTechDBListView.GetDataSource: TDataSource;
begin
        Result := FDataLink.DataSource;
end;

function TTechDBListView.GetNodeID(id: Integer): TListItem;
var i:Integer;
begin
        Result := nil;
        for i:=0 to Items.Count-1 do
                if Integer(Items[i].Data)=id then begin
                        Result := Items[i];
                        Break;
                end;
end;

function TTechDBListView.LocateDataSetID(Node: TListItem):Boolean;
begin
    Result := False;
    if FDataLink.Active and Assigned(F_id) and Assigned(Node) then begin
        if Integer(Node.Data)=F_ID.AsInteger then
                Result := True
        else
                Result := FDataLink.DataSet.Locate(FieldID, Integer(Node.data),[]);
    end;
end;

procedure TTechDBListView.Edit(const Item: TLVItem);
var N:TListItem;
    D:TDataSet;
begin
inherited Edit(Item);
N:=Selected;
  D:=FDataLink.DataSet;
  if not Assigned(D) then Exit;

  if (N<>nil) and LocateDataSetID(N) then begin
        InEditMode := True;
        try
                if not (D.State in dsEditModes) then D.Edit;
                F_Text.AsString := N.Caption;
                D.Post;
                
        finally
                InEditMode := False;
        end;
  end;
end;

procedure TTechDBListView.RebuildListView;
var T1                 : TListItem;
    old_id             : Integer;
    D                  : TDataSet;
begin
   if InInsertMode then Exit;

   Items.Clear;

   SetAllFields;

   if (F_ID=nil) or (F_Parent=nil) and (F_Text=nil) then Exit;
   
   D:=FDataLink.DataSet;

   try
        Screen.Cursor := crSQLWait;
        old_id := F_ID.AsInteger;
        D.DisableControls;
        Items.BeginUpdate;
        Items.Clear;

        D.First;
        while not D.Eof do begin
                with Items.Add do
                begin
                        T1 := Items.Item[index];
                        Caption := F_Text.AsString;
                        T1.Data := Pointer(F_ID.AsInteger);
                end;
                if F_Image<>nil then
                     if F_Image.IsNull then T1.ImageIndex := -1
                     else                   T1.ImageIndex := F_Image.AsInteger;
                if F_State<>nil then
                     if F_State.IsNull then T1.StateIndex := -1
                     else                   T1.StateIndex := F_State.AsInteger;
            D.Next;
        end;
   finally
        D.Locate(FieldID, old_id,[]);
        Screen.Cursor := crDefault;
        Items.EndUpdate;
        D.EnableControls;
   end;
end;

procedure TTechDBListView.SetAllFields;
var D:TDataSet;
begin
   D:=FDataLink.DataSet;
   if Assigned(D) and D.Active then begin
        F_Id    := D.FindField(FieldID);
        F_Text  := D.FindField(FieldText);
        if FieldImage<>'' then F_Image := D.FindField(FieldImage)
        else                   F_Image := nil;
        if FieldState<>'' then F_State := D.FindField(FieldState)
        else                   F_State := nil;
   end else begin
        F_Id    := nil;
        F_Parent:= nil;
        F_Text  := nil;
        F_Image := nil;
        F_State := nil;
   end;
end;

procedure TTechDBListView.SetDataSource(const Value: TDataSource);
begin
     if FDataLink.DataSource<>Value then begin
        FDataLink.DataSource := Value;
        RebuildListView;
     end;
end;

procedure TTechDBListView.SetFieldID(const Value: String);
begin
     if Value<>FFieldID then begin
        FFieldID := Value;
        RebuildListView;
     end;
end;

procedure TTechDBListView.SetFieldImage(const Value: String);
begin
     if Value<>FFieldImage then begin
        FFieldImage := Value;
        RebuildListView;
     end;
end;

procedure TTechDBListView.SetFieldState(const Value: String);
begin
     if Value<>FFieldState then begin
        FFieldState := Value;
        RebuildListView;
     end;
end;

procedure TTechDBListView.SetFieldText(const Value: String);
begin
     if Value<>FFieldText then begin
        FFieldText := Value;
        RebuildListView;
     end;
end;

procedure TTechDBListView.SetTechOptions(const Value: TTechDBListViewOptions);
begin
        if FTechOptions<>Value then begin
                FTechOptions := Value;
        end;
end;

procedure TTechDBListView.SynchronizeWithDataSet;
var id:Integer;
begin
  if InEditMode or InInsertMode or InDeleteMode then Exit;

  if F_ID<>nil then begin
     id := F_ID.AsInteger;

     Selected := GetNodeID(id);
     if Selected<>nil then begin
        if F_Text<>nil then Selected.Caption := F_Text.AsString;
        if F_Image<>nil then Selected.ImageIndex:= F_Image.AsInteger;
        if F_State<>nil then Selected.StateIndex:= F_State.AsInteger;
        if F_Parent<>nil then begin
        end;
     end;
  end;
end;

{ TTechDBListViewDataLink }

procedure TTechDBListViewDataLink.ActiveChanged;
begin
  inherited ActiveChanged;
  FDBListView.RebuildListView;
end;

constructor TTechDBListViewDataLink.CreateListView(Owner: TTechDBListView);
begin
     inherited Create;
     FDBListView := Owner;
end;

procedure TTechDBListViewDataLink.DataSetScrolled(Distance: Integer);
begin
        if FDBListView.Selected <> FDBListView.GetNodeID(DataSet.FindField(FDBListView.FieldID).AsInteger) then
                FDBListView.Selected := FDBListView.GetNodeID(DataSet.FindField(FDBListView.FieldID).AsInteger);
        DataSetChanged;
     inherited DataSetScrolled(Distance);
end;

procedure TTechDBListViewDataLink.RecordChanged(Field: TField);
begin
        inherited RecordChanged(Field);
        if (Field <> nil) and (DataSet.RecordCount > 0) and (DataSet.Modified = true) and (FDBListView.Items.Count = DataSet.RecordCount) then
        begin
                if FDBListView.GetNodeID(DataSet.FindField(FDBListView.FieldID).AsInteger) <> nil then
                        FDBListView.GetNodeID(DataSet.FindField(FDBListView.FieldID).AsInteger).Caption := DataSet.FindField(FDBListView.FieldText).AsString;
        end;
end;

procedure TTechDBListViewDataLink.UpdateData;
begin
  inherited UpdateData;
end;

{ TTechDBListViewDataLink Sonu }

end.
