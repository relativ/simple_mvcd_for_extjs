{$I DFS.INC}                    { Defines for all Delphi Free Stuff components }
{$I SYSTEMCONTROLPACK.INC}      { Defines specific to these components }

{ -----------------------------------------------------------------------------}
{ TdfsSystemComboBox                                                           }
{ -----------------------------------------------------------------------------}
{ A combo box control that acts as the combo box in the Windows Explorer.      }
{ This is part of the System Control Pack.                                     }
{ Copyright 1999, Andrew Barnes and Brad Stowers.  All Rights Reserved.        }
{ -----------------------------------------------------------------------------}
{ NOTE:  This component was originally developed entirely by Andrew Barnes.    }
{   Originally, I wanted to keep it as close to his originally code as         }
{   possible, while still making it work with the tree/list view components.   }
{   However, during this integration of the components, I found that it simply }
{   wasn't going to work well that way.  After discussing this with Andrew,    }
{   he agreed to let me "adopt" the code and modify it as needed in order to   }
{   make it work well with the other components.  While I've made a lot of     }
{   changes to this component, the core of it is still what Andrew developed   }
{   and shared with us.  He deserves a huge amount of thanks for doing this,   }
{   as it seemed I was never going to get to it myself.                        }
{ -----------------------------------------------------------------------------}
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

unit SystemComboBox;

interface

{$IFNDEF DFS_SCP_SYSCOMBOBOX}
  'Error, shouldn''t be compiling this unit!'
{$ENDIF}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  {$IFDEF DFS_COMPILER_4_UP} ImgList, {$ENDIF}
  {$IFDEF DFS_COMPILER_3_UP} ShlObj, ActiveX, {$ELSE} MyShlObj, OLE2, {$ENDIF}
  StdCtrls, ComCtrls, SystemControlPack;

const
  DFS_COMPONENT_COMBO_VERSION = 'TdfsSystemComboBox ' + DFS_SCP_VERSION;

type
  TShellItem = class
  public
    ParentShellFolder,            // parent shell folder
    ShellFolder: IShellFolder;    // shell folder for this shell item
    FullID,                       // a fully qualified ID
    ID: PItemIDList;              // ID releative to the parent shell folder
    FullPathName,                 // a fully qualified path
    RelativePathName: string;     // path relative to the parent
    NormalIndex,                  // normal system image list index
    SelectedIndex,                // selected system image list index
    Indent: integer;              // indent for sub items
    ParentItem: TShellItem;       // parent shellitem
    Removeable: boolean;          // used to keep the default items in the list
    ChildList: TList;             // list of child items, this could be removed
                                  // with some code changes.
    constructor Create; {$IFDEF DFS_COMPILER_4_UP} reintroduce; {$ENDIF}
    destructor Destroy; override;
    procedure AddChild(Item: TShellItem);
  end;

  TdfsSystemComboBox = class(TdfsCustomSystemComboBox)
  private
    FDrawInEdit: boolean;          // boolean used for first item when dropped
    FPIDL: PItemIDList;            // root(desktop) folder's ItemIDList
    FDesktopFolder: IShellFolder;  // Shell folder used for the desktop
    FDesktopShellItem: TShellItem; // The shell item associated with the desktop
    FActiveFolderIDList: PItemIDList; // ActiveFolderIDList property decleration
    FRecreatingWnd: boolean;

    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure WMDeleteItem(var Message: TWMDeleteItem); message WM_DELETEITEM;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;

    function GetActiveFolderName: string;
    procedure SetActiveFolderName(const Value: string);
    procedure SetActiveFolderIDList(const Value: PItemIDList);
    procedure EnumerateSubItems(const ParentShellItem: TShellItem;
       const InsertIndex: integer; const CanDelete: boolean);
    procedure AddShellItem(const ParentShellItem: TShellItem;
       const NewID: PItemIDList; const CanDelete: boolean);
    procedure AddSubItems(ShellItem: TShellItem);
    procedure InsertSubItems(ShellItem: TShellItem; InsertIndex: integer);
    procedure RemoveAllItems;
    function GetActiveFolderIDList: PItemIDList;
    function GetVersion: string;
    procedure SetVersion(const Val: string);
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
    procedure PopulateCombo;
    
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure Loaded; override;
    procedure DrawItem(Index: integer; Rect: TRect;
       State: TOwnerDrawState); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Reset; override;
    // Move up one directory, i.e. "cd .."
    procedure ChangeToParent;

    // Can't publish this because it could be system dependent.
    property ActiveFolderName: string
       read GetActiveFolderName
       write SetActiveFolderName;
    property ActiveFolderIDList: PItemIDList
       read GetActiveFolderIDList
       write SetActiveFolderIDList;
  published
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    property TreeView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    property ListView;
    {$ENDIF}
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
//    property Style; -- It's always owner drawn, don't publish it.
    property Align;
    {$IFDEF DFS_COMPILER_4_UP}
    property Anchors;
    property BiDiMode;
    {$ENDIF}
    property Color;
    {$IFDEF DFS_COMPILER_4_UP}
    property Constraints;
    {$ENDIF}
    property Ctl3D;
    property DragMode;
    property DragCursor;
    {$IFDEF DFS_COMPILER_4_UP}
    property DragKind;
    {$ENDIF}
    property DropDownCount;
    property Enabled;
    property Font;
    {$IFDEF DFS_COMPILER_3_UP}
    property ImeMode;
    property ImeName;
    {$ENDIF}
    property ItemHeight;
    property MaxLength;
    {$IFDEF DFS_COMPILER_4_UP}
    property ParentBiDiMode;
    {$ENDIF}
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
//    property Sorted;  -- We sort it internally.
    property TabOrder;
    property TabStop;
//    property Text;  -- not an editable combo, so makes no sense to publish.
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDrawItem;
    property OnDropDown;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnEndDock;
    {$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMeasureItem;
    {$IFDEF DFS_COMPILER_4_UP}
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
  end;

implementation

uses
  PidlHelp, CommCtrl,
  {$IFDEF DFS_DEBUG} uDbg, {$ENDIF}
  {$IFDEF DFS_COMPILER_3_UP} ComObj, {$ELSE} OleAuto, {$ENDIF}
  ShellAPI;


{*******************************************************************************
function:     GetShellImage
Parameters:   PIDL        PItemIDList
              Large       Boolean
              Open        Boolean
Result:       Integer
Notes:
  This function returns the index of PIDL in the system image list.
  If Large is open, it returns the Large image index.
  If Open is true, it returns the Open image index.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial from VirtualListViewDemo
*******************************************************************************}
function GetShellImage(PIDL: PItemIDList; Large, Open: Boolean): Integer;
var
  FileInfo: TSHFileInfo;
  Flags: Integer;
begin
  FillChar(FileInfo, SizeOf(FileInfo), #0);
  Flags := SHGFI_PIDL or SHGFI_SYSICONINDEX or SHGFI_ICON;
  if Open then
    Flags := Flags or SHGFI_OPENICON;
  if Large then
    Flags := Flags or SHGFI_LARGEICON
  else
    Flags := Flags or SHGFI_SMALLICON;
  SHGetFileInfo(PChar(PIDL), 0, FileInfo, SizeOf(FileInfo), Flags);
  Result := FileInfo.iIcon;
end;

{*******************************************************************************
function:     SortChildren
Parameters:   Item1, Item2 Pointer
Result:       Integer
Notes:
  This function is the sort algorithum used for sorting child items.
  This is requured by the Tlist's sort method.  Sort implementation
  was taken from SystemTreeViews sort of child nodes but modified for my
  component.

  Origional source by Brad Stowers

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial from SystemTreeView
*******************************************************************************}
function SortChildren(Item1, Item2: Pointer): Integer;
begin
  if Item1 = Item2 then
    Result := 0
  else if Item1 = NIL then
    Result := -1
  else if Item2 = NIL then
    Result := 1
  else begin
    // Status is returned in the 'code' portion (low word) of the result.
    // Search for 'HResult' in Winodws.pas to read more about it.
    // 0 means sort by name.
    Result := shortint(TShellItem(Item1).ParentShellFolder.CompareIDs(0,
       TShellItem(Item1).ID, TShellItem(Item2).ID));
  end;
end;

{ TShellItem }

{*******************************************************************************
constructor  TShellItem.Create
Parameters None
Notes:
  This proceudre allocates a child list for the shell item
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
constructor TShellItem.Create;
begin
  inherited Create;

  ChildList := TList.Create;
end;

{*******************************************************************************
Destructor  TShellItem.Destroy
Parameters None
Notes:
  This proceudre frees the dynamic memory used by this ShellItem
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: D2/C1 compatibility, plugged memory leak.
*******************************************************************************}
destructor TShellItem.Destroy;
var
  Same: boolean;
begin
  {$IFNDEF DFS_NO_COM_CLEANUP}
  if ParentShellFolder <> NIL then
    ParentShellFolder.Release;
  if ShellFolder <> NIL then
    ShellFolder.Release;
  {$ENDIF}
  Same := ComparePIDLs(ID, FullID);
  FreePIDL(ID);
  if not Same then
    FreePIDL(FullID);
  ChildList.Free;

  inherited Destroy;
end;

{*******************************************************************************
procedure  TShellItem.AddChild
Parameters Item  TShellItem
Notes:
  This proceudre adds a child item to the list oc child items for this
  Shell item
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
procedure TShellItem.AddChild(Item: TShellItem);
begin
  ChildList.Add(Item);
  ChildList.Sort(SortChildren);
end;


{ TdfsSystemComboBox }

{*******************************************************************************
Constructor:  TdfsSystemComboBox.Create
Parameters:   AOwner  TComponent
Notes:
  This constructor is based on the constructor for the SysTreeView component.
  Gets access to the system image list and sets the initializes the comobox
  style.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial from SystemTreeView
1999/02/15        bstowers@pobox.com: Moved image list stuff into SetupImageList
                                      in base class.
*******************************************************************************}
constructor TdfsSystemComboBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  Style := csOwnerDrawFixed;
end;

{*******************************************************************************
Destructor:   TdfsSystemComboBox.Destroy
Parameters:
Notes:
  Clean up allocations

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: D2/C1 compatibility, plugged pidl leak.
*******************************************************************************}
destructor TdfsSystemComboBox.Destroy;
begin
  // Easiest way to free the associated objects
{  while Items.Count > 0 do
    Items.Delete(Items.Count - 1);}
    
  { FDesktopShellItem, FDesktopFolder and FPIDL are in the Objects property, so
    they will be released when all the rest of the items are delete.  We don't
    need to do it here.  Only FActiveFolderIDList is "unowned". }
  FreePIDL(FActiveFolderIDList);

  inherited Destroy;
end;

procedure TdfsSystemComboBox.PopulateCombo;
var
  ShellItem: TShellItem;
  InsertIndex, x: integer;
  MyComputerPIDL: PItemIDList;
  NoPIDL: PItemIDList;
  Attrs: DWORD;
begin
  if (not HandleAllocated) or (csLoading in ComponentState) then
    exit;

{$IFDEF DFS_DEBUG} Debugger.EnterProc('SCB.Reset'); {$ENDIF}

  // remove all items from the the list
  RemoveAllItems;
  // get the desktop shell folder
  SHGetDesktopFolder(FDesktopFolder);
  {$IFNDEF DFS_NO_COM_CLEANUP} FDesktopFolder.AddRef; {$ENDIF}

  // Invalidate cached information.
  NoPIDL := NIL;
  Attrs := SFGAO_VALIDATE;
  FDesktopFolder.GetAttributesOf(0, NoPIDL, Attrs);

  OLECheck(SHGetSpecialFolderLocation(GetValidHandle, CSIDL_DESKTOP, FPIDL));

  // add the desktop shell item
  FDesktopShellItem := TShellItem.Create;
  FDesktopShellItem.ID := FPIDL;
  FDesktopShellItem.FullID := FPIDL;
  FDesktopShellItem.NormalIndex := GetShellImage(FPIDL, TRUE, FALSE);
  FDesktopShellItem.SelectedIndex := GetShellImage(FPIDL, FALSE, TRUE);
  FDesktopShellItem.FullPathName := GetDisplayName(FDesktopFolder, FPIDL,
     dntForParsing);
  FDeskTopShellItem.RelativePathName := GetDisplayName(FDesktopFolder, FPIDL,
     dntNormal);
  FDesktopShellItem.Indent := 0;
  FDesktopShellItem.ParentShellFolder := NIL;
  FDesktopShellItem.ShellFolder := FDesktopFolder;
  {$IFNDEF DFS_NO_COM_CLEANUP} FDesktopShellItem.ShellFolder.AddRef; {$ENDIF}
  FDesktopShellItem.Removeable := FALSE;
  Items.AddObject(FDesktopShellItem.RelativePathName, FDesktopShellItem);

  // now add the sub items
  EnumerateSubItems(FDesktopShellItem, 0, FALSE);
  AddSubItems(FDesktopShellItem);

  // now find and populate the 'My Computer' node.
  InsertIndex := 0;
  ShellItem := NIL;
  SHGetSpecialFolderLocation(GetValidHandle, CSIDL_DRIVES, MyComputerPIDL);
  try
    for x := 0 to Items.Count-1 do
    begin
      if ComparePIDLs(TShellItem(Items.Objects[x]).FullID, MyComputerPIDL) then
      begin
        ShellItem := TShellItem(Items.Objects[x]);
        InsertIndex := x;
        break;
      end;
    end;
  finally
    FreePIDL(MyComputerPIDL);
  end;

  if ShellItem <> NIL then
  begin
    EnumerateSubItems(ShellItem, InsertIndex, FALSE);
    InsertSubItems(ShellItem, InsertIndex);
  end;
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.Reset
Parameters:
Notes:
  This proceudre overrides the default reset, removing all items, and reseting
  to the default items. Selected is set to the desktop after rest.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: D2/C1 compatibility.
                                      Plugged pidl leak.
                                      Fixed hard-coded "My Computer" reference.
                                      Fixed compiler warning about uninit var.
                                      PidlHelp unit changes.
*******************************************************************************}
procedure TdfsSystemComboBox.Reset;
begin
{$IFDEF DFS_DEBUG} Debugger.EnterProc('SCB.Reset'); {$ENDIF}

  PopulateCombo;
  ItemIndex := 0;
  inherited Reset;

{$IFDEF DFS_DEBUG} Debugger.LeaveProc('SCB.Reset'); {$ENDIF}

end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.AddSubItems
Parameters: ShellItem   TShellItem
Notes:
  This proceudre adds the sub items of the shellfoler pointed to by the
  ShellFolder property of the passed parameter ShellItem to the list of items.
  Items are added to the end of the list.  The items are assumed to be in the
  ChildList of ShellItem.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
procedure TdfsSystemComboBox.AddSubItems(ShellItem: TShellItem);
var
  x: integer;
  NewShellItem: TShellItem;
begin
  for x := 0 to ShellItem.ChildList.Count-1  do
  begin
    NewShellItem := TShellItem(ShellItem.ChildList.Items[x]);
    Items.AddObject(NewShellItem.RelativePathName, NewShellItem);
  end;
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.InsertSubItems
Parameters: ShellItem   TShellItem
            InserIndex  Integer
Notes:
  This proceudre adds the sub items of the shellfoler pointed to by the
  ShellFolder property of the passed parameter ShellItem to the list of items.
  Items are added after InsertIndex.  The items are assumed to be in the
  ChildList of ShellItem.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
procedure TdfsSystemComboBox.InsertSubItems(ShellItem: TShellItem;
   InsertIndex: integer);
var
  x: integer;
  NewShellItem: TShellItem;
begin
  for x := ShellItem.ChildList.Count-1 downto 0 do
  begin
    NewShellItem := TShellItem(ShellItem.ChildList.Items[x]);
    Items.InsertObject(InsertIndex+1, NewShellItem.RelativePathName,
       NewShellItem);
  end;
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.EnumerateSubItems
Parameters: ParentShellItem   TShellItem
            InserIndex  Integer
            CanDelete    Boolean
Notes:
  This proceudre enumerates sub items of the shellfoler pointed to by the
  ShellFolder property of the passed parameter ParentShellItem to the ChildList
  of ParentShellItem.

  CanDelete is passed to set the Removeable property of the sub items added.
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: D2/C1 compatibility, made a little more
                                      robust.
*******************************************************************************}
procedure TdfsSystemComboBox.EnumerateSubItems(const ParentShellItem: TShellItem;
   const InsertIndex: integer; const CanDelete: boolean);
const
  FLAGS = SHCONTF_FOLDERS or SHCONTF_INCLUDEHIDDEN;
var
  NewID: PItemIDList;
  NumIDs: ULONG;
  EnumList: IEnumIDList;
begin
  if Succeeded(ParentShellItem.ShellFolder.EnumObjects(GetValidHandle, FLAGS,
     EnumList)) then
  begin
    while EnumList.Next(1, NewID, NumIDs) = S_OK do
    begin
      AddShellItem(ParentShellItem, NewID, CanDelete);
// Could make a little more efficient by changing AddShellItem to use this ID instead of copying it and freeing it here.
      FreePIDL(NewID);
    end;
    {$IFNDEF DFS_NO_COM_CLEANUP} EnumList.Release; {$ENDIF}
  end;
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.AddShellItem
Parameters: ParentShellItem   TShellItem
            NewID             PItemIDList
            CanDelete         Boolean
Notes:
  This proceudre adds the shell item specified by NewID of the shellfoler
  pointed to by the ShellFolder property of the passed parameter ParentShellItem
  to ParentShellItem's list of child items.

  CanDelete is used to set the removeable property of the new item.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: D2/C1 compatibility
                                      Binding to wrong pidl
                                      Removed unused variable
*******************************************************************************}
procedure TdfsSystemComboBox.AddShellItem(const ParentShellItem: TShellItem;
   const NewID: PItemIDList; Const CanDelete: boolean);
var
  ShellItem: TShellItem;
  NoPIDL: PItemIDList;
  Attrs: DWORD;
begin
  ShellItem := TShellItem.Create;
  with ShellItem do
  begin
    ParentItem := ParentShellItem;
    ParentShellFolder := ParentItem.ShellFolder;
    // Invalidate cached information.
    NoPIDL := NIL;
    Attrs := SFGAO_VALIDATE;
    ParentShellFolder.GetAttributesOf(0, NoPIDL, Attrs);
    {$IFNDEF DFS_NO_COM_CLEANUP} ParentShellFolder.AddRef; {$ENDIF}
// See comments in EnumerateSubItems about copying this
    ID := CopyPIDL(NewID);
    ParentShellFolder.BindToObject(ID, NIL, IID_IShellFolder,
       Pointer(ShellFolder));
    {$IFNDEF DFS_NO_COM_CLEANUP}
    if ShellFolder <> NIL then
      ShellFolder.AddRef;
    {$ENDIF}
    FullID := ConcatPIDLs(ParentItem.FullID, ID);
    NormalIndex := GetShellImage(FullID, TRUE, FALSE);
    SelectedIndex := GetShellImage(FullID, TRUE, TRUE);
    FullPathName := GetDisplayName(ParentItem.ShellFolder, ID, dntForParsing);
    RelativePathName := GetDisplayName(ParentItem.ShellFolder, ID, dntNormal);
    Indent := ShellItem.ParentItem.Indent+10;
    Removeable := CanDelete;
  end;
  ParentShellItem.AddChild(ShellItem);
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.DrawItem
Parameters: Index   Integer
            Rect    TRect
Notes:
  This proceudre draws the item specified by Index. It's kinda funky.  If the
  drawing in the edit portion of the combo box draw without an indent.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: Changed so that image and text are drawn
                                      centered vertically in the given rect.
*******************************************************************************}
procedure TdfsSystemComboBox.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  BlueRect: TRect;
  ShellItem: TShellItem;
begin
  if FDrawInEdit then
  begin
    if Index >= 0 then
    begin
      ShellItem := TShellItem(Items.Objects[Index]);
      Images.DrawingStyle := dsTransparent;
      Images.Draw(Canvas, Rect.Left + 2, Rect.Top + ((Rect.Bottom - Rect.Top -
         Images.Height) div 2), ShellItem.SelectedIndex);
      inc(Rect.Left, Images.Width + 6);
      DrawText(Canvas.Handle, PChar(Items[Index]), -1, Rect, DT_LEFT or
         DT_NOPREFIX or DT_SINGLELINE or DT_VCENTER);
    end else begin
      Canvas.FillRect(rect);
    end;
  end else begin
    if odSelected in State then
    begin
      Images.DrawingStyle := dsFocus;
      Canvas.Brush.Color := clHighlight;
      Canvas.Font.Color := clHighlightText;
    end else
      Images.DrawingStyle := dsTransparent;
    with Canvas do
    begin
      ShellItem := TShellItem(Items.Objects[Index]);
      BlueRect.Left := Rect.Left + Images.Width + 6 + ShellItem.Indent - 1;
      BlueRect.Right := BlueRect.Left + Canvas.TextWidth(Items[Index]) + 2;
      BlueRect.Top := Rect.Top;
      BlueRect.Bottom := Rect.Bottom;
      FillRect(BlueRect);
      Inc(Rect.Left, ShellItem.Indent);
      if Index = ItemIndex then
        Images.Draw(Canvas, Rect.Left + 2, Rect.Top + ((Rect.Bottom-Rect.Top-
           Images.Height) div 2), ShellItem.SelectedIndex)
      else
        Images.Draw(Canvas, Rect.Left + 2, Rect.Top + ((Rect.Bottom-Rect.Top-
           Images.Height) div 2), ShellItem.NormalIndex);
      inc(Rect.Left, Images.Width + 6);
      DrawText(Handle, PChar(Items[Index]), -1, Rect, DT_LEFT or DT_NOPREFIX or
         DT_SINGLELINE or DT_VCENTER);
      if odFocused in State then
         DrawFocusRect(BlueRect);
    end;
  end;
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.CNDrawItem
Parameters: Index   Integer
            Rect    TRect
Notes:
  This procedure Overrides the default CNDrawItem method so the focus rect
  and highlight are like explorer's.
  It masks off the ItemState to determine where the item is being drawn.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
procedure TdfsSystemComboBox.CNDrawItem(var Message: TWMDrawItem);
var
  State: TOwnerDrawState;
begin
  with Message.DrawItemStruct^ do
  begin
    // check and see if we are in the edit portion of the combo box
    FDrawInEdit := (ODS_COMBOBOXEDIT and itemState) <> 0;
    {$IFDEF DFS_COMPILER_5_UP}
    State := TOwnerDrawState(LongRec(itemState).Lo);
    {$ELSE}
    State := TOwnerDrawState(WordRec(LongRec(itemState).Lo).Lo);
    {$ENDIF}
    Canvas.Handle := hDC;
    try
      Canvas.Font := Font;
      Canvas.Brush := Brush;
      if Integer(itemID) >= 0 then
        DrawItem(itemID, rcItem, State)
      else
        Canvas.FillRect(rcItem);
    finally
      Canvas.Handle := 0;
    end;
  end;
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.SetActiveFolderName
Parameters: Value String
Notes:
  This proceudre sets the active folder ( in the edit portion) based on the
  passed string.  It is assumed that the string is a valid path somewere in
  the file system, if not the active folder does not change.

  It gets the PIDL of the given string and then passes it to the
  SetActiveFolderIDList method.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/07        bstowers@pobox.com: PidlHelp unit change
*******************************************************************************}
procedure TdfsSystemComboBox.SetActiveFolderName(const Value: String);
var
   FindID: PItemIDList;
begin
   if (FDesktopFolder <> NIL) and GetPIDLFromPath(GetValidHandle,
      FDesktopFolder, Value, FindID) then
     SetActiveFolderIDList(FindID);
end;

{*******************************************************************************
Procedure:  TdfsSystemComboBox.SetActiveFolderIDList
Parameters: Value PItemIDList
Notes:
  This proceudre sets the active folder ( in the edit portion) based on the
  passed PItemIDList.  It is assumed that is is a valid identifier somewere in
  the file system, if not the active folder does not change.

  Remove any Items which are removeable. (added last time by this method)

  While the given ItemIDlist is in the default set of
  Item Identifiers, strip the last one and add it to a list.

  At some point the item must exist or it was an invalid ItemIDList

  If it exists, add the items recursively.  THis will give the TreeView look.
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: PidlHelp unit change.
                                      Plugged several pidl leaks.
*******************************************************************************}
procedure TdfsSystemComboBox.SetActiveFolderIDList(const Value: PItemIDList);

   function InItems(ID: PItemIDList; var ValIndex: integer): boolean;
   var
     i: integer;
     ShellItem: TShellItem;
   begin
     Result := FALSE;
     for i := 0 to Items.Count-1 do
     begin
        ShellItem := TShellItem(Items.Objects[i]);
        if FDesktopFolder.CompareIDs(0, ShellItem.FullID, ID) = 0 then
        begin
          ValIndex := i;
          Result := TRUE;
          break;
        end;
     end;
   end;

var
  TempPIDL,
  FindID: PItemIDList;
  IDList: TList;
  x: integer;
  Found: boolean;
  InsertIndex: integer;
  SelectedIndex: integer;
  ShellItem: TShellItem;
begin
//!!! May need to treat this as a root selection.
  if Value = NIL then
    exit;

  // remove the items added last time
  for x := Items.Count-1 downto 0 do
  begin
    ShellItem := TShellItem(Items.Objects[x]);
    if Shellitem.Removeable then
    begin
      // remove the item from the parent list of child items.
      with ShellItem.ParentItem.ChildList do
        Delete(IndexOf(ShellItem));
      Items.Delete(x); // This will free ShellItem in the WM_DELETEITEM handler
    end;
  end;

  Found := TRUE;
  IDList := TList.Create;
  FindID := CopyPIDL(Value);
  try
    { Now iterate through the PIDL and find the ItemIDList's parent item.
      It must exist in the system or the ItemIDList passed is invalid}
    while (not InItems(FindID, InsertIndex)) do
    begin
      { this item is not in our current tree. Add it to the list because we
        will need it if we find the parent item}
      IDList.Add(CopyLastID(FindID));
      { Now see if it's parent exists }
      TempPIDL := CopyParentPIDL(FindID);
      try
        FreePIDL(FindID);
      finally
        FindID := TempPIDL;
     end;
      if FindID.mkid.cb = 0 then
      begin
        Found := FALSE;
        break;
      end;
    end;
  finally
    FreePIDL(FindID);
  end;

  if Found then
  begin
    // now add the sub items to the list
    SelectedIndex := InsertIndex+IdList.COunt;
    for x := IDList.Count-1 downto 0 do
    begin
      ShellItem := TShellItem(Items.Objects[InsertIndex]);
      AddShellItem(ShellItem, IDList.Items[x], TRUE);
      InsertSubItems(ShellItem, InsertIndex);
      Inc(InsertIndex);
    end;
    ItemIndex := SelectedIndex;
    FreePIDL(FActiveFolderIDList);
    FActiveFolderIDList := Value;
  end else begin
    TempPIDL := Value;
    FreePIDL(TempPIDL);
    ItemIndex := -1;
  end;

  // now free the IDlist data
  while IDList.Count <> 0 do
  begin
    TempPIDL := PItemIDList(IDlist.Items[0]);
    FreePIDL(TempPIDL);
    IdList.Delete(0);
  end;
  IDList.Free;

  NotifyLinkedControls(FALSE);
end;

{*******************************************************************************
Function:  TdfsSystemComboBox.GetActiveFolderName
Result:    String
Notes:
  This proceudre returns the mame of the active folder
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: Removed unnecessary variable.
*******************************************************************************}
function TdfsSystemComboBox.GetActiveFolderName: string;
begin
  Result := TShellItem(Items.Objects[ItemIndex]).FullPathName;
end;

{*******************************************************************************
Function:  TdfsSystemComboBox.RemoveAllItems
Notes:
  Removes all items in the list, and indirectly all data associated with those
  items via WM_DELETEITEM message generated from here.
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: Removed unnecessary variable.
*******************************************************************************}
procedure TdfsSystemComboBox.RemoveAllItems;
var
  x: integer;
begin
  // remove all the Items in the list
  if Items.Count > 0 then
  begin
    for x := Items.Count -1 downto 0 do
      Items.Delete(x); // This will free ShellItem in the WM_DELETEITEM handler.
  end;
end;

{*******************************************************************************
Procedure:    TdfsSystemComboBox.Loaded
Parameters:   AOwner  TComponent
Notes:
  Overrides the default Loaded procedure and reads the default items in to the
  combo box.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial from SystemTreeView
1999/02/15        bstowers@pobox.com: Removed ItemIndex assignment, done in Reset
*******************************************************************************}
procedure TdfsSystemComboBox.Loaded;
begin
  inherited Loaded;

  Reset; // We've finished loading, we can populate the tree now.
end;

{*******************************************************************************
procedure  TdfsSystemComboBox.CreateWnd
Parameters var Message: TWMDeleteItem
Notes:
  This proceudre overrides the default CreateWnd method.  It was overridden
  so that the combo box will be populated and the default ItemIndex is 0
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
1999/02/15        bstowers@pobox.com: Removed ItemIndex assignment, done in Reset
                                      Added some comments for clarification.
*******************************************************************************}
procedure TdfsSystemComboBox.CreateWnd;
begin
  inherited CreateWnd;

  FRecreatingWnd := FALSE;
  // If we are loading object from stream (form file), we have to wait until
  // everything is loaded before populating the list.  If we are not loading,
  // i.e. the component was created dynamically or was just dropped on a form,
  // we need to populate it now since the Loaded method will never get called.
  // Reset handles this internally.
  Reset;
end;

procedure TdfsSystemComboBox.DestroyWnd;
begin
  FRecreatingWnd := TRUE;
  inherited;
end;

{*******************************************************************************
procedure  TdfsSystemComboBox.WMDeleteItem
Parameters var Message: TWMDeleteItem
Notes:
  This proceudre overrides the default WMDeteteItem method.  It was overridden
  so that the ShellItem associated with this ComboBox item is free.
Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
procedure TdfsSystemComboBox.WMDeleteItem(var Message: TWMDeleteItem);
var
  ShellItem: TShellItem;
  DelIndex: Integer;
begin
  if not FRecreatingWnd then
  begin
    DelIndex := Message.DeleteItemStruct.itemID;
    ShellItem := TShellItem(Items.Objects[DelIndex]);
    if ShellItem <> NIL then
      ShellItem.Free;
  end;

  inherited;
end;

{*******************************************************************************
Procedure:    TdfsSystemComboBox.GetActiveFolderIDList
Parameters:   None
Notes:
  Property read method.  Returns the fully qualified PItemIDList of the selected
  item.

Revision History
yyyy/mm/dd        By: change
1999/02/07        andrew@vemco.com: Initial
*******************************************************************************}
function TdfsSystemComboBox.GetActiveFolderIDList: PItemIDList;
begin
  if (ItemIndex >= 0) and (ItemIndex < Items.Count) then
    Result := TShellItem(Items.Objects[ItemIndex]).FullID
  else
    Result := NIL;
end;


// Implementation must return the actual ID list.  Caller will make a copy
// of it it wants it's own.  Implementer owns this one, i.e. it's the "real
// thing".  If there isn't one, return NIL.
function TdfsSystemComboBox.GetSelectionPIDL: PItemIDList;
begin
  Result := ActiveFolderIDList;
end;

function TdfsSystemComboBox.GetSelectionParentFolder: IShellFolder;
begin
  Result := FDesktopFolder;
(*
  if ItemIndex >= 0 then
    Result := TShellItem(Items.Objects[ItemIndex]).ParentShellFolder
  else
    Result := NIL;
*)
end;

// Implementation notes: IDList parameter belongs to someone else.  If
// needed by this component, a copy must be made of it.  This differs from
// the Reset method in that it does not notify linked controls of a change
// because that could result in an endless cycle of notifications. Return
// value indicates success or failure.
function TdfsSystemComboBox.LinkedReset(const ParentFolder: IShellFolder;
   const IDList: PItemIDList; ForceUpdate: boolean): boolean;
begin

{$IFDEF DFS_DEBUG} Debugger.EnterProc('SCB.LinkedReset'); {$ENDIF}

  Items.BeginUpdate;
  try
    PopulateCombo;
    // ID list belongs to someone else, use a copy!
    ActiveFolderIDList := CopyPIDL(IDList);
    Result := ItemIndex > -1;
  finally
    Items.EndUpdate;
  end;

{$IFDEF DFS_DEBUG} Debugger.LeaveProc('SCB.LinkedReset'); {$ENDIF}

end;

function TdfsSystemComboBox.GetVersion: string;
begin
  Result := DFS_COMPONENT_COMBO_VERSION;
end;

procedure TdfsSystemComboBox.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;


procedure TdfsSystemComboBox.ChangeToParent;
var
  ParentPIDL: PItemIDList;
begin
  ParentPIDL := CopyParentPIDL(FActiveFolderIDList);
  try
    LinkedReset(NIL, ParentPIDL, FALSE);
    NotifyLinkedControls(FALSE);
  finally
    FreePIDL(ParentPIDL);
  end;
end;

{ Added by Tamas Demjen }
procedure TdfsSystemComboBox.CMFontChanged(var Message: TMessage);
var
  DC: HDC;
  OldFont: HFONT;
  Size: TSize;
begin
  DC := GetDC(0);
  OldFont := SelectObject(DC, Font.Handle);
  try
    if GetTextExtentPoint32(DC, '@9Wgp,|"''', -1, Size) then
      ItemHeight := Size.cy + 2;
  finally
    SelectObject(DC, OldFont);
    ReleaseDC(0, DC);
  end;
end;

end.
