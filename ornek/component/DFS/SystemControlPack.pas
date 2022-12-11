{$I DFS.INC}                    { Defines for all Delphi Free Stuff components }
{$I SYSTEMCONTROLPACK.INC}      { Defines specific to these components }

{ -----------------------------------------------------------------------------}
{ System Control Pack v0.98.5 BETA                                             }
{ -----------------------------------------------------------------------------}
{ A set of components that allow you to emulate most of the Windows Explorer   }
{ behavior.  Included is a treeview, listview and combobox.  This unit         }
{ provides only the base classes for these components, defining how they will  }
{ interact with each other, mostly through abstract methods.                   }
{                                                                              }
{ Copyright 2000, Brad Stowers.  All Rights Reserved.                          }
{ TdfsSystemComboBox is also copyrighted 1999, Andrew Barnes.                  }
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

unit SystemControlPack;

interface

uses
  Windows, Messages, Controls, Classes, StdCtrls, SysUtils,
  {$IFDEF DFS_COMPILER_3_UP} ShlObj, ActiveX, {$ELSE} MyShlObj, OLE2, {$ENDIF}
  ComCtrls, CommCtrl;


const
  STV_READ_DELAY_TIMER = 33;
  MEMLEAK_STR = 'Memory Leak Detected.  Not all folder data was freed.';
  DFS_SCP_VERSION = 'v0.98.5 Beta';
  {$IFDEF DFS_COMPILER_2}
    {$DEFINE DFS_SCP_BROKEN_COLOR}
  {$ENDIF}
  {$IFDEF DFS_DELPHI_3}
    {$DEFINE DFS_SCP_BROKEN_COLOR}
  {$ENDIF}
  {$IFDEF DFS_SCP_BROKEN_COLOR}
  TVM_SETBKCOLOR   = TV_FIRST + 29;
  TVM_SETTEXTCOLOR = TV_FIRST + 30;
  {$ENDIF}

type
  { Common Exception Types }
  ENoRootFolder    = class(Exception);
  ENoEnumObjects   = class(Exception);
  ENoFolderData    = class(Exception);
  ENoBindFolder    = class(Exception);
  ENoDesktopFolder = class(Exception);
  EInvokeFailed    = class(Exception);
  ENoUIObject      = class(Exception);
  ELeaking         = class(Exception);


  { This type is shared by both the tree and list view. }
  TPopupMenuMethod = (
     pmmNone,        // Never display a popup menu
     pmmContext,     // Only use system context menu
     pmmUser,        // Only use PopupMenu property
     pmmContextUser  // Use context menu first, and if none use PopupMenu
    );

  { This class is uses by both the tree and list view. }
  // A TFolderItem instance is stored in each node's Data property.  This is
  // used to populate the children of that node, show context menus, etc.
  TFolderItemData = class
  private
    FInitialized: boolean;             // Has it been populated yet?
    FSFParent: IShellFolder;           // Parent IShellFolder object
    FAttributes: UINT;
    FIndent: UINT;
    FSelected,
    FNormal: integer;
    FData: pointer;
    FFileSizeHigh: DWORD;
    FFileSizeLow: DWORD;
  protected
    {$IFDEF DFS_COMPILER_4_UP}
    function GetFileSize: Int64;
    {$ELSE}
    {$IFDEF DFS_DELPHI}
    function GetFileSize: Comp;
    {$ENDIF}
    {$ENDIF}
  public
    // I made these public because a lot of function take var parameter pidls
    // and you wouldn't be able to pass the properties.
    FIDList,                           // Relative (to SFParent) ID List
    FFQ_IDList:  PItemIDList;          // Fully Qualified ID List

    constructor Create;
    destructor Destroy; override;

    function ItemHasFlag(Flag: UINT): boolean;

    property Initialized: boolean
       read FInitialized write FInitialized;
    property SFParent: IShellFolder
       read FSFParent write FSFParent;
    property IDList: PItemIDList
       read FIDList write FIDList;
    property FQ_IDList: PItemIDList
       read FFQ_IDList write FFQ_IDList;
    property Attributes: UINT
       read FAttributes write FAttributes;
    property Indent: UINT
       read FIndent write FIndent;
    property Selected: integer
       read FSelected write FSelected;
    property Normal: integer
       read FNormal write FNormal;
    property FileSizeHigh: DWORD
       read FFileSizeHigh write FFileSizeHigh;
    property FileSizeLow: DWORD
       read FFileSizeLow write FFileSizeLow;
    {$IFDEF DFS_COMPILER_4_UP}
    property FileSize: Int64
       read GetFileSize;
    {$ELSE}
    {$IFDEF DFS_DELPHI}
    property FileSize: Comp
       read GetFileSize;
    {$ENDIF}
    {$ENDIF}
    // This is never used by the components.  You can use it in place of the
    // Data pointer I'm taking over.  I use Node.Data in the tree, but if you
    // need something similar, you can now use TFolderItemData(Node.Data).Data.
    property Data: pointer
       read FData write FData;
  end;

  { Forward declarations }
  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  TdfsCustomSystemComboBox = class;
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSLISTVIEW}
  TdfsCustomSystemListView = class;
  {$ENDIF}

{$IFDEF DFS_SCP_SYSTREEVIEW}
  TdfsCustomSystemTreeView = class(TCustomTreeView)
  private
    { Variables }
    FReadDelay: word;
    FReadDelayTimer: UINT;
    FInhibitReadDelay: boolean;
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    FListView: TdfsCustomSystemListView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    FComboBox: TdfsCustomSystemComboBox;
    {$ENDIF}

    function AppWinHook(var Message: TMessage): boolean;
    procedure HookMainWin;
    { Message Handlers }
    procedure CMSysColorChange(var Message: TWMSysColorChange); message
       CM_SYSCOLORCHANGE;
    { Property Read/Write Methods }
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    procedure SetListView(Val: TdfsCustomSystemListView);
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    procedure SetComboBox(Val: TdfsCustomSystemComboBox);
    {$ENDIF}
  protected
    procedure DeviceChanged; virtual;
    procedure TimerEvent; virtual;
    { Overridden Methods }
    procedure Notification(AComponent: TComponent; AOperation: TOperation);
       override;
    procedure Change(Node: TTreeNode); override;
    {$IFDEF DFS_SCP_BROKEN_COLOR}
    procedure CreateWnd; override;
    {$ENDIF}

    { New Virtual Methods }
    procedure SetupImageList; dynamic;
    function GetValidHandle: HWND; dynamic;

    { Abstract Methods }
    // Implementation must return the actual ID list.  Caller will make a copy
    // of it it wants it's own.  Implementer owns this one, i.e. it's the "real
    // thing".  If there isn't one, return NIL.
    function GetSelectionPIDL: PItemIDList; virtual; abstract;
    function GetSelectionParentFolder: IShellFolder; virtual; abstract;
    // Implementation notes: IDList parameter belongs to someone else.  If
    // needed by this component, a copy must be made of it.  This differs from
    // the Reset method in that it does not notify linked controls of a change
    // because that could result in an endless cycle of notifications. Return
    // value indicates success or failure.
    function LinkedReset(const ParentFolder: IShellFolder; 
       const IDList: PItemIDList; ForceUpdate: boolean): boolean; dynamic; abstract;

    { New Properties }
    property InhibitReadDelay: boolean
       read FInhibitReadDelay write FInhibitReadDelay;
    property ReadDelay: word
       read FReadDelay write FReadDelay default 500;
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    property ListView: TdfsCustomSystemListView
       read FListView write SetListView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    property ComboBox: TdfsCustomSystemComboBox
       read FComboBox write SetComboBox;
    {$ENDIF}

  public
    { Overriden Methods }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    { New Public Methods }
    // Descendant implementation notes:  resets the control entirely.  This
    // implementatino does nothing but notify linked controls of the change.
    procedure Reset; dynamic;
    // Usage note:  GetSelectionPIDL and GetSelectionParentFolder must be able to
    // return the new value before this method is called.
    procedure NotifyLinkedControls(ForceUpdate: boolean); dynamic;
    procedure LinkedControlChanged(Sender: TObject; ForceUpdate: boolean); dynamic;

    { New Properties }
    property SelectionPIDL: PItemIDList
       read GetSelectionPIDL;
    property SelectionParentFolder: IShellFolder
       read GetSelectionParentFolder;
  end;
{$ENDIF} // DFS_SCP_SYSTREEVIEW


{$IFDEF DFS_SCP_SYSLISTVIEW}
  {$IFDEF DFS_SLV_USE_EXTLISTVIEW}
  TdfsCustomSystemListView = class(TCustomExtListView)
  {$ELSE} {$IFDEF DFS_SLV_USE_ENHLISTVIEW}
  TdfsCustomSystemListView = class(TCustomEnhListView)
  {$ELSE}
  TdfsCustomSystemListView = class(TCustomListView)
  {$ENDIF} {$ENDIF}
  private
    { Variables }
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    FTreeView: TdfsCustomSystemTreeView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    FComboBox: TdfsCustomSystemComboBox;
    {$ENDIF}

    function AppWinHook(var Message: TMessage): boolean;
    procedure HookMainWin;
    { Message Handlers }
    procedure CMSysColorChange(var Message: TWMSysColorChange); message
       CM_SYSCOLORCHANGE;

    { Property Read/Write Methods }
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    procedure SetTreeView(Val: TdfsCustomSystemTreeView);
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    procedure SetComboBox(Val: TdfsCustomSystemComboBox);
    {$ENDIF}
  protected
    procedure DeviceChanged; virtual;
    { Overridden Methods }
    procedure Notification(AComponent: TComponent; AOperation: TOperation);
       override;

    { New Virtual Methods }
    procedure SetupImageList; dynamic;
    function GetValidHandle: HWND; dynamic;
    {$IFDEF DFS_SCP_BROKEN_COLOR}
    procedure CreateWnd; override;
    {$ENDIF}

    { Abstract Methods }
    // Implementation must return the actual ID list.  Caller will make a copy
    // of it it wants it's own.  Implementer owns this one, i.e. it's the "real
    // thing".  If there isn't one, return NIL.
    function GetSelectionPIDL: PItemIDList; virtual; abstract;
    function GetSelectionParentFolder: IShellFolder; virtual; abstract;
    // Implementation notes: IDList parameter belongs to someone else.  If
    // needed by this component, a copy must be made of it.  This differs from
    // the Reset method in that it does not notify linked controls of a change
    // because that could result in an endless cycle of notifications. Return
    // value indicates success or failure.
    function LinkedReset(const ParentFolder: IShellFolder;
       const IDList: PItemIDList; ForceUpdate: boolean): boolean; dynamic; abstract;

    { New Properties }
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    property TreeView: TdfsCustomSystemTreeView
       read FTreeView write SetTreeView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSCOMBOBOX}
    property ComboBox: TdfsCustomSystemComboBox
       read FComboBox write SetComboBox;
    {$ENDIF}

  public
    { Overriden Methods }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    { New Public Methods }
    // Descendant implementation notes:  resets the control entirely.  This
    // implementatino does nothing but notify linked controls of the change.
    procedure Reset; dynamic;
    // Usage note:  GetSelectionPIDL and GetSelectionParentFolder must be able to
    // return the new value before this method is called.
    procedure NotifyLinkedControls(ForceUpdate: boolean); dynamic;
    procedure LinkedControlChanged(Sender: TObject; ForceUpdate: boolean); dynamic;

    { New Properties }
    property SelectionPIDL: PItemIDList
       read GetSelectionPIDL;
    property SelectionParentFolder: IShellFolder
       read GetSelectionParentFolder;
  end;
{$ENDIF} // DFS_SCP_SYSLISTVIEW


{$IFDEF DFS_SCP_SYSCOMBOBOX}
  TdfsCustomSystemComboBox = class(TCustomComboBox)
  private
    { Variables }
    FImages: TImageList;
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    FTreeView: TdfsCustomSystemTreeView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    FListView: TdfsCustomSystemListView;
    {$ENDIF}

    function AppWinHook(var Message: TMessage): boolean;
    procedure HookMainWin;
    { Message Handlers }
    procedure CMSysColorChange(var Message: TWMSysColorChange); message
       CM_SYSCOLORCHANGE;

    { Property Read/Write Methods }
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    procedure SetTreeView(Val: TdfsCustomSystemTreeView);
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    procedure SetListView(Val: TdfsCustomSystemListView);
    {$ENDIF}
    procedure SetImages(const Value: TImageList);
  protected
    procedure DeviceChanged; virtual;
    { Overridden Methods }
    procedure Notification(AComponent: TComponent; AOperation: TOperation);
       override;
    procedure Click; override;

    { New Virtual Methods }
    procedure SetupImageList; dynamic;
    function GetValidHandle: HWND; dynamic;

    { Abstract Methods }
    // Implementation must return the actual ID list.  Caller will make a copy
    // of it it wants it's own.  Implementer owns this one, i.e. it's the "real
    // thing".  If there isn't one, return NIL.
    function GetSelectionPIDL: PItemIDList; virtual; abstract;
    function GetSelectionParentFolder: IShellFolder; virtual; abstract;
    // Implementation notes: IDList parameter belongs to someone else.  If
    // needed by this component, a copy must be made of it.  This differs from
    // the Reset method in that it does not notify linked controls of a change
    // because that could result in an endless cycle of notifications. Return
    // value indicates success or failure.
    function LinkedReset(const ParentFolder: IShellFolder;
       const IDList: PItemIDList; ForceUpdate: boolean): boolean; dynamic; abstract;

    { New Properties }
    property Images: TImageList
       read FImages write SetImages;
    {$IFDEF DFS_SCP_SYSTREEVIEW}
    property TreeView: TdfsCustomSystemTreeView
       read FTreeView write SetTreeView;
    {$ENDIF}
    {$IFDEF DFS_SCP_SYSLISTVIEW}
    property ListView: TdfsCustomSystemListView
       read FListView write SetListView;
    {$ENDIF}

  public
    { Overriden Methods }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    { New Public Methods }
    // Descendant implementation notes:  resets the control entirely.  This
    // implementatino does nothing but notify linked controls of the change.
    procedure Reset; dynamic;
    // Usage note:  GetSelectionPIDL and GetSelectionParentFolder must be able to
    // return the new value before this method is called.
    procedure NotifyLinkedControls(ForceUpdate: boolean); dynamic;
    procedure LinkedControlChanged(Sender: TObject; ForceUpdate: boolean); dynamic;

    { New Properties }
    property SelectionPIDL: PItemIDList
       read GetSelectionPIDL;
    property SelectionParentFolder: IShellFolder
       read GetSelectionParentFolder;

    { Modified Existing Properties }
    // Leave Items public because you can't change at design-time.  Also, don't
    // store the stuff in it, it's system dependent and must be built when run.
    property Items stored FALSE;
  end;
{$ENDIF} // DFS_SCP_SYSCOMBOBOX

implementation

uses
  Graphics, Forms, dialogs,
  {$IFDEF DFS_DEBUG} EJHkEng, {$ENDIF}
  {$IFDEF DFS_COMPILER_4_UP} ImgList, {$ENDIF}
  ShellAPI, PidlHelp;


{$IFDEF DFS_SCP_SYSTREEVIEW}
var
  FTimerTrees: TList;
  FMainWinHookSet: boolean;
  FMyComputerID: PItemIDList;

procedure TimerCallback(Wnd: HWND; Msg, TimerID: UINT; CurTime: DWORD); stdcall;
var
  x: integer;
begin
  for x := 0 to FTimerTrees.Count - 1 do
    if TdfsCustomSystemTreeView(FTimerTrees[x]).FReadDelayTimer = TimerID then
    begin
      TdfsCustomSystemTreeView(FTimerTrees[x]).TimerEvent;
      break;
    end;
end;

{ TdfsCustomSystemTreeView }

function TdfsCustomSystemTreeView.AppWinHook(var Message: TMessage): boolean;
begin
  if (Message.Msg = WM_DEVICECHANGE) and ((Message.WParam = $8000) or
    (Message.WParam = $8004)) then
    DeviceChanged;
  Result := FALSE;
end;

procedure TdfsCustomSystemTreeView.Change(Node: TTreeNode);
begin
  inherited Change(Node);

  if (FReadDelay > 0) and (not FInhibitReadDelay) then
  begin
    // Delay refreshing linked.  Do it when the timer fires.
    if FReadDelayTimer <> 0 then
      KillTimer(0, FReadDelayTimer);
    FReadDelayTimer := SetTimer(0, STV_READ_DELAY_TIMER, FReadDelay, @TimerCallback);
  end else begin
    // No read delay, just tell them to refresh now.
    if ([csLoading] * ComponentState) = [] then
      FInhibitReadDelay := FALSE;
    NotifyLinkedControls(FALSE);
  end;
end;

procedure TdfsCustomSystemTreeView.CMSysColorChange(var Message: TWMSysColorChange);
var
  RealColor: TColor;
begin
  SetupImageList;

  inherited;

  // There is apparently a bug in the VCl that doesn't correctly reset the
  // tree/list color on a system color change.  The window background color gets
  // changed correctly, but the text background color doesn't.  This may be
  // specific to D4, I'm not certain.
  RealColor := Color;
  // Change the color to something else, doesn't matter what so long as it's
  // different.
  if Color = clBlack then
    Color := clWhite
  else
    Color := clBlack;
  // Put back the real color
  Color := RealColor;
end;

constructor TdfsCustomSystemTreeView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FTimerTrees.Add(Self);
  FReadDelay := 500;
  FReadDelayTimer := 0;
  FInhibitReadDelay := TRUE;

  HookMainWin;

  // Initialize the image list to the system's image list
  SetupImageList;
end;

{$IFDEF DFS_SCP_BROKEN_COLOR}
procedure TdfsCustomSystemTreeView.CreateWnd;
begin
  inherited;
  Perform(TVM_SETBKCOLOR, 0, LPARAM(ColorToRGB(Color)));
  Perform(TVM_SETTEXTCOLOR, 0, LPARAM(ColorToRGB(Font.Color)));
end;
{$ENDIF}

destructor TdfsCustomSystemTreeView.Destroy;
begin
  if FMainWinHookSet then
  begin
    Application.UnHookMainWindow(AppWinHook);
    FMainWinHookSet := FALSE;
  end;

  if FReadDelayTimer <> 0 then
    KillTimer(0, FReadDelayTimer);
  FTimerTrees.Remove(Self);

  inherited Destroy;
end;

procedure TdfsCustomSystemTreeView.DeviceChanged;
begin
  // One of the drives changed.
  Reset;
end;

function TdfsCustomSystemTreeView.GetValidHandle: HWND;
begin
  if HandleAllocated then
    Result := Handle
  else if assigned(Parent) and Parent.HandleAllocated then
    Result := Parent.Handle
  else if (GetParentForm(Self) <> NIL) and
     (GetParentForm(Self).HandleAllocated) then
    Result := GetParentForm(Self).Handle
  else if assigned(Application.MainForm) and
     Application.MainForm.HandleAllocated then
    Result := Application.MainForm.Handle
  else
    Result := 0;
end;

procedure TdfsCustomSystemTreeView.HookMainWin;
begin
  if not FMainWinHookSet then
  begin
    Application.HookMainWindow(AppWinHook);
    FMainWinHookSet := TRUE;
  end;
end;

procedure TdfsCustomSystemTreeView.LinkedControlChanged(Sender: TObject;
   ForceUpdate: boolean);
begin
  if csDesigning in ComponentState then
    exit;

  // Have to get linked's new pidl and refresh using it
  {$IFDEF DFS_SCP_SYSLISTVIEW}
  if (Sender = ListView) then
    LinkedReset(ListView.SelectionParentFolder, ListView.SelectionPIDL,
       ForceUpdate);
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  if (Sender = ComboBox) then
    LinkedReset(ComboBox.SelectionParentFolder, ComboBox.SelectionPIDL,
       ForceUpdate);
  {$ENDIF}
end;

procedure TdfsCustomSystemTreeView.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited Notification(AComponent, AOperation);

  case AOperation of
    opInsert:
      begin
        {$IFDEF DFS_SCP_SYSLISTVIEW}
        if (AComponent is TdfsCustomSystemListView) and (FListView = NIL) then
        begin
          ListView := TdfsCustomSystemListView(AComponent);
          ListView.TreeView := Self;
        end;
        {$ENDIF}

        {$IFDEF DFS_SCP_SYSCOMBOBOX}
        if (AComponent is TdfsCustomSystemComboBox) and (FComboBox = NIL) then
        begin
          ComboBox := TdfsCustomSystemComboBox(AComponent);
          ComboBox.TreeView := Self;
        end;
        {$ENDIF}
      end;

    opRemove:
      begin
        {$IFDEF DFS_SCP_SYSLISTVIEW}
        if AComponent = FListView then
          ListView := NIL;
        {$ENDIF}

        {$IFDEF DFS_SCP_SYSCOMBOBOX}
        if AComponent = FComboBox then
          ComboBox := NIL;
        {$ENDIF}
      end;
  end;
end;

procedure TdfsCustomSystemTreeView.NotifyLinkedControls(ForceUpdate: boolean);
begin
  {$IFDEF DFS_SCP_SYSLISTVIEW}
  if FListView <> NIL then
    ListView.LinkedControlChanged(Self, ForceUpdate);
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  if FComboBox <> NIL then
    ComboBox.LinkedControlChanged(Self, ForceUpdate);
  {$ENDIF}
end;

procedure TdfsCustomSystemTreeView.Reset;
begin
  NotifyLinkedControls(FALSE);
end;

{$IFDEF DFS_SCP_SYSCOMBOBOX}
procedure TdfsCustomSystemTreeView.SetComboBox(Val: TdfsCustomSystemComboBox);
begin
  if FComboBox <> Val then
  begin
    FComboBox := Val;
  end;
end;
{$ENDIF}

{$IFDEF DFS_SCP_SYSLISTVIEW}
procedure TdfsCustomSystemTreeView.SetListView(Val: TdfsCustomSystemListView);
begin
  if FListView <> Val then
  begin
    FListView := Val;
  end;
end;
{$ENDIF}

procedure TdfsCustomSystemTreeView.SetupImageList;
var
  SysIL: HImageList;
  SFI: TSHFileInfo;
begin
  if Images <> NIL then
    Images.Free;
  // Because we are the owner, it'll get freed automatically when we do.
  Images := TImageList.Create(Self);
  SysIL := SHGetFileInfo('', 0, SFI, SizeOf(SFI), SHGFI_SYSICONINDEX or
     SHGFI_SMALLICON);
  if SysIL <> 0 then
  begin
    if Images.HandleAllocated then
      Images.Handle := 0;
    Images.Masked := TRUE;
//    Images.BkColor := ImageList_GetBkColor(SysIL);
    Images.BkColor := clNone;
    Images.DrawingStyle := dsTransparent;
    Images.Handle := SysIL;
    Images.ShareImages := TRUE;  // DON'T FREE THE SYSTEM IMAGE LIST!!!!!
                                 // BAD IDEA (tm)!
  end;
end;

procedure TdfsCustomSystemTreeView.TimerEvent;
begin
  KillTimer(0, FReadDelayTimer);
  FReadDelayTimer := 0;
  // Delay timer fired, notify linked controls
  NotifyLinkedControls(FALSE);
end;

{$ENDIF}




{$IFDEF DFS_SCP_SYSLISTVIEW}

{ TdfsCustomSystemListView }

function TdfsCustomSystemListView.AppWinHook(var Message: TMessage): boolean;
begin
  if (Message.Msg = WM_DEVICECHANGE) and ((Message.WParam = $8000) or
    (Message.WParam = $8004)) then
    DeviceChanged;
  Result := FALSE;
end;

procedure TdfsCustomSystemListView.CMSysColorChange(var Message: TWMSysColorChange);
var
  RealColor: TColor;
begin
  SetupImageList;
  inherited;

  // There is apparently a bug in the VCl that doesn't correctly reset the
  // tree/list color on a system color change.  The window background color gets
  // changed correctly, but the text background color doesn't.  This may be
  // specific to D4, I'm not certain.
  RealColor := Color;
  // Change the color to something else, doesn't matter what so long as it's
  // different.
  if Color = clBlack then
    Color := clWhite
  else
    Color := clBlack;
  // Put back the real color
  Color := RealColor;
end;


constructor TdfsCustomSystemListView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  HookMainWin;
  // Initialize the image list to the system's image list
  SetupImageList;
end;

{$IFDEF DFS_SCP_BROKEN_COLOR}
procedure TdfsCustomSystemListView.CreateWnd;
begin
  inherited;
  Perform(LVM_SETBKCOLOR, 0, LPARAM(ColorToRGB(Color)));
end;
{$ENDIF}

destructor TdfsCustomSystemListView.Destroy;
begin
  if FMainWinHookSet then
  begin
    Application.UnHookMainWindow(AppWinHook);
    FMainWinHookSet := FALSE;
  end;

  inherited;
end;

procedure TdfsCustomSystemListView.DeviceChanged;
begin
  // One of the drives changed.
  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if TreeView <> NIL then
    TreeView.Reset
  else
  {$ENDIF}
    Reset;
end;

function TdfsCustomSystemListView.GetValidHandle: HWND;
begin
  if HandleAllocated then
    Result := Handle
  else if assigned(Parent) and Parent.HandleAllocated then
    Result := Parent.Handle
  else if (GetParentForm(Self) <> NIL) and
     (GetParentForm(Self).HandleAllocated) then
    Result := GetParentForm(Self).Handle
  else if assigned(Application.MainForm) and
     Application.MainForm.HandleAllocated then
    Result := Application.MainForm.Handle
  else
    Result := 0;
end;

procedure TdfsCustomSystemListView.HookMainWin;
begin
  if not FMainWinHookSet then
  begin
    Application.HookMainWindow(AppWinHook);
    FMainWinHookSet := TRUE;
  end;
end;

procedure TdfsCustomSystemListView.LinkedControlChanged(Sender: TObject;
   ForceUpdate: boolean);
begin
  if csDesigning in ComponentState then
    exit;

  // Have to get linked's new pidl and refresh using it
  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if (Sender = TreeView) then
    LinkedReset(TreeView.SelectionParentFolder, TreeView.SelectionPIDL,
       ForceUpdate);
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  if (Sender = ComboBox) then
    LinkedReset(ComboBox.SelectionParentFolder, ComboBox.SelectionPIDL,
       ForceUpdate);
  {$ENDIF}
end;

procedure TdfsCustomSystemListView.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited Notification(AComponent, AOperation);

  case AOperation of
    opInsert:
      begin
        {$IFDEF DFS_SCP_SYSTREEVIEW}
        if (AComponent is TdfsCustomSystemTreeView) and (FTreeView = NIL) then
        begin
          TreeView := TdfsCustomSystemTreeView(AComponent);
          TreeView.ListView := Self;
        end;
        {$ENDIF}

        {$IFDEF DFS_SCP_SYSCOMBOBOX}
        if (AComponent is TdfsCustomSystemComboBox) and (FComboBox = NIL) then
        begin
          ComboBox := TdfsCustomSystemComboBox(AComponent);
          ComboBox.ListView := Self;
        end;
        {$ENDIF}
      end;

    opRemove:
      begin
        {$IFDEF DFS_SCP_SYSTREEVIEW}
        if AComponent = FTreeView then
          TreeView := NIL;
        {$ENDIF}

        {$IFDEF DFS_SCP_SYSCOMBOBOX}
        if AComponent = FComboBox then
          ComboBox := NIL;
        {$ENDIF}
      end;
  end;
end;

procedure TdfsCustomSystemListView.NotifyLinkedControls(ForceUpdate: boolean);
begin
  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if FTreeView <> NIL then
    TreeView.LinkedControlChanged(Self, ForceUpdate);
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  if FComboBox <> NIL then
    ComboBox.LinkedControlChanged(Self, ForceUpdate);
  {$ENDIF}
end;

procedure TdfsCustomSystemListView.Reset;
begin
  NotifyLinkedControls(FALSE);
end;

{$IFDEF DFS_SCP_SYSCOMBOBOX}
procedure TdfsCustomSystemListView.SetComboBox(Val: TdfsCustomSystemComboBox);
begin
  if FComboBox <> Val then
  begin
    FComboBox := Val;
  end;
end;
{$ENDIF}

{$IFDEF DFS_SCP_SYSTREEVIEW}
procedure TdfsCustomSystemListView.SetTreeView(Val: TdfsCustomSystemTreeView);
begin
  if FTreeView <> Val then
  begin
    FTreeView := Val;
  end;
end;
{$ENDIF}

procedure TdfsCustomSystemListView.SetupImageList;
var
  SysIL: HImageList;
  SFI: TSHFileInfo;
begin
  if LargeImages <> NIL then
    LargeImages.Free;
  // Because we are the owner, it'll get freed automatically when we do.
  LargeImages := TImageList.Create(Self);
  SysIL := SHGetFileInfo('', 0, SFI, SizeOf(SFI), SHGFI_SYSICONINDEX or
     SHGFI_LARGEICON);
  if SysIL <> 0 then
  begin
    if LargeImages.HandleAllocated then
      LargeImages.Handle := 0;
    LargeImages.Masked := TRUE;
//    LargeImages.BkColor := ImageList_GetBkColor(SysIL);
    LargeImages.BkColor := clNone;
    LargeImages.DrawingStyle := dsTransparent;
    LargeImages.Handle := SysIL;
    LargeImages.ShareImages := TRUE;  // DON'T FREE THE SYSTEM IMAGE LIST!!!!!
                                      // BAD IDEA (tm)!
  end;

  if SmallImages <> NIL then
    SmallImages.Free;
  // Because we are the owner, it'll get freed automatically when we do.
  SmallImages := TImageList.Create(Self);
  SysIL := SHGetFileInfo('', 0, SFI, SizeOf(SFI), SHGFI_SYSICONINDEX or
     SHGFI_SMALLICON);
  if SysIL <> 0 then
  begin
    if SmallImages.HandleAllocated then
      SmallImages.Handle := 0;
    SmallImages.Masked := TRUE;
//    SmallImages.BkColor := ImageList_GetBkColor(SysIL);
    SmallImages.BkColor := clNone;
    SmallImages.DrawingStyle := dsTransparent;
    SmallImages.Handle := SysIL;
    SmallImages.ShareImages := TRUE;  // DON'T FREE THE SYSTEM IMAGE LIST!!!!!
                                      // BAD IDEA (tm)!
  end;
end;

{$ENDIF}

{ TdfsCustomSystemComboBox }

{$IFDEF DFS_SCP_SYSCOMBOBOX}

function TdfsCustomSystemComboBox.AppWinHook(var Message: TMessage): boolean;
begin
  if (Message.Msg = WM_DEVICECHANGE) and ((Message.WParam = $8000) or
    (Message.WParam = $8004)) then
    DeviceChanged;
  Result := FALSE;
end;

procedure TdfsCustomSystemComboBox.Click;
begin
  NotifyLinkedControls(FALSE);

  inherited Click;
end;

procedure TdfsCustomSystemComboBox.CMSysColorChange(var Message: TWMSysColorChange);
begin
  SetupImageList;

  inherited;
end;

constructor TdfsCustomSystemComboBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  HookMainWin;
  // Initialize the image list to the system's image list
  SetupImageList;
end;

destructor TdfsCustomSystemComboBox.Destroy;
begin
  if FMainWinHookSet then
  begin
    Application.UnHookMainWindow(AppWinHook);
    FMainWinHookSet := FALSE;
  end;

  inherited;
end;

procedure TdfsCustomSystemComboBox.DeviceChanged;
begin
  // One of the drives changed.
  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if TreeView <> NIL then
    TreeView.Reset
  else
  {$ENDIF}
    Reset;
end;

function TdfsCustomSystemComboBox.GetValidHandle: HWND;
begin
  if HandleAllocated then
    Result := Handle
  else if assigned(Parent) and Parent.HandleAllocated then
    Result := Parent.Handle
  else if (GetParentForm(Self) <> NIL) and
     (GetParentForm(Self).HandleAllocated) then
    Result := GetParentForm(Self).Handle
  else if assigned(Application.MainForm) and
     Application.MainForm.HandleAllocated then
    Result := Application.MainForm.Handle
  else
    Result := 0;
end;

procedure TdfsCustomSystemComboBox.HookMainWin;
begin
  if not FMainWinHookSet then
  begin
    Application.HookMainWindow(AppWinHook);
    FMainWinHookSet := TRUE;
  end;
end;

procedure TdfsCustomSystemComboBox.LinkedControlChanged(Sender: TObject;
   ForceUpdate: boolean);
begin
  if csDesigning in ComponentState then
    exit;

  // Have to get linked's new pidl and refresh using it
  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if (Sender = TreeView) then
    LinkedReset(TreeView.SelectionParentFolder, TreeView.SelectionPIDL,
       ForceUpdate);
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSLISTVIEW}
  if (Sender = ListView) then
    LinkedReset(ListView.SelectionParentFolder, ListView.SelectionPIDL,
       ForceUpdate);
  {$ENDIF}
end;

procedure TdfsCustomSystemComboBox.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited Notification(AComponent, AOperation);

  case AOperation of
    opInsert:
      begin
        {$IFDEF DFS_SCP_SYSTREEVIEW}
        if (AComponent is TdfsCustomSystemTreeView) and (FTreeView = NIL) then
        begin
          TreeView := TdfsCustomSystemTreeView(AComponent);
          TreeView.ComboBox := Self;
        end;
        {$ENDIF}

        {$IFDEF DFS_SCP_SYSLISTVIEW}
        if (AComponent is TdfsCustomSystemListView) and (FListView = NIL) then
        begin
          ListView := TdfsCustomSystemListView(AComponent);
          ListView.ComboBox := Self;
        end;
        {$ENDIF}
      end;

    opRemove:
      begin
        {$IFDEF DFS_SCP_SYSTREEVIEW}
        if AComponent = FTreeView then
          TreeView := NIL;
        {$ENDIF}

        {$IFDEF DFS_SCP_SYSLISTVIEW}
        if AComponent = FListView then
          ListView := NIL;
        {$ENDIF}
      end;
  end;
end;

procedure TdfsCustomSystemComboBox.NotifyLinkedControls(ForceUpdate: boolean);
begin
  {$IFDEF DFS_SCP_SYSLISTVIEW}
  if FListView <> NIL then
    ListView.LinkedControlChanged(Self, ForceUpdate);
  {$ENDIF}

  {$IFDEF DFS_SCP_SYSTREEVIEW}
  if FTreeView <> NIL then
    TreeView.LinkedControlChanged(Self, ForceUpdate);
  {$ENDIF}
end;

procedure TdfsCustomSystemComboBox.Reset;
begin
  NotifyLinkedControls(FALSE);
end;

procedure TdfsCustomSystemComboBox.SetImages(const Value: TImageList);
begin
  if FImages <> NIL then
    FImages.Free;
  // Because we are the owner, it'll get freed automatically when we do.
  FImages := TImageList.Create(Self);
  FImages.Assign(Value);
end;

{$IFDEF DFS_SCP_SYSLISTVIEW}
procedure TdfsCustomSystemComboBox.SetListView(Val: TdfsCustomSystemListView);
begin
  if FListView <> Val then
  begin
    FListView := Val;
  end;
end;
{$ENDIF}

{$IFDEF DFS_SCP_SYSTREEVIEW}
procedure TdfsCustomSystemComboBox.SetTreeView(Val: TdfsCustomSystemTreeView);
begin
  if FTreeView <> Val then
  begin
    FTreeView := Val;
  end;
end;
{$ENDIF}

procedure TdfsCustomSystemComboBox.SetupImageList;
var
  SysIL: HImageList;
  SFI: TSHFileInfo;
begin
  if FImages <> NIL then
    FImages.Free;
  // Because we are the owner, it'll get freed automatically when we do.
  FImages := TImageList.Create(Self);
  SysIL := SHGetFileInfo('', 0, SFI, SizeOf(SFI), SHGFI_SYSICONINDEX or
     SHGFI_SMALLICON);
  if SysIL <> 0 then
  begin
    if FImages.HandleAllocated then
      FImages.Handle := 0;
    FImages.Masked := TRUE;
//    Images.BkColor := ImageList_GetBkColor(SysIL);
    FImages.BkColor := clNone;
    FImages.DrawingStyle := dsTransparent;
    FImages.Handle := SysIL;
    FImages.ShareImages := TRUE;  // DON'T FREE THE SYSTEM IMAGE LIST!!!!!
                                 // BAD IDEA (tm)!
  end;
end;

{$ENDIF}


{ TFolderItemData }

var
  NewCount: integer;

constructor TFolderItemData.Create;
begin
  inherited;
  inc(NewCount);
end;

destructor TFolderItemData.Destroy;
begin
  inherited;
  dec(NewCount);
end;

{$IFDEF DFS_COMPILER_4_UP}

function TFolderItemData.GetFileSize: Int64;
begin
  Result := (FFileSizeHigh SHR 32) + FFileSizeLow;
end;

{$ELSE}
{$IFDEF DFS_DELPHI}

function TFolderItemData.GetFileSize: Comp;
var
  LI: TLargeInteger;
begin
  LI.LowPart := FFileSizeLow;
  LI.HighPart := FFileSizeHigh;
  Result := Comp(LI);
end;

{$ENDIF}
{$ENDIF}

function TFolderItemData.ItemHasFlag(Flag: UINT): boolean;
begin
  Result := (Attributes and Flag) <> 0;
end;

var
  Malloc: IMalloc;

initialization
  NewCount := 0;
  FTimerTrees := TList.Create;
  FMainWinHookSet := FALSE;
  ShGetSpecialFolderLocation(0, CSIDL_DRIVES, FMyComputerID);
finalization
  FTimerTrees.Free;
  ShGetMalloc(Malloc);
  try
    Malloc.Free(FMyComputerID);
  finally;
    {$IFDEF DFS_COMPILER_2}
    ShellMalloc.Release;
    {$ENDIF}
  end;
  if NewCount > 0 then
    raise ELeaking.Create(MEMLEAK_STR);
end.



