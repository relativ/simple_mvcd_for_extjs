unit TechDBTreeView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  db, ComCtrls, CommCtrl, Menus;

  const
  TechTree_ABOUT = 'Tech Yazýlým / Serkan Güneþ'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

  const
      TVS_CHECKBOXES          = $0100;
      CheckboxesStyles: array[Boolean] of DWORD = (1, TVS_CHECKBOXES);

type

  TTechDBTree = class;
  TTechDBTreeOption = (dtInsertEnabled, dtDeleteEnabled, dtCascadeDeleteEnabled,
                     dtDragDropEnabled, dtArrowsEnabled);
  TTechDBTreeCheckClick = procedure(Sender: TObject; TreeNode: TTreeNode; value: boolean) of object;

  TTechDBTreeOptions = set of TTechDBTreeOption;

  TTechDBTreeDataLink=class(TDataLink)
  private
        FControl: TComponent;
        FField: TField;
        FEditing: Boolean;
        FModified: Boolean;
        FOnDataChange: TNotifyEvent;
        FOnEditingChange: TNotifyEvent;
        FOnUpdateData: TNotifyEvent;
        FOnActiveChange: TNotifyEvent;
        FDBTree : TTechDBTree;
        procedure SetField(Value: TField);
        function GetCanModify: Boolean;
        procedure SetEditing(Value: Boolean);
        procedure UpdateField;
  protected
        procedure ActiveChanged; override;
        procedure EditingChanged; override;
        procedure DataSetScrolled(Distance: Integer); override;
        procedure LayoutChanged; override;
        procedure RecordChanged(Field: TField); override;
        procedure UpdateData; override;

  public
        constructor Create(Owner: TTechDBTree);
        function Edit: Boolean;
        procedure Modified;
        property Field: TField read FField;
        property CanModify: Boolean read GetCanModify;
        property Control: TComponent read FControl write FControl;
        property Editing: Boolean read FEditing;
        property OnDataChange: TNotifyEvent read FOnDataChange write FOnDataChange;
        property OnEditingChange: TNotifyEvent read FOnEditingChange write FOnEditingChange;
        property OnUpdateData: TNotifyEvent read FOnUpdateData write FOnUpdateData;
        property OnActiveChange: TNotifyEvent read FOnActiveChange write FOnActiveChange;
  end;

  TTechDBTree = class(TTreeView)
  private
    FChildItemCount: Integer;
    FOnCheckClick: TTechDBTreeCheckClick;
    FCheckboxes: boolean;
    FFieldID: String;
    FFieldImage: String;
    FFieldParent: String;
    FFieldText: String;
    FFieldState: String;
    FFieldParentKontrol: String;
    FDataLink: TTechDBTreeDataLink;
    TreeDeleteItem : string;
    N : TTreeNode;
    FCheckDurum: boolean;

    F_id, F_Parent, F_Text, F_image, F_State,F_ParentKontrol : TField;
    FTechOptions: TTechDBTreeOptions;
    FOnMoving: TNotifyEvent;
    
    procedure RestoreChecks;
    procedure SaveChecks;
    procedure DataChange(Sender: TObject);
    procedure SetDeleteMessage(const Value: String);
    procedure SetVersion(const Val: string);
    procedure SetFieldID(const Value: String);
    procedure SetFieldImage(const Value: String);
    procedure SetFieldParent(const Value: String);
    procedure SetFieldState(const Value: String);
    procedure SetFieldText(const Value: String);
    procedure SetFieldParentKontrol(const Value: String);
    procedure SetChildItemCount(const Value: Integer);
    procedure SetAllFields;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    procedure SetTechOptions(const Value: TTechDBTreeOptions);
    procedure ChangeParentID(NewParent, Node:TTreeNode);
    procedure SetCheckboxes(Val: boolean);
    procedure SetCheckDurum(Val: boolean);

  protected
    InDeleteMode : Boolean;
    InInsertMode : Boolean;
    InEditMode   : Boolean;
    function  GetVersion: string;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy;                   override;
    procedure   RebuildTree;
    function    GetNodeID(id: Integer):TTreeNode;
    function    LocateDataSetID(Node:TTreeNode):Boolean; virtual;

    procedure   TechInsertNode;
    procedure   TechInsertSubNode;
    procedure   TechDeleteNode;
    procedure   OneLevelUp;

    procedure Delete(Node:TTreeNode); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure Edit(const Item: TTVItem); override;
    procedure Change(Node:TTreeNode); override;
    procedure SynchronizeWithDataSet;

    procedure DragOver(Source: TObject; X, Y: Integer; State: TDragState;
        var Accept: Boolean); override;
    procedure DragDrop(Source: TObject; X, Y: Integer); override;

    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
        X, Y: Integer); override;

  published
    CheckList,CheckTrueList: TStringList;
    property SilmeMesaji:String read TreeDeleteItem write SetDeleteMessage;
    property About: string read GetVersion write SetVersion stored FALSE;

    property ChildItemCount:Integer read FChildItemCount write SetChildItemCount;
    property FieldID:String read FFieldID write SetFieldID;
    property FieldParent:String read FFieldParent write SetFieldParent;
    property FieldText:String read FFieldText write SetFieldText;
    property FieldImage:String read FFieldImage write SetFieldImage;
    property FieldState:String read FFieldState write SetFieldState;
    property FieldParentKontrol:String read FFieldParentKontrol write SetFieldParentKontrol;
    property Checkboxes: boolean
       read FCheckboxes write SetCheckboxes default FALSE;
    property CheckDurum: boolean read FCheckDurum write SetCheckDurum;

    property DataSource:TDataSource read GetDataSource write SetDataSource;
    property TechOptions:TTechDBTreeOptions read FTechOptions write SetTechOptions;
    property OnCheckClick: TTechDBTreeCheckClick read FOnCheckClick write FOnCheckClick;
    property OnMoving    : TNotifyEvent read FOnMoving write FOnMoving;
  end;
  resourcestring
     TechDBTreeViewNew   ='Yeni';
     TechDBTreeViewCascadeDeleteDisabled='Kayýt Silinemedi.';

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBTree]);
end;

procedure TTechDBTree.SetCheckDurum(Val: boolean);
begin
        FCheckDurum := Val;
        SendMessage(handle,WM_KEYDOWN,VK_SPACE,VK_SPACE);
end;


procedure TTechDBTree.Change(Node: TTreeNode);
begin
  LocateDataSetID(Node);
  if FCheckboxes then
  begin
          if CheckList.Values[IntToStr(Integer(Selected.Data))] = '' then
                CheckList.Values[IntToStr(Integer(Selected.Data))] := '0';
          FCheckDurum := boolean(StrToInt(CheckList.Values[IntToStr(Integer(Selected.Data))]));
  end;
  inherited Change(Node);
end;

procedure TTechDBTree.ChangeParentID(NewParent, Node: TTreeNode);
var
        Old_Parent: string;
        Old_Altno: string;
        yer: TBookmark;
begin
    if NewParent = Node then exit;
    if Assigned(NewParent) and NewParent.HasAsParent(Node) then Exit;

     InEditMode := True;
     try
        Node.MoveTo(NewParent, naAddChild);
        Selected := Node;
        if FDataLink.Active and Assigned(F_Parent) then begin
           if not (FDataLink.DataSet.State in dsEditModes) then
               FDataLink.DataSet.Edit;
           if Assigned(NewParent) then begin
               F_Parent.AsInteger := Integer(NewParent.Data);
               FDataLink.DataSet.Post;
           end else
               F_Parent.Clear;
           yer := FDataLink.DataSet.GetBookmark;
           if Assigned(F_ParentKontrol) then
           begin
           Old_Altno := F_Parent.AsString;
           if Old_Altno <> '' then
           begin
                if F_Parent.AsString <> '' then
                begin
                        if FDataLink.DataSet.Locate(FFieldID,Integer(NewParent.Data),[]) then
                                Old_Parent := F_ParentKontrol.AsString;
                end;
                FDataLink.DataSet.GotoBookmark(yer);
                FDataLink.DataSet.Edit;
                F_ParentKontrol.AsString := Old_Parent+F_Id.AsString+'.';
           end
           else begin
                FDataLink.DataSet.Edit;
                F_ParentKontrol.AsString := F_Id.AsString+'.';
           end;
           end;
        end;
     finally
        InEditMode := False;
     end;
end;

procedure TTechDBTree.DataChange(Sender: TObject);
begin
        if (FFieldID <> '') and (FFieldText <>'') and (DataSource.DataSet.RecordCount > 0) and (DataSource.DataSet.Modified = true) then
                        GetNodeID(DataSource.DataSet.FindField(FFieldID).AsInteger).Text := DataSource.DataSet.FindField(FFieldText).AsString; 
end;

constructor TTechDBTree.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TTechDBTreeDataLink.Create(self);
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;

  InDeleteMode := False;
  DragMode     := dmAutomatic;
  FCheckboxes := FALSE;
  CheckList := TStringList.Create;
  CheckTrueList := TStringList.Create;
  ReadOnly := not FDataLink.CanModify;
end;

procedure TTechDBTree.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or CheckboxesStyles[FCheckboxes];
end;

procedure TTechDBTree.RestoreChecks;
begin
  // boþ
end;

procedure TTechDBTree.SaveChecks;
begin
//boþ
end;

procedure TTechDBTree.CreateWnd;
begin
  inherited CreateWnd;
  if FCheckboxes then RestoreChecks;
end;

procedure TTechDBTree.DestroyWnd;
begin
  if FCheckboxes then SaveChecks;

  inherited DestroyWnd;
end;

procedure TTechDBTree.SetCheckboxes(Val: boolean);
begin
  if Val <> FCheckboxes then
  begin
    FCheckboxes := Val;
    if HandleAllocated then
    begin
      RecreateWnd;
      if FCheckboxes then RestoreChecks;
    end;
  end;
end;

procedure TTechDBTree.Delete(Node: TTreeNode);
begin
  inherited Delete(Node);
  if InDeleteMode then begin
    if LocateDataSetID(Node) then
        FDataLink.DataSet.Delete;
  end;
end;

procedure TTechDBTree.SetDeleteMessage(const Value: String);
begin

        TreeDeleteItem := Value;
        refresh;
end;

function TTechDBTree.GetVersion: string;
begin
  Result := TechTree_ABOUT;
end;

procedure TTechDBTree.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlama }
end;

destructor TTechDBTree.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

procedure TTechDBTree.DragDrop(Source: TObject; X, Y: Integer);
var H:THitTests;
begin
  if (Source=Self) and (dtDragDropEnabled in FTechOptions) then begin
        H:=GetHitTestInfoAt(X,Y);
        if htToLeft in H then
                ChangeParentID(nil, Selected)
        else
                ChangeParentID(GetNodeAt(X,Y), Selected);
        if Assigned(FOnMoving) then FOnMoving(Source);
  end else
        inherited DragDrop(Source, X, Y);
end;

procedure TTechDBTree.DragOver(Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if (Source=Self) and (dtDragDropEnabled in FTechOptions) then
        Accept := True
  else
    inherited DragOver(Source, X, Y, State, Accept);
end;

procedure TTechDBTree.Edit(const Item: TTVItem);
var N:TTreeNode;
    D:TDataSet;
begin
  inherited Edit(Item);

  N:=Selected;
  D:=FDataLink.DataSet;
  if not Assigned(D) then Exit;
  if D.CanModify = false then Exit;
  if (N<>nil) and LocateDataSetID(N) then begin
        InEditMode := True;
        try
                if not (D.State in dsEditModes) then D.Edit;
                F_Text.AsString := N.Text;
        finally
                InEditMode := False;
        end;
  end;
end;

function TTechDBTree.GetDataSource: TDataSource;
begin
        Result := FDataLink.DataSource;
end;

function TTechDBTree.GetNodeID(id: Integer): TTreeNode;
var i:Integer;
begin
        Result := nil;
        for i:=0 to Items.Count-1 do
                if Integer(Items[i].Data)=id then begin
                        Result := Items[i];
                        Break;
        end;
end;

procedure TTechDBTree.KeyDown(var Key: Word; Shift: TShiftState);
var D    : TDataSet;
begin
  inherited KeyDown(Key, Shift);
  D := FDataLink.DataSet;
  if D=nil then Exit;
  if not D.Active then Exit;


  if (Key=VK_DELETE) then TechDeleteNode;
  if (dtArrowsEnabled in FTechOptions) and (ssCtrl in Shift)
     and (Key=VK_LEFT) then
        OneLevelUp;
  if Key = VK_SPACE then
  begin
      if Checkboxes then
       begin
          if (CheckList.Values[IntToStr(Integer(Selected.Data))] = '0') or (CheckList.Values[IntToStr(Integer(Selected.Data))] = '') then
             CheckList.Values[IntToStr(Integer(Selected.Data))] := '1'
          else CheckList.Values[IntToStr(Integer(Selected.Data))] := '0';

          FCheckDurum := Boolean(StrToInt(CheckList.Values[IntToStr(Integer(Selected.Data))]));

          if FCheckDurum then
            CheckTrueList.Add(IntToStr(Integer(Selected.Data)))
          else begin
                if CheckList.Values[IntToStr(Integer(Selected.Data))] <> '' then
                        CheckTrueList.Delete(CheckTrueList.IndexOf(IntToStr(Integer(Selected.Data))));
          end;

          if Assigned(FOnCheckClick) then
            FOnCheckClick(self,selected,FCheckDurum);
        end;
  end;
end;

function TTechDBTree.LocateDataSetID(Node: TTreeNode):Boolean;
begin
    Result := False;
    if FDataLink.Active and Assigned(F_id) and Assigned(Node) then begin
        if Integer(Node.Data)=F_ID.AsInteger then
                Result := True
        else
                Result := FDataLink.DataSet.Locate(FieldID, Integer(Node.data),[]);
                if Result = false then
                        Node.Delete;
    end;
end;

procedure TTechDBTree.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
        level: integer;
begin
  inherited MouseDown(Button, Shift, X, Y);
  Selected := GetNodeAt(X,Y);
  if Checkboxes then
  begin
    level := Selected.Level+1;
    if (X >= Indent*level) and (X <= Indent*level+14) then
    begin
      if (CheckList.Values[IntToStr(Integer(Selected.Data))] = '0') or (CheckList.Values[IntToStr(Integer(Selected.Data))] = '') then
          CheckList.Values[IntToStr(Integer(Selected.Data))] := '1'
      else CheckList.Values[IntToStr(Integer(Selected.Data))] := '0';

      FCheckDurum := Boolean(StrToInt(CheckList.Values[IntToStr(Integer(Selected.Data))]));
      
      if FCheckDurum then
            CheckTrueList.Add(IntToStr(Integer(Selected.Data)))
      else begin
         if CheckList.Values[IntToStr(Integer(Selected.Data))] <> '' then
            CheckTrueList.Delete(CheckTrueList.IndexOf(IntToStr(Integer(Selected.Data))));
      end;
      if Assigned(FOnCheckClick) then
        FOnCheckClick(self,selected,FCheckDurum);
    end;
  end;
  N            := Selected;
end;

procedure TTechDBTree.OneLevelUp;
var N,N2:TTreeNode;
begin
        N  := Selected;
        if Assigned(N) then begin
                N2 := N.Parent;
                if Assigned(N2) then
                        ChangeParentID(N2.Parent, Selected);
        end;
end;

procedure TTechDBTree.TechDeleteNode;
var N:TTReeNode;
begin
     N:=Selected;

  if (N<>nil) and (dtDeleteEnabled in TechOptions) then
   if length(SilmeMesaji) <> 0 then
   begin
     if MessageBox(Handle,PChar(SilmeMesaji),PChar('Uyarý'),MB_YESNO) =mrYes then begin
          InDeleteMode := True;
          try
                if (N.Count>0) and not (dtCascadeDeleteEnabled in TechOptions) then
                        Exception.Create(TechDBTreeViewCascadeDeleteDisabled)
                else begin
                        N.DeleteChildren;
                        Items.Delete(N);
                end;
          finally
                InDeleteMode := False;
     end;
     end;
     end else begin
                InDeleteMode := True;
          try
                if (N.Count>0) and not (dtCascadeDeleteEnabled in TechOptions) then
                        Exception.Create(TechDBTreeViewCascadeDeleteDisabled)
                else begin
                        N.DeleteChildren;
                        Items.Delete(N);
                end;
          finally
                InDeleteMode := False;
          end;
          end;
end;




procedure TTechDBTree.TechInsertNode;
var D:TDataSet;
    N2:TTreeNode;
    Parent_Toplam: string;
begin
     D:=FDataLink.DataSet;
     if D=nil then Exit;

     InInsertMode := True;
     try
        N := Selected;
        N2:=Items.Add(N, TechDBTreeViewNew);
        if N2.Parent <> nil then
        begin
                if D.Locate(FFieldID,IntToStr(Integer(N2.Parent.Data)),[]) = true then
                        Parent_Toplam := D.FindField(FFieldParentKontrol).AsString
                else Parent_Toplam := '';
        end else Parent_Toplam := '';
        D.Insert;
        D[FieldText]   := TechDBTreeViewNew;
        if (N<>nil) and (N.Parent<>nil) then
              D[FieldParent] := Integer(N.Parent.Data);
        if FFieldParentKontrol <> '' then
                D.FindField(FFieldParentKontrol).AsString := Parent_Toplam + D.FindField(FFieldID).AsString+'.';
        D.Post;
        
        N2.Data := Pointer(F_ID.AsInteger);
        N2.MakeVisible;
        Selected := N2;
     finally
        InInsertMode := False;
     end;
end;

procedure TTechDBTree.TechInsertSubNode;
var D    : TDataSet;
    N2 : TTreeNode;
    Parent_Toplam: string;

begin
     D:=FDataLink.DataSet;
     if D=nil then Exit;
     if Selected = nil then Exit;

     InInsertMode := True;
     try
                N := Selected;
             if (FChildItemCount = 0) or (FChildItemCount > N.Level) then
             begin
                N2:=Items.AddChild(N, TechDBTreeViewNew);
                if N2.Parent <> nil then
                begin
                        if D.Locate(FFieldID,IntToStr(Integer(N2.Parent.Data)),[]) = true then
                                Parent_Toplam := D.FindField(FFieldParentKontrol).AsString
                        else Parent_Toplam := '';
                end else Parent_Toplam := '';
                D.Insert;
                D[FieldText]   := TechDBTreeViewNew;
                if N<>nil then
                      D[FieldParent] := Integer(N.Data);
                if FFieldParentKontrol <> '' then
                                D.FindField(FFieldParentKontrol).AsString := Parent_Toplam + D.FindField(FFieldID).AsString+'.';
                D.Post;

                N2.Data := Pointer(F_ID.AsInteger);
                N2.MakeVisible;
                Selected := N2;
                N := N2;
             end else TechInsertNode;
     finally
                InInsertMode := False;
     end;
end;

procedure TTechDBTree.RebuildTree;
var T1,T2                  : TTreeNode;
    old_id                 : Integer;
    D                      : TDataSet;
begin
   if InInsertMode then Exit;

   Items.Clear;

   SetAllFields;

   if (F_ID=nil) or (F_Parent=nil) or (F_Text=nil) then Exit;

   D:=FDataLink.DataSet;

   try
        Screen.Cursor := crSQLWait;
        old_id := F_ID.AsInteger;
        D.DisableControls;
        Items.BeginUpdate;
        Items.Clear;

        D.First;
        while not D.Eof do begin
                T1:=Items.Add(nil, F_Text.AsString);
                T1.Data := Pointer(F_ID.AsInteger);
                if F_Image<>nil then
                begin
                        T1.ImageIndex := F_Image.AsInteger;
                        T1.StateIndex := F_Image.AsInteger;
                        T1.SelectedIndex := F_Image.AsInteger;
                     end;
              {  if F_State<>nil then
                     if F_State.IsNull then T1.StateIndex := -1
                     else                   T1.StateIndex := F_State.AsInteger;  }
            D.Next;
        end;

        D.First;
        while not D.Eof do begin
            if not(F_Parent.IsNull) then begin
                T1:=GetNodeID(F_Parent.AsInteger);
                if T1<>nil then begin
                        T2:=GetNodeID(F_ID.AsInteger);
                        if T2<>nil then
                                T2.MoveTo(T1,naAddChild	);
                end;
            end;
            D.Next;
        end;
   finally
        D.Locate(FieldID, old_id,[]);
        Screen.Cursor := crDefault;
        Items.EndUpdate;
        D.EnableControls;
        FullCollapse;
        Realign;
        Refresh;
   end;
end;

procedure TTechDBTree.SetAllFields;
var D:TDataSet;
begin
   D:=FDataLink.DataSet;
   if Assigned(D) and D.Active then begin
        F_Id    := D.FindField(FieldID);
        F_Parent:= D.FindField(FieldParent);
        F_Text  := D.FindField(FieldText);
        if FieldParentKontrol <> '' then F_ParentKontrol := D.FindField(FieldParentKontrol);
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
        F_ParentKontrol := nil;
   end;
end;

procedure TTechDBTree.SetDataSource(const Value: TDataSource);
begin
     if FDataLink.DataSource<>Value then begin
        FDataLink.DataSource := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetFieldID(const Value: String);
begin
     if Value<>FFieldID then begin
        FFieldID := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetFieldImage(const Value: String);
begin
     if Value<>FFieldImage then begin
        FFieldImage := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetFieldParent(const Value: String);
begin
     if Value<>FFieldParent then begin
        FFieldParent := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetFieldState(const Value: String);
begin
     if Value<>FFieldState then begin
        FFieldState := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetFieldText(const Value: String);
begin
     if Value<>FFieldText then begin
        FFieldText := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetFieldParentKontrol(const Value: String);
begin
     if Value<>FFieldParentKontrol then begin
        FFieldParentKontrol := Value;
        RebuildTree;
     end;
end;

procedure TTechDBTree.SetTechOptions(const Value: TTechDBTreeOptions);
begin
        if FTechOptions<>Value then begin
                FTechOptions := Value;
        end;
end;

procedure TTechDBTree.SetChildItemCount(const Value: Integer);
begin
        FChildItemCount := Value;
end;

{ TTechDBTreeDataLink }

function TTechDBTreeDataLink.GetCanModify: Boolean;
begin
  Result := not ReadOnly and (FDBTree.FieldID <> '') and (FDBTree.FieldText <> '') and FDBTree.DataSource.DataSet.FindField(FDBTree.FFieldText).CanModify;
end;

procedure TTechDBTreeDataLink.SetEditing(Value: Boolean);
begin
  if FEditing <> Value then
  begin
    FEditing := Value;
    FModified := False;
    if Assigned(FOnEditingChange) then FOnEditingChange(Self);
  end;
end;

constructor TTechDBTreeDataLink.Create(Owner: TTechDBTree);
begin
     inherited Create;
     FdbTree := Owner;
end;

procedure TTechDBTreeDataLink.UpdateField;
begin
  if Active and (FdbTree.FieldText <> '') and (FdbTree.FieldID <> '') then
  begin
    if Assigned(FControl) then
      SetField(GetFieldProperty(DataSource.DataSet, FControl, FdbTree.FieldText)) else
      SetField(DataSource.DataSet.FieldByName(FdbTree.FieldText));
  end else
    SetField(nil);
end;

procedure TTechDBTreeDataLink.ActiveChanged;
begin
  UpdateField;
  if Assigned(FOnActiveChange) then FOnActiveChange(Self);
  FDBTree.RebuildTree;
end;

procedure TTechDBTreeDataLink.EditingChanged;
begin
  SetEditing(inherited Editing and CanModify);
end;

procedure TTechDBTreeDataLink.LayoutChanged;
begin
  UpdateField;
end;

procedure TTechDBTreeDataLink.DataSetScrolled(Distance: Integer);
begin
        if FdbTree.Selected <> FdbTree.GetNodeID(DataSet.FindField(FDBTree.FieldID).AsInteger) then
                FdbTree.Selected := FdbTree.GetNodeID(DataSet.FindField(FDBTree.FieldID).AsInteger);
        DataSetChanged;
end;

procedure TTechDBTreeDataLink.RecordChanged(Field: TField);
begin
        inherited RecordChanged(Field);
        if (Field <> nil) and (DataSet.RecordCount > 0) and (DataSet.Modified = true) and (FDBTree.Items.Count = DataSet.RecordCount) then
        begin
                if FDBTree.GetNodeID(DataSet.FindField(FDBTree.FieldID).AsInteger) <> nil then
                        FDBTree.GetNodeID(DataSet.FindField(FDBTree.FieldID).AsInteger).Text := DataSet.FindField(FDBTree.FieldText).AsString;
        end;
end;

procedure TTechDBTreeDataLink.UpdateData;
begin
  if FModified then
  begin
    if (Field <> nil) and Assigned(FOnUpdateData) then FOnUpdateData(Self);
    FModified := False;
  end;
end;

procedure TTechDBTreeDataLink.SetField(Value: TField);
begin
  if FField <> Value then
  begin
    FField := Value;
    EditingChanged;
  end;
end;

function TTechDBTreeDataLink.Edit: Boolean;
begin
  if CanModify then inherited Edit;
  Result := FEditing;
end;

procedure TTechDBTreeDataLink.Modified;
begin
  FModified := True;
end;

procedure TTechDBTree.SynchronizeWithDataSet;
var id:Integer;
begin
  if InEditMode or InInsertMode or InDeleteMode then Exit;

  if F_ID<>nil then begin
     id := F_ID.AsInteger;

     Selected := GetNodeID(id);
     if Selected<>nil then begin
        if F_Text<>nil then Selected.Text := F_Text.AsString;
        if F_Image<>nil then Selected.ImageIndex:= F_Image.AsInteger;
        if F_State<>nil then Selected.StateIndex:= F_State.AsInteger;
        if F_Parent<>nil then begin
        end;
     end;
  end;
end;

end.
