{$I DFS.INC}                    { Defines for all Delphi Free Stuff components }
{$I SYSTEMCONTROLPACK.INC}      { Defines specific to these components }

{ -----------------------------------------------------------------------------}
{ TdfsSystemListView                                                           }
{ -----------------------------------------------------------------------------}
{ A list view control that acts as the list in the Windows Explorer.  This is  }
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

unit SystemListView;

interface

{$IFNDEF DFS_SCP_SYSLISTVIEW}
  'Error, shouldn''t be compiling this unit!'
{$ENDIF}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  {$IFDEF DFS_COMPILER_3_UP} ShlObj, ActiveX, {$ELSE} MyShlObj, OLE2, {$ENDIF}
  {$IFDEF DFS_DEBUG} MMSystem, {$ENDIF}
  SystemControlPack, PidlHelp, ItemProp, Menus, ComCtrls, StdCtrls,
  CommCtrl, _Res__IDs;

const
  DFS_COMPONENT_LIST_VERSION = 'TdfsSystemListView ' + DFS_SCP_VERSION;

{$IFDEF DFS_COMPILER_3_UP}
resourcestring
{$ELSE}
const
{$ENDIF}
  strColName        = 'Name';
  strColType        = 'Type';
  strColTotalSize   = 'Total Size';
  strColFreeSpace   = 'Free Space';
  strColDescription = 'Description';
  strColDocuments   = 'Documents';
  strColPhone       = 'Phone #';
  strColStatus      = 'Status';
  strColComment     = 'Comment';
  strColEntryName   = 'Entry name';
  strColDeviceName  = 'Device name';
  strColSize        = 'Size';
  strColModified    = 'Modified';
  strColUserDefined = 'User defined';
  strKilobytes      = ' KB';
  strColAttrib      = 'Attributes';
  strSystemFolder   = 'System Folder';

  strReadOnlyChar   = 'R';
  strHiddenChar     = 'H';
  strSystemChar     = 'S';
  strArchiveChar    = 'A';

type
  TSLVAddListItem = procedure(Sender: TObject; AItem: TListItem) of object;
  TSLVCreateColumns = TNotifyEvent;
  TColumnType = (ctFileSystem, ctMachine, ctControlPanel, ctPrinters, ctDUNet,
     ctNetwork, ctUser, ctUnknown);

  TdfsSystemListView = class(TdfsCustomSystemListView)
  private
    FCurrentPIDL: PItemIDList;
    FCurrentShellFolder: IShellFolder;
    FLastNodeWasDesktop: boolean;
    FFileMask: string;
    FFileMaskList: TStringList;
    FNeedsReset: boolean;
    FPopupMenuMethod: TPopupMenuMethod;
    FOnCreateColumns: TSLVCreateColumns;
    FAutoscroll: boolean;
    FOnAddListItem: TSLVAddListItem;
    FShowErrorsInMsgBox: boolean;
    FLastNode: TTreeNode;
    // This will eventually be a set of attributes (system, read-only, etc.)
    FShowHiddenFiles: boolean;
    FShowFolders: boolean;
    FColumnType: TColumnType;
    FColumnWidths: record
      cwName, cwSize, cwType, cwModified, cwAttr: integer;
    end;
    FRecreatingWnd: boolean;
    {$IFNDEF DFS_SLV_USING_ELV}
    FLastSortOrder : ByteBool;
    FLastColumnIndexSort : Integer;
    {$ENDIF}

    FOnPopulated: TNotifyEvent;

    function AddItemData(ItemFolder: IShellFolder; aIDList,
       aFQ_IDList: PItemIDList; Attrs: UINT): TFolderItemData;
    procedure FreeItemData(Item: TListItem);
    procedure FreeAllItemData;
    procedure CNNotify(var Message: TWMNotify); message CN_NOTIFY;
    {$IFDEF DFS_COMPILER_5_UP}
    procedure WMContextMenu(var Message: TWMContextMenu); message WM_CONTEXTMENU;
    {$ELSE}
    procedure WMRButtonUp(var Message: TWMRButtonUp); message WM_RBUTTONUP;
    {$ENDIF}
  protected
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

    function GetItemFromAPIItem(const Item: TLVItem): TListItem;
    procedure CreateColumns(ColType: TColumnType); dynamic;
    procedure SetColumnType(ColType: TColumnType);
    procedure SetShowFolders(Val: boolean);
    function GetFilename(Index: TListItem): string;
    function GetFullFilename(Index: TListItem): string;
    function CanEdit(Item: TListItem): boolean; override;
    procedure Edit(const Item: TLVItem); override;
    function GetVersion: string; {$IFDEF DFS_SLV_USING_ELV} override; {$ENDIF}
    {$IFNDEF DFS_SLV_USING_ELV}
    procedure SetVersion(const Val: string);
    {$ENDIF}
    function GetItems: TListItems;
    procedure SetFileMask(const Val: string);

    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure Loaded; override;
    function GetPopupMenu: TPopupMenu; override;
    function EnumerateFiles(const Folder: IShellFolder;
       const IDList: PItemIDList): boolean;
    function GetItemData(Item: TListItem): TFolderItemData;
    function AddNode(const ShellFolder: IShellFolder; FQ_IDList,
       IDList: PItemIDList): TListItem; dynamic;

    {$IFNDEF DFS_SLV_USING_ELV}
    // Added by Fabrice FOUQUET 30/03/98
    // To change the sort
    procedure ColClick(Column: TListColumn); override;
    function CustomSort(SortProc: TLVCompare; Data: Longint): Boolean; dynamic;
    function AlphaSort: Boolean; 
    {$ENDIF}
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure Compute_ListMoves(X, Y: integer); dynamic;
    procedure DblClick; override;
    procedure Populated; dynamic;
    function FindItemFromID(AnID: PItemIDList): TListItem;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    // Useful functions for applications.  These modify permanently, not just
    // the item.  i.e. if you rename 'My Computer' to 'Crasher', it is renamed
    // system wide, not just in your app.  If you delete the 'C:\WINDOWS'
    // folder, you are in deep trouble and I deny any responsibility.
    function RenameItem(const Item: TListItem; const NewName: string): boolean;
    function DeleteItem(const Item: TListItem): boolean;
    // Move up one directory, i.e. "cd .."
    procedure ChangeToParent;

    procedure DefaultDblClickAction(Item: TListItem);
    procedure Reset; override;
    procedure RecreateColumns; virtual;
    function DisplayContextMenu(Item: TListItem; Where: TPoint): boolean;
       dynamic;
    function DisplaySelectedContextMenu(Where: TPoint): boolean; dynamic;

    procedure SetColumnWidths(NameWidth, SizeWidth, TypeWidth, ModifiedWidth,
       AttrWidth: integer);
    function GetItemAttrs(const Item: TListItem): UINT;
    function GetFullPath(const Item: TListItem): string;
    // The var parameter of this function is a memory block allocated with
    // GetMem.  The caller of the function MUST release the memory with FreeMem
    // when done with the array. The PPIDLArray type is defined in the ItemProp
    // unit. The return value is the number of items in the array.
    function GetSelectedPIDLs(var SelPIDLs: PPIDLArray): integer;

    property ShowErrorsInMsgBox: boolean
       read FShowErrorsInMsgBox write FShowErrorsInMsgBox default TRUE;
    property Items
       read GetItems;
    property Filename[Index: TListItem]: string
       read GetFilename;
    property FullFilename[Index: TListItem]: string
       read GetFullFilename;
    property ItemData[Item: TListItem]: TFolderItemData
       read GetItemData;

    property Columns;
    {$IFDEF DFS_SLV_USE_EXTLISTVIEW}
    property LastColumnClicked;
    property CurrentColumnWidth;
    property HeaderHandle;
    property SubItem_BoundsRect;
    property SubItem_IconRect;
    property SubItem_LabelRect;
    property SubItem_SelectBoundsRect;
    property HotItem;
    property HotCursor;
    property WorkArea;
    property IsChecked;
    property SubItem_ImageIndex;
    property SelectionMark;
    property ItemIndent;
    property CurrentSortAscending;
    {$ELSE}
    {$IFDEF DFS_SLV_USE_ENHLISTVIEW}
    property HeaderHandle;
    property CurrentSortAscending;
    property LastColumnClicked;
    property CurrentColumnWidth;
    {$ENDIF}
    {$ENDIF}
  published
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    property PopupMenuMethod: TPopupMenuMethod
       read FPopupMenuMethod
       write FPopupMenuMethod
       default pmmContextUser;
    property ColumnType: TColumnType
       read FColumnType write SetColumnType default ctFileSystem;
    property ShowHiddenFiles: boolean
       read FShowHiddenFiles write FShowHiddenFiles default TRUE;
    property ShowFolders: boolean
       read FShowFolders write SetShowFolders default TRUE;
    property Autoscroll: boolean
       read FAutoscroll write FAutoscroll default FALSE;
    property FileMask: string
       read FFileMask write SetFileMask;


    property OnCreateColumns: TSLVCreateColumns
       read FOnCreateColumns write FOnCreateColumns;
    property OnAddListItem: TSLVAddListItem
       read FOnAddListItem write FOnAddListItem;
    property OnPopulated: TNotifyEvent
       read FOnPopulated write FOnPopulated;

    {$IFDEF DFS_SCP_SYSTREEVIEW}
    property TreeView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    property ComboBox;
    {$ENDIF}

    {$IFDEF DFS_SLV_USE_EXTLISTVIEW}
    property HideSelection;
    property ExtendedStyles;
    property VirtualMode;
    property HoverTime;
    property RequireComCtlUpdate;
    {$IFDEF DFS_TRY_BACKGROUND_IMAGE}
    property BackgroundImage;
    {$ENDIF}
    property SaveSettings;
    property ColumnsFormat;
    // New Events
    property OnMarqueeBegin;
    property OnItemActivate;
    property OnHotTrack;
    {$IFDEF DFS_TRY_INFOTIP}
    property OnInfoTip;
    {$ENDIF}
    property OnVMGetItemInfo;
    property OnVMCacheHint;
    property OnVMFindItem;
    property OnVMStateChanged;
    property ShowSortArrows;


    // Publish inherited protected properties
    property AutoColumnSort;
    property AutoSortStyle;
    property AutoResort;
    property AutoSortAscending;
    property ReverseSortArrows;
    property Style;

    property OnDrawHeader;
    property OnMeasureItem;
    property OnDrawItem;
    property OnDrawSubItem;
    property OnAfterDefaultDrawItem;
    property OnSortItems;
    property OnSortBegin;
    property OnSortFinished;
    property OnEditCanceled;


    property Align;
    {$IFDEF DFS_COMPILER_4_UP}
    property Anchors;
    property BiDiMode;
    {$ENDIF}
    property BorderStyle;
    {$IFDEF DFS_COMPILER_4_UP}
    property BorderWidth;
    {$ENDIF}
    property Color;
    property ColumnClick;
    {$IFDEF DFS_COMPILER_4_UP}
    property Constraints;
    {$ENDIF}
    property OnClick;
    property OnDblClick;
    property Ctl3D;
    property DragMode;
    {$IFDEF DFS_COMPILER_4_UP}
    property DragKind;
    {$ENDIF}
    property ReadOnly
       default False;
    property Enabled;
    property Font;
    property IconOptions;
    property AllocBy;
    property MultiSelect;
    property OnChange;
    property OnChanging;
    property OnColumnClick;
    property OnDeletion;
    property OnEdited;
    property OnEditing;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEnter;
    property OnExit;
    property OnInsert;
    property OnDragDrop;
    property OnDragOver;
    property DragCursor;
    property OnStartDrag;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnResize;
    property OnSelectItem;
    property OnStartDock;
    {$ENDIF}
    property ParentColor
       default False;
    property ParentFont;
    property ParentShowHint;
    {$IFDEF DFS_COMPILER_4_UP}
    property ParentBiDiMode;
    {$ENDIF}
    property ShowHint;
    property PopupMenu;
    property ShowColumnHeaders;
    property TabOrder;
    property TabStop
       default True;
    property ViewStyle;
    property Visible;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property LargeImages;
    property StateImages;
    {$ELSE}
    {$IFDEF DFS_SLV_USE_ENHLISTVIEW}
    property AutoColumnSort;
    property AutoSortStyle;
    property AutoResort;
    property AutoSortAscending;
    property ReverseSortArrows;
    property ShowSortArrows;
    property SaveSettings;
    property Style;

    property OnMeasureItem;
    property OnDrawItem;
    property OnDrawSubItem;
    property OnAfterDefaultDrawItem;
    property OnDrawHeader;
    property OnSortItems;
    property OnSortBegin;
    property OnSortFinished;
    property OnEditCanceled;

    { Publish TCustomListView inherited protected properties }
    property Align;
    {$IFDEF DFS_COMPILER_4_UP}
    property Anchors;
    property BiDiMode;
    {$ENDIF}
    property BorderStyle;
    {$IFDEF DFS_COMPILER_4_UP}
    property BorderWidth;
    {$ENDIF}
    property Color;
    property ColumnClick;
    property OnClick;
    property OnDblClick;
    {$IFDEF DFS_COMPILER_4_UP}
    property Constraints;
    {$ENDIF}
    property Ctl3D;
    {$IFDEF DFS_COMPILER_4_UP}
    property DragKind;
    {$ENDIF}
    property DragMode;
    property ReadOnly
       default False;
    property Enabled;
    property Font;
    {$IFDEF DFS_COMPILER_4_UP}
    property FullDrag;
    {$ENDIF}
    property HideSelection;
    property IconOptions;
    property AllocBy;
    property MultiSelect;
    property OnChange;
    property OnChanging;
    property OnColumnClick;
    property OnDeletion;
    property OnEdited;
    property OnEditing;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEnter;
    property OnExit;
    property OnInsert;
    property OnDragDrop;
    property OnDragOver;
    property DragCursor;
    property OnStartDrag;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnResize;
    property OnSelectItem;
    property OnStartDock;
    {$ENDIF}
    property ParentColor
       default False;
    property ParentFont;
    property ParentShowHint;
    {$IFDEF DFS_COMPILER_4_UP}
    property ParentBiDiMode;
    {$ENDIF}
    property ShowHint;
    property PopupMenu;
    property ShowColumnHeaders;
    property TabOrder;
    property TabStop
       default True;
    property ViewStyle;
    property Visible;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property LargeImages;
    property SmallImages;
    property StateImages;
    {$ELSE}
    { Published protected properties }
    property Align;
    property AllocBy;
    {$IFDEF DFS_COMPILER_4_UP}
    property Anchors;
    property BiDiMode;
    {$ENDIF}
    property BorderStyle;
    {$IFDEF DFS_COMPILER_4_UP}
    property BorderWidth;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_3_UP}
    property Checkboxes;
    {$ENDIF}
    property Color;
    property ColumnClick;
    {$IFDEF DFS_COMPILER_4_UP}
    property Constraints;
    {$ENDIF}
    property Ctl3D;
    property DragCursor;
    {$IFDEF DFS_COMPILER_4_UP}
    property DragKind;
    {$ENDIF}
    property DragMode;
    {$IFDEF DFS_COMPILER_3_UP}
    property Enabled;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_4_UP}
    property FlatScrollBars;
    {$ENDIF}
    property Font;
    {$IFDEF DFS_COMPILER_4_UP}
    property FullDrag;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_3_UP}
    property GridLines;
    {$ENDIF}
    property HideSelection;
    {$IFDEF DFS_COMPILER_3_UP}
    property HotTrack;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_4_UP}
    property HotTrackStyles;
    {$ENDIF}
    property IconOptions;
    property MultiSelect;
    property OnChange;
    property OnChanging;
    property OnClick;
    property OnColumnClick;
    property OnCompare;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnCustomDraw;
    property OnCustomDrawItem;
    property OnCustomDrawSubItem;
    property OnData;
    property OnDataFind;
    property OnDataHint;
    property OnDataStateChange;
    {$ENDIF}
    property OnDblClick;
    property OnDeletion;
    property OnDragDrop;
    property OnDragOver;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnDrawItem;
    {$ENDIF}
    property OnEdited;
    property OnEditing;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnGetImageIndex;
    {$ENDIF}
    property OnInsert;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnResize;
    property OnSelectItem;
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
    {$IFDEF DFS_COMPILER_4_UP}
    property OwnerDraw;
    property ParentBiDiMode;
    {$ENDIF}
    {$IFDEF DFS_COMPILER_3_UP}
    property ParentColor default False;
    property ParentFont;
    {$ENDIF}
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly default False;
    {$IFDEF DFS_COMPILER_3_UP}
    property RowSelect;
    {$ENDIF}
    property ShowColumnHeaders;
    property ShowHint;
    property SortType;
    property TabOrder;
    property TabStop default True;
    property ViewStyle;
    property Visible;
    {$ENDIF}
    {$ENDIF}
  end;


implementation

uses
  ShellAPI, MaskSearch,
  {$IFDEF DFS_COMPILER_4_UP} ImgList, {$ENDIF}
  {$IFDEF DFS_COMPILER_3_UP} ComObj, {$ELSE} OleAuto, {$ENDIF}
  Registry;

const
  SORT_ALPHA = -1;
  SORT_CURRENT = -2;
  
var
  NewCount: Longint;


function Commaize(S: string): string;
var
  Len: Integer;
begin
  Len := Length(S);
  if Len > 3 then
  begin
    Result := '';
    while Len > 3 do
    begin
      Insert(',' + Copy(S, Len-2, 3), Result, 1);
      Delete(S, Len-2, 3);
      Dec(Len, 3);
    end;
    if Len > 0 then
      Insert(S, Result, 1);
  end else
    Result := S;
end;



constructor TdfsSystemListView.Create(AOwner: TComponent);
type
  PWordArray = ^TWordArray;
  TWordArray = array[0..300] of word;
var
  OptRIF : TRegIniFile;
  BufferPtr: PWordArray;
  DataBuffer : array[0..4] of word;
  DataSize: integer;
  x: integer;
begin
  // These need to be before inherited!
  FLastNodeWasDesktop := FALSE;
  FNeedsReset := FALSE;
  FLastNode := NIL;
  FCurrentPIDL := NIL;
  // Set the defaults.
  FAutoscroll := FALSE;
  FShowErrorsInMsgBox := TRUE;
  FShowHiddenFiles := TRUE;
  FShowFolders := TRUE;
  FColumnType := ctFileSystem;
  FFileMaskList := TStringList.Create;
  {$IFNDEF DFS_SLV_USING_ELV}
  FLastColumnIndexSort := -1;
  {$ENDIF}

  inherited Create(AOwner);

  FPopupMenuMethod := pmmContextUser;

  // Added by Fabrice FOUQUET 30/03/98
  // Read the columns width for Explorer in the registry
  // Must we do to update this value in destroy event ?
  // Default values:
  DataBuffer[0] := 120;
  DataBuffer[1] := 60;
  DataBuffer[2] := 120;
  DataBuffer[3] := 120;
  DataBuffer[4] := 60;
  OptRIF := TRegIniFile.Create('Software\Microsoft\Windows\CurrentVersion\Explorer');
  try
    DataSize := optRIF.GetDataSize('DirectoryCols');
    if DataSize > 0 then
    begin
      GetMem(BufferPtr, DataSize);
      try
        OptRIF.ReadBinaryData('DirectoryCols', BufferPtr^, DataSize);
        for x := 0 to (DataSize div SizeOf(Word))-1 do
        begin
          if x > 4 then break;                        {//}
          DataBuffer[x] := BufferPtr^[x];
        end;
      finally
        FreeMem(BufferPtr);
      end;
    end;
  finally
    OptRIF.Free;
  end;
  SetColumnWidths(DataBuffer[0], DataBuffer[1], DataBuffer[2], DataBuffer[3],
     DataBuffer[4]);
end; {Create}


destructor TdfsSystemListView.Destroy;
begin
  FreePIDL(FCurrentPIDL);
  {$IFNDEF DFS_NO_COM_CLEANUP}
  if FCurrentShellFolder <> NIL then
    FCurrentShellFolder.Release;
  {$ENDIF}

  LargeImages.Free;
  SmallImages.Free;
  FFileMaskList.Free;

  inherited Destroy;
end;

procedure TdfsSystemListView.CreateWnd;
var
  x: integer;
  {$IFDEF DFS_COMPILER_5_UP}
  ExtStyle: DWORD;
  {$ENDIF}
begin
  inherited CreateWnd;

  {$IFDEF DFS_COMPILER_5_UP}
  // Silly VCL explicitly turns on subitem images
  ExtStyle := ListView_GetExtendedListViewStyle(Handle);
  ExtStyle := ExtStyle and not LVS_EX_SUBITEMIMAGES;
  ListView_SetExtendedListViewStyle(Handle, ExtStyle);
  {$ENDIF}

  if not (csLoading in ComponentState) then
    CreateColumns(FColumnType);

  if FRecreatingWnd or FNeedsReset then
  begin
    if FRecreatingWnd then
    begin
      // Re-creation restores Data prop pointer values, but we've freed them all
      for x := 0 to Items.Count - 1 do
        Items[x].Data := NIL;
    end;
    FRecreatingWnd := FALSE;
    Reset;
  end;
end;

procedure TdfsSystemListView.DestroyWnd;
begin
  // The window is only being recreated.
  FRecreatingWnd := TRUE;

  inherited DestroyWnd;

  FNeedsReset := TRUE;
end;

procedure TdfsSystemListView.Loaded;
begin
  inherited Loaded;

  CreateColumns(FColumnType);
  FNeedsReset := TRUE; // Force the reset
  Reset; // We've finished loading, we can populate the list now.
end;

function TdfsSystemListView.GetItems: TListItems;
begin
  Result := inherited Items;
end;

procedure TdfsSystemListView.SetColumnType(ColType: TColumnType);
begin
  if ColType = FColumnType then exit;
  FColumnType := ColType;
  if not (csLoading in ComponentState) then
    CreateColumns(ColType);
end;

procedure TdfsSystemListView.RecreateColumns;
begin
  if HandleAllocated then
    CreateColumns(FColumnType);
end;

// This will be based on what type of stuff we are enumerating eventually
procedure TdfsSystemListView.CreateColumns(ColType: TColumnType);
{var
  ShellDetails: IShellDetails;
  Details: TShellDetails;}
begin
  HandleNeeded;

  Columns.Clear;

  //!!! This will work on Win2k, in theory
(*
  if FCurrentShellFolder <> NIL then
  begin
    if Succeeded(FCurrentShellFolder.CreateViewObject(Handle, IID_IShellDetails,
      ShellDetails)) then
    begin
      MessageBeep(MB_ICONSTOP);
      exit;
    end;
  end;
*)

  case ColType of
    ctMachine:
      begin
        with Columns.Add do
        begin
          Caption := strColName;
          Width := FColumnWidths.cwName;
        end;
        with Columns.Add do
        begin
          Caption := strColType;
          Width := FColumnWidths.cwSize;
        end;
        with Columns.Add do
        begin
          Caption := strColTotalSize;
          Alignment := taRightJustify;
          Width := FColumnWidths.cwType;
        end;
        with Columns.Add do
        begin
          Caption := strColFreeSpace;
          Alignment := taRightJustify;
          Width := FColumnWidths.cwModified;
        end;
      end;
    ctControlPanel:
      begin
        with Columns.Add do
        begin
          Caption := strColName;
          Width := FColumnWidths.cwName;
        end;
        with Columns.Add do
        begin
          Caption := strColDescription;
          Width := FColumnWidths.cwSize;
        end;
      end;
    ctPrinters:
      begin
        with Columns.Add do
        begin
          Caption := strColName;
          Width := FColumnWidths.cwName;
        end;
        with Columns.Add do
        begin
          Caption := strColDocuments;
          Alignment := taCenter;
          Width := FColumnWidths.cwSize;
        end;
        with Columns.Add do
        begin
          Caption := strColStatus;
          Width := FColumnWidths.cwType;
        end;
        with Columns.Add do
        begin
          Caption := strColComment;
          Width := FColumnWidths.cwModified;
        end;
      end;
    ctDUNet:
      begin
        with Columns.Add do
        begin
          Caption := strColEntryName;
          Width := FColumnWidths.cwName;
        end;
        with Columns.Add do
        begin
          Caption := strColPhone;
          Alignment := taRightJustify;
          Width := FColumnWidths.cwSize;
        end;
        with Columns.Add do
        begin
          Caption := strColDeviceName;
          Width := FColumnWidths.cwType;
        end;
      end;
    ctNetwork:
      begin
        with Columns.Add do
        begin
          Caption := strColName;
          Width := FColumnWidths.cwName;
        end;
        with Columns.Add do
        begin
          Caption := strColComment;
          Width := FColumnWidths.cwSize;
        end;
      end;
    ctFileSystem:
      begin
        with Columns.Add do
        begin
          Caption := strColName;
          Width := FColumnWidths.cwName;
        end;
        with Columns.Add do
        begin
          Caption := strColSize;
          Alignment := taRightJustify;
          Width := FColumnWidths.cwSize;
        end;
        with Columns.Add do
        begin
          Caption := strColType;
          Width := FColumnWidths.cwType;
        end;
        with Columns.Add do
        begin
          Caption := strColModified;
          Width := FColumnWidths.cwModified;
        end;
        with Columns.Add do
        begin
          Caption := strColAttrib;
          Width := FColumnWidths.cwAttr;
          Alignment := taRightJustify;
        end;                                             
      end;
    ctUser:
      begin
        if csDesigning in ComponentState then
        begin
          with Columns.Add do
          begin
            Caption := strColUserDefined;
            Width := 150;
          end;
        end else begin
          if assigned(FOnCreateColumns) then
            FOnCreateColumns(Self)
          else
            ColumnType := ctUnknown;
        end;
      end;
  else // ctUnknown;
    with Columns.Add do
    begin
      Caption := strColName;
      Width := FColumnWidths.cwName;
    end;
  end;
end;

// Searches the list for a relative PIDL.  Relative search is faster, and we
// don't need fully-qualified since the tree should take care of that part.
function TdfsSystemListView.FindItemFromID(AnID: PItemIDList): TListItem;
var
  SearchID: PItemIDList;
  Count: integer;
  Item: TListItem;
  ShellFolder: IShellFolder;
begin
  if (AnID.mkid.cb = 0) or (Items.Count < 1) then // nothing to search for.
  begin
    Result := NIL;
    exit;
  end;

  // Initialize some stuff
  Count := 0;
  Item := Items[0];
  with GetItemData(Item) do // Get the first item's data.
  begin
    SearchID := IDList; // It's relative ID
    ShellFolder := SFParent; // It's parent shell folder
  end;

  while assigned(SearchID) and assigned(AnID) do
  begin
    // Is the current portion of the ID we're looking for this node's child?
    if ShellFolder.CompareIDs(0, SearchID, AnID) = 0 then
    begin
      // Found it.
      break;
    end else begin
      inc(Count);
      if Count < Items.Count then
      begin
        Item := Items[Count];
        with GetItemData(Item) do
        begin
          SearchID := IDList; // it's relative ID
          ShellFolder := SFParent; // it's shell folder
        end;
      end else begin
        Item := NIL;
        break;
      end;
    end;
  end; // while

  Result := Item; // Return the deepest match we found.
end; // FindNodeFromID

procedure TdfsSystemListView.Reset;
var
  SelPIDL: PItemIDList;
  SelFolder: IShellFolder;
begin
  // The list prefers to work from a linked treeview, if available.  If not,
  // it works from a linked combo.  If neither are available, it works from
  // it's current selection, or the desktop root if there's no selection.

  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if TreeView <> NIL then
  begin
    SelPIDL := TreeView.SelectionPIDL;
    SelFolder := TreeView.SelectionParentFolder;
  end else
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  if ComboBox <> NIL then
  begin
    SelPIDL := ComboBox.SelectionPIDL;
    SelFolder := ComboBox.SelectionParentFolder;
  end else
  {$ENDIF}

  begin
    SelPIDL := FCurrentPIDL;
    SelFolder := FCurrentShellFolder;
  end;

  LinkedReset(SelFolder, SelPIDL, FALSE);

  inherited Reset;
end;

(* Old v0.95 code that tied the list to the tree.  bad idea (tm)
procedure TdfsSystemListView.ResetNode(const ParentNode: TTreeNode;
   IsDesktopNode: boolean);
var
  SubFolder: IShellFolder;
  Attrs: UINT;
  AnIDList: PItemIDList;
  CurrentItemID: PItemIDList;
{$IFDEF DFS_DEBUG}
  TC: DWORD;
{$ENDIF}
begin
{$IFDEF DFS_DEBUG} TC := timeGetTime; {$ENDIF}
  if (ParentNode = NIL) or (ParentNode.Data = NIL) then exit;
  FLastNode := ParentNode;
  FLastNodeWasDesktop := IsDesktopNode;
  if (not HandleAllocated) then
  begin
    FNeedsReset := TRUE;
    exit;
  end else begin
    FNeedsReset := FALSE;
  end;

  // If we have a selection, stash the item ID so we can find it after
  // resetting. All of the node data is going to get cleared, so we have to
  // copy the selected ID, not just store the the current pointer.
  if (ItemFocused <> NIL) and (ItemFocused.Data <> NIL) and
     (TFolderItemData(ItemFocused.Data).FQ_IDList <> NIL) then
    CurrentItemID := CopyPIDL(TFolderItemData(ItemFocused.Data).IDList)
  else
    CurrentItemID := NIL;
  Items.BeginUpdate;
  try
    // Clear old stuff
    Selected := NIL;
    FreeAllItemData;
    Items.Clear;

    if (IsDesktopNode) then
    begin
      SHGetDesktopFolder(SubFolder);
      if ColumnType <> ctUser then
        ColumnType := ctFileSystem;
      EnumerateFiles(SubFolder, ParentNode);
      {$IFNDEF DFS_NO_COM_CLEANUP} SubFolder.Release; {$ENDIF}
    end else begin
      with TFolderItemData(ParentNode.Data) do
      begin
        Attrs := SFGAO_FILESYSTEM;
        AnIDList := IDList;
        if SUCCEEDED(SFParent.GetAttributesOf(1, AnIDList, Attrs)) then
        begin
          if (Attrs and SFGAO_FILESYSTEM) <> 0 then
          begin
            if ColumnType <> ctUser then
              ColumnType := ctFileSystem;
          end else begin
            // need to find out what kind of object we have.  No idea how.
            if ColumnType <> ctUser then
              ColumnType := ctUnknown;
          end;
        end else
          if ColumnType <> ctUser then
            ColumnType := ctUnknown;

        if SUCCEEDED(SFParent.BindToObject(IDList, NIL, IID_IShellFolder,
           pointer(SubFolder))) then
        begin
          EnumerateFiles(SubFolder, ParentNode);
          {$IFNDEF DFS_NO_COM_CLEANUP} SubFolder.Release; {$ENDIF}
        end; // if
      end; // with
    end; //if
    if CurrentItemID <> NIL then
      ItemFocused := FindItemFromID(CurrentItemID);
  finally
    Items.EndUpdate;
  end;
  // Have to do this after Items.EndUpdate because BeginUpdate sets SortType to
  // stNone.  EndUpdate restores it.
  if SortType <> stNone then
    AlphaSort;

  Populated;

{$IFDEF DFS_DEBUG} ODM(Format('SLV.Reset %s: %d', [ParentNode.Text, timeGetTime-TC])); {$ENDIF}
end; {ResetNode}
*)

function TdfsSystemListView.EnumerateFiles(const Folder: IShellFolder;
   const IDList: PItemIDList): boolean;
var
  Flags: DWORD;
  EnumList: IEnumIDList;
  FQ_List,
  List: PItemIDList;
  Fetched: ULONG;
  OldCursor: TCursor;
begin
  Result := FALSE;

  if Folder = NIL then exit;

  // Inhibit screen painting for speed
  Items.BeginUpdate;
  // I wish there was some way to find out the number of items being enumerated,
  // and only set the hourglass cursor if there were many of them....
  OldCursor := Cursor;
  Cursor := crHourglass;

  try
    Flags := SHCONTF_NONFOLDERS;
    if FShowHiddenFiles then
      Flags := Flags or SHCONTF_INCLUDEHIDDEN;
    if FShowFolders then
      Flags := Flags or SHCONTF_FOLDERS;

    if SUCCEEDED(Folder.EnumObjects(GetValidHandle, Flags, EnumList)) then
//    if SUCCEEDED(Folder.EnumObjects(GetValidHandle, Flags, EnumList)) then
    begin
      // Walk the folders.
      // The list will be saved so don't free it anywhere in here.
      while EnumList.Next(1, List, Fetched) = S_OK do
      begin
        Result := TRUE;  // only successful if we managed to enumerate at least once.
        FQ_List := ConcatPIDLs(IDList, List);
        AddNode(Folder, FQ_List, List);
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

function TdfsSystemListView.AddNode(const ShellFolder: IShellFolder; FQ_IDList,
   IDList: PItemIDList): TListItem;

  function IsADrive(const Path: string): boolean;
  begin
    Result := FALSE;
    if (Path <> '') and (Length(Path) < 4) then
      Result := (Copy(Path, 2, 2) = ':\');
  end;

  function IsFolderObject(Attrs: UINT): boolean;
  begin
    Result := ((Attrs and (SFGAO_FOLDER or SFGAO_HASSUBFOLDER)) <> 0);
  end;

  function IsFileObject(Attrs: UINT): boolean;
  begin
    Result := ((Attrs and SFGAO_FILESYSTEM) <> 0) and not IsFolderObject(Attrs);
  end;

var
  NiceName, FullName: string;
  Attrs: UINT;
{$IFNDEF DFS_SLV_FASTMODE}
  FullPath: array[0..MAX_PATH] of char;
  Normal,
  Selected: integer;
  FI: TSHFileInfo;
  FD: TWin32FindData;
  DI: TSHDescriptionID;
  SysTime: TSystemTime;
  SubStr,
  DateStr,
  TimeStr: string;
  FFFH: THandle;
  GotPath: boolean;
  GotData: boolean;
  Res: HRESULT;
{$ENDIF}
  NoPIDL: PItemIDList;
begin
  Result := NIL;
  NoPIDL := NIL;
  Attrs := SFGAO_VALIDATE;
  // Invalidate cached information.
  ShellFolder.GetAttributesOf(0, NoPIDL, Attrs);
  NiceName := GetDisplayName(ShellFolder, IDList, dntNormal);
  begin
    // SFGAO_CONTENTSMASK is incorrect in the SDK header (not Borland's fault).
    Attrs := SFGAO_CAPABILITYMASK or SFGAO_DISPLAYATTRMASK and
       (not SFGAO_READONLY) or SFGAO_REMOVABLE or $F0000000;{SFGAO_CONTENTSMASK}

    ShellFolder.GetAttributesOf(1, IDList, Attrs);

    // Don't show drives and other stuff not filtered out by SHCONTF_FOLDERS.
    if (not FShowFolders) and ((Attrs and SFGAO_HASSUBFOLDER) <> 0) then
      exit;

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
          FreePIDL(IDList);
          FreePIDL(FQ_IDList);
          exit;
        end;
      end;
    end;

    Result := Items.Add;

    Result.Data := AddItemData(ShellFolder, IDList, FQ_IDList, Attrs);

{$IFDEF DFS_SLV_FASTMODE}

    Result.Caption := '';
    Result.SubItems.Add('');
    Result.SubItems.Add('');
    Result.SubItems.Add('');
    Result.SubItems.Add('');

    // Added by Peter Ruskin 28/09/97
    if (Attrs and SFGAO_SHARE) <> 0 then
      Result.OverlayIndex := 0         { 0 is the OverlayIndex for share }
    else if (Attrs and SFGAO_LINK) <> 0 then
    begin
      Result.OverlayIndex := 1;        { 1 is the OverlayIndex for links }
      NiceName := ExtractFileName(GetFullPath(Result));
    end;

    if assigned(FOnAddListItem) then
      FOnAddListItem(Self, Result)
{$ELSE}
    GetNormalAndSelectedIcons(FQ_IDList, Normal, Selected);
    Result.ImageIndex := Normal;

    // Added by Peter Ruskin 28/09/97
    if (Attrs and SFGAO_SHARE) <> 0 then
      Result.OverlayIndex := 0        { 0 is the OverlayIndex for share }
    // Get link file extensions if this is not the desktop
    else if ((Attrs and SFGAO_LINK) <> 0) {and (ParentNode.Parent <> NIL)} then
    begin
      Result.OverlayIndex := 1;        { 1 is the OverlayIndex for links }
      NiceName := ExtractFileName(GetFullPath(Result));
    end;
    Result.Caption := NiceName;

    if assigned(FOnAddListItem) then
      FOnAddListItem(Self, Result)
    else begin
      GotPath := SHGetPathFromIDList(FQ_IDList, FullPath);
      // If you get a compiler error here, check step five in ShellFix.txt.
      // It is new.
      GotData := SUCCEEDED(SHGetDataFromIDList(ShellFolder, IDList,
         SHGDFIL_FINDDATA, @FD, SizeOf(FD)));

      Res := SHGetDataFromIDList(ShellFolder, IDList, SHGDFIL_DESCRIPTIONID,
         @DI, SizeOf(DI));

      if Res = E_INVALIDARG then
        // Not implemented until v4.71 of Shell32.dll.  Just treat everything
        // as a file system object.
        DI.dwDescriptionID := SHDID_FS_FILE;

      if (not GotData) and GotPath and ((Attrs and SFGAO_REMOVABLE) <>
        SFGAO_REMOVABLE) then
      begin
        FFFH := Windows.FindFirstFile(FullPath, FD);
        if FFFH <> INVALID_HANDLE_VALUE then
        begin
          GotData := TRUE;
          Windows.FindClose(FFFH);
        end;
      end;

      // size in KBs
      // Don't bother for removable drives since they might be empty
      // drives, and won't have a size at any rate.  Also ignore folders
      // since they don't have sizes.
      if ((GotPath and IsADrive(FullPath)) and
         ((Attrs and SFGAO_REMOVABLE) <> 0)) or IsFolderObject(Attrs) or
         not IsFileObject(Attrs) then
        SubStr := ''
      else begin
        if GotData then
        begin
          TFolderItemData(Result.Data).FileSizeLow := FD.nFileSizeLow;
          TFolderItemData(Result.Data).FileSizeHigh := FD.nFileSizeHigh;
        end else begin
          TFolderItemData(Result.Data).FileSizeLow := 0;
          TFolderItemData(Result.Data).FileSizeHigh := 0;
        end;
{$IFDEF DFS_COMPILER_4_UP}
        SubStr := Commaize(IntToStr((TFolderItemData(Result.Data).FileSize +
           1023) div 1024)) + strKilobytes;
{$ELSE}
{$IFDEF DELPHI}
        SubStr := Commaize(Format('%.0f',
           [(TFolderItemData(Result.Data).FileSize + 1023) / 1024])) +
           strKilobytes;
{$ELSE}
        SubStr := Commaize(IntToStr((TFolderItemData(Result.Data).FileSizeLow +
           1023) div 1024)) + strKilobytes;
{$ENDIF}
{$ENDIF}
      end;
      Result.SubItems.Add(SubStr);

      // File type description
      if DI.dwDescriptionId = SHDID_ROOT_REGITEM then
        // System folder
        SubStr := strSystemFolder
      else if {GotData and }(SHGetFileInfo(PChar(FQ_IDLIST), 0, FI, SizeOf(FI),
         SHGFI_PIDL or SHGFI_TYPENAME) <> 0) then
        SubStr := FI.szTypeName
      else
        SubStr := '';
      Result.SubItems.Add(SubStr);

      // date/time modified
      if GotData and (FD.ftLastWriteTime.dwLowDateTime <> 0) and
         (FD.ftLastWriteTime.dwHighDateTime <> 0) then
      begin
        FileTimeToLocalFileTime(FD.ftLastWriteTime, FD.ftLastWriteTime);
        FileTimeToSystemTime(FD.ftLastWriteTime, SysTime);
        SetLength(DateStr, 256);
        SetLength(DateStr, GetDateFormat(LOCALE_USER_DEFAULT, 0, @SysTime,
           NIL, PChar(DateStr), 255) - 1);
        SetLength(TimeStr, 256);
        SetLength(TimeStr, GetTimeFormat(LOCALE_USER_DEFAULT, 0, @SysTime,
           NIL, PChar(TimeStr), 255)  - 1);
        SubStr := DateStr + ' ' + TimeStr;
      end else
        SubStr := '';
      Result.SubItems.Add(SubStr);

      SubStr := '';
      if GotData then
      begin
        if (FD.dwFileAttributes and faReadOnly) <> 0 then
          SubStr := SubStr + strReadOnlyChar;
        if (FD.dwFileAttributes and faHidden) <> 0 then
          SubStr := SubStr + strHiddenChar;
        if (FD.dwFileAttributes and faSysFile) <> 0 then
          SubStr := SubStr + strSystemChar;
        if (FD.dwFileAttributes and faArchive) <> 0 then
          SubStr := SubStr + strArchiveChar;
      end;
      Result.SubItems.Add(SubStr);
    end;
{$ENDIF}
  end;
(*
var
  NiceName: string;
  Normal,
  Selected: integer;
  FullPath: array[0..MAX_PATH] of char;
  FI: TSHFileInfo;
  SysTime: TSystemTime;
  DateStr,
  TimeStr: string;
  Attrs: UINT;
  FD: TWin32FindData;
  DI: TSHDescriptionID;
  Res: HResult;
begin
  Result := NIL;
  if GetNiceName(ShellFolder, IDList, SHGDN_NORMAL, NiceName) then begin
    Result := Items.Add;
    Attrs := SFGAO_CAPABILITYMASK or SFGAO_DISPLAYATTRMASK or SFGAO_CONTENTSMASK;
    ShellFolder.GetAttributesOf(1, IDList, Attrs);
    Result.Data := AddItemData(ShellFolder, IDList, FQ_IDList, Attrs);
    GetNormalAndSelectedIcons(FQ_IDList, Normal, Selected);
    Result.ImageIndex := Normal;
//    Result.SelectedIndex := Selected;
    Result.Caption := NiceName;
// This needs to be different for types other than files...


    // If you get a compiler error here, check step five in ShellFix.txt.  It is new.
    Res := SHGetDataFromIDList(ShellFolder, IDList, SHGDFIL_DESCRIPTIONID, DI, SizeOf(DI));

    if Res = E_INVALIDARG then
      DI.dwDescriptionID := SHDID_FS_FILE // I think this call is only working on NT 4.0.
    else
      if not DESCR_FLAG then
        ShowMessage('Something unexpected, but very interesting, has happened.'#13 +
                    'Please email me (bstowers@pobox.com) with information on what'#13 +
                    'operating system you are using, including service packs, etc.'#13 +
                    'Also, please send the file date and time of your Shell32.dll file.')
      else
        DESCR_FLAG := TRUE;

    case DI.dwDescriptionID of
      SHDID_FS_FILE,
      SHDID_FS_DIRECTORY,
      SHDID_FS_OTHER:
        begin
          if SHGetPathFromIDList(FQ_IDList, FullPath) then begin
            if SUCCEEDED(SHGetDataFromIDList(ShellFolder, IDList, SHGDFIL_FINDDATA, FD, SizeOf(FD))) then begin

              // size in KBs
              Result.SubItems.Add(IntTOStr((FD.nFileSizeLow+1023) div 1024) + 'KB');

              // type
              if SHGetFileInfo(FullPath, 0, FI, SizeOf(FI), SHGFI_TYPENAME) <> 0 then
                Result.SubItems.Add(FI.szTypeName)
              else
                Result.SubItems.Add(''); // couldn't get type.

              // date / time
              FileTimeToLocalFileTime(FD.ftLastWriteTime, SysTime);
              FileTimeToSystemTime(FD.ftLastWriteTime, SysTime);
              SetLength(DateStr, 256);
              SetLength(DateStr, GetDateFormat(LOCALE_USER_DEFAULT, 0, @SysTime, NIL,
                                               PChar(DateStr), 255) - 1);
              SetLength(TimeStr, 256);
              SetLength(TimeStr, GetTimeFormat(LOCALE_USER_DEFAULT, 0, @SysTime, NIL,
                                               PChar(TimeStr), 255)  - 1);

              Result.SubItems.Add(DateStr + ' ' + TimeStr);
            end;
          end;
        end;

      SHDID_COMPUTER_DRIVE35,
      SHDID_COMPUTER_DRIVE525,
      SHDID_COMPUTER_REMOVABLE,
      SHDID_COMPUTER_FIXED,
      SHDID_COMPUTER_NETDRIVE,
      SHDID_COMPUTER_CDROM,
      SHDID_COMPUTER_RAMDISK,
      SHDID_COMPUTER_OTHER:
        begin
          Result.SubItems.Add('Computer');
        end;

      SHDID_NET_DOMAIN,
      SHDID_NET_SERVER,
      SHDID_NET_SHARE,
      SHDID_NET_RESTOFNET,
      SHDID_NET_OTHER:
        begin
          Result.SubItems.Add('Net');
        end;

    else { don't know what to do with it... }
    end;
  end; {if}
*)
end; {AddNode}


procedure TdfsSystemListView.SetFileMask(const Val: string);
begin
  if Val <> FFileMask then
  begin
    FFileMask := Val;
    MaskSearch.BuildMask(FFileMask, FFileMaskList);
    FNeedsReset := TRUE; // Added by Tamas Demjen
  end;
  Reset;
end;


function TdfsSystemListView.AddItemData(ItemFolder: IShellFolder;
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
  end;
  inc(NewCount);
end; {AddItemDta}


procedure TdfsSystemListView.FreeItemData(Item: TListItem);
begin
  if Item.Data <> NIL then
  begin
    with TFolderItemData(Item.Data) do
    begin
      {$IFNDEF DFS_NO_COM_CLEANUP}
      if SFParent <> NIL then
        SFParent.Release;
      {$ENDIF}
      FreePIDL(FIDList);
      FreePIDL(FFQ_IDList);
    end;
    TFolderItemData(Item.Data).Free;
    Item.Data := NIL;
    dec(NewCount);
  end;
end; {FreeItemData}


procedure TdfsSystemListView.FreeAllItemData;
var
  x: integer;
begin
  for x := 0 to Items.Count-1 do
    FreeItemData(Items[x]);
end; {FreeAllItemData}


(*******************************************************************************
  CNNotify:  Trap notification messages sent to the window.
    This is damn silly, but it's the only way we can know when an item is being
    deleted.  I think it's an oversight in the VCL, so until Borland fixes it,
    just live with it.
*******************************************************************************)
procedure TdfsSystemListView.CNNotify(var Message: TWMNotify);
{$IFDEF DFS_SLV_FASTMODE}
var
  Item:TListItem;
  NiceName: string;
  FI: TSHFileInfo;
  DI: TSHDescriptionID;
  FD: TWin32FindData;
  Res: HRESULT;
  fTime: TFileTime;
  SysTime: TSystemTime;
  DateStr,
  TimeStr: string;
  N, S: integer;
{$ENDIF}
begin
{$IFNDEF DFS_SLV_FASTMODE}
  if Message.NMHdr.code = LVN_DELETEITEM then
  begin
    with PNMListView(Pointer(Message.NMHdr))^ do
      FreeItemData(TListItem(lParam));
    // we can't do the actual delete processing here because we don't have
    // access to some of the stuff needed.  Let default handling do it below.
  end;

  inherited;
{$ELSE}
  Assert(Message.NMHdr <> NIL);
  
  case Message.NMHdr.code of
    LVN_DELETEITEM:
      begin
         with PNMListView(Pointer(Message.NMHdr))^ do
           FreeItemData(TListItem(lParam));

        // we can't do the actual delete processing here because we don't have
        // access to some of the stuff needed.  Let default handling do it.
        inherited;
      end;

    LVN_GETDISPINFO:
      begin
        with PLVDispInfo(Pointer(Message.NMHdr))^.item do
        begin
          if (mask and LVIF_PARAM) <> 0 then
            Item := TListItem(lParam)
          else
            Item := Items[IItem];

          if (Item = NIL) or (Item.Data = NIL) then
          begin
            if (mask and LVIF_TEXT) <> 0 then
              pszText[0] := #0;
            if (mask and LVIF_IMAGE) <> 0 then
              iImage := -1;
          end
          else
          begin
            with TFolderItemData(Item.Data) do
            begin
              if (mask and LVIF_TEXT) <> 0 then
              begin
                if iSubItem = 0 then
                begin
                  NiceName := GetDisplayName(SFParent, IDList, dntNormal);
                  StrPLCopy(pszText, NiceName, cchTextMax);
                end else begin
                  with Item.SubItems do
                  begin
                    if iSubItem <= Count then
                    begin
                      NiceName := '';
                      case iSubItem of
                        1: //Size
                          begin
                            if SUCCEEDED(SHGetDataFromIDList(SFParent, IDList,
                               SHGDFIL_FINDDATA, @FD, SizeOf(FD))) then
                            begin
                              // size in KBs
                              if ((Attributes and
                                 (SFGAO_FOLDER or SFGAO_HASSUBFOLDER)) <> 0) then
                                NiceName := ''
                              else begin
                                FileSizeLow := FD.nFileSizeLow;
                                FileSizeHigh := FD.nFileSizeHigh;
                                {$IFDEF DFS_COMPILER_4_UP}
                                NiceName := Commaize(IntToStr((FileSize + 1023)
                                   div 1024)) + strKilobytes;
                                {$ELSE}
                                NiceName := Commaize(Format('%.0f', [(FileSize +
                                   1023) / 1024])) + strKilobytes;
                                {$ENDIF}
                              end;
                            end else
                              NiceName := '';
                          end;
                        2: //Type
                          begin
                            Res := SHGetDataFromIDList(SFParent, IDList,
                               SHGDFIL_DESCRIPTIONID, @DI, SizeOf(DI));
                            if Res = E_INVALIDARG then
                              // Not implemented until v4.71 of Shell32.dll.  Just
                              // treat everything as a file system object.
                              DI.dwDescriptionID := SHDID_FS_FILE;
                            if DI.dwDescriptionId = SHDID_ROOT_REGITEM then
                              // System folder
                              nicename := strSystemFolder
                            else if (SHGetFileInfo(PChar(FQ_IDLIST), 0, FI,
                               SizeOf(FI), SHGFI_PIDL or SHGFI_TYPENAME)<>0) then
                              nicename := FI.szTypeName
                            else
                              nicename := '';
                          end;
                        3://Modified
                          begin
                            if SUCCEEDED(SHGetDataFromIDList(SFParent, IDList,
                               SHGDFIL_FINDDATA, @FD, SizeOf(FD))) then
                            begin
                              FileTimeToLocalFileTime(FD.ftLastWriteTime, fTime);
                              FileTimeToSystemTime(fTime, SysTime);
                              SetLength(DateStr, 256);
                              SetLength(DateStr, GetDateFormat(LOCALE_USER_DEFAULT,
                                 0, @SysTime, NIL, PChar(DateStr), 255) - 1);
                              SetLength(TimeStr, 256);
                              SetLength(TimeStr, GetTimeFormat(LOCALE_USER_DEFAULT,
                                 0, @SysTime, NIL, PChar(TimeStr), 255)  - 1);
                              NiceName := DateStr + ' ' + TimeStr;
                            end;
                          end;
                        4://Attributes
                          begin
                            NiceName := '';
                            if SUCCEEDED(SHGetDataFromIDList(SFParent, IDList,
                               SHGDFIL_FINDDATA, @FD, SizeOf(FD))) then
                            begin
                              if (FD.dwFileAttributes and faReadOnly) <> 0 then
                                NiceName := NiceName + strReadOnlyChar;
                              if (FD.dwFileAttributes and faHidden) <> 0 then
                                NiceName := NiceName + strHiddenChar;
                              if (FD.dwFileAttributes and faSysFile) <> 0 then
                                NiceName := NiceName + strSystemChar;
                              if (FD.dwFileAttributes and faArchive) <> 0 then
                                NiceName := NiceName + strArchiveChar;
                            end;
                          end;
                      end; { case }
                      StrPLCopy(pszText, NiceName, cchTextMax);
                    end else
                      pszText[0] := #0;
                  end;
                end;
              end;
              if (mask and LVIF_IMAGE) <> 0 then
              begin
                if iSubItem = 0 then
                begin
                  GetNormalAndSelectedIcons(FQ_IDList, N, S);
                  if Item.Selected then
                    iImage := S
                  else
                    iImage := N;
                end
                else
                  iImage := -1;
              end;
              // Don't ask for it again!
              mask := mask or LVIF_DI_SETITEM;
            end;
          end;
        end;
      end;
  else
    inherited;
  end;
{$ENDIF}
end; {CNNotify}


function TdfsSystemListView.GetItemData(Item: TListItem): TFolderItemData;
begin
  Result := Item.Data;
  if Result = NIL then
  begin
    if FShowErrorsInMsgBox then
      MessageDlg(LoadStr(IDS_NOFOLDERDATA), mtError, [mbOK], 0)
    else
      raise ENoFolderData.Create(LoadStr(IDS_NOFOLDERDATA));
  end
end;

procedure TdfsSystemListView.SetColumnWidths(NameWidth, SizeWidth, TypeWidth,
   ModifiedWidth, AttrWidth: integer);
begin
  with FColumnWidths do
  begin
    cwName := NameWidth;
    cwSize := SizeWidth;
    cwType := TypeWidth;
    cwModified := ModifiedWidth;
    cwAttr := AttrWidth;
  end;
  RecreateColumns;
end;

(*******************************************************************************
  DisplayContextMenu:
*******************************************************************************)
function TdfsSystemListView.DisplayContextMenu(Item: TListItem;
   Where: TPoint): boolean;
var
  ItemData: TFolderItemData;
  WantsToRename: boolean;
begin
  ItemData := GetItemData(Item);
  if (ItemData <> NIL) and (ItemData.IDList <> NIL) then
  begin
{$IFDEF DFS_COMPILER_4_UP}
    Result := ItemProp.DisplayContextMenu(ItemData.SFParent, ItemData.FIDList,
       ItemData.Attributes, DFS_HWND(Handle), Where, 1, TRUE,
       WantsToRename);
{$ELSE}
    Result := ItemProp.DisplayContextMenuPIDL(ItemData.SFParent,
       ItemData.FIDList, ItemData.Attributes,
       {$IFDEF DFS_CPPB} Pointer(Handle) {$ELSE} Handle {$ENDIF}, Where, 1, TRUE,
       WantsToRename);
{$ENDIF}
    if WantsToRename then
      Item.EditCaption;
  end
  else
    Result := FALSE;
end;

// The var parameter of this function is a memory block allocated with GetMem.
// The caller of the function MUST release the memory with FreeMem when
// done with the array. The PPIDLArray type is defined in the ItemProp unit.
// The return value is the number of items in the array.
function TdfsSystemListView.GetSelectedPIDLs(var SelPIDLs: PPIDLArray): integer;
var
  ItemData: TFolderItemData;
  NextItem: TListItem;
begin
  Result := 0;
  SelPIDLs := NIL;
  if SelCount < 1 then
    exit;

  GetMem(SelPIDLs, SizeOf(PItemIDList) * SelCount);
  try
    NextItem := GetNextItem(NIL, sdAll, [isSelected]);
    if NextItem = NIL then
    begin
      // Should never happen...
      FreeMem(SelPIDLs);
      SelPIDLs := NIL;
      exit;
    end;
    ItemData := GetItemData(NextItem);
    if (ItemData.IDList <> NIL) then
    begin
      while NextItem <> NIL do
      begin
        if (NextItem.Data <> NIL) and
           (TFolderItemData(NextItem.Data).IDList <> NIL) then
        begin
{ Turn off range checking because SelPILDs is typed as an array of 0..0.}
{$IFOPT R+} {$DEFINE DFS_RESET_RANGE_CHECKING} {$R-} {$ENDIF}
          SelPIDLs[Result] := TFolderItemData(NextItem.Data).FIDList;
{$IFDEF DFS_RESET_RANGE_CHECKING} {$R+} {$UNDEF DFS_RESET_RANGE_CHECKING} {$ENDIF}
          inc(Result);
        end;
        NextItem := GetNextItem(NextItem, sdAll, [isSelected]);
      end;
    end;
  except
    // Something bad happend.  Release the allocated memory and reraise it.
    // Don't free the pidls in the array, they don't belong to us!
    FreeMem(SelPIDLs);
    raise;
  end;
end;

function TdfsSystemListView.DisplaySelectedContextMenu(Where: TPoint): boolean;
var
  ItemData: TFolderItemData;
  SelPIDLs: PPIDLArray;
  Count: integer;
  WantsToRename: boolean;
begin
  Result := FALSE;
  Count := GetSelectedPIDLs(SelPIDLs);
  if SelPIDLs = NIL then
    exit;

  try
    ItemData := GetItemData(Selected);
{$IFDEF DFS_COMPILER_4_UP}
    Result := ItemProp.DisplayContextMenu(ItemData.SFParent, SelPIDLs^[0],
       ItemData.Attributes, DFS_HWND(Handle), Where, Count, TRUE, WantsToRename);
{$ELSE}
    Result := ItemProp.DisplayContextMenuPIDL(ItemData.SFParent, SelPIDLs^[0],
       ItemData.Attributes,
       {$IFDEF DFS_CPPB} Pointer(Handle) {$ELSE} Handle {$ENDIF}, Where, Count,
       TRUE, WantsToRename);
{$ENDIF}
    if (ItemFocused <> NIL) and WantsToRename then
      ItemFocused.EditCaption;
  finally
    // Free the array that was allocated by GetSelectedPIDLs.
    // Don't free the pidls in the array, they don't belong to us!
    FreeMem(SelPIDLs);
  end;
end;

function TdfsSystemListView.GetPopupMenu: TPopupMenu;
begin
  if FPopupMenuMethod in [pmmUser, pmmContextUser] then
    Result := inherited GetPopupMenu
  else
    Result := NIL;
end;

{$IFDEF DFS_COMPILER_5_UP}
procedure TdfsSystemListView.WMContextMenu(var Message: TWMContextMenu);
{$ELSE}
procedure TdfsSystemListView.WMRButtonUp(var Message: TWMRButtonUp);
{$ENDIF}
var
  SelItem: TListItem;
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
        SelItem := GetItemAt(Pt.x, Pt.y);
        if SelItem <> NIL then
        begin
          if not SelItem.Selected then
          begin
            Selected := SelItem;
            if DisplayContextMenu(SelItem, ClientToScreen(Pt)) then
              Message.Result := 1;
          end else begin
            if DisplaySelectedContextMenu(ClientToScreen(Pt)) then
              Message.Result := 1;
          end;
        end;
      end;
  end;
  inherited;
end;

function TdfsSystemListView.GetItemAttrs(const Item: TListItem): UINT;
begin
  if (Item <> NIL) and (Item.Data <> NIL) then
    Result := GetItemData(Item).Attributes
  else
    Result := 0;
end;

function TdfsSystemListView.GetFullPath(const Item: TListItem): string;
begin
  Result := '';
  if (Item <> NIL) and (Item.Data <> NIL) then
  begin
    SetLength(Result, MAX_PATH);
    if SHGetPathFromIDList(GetItemData(Item).FQ_IDList, PChar(Result)) then
    begin
      SetLength(Result, StrLen(PChar(Result)));
      if ((GetItemAttrs(Item) and SFGAO_FOLDER) <> 0) and
         (Length(Result) <> 0) and (Result[Length(Result)] <> '\') then
        Result := Result + '\';
    end else
      Result := '';
  end;
end;


procedure TdfsSystemListView.SetShowFolders(Val: boolean);
begin
  if Val = FShowFolders then exit;
  FShowFolders := Val;
  Reset;
end;

function TdfsSystemListView.GetFilename(Index: TListItem): string;
begin
  if Index = NIL then
    Result := ''
  else
    Result := Index.Caption;
end;

function TdfsSystemListView.GetFullFilename(Index: TListItem): string;
begin
  if Index = NIL then
    Result := ''
  else
    Result := GetFullPath(Index);
end;


function DefaultListViewSort(Item1, Item2: TListItem; lParam: Integer): Integer; stdcall;
begin
  // CompareIDs can probably handle NIL pointers.  need to try it.
  if Item1 = Item2 then
    Result := 0
  else if Item1 = NIL then
    Result := -1
  else if Item2 = NIL then
    Result := 1
  else begin
    if Item1.Data <> NIL then
      with TFolderItemData(Item1.Data) do
        // Status is returned in the 'code' portion (low word) of the result.
        // Search for 'HResult' in Winodws.pas to read more about it.
        // 0 means sort by name.
        if ((Attributes and (SFGAO_HASSUBFOLDER or SFGAO_FOLDER)) <> 0) xor
           ((TFolderItemData(Item2.Data).Attributes and
           (SFGAO_HASSUBFOLDER or SFGAO_FOLDER)) <> 0) then
        begin
          // One is has children and one does not.  Folders come first
          if ((Attributes and (SFGAO_HASSUBFOLDER or SFGAO_FOLDER)) <> 0) then
            Result := -1
          else
            Result := 1;
        end else
          // Both items are same type
          Result := shortint(SFParent.CompareIDs(LoWord(Cardinal(lParam)),
             TFolderItemData(Item1.Data).IDList,
             TFolderItemData(Item2.Data).IDList))
    else
      Result := 0;
  end;
  if HiWord(Cardinal(lparam)) <> 0 then
    Result := -Result;
end;

{$IFNDEF DFS_SLV_USING_ELV}
function TdfsSystemListView.CustomSort(SortProc: TLVCompare; Data: Longint): Boolean;
var
  decrease: ByteBool;
  SortData: Longint;
begin
  Result := False;
  if Data = SORT_ALPHA then
  begin
    SortData := 0;
    decrease := FALSE;
  end
  else
  begin
    if Data = SORT_CURRENT then
    begin
      Data := FLastColumnIndexSort;
      decrease := FLastSortOrder;
    end
    else
    begin
      decrease := FLastColumnIndexSort = Data;
      if decrease then
        decrease := not FLastSortOrder;
    end;
    SortData := Data + Ord(decrease) SHL 16;
  end;
  if HandleAllocated then
  begin
    if not Assigned(SortProc) then SortProc := @DefaultListViewSort;
    Result := ListView_SortItems(Handle, SortProc, SortData);
  end;
  if Data >= 0 then
  begin
    FLastColumnIndexSort := Data;
    FLastSortOrder := decrease;
  end;
end; // CustomSort

function TdfsSystemListView.AlphaSort: Boolean;
begin
  if HandleAllocated then
  begin
    Result := CustomSort(@DefaultListViewSort, SORT_ALPHA);
    FLastColumnIndexSort := 0;
    FLastSortOrder := FALSE;
  end
  else
    Result := False;
end;

procedure TdfsSystemListView.ColClick(Column: TListColumn);
begin
  inherited ColClick(Column);
  CustomSort(@DefaultListViewSort, Column.Index);
end;
{$ENDIF}

procedure TdfsSystemListView.DblClick;
begin
  if (csDesigning in ComponentState) then exit;

  if not assigned(OnDblClick) then
  begin
    DefaultDblClickAction(Selected);
  end else
    inherited DblClick;
end;

procedure TdfsSystemListView.DefaultDblClickAction(Item: TListItem);
var
  Attrs : UINT;
  ItemData: TFolderItemData;
begin
  if (Item <> NIL) then
  begin
    ItemData := GetItemData(Item);
    if (ItemData <> NIL) and (ItemData.IDList <> NIL) then
    begin
      Attrs := GetItemAttrs(Item);
      if ((Attrs and (SFGAO_FOLDER or SFGAO_HASSUBFOLDER)) <> 0) then
      begin
        LinkedReset(FCurrentShellFolder, ItemData.FQ_IDList, FALSE);
        NotifyLinkedControls(FALSE);

(* Old v0.95 code.
        NewPath := GetFullPath(Item);
        if ((Attrs and (SFGAO_FOLDER or SFGAO_HASSUBFOLDER)) <> 0) and
//        if ((Attrs and SFGAO_FOLDER) <> 0) and (NewPath <> '') and
           (TreeView <> NIL) then
        begin
          if (NewPath <> '') then
          begin
            // if ending with '\\' delete the last '\'
            if (NewPath[Length(NewPath)-1] = '\') and
               (NewPath[Length(NewPath)] = '\') then
              System.Delete(NewPath, Length(NewPath)-1, 1);
//!!! Fix this!!!
//            TreeView.Selection := NewPath;
          end else begin
// This FAILS for rfNetHood and computer names being double-clicked
//!!! Fix this!!!
//            TreeView.ListViewSetSelectionPIDL(ItemData.IDList);
          end;
*)
      end else begin
{$IFDEF DFS_COMPILER_4_UP}
        ItemProp.PerformDefaultAction(ItemData.SFParent, ItemData.FIDList,
           ItemData.Attributes, DFS_HWND(Handle), 1);
{$ELSE}
        ItemProp.PerformDefaultActionPIDL(ItemData.SFParent,
           ItemData.FIDList, ItemData.Attributes,
           {$IFDEF DFS_CPPB} Pointer(Handle) {$ELSE} Handle {$ENDIF}, 1);
{$ENDIF}
      end;
    end;
  end;
end;


function TdfsSystemListView.GetItemFromAPIItem(const Item: TLVItem): TListItem;
begin
  with Item do
    if (state and LVIF_PARAM) <> 0 then
      Result := Pointer(lParam)
    else
      Result := Items[iItem];
end;

function TdfsSystemListView.CanEdit(Item : TListItem): boolean;
begin
  Result := (Item.Data <> NIL) and ItemData[Item].ItemHasFlag(SFGAO_CANRENAME);
end;

procedure TdfsSystemListView.Edit(const Item: TLVItem);
begin
  if RenameItem(GetItemFromAPIItem(Item), Item.pszText) then
    inherited Edit(Item);
end;

function TdfsSystemListView.RenameItem(const Item: TListItem;
   const NewName: string): boolean;
var
  pstr: PWideChar;
  AnIDList: PItemIDList;
begin
  Result := FALSE;
  if (Item = NIL) or (Item.Data = NIL) or (NewName = '') then exit;

  pstr := StringToOleStr(NewName); //make an OLE string for SetNameOf
  try
    with GetItemData(Item) do
    begin
      AnIDList := CreatePIDL(1);
      // SetNameOf will free the first IDList passed and return the new IDList
      // in the second PIDL parameter.
      Result := SUCCEEDED(SFParent.SetNameOf(GetValidHandle, IDList, pstr,
         SHCONTF_FOLDERS, AnIDList));
      if Result then
      begin
        Item.Caption := NewName;
        IDList := AnIDList;
(* Old v0.95 version code
        if (assigned(FLastNode.Parent) and
           (assigned(FLastNode.Parent.Data))) then
          FQ_IDList := ConcatPIDLS(TFolderItemData(FLastNode.Parent.Data).FQ_IDList,
             IDList)
        else
*)        
          FQ_IDList := ConcatPIDLs(NIL, IDList);
      end;
    end;
  finally
    ShellMalloc.Free(pstr); // Don't forget to free the OLE string
  end;
end;

function TdfsSystemListView.DeleteItem(const Item: TListItem): boolean;
var
  ItemData: TFolderItemData;
begin
  Result := FALSE;
  ItemData := GetItemData(Item);
  if (ItemData <> NIL) and (ItemData.IDList <> NIL) then
{$IFDEF DFS_COMPILER_4_UP}
    Result := ItemProp.PerformVerb('delete', ItemData.SFParent, ItemData.FIDList,
       ItemData.Attributes, DFS_HWND(Handle), 1);
{$ELSE}
    Result := ItemProp.PerformVerbPIDL('delete', ItemData.SFParent,
       ItemData.FIDList, ItemData.Attributes,
       {$IFDEF DFS_CPPB} Pointer(Handle) {$ELSE} Handle {$ENDIF}, 1);
{$ENDIF}

(*
  if (Item = NIL) or (Item.Data = NIL) then exit;

  Filename := GetFullPath(Item);
  if Filename = '' then exit;
  Result := DeleteFile(Filename);
  if Result then
    Items.Delete(Item.Index); // Notification message will free Data
*)
end;


function TdfsSystemListView.GetVersion: string;
begin
  Result := DFS_COMPONENT_LIST_VERSION;
end;

{$IFNDEF DFS_SLV_USING_ELV}
procedure TdfsSystemListView.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;
{$ENDIF}

(*******************************************************************************
 Computes if list must be moved up or down, left or right, depending on mouse
 position.
*******************************************************************************)
procedure TdfsSystemListView.Compute_ListMoves(X, Y: integer);
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

procedure TdfsSystemListView.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  if FAutoScroll then
    Compute_ListMoves( X, Y );
  inherited MouseMove( Shift, X, Y );
end;

procedure TdfsSystemListView.Populated;
begin
  if assigned(FOnPopulated) then
    FOnPopulated(Self);
end;



// Implementation must return the actual ID list.  Caller will make a copy
// of it it wants it's own.  Implementer owns this one, i.e. it's the "real
// thing".  If there isn't one, return NIL.
function TdfsSystemListView.GetSelectionPIDL: PItemIDList;
begin
  Result := FCurrentPIDL;
end;

function TdfsSystemListView.GetSelectionParentFolder: IShellFolder;
begin
  Result := FCurrentShellFolder;
end;


// Implementation notes: IDList parameter belongs to someone else.  If
// needed by this component, a copy must be made of it.  This differs from
// the Reset method in that it does not notify linked controls of a change
// because that could result in an endless cycle of notifications. Return
// value indicates success or failure.
function TdfsSystemListView.LinkedReset(const ParentFolder: IShellFolder;
   const IDList: PItemIDList; ForceUpdate: boolean): boolean;
var
  SubFolder: IShellFolder;
  Attrs: UINT;
  DesktopPIDL,
  ParentPIDL,
  RelativePIDL,
  CurrentItemID: PItemIDList;
  RootIsDesktop: boolean;
{$IFDEF DFS_DEBUG}
  TC: DWORD;
{$ENDIF}
begin

{$IFDEF DFS_DEBUG} TC := timeGetTime; {$ENDIF}

  Result := FALSE;

  if FRecreatingWnd or ((not ForceUpdate) and ComparePIDLs(IDList, FCurrentPIDL)
    and (not FNeedsReset)) then
  begin
    Result := TRUE;
    exit; // They're the same, don't need to do anything
  end;

  OLECheck(SHGetSpecialFolderLocation(GetValidHandle, CSIDL_DESKTOP,
     DesktopPIDL));
  try
    {$IFNDEF DFS_NO_COM_CLEANUP}
    if FCurrentShellFolder <> NIL then
      FCurrentShellFolder.Release;
    {$ENDIF}
    FCurrentShellFolder := NIL;
    // Free the current pidl
    FreePIDL(FCurrentPIDL);

    if IDList = NIL then
    begin
      // We've got nothing to start with, we'll use the desktop.
      OLECheck(SHGetDesktopFolder(FCurrentShellFolder));
      FCurrentPIDL := CopyPIDL(DesktopPIDL);
      RootIsDesktop := TRUE;
    end else begin
      FCurrentShellFolder := ParentFolder;
      FCurrentPIDL := CopyPIDL(IDList);
      RootIsDesktop := ComparePIDLs(DesktopPIDL, IDList);
    end;
    //!!!
    CreateColumns(FColumnType);

    {$IFNDEF DFS_NO_COM_CLEANUP} FCurrentShellFolder.AddRef; {$ENDIF}
  finally
    FreePIDL(DesktopPIDL);
  end;

  if (not HandleAllocated) then
  begin
    FNeedsReset := TRUE;
    exit;
  end else begin
    FNeedsReset := FALSE;
  end;

  // If we have a selection, stash the item ID so we can find it after
  // resetting. All of the node data is going to get cleared, so we have to
  // copy the selected ID, not just store the the current pointer.
  if (ItemFocused <> NIL) and (ItemFocused.Data <> NIL) and
     (TFolderItemData(ItemFocused.Data).FQ_IDList <> NIL) then
    CurrentItemID := CopyPIDL(TFolderItemData(ItemFocused.Data).IDList)
  else
    CurrentItemID := NIL;

  Items.BeginUpdate;
  try
    // Clear old stuff
    Selected := NIL;
    FreeAllItemData;
    Items.Clear;

    if (RootIsDesktop) then
    begin
      if ColumnType <> ctUser then
        ColumnType := ctFileSystem;
      Result := EnumerateFiles(FCurrentShellFolder, FCurrentPIDL);
    end else begin
      RelativePIDL := CopyLastID(FCurrentPIDL);
      ParentPIDL := CopyParentPIDL(FCurrentPIDL);
      try
        Attrs := SFGAO_FILESYSTEM or SFGAO_FOLDER;

        if SUCCEEDED(FCurrentShellFolder.GetAttributesOf(1, RelativePIDL,
           Attrs)) then
        begin
          if ((Attrs and SFGAO_FILESYSTEM) <> 0) then
          begin
            if ColumnType <> ctUser then
              ColumnType := ctFileSystem;
          end else begin
            // need to find out what kind of object we have.  No idea how.
            if ColumnType <> ctUser then
              ColumnType := ctUnknown;
          end;
        end else
          if ColumnType <> ctUser then
            ColumnType := ctUnknown;

         if SUCCEEDED(FCurrentShellFolder.BindToObject(fcurrentpidl, NIL,
           IID_IShellFolder, pointer(SubFolder))) then
(*
        if SUCCEEDED(FCurrentShellFolder.BindToObject(RelativePIDL, NIL,
           IID_IShellFolder, pointer(SubFolder))) then
*)
        begin
          Result := EnumerateFiles(SubFolder, FCurrentPIDL);
(*
          Result := EnumerateFiles(SubFolder, FCurrentPIDL);
*)
          {$IFNDEF DFS_NO_COM_CLEANUP} SubFolder.Release; {$ENDIF}
        end; // if
      finally
        FreePIDL(ParentPIDL);
        FreePIDL(RelativePIDL);
      end;
    end; //if
    if CurrentItemID <> NIL then
    begin
      ItemFocused := FindItemFromID(CurrentItemID);
      FreePIDL(CurrentItemID);
    end;
  finally
    Items.EndUpdate;
  end;
  // Have to do this after Items.EndUpdate because BeginUpdate sets SortType to
  // stNone.  EndUpdate restores it.
  if FLastColumnIndexSort <> -1 then
    CustomSort(@DefaultListViewSort, SORT_CURRENT)
  else
  if SortType <> stNone then
    AlphaSort;

  Populated;
end;

procedure TdfsSystemListView.ChangeToParent;
var
  ParentPIDL: PItemIDList;
begin
  ParentPIDL := CopyParentPIDL(FCurrentPIDL);
  try
    LinkedReset(FCurrentShellFolder, ParentPIDL, FALSE);
    NotifyLinkedControls(FALSE);
  finally
    FreePIDL(ParentPIDL);
  end;
end;

initialization
  NewCount := 0;

finalization
  // You might want to take this out for production releases.  I wanted to do
  // it with an {$IFDEF}, but the compiler is nasty about it.
  if NewCount > 0 then
    raise ELeaking.Create(MEMLEAK_STR);

end.

