{$I DFS.INC}                    { Defines for all Delphi Free Stuff components }
{$I SYSTEMCONTROLPACK.INC}      { Defines specific to these components }

{ -----------------------------------------------------------------------------}
{ TdfsSystemTreeView                                                           }
{ -----------------------------------------------------------------------------}
{ A tree view control that acts as the tree in the Windows Explorer.  This is  }
{ part of the System Control Pack.                                             }
{                                                                              }
{ Copyright 2000-2001, Brad Stowers.  All Rights Reserved.                     }
{                                                                              }
{ Copyright:                                                                   }
{ All Delphi Free Stuff (hereafter "DFS") source code is copyrighted by        }
{ Bradley D. Stowers (hereafter "author"), and shall remain the exclusive      }
{ property of the author.                                                      }
{                                                                              }
{ Distribution Rights:                                                         }
{ You are granted a non-exlusive, royalty-free right to produce and distribute }
{ compiled binary files (executables, DLLs, etc.) that are built with any of   }
{ the DFS source code unless specifically stated otherwise.                    }
{ You are further granted permission to redistribute any of the DFS source     }
{ code in source code form, provided that the original archive as found on the }
{ DFS web site (http://www.delphifreestuff.com) is distributed unmodified. For }
{ example, if you create a descendant of TDFSColorButton, you must include in  }
{ the distribution package the colorbtn.zip file in the exact form that you    }
{ downloaded it from http://www.delphifreestuff.com/mine/files/colorbtn.zip.   }
{                                                                              }
{ Restrictions:                                                                }
{ Without the express written consent of the author, you may not:              }
{   * Distribute modified versions of any DFS source code by itself. You must  }
{     include the original archive as you found it at the DFS site.            }
{   * Sell or lease any portion of DFS source code. You are, of course, free   }
{     to sell any of your own original code that works with, enhances, etc.    }
{     DFS source code.                                                         }
{   * Distribute DFS source code for profit.                                   }
{                                                                              }
{ Warranty:                                                                    }
{ There is absolutely no warranty of any kind whatsoever with any of the DFS   }
{ source code (hereafter "software"). The software is provided to you "AS-IS", }
{ and all risks and losses associated with it's use are assumed by you. In no  }
{ event shall the author of the softare, Bradley D. Stowers, be held           }
{ accountable for any damages or losses that may occur from use or misuse of   }
{ the software.                                                                }
{                                                                              }
{ Support:                                                                     }
{ Support is provided via the DFS Support Forum, which is a web-based message  }
{ system.  You can find it at http://www.delphifreestuff.com/discus/           }
{ All DFS source code is provided free of charge. As such, I can not guarantee }
{ any support whatsoever. While I do try to answer all questions that I        }
{ receive, and address all problems that are reported to me, you must          }
{ understand that I simply can not guarantee that this will always be so.      }
{                                                                              }
{ Clarifications:                                                              }
{ If you need any further information, please feel free to contact me directly.}
{ This agreement can be found online at my site in the "Miscellaneous" section.}
{------------------------------------------------------------------------------}
{ The lateset version of my components are always available on the web at:     }
{   http://www.delphifreestuff.com/                                            }
{ See SCP.txt for notes, known issues, and revision history.                   }
{ -----------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{ -----------------------------------------------------------------------------}

unit SystemTreeView;

interface

{$IFNDEF DFS_SCP_SYSTREEVIEW}
  Error, should not be compiing this unit!
{$ENDIF}


{$R ErrorMsgs.r32}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  {$IFDEF DFS_COMPILER_3_UP} ShlObj, ActiveX, {$ELSE} MyShlObj, OLE2, {$ENDIF}
  {$IFDEF DFS_STV_FILECHANGES} FileChange, {$ENDIF}
  {$IFDEF DFS_DEBUG} MMSystem, {$ENDIF}
  SystemControlPack,
  PidlHelp, ItemProp, Menus, ComCtrls, StdCtrls, CommCtrl, _Res__IDs;

const
  DFS_COMPONENT_TREE_VERSION = 'TdfsSystemTreeView ' + DFS_SCP_VERSION;

{$IFDEF DFS_DELPHI}
{$IFNDEF DFS_DELPHI_4_UP}
const
  TVS_CHECKBOXES          = $0100;
{$ENDIF}
{$ELSE}
{$IFDEF DFS_CPPB_1}
const
  TVS_CHECKBOXES          = $0100;
{$ENDIF}
{$ENDIF}

type
  // If you change the order of these, you have to change the order of the
  // FOLDERID constants below in GetFolderID function.
  TRootFolder = (rfDesktop, rfRecycleBin, rfControlPanel, rfDesktopDir,
     rfDrives, rfFavoriteURLs, rfFonts, rfNetHood, rfNetHoodDir, rfDocumentDir,
     rfPrinters, rfPrograms, rfRecentDir, rfSendTo, rfStartMenu, rfStartup,
     rfTemplates, rfFileSystem, rfCustom);


  TdfsSystemTreeView = class(TdfsCustomSystemTreeView)
  private
    FDesktopFolder: IShellFolder;
    FLastSelection: string;
    FRecreatingWnd: boolean;
    FShowErrorsInMsgBox: boolean;
    FAutoscroll: boolean;
    FRootFolder: TRootFolder;
    FShowHiddenDirs: boolean;
    FExpandRoot: boolean;
    FCheckboxes: boolean;
    FCustomDir: string;
    FCustomDirCaption: string;
    FShowFiles: boolean;
    FPopupMenuMethod: TPopupMenuMethod;
    FTreeHandle: HWND;
    {$IFDEF DFS_STV_FILECHANGES}
    ParentThread: TFileChangeThread;
    ParentWatchedNode: TTreeNode;
    FCThread: TFileChangeThread;
    WatchedNode: TTreeNode;
    {$ENDIF}
    FFileMask: string;
    FFileMaskList: TStringList;
    FOnPopulated: TTVExpandedEvent;
    FDestroyingSelf: boolean;

    procedure RestoreChecks;
    procedure SaveChecks;
    function GetIDFromPath(const ShellFolder: IShellFolder; const APath: string;
       var ID: PItemIDList): boolean;
    function GetFolderID: integer;
    function EnumerateFolders(const ShellFolder: IShellFolder;
       const ParentNode: TTreeNode): boolean;
    function AddItemData(ItemFolder: IShellFolder; aIDList,
       aFQ_IDList: PItemIDList; Attrs: UINT): TFolderItemData;
    procedure FreeItemData(Item: TTreeNode);
    procedure FreeAllItemData;
    function GetSelection: string;
    procedure SetSelection(const ASel: string);
    function GetItemCheck(Node: TTreeNode): boolean;
    procedure SetItemCheck(Node: TTreeNode; Val: boolean);
    {$IFDEF DFS_COMPILER_5_UP}
    procedure WMContextMenu(var Message: TWMContextMenu); message WM_CONTEXTMENU;
    {$ELSE}
    procedure WMRButtonUp(var Message: TWMRButtonUp); message WM_RBUTTONUP;
    {$ENDIF}
    procedure CNNotify(var Message: TWMNotify); message CN_NOTIFY;
  protected
    procedure TimerEvent; override;
    { Base Class Abstract Implementations }
    // Implementation must return the actual ID list.  Caller will make a copy
    // of it it wants it's own.  Implementer owns this one, i.e. it's the "real
    // thing".  If there isn't one, return NIL.
    function GetSelectionPIDL: PItemIDList; override;
    function GetSelectionParentFolder: IShellFolder; override;
    // Implementation notes: IDList parameter belongs to someone else.  If
    // needed by this component, a copy must be made of it.  This differs from
    // the Reset method in that it does not notify linked controls of a change
    // because that could result in an endless cycle of notifications. Return
    // value indicates success or failure.
    function LinkedReset(const ParentFolder: IShellFolder;
       const IDList: PItemIDList; ForceUpdate: boolean): boolean; override;

    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure Loaded; override;
    function CanExpand(Node: TTreeNode): boolean; override;
    function CanEdit(Node: TTreeNode): boolean; override;
    procedure Edit(const Item: TTVItem); override;
    procedure Change(Node: TTreeNode); override;
    procedure DoStartDrag(var DragObject: TDragObject); override;
    function GetPopupMenu: TPopupMenu; override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure Compute_TreeMoves(X, Y: integer); dynamic;
    procedure Populated(Node: TTreeNode); dynamic;

    // Helpers
      // Why isn't there one of these in TTreeView????
    procedure DeleteItem(Node: TTreeNode); dynamic;
    function GetNodeFromItem(const Item: TTVItem): TTreeNode;
    function FindNodeFromID(AnID: PItemIDList): TTreeNode;

    // event for this?
    function AddNode(const ShellFolder: IShellFolder;
       FQ_IDList, IDList: PItemIDList; const ParentNode: TTreeNode): TTreeNode;
       dynamic;

    // Property methods.
    procedure SetRootFolder(Val: TRootFolder);
    procedure SetCustomDir(const Val: string);
    procedure SetCustomDirCaption(const Val: string);
    procedure SetShowFiles(Val: boolean);
    function GetVersion: string;
    procedure SetVersion(const Val: string);
    function GetItems: TTreeNodes;
    procedure SetCheckboxes(Val: boolean);
    procedure SetFileMask(const Val: string);

    // These two do the same thing, just take different parameters.
    function GetItemData(Index: integer): TFolderItemData;
    function GetNodeData(Node: TTreeNode): TFolderItemData;
    procedure Expand(Node: TTreeNode); override;
    function CustomSort(SortProc: TTVCompare; Data: Longint): Boolean; dynamic;
    function AlphaSort: Boolean;
    procedure DblClick; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Reset; override;
    function DisplayContextMenu(Node: TTreeNode; Where: TPoint): boolean;
       dynamic;
    procedure ResetNode(const Node: TTreeNode);
    function GetNodePath(const Node: TTreeNode): string;
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    procedure ComboBoxSetSelectionPIDL(APIDL: PItemIDList);
    {$ENDIF}

    // Useful functions for applications.  These modify permanently, not just
    // the node.  i.e. if you rename 'My Computer' to 'Crasher', it is renamed
    // system wide, not just in your app.  If you delete the 'C:\WINDOWS'
    // folder, you are in deep trouble and I deny any responsibility.
    function RenameNode(const Node: TTreeNode; const NewName: string): boolean;
    function DeleteNode(const Node: TTreeNode): boolean;
    function AddNewNode(const ParentNode: TTreeNode; const NodeName: string;
       SelectNewNode: boolean): boolean;
    // Move up one directory, i.e. "cd .."
    procedure ChangeToParent;

    {$IFDEF DFS_STV_FILECHANGES}
    procedure WatchDirectoryForChanges(const ANode: TTreeNode);
    procedure ParentThreadDone(Sender: TObject);
    procedure ThreadDone(Sender: TObject);
    {$ENDIF}
    property ShowErrorsInMsgBox: boolean
       read FShowErrorsInMsgBox write FShowErrorsInMsgBox default TRUE;
    property Items
       read GetItems;
    property ItemChecked[Node: TTreeNode]: boolean
       read GetItemCheck write SetItemCheck;
    property NodeData[Node: TTreeNode]: TFolderItemData
       read GetNodeData;
  published
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    property ListView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    property ComboBox;
    {$ENDIF}
    property ReadDelay;


    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    property PopupMenuMethod: TPopupMenuMethod
       read FPopupMenuMethod
       write FPopupMenuMethod
       default pmmContext;
    property Selection: string
       read GetSelection write SetSelection;
    property Directory: string
       read GetSelection write SetSelection stored FALSE;
    property RootFolder: TRootFolder
       read FRootFolder write SetRootFolder default rfDesktop;
    property CustomDir: string
       read FCustomDir write SetCustomDir;
    property CustomDirCaption: string
       read FCustomDirCaption write SetCustomDirCaption;
    property ShowFiles: boolean
       read FShowFiles write SetShowFiles default FALSE;
    property ShowHiddenDirs: boolean
       read FShowHiddenDirs write FShowHiddenDirs default TRUE;
    property ExpandRoot: boolean
       read FExpandRoot write FExpandRoot default TRUE;
    property Checkboxes: boolean
       read FCheckboxes write SetCheckboxes default FALSE;
    property Autoscroll: boolean
       read FAutoscroll write FAutoscroll default FALSE;
    property FileMask: string
       read FFileMask write SetFileMask;

    property OnPopulated: TTVExpandedEvent
       read FOnPopulated write FOnPopulated;


    { Publish protected properties. }
    property Align;
    {$IFDEF DFS_COMPILER_4_UP}
    property Anchors;
    property AutoExpand;
    property BiDiMode;
    {$ENDIF}
    property BorderStyle;
    {$IFDEF DFS_COMPILER_4_UP}
    property BorderWidth;
    property ChangeDelay;
    {$ENDIF}
    property Color;
    {$IFDEF DFS_COMPILER_4_UP}
    property Constraints;
    {$ENDIF}
    property Ctl3D;
    property DragCursor;
    {$IFDEF DFS_COMPILER_4_UP}
    property DragKind;
    {$ENDIF}
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    {$IFDEF DFS_COMPILER_4_UP}
    property HotTrack;
    {$ENDIF}
    property Indent;
    property OnChange;
    property OnChanging;
    property OnClick;
    property OnCollapsed;
    property OnCollapsing;
    property OnCompare;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnCustomDraw;
    property OnCustomDrawItem;
    {$ENDIF}
    property OnDblClick;
    property OnDeletion;
    property OnDragDrop;
    property OnDragOver;
    property OnEdited;
    property OnEditing;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnExpanded;
    property OnExpanding;
    property OnGetImageIndex;
    property OnGetSelectedIndex;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
    {$IFDEF DFS_COMPILER_4_UP}
    property ParentBiDiMode;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_2}
    property ParentColor;
    {$ELSE}
    property ParentColor default FALSE;
    {$ENDIF}
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    {$IFDEF DFS_COMPILER_3_UP}
    property RightClickSelect;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_4_UP}
    property RowSelect;
    {$ENDIF}
    property ShowButtons;
    property ShowHint;
    property ShowLines;
    property ShowRoot default TRUE;
    property TabOrder;
    property TabStop default True;
    {$IFDEF DFS_COMPILER_4_UP}
    property ToolTips;
    {$ENDIF}
    property Visible;
  end;


{$IFDEF DFS_COMPILER_2}
const
  SHGDFIL_FINDDATA            = 1;
  SHGDFIL_NETRESOURCE         = 2;
  SHGDFIL_DESCRIPTIONID       = 3;

function SHGetDataFromIDList(psf: IShellFolder; pidl: PItemIDList;
  nFormat: Integer; ptr: Pointer; cb: Integer): HResult; stdcall;
{$ENDIF}

implementation


uses
  ShellAPI, MaskSearch, FileCtrl,
  {$IFDEF DFS_COMPILER_4_UP} ImgList, {$ENDIF}
  {$IFDEF DFS_COMPILER_3_UP} ComObj, {$ELSE} OleAuto, {$ENDIF}
  {$IFDEF DFS_DEBUG} EJHkEng, {$ENDIF}
  Registry;

var
  NewCount: Longint;


{$IFDEF DFS_COMPILER_2}
function SHGetDataFromIDList; external 'shell32.dll' name 'SHGetDataFromIDListA';
{$ENDIF}


function DefaultTreeViewSort(Node1, Node2: TTreeNode; lParam: Integer): Integer;
   stdcall;
begin
  // CompareIDs can probably handle NIL pointers.  need to try it.
  if Node1 = Node2 then
    Result := 0
  else if Node1 = NIL then
    Result := -1
  else if Node2 = NIL then
    Result := 1
  else begin
    if Node1.Data <> NIL then with TFolderItemData(Node1.Data) do
    begin
      // Status is returned in the 'code' portion (low word) of the result.
      // Search for 'HResult' in Winodws.pas to read more about it.
      // 0 means sort by name.
      Result := shortint(SFParent.CompareIDs(0,
         TFolderItemData(Node1.Data).IDList,
         TFolderItemData(Node2.Data).IDList));
    end else
      Result := 0;
  end;
end;


(*******************************************************************************
  Create:
*******************************************************************************)
constructor TdfsSystemTreeView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Set the defaults.
  OLECheck(SHGetDesktopFolder(FDesktopFolder));
  {$IFNDEF DFS_NO_COM_CLEANUP} FDesktopFolder.AddRef; {$ENDIF}
  FDestroyingSelf := FALSE;
  FCustomDir := '';
  FLastSelection := '';
  FAutoscroll := FALSE;
  FPopupMenuMethod := pmmContext;
  FCustomDirCaption := '';
  FShowFiles := FALSE;
  FShowErrorsInMsgBox := TRUE;
  FRootFolder := rfDesktop;
  FShowHiddenDirs := TRUE;
  FExpandRoot := TRUE;
  FCheckboxes := FALSE;
{$IFDEF DFS_STV_FILECHANGES}
  WatchedNode := NIL;
  FCThread := NIL;
  ParentThread := NIL;
  ParentWatchedNode := NIL;
{$ENDIF}
  ShowRoot := TRUE;
  SortType := stNone;
  FFileMask := '';
  FFileMaskList := TStringList.Create;
end; {Create}


(*******************************************************************************
  Destroy:
*******************************************************************************)
destructor TdfsSystemTreeView.Destroy;
begin
  FDestroyingSelf := TRUE;

  {$IFDEF DFS_COMPILER_5_UP}
  // This used to be in the TTreeNodes.Clear method, but in D5 it isn't done if
  // the component is being destroyed.  This prevents me from freeing the data
  // that has been put into each node's Data property.  I have no clue why this
  // was done, so we'll just call it ourself.
  // BTW, you don't want to know about FTreeHandle.  It's too bizarre...
  TreeView_DeleteAllItems(FTreeHandle);
  {$ENDIF}

  Selection := '';

{$IFDEF DFS_STV_FILECHANGES}
  if ParentThread <> NIL then
    ParentThread.Terminate;
  if FCThread <> NIL then
    FCThread.Terminate;
{$ENDIF}

  FFileMaskList.Free;

  // Free the image list object.  Doesn't release the image list handle because
  // it doesn't belong to us, but the system.  Go ahead, delete the handle and
  // see what happens.  :)   It won't crash anything, but Explorer will look a
  // bit strange until you reboot.
  Images.Free;

  inherited Destroy;

  {$IFNDEF DFS_NO_COM_CLEANUP} FDesktopFolder.Release; {$ENDIF}
//  FDesktopFolder := NIL;
end; {Destroy}


procedure TdfsSystemTreeView.CreateParams(var Params: TCreateParams);
const
  CheckboxesStyles: array[Boolean] of DWORD = (0, TVS_CHECKBOXES);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or CheckboxesStyles[FCheckboxes];
end;

procedure TdfsSystemTreeView.CreateWnd;
begin
  FRecreatingWnd := FALSE;
  inherited CreateWnd;
  FTreeHandle := Handle;
  // If we are loading object from stream (form file), we have to wait until
  // everything is loaded before populating the list.  If we are not loading,
  // i.e. the component was created dynamically or was just dropped on a form,
  // we need to populate it now since the Loaded method will never get called.
  if FCheckboxes then RestoreChecks;

  if not (csLoading in ComponentState) then
    Reset;
end;

procedure TdfsSystemTreeView.DestroyWnd;
begin
  // The window is only being recreated.  See CNNotify method.
  FRecreatingWnd := TRUE;
  if FLastSelection = '' then
    FLastSelection := Selection;
  if FCheckboxes then SaveChecks;

  inherited DestroyWnd;
end;

procedure TdfsSystemTreeView.Loaded;
begin
  inherited Loaded;
  Reset; // We've finished loading, we can populate the tree now.
end;

function TdfsSystemTreeView.GetSelection: string;
var
  SelNode: TTreeNode;
begin
  if HandleAllocated then begin
    SelNode := Selected;
    if SelNode = NIL then
      Result := ''
    else
      Result := GetNodePath(SelNode);
  end else
    Result := '';
end;

// Searches the tree for a fully qualified PIDL, expanding as it finds nodes
// that match.
function TdfsSystemTreeView.FindNodeFromID(AnID: PItemIDList): TTreeNode;
var
  SearchID,
  SimpleID,
  BakID,
  FQ_List: PItemIDList;
//  List: PItemIDList;
  Count: integer;
  Node: TTreeNode;
  ShellFolder: IShellFolder;
begin
  if (Items.Count < 1) or (AnID = NIL) then
  begin
    Result := NIL;
    exit;
  end;

  if AnID.mkid.cb = 0 then // nothing to search for.
  begin
    Result := Items[0];
    exit;
  end;

  // Initialize some stuff
  Count := 0;
  Node := Items[0];
  if Node.Count < 1 then
  begin
    // No sub-nodes to search, this is as deep as it gets.
    Result := Node;
    exit;
  end;

  with GetNodeData(Node.Item[Count]) do // Get the first item's data.
  begin
    SearchID := IDList; // It's relative ID
    ShellFolder := SFParent; // It's parent shell folder
  end;
  SimpleID := CopyFirstID(AnID); // Get the relative portion of the fully
                                    // qualified ID we're looking for.

  BakID := CopyFirstID(AnID); // Added by LSP
  try
    while assigned(SearchID) and assigned(SimpleID) do
    begin
      // Is the current portion of the ID we're looking for this node's child?
      if ShellFolder.CompareIDs(0, SearchID, SimpleID) = 0 then
      begin
        // Found a match for part of the ID we're looking for.
        Node := Node.Item[Count]; // Set current node to node that just matched.
        AnID := NextPIDL(AnID); // Move to the next ID in the list
        if AnID.mkid.cb = 0 then break; // Nothing else to find, we're done.
        FreePIDL(SimpleID); // Free copy of relative ID we made
        SimpleID := CopyFirstID(AnID); // Create copy of next relative part.
        // Added by LSP
        FQ_List := ConcatPIDLs(BakID, SimpleID);
        FreePIDL(BakID);
        BakID := FQ_List;
        // End LSP
        Node.Expand(FALSE); // Expand the matched node.
        Count := 0; // Reset search index.
        if Node.Count < 1 then break; // If the new node doesn't have children,
                                      // we can't go any farther.
      end else begin
        // Didn't match with the current child of the node.
        Inc(Count); // Increment the child node index
        // Added by LSP
        if Count >= Node.Count then break; // No more, didn't find it, get out. }
(* This code was causing all manner of bugs, so I've given up on it for the moment
        if Count >= Node.Count then
        begin // LSP Fix
          FQ_List := CopyPIDL(BakID);
          List := CopyPIDL(SimpleID);
          if AddNode(ShellFolder, FQ_List, List, Node) = NIL then
          begin
            // not added for some reason.  Free up resources.
            FreePIDL(FQ_List);
            FreePIDL(List);
          end;
          inc(Count);
        end;
        // End LSP
*)
      end; // if

      // Get the next child node's data
      if Count >= Node.Count then
        SearchID := NIL
      else
        with GetNodeData(Node.Item[Count]) do
        begin
          SearchID := IDList; // it's relative ID
          ShellFolder := SFParent; // it's shell folder
        end;
    end; // while

    Result := Node; // Return the deepest match we found.
  finally
    FreePIDL(SimpleID); // Free up relative ID copy we createed
    FreePIDL(BakID);    // Added by LSP: Free copy of backup ID we made
  end;
end; // FindNodeFromID


// This will work ONLY with files or directories.  Currenly there is no way of
// passing stuff like the Control Panel node.
procedure TdfsSystemTreeView.SetSelection(const ASel: string);
  function RelativeTo(Base, Full: string): string;
  begin
    if (Base <> '') and (Base[Length(Base)] <> '\') then
      Base := Base + '\';
    if StrLIComp(PChar(Base), PChar(Full), Length(Base)) = 0 then
      Result := Copy(Full, Length(Base)+1, Length(Full))
    else
      Result := Full;
  end;
var
  ShellFolder: IShellFolder;
  CustomID: PItemIDList;
  ChangeTo: string;
begin
  if ASel = '' then exit;
  if (([csLoading, csReading] * ComponentState) <> []) or
     (not HandleAllocated){ or (not Enabled)} then
    FLastSelection := ASel
  else if (Items.Count > 0) then  // Anything to search?
  begin
    if not Items[0].Expanded then
      Items[0].Expand(FALSE);
    ShellFolder := GetNodeData(Items[0].Item[0]).SFParent;
    if (RootFolder in [rfDesktop, rfDrives, rfFileSystem]) then
      ChangeTo := ASel
    else
      ChangeTo := RelativeTo(Items[0].Text, ASel);
    if GetIDFromPath(ShellFolder, ChangeTo, CustomID) then
    begin
      Items.BeginUpdate;
      try
        // Find CustomID's tree node and select it.
        Selected := FindNodeFromID(CustomID);
        if Selected <> NIL then
          Selected.MakeVisible;
      finally
        Items.EndUpdate;
        FreePIDL(CustomID);
      end; //try
    end;
  end;
end;

function TdfsSystemTreeView.GetItemCheck(Node: TTreeNode): boolean;
var
  Item: TTVItem;
begin
  Result := FALSE;
  if Node <> NIL then
  begin
  { Can't use this because the stupid VCL doesn't update the property when
    the user clicks on it, only when you change it in code.  Got to do it the
    old fashioned way...
    Result := Node.StateIndex = 2;}
    
    FillChar(Item, SizeOf(Item), #0);
    Item.mask := TVIF_STATE;
    Item.hItem := Node.ItemId;
    Item.stateMask := TVIS_STATEIMAGEMASK;
    TreeView_GetItem(Handle, Item);
    Result := (Item.State and IndexToStateImageMask(2)) <> 0;
  end;
end;

procedure TdfsSystemTreeView.SetItemCheck(Node: TTreeNode; Val: boolean);
const
  CHECKINT: array[boolean] of integer = (1, 2);
begin
  if Node <> NIL then
  begin
    Node.StateIndex := CHECKINT[Val];
  end;
end;



(*******************************************************************************
  CNNotify:  Trap notification messages sent to the window.
    This is damn silly, but it's the only way we can know when a node is being
    deleted. I think it's an oversight in the VCL, so until Borland fixes it,
    just live with it.
*******************************************************************************)
procedure TdfsSystemTreeView.CNNotify(var Message: TWMNotify);
var
  Node: TTreeNode;
{$IFDEF DFS_STV_FASTMODE}
  N, S: integer;
  CallInh: boolean;
{$ENDIF}
begin
  // We have to ignore the delete notification if the window is being recreated,
  // that is someone did something like change our BorderStyle, because the
  // items are deleted, but saved to a memory stream and then restored including
  // the pointers.
  if (not FRecreatingWnd) and (Message.NMHdr.code = TVN_DELETEITEM) then
  begin
    // If deleting an item, grab the TFolderItemData associated with it so we
    // can free that up
{$IFDEF DFS_DEBUG} LogUserMessage(Format('PNMTreeView: %p', [Message.NMHdr])); {$ENDIF}
{$IFDEF DFS_DEBUG} if Message.NMHdr <> NIL then LogUserMessage(Format('GetNodeFromItem %p', [PNMTreeView(Pointer(Message.NMHdr))^.itemOld.hItem])); {$ENDIF}
    with PNMTreeView(Pointer(Message.NMHdr))^ do
      Node := GetNodeFromItem(itemOld);
    if Node <> NIL then
      FreeItemData(Node);
  end;

{$IFDEF DFS_STV_FASTMODE}
  CallInh := TRUE;

  if Message.NMHdr.code = TVN_GETDISPINFO then
  begin
    with PTVDispInfo(Pointer(Message.NMHdr))^.item do
    begin
      if (mask and TVIF_PARAM) <> 0 then
        Node := TTreeNode(lParam)
      else
        Node := Items.GetNode(hItem);

      if (Node <> NIL) and (Node.Data <> NIL) then
      begin
        with TFolderItemData(Node.Data) do
        begin
          if (mask and (TVIF_IMAGE or TVIF_SELECTEDIMAGE)) <> 0 then
          begin
            GetNormalAndSelectedIcons(FQ_IDList, N, S);
            if (S = 0) and (N <> 0) then
              S := N;
            if (mask and TVIF_IMAGE) <> 0 then
            begin
              if (Attributes and SFGAO_FOLDER) = 0 then
                iImage := S
              else
                iImage := N;
            end;
            if (mask and TVIF_SELECTEDIMAGE) <> 0 then
              iSelectedImage := S;
            CallInh := FALSE;
          end;

          // Don't ask for it again!
          mask := mask or TVIF_DI_SETITEM;
        end;
      end;
    end;
  end;


  if CallInh then
{$ENDIF}
    inherited;
end; {CNNotify}

procedure TdfsSystemTreeView.TimerEvent;
begin
  inherited TimerEvent;
{$IFDEF DFS_STV_FILECHANGES}
  WatchDirectoryForChanges(Selected);
{$ENDIF}
end;


(*******************************************************************************
  CanExpand:
*******************************************************************************)
function TdfsSystemTreeView.CanExpand(Node: TTreeNode): boolean;
var
  SubFolder: IShellFolder;
  NodeData: TFolderItemData;
begin
  Result := inherited CanExpand(Node);
  if not Result then exit;

  // See if the node needs to be populated.
  if Node.Data <> NIL then
  begin
    NodeData := GetNodeData(Node);
    if not NodeData.Initialized then
    begin
      if (Node.Parent = NIL) and (FRootFolder = rfDesktop) then
      begin
        EnumerateFolders(FDesktopFolder, Node);
        NodeData.Initialized := TRUE;
      end else begin
        OLECheck(NodeData.SFParent.BindToObject(NodeData.IDList, NIL,
           IID_IShellFolder, pointer(SubFolder)));
        // I can't remember why I do this first here, unlike above.
        NodeData.Initialized := TRUE;
        Result := EnumerateFolders(SubFolder, Node);
        {$IFNDEF DFS_NO_COM_CLEANUP} SubFolder.Release; {$ENDIF}
      end; //if
    end; //if
  end; //if

  // This usually happens on networked stuff.  It's not unusual there, and even
  // Explorer does it this way, so I'm guessing I'm doing it right.  :)
  if not Result then // something happened and we couldn't enum folders.
    Node.HasChildren := FALSE
  else
    Populated(Node);
end; {CanExpand}


(*******************************************************************************
  DeleteItem:
*******************************************************************************)
procedure TdfsSystemTreeView.DeleteItem(Node: TTreeNode);
begin
  if Node = NIL then exit;
  FreeItemData(Node);
  Node.Delete;
end; {DeleteItem}


function TdfsSystemTreeView.GetNodeFromItem(const Item: TTVItem): TTreeNode;
begin
  with Item do
    if (state and TVIF_PARAM) <> 0 then
      Result := Pointer(lParam)
    else
      Result := Items.GetNode(hItem);
end;


function TdfsSystemTreeView.GetFolderID: integer;
const
  CSIDL_CUSTOM  = $EAFE;
  FOLDERID : array[rfDesktop..rfCustom] of integer = (
     CSIDL_DESKTOP, CSIDL_BITBUCKET, CSIDL_CONTROLS, CSIDL_DESKTOPDIRECTORY,
     CSIDL_DRIVES, CSIDL_FAVORITES, CSIDL_FONTS, CSIDL_NETWORK, CSIDL_NETHOOD,
     CSIDL_PERSONAL, CSIDL_PRINTERS, CSIDL_PROGRAMS, CSIDL_RECENT, CSIDL_SENDTO,
     CSIDL_STARTMENU, CSIDL_STARTUP, CSIDL_TEMPLATES, CSIDL_DRIVES, CSIDL_CUSTOM
   );
begin
  Result := FOLDERID[FRootFolder];
end;


function TdfsSystemTreeView.GetItems: TTreeNodes;
begin
  Result := inherited Items;
end;


procedure TdfsSystemTreeView.SetShowFiles(Val: boolean);
begin
  if Val = FShowFiles then exit;
  FShowFiles := Val;
  Reset;
end;

procedure TdfsSystemTreeView.SetFileMask(const Val: string);
begin
  if Val = FFileMask then exit;
  FFileMask := Val;
  MaskSearch.BuildMask(FFileMask, FFileMaskList);
  Reset;
end;

procedure TdfsSystemTreeView.SetCustomDir(const Val: string);
begin
  if Val = FCustomDir then exit;
  FCustomDir := Val;
  Reset;
end;


procedure TdfsSystemTreeView.SetCustomDirCaption(const Val: string);
begin
  if FCustomDirCaption = Val then exit;
  FCustomDirCaption := Val;
  if Items.Count > 0 then
    Items[0].Text := FCustomDirCaption;
end;

procedure TdfsSystemTreeView.RestoreChecks;
begin
  // Unimplemented
end;

procedure TdfsSystemTreeView.SaveChecks;
begin
  // Unimplemented
end;

procedure TdfsSystemTreeView.SetCheckboxes(Val: boolean);
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

function TdfsSystemTreeView.GetIDFromPath(const ShellFolder: IShellFolder;
   const APath: string; var ID: PItemIDList): boolean;
var
  OLEStr: array[0..MAX_PATH] of TOLEChar;
  Eaten: ULONG;
  Attr: ULONG;
begin
  try
    Result := TRUE;
    OLECheck(ShellFolder.ParseDisplayName(GetValidHandle, NIL,
       StringToWideChar(APath, OLEStr, MAX_PATH), Eaten, ID, Attr));
  except
    Result := FALSE;
  end;
end;


(*******************************************************************************
  ResetTreeView:
*******************************************************************************)
procedure TdfsSystemTreeView.Reset;
var
  RootNode: TTreeNode;
  RootID: PItemIDList;
  Success: boolean;
  FindID,
  CurrentNodeID: PItemIDList;
  CurrentNodeExpanded: boolean;
  OldInhibit: boolean;
begin
  // If we don't have a window handle or are in the loading state, DON'T do
  // this stuff.  When the handle is created or the loading is finished, we
  // will call this again.
  if (not HandleAllocated) or (csLoading in ComponentState) then
    exit;

  // If we have a selection, stash the node ID so we can find it after
  // resetting. All of the node data is going to get cleared, so we have to
  // copy the selected ID, not just store the the current pointer.
  if (Selected <> NIL) and (Selected.Data <> NIL) and
     (TFolderItemData(Selected.Data).FQ_IDList <> NIL) then
  begin
    CurrentNodeID := CopyPIDL(TFolderItemData(Selected.Data).FQ_IDList);
    CurrentNodeExpanded := Selected.Expanded;
  end
  else
  begin
    CurrentNodeID := NIL;
    CurrentNodeExpanded := FALSE;
  end;
  OldInhibit := InhibitReadDelay;
  InhibitReadDelay := TRUE;
  Items.BeginUpdate;
  try
    // Clear old stuff
    Selected := NIL;
    FreeAllItemData;
    Items.Clear;

    if (FRootFolder = rfCustom) then
      Success := GetIDFromPath(FDesktopFolder, FCustomDir, RootID)
    else
      Success := SUCCEEDED(SHGetSpecialFolderLocation(GetValidHandle,
         GetFolderID, RootID));

    if Success then
    begin
      RootNode := AddNode(FDesktopFolder, ConcatPIDLs(NIL, RootID), RootID, NIL);
      if FExpandRoot and assigned(RootNode) and (Items.Count > 0) then
        RootNode.Expand(FALSE);
    end; //if

    if SortType <> stNone then
      AlphaSort;

    if FLastSelection <> '' then
    begin
      Selection := FLastSelection;
      FLastSelection := '';
    end
    else if CurrentNodeID <> NIL then
    begin
      // Adjust for the lack of a "Desktop" node since FQ pidls do include it.
      if RootFolder in [rfFileSystem, rfDrives] then
        FindID := NextPIDL(CurrentNodeID) // Move to the next ID in the list}
      else
        FindID := CurrentNodeID;

      Selected := FindNodeFromID(FindID);
      if Selected <> NIL then
      begin
        Selected.MakeVisible;
        if CurrentNodeExpanded and CanExpand(Selected) then
          Selected.Expand(FALSE);
      end;
    end;

  finally
    Items.EndUpdate;
    InhibitReadDelay := OldInhibit;
    FreePIDL(CurrentNodeID);
  end;

  inherited Reset;
end; {Reset}


(*******************************************************************************
  EnumerateFolders:
*******************************************************************************)
function TdfsSystemTreeView.EnumerateFolders(const ShellFolder: IShellFolder;
   const ParentNode: TTreeNode): boolean;
var
  Flags: DWORD;
  EnumList: IEnumIDList;
  FQ_List,
  List: PItemIDList;
  Fetched: ULONG;
  OldCursor: TCursor;
begin
  Result := FALSE;
  // Inhibit screen painting for speed
  Items.BeginUpdate;
  // I wish there was some way to find out the number of items being enumerated,
  // and only set the hourglass cursor if there were many of them....
  OldCursor := Cursor;
  Cursor := crHourglass;
  try
    Flags := SHCONTF_FOLDERS;
    if FShowHiddenDirs then
      Flags := Flags or SHCONTF_INCLUDEHIDDEN;
    if FShowFiles then
      Flags := Flags or SHCONTF_NONFOLDERS;
    if SUCCEEDED(ShellFolder.EnumObjects(GetValidHandle, Flags, EnumList)) then
    begin
      // Walk the folders. The list will be saved so don't free it anywhere.
      while EnumList.Next(1, List, Fetched) = S_OK do
      begin
        Result := TRUE;  // only successful if we enumerated at least once.
        if assigned(ParentNode) then
          with TFolderItemData(ParentNode.Data) do
            FQ_List := ConcatPIDLs(FQ_IDList, List)
        else
          FQ_List := ConcatPIDLs(NIL, List);

        if AddNode(ShellFolder, FQ_List, List, ParentNode) = NIL then
        begin
          // not added for some reason.  Free up resources.
          FreePIDL(FQ_List);
          FreePIDL(List);
        end;
      end; {while}
      {$IFNDEF DFS_NO_COM_CLEANUP} EnumList.Release; {$ENDIF}
    end else
      // Maybe an event for this???  No items to enum when there should be.
      ;
  finally
    // always protect this stuff to make sure it gets reset.
    Items.EndUpdate;
    Cursor := OldCursor;
  end;
end;


(*******************************************************************************
  AddNode:
*******************************************************************************)
function TdfsSystemTreeView.AddNode(const ShellFolder: IShellFolder;
   FQ_IDList, IDList: PItemIDList; const ParentNode: TTreeNode): TTreeNode;
var
  NiceName, FullName: string;
  Flags: DWORD;
  Attrs: UINT;
{$IFNDEF DFS_STV_FASTMODE}
  Normal,
  Selected: integer;
{$ENDIF}
  EnumList: IEnumIDList;
  List: PItemIDList;
  Fetched: ULONG;
  SubFolder: IShellFolder;
  NodeData: TFolderItemData;
  NoPIDL: PItemIDList;
begin
  Result := NIL;
  NoPIDL := NIL;
  Attrs := SFGAO_VALIDATE;
  // Invalidate cached information.
  ShellFolder.GetAttributesOf(0, NoPIDL, Attrs);
{ This fails for UNC names at root.....
  if GetNiceName(ShellFolder, IDList, SHGDN_NORMAL, NiceName) then begin}
  NiceName := GetDisplayName(ShellFolder, IDList, dntNormal);
  begin
    if (ParentNode = NIL) and (FRootFolder = rfCustom) and
       (FCustomDirCaption <> '') then
      NiceName := FCustomDirCaption;
    // SFGAO_CONTENTSMASK is incorrect in the SDK header (not Borland's fault).
    Attrs := SFGAO_CAPABILITYMASK or SFGAO_DISPLAYATTRMASK and
       (not SFGAO_READONLY) or SFGAO_REMOVABLE or $F0000000{SFGAO_CONTENTSMASK};
    ShellFolder.GetAttributesOf(1, IDList, Attrs);
    if (FRootFolder = rfFileSystem) and
       ((Attrs and (SFGAO_FILESYSTEM or SFGAO_FILESYSANCESTOR)) = 0) then exit;

    // mask!
    if (FFileMask <> '') and ((Attrs and SFGAO_FOLDER) = 0) then
    begin
      SetLength(FullName, MAX_PATH);
      if SHGetPathFromIDList(FQ_IDList, PChar(FullName)) then
      begin
        SetLength(FullName, StrLen(PChar(FullName)));
        if not MaskSearch.FileMatches(FullName, FFileMaskList) then
        begin
          Result := NIL;
{ Removed by LSP
          FreePIDL(IDList);
          FreePIDL(FQ_IDList);}
          exit;
        end;
      end;
    end;

    Result := Items.AddChildObject(ParentNode, NiceName,
       AddItemData(ShellFolder, IDList, FQ_IDList, Attrs));

{$IFNDEF DFS_STV_FASTMODE}
    GetNormalAndSelectedIcons(FQ_IDList, Normal, Selected);

    if (Selected = 0) and (Normal <> 0) then
      Selected := Normal;

    if (Attrs and SFGAO_FOLDER) = 0 then
    begin
      Result.ImageIndex := Selected;
      Result.SelectedIndex := Selected;
    end else begin
      Result.ImageIndex := Normal;
      Result.SelectedIndex := Selected;
    end;
{$ENDIF}

    // added by Peter Ruskin 26/09/97 to get the share and link icons
    // Modified just a bit by Brad Stowers.
    if (SFGAO_SHARE and Attrs) <> 0 then { $20000 if shared }
    begin
      Result.OverlayIndex := 0;        { you can have four of these (0..3) }
// Causes incorrect overlay on some machines.  Shouldn't be necessary.
//      Images.Overlay(28, 0);   { 28 is index of share "hand" in Shell32.dll }
    end;   // share icons

    if (SFGAO_LINK and Attrs) <> 0 then { $00010000 if shared }
    begin
      Result.OverlayIndex := 1;        { you can have four of these (0..3) }
// Causes incorrect overlay on some machines.  Shouldn't be necessary.
//      Images.Overlay(29, 1);   { 29 is index of link "arrow" in Shell32.dll }
    end;   // link (Shortcut) icons
    // end changes by Peter Ruskin

    Result.HasChildren := (Result.Data <> NIL) and
       (TFolderItemData(Result.Data).ItemHasFlag(SFGAO_HASSUBFOLDER));
    if FShowFiles and (not Result.HasChildren) then
    begin
      // see if enum can find anything
      NodeData := TFolderItemData(Result.Data);
      if (ShellFolder.BindToObject(NodeData.IDList, NIL, IID_IShellFolder,
         pointer(SubFolder))) = S_OK then
      begin
        Flags := SHCONTF_NONFOLDERS;
        if ShowHiddenDirs then
          Flags := Flags or SHCONTF_INCLUDEHIDDEN;
        if SUCCEEDED(SubFolder.EnumObjects(GetValidHandle, Flags,
           EnumList)) then
        begin
          Result.HasChildren := TRUE;
          if EnumList.Next(1, List, Fetched) = S_OK then
            Result.HasChildren := Fetched > 0;
          FreePIDL(List);
          {$IFNDEF DFS_NO_COM_CLEANUP} EnumList.Release; {$ENDIF}
        end;
        {$IFNDEF DFS_NO_COM_CLEANUP} SubFolder.Release; {$ENDIF}
      end;
    end;
  end; {if}
end; {AddNode}


(*******************************************************************************
  AddItemData:
*******************************************************************************)
function TdfsSystemTreeView.AddItemData(ItemFolder: IShellFolder;
   aIDList, aFQ_IDList: PItemIDList; Attrs: UINT): TFolderItemData;
begin
  Result := TFolderItemData.Create;
  with Result do
  begin
    Initialized := FALSE;
    SFParent := ItemFolder;
    {$IFNDEF DFS_NO_COM_CLEANUP} SFParent.AddRef; {$ENDIF}
    IDList := aIDList;
    FQ_IDList := aFQ_IDList;
    Attributes := Attrs;
    FileSizeHigh := 0;
    FileSizeLow := 0;
  end;
  inc(NewCount);
end; {AddItemDta}


(*******************************************************************************
  FreeItemData:
*******************************************************************************)
procedure TdfsSystemTreeView.FreeItemData(Item: TTreeNode);
begin
  if Item.Data <> NIL then
  begin
    with GetNodeData(Item) do
    begin
      FreePIDL(FIDList);
      FreePIDL(FFQ_IDList);
      {$IFNDEF DFS_NO_COM_CLEANUP}
      if SFParent <> NIL then
        SFParent.Release;
      {$ENDIF}
    end;
    TFolderItemData(Item.Data).Free;
    // For some reason, setting Data to NIL is blowing up in D5. Bizarre.
    if not (csDestroying in ComponentState) then
      Item.Data := NIL;
    dec(NewCount);
  end;
end; {FreeItemData}


(*******************************************************************************
  FreeAllItemData:
*******************************************************************************)
procedure TdfsSystemTreeView.FreeAllItemData;
var
  x: integer;
begin
  for x := 0 to Items.Count-1 do
    FreeItemData(Items[x]);
(* This is old stuff that isn't needed any more.  list doesn't share pointers
   starting with v0.96
{$IFDEF DFS_SCP_SYSLISTVIEW}
  // Make sure list view doesn't keep an invalid node pointer.
  if (FListView <> NIL) then
    ListView.FLastNode := NIL;
{$ENDIF}
*)
end; {FreeAllItemData}


(*******************************************************************************
  SetRootFolder:
*******************************************************************************)
procedure TdfsSystemTreeView.SetRootFolder(Val: TRootFolder);
begin
  if Val = FRootFolder then exit;
  FRootFolder := Val;
  Reset;
end; {SetRootFolder}


(*******************************************************************************
  DisplayContextMenu:
*******************************************************************************)
function TdfsSystemTreeView.DisplayContextMenu(Node: TTreeNode;
   Where: TPoint): boolean;
var
  ItemData: TFolderItemData;
  WantsToRename: boolean;
begin
  ItemData := GetNodeData(Node);
  if (ItemData <> NIL) and (ItemData.IDList <> NIL) then
  begin
{$IFDEF DFS_COMPILER_4_UP}
    Result := ItemProp.DisplayContextMenu(ItemData.SFParent,
       ItemData.FIDList, ItemData.Attributes, DFS_HWND(Handle), Where, 1, TRUE,
       WantsToRename);
{$ELSE}
    Result := ItemProp.DisplayContextMenuPIDL(ItemData.SFParent,
       ItemData.FIDList, ItemData.Attributes,
       {$IFDEF DFS_CPPB} Pointer(Handle) {$ELSE} Handle {$ENDIF}, Where, 1,
       TRUE, WantsToRename);
{$ENDIF}
    if WantsToRename then
      Node.EditText;
  end
  else
    Result := FALSE;
end;

function TdfsSystemTreeView.GetItemData(Index: integer): TFolderItemData;
begin
  Result := GetNodeData(Items[Index]);
end;

function TdfsSystemTreeView.GetNodeData(Node: TTreeNode): TFolderItemData;
begin
  Result := NIL;
  if Node <> NIL then
  begin
    Result := Node.Data;
    if Result = NIL then
    begin
      if FShowErrorsInMsgBox then
        MessageDlg(LoadStr(IDS_NOFOLDERDATA), mtError, [mbOK], 0)
      else
        raise ENoFolderData.Create(LoadStr(IDS_NOFOLDERDATA));
    end;
  end;
end;

procedure TdfsSystemTreeView.Expand(Node: TTreeNode);
{$IFDEF DFS_DEBUG}
var
  TC: DWORD;
{$ENDIF}
begin
{$IFDEF DFS_DEBUG} TC := timeGetTime; {$ENDIF}
  Items.BeginUpdate;
  try
    Node.CustomSort(@DefaultTreeViewSort, 0);
  finally
    Items.EndUpdate;
  end;

  inherited Expand(Node);
end;

function TdfsSystemTreeView.CustomSort(SortProc: TTVCompare;
   Data: Longint): Boolean;
var
  SortCB: TTVSortCB;
  Node: TTreeNode;
begin
  Result := False;
  if not HandleAllocated then exit;
  with SortCB do
  begin
    if not Assigned(SortProc) then
      lpfnCompare := @DefaultTreeViewSort
    else
      lpfnCompare := SortProc;
    hParent := TVI_ROOT;
    lParam := Data;
    Result := TreeView_SortChildrenCB(Handle, SortCB, 0);
  end; // with

  if (Items.Count > 0) then
  begin
    Node := Items.GetFirstNode;
    while (Node <> nil) do
    begin
      if Node.HasChildren then
        Node.CustomSort(@DefaultTreeViewSort, Data);
      Node := Node.GetNext;
    end; // while
  end; // if
end; // CustomSort


function TdfsSystemTreeView.AlphaSort: Boolean;
begin
  if HandleAllocated then
  begin
    Items.BeginUpdate;
    try
      Result := CustomSort(@DefaultTreeViewSort, 0);
    finally
      Items.EndUpdate;
    end;
  end else
    Result := False;
end;


procedure TdfsSystemTreeView.DblClick;
begin
  inherited DblClick;
end;

function TdfsSystemTreeView.GetPopupMenu: TPopupMenu;
begin
  if FPopupMenuMethod in [pmmUser, pmmContextUser] then
    Result := inherited GetPopupMenu
  else
    Result := NIL;
end;

{$IFDEF DFS_COMPILER_5_UP}
procedure TdfsSystemTreeView.WMContextMenu(var Message: TWMContextMenu);
{$ELSE}
procedure TdfsSystemTreeView.WMRButtonUp(var Message: TWMRButtonUp);
{$ENDIF}
var
  SelNode: TTreeNode;
  Pt: TPoint;
begin
  case FPopupMenuMethod of
    pmmContext,
    pmmContextUser:
      begin
        {$IFDEF DFS_COMPILER_5_UP}
        Pt := ScreenToClient(Point(Message.XPos, Message.YPos));
        {$ELSE}
        Pt := Point(Message.XPos, Message.YPos);
        {$ENDIF}
        SelNode := GetNodeAt(Pt.x, Pt.y);
        if SelNode <> NIL then
        begin
          Selected := SelNode;
          if DisplayContextMenu(SelNode, ClientToScreen(Pt)) then
            Message.Result := 1;
        end;
      end;
  end;
  inherited;
end;


procedure TdfsSystemTreeView.ResetNode(const Node: TTreeNode);
var
  RedoExpand: boolean;
begin
  if Node = NIL then exit;
  RedoExpand := Node.Expanded;
  Node.DeleteChildren;
  if Node.Data <> NIL then
  begin
    GetNodeData(Node).Initialized := FALSE;
    if CanExpand(Node) and RedoExpand then
      Node.Expand(FALSE);
//!!! Old v0.95 code.  Notification below should be enough for new version.
(*
{$IFDEF DFS_SCP_SYSLISTVIEW}
    if (FListView <> NIL) then
      FListView.ResetNode(Node, (RootFolder = rfDesktop) and
         (Selected.AbsoluteIndex = 0));
{$ENDIF}
{$IFDEF DFS_SCP_SYSCOMBOBOX}
    if (FComboBox <> NIL) then
      FComboBox.ActiveFolderIDList :=
         CopyPIDL(TFolderItemData(Node.Data).FQ_IDList);
{$ENDIF}
*)
  end;
  NotifyLinkedControls(TRUE);
end;


(*******************************************************************************
  CanEdit - 29/8/96 (By Thomas AW Brown)
*******************************************************************************)
function TdfsSystemTreeView.CanEdit(Node: TTreeNode): boolean;
begin
  Result := (Node.Data <> NIL) and NodeData[Node].ItemHasFlag(SFGAO_CANRENAME);
end;

(*******************************************************************************
  Edit - 29/8/96 (By Thomas AW Brown)
       - 11/9/96 Moved guts of it to RenameNode so it could be used
                 programatically. (bds)
*******************************************************************************)
procedure TdfsSystemTreeView.Edit(const Item: TTVItem);
begin
  if RenameNode(GetNodeFromItem(Item), Item.pszText) then
    inherited Edit(Item);
end;

{$IFDEF DFS_STV_FILECHANGES}
procedure TdfsSystemTreeView.WatchDirectoryForChanges(const ANode: TTreeNode);
var
  APath: string;
  WatchedAttrs: TFSFilterSet;
begin
  if ParentThread <> NIL then
  begin
    ParentThread.Terminate;
    ParentThread := NIL;
    ParentWatchedNode := NIL;
  end;
  if FCThread <> NIL then
  begin
    FCThread.Terminate;  // it will destroy itself.
    FCThread := NIL;
    WatchedNode := NIL;
  end;
  APath := GetNodePath(ANode);
  if ShowFiles and FileExists(APath) then
    APath := ExtractFilePath(APath);
  if (APath <> '') then
  begin
    WatchedNode := ANode;
{$IFDEF DFS_SCP_SYSLISTVIEW}
    if (ListView <> NIL) or ShowFiles then
      WatchedAttrs := [fsfFilename, fsfDirname, fsfAttributes, fsfSize,
         fsfLastWrite]
    else
{$ELSE}
    if ShowFiles then
{$ENDIF}
      WatchedAttrs := [fsfDirname];
    FCThread := TFileChangeThread.Create(APath, WatchedAttrs, FALSE);
    FCThread.OnTerminate := ThreadDone;

  { Have to watch the parent node as well in case the one we are in does
    something -- like get deleted }
    ParentWatchedNode := WatchedNode.Parent;
    if ParentWatchedNode <> NIL then
    begin
      APath := GetNodePath(ParentWatchedNode);
      if (APath <> '') then
      begin
        ParentThread := TFileChangeThread.Create(APath, [fsfDirname], FALSE);
        ParentThread.OnTerminate := ParentThreadDone;
      end;
    end;
  end;
end;

procedure TdfsSystemTreeView.ThreadDone(Sender: TObject);
var
  Temp: TTreeNode;
  TExpanded : Boolean;
  dir: string;
begin
  FCThread := NIL;
  // Don't need to watch the parent any more.
  if ParentThread <> NIL then
  begin
    ParentWatchedNode := NIL;
    ParentThread.Terminate;
    ParentThread := NIL;
  end;
  // we need to make sure that the directory we are watching hasn't been
  // deleted or moved
  Items.BeginUpdate;
  try
    dir := GetNodePath(WatchedNode);
    if dir = '' then exit;
    if not DirectoryExists(dir) then
    begin
      if FileExists(dir) then // is it file that the user selected?
        WatchDirectoryForChanges(WatchedNode.Parent)
      else begin
        Temp := WatchedNode.Parent;
        TExpanded := Temp.Expanded;
        ResetNode(Temp);
        if TExpanded then
        begin
          Temp.Expand(False);
          Temp.MakeVisible;
        end;
        Selected := Temp;
      end;
    end else begin
      Temp := WatchedNode;
      TExpanded := Temp.Expanded;
      WatchedNode := NIL;
      ResetNode(Temp);
      if TExpanded then
      begin
        Temp.Expand(False);
        Temp.MakeVisible;
      end;
      WatchDirectoryForChanges(Temp);
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TdfsSystemTreeView.ParentThreadDone(Sender: TObject);
begin
  ParentThread := NIL;
  // Check to see if the directory currently selected has been deleted or renamed
  if not DirectoryExists(GetNodePath(WatchedNode)) then
  begin
    Selected := ParentWatchedNode;
    Reset;
  end;
end;
{$ENDIF}

function TdfsSystemTreeView.GetNodePath(const Node: TTreeNode): string;
begin
  Result := '';
  if (Node <> NIL) and (Node.Data <> NIL) then
  begin
    SetLength(Result, MAX_PATH);
    if SHGetPathFromIDList(GetNodeData(Node).FQ_IDList, PChar(Result)) then
      SetLength(Result, StrLen(PChar(Result)))
    else
      Result := '';
  end;
end;


procedure TdfsSystemTreeView.Change(Node: TTreeNode);
var
  OldCursor : TCursor;
begin
  if FDestroyingSelf then
    exit;

  OldCursor := Cursor;
  Cursor := crHourglass;

  inherited Change(Node);

  {$IFDEF DFS_STV_FILECHANGES}
  if (ReadDelay < 1) and (Selected <> NIL) and (Selected.Data <> NIL) then
    WatchDirectoryForChanges(Selected);
  {$ENDIF}

  Cursor := OldCursor;
end;


procedure TdfsSystemTreeView.DoStartDrag(var DragObject: TDragObject);
begin
  inherited DoStartDrag(DragObject);
//  DoDragDrop
end;


function TdfsSystemTreeView.RenameNode(const Node: TTreeNode;
   const NewName: string): boolean;
var
  pstr: PWideChar;
  AnIDList: PItemIDList;
begin
  Result := FALSE;
  if (Node = NIL) or (Node.Data = NIL) or (NewName = '') then exit;

  pstr := StringToOleStr(NewName); //make an OLE string for SetNameOf
  try
    with GetNodeData(Node) do
    begin
      AnIDList := CreatePIDL(1);
      // SetNameOf will free the first IDList passed and return the new IDList
      // in the second PIDL parameter.
      Result := SUCCEEDED(SFParent.SetNameOf(GetValidHandle, IDList, pstr,
         SHCONTF_FOLDERS, AnIDList));
      if Result then
      begin
        Node.Text := NewName;
        IDList := AnIDList;
        if (assigned(Node.Parent) and (assigned(Node.Parent.Data))) then
          FQ_IDList := ConcatPIDLS(TFolderItemData(Node.Parent.Data).FQ_IDList,
             IDList)
        else
          FQ_IDList := ConcatPIDLs(NIL, IDList);
      end;
    end;
  finally
    ShellMalloc.Free(pstr); // Don't forget to free the OLE string
  end;
end;

function TdfsSystemTreeView.DeleteNode(const Node: TTreeNode): boolean;
var
  ItemData: TFolderItemData;
begin
  Result := FALSE;
  ItemData := GetNodeData(Node);
  if (ItemData <> NIL) and (ItemData.IDList <> NIL) then

(*
  Dir := GetNodePath(Node);
  if Dir = '' then exit;
  Result := RemoveDirectory(PChar(Dir));
  if Result then
    DeleteItem(Node);
*)
{$IFDEF DFS_COMPILER_4_UP}
    Result := ItemProp.PerformVerb('delete', ItemData.SFParent, ItemData.FIDList,
       ItemData.Attributes, DFS_HWND(Handle), 1);
{$ELSE}
    Result := ItemProp.PerformVerbPIDL('delete', ItemData.SFParent,
       ItemData.FIDList, ItemData.Attributes,
       {$IFDEF DFS_CPPB} Pointer(Handle) {$ELSE} Handle {$ENDIF}, 1);
{$ENDIF}
end;

function TdfsSystemTreeView.AddNewNode(const ParentNode: TTreeNode;
   const NodeName: string; SelectNewNode: boolean): boolean;
var
  Dir: string;
  Temp: TTreeNode;
begin
  Result := FALSE;
  Dir := GetNodePath(ParentNode);
  if (Dir = '') or (NodeName = '') then exit; // only add to file system nodes.

  if Dir[Length(Dir)] <> '\' then
    Dir := Dir + '\';
  Dir := Dir + NodeName;

{$IFDEF DFS_STV_FILECHANGES}
  // Turn off the file change thread.
  Temp := NIL;
  if FCThread <> NIL then
  begin
    Temp := WatchedNode;
    WatchedNode:= NIL;
    FCThread.Terminate;
    FCThread := NIL;
  end;
  if ParentThread <> NIL then
  begin
    ParentWatchedNode := NIL;
    ParentThread.Terminate;
    ParentThread := NIL;
  end;
{$ENDIF}

  Result := CreateDirectory(PChar(Dir), NIL);
  if Result then
  begin
    ResetNode(ParentNode);
    if SelectNewNode then
    begin
      Temp := ParentNode.GetFirstChild;
      while assigned(Temp) do
      begin
        if Temp.Text = NodeName then
        begin
          Selected := Temp;
          break; // We're done
        end;
        Temp := Temp.GetNextSibling;
      end;
{$IFDEF DFS_STV_FILECHANGES}
      Temp := NIL; // Changing Selected will restart the watch.
{$ENDIF}
    end;
  end;

{$IFDEF DFS_STV_FILECHANGES}
  if Temp <> NIL then
    WatchDirectoryForChanges(Temp);
{$ENDIF}
end;

function TdfsSystemTreeView.GetVersion: string;
begin
  Result := DFS_COMPONENT_TREE_VERSION;
end;

procedure TdfsSystemTreeView.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

(*******************************************************************************
 Computes if tree must be moved up or down, left or right, depending on mouse
 position.
*******************************************************************************)
procedure TdfsSystemTreeView.Compute_TreeMoves(X, Y: integer);
var
  NbPixels: Integer;
  RMin, RMax: Integer;
  HOffset,
  VOffset: Integer;
begin
  // Comments by Aristide Torrelli
  {--------------------------------------------------------------------}
  { Algorithm :                                                        }
  { -----------                                                        }
  { . Detect scroll bars (horizontal and/or vertical) to set offsets   }
  { . If mouse is near upper edge or lower edge, scroll the control to }
  {   up or down by one line                                           }
  { . If mouse is near left or right edge, scroll the control to one   }
  {   page left or one page right                                      }
  {--------------------------------------------------------------------}
  if not FAutoscroll then exit;
  {--------------------------------------------------------------------}
  { Retrieve the scroll bar ranges, if such scroll bars exist (either  }
  { horizontal or vertical). An offset must be set if there is a       }
  { scroll bar, i-e if there is a range (RMin <> RMax).                }
  {--------------------------------------------------------------------}
  GetScrollRange(Handle, SB_HORZ, RMin, RMax);
  if RMin = RMax then
     HOffset := 0
  else
    HOffset := 16;
  GetScrollRange(Handle, SB_VERT, RMin, RMax);
  If RMin = RMax then
    VOffset := 0
  else
    VOffset := 16;

  {--------------------------------------------------------------------}
  { Near an edge means at a maximum of (half) a line, i-e half the     }
  { pixles of the current font.                                        }
  {--------------------------------------------------------------------}
  NbPixels := Abs((Font.Height));

  if (Y < NbPixels) then
    Perform(WM_VSCROLL, SB_LINEUP, 0)
  else if (Y > Height - VOffset - NbPixels) then
    Perform(WM_VSCROLL, SB_LINEDOWN, 0);

  if (X < NbPixels ) then
    Perform(WM_HSCROLL, SB_LINELEFT, 0)
  else if (X > Width - HOffset - NbPixels) then
    Perform(WM_HSCROLL, SB_LINERIGHT, 0);
end;

procedure TdfsSystemTreeView.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  if FAutoScroll then
    Compute_TreeMoves( X, Y );
  inherited MouseMove( Shift, X, Y );
end;

procedure TdfsSystemTreeView.Populated(Node: TTreeNode);
begin
  if assigned(FOnPopulated) then
    FOnPopulated(Self, Node);
end;

// Implementation must return the actual ID list.  Caller will make a copy
// of it it wants it's own.  Implementer owns this one, i.e. it's the "real
// thing".  If there isn't one, return NIL.
function TdfsSystemTreeView.GetSelectionPIDL: PItemIDList;
begin
  if (Selected <> NIL) and (Selected.Data <> NIL) then
    Result := NodeData[Selected].FQ_IDList
  else
    Result := NIL;
end;

function TdfsSystemTreeView.GetSelectionParentFolder: IShellFolder;
begin
  Result := FDesktopFolder;
(*
  if (Selected <> NIL) and (Selected.Data <> NIL) then
    Result := NodeData[Selected].SFParent
  else
    Result := NIL;
*)
end;

// Implementation notes: IDList parameter belongs to someone else.  If
// needed by this component, a copy must be made of it.  This differs from
// the Reset method in that it does not notify linked controls of a change
// because that could result in an endless cycle of notifications. Return
// value indicates success or failure.
function TdfsSystemTreeView.LinkedReset(const ParentFolder: IShellFolder;
   const IDList: PItemIDList; ForceUpdate: boolean): boolean;
var
  FindID: PItemIDList;
begin

  // This method is not intended for general purpose use.  It makes some
  // assumptions about what is being passed, and if those aren't valid then
  // it won't work (or worse).  Internal use only!
  Result := FALSE;
  //!!! May need to treat NIL IDList as a root selection.
  if (IDList <> NIL) then
  begin
    // Adjust for the lack of a "Desktop" node since FQ pidls do include it.
    if RootFolder in [rfFileSystem, rfDrives] then
      FindID := NextPIDL(IDList) // Move to the next ID in the list
    else
      FindID := IDList;
    Selected := FindNodeFromID(FindID);
    if Selected <> NIL then
      Selected.MakeVisible;
  end;

(* This is the old code for listview resets...
  Node := Selected;
  if (IDList <> NIL) and (Items.Count > 0) and (Node <> NIL) and
     (Node.Data <> NIL) then
  begin
    if not Node.Expanded then
      Node.Expand(FALSE);
    if TFolderItemData(Node.Data).IDList = IDList then exit;
    Node := Node.GetFirstChild;
    while Node <> NIL do
    begin
      if Node.Data <> NIL then
        if ComparePIDLs(TFolderItemData(Node.Data).IDList, IDList) then
        begin
          // Found it!
          Selected := Node;
          Result := TRUE;
          break;
        end;
      Node := Node.GetNextSibling;
    end;
  end;
*)
end;

{$IFDEF DFS_SCP_SYSCOMBOBOX}
procedure TdfsSystemTreeView.ComboBoxSetSelectionPIDL(APIDL: PItemIDList);
var
  HoldIDlist: TList;
  TempPIDL, FindID: PItemIDList;
  Node, ChildNode: TTreeNode;
  x: integer;
begin
  Node := Selected;
  if (APIDL <> NIL) and (Items.Count > 0) and (Node <> NIL) and
     (Node.Data <> NIL) then
  begin
    // take the PIDL passed and strip every ItemFrom it and add it to a list
    HoldIDList := TList.Create;
    try
      FindID := CopyPIDL(APIDL);

      while (FindID.mkid.cb <> 0) do
      begin
        //Add this id to the list
        HoldIDList.Add(CopyPidl(FindID));
        TempPIDL := CopyParentPIDL(FindID);
        FreePIDL(FindID);
        FindID := TempPIDL;
      end;
      HoldIDList.Add(FindID);
      //Now the last Item in the list should be the desktop.
      if ComparePIDLs(TFolderItemData(Items[0].Data).FQ_IDList,
                      PItemIDList(HoldIDlist.Items[HoldIDList.Count-1])) then
      begin
        // yup the last item is the desktop!
        Node:=Items[0];
        // now start expanding the tree until we find the item passed
        for x := HoldIDList.Count-2 downto 0 do
        begin
          Node.Expand(False);
          ChildNode := Node.GetFirstChild;
          while ChildNode <> NIL do
          begin
            if ChildNode.Data <> NIL then
              // change it to look at FUll id
              if ComparePIDLs(TFolderItemData(ChildNode.Data).FQ_IDList,
                 PItemIDList(HoldIDlist.Items[x])) then
              begin
                // Found it!
                Node := ChildNode;
                break;
              end;
            ChildNode := ChildNode.GetNextSibling;
          end;
        end;

        Selected := Node;
        if not Node.Expanded then
          Node.Expand(False);
      end;
    finally
      for x := 0 to HoldIDList.Count-1 do
      begin
        TempPIDL := HoldIDList[x];
        FreePIDL(TempPIDL);
      end;
      HoldIDList.Free;
    end;
  end;
end;
{$ENDIF}



procedure TdfsSystemTreeView.ChangeToParent;
begin
  if Selected.Parent <> NIL then
  begin
    Selected := Selected.Parent;
    Selected.MakeVisible;
  end else
    MessageBeep(MB_ICONSTOP); // At root, stop that!
end;

initialization
  NewCount := 0;

finalization
{$IFDEF DFS_DEBUG} try {$ENDIF}
  // You might want to take this out for production releases.  I wanted to do
  // it with an {$IFDEF}, but the compiler is nasty about it
{  if NewCount > 0 then
    raise ELeaking.Create(MEMLEAK_STR);}
end.



