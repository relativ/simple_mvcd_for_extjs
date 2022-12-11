{*******************************************************}
{                                                       }
{       Extension Library                               }
{       Diagrams Unit                                   }
{                                                       }
{       (c) 2002, Balabuyev Yevgeny                     }
{       E-mail: stalcer@rambler.ru                      }
{                                                       }
{*******************************************************}

unit ELDgrm;

interface

uses
  Classes, Controls, ExtCtrls, Forms, Windows, Messages, StdCtrls, Graphics,
  SysUtils, ELSConsts {$IFDEF VER140} , Types {$ENDIF};


  { TELCustomDiagram }

type
  EELDiagram = class(Exception);
  TELCustomDiagram = class;
  TELDiagramItem = class;

  TELDiagramLink = class(TCollectionItem)
  private
    FDInfIndex: Integer;
    FEndItemName: string;
    FBeginItemName: string;
    FBeginItem: TELDiagramItem;
    FEndItem: TELDiagramItem;
    FColor: TColor;
    FVisible: Boolean;
    procedure DoConnectItems;
    procedure SetBeginItemName(const Value: string);
    procedure SetEndItemName(const Value: string);
    procedure SetColor(const Value: TColor);
    procedure SetVisible(const Value: Boolean);
    function GetSelected: Boolean;
    procedure SetSelected(const Value: Boolean);
  protected
    function GetDisplayName: string; override;
    function CanBeShown: Boolean; virtual;
    procedure DoAssign(ASource: TPersistent); virtual;
    procedure ConnectItems;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    property BeginItem: TELDiagramItem read FBeginItem;
    property EndItem: TELDiagramItem read FEndItem;
    property Selected: Boolean read GetSelected write SetSelected;
  published
    property BeginItemName: string read FBeginItemName write SetBeginItemName;
    property EndItemName: string read FEndItemName write SetEndItemName;
    property Color: TColor read FColor write SetColor default clWindowText;
    property Visible: Boolean read FVisible write SetVisible default True;
  end;

  TELDiagramLinkClass = class of TELDiagramLink;

  TELDiagramLinks = class(TCollection)
  private
    FDiagram: TELCustomDiagram;
    function GetItem(Index: Integer): TELDiagramLink;
    procedure SetItem(Index: Integer; const Value: TELDiagramLink);
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
//!!!!    procedure Notify(Item: TCollectionItem; Action: TCollectionNotification); override;
  public
    constructor Create(ADiagram: TELCustomDiagram); virtual;
    procedure Refresh;
    function ItemAtPos(AX, AY: Integer): TELDiagramLink;
    property Diagram: TELCustomDiagram read FDiagram;
    property Items[Index: Integer]: TELDiagramLink read GetItem write SetItem; default;
  end;

  TELDiagramItemPanel = class(TPanel)
  private
    FItem: TELDiagramItem;
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMContextMenu(var Message: TWMContextMenu); message WM_CONTEXTMENU;
    procedure WMGetDlgCode(var Msg: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMMove(var Message: TWMMove); message WM_MOVE;
    procedure WMNCLButtonDown(var Message: TWMNCLButtonDown); message WM_NCLBUTTONDOWN;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure WMKillFocus(var Message: TWMSetFocus); message WM_KILLFOCUS;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; override;
    procedure WndProc(var Message: TMessage); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    constructor Create(AOwner: TComponent; AItem: TELDiagramItem); reintroduce; virtual;
    property Item: TELDiagramItem read FItem;
    property Canvas;
  end;

  TELDiagramItemPanelClass = class of TELDiagramItemPanel;

  TELDiagramItemState = set of (isBoundsChanged, isCaptionChanged, isColorChanged,
    isVisibleChanged, isChangingBounds, isCreatingPanel);

  TELDiagramItem = class(TCollectionItem)
  private
    FState: TELDiagramItemState;
    FName: string;
    FLeft: Integer;
    FTop: Integer;
    FWidth: Integer;
    FHeight: Integer;
    FCaption: TCaption;
    FPanel: TELDiagramItemPanel;
    FVisible: Boolean;
    FColor: TColor;
    procedure CreatePanel;
    procedure FreePanel;
    procedure UpdateBounds;
    procedure UpdateDesigner;
    procedure SetHeight(const Value: Integer);
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: TCaption);
    procedure SetName(const Value: string);
    procedure SetVisible(const Value: Boolean);
    function GetSelected: Boolean;
    procedure SetSelected(const Value: Boolean);
    procedure SetColor(const Value: TColor);
  protected
    function GetDisplayName: string; override;
    function GetPanelClass: TELDiagramItemPanelClass; virtual;
    procedure Update(var ARefreshLinks: Boolean); virtual;
    procedure ForceUpdate; virtual;
    procedure MakeUpdated; virtual;
    procedure DoAssign(ASource: TPersistent); virtual;
    procedure Select(ASelect: Boolean); virtual;
    procedure Focus; virtual;
    property State: TELDiagramItemState read FState;
    property Panel: TELDiagramItemPanel read FPanel;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    procedure MakeVisible;
    property Selected: Boolean read GetSelected write SetSelected;
  published
    property Left: Integer read FLeft write SetLeft;
    property Top: Integer read FTop write SetTop;
    property Width: Integer read FWidth write SetWidth;
    property Height: Integer read FHeight write SetHeight;
    property Name: string read FName write SetName;
    property Caption: TCaption read FCaption write SetCaption;
    property Color: TColor read FColor write SetColor default clBtnFace;
    property Visible: Boolean read FVisible write SetVisible default True;
  end;

  TELDiagramItemClass = class of TELDiagramItem;

  TELDiagramItems = class(TCollection)
  private
    FDiagram: TELCustomDiagram;
    function GetItem(Index: Integer): TELDiagramItem;
    procedure SetItem(Index: Integer; const Value: TELDiagramItem);
    procedure ReconnectItems;
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
    procedure SetItemName(Item: TCollectionItem); override;
//!!!!!    procedure Notify(Item: TCollectionItem; Action: TCollectionNotification); override;
  public
    constructor Create(ADiagram: TELCustomDiagram); virtual;
    function Find(const AName: string): TELDiagramItem;
    function ItemAtPos(AX, AY: Integer): TELDiagramItem;
    property Diagram: TELCustomDiagram read FDiagram;
    property Items[Index: Integer]: TELDiagramItem read GetItem write SetItem; default;
  end;

  TELLinkDrawInfo = class
  end;

  TELStdLinkDrawInfo = class(TELLinkDrawInfo)
  public
    BeginP: TPoint;
    EndP: TPoint;
    LineBegin: TPoint;
    LineEnd: TPoint;
    LeftToRight: Boolean;
    Color: TColor;
    Selected: Boolean;
  end;

  TELLinkDrawInfoClass = class of TELLinkDrawInfo;

  PELLinkDrawInfoRec = ^TELLinkDrawInfoRec;
  TELLinkDrawInfoRec = record
    Link: TELDiagramLink;
    DrawInfo: TELLinkDrawInfo;
    OldDrawInfo: TELLinkDrawInfo;
  end;

  TELDiagramState = set of (dsRefreshingLinks, dsChangingSelection,
    dsErasingLinks, dsLinksChanged);

  TELCustomDiagram = class(TCustomPanel)
  private
    FState: TELDiagramState;
    FLinkDInfs: TList;
    FHScrollPos: Integer;
    FVScrollPos: Integer;
    FDiagramWidth: Integer;
    FDiagramHeight: Integer;
    FLinks: TELDiagramLinks;
    FItems: TELDiagramItems;
    FSelectedItem: TELDiagramItem;
    FSelectedLink: TELDiagramLink;
    FOnChangeSelection: TNotifyEvent;
    FOnChange: TNotifyEvent;
    FScrollBars: TScrollStyle;
    FThumbTrack: Boolean;
    procedure UpdateScrollBars;
    function IsActiveControl: Boolean;
    procedure FreeLinkDInfs(AInfs: TList);
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    procedure WMHScroll(var Message: TWMHScroll); message WM_HSCROLL;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMGetDlgCode(var Msg: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure SetDiagramHeight(const Value: Integer);
    procedure SetDiagramWidth(const Value: Integer);
    procedure SetLinks(const Value: TELDiagramLinks);
    procedure SetItems(const Value: TELDiagramItems);
    procedure SetSelectedItem(const Value: TELDiagramItem);
    procedure SetSelectedLink(const Value: TELDiagramLink);
    procedure SetHScrollPos(const Value: Integer);
    procedure SetVScrollPos(const Value: Integer);
    procedure SetScrollBars(const Value: TScrollStyle);
  protected
    procedure EraseLinks;
    procedure Paint; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateHandle; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    function GetLinkClass: TELDiagramLinkClass; virtual;
    function CreateLinks: TELDiagramLinks; virtual;
    function GetItemClass: TELDiagramItemClass; virtual;
    function CreateItems: TELDiagramItems; virtual;
    function GetLinkDrawInfoClass: TELLinkDrawInfoClass; virtual;
    function CreateLinkDrawInfo(ALink: TELDiagramLink): TELLinkDrawInfo; virtual;
    function IsEqualDrawInfos(ADrawInfo1, ADrawInfo2: TELLinkDrawInfo): Boolean; virtual;
    function IsOnLink(ADrawInfo: TELLinkDrawInfo; AX, AY: Integer): Boolean; virtual;
    procedure PaintLink(ADrawInfo: TELLinkDrawInfo; AClear: Boolean); virtual;
    procedure PaintItem(APanel: TELDiagramItemPanel); virtual;
    procedure ChangeSelection; virtual;
    procedure Change; virtual;
    property State: TELDiagramState read FState;
    property SelectedItem: TELDiagramItem read FSelectedItem write SetSelectedItem;
    property SelectedLink: TELDiagramLink read FSelectedLink write SetSelectedLink;
    property ScrollBars: TScrollStyle read FScrollBars write SetScrollBars default ssBoth;
    property HScrollPos: Integer read FHScrollPos write SetHScrollPos;
    property VScrollPos: Integer read FVScrollPos write SetVScrollPos;
    property ThumbTrack: Boolean read FThumbTrack write FThumbTrack default False;
    property DiagramWidth: Integer read FDiagramWidth write SetDiagramWidth;
    property DiagramHeight: Integer read FDiagramHeight write SetDiagramHeight;
    property Links: TELDiagramLinks read FLinks write SetLinks;
    property Items: TELDiagramItems read FItems write SetItems;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnChangeSelection: TNotifyEvent read FOnChangeSelection write FOnChangeSelection;
    property TabStop default True;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ScrollBy(ADeltaX, ADeltaY: Integer); reintroduce;
  end;

  
  { TELDiagram }

  TELDiagramOnPaintItem = procedure(Sender: TObject; APanel: TELDiagramItemPanel) of object;
  TELDiagramOnCreateLinkDrawInfo = procedure(Sender: TObject; ALink: TELDiagramLink;
    var ADrawInfo: TELLinkDrawInfo) of object;
  TELDiagramOnIsEqualDrawInfos = procedure (Sender: TObject; ADrawInfo1,
    ADrawInfo2: TELLinkDrawInfo; var AIsEqual: Boolean) of object;
  TELDiagramOnIsOnLink = procedure(Sender: TObject; ADrawInfo: TELLinkDrawInfo;
    AX, AY: Integer; var AIsOnLink: Boolean) of object;
  TELDiagramOnPaintLink = procedure(Sender: TObject; ADrawInfo: TELLinkDrawInfo;
    AClear: Boolean) of object;

  TELDiagram = class(TELCustomDiagram)
  private
    FOnPaintItem: TELDiagramOnPaintItem;
    FCustomDrawItems: Boolean;
    FCustomDrawLinks: Boolean;
    FOnCreateLinkDrawInfo: TELDiagramOnCreateLinkDrawInfo;
    FOnIsEqualDrawInfos: TELDiagramOnIsEqualDrawInfos;
    FOnIsOnLink: TELDiagramOnIsOnLink;
    FOnPaintLink: TELDiagramOnPaintLink;
    procedure SetCustomDrawItems(const Value: Boolean);
    procedure SetCustomDrawLinks(const Value: Boolean);
  protected
    function CreateLinkDrawInfo(ALink: TELDiagramLink): TELLinkDrawInfo; override;
    function IsEqualDrawInfos(ADrawInfo1, ADrawInfo2: TELLinkDrawInfo): Boolean; override;
    function IsOnLink(ADrawInfo: TELLinkDrawInfo; AX, AY: Integer): Boolean; override;
    procedure PaintLink(ADrawInfo: TELLinkDrawInfo; AClear: Boolean); override;
    procedure PaintItem(APanel: TELDiagramItemPanel); override;
  public
    property SelectedItem;
    property SelectedLink;
    property HScrollPos;
    property VScrollPos;
  published
    property CustomDrawItems: Boolean read FCustomDrawItems write SetCustomDrawItems default False;
    property CustomDrawLinks: Boolean read FCustomDrawLinks write SetCustomDrawLinks default False;
    property OnPaintItem: TELDiagramOnPaintItem read FOnPaintItem write FOnPaintItem;
    property OnCreateLinkDrawInfo: TELDiagramOnCreateLinkDrawInfo read FOnCreateLinkDrawInfo write FOnCreateLinkDrawInfo;
    property OnIsEqualDrawInfos: TELDiagramOnIsEqualDrawInfos read FOnIsEqualDrawInfos write FOnIsEqualDrawInfos;
    property OnIsOnLink: TELDiagramOnIsOnLink read FOnIsOnLink write FOnIsOnLink;
    property OnPaintLink: TELDiagramOnPaintLink read FOnPaintLink write FOnPaintLink;
    property ScrollBars;
    property DiagramWidth;
    property DiagramHeight;
    property Links;
    property Items;
    property ThumbTrack;
    property OnChange;
    property OnChangeSelection;
    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
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


  { TELDBDiagram }

  TELDBDiagram = class;
  TELDBDiagramItemPanel = class;

  TELDBDiagramItemListBox = class(TListBox)
  private
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMContextMenu(var Message: TWMContextMenu); message WM_CONTEXTMENU;
    procedure WMGetDlgCode(var Msg: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    procedure WMKeyDown(var Message: TWMKeyDown); message WM_KEYDOWN;
    procedure WMMouseWheel(var Message: TWMMouseWheel); message WM_MOUSEWHEEL;
    function GetPanel: TELDBDiagramItemPanel;
  protected
    procedure CreateHandle; override;
    procedure DestroyWnd; override;
    procedure WndProc(var Message: TMessage); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    property Panel: TELDBDiagramItemPanel read GetPanel;
  end;

  TELDBDiagramItemPanel = class(TELDiagramItemPanel)
  private
    FListBox: TELDBDiagramItemListBox;
  protected
    property ListBox: TELDBDiagramItemListBox read FListBox;
  public
    constructor Create(AOwner: TComponent; AItem: TELDiagramItem); override;
  end;

  TELDBDiagramItem = class(TELDiagramItem)
  private
    FItemsChanged: Boolean;
    FOldItemIndex: Integer;
    FLineIndex: Integer;
    FLines: TStrings;
    procedure LinesChange(Sender: TObject);
    procedure SetLines(const Value: TStrings);
  protected
    procedure DoAssign(ASource: TPersistent); override;
    procedure Update(var ARefreshLinks: Boolean); override;
    procedure ForceUpdate; override;
    procedure MakeUpdated; override;
    function GetPanelClass: TELDiagramItemPanelClass; override;
    procedure Select(ASelect: Boolean); override;
    procedure Focus; override;
  public
    constructor Create(Collection: TCollection); override;
  published
    property Color default clWindow;
    property Lines: TStrings read FLines write SetLines;
  end;

  TELDBDiagramItems = class(TELDiagramItems)
  private
    function GetItem(Index: Integer): TELDBDiagramItem;
    procedure SetItem(Index: Integer; const Value: TELDBDiagramItem);
    function GetDiagram: TELDBDiagram;
  public
    function Find(const AName: string): TELDBDiagramItem;
    function ItemAtPos(AX, AY: Integer): TELDBDiagramItem;
    property Diagram: TELDBDiagram read GetDiagram;
    property Items[Index: Integer]: TELDBDiagramItem read GetItem write SetItem; default;
  end;

  TELDBLinkPointType = (lptNone, lptOne, lptInfinity);

  TELDBDiagramLink = class(TELDiagramLink)
  private
    FBeginLineIndex: Integer;
    FEndLineIndex: Integer;
    FBeginPointType: TELDBLinkPointType;
    FEndPointType: TELDBLinkPointType;
    procedure SetBeginLineIndex(const Value: Integer);
    procedure SetEndLineIndex(const Value: Integer);
    procedure SetBeginPointType(const Value: TELDBLinkPointType);
    procedure SetEndPointType(const Value: TELDBLinkPointType);
    function GetBeginItem: TELDBDiagramItem;
    function GetEndItem: TELDBDiagramItem;
  protected
    function CanBeShown: Boolean; override;
    procedure DoAssign(ASource: TPersistent); override;
  public
    constructor Create(Collection: TCollection); override;
    property BeginItem: TELDBDiagramItem read GetBeginItem;
    property EndItem: TELDBDiagramItem read GetEndItem;
  published
    property BeginLineIndex: Integer read FBeginLineIndex write SetBeginLineIndex default -1;
    property BeginPointType: TELDBLinkPointType read FBeginPointType write SetBeginPointType default lptNone;
    property EndLineIndex: Integer read FEndLineIndex write SetEndLineIndex default -1;
    property EndPointType: TELDBLinkPointType read FEndPointType write SetEndPointType default lptNone;
  end;

  TELDBDiagramLinks = class(TELDiagramLinks)
  private
    function GetItem(Index: Integer): TELDBDiagramLink;
    procedure SetItem(Index: Integer; const Value: TELDBDiagramLink);
    function GetDiagram: TELDBDiagram;
  public
    function ItemAtPos(AX, AY: Integer): TELDBDiagramLink;
    property Diagram: TELDBDiagram read GetDiagram;
    property Items[Index: Integer]: TELDBDiagramLink read GetItem write SetItem; default;
  end;

  TELDBLinkDrawInfo = class(TELStdLinkDrawInfo)
  public
    BeginType: TELDBLinkPointType;
    EndType: TELDBLinkPointType;
  end;

  TELDBDiagram = class(TELCustomDiagram)
  private
    FOneBitmap: TBitmap;
    FInfinityBitmap: TBitmap;
    function GetItems: TELDBDiagramItems;
    procedure SetItems(const Value: TELDBDiagramItems);
    function GetLinks: TELDBDiagramLinks;
    procedure SetLinks(const Value: TELDBDiagramLinks);
  protected
    function GetItemClass: TELDiagramItemClass; override;
    function GetLinkClass: TELDiagramLinkClass; override;
    function CreateLinkDrawInfo(ALink: TELDiagramLink): TELLinkDrawInfo; override;
    function IsEqualDrawInfos(ADrawInfo1, ADrawInfo2: TELLinkDrawInfo): Boolean; override;
    function GetLinkDrawInfoClass: TELLinkDrawInfoClass; override;
    procedure PaintLink(ADrawInfo: TELLinkDrawInfo; AClear: Boolean); override;
    function CreateItems: TELDiagramItems; override;
    function CreateLinks: TELDiagramLinks; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property SelectedItem;
    property SelectedLink;
    property HScrollPos;
    property VScrollPos;
  published
    property ScrollBars;
    property DiagramWidth;
    property DiagramHeight;
    property Links: TELDBDiagramLinks read GetLinks write SetLinks;
    property Items: TELDBDiagramItems read GetItems write SetItems;
    property ThumbTrack;
    property OnChange;
    property OnChangeSelection;
    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
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

{$R ELDgrm.res}

procedure Register;
begin
  RegisterComponents(SELComponentPage, [TELDiagram, TELDBDiagram]);
end;

const
  RectSize = 14;

{ TELCustomDiagram }

constructor TELCustomDiagram.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := ControlStyle - [csSetCaption, csAcceptsControls, csReplicatable];
  Height := 89;
  Width := 185;
  BevelOuter := bvNone;
  BorderStyle := bsSingle;
  TabStop := True;
  FDiagramWidth := 1000;
  FDiagramHeight := 1000;
  FLinks := CreateLinks;
  FItems := CreateItems;
  FScrollBars := ssBoth;
  UseDockManager := False;
end;

procedure TELCustomDiagram.CreateHandle;
begin
  inherited;
  UpdateScrollBars;
end;

function TELCustomDiagram.CreateItems: TELDiagramItems;
begin
  Result := TELDiagramItems.Create(Self);
end;

function TELCustomDiagram.CreateLinks: TELDiagramLinks;
begin
  Result := TELDiagramLinks.Create(Self);
end;

procedure TELCustomDiagram.CreateParams(var Params: TCreateParams);
const
  LScrollBar: array[TScrollStyle] of DWORD = (0, WS_HSCROLL, WS_VSCROLL,
    WS_HSCROLL or WS_VSCROLL);
begin
  inherited;
  with Params do
  begin
    WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW);
    Style := Style or LScrollBar[ScrollBars] or WS_CLIPCHILDREN;
  end;
end;

destructor TELCustomDiagram.Destroy;
begin
  SelectedItem := nil;
  SelectedLink := nil;
  FItems.Free;
  FItems := nil;
  FLinks.Free;
  FLinks := nil;
  FreeLinkDInfs(FLinkDInfs);
  inherited;
end;

function TELCustomDiagram.GetItemClass: TELDiagramItemClass;
begin
  Result := TELDiagramItem;
end;

function TELCustomDiagram.GetLinkClass: TELDiagramLinkClass;
begin
  Result := TELDiagramLink;
end;

procedure TELCustomDiagram.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  SelectedLink := Links.ItemAtPos(X, Y);
  SelectedItem := nil;
  if CanFocus then SetFocus;
end;

procedure TELCustomDiagram.Paint;
var
  LI: Integer;
  LDrawInfo: TELLinkDrawInfo;
  LNewLinkDInfs: TList;
  LClearDInfs: TList; 
  LDrawInfoRec: PELLinkDrawInfoRec;
begin
  if not (dsRefreshingLinks in State) then
  begin
    inherited;
    if (FLinkDInfs <> nil) and not (dsLinksChanged in State) then
    begin
      for LI := 0 to FLinkDInfs.Count - 1 do
        PaintLink(PELLinkDrawInfoRec(FLinkDInfs[LI]).DrawInfo, False);
      Exit;
    end;
  end;

  LNewLinkDInfs := TList.Create;
  try

    { Create new list }
    for LI := 0 to Links.Count - 1 do
    begin
      if not (dsErasingLinks in State) then
        LDrawInfo := CreateLinkDrawInfo(Links[LI])
      else
        LDrawInfo := nil;
      if LDrawInfo <> nil then
      begin
        New(LDrawInfoRec);
        LDrawInfoRec.Link := Links[LI];
        LDrawInfoRec.DrawInfo := LDrawInfo;
        if Links[LI].FDInfIndex <> -1 then
          LDrawInfoRec.OldDrawInfo := PELLinkDrawInfoRec(FLinkDInfs[Links[LI].FDInfIndex]).DrawInfo
        else
          LDrawInfoRec.OldDrawInfo := nil;
        Links[LI].FDInfIndex := LNewLinkDInfs.Add(LDrawInfoRec);
      end
      else
        Links[LI].FDInfIndex := -1;
    end;

    LClearDInfs := TList.Create;
    try

      { Create clear list and set to nil PELDiagramLinkDrawInfoRec^.OldDrawInfo field }
      if FLinkDInfs <> nil then
        for LI := 0 to FLinkDInfs.Count - 1 do
          if (PELLinkDrawInfoRec(FLinkDInfs[LI]).Link = nil) or
            (PELLinkDrawInfoRec(FLinkDInfs[LI]).Link.FDInfIndex = -1) then
            LClearDInfs.Add(PELLinkDrawInfoRec(FLinkDInfs[LI]).DrawInfo);
      for LI := 0 to LNewLinkDInfs.Count - 1 do
        with PELLinkDrawInfoRec(LNewLinkDInfs[LI])^ do
        begin
          if (OldDrawInfo <> nil) and not IsEqualDrawInfos(DrawInfo, OldDrawInfo) then
            LClearDInfs.Add(OldDrawInfo);
          OldDrawInfo := nil;
        end;

      { Clear Links }
      if dsRefreshingLinks in State then
        for LI := 0 to LClearDInfs.Count - 1 do
          PaintLink(LClearDInfs[LI], True);

      { Paint links }
      for LI := 0 to LNewLinkDInfs.Count - 1 do
        PaintLink(PELLinkDrawInfoRec(LNewLinkDInfs[LI]).DrawInfo, False);

    finally
      LClearDInfs.Free;
    end;

    { Free Old list }
    FreeLinkDInfs(FLinkDInfs);
    FLinkDInfs := nil;

  except
    FreeLinkDInfs(LNewLinkDInfs);
    raise;
  end;
  FLinkDInfs := LNewLinkDInfs;
  Exclude(FState, dsLinksChanged);
end;

procedure TELCustomDiagram.SetSelectedItem(const Value: TELDiagramItem);
var
  LInChanging: Boolean;
begin
  if FSelectedItem <> Value then
  begin
    if (Value <> nil) and not Value.Visible then
      raise EELDiagram.Create('Can not select invisible item');
    LInChanging := dsChangingSelection in FState;
    if not LInChanging then Include(FState, dsChangingSelection);
    try
      SelectedLink := nil;
    finally
      if not LInChanging then Exclude(FState, dsChangingSelection);
    end;
    if FSelectedItem <> nil then FSelectedItem.Select(False);
    FSelectedItem := Value;
    if FSelectedItem <> nil then
    begin
      FSelectedItem.Select(True);
      if IsActiveControl then FSelectedItem.Focus;
    end
    else
      if not (csDesigning in ComponentState) and IsActiveControl
        and HandleAllocated and CanFocus then
        Windows.SetFocus(Handle);
    if not (dsChangingSelection in FState) then ChangeSelection;
  end;
end;

procedure TELCustomDiagram.SetSelectedLink(const Value: TELDiagramLink);
var
  LInChanging: Boolean;
begin
  if FSelectedLink <> Value then
  begin
    if (Value <> nil) and not Value.Visible then
      raise EELDiagram.Create('Can not select invisible link');
    LInChanging := dsChangingSelection in FState;
    if not LInChanging then Include(FState, dsChangingSelection);
    try
      SelectedItem := nil;
    finally
      if not LInChanging then Exclude(FState, dsChangingSelection);
    end;
    FSelectedLink := Value;
    FLinks.Refresh;
    if not (dsChangingSelection in FState) then ChangeSelection;
  end;
end;

procedure TELCustomDiagram.SetDiagramHeight(const Value: Integer);
begin
  if FDiagramHeight <> Value then
  begin
    FDiagramHeight := Value;
    UpdateScrollBars;
    Change;
  end;
end;

procedure TELCustomDiagram.SetDiagramWidth(const Value: Integer);
begin
  if FDiagramWidth <> Value then
  begin
    FDiagramWidth := Value;
    UpdateScrollBars;
    Change;
  end;
end;

procedure TELCustomDiagram.SetItems(const Value: TELDiagramItems);
begin
  FItems.Assign(Value);
end;

procedure TELCustomDiagram.SetLinks(const Value: TELDiagramLinks);
begin
  FLinks.Assign(Value);
end;

procedure TELCustomDiagram.UpdateScrollBars;
var
  LSI: TScrollInfo;
begin
  if HandleAllocated then
  begin
    if ScrollBars in [ssHorizontal, ssBoth] then
    begin
      LSI.cbSize := SizeOf(LSI);
      LSI.fMask := SIF_ALL;
      GetScrollInfo(Self.Handle, SB_HORZ, LSI);
      LSI.nPage := ClientWidth;
      LSI.nMin := 0;
      LSI.nMax := DiagramWidth;
      LSI.nPos := FHScrollPos;
      SetScrollInfo(Self.Handle, SB_HORZ, LSI, True);
    end;
    if ScrollBars in [ssVertical, ssBoth] then
    begin
      LSI.cbSize := SizeOf(LSI);
      LSI.fMask := SIF_ALL;
      GetScrollInfo(Self.Handle, SB_VERT, LSI);
      LSI.nPage := ClientHeight;
      LSI.nMin := 0;
      LSI.nMax := DiagramHeight;
      LSI.nPos := FVScrollPos;
      SetScrollInfo(Self.Handle, SB_VERT, LSI, True);
    end;
  end;
end;

procedure TELCustomDiagram.WMHScroll(var Message: TWMHScroll);
var
  LSI: TScrollInfo;
  LNewPos: Integer;
begin
  LNewPos := HScrollPos;
  with Message do
    case ScrollCode of
      SB_LINELEFT: LNewPos := HScrollPos - 10;
      SB_LINERIGHT: LNewPos := HScrollPos + 10;
      SB_PAGELEFT: LNewPos := HScrollPos - ClientWidth;
      SB_PAGERIGHT: LNewPos := HScrollPos + ClientWidth;
      SB_THUMBPOSITION:
        begin
          LSI.cbSize := SizeOf(LSI);
          LSI.fMask := SIF_ALL;
          GetScrollInfo(Self.Handle, SB_HORZ, LSI);
          LNewPos := LSI.nTrackPos;
        end;
      SB_THUMBTRACK:
        if ThumbTrack then
        begin
          LSI.cbSize := SizeOf(LSI);
          LSI.fMask := SIF_ALL;
          GetScrollInfo(Self.Handle, SB_HORZ, LSI);
          LNewPos := LSI.nTrackPos;
        end;
      SB_RIGHT: LNewPos := DiagramWidth - ClientWidth;
      SB_LEFT: LNewPos := 0;
    end;
  HScrollPos := LNewPos;
  Message.Result := 0;
end;

procedure TELCustomDiagram.WMNCHitTest(var Message: TWMNCHitTest);
begin
  DefaultHandler(Message);
end;

procedure TELCustomDiagram.WMSize(var Message: TWMSize);
begin
  inherited;
  UpdateScrollBars;
end;

procedure TELCustomDiagram.WMVScroll(var Message: TWMVScroll);
var
  LSI: TScrollInfo;
  LNewPos: Integer;
begin
  LNewPos := VScrollPos;
  with Message do
    case ScrollCode of
      SB_LINEUP: LNewPos := VScrollPos - 10;
      SB_LINEDOWN: LNewPos := VScrollPos + 10;
      SB_PAGEUP: LNewPos := VScrollPos - ClientHeight;
      SB_PAGEDOWN: LNewPos := VScrollPos + ClientHeight;
      SB_THUMBPOSITION:
        begin
          LSI.cbSize := SizeOf(LSI);
          LSI.fMask := SIF_ALL;
          GetScrollInfo(Self.Handle, SB_VERT, LSI);
          LNewPos := LSI.nTrackPos;
        end;
      SB_THUMBTRACK:
        if ThumbTrack then
        begin
          LSI.cbSize := SizeOf(LSI);
          LSI.fMask := SIF_ALL;
          GetScrollInfo(Self.Handle, SB_VERT, LSI);
          LNewPos := LSI.nTrackPos;
        end;
      SB_BOTTOM: LNewPos := DiagramHeight - ClientHeight;
      SB_TOP: LNewPos := 0;
    end;
  VScrollPos := LNewPos;
  Message.Result := 0;
end;

procedure TELCustomDiagram.KeyDown(var Key: Word; Shift: TShiftState);
var
  LIndex, LI: Integer;
  LItem: TELDiagramItem;
begin
  inherited;
  if Key <> 0 then
    case Key of
      VK_TAB:
        begin
          LItem := nil;
          if SelectedItem <> nil then LIndex := SelectedItem.Index else LIndex := -1;
          if LIndex = -1 then
          begin
            for LI := 0 to Items.Count - 1 do
              if Items[LI].Visible then
              begin
                LItem := Items[LI];
                Break;
              end;
          end
          else if ssShift in Shift then
          begin
            for LI := LIndex - 1 downto 0 do
              if Items[LI].Visible then
              begin
                LItem := Items[LI];
                Break;
              end;
            if LItem = nil then
              for LI := Items.Count - 1 downto LIndex do // Include Items[LIndex] item, if no others found
                if Items[LI].Visible then
                begin
                  LItem := Items[LI];
                  Break;
                end;
          end
          else
          begin
            for LI := LIndex + 1 to Items.Count - 1 do
              if Items[LI].Visible then
              begin
                LItem := Items[LI];
                Break;
              end;
            if LItem = nil then
              for LI := 0 to LIndex do // Include Items[LIndex] item, if no others found
                if Items[LI].Visible then
                begin
                  LItem := Items[LI];
                  Break;
                end;
          end;
          SelectedItem := LItem;
          if LItem <> nil then LItem.MakeVisible;
        end;
    end;
end;

procedure TELCustomDiagram.WMGetDlgCode(var Msg: TWMGetDlgCode);
begin
  inherited;
  Msg.Result := Msg.Result or DLGC_WANTTAB;
end;

function TELCustomDiagram.CreateLinkDrawInfo(ALink: TELDiagramLink): TELLinkDrawInfo;
var
  LdX: Integer;
begin
  if (ALink <> nil) and ALink.CanBeShown then
  begin
    Result := GetLinkDrawInfoClass.Create;
    with Result as TELStdLinkDrawInfo do
    begin
      LeftToRight := ((2 * ALink.BeginItem.Left + ALink.BeginItem.Width) div 2) <
        ((2 * ALink.EndItem.Left + ALink.EndItem.Width) div 2);
      BeginP := Point(ALink.BeginItem.Left + ALink.BeginItem.Width * Ord(LeftToRight),
        ALink.BeginItem.Top + GetSystemMetrics(SM_CYBORDER) + GetSystemMetrics(SM_CYSMCAPTION) div 2);
      EndP := Point(ALink.EndItem.Left + ALink.EndItem.Width * Ord(not LeftToRight),
        ALink.EndItem.Top + GetSystemMetrics(SM_CYBORDER) + GetSystemMetrics(SM_CYSMCAPTION) div 2);
      LdX := RectSize * (2 * Ord(LeftToRight) - 1);
      LineBegin := Point(BeginP.X + LdX, BeginP.Y);
      LineEnd := Point(EndP.X - LdX, EndP.Y);
      Color := ALink.Color;
      Selected := (SelectedLink = ALink);
    end;
  end
  else
    Result := nil;
end;

function TELCustomDiagram.IsEqualDrawInfos(ADrawInfo1, ADrawInfo2: TELLinkDrawInfo): Boolean;
var
  LDI1, LDI2: TELStdLinkDrawInfo;
begin
  LDI1 := ADrawInfo1 as TELStdLinkDrawInfo;
  LDI2 := ADrawInfo2 as TELStdLinkDrawInfo;
  Result := (LDI1.BeginP.X = LDI2.BeginP.X) and
    (LDI1.BeginP.Y = LDI2.BeginP.Y) and
    (LDI1.EndP.X = LDI2.EndP.X) and
    (LDI1.EndP.Y = LDI2.EndP.Y) and
    (LDI1.LeftToRight = LDI2.LeftToRight) and
    (LDI1.Color = LDI2.Color) and
    (LDI1.Selected = LDI2.Selected);
end;

procedure TELCustomDiagram.PaintLink(ADrawInfo: TELLinkDrawInfo; AClear: Boolean);
var
  LXOffset, LYOffset: Integer;
  LDI: TELStdLinkDrawInfo;
begin
  LDI := ADrawInfo as TELStdLinkDrawInfo;

  if AClear then
  begin
    Canvas.Pen.Color := Color;
    Canvas.Brush.Color := Color;
  end
  else
  begin
    Canvas.Pen.Color := LDI.Color;
    Canvas.Brush.Color := LDI.Color;
  end;

  LXOffset := -HScrollPos;
  LYOffset := -VScrollPos;

  if LDI.Selected then
    Canvas.Pen.Width := 2
  else
    Canvas.Pen.Width := 1;

  Canvas.Polyline([
    Point(
      LDI.LineBegin.X + LXOffset,
      LDI.LineBegin.Y + LYOffset),
    Point(
      LDI.LineEnd.X + LXOffset,
      LDI.LineEnd.Y + LYOffset)
  ]);

  Canvas.Pen.Width := 1;

  Canvas.FillRect(Rect(
    LDI.BeginP.X + LXOffset,
    LDI.BeginP.Y + LYOffset - 1,
    LDI.LineBegin.X + LXOffset,
    LDI.BeginP.Y + LYOffset + 2
    ));

  Canvas.FillRect(Rect(
    LDI.EndP.X + LXOffset,
    LDI.EndP.Y + LYOffset - 1,
    LDI.LineEnd.X + LXOffset,
    LDI.EndP.Y + LYOffset + 2
    ));
end;

function TELCustomDiagram.IsOnLink(ADrawInfo: TELLinkDrawInfo; AX, AY: Integer): Boolean;

const
  LR = 3;

var
  LXMin, LXMax, LYMin, LYMax: Integer;
  LA, LB, LA_2, LB_2, LC_2: Double;
  LP, LP1, LP2: TPoint;
  LDI: TELStdLinkDrawInfo;

begin
  LDI := ADrawInfo as TELStdLinkDrawInfo;

  LP := Point(AX, AY);
  LP1 := LDI.LineBegin;
  Dec(LP1.X, FHScrollPos);
  Dec(LP1.Y, FVScrollPos);
  LP2 := LDI.LineEnd;
  Dec(LP2.X, FHScrollPos);
  Dec(LP2.Y, FVScrollPos);

  { Calc Min and Max }
  if LP1.X < LP2.X then
  begin
    LXMin := LP1.X;
    LXMax := LP2.X;
  end
  else
  begin
    LXMin := LP2.X;
    LXMax := LP1.X;
  end;
  if LP1.Y < LP2.Y then
  begin
    LYMin := LP1.Y;
    LYMax := LP2.Y;
  end
  else
  begin
    LYMin := LP2.Y;
    LYMax := LP1.Y;
  end;

  { Check }
  Result := (LP.Y - LR <= LYMax) and (LP.Y + LR >= LYMin) and
    (LP.X - LR <= LXMax) and (LP.X + LR >= LXMin);
  if Result and not ((LXMin = LXMax) or (LYMin = LYMax)) then
  begin
    LA := (LP1.Y - LP2.Y) / (LP1.X - LP2.X);
    LB := LP1.Y - LA * LP1.X;

    LA_2 := 1 + LA * LA;
    LB_2 := 2 * LA * LB - 2 * LP.X - 2 * LA * LP.Y;
    LC_2 := LP.X * LP.X + LB * LB - 2 * LB * LP.Y + LP.Y * LP.Y - LR * LR;

    if (LB_2 * LB_2 - 4 * LA_2 * LC_2) < 0 then Result := False;
  end;
end;

function TELCustomDiagram.IsActiveControl: Boolean;
var
  LH: Hwnd;
  LForm: TCustomForm;
begin
  Result := False;
  LForm := GetParentForm(Self);
  if LForm <> nil then
  begin
    if (LForm.ActiveControl = Self) then
      Result := True
  end
  else if HandleAllocated then
  begin
    LH := GetFocus;
    while IsWindow(LH) and (Result = False) do
    begin
      if LH = Handle then
        Result := True
      else
        LH := GetParent(LH);
    end;
  end;
end;

procedure TELCustomDiagram.WMSetFocus(var Message: TWMSetFocus);
begin
  if SelectedItem <> nil then
    SelectedItem.Focus
  else
    inherited;
end;

procedure TELCustomDiagram.SetHScrollPos(const Value: Integer);
begin
  ScrollBy(Value - FHScrollPos, 0);
end;

procedure TELCustomDiagram.SetVScrollPos(const Value: Integer);
begin
  ScrollBy(0, Value - FVScrollPos);
end;

procedure TELCustomDiagram.FreeLinkDInfs(AInfs: TList);
var
  LI: Integer;
  LDrawInfoRec: PELLinkDrawInfoRec;
begin
  if AInfs <> nil then
  begin
    for LI := 0 to AInfs.Count - 1 do
    begin
      LDrawInfoRec := PELLinkDrawInfoRec(AInfs[LI]);
      if LDrawInfoRec <> nil then
      begin
        if LDrawInfoRec.DrawInfo <> nil then LDrawInfoRec.DrawInfo.Free;
        Dispose(LDrawInfoRec);
      end;
    end;
    AInfs.Free;
  end;
end;

procedure TELCustomDiagram.ScrollBy(ADeltaX, ADeltaY: Integer);
var
  LNewPos, LHDifference, LVDifference: Integer;
begin
  LNewPos := FHScrollPos + ADeltaX;
  if LNewPos < 0 then LNewPos := 0;
  if LNewPos > DiagramWidth - ClientWidth then LNewPos := DiagramWidth - ClientWidth;
  LHDifference := FHScrollPos - LNewPos;

  LNewPos := FVScrollPos + ADeltaY;
  if LNewPos < 0 then LNewPos := 0;
  if LNewPos > DiagramHeight - ClientHeight then LNewPos := DiagramHeight - ClientHeight;
  LVDifference := FVScrollPos - LNewPos;

  if (LHDifference <> 0) or (LVDifference <> 0) then
  begin
    Dec(FHScrollPos, LHDifference);
    Dec(FVScrollPos, LVDifference);
    inherited ScrollBy(LHDifference, LVDifference);
    UpdateScrollBars;
  end;
end;

procedure TELCustomDiagram.ChangeSelection;
begin
  if Assigned(OnChangeSelection) then OnChangeSelection(Self);
end;

procedure TELCustomDiagram.Change;
begin
  if Assigned(OnChange) then OnChange(Self);
end;

procedure TELCustomDiagram.SetScrollBars(const Value: TScrollStyle);
begin
  FScrollBars := Value;
  RecreateWnd;
end;

procedure TELCustomDiagram.PaintItem(APanel: TELDiagramItemPanel);
var
  LRect: TRect;
begin
  APanel.Canvas.Brush.Color := APanel.Item.Color;
  APanel.Canvas.FillRect(ClientRect);
  if APanel.Focused then
  begin
    LRect := APanel.ClientRect;
    InflateRect(LRect, -2, -2);
    APanel.Canvas.DrawFocusRect(LRect);
  end;
end;

procedure TELCustomDiagram.EraseLinks;
begin
  Include(FState, dsErasingLinks);
  try
    Links.Refresh;
  finally
    Exclude(FState, dsErasingLinks);
  end;
end;

function TELCustomDiagram.GetLinkDrawInfoClass: TELLinkDrawInfoClass;
begin
  Result := TELStdLinkDrawInfo;
end;

{ TELDiagramLinks }

constructor TELDiagramLinks.Create(ADiagram: TELCustomDiagram);
begin
  inherited Create(ADiagram.GetLinkClass);
  FDiagram := ADiagram;
end;

function TELDiagramLinks.GetItem(Index: Integer): TELDiagramLink;
begin
  Result := TELDiagramLink(inherited Items[Index]);
end;

function TELDiagramLinks.GetOwner: TPersistent;
begin
  Result := FDiagram;
end;

function TELDiagramLinks.ItemAtPos(AX, AY: Integer): TELDiagramLink;
var
  LI: Integer;
begin
  Result := nil;
  for LI := 0 to Count - 1 do
    if (Items[LI].FDInfIndex <> -1) and
      Diagram.IsOnLink(PELLinkDrawInfoRec(Diagram.FLinkDInfs[Items[LI].FDInfIndex]).DrawInfo, AX, AY) then
    begin
      Result := Items[LI];
      Break;
    end;
end;

{!!!!procedure TELDiagramLinks.Notify(Item: TCollectionItem;
  Action: TCollectionNotification);
begin
  inherited;
  if Action in [cnExtracting, cnDeleting] then
  begin
    if Item = FDiagram.SelectedLink then FDiagram.SelectedLink := nil;
    if TELDiagramLink(Item).FDInfIndex <> -1 then
    begin
      PELLinkDrawInfoRec(FDiagram.FLinkDInfs[TELDiagramLink(Item).FDInfIndex]).Link := nil;
      TELDiagramLink(Item).FDInfIndex := -1;
    end;
  end;
  Diagram.Change;
end;}

procedure TELDiagramLinks.Refresh;
begin
  if FDiagram.HandleAllocated then
  begin
    Include(FDiagram.FState, dsRefreshingLinks);
    try
      FDiagram.Repaint;
    finally
      Exclude(FDiagram.FState, dsRefreshingLinks);
    end;
  end
  else
    Include(FDiagram.FState, dsLinksChanged);
end;

procedure TELDiagramLinks.SetItem(Index: Integer; const Value: TELDiagramLink);
begin
  inherited Items[Index] := Value;
end;

procedure TELDiagramLinks.Update(Item: TCollectionItem);
begin
  Refresh;
end;

{ TELDiagramLink }

procedure TELDiagramLink.Assign(Source: TPersistent);
begin
  if Source is TELDiagramLink then
  begin
    DoAssign(Source);
    TELDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end
  else
    inherited;
end;

procedure TELDiagramLink.DoConnectItems;
begin
  if BeginItemName <> '' then
    FBeginItem := TELDiagramLinks(Collection).Diagram.Items.Find(BeginItemName)
  else
    FBeginItem := nil;
  if EndItemName <> '' then
    FEndItem := TELDiagramLinks(Collection).Diagram.Items.Find(EndItemName)
  else
    FEndItem := nil;
end;

constructor TELDiagramLink.Create(Collection: TCollection);
begin
  inherited;
  FColor := clWindowText;
  FDInfIndex := -1;
  FVisible := True;
end;

function TELDiagramLink.GetDisplayName: string;
begin
  if (FBeginItem <> nil) or (FEndItem <> nil) then
    Result := Format('{%s}-{%s}', [FBeginItemName, FEndItemName])
  else
    Result := inherited GetDisplayName;
end;

procedure TELDiagramLink.SetBeginItemName(const Value: string);
begin
  if FBeginItemName <> Value then
  begin
    FBeginItemName := Value;
    DoConnectItems;
    TELDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramLink.SetColor(const Value: TColor);
begin
  if FColor <> Value then
  begin
    FColor := Value;
    TELDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramLink.SetEndItemName(const Value: string);
begin
  if FEndItemName <> Value then
  begin
    FEndItemName := Value;
    DoConnectItems;
    TELDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramLink.ConnectItems;
begin
  DoConnectItems;
  Changed(False);
end;

function TELDiagramLink.CanBeShown: Boolean;
begin
  Result := (BeginItem <> nil) and (BeginItem.Panel <> nil) and
    (EndItem <> nil) and (EndItem.Panel <> nil) and
    BeginItem.Visible and EndItem.Visible and Visible;
end;

procedure TELDiagramLink.SetVisible(const Value: Boolean);
begin
  if FVisible <> Value then
  begin
    FVisible := Value;
    TELDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

function TELDiagramLink.GetSelected: Boolean;
begin
  Result := TELDiagramLinks(Collection).Diagram.SelectedLink = Self;
end;

procedure TELDiagramLink.SetSelected(const Value: Boolean);
begin
  if Value then
    TELDiagramLinks(Collection).Diagram.SelectedLink := Self
  else if TELDiagramLinks(Collection).Diagram.SelectedLink = Self then
    TELDiagramLinks(Collection).Diagram.SelectedLink := nil;
end;

procedure TELDiagramLink.DoAssign(ASource: TPersistent);
begin
  FEndItemName := TELDiagramLink(ASource).FEndItemName;
  FBeginItemName := TELDiagramLink(ASource).FBeginItemName;
  DoConnectItems;
  FColor := TELDiagramLink(ASource).FColor;
  FVisible := TELDiagramLink(ASource).FVisible;
end;

destructor TELDiagramLink.Destroy;
begin
{Added!!!}
  if TELDiagramLinks(Collection).Diagram.SelectedLink = Self then
    TELDiagramLinks(Collection).Diagram.SelectedLink := nil;
  if FDInfIndex <> -1 then
  begin
    PELLinkDrawInfoRec(TELDiagramLinks(Collection).Diagram.FLinkDInfs[FDInfIndex]).Link := nil;
    FDInfIndex := -1;
  end;
  inherited;
end;

{ TELDiagramItem }

procedure TELDiagramItem.Assign(Source: TPersistent);
begin
  if Source is TELDiagramItem then
  begin
    DoAssign(Source);
    ForceUpdate;
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end
  else
    inherited;
end;

constructor TELDiagramItem.Create(Collection: TCollection);
begin
  FWidth := 89;
  FHeight := 89;
  FColor := clBtnFace;
  FVisible := True;
  inherited;
end;

procedure TELDiagramItem.CreatePanel;
begin
  if FPanel = nil then
  begin
    Include(FState, isCreatingPanel);
    try
      FPanel := GetPanelClass.Create(TELDiagramItems(Collection).Diagram, Self);
      FPanel.Parent := TELDiagramItems(Collection).Diagram;
      ForceUpdate;
    finally
      Exclude(FState, isCreatingPanel);
    end;
  end;
end;

destructor TELDiagramItem.Destroy;
begin
  Name := '';
  if TELDiagramItems(Collection).Diagram.SelectedItem = Self then
    TELDiagramItems(Collection).Diagram.SelectedItem := nil;
  FreePanel;
  inherited;
end;

procedure TELDiagramItem.DoAssign(ASource: TPersistent);
begin
  FLeft := TELDiagramItem(ASource).Left;
  FTop := TELDiagramItem(ASource).Top;
  FWidth := TELDiagramItem(ASource).Width;
  FHeight := TELDiagramItem(ASource).Height;
  FCaption := TELDiagramItem(ASource).Caption;
  FColor := TELDiagramItem(ASource).Color;
  FVisible := TELDiagramItem(ASource).Visible;
end;

procedure TELDiagramItem.Focus;
begin
  if not (csDesigning in TELDiagramItems(Collection).Diagram.ComponentState) and
    (Panel <> nil) and Panel.HandleAllocated and Panel.CanFocus then
    Windows.SetFocus(Panel.Handle);
end;

procedure TELDiagramItem.FreePanel;
begin
  if FPanel <> nil then
  begin
    FPanel.Free;
    FPanel := nil;
  end;
end;

function TELDiagramItem.GetDisplayName: string;
begin
  if Name <> '' then
    Result := Name
  else
    Result := inherited GetDisplayName;
end;

function TELDiagramItem.GetPanelClass: TELDiagramItemPanelClass;
begin
  Result := TELDiagramItemPanel;
end;

function TELDiagramItem.GetSelected: Boolean;
begin
  Result := TELDiagramItems(Collection).Diagram.SelectedItem = Self;
end;

procedure TELDiagramItem.MakeVisible;
var
  LDiagram: TELCustomDiagram;
  LHScrollPos, LVScrollPos: Integer;
begin
  LDiagram := TELDiagramItems(Collection).Diagram;
  LHScrollPos := LDiagram.HScrollPos;
  LVScrollPos := LDiagram.VScrollPos;
  if Left + Width > LDiagram.HScrollPos + LDiagram.ClientWidth then
    LHScrollPos := Left + Width - LDiagram.ClientWidth;
  if Top + Height > LDiagram.VScrollPos + LDiagram.ClientHeight then
    LVScrollPos := Top + Height - LDiagram.ClientHeight;
  if Left < LDiagram.HScrollPos then
    LHScrollPos := Left;
  if Top < LDiagram.VScrollPos then
    LVScrollPos := Top;
  LDiagram.ScrollBy(LHScrollPos - LDiagram.HScrollPos, LVScrollPos - LDiagram.VScrollPos);
end;

procedure TELDiagramItem.Select(ASelect: Boolean);
begin
  if ASelect and (Panel <> nil) then
  begin
    Panel.BringToFront;
    Panel.Update;
  end;
end;

procedure TELDiagramItem.SetCaption(const Value: TCaption);
begin
  if FCaption <> Value then
  begin
    FCaption := Value;
    Include(FState, isCaptionChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetColor(const Value: TColor);
begin
  if FColor <> Value then
  begin
    FColor := Value;
    Include(FState, isColorChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetHeight(const Value: Integer);
begin
  if FHeight <> Value then
  begin
    FHeight := Value;
    Include(FState, isBoundsChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetLeft(const Value: Integer);
begin
  if FLeft <> Value then
  begin
    FLeft := Value;
    Include(FState, isBoundsChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetName(const Value: string);
begin
  if Value <> FName then
  begin
    if (Value <> '') and not SameText(Value, FName) then
    begin
      if not IsValidIdent(Value) then
        raise Exception.CreateFmt('Invalid item name: %s', [Value]);
      if TELDiagramItems(Collection).Find(Value) <> nil then
        raise Exception.CreateFmt('Item %s already exist', [Value]);
    end;
    if FName = Caption then Caption := Value;
    FName := Value;
    TELDiagramItems(Collection).ReconnectItems;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetSelected(const Value: Boolean);
begin
  if Value then
    TELDiagramItems(Collection).Diagram.SelectedItem := Self
  else if TELDiagramItems(Collection).Diagram.SelectedItem = Self then
    TELDiagramItems(Collection).Diagram.SelectedItem := nil;
end;

procedure TELDiagramItem.SetTop(const Value: Integer);
begin
  if FTop <> Value then
  begin
    FTop := Value;
    Include(FState, isBoundsChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetVisible(const Value: Boolean);
begin
  if FVisible <> Value then
  begin
    if not Value and (TELDiagramItems(Collection).Diagram.SelectedItem = Self) then
      TELDiagramItems(Collection).Diagram.SelectedItem := nil;
    FVisible := Value;
    Include(FState, isVisibleChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.SetWidth(const Value: Integer);
begin
  if FWidth <> Value then
  begin
    FWidth := Value;
    Include(FState, isBoundsChanged);
    TELDiagramItems(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDiagramItem.UpdateBounds;
var
  LNewLeft, LNewTop, LNewWidth, LNewHeight: Integer;
begin
  if not (isChangingBounds in FState) and not (isCreatingPanel in FState) and
    (FPanel <> nil) then
  begin
    LNewLeft := FPanel.Left + TELDiagramItems(Collection).FDiagram.FHScrollPos;
    LNewTop := FPanel.Top + TELDiagramItems(Collection).FDiagram.FVScrollPos;
    LNewWidth := FPanel.Width;
    LNewHeight := FPanel.Height;
    if (FLeft <> LNewLeft) or (FTop <> LNewTop) or (FWidth <> LNewWidth) or
      (FHeight <> LNewHeight) then
    begin
      FLeft := LNewLeft;
      FTop := LNewTop;
      FWidth := LNewWidth;
      FHeight := LNewHeight;
      Include(FState, isBoundsChanged);
      TELDiagramItems(Collection).Diagram.Change;
      Changed(False);
      UpdateDesigner;
    end;
  end;
end;

procedure TELDiagramItem.UpdateDesigner;
var
  LForm: TCustomForm;
begin
  if csDesigning in TELDiagramItems(Collection).Diagram.ComponentState then
  begin
    LForm := GetParentForm(TELDiagramItems(Collection).Diagram);
    if (LForm <> nil) and (LForm.Designer <> nil) then
      LForm.Designer.Modified;
  end;
end;

procedure TELDiagramItem.Update(var ARefreshLinks: Boolean);
begin
  if Visible then
    CreatePanel
  else
    FreePanel;
  if FPanel <> nil then
  begin
    if isBoundsChanged in FState then
    begin
      Include(FState, isChangingBounds);
      try
        FPanel.SetBounds(FLeft - TELDiagramItems(Collection).FDiagram.HScrollPos,
          FTop - TELDiagramItems(Collection).FDiagram.VScrollPos, FWidth, FHeight);
      finally
        Exclude(FState, isChangingBounds);
      end;
    end;
    if isCaptionChanged in FState then FPanel.Caption := FCaption;
    if isColorChanged in FState then FPanel.Color := FColor;
  end;
  ARefreshLinks := ARefreshLinks or (isBoundsChanged in State) or (isVisibleChanged in State);
end;

procedure TELDiagramItem.ForceUpdate;
begin
  FState := FState + [isBoundsChanged, isCaptionChanged, isColorChanged, isVisibleChanged];
end;

procedure TELDiagramItem.MakeUpdated;
begin
  FState := FState - [isBoundsChanged, isCaptionChanged, isColorChanged, isVisibleChanged];
end;

{ TELDiagramItems }

constructor TELDiagramItems.Create(ADiagram: TELCustomDiagram);
begin
  inherited Create(ADiagram.GetItemClass);
  FDiagram := ADiagram;
end;

function TELDiagramItems.Find(const AName: string): TELDiagramItem;
var
  LI: Integer;
begin
  Result := nil;
  for LI := 0 to Count - 1 do
    if SameText(AName, Items[LI].Name) then
    begin
      Result := Items[LI];
      Break;
    end;
end;

function TELDiagramItems.GetItem(Index: Integer): TELDiagramItem;
begin
  Result := TELDiagramItem(inherited Items[Index]);
end;

function TELDiagramItems.GetOwner: TPersistent;
begin
  Result := FDiagram;
end;

function TELDiagramItems.ItemAtPos(AX, AY: Integer): TELDiagramItem;
var
  LI: Integer;
  LP: TPoint;
begin
  Result := nil;
  LP := Diagram.ClientToScreen(Point(AX, AY));
  for LI := 0 to Count - 1 do
    if (Items[LI].Panel <> nil) and Items[LI].Panel.HandleAllocated and
      PtInRect(Items[LI].Panel.ClientRect, Items[LI].Panel.ScreenToClient(LP)) then
    begin
      Result := Items[LI];
      Break;
    end;
end;

{!!!!!procedure TELDiagramItems.Notify(Item: TCollectionItem;
  Action: TCollectionNotification);
var
  LI: Integer;
begin
  inherited;
  if Action in [cnExtracting, cnDeleting] then
  begin
    TELDiagramItem(Item).FreePanel;
    if Item = FDiagram.SelectedItem then FDiagram.SelectedItem := nil;
  end;
  if TELDiagramItem(Item).Name <> '' then
  begin
    FDiagram.Links.BeginUpdate;
    try
      for LI := 0 to FDiagram.Links.Count - 1 do
        FDiagram.Links[LI].ConnectItems;
    finally
      FDiagram.Links.EndUpdate;
    end;
  end;
  Diagram.Change;
end;  }

procedure TELDiagramItems.ReconnectItems;
var
  LI: Integer;
begin
  FDiagram.Links.BeginUpdate;
  try
    for LI := 0 to FDiagram.Links.Count - 1 do
      FDiagram.Links[LI].ConnectItems;
  finally
    FDiagram.Links.EndUpdate;
  end;
end;

procedure TELDiagramItems.SetItem(Index: Integer; const Value: TELDiagramItem);
begin
  inherited Items[Index] := Value;
end;

procedure TELDiagramItems.SetItemName(Item: TCollectionItem);
var
  LI: Integer;
  LStr: string;
begin
  LI := 1;
  LStr := Format('Item%d', [LI]);
  while Find(LStr) <> nil do
  begin
    Inc(LI);
    LStr := Format('Item%d', [LI]);
  end;
  TELDiagramItem(Item).Name := LStr;
end;

procedure TELDiagramItems.Update(Item: TCollectionItem);
var
  LI: Integer;
  LRefreshLinks, LTmp: Boolean;
begin
  if Item <> nil then
  begin
    LRefreshLinks := False;
    TELDiagramItem(Item).Update(LRefreshLinks);
    TELDiagramItem(Item).MakeUpdated;
  end
  else
  begin
    LRefreshLinks := False;
    for LI := 0 to Count - 1 do
    begin
      LTmp := False;
      Items[LI].Update(LTmp);
      LRefreshLinks := LRefreshLinks or LTmp;
      Items[LI].MakeUpdated;
    end;
  end;
  if LRefreshLinks then FDiagram.Links.Refresh;
end;

{ TELDiagramItemPanel }

constructor TELDiagramItemPanel.Create(AOwner: TComponent; AItem: TELDiagramItem);
begin
  inherited Create(AOwner);
  FItem := AItem;
  ControlStyle := ControlStyle - [csSetCaption, csAcceptsControls];
  BevelOuter := bvNone;
end;

procedure TELDiagramItemPanel.CreateParams(var Params: TCreateParams);
begin
  inherited;
  with Params do
  begin
    Style := Style or WS_CAPTION or WS_THICKFRAME;
    ExStyle := ExStyle or WS_EX_TOOLWINDOW;
  end;
end;

procedure TELDiagramItemPanel.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if Item <> nil then
    TELDiagramItems(Item.Collection).Diagram.KeyDown(Key, Shift);
end;

procedure TELDiagramItemPanel.KeyPress(var Key: Char);
begin
  if Item <> nil then
    TELDiagramItems(Item.Collection).Diagram.KeyPress(Key);
end;

procedure TELDiagramItemPanel.KeyUp(var Key: Word; Shift: TShiftState);
begin
  if Item <> nil then
    TELDiagramItems(Item.Collection).Diagram.KeyUp(Key, Shift);
end;

procedure TELDiagramItemPanel.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Item <> nil then
  begin
    TELDiagramItems(Item.Collection).Diagram.SelectedItem := Item;
    Item.Focus;
  end;
end;

procedure TELDiagramItemPanel.Paint;
begin
  if Item <> nil then
    TELDiagramItems(Item.Collection).Diagram.PaintItem(Self)
end;

procedure TELDiagramItemPanel.WMContextMenu(var Message: TWMContextMenu);
var
  LDiagram: TELCustomDiagram;
begin
  if Item <> nil then
  begin
    LDiagram := TELDiagramItems(Item.Collection).Diagram;
    if LDiagram.HandleAllocated then
    begin
      Message.hWnd := LDiagram.Handle;
      LDiagram.Dispatch(Message);
    end;
  end;
end;

procedure TELDiagramItemPanel.WMGetDlgCode(var Msg: TWMGetDlgCode);
begin
  inherited;
  Msg.Result := Msg.Result or DLGC_WANTTAB;
end;

procedure TELDiagramItemPanel.WMKillFocus(var Message: TWMSetFocus);
begin
  inherited;
  Repaint;
end;

procedure TELDiagramItemPanel.WMMove(var Message: TWMMove);
begin
  inherited;
  if Item <> nil then Item.UpdateBounds;
end;

procedure TELDiagramItemPanel.WMNCHitTest(var Message: TWMNCHitTest);
begin
  DefaultHandler(Message);
end;

procedure TELDiagramItemPanel.WMNCLButtonDown(var Message: TWMNCLButtonDown);
begin
  if Item <> nil then
  begin
    TELDiagramItems(Item.Collection).FDiagram.SelectedItem := Item;
    Item.Focus;
  end;
  inherited;
end;

procedure TELDiagramItemPanel.WMSetFocus(var Message: TWMSetFocus);
begin
  inherited;
  Repaint;
end;

procedure TELDiagramItemPanel.WMSize(var Message: TWMSize);
begin
  inherited;
  if Item <> nil then Item.UpdateBounds;
end;

procedure TELDiagramItemPanel.WndProc(var Message: TMessage);
var
  LForm: TCustomForm;
  LDiagram: TELCustomDiagram;
begin
  if (Message.Msg = WM_SETFOCUS) and (Item <> nil) then
  begin
    LDiagram := TELDiagramItems(Item.Collection).Diagram;
    LForm := GetParentForm(LDiagram);
    if (LForm = nil) or LForm.SetFocusedControl(LDiagram) then
      Dispatch(Message);
    Exit;
  end;
  inherited;
end;

{ TELDiagram }

function TELDiagram.CreateLinkDrawInfo(
  ALink: TELDiagramLink): TELLinkDrawInfo;
begin
  if CustomDrawLinks and not (csDesigning in ComponentState) then
  begin
    Result := nil;
    if Assigned(OnCreateLinkDrawInfo) then OnCreateLinkDrawInfo(Self, ALink, Result);
  end
  else
    Result := inherited CreateLinkDrawInfo(ALink);
end;

function TELDiagram.IsEqualDrawInfos(ADrawInfo1,
  ADrawInfo2: TELLinkDrawInfo): Boolean;
begin
  if CustomDrawLinks and not (csDesigning in ComponentState) then
  begin
    Result := False;
    if Assigned(OnIsEqualDrawInfos) then OnIsEqualDrawInfos(Self, ADrawInfo1, ADrawInfo2, Result);
  end
  else
    Result := inherited IsEqualDrawInfos(ADrawInfo1, ADrawInfo2);
end;

function TELDiagram.IsOnLink(ADrawInfo: TELLinkDrawInfo; AX,
  AY: Integer): Boolean;
begin
  if CustomDrawLinks and not (csDesigning in ComponentState) then
  begin
    Result := False;
    if Assigned(OnIsOnLink) then OnIsOnLink(Self, ADrawInfo, AX, AY, Result);
  end
  else
    Result := inherited IsOnLink(ADrawInfo, AX, AY);
end;

procedure TELDiagram.PaintItem(APanel: TELDiagramItemPanel);
begin
  if CustomDrawItems and not (csDesigning in ComponentState) then
  begin
    if Assigned(OnPaintItem) then OnPaintItem(Self, APanel);
  end
  else
    inherited;
end;

procedure TELDiagram.PaintLink(ADrawInfo: TELLinkDrawInfo; AClear: Boolean);
begin
  if CustomDrawLinks and not (csDesigning in ComponentState) then
  begin
    if Assigned(OnPaintLink) then OnPaintLink(Self, ADrawInfo, AClear);
  end
  else
    inherited;
end;

procedure TELDiagram.SetCustomDrawItems(const Value: Boolean);
var
  LI: Integer;
begin
  if FCustomDrawItems <> Value then
  begin
    FCustomDrawItems := Value;
    for LI := 0 to Items.Count - 1 do
      if Items[LI].Panel <> nil then Items[LI].Panel.Invalidate;
  end;
end;

procedure TELDiagram.SetCustomDrawLinks(const Value: Boolean);
begin
  if FCustomDrawLinks <> Value then
  begin
    if not (csDesigning in ComponentState) then EraseLinks;
    FCustomDrawLinks := Value;
    if not (csDesigning in ComponentState) then Links.Refresh;
  end;
end;

{ TELDBDiagram }

constructor TELDBDiagram.Create(AOwner: TComponent);
begin
  inherited;
  FOneBitmap := TBitmap.Create;
  FOneBitmap.LoadFromResourceName(HInstance, 'ELDGRM_ONE');
  FOneBitmap.Transparent := True;
  FInfinityBitmap := TBitmap.Create;
  FInfinityBitmap.LoadFromResourceName(HInstance, 'ELDGRM_INF');
  FInfinityBitmap.Transparent := True;
end;

function TELDBDiagram.CreateItems: TELDiagramItems;
begin
  Result := TELDBDiagramItems.Create(Self);
end;

function TELDBDiagram.CreateLinkDrawInfo(
  ALink: TELDiagramLink): TELLinkDrawInfo;
var
  LRect: TRect;
  LY, LCYSmCaption, LCYBorder: Integer;
  LDI: TELDBLinkDrawInfo;
begin
  Result := inherited CreateLinkDrawInfo(ALink);
  LDI := Result as TELDBLinkDrawInfo;
  if LDI <> nil then
  begin
    LCYSmCaption := GetSystemMetrics(SM_CYSMCAPTION);
    LCYBorder := GetSystemMetrics(SM_CYBORDER);

    LRect := TELDBDiagramItemPanel(ALink.BeginItem.Panel).ListBox.ItemRect(
      TELDBDiagramLink(ALink).BeginLineIndex
    );

    LY := (LRect.Top + LRect.Bottom) div 2;
    if LY < 0 then
      LY := - LCYBorder * 2 - LCYSmCaption div 2
    else if LY > TELDBDiagramItemPanel(ALink.BeginItem.Panel).ListBox.Height then
      LY := TELDBDiagramItemPanel(ALink.BeginItem.Panel).ListBox.Height;

    LDI.BeginP.Y := ALink.BeginItem.Top + LCYBorder * 2 +
      LCYSmCaption + LY + 4 {???};
    LDI.LineBegin.Y := LDI.BeginP.Y;

    LRect := TELDBDiagramItemPanel(ALink.EndItem.Panel).ListBox.ItemRect(
      TELDBDiagramLink(ALink).EndLineIndex
    );

    LY := (LRect.Top + LRect.Bottom) div 2;
    if LY < 0 then
      LY := - LCYBorder * 2 - LCYSmCaption div 2
    else if LY > TELDBDiagramItemPanel(ALink.EndItem.Panel).ListBox.Height then
      LY := TELDBDiagramItemPanel(ALink.EndItem.Panel).ListBox.Height;

    LDI.EndP.Y := ALink.EndItem.Top + LCYBorder * 2 +
      LCYSmCaption + LY + 4 {???};
    LDI.LineEnd.Y := LDI.EndP.Y;
    LDI.BeginType := TELDBDiagramLink(ALink).BeginPointType;
    LDI.EndType := TELDBDiagramLink(ALink).EndPointType;
  end;
end;

function TELDBDiagram.CreateLinks: TELDiagramLinks;
begin
  Result := TELDBDiagramLinks.Create(Self);
end;

destructor TELDBDiagram.Destroy;
begin
  FOneBitmap.Free;
  FOneBitmap := nil;
  FInfinityBitmap.Free;
  FInfinityBitmap := nil;
  inherited;
end;

function TELDBDiagram.GetItemClass: TELDiagramItemClass;
begin
  Result := TELDBDiagramItem;
end;

function TELDBDiagram.GetItems: TELDBDiagramItems;
begin
  Result := TELDBDiagramItems(inherited Items);
end;

function TELDBDiagram.GetLinkClass: TELDiagramLinkClass;
begin
  Result := TELDBDiagramLink;
end;

function TELDBDiagram.GetLinkDrawInfoClass: TELLinkDrawInfoClass;
begin
  Result := TELDBLinkDrawInfo;
end;

function TELDBDiagram.GetLinks: TELDBDiagramLinks;
begin
  Result := TELDBDiagramLinks(inherited Links);
end;

function TELDBDiagram.IsEqualDrawInfos(ADrawInfo1,
  ADrawInfo2: TELLinkDrawInfo): Boolean;
var
  LDI1, LDI2: TELDBLinkDrawInfo;
begin
  Result := inherited IsEqualDrawInfos(ADrawInfo1, ADrawInfo2);
  if Result then
  begin
    LDI1 := ADrawInfo1 as TELDBLinkDrawInfo;
    LDI2 := ADrawInfo2 as TELDBLinkDrawInfo;
    Result := (LDI1.BeginType = LDI2.BeginType) and (LDI1.EndType = LDI2.EndType);
  end;
end;

procedure TELDBDiagram.PaintLink(ADrawInfo: TELLinkDrawInfo;
  AClear: Boolean);
var
  LBmp: TBitmap;
  LBeginBmpdX, LEndBmpdX: Integer;
  LDI: TELDBLinkDrawInfo;
begin
  inherited;

  LDI := ADrawInfo as TELDBLinkDrawInfo;

  { Paint bitmaps }

  LBeginBmpdX := - RectSize * Ord(not LDI.LeftToRight);

  case LDI.BeginType of
    lptOne: LBmp := FOneBitmap;
    lptInfinity: LBmp := FInfinityBitmap;
  else
    LBmp := nil;
  end;

  if LBmp <> nil then
    if AClear then
      Canvas.FillRect(Rect(
        LDI.BeginP.X - HScrollPos + LBeginBmpdX,
        LDI.BeginP.Y - VScrollPos - 10,
        LDI.BeginP.X - HScrollPos + LBeginBmpdX + LBmp.Width,
        LDI.BeginP.Y - VScrollPos - 10 + LBmp.Height
      ))
    else
      Canvas.Draw(
        LDI.BeginP.X - HScrollPos + LBeginBmpdX,
        LDI.BeginP.Y - VScrollPos - 10,
        LBmp
      );

  LEndBmpdX := - RectSize * Ord(LDI.LeftToRight);

  case LDI.EndType of
    lptOne: LBmp := FOneBitmap;
    lptInfinity: LBmp := FInfinityBitmap;
  else
    LBmp := nil;
  end;

  if LBmp <> nil then
    if AClear then
      Canvas.FillRect(Rect(
        LDI.EndP.X - HScrollPos + LEndBmpdX,
        LDI.EndP.Y - VScrollPos - 10,
        LDI.EndP.X - HScrollPos + LEndBmpdX + LBmp.Width,
        LDI.EndP.Y - VScrollPos - 10 + LBmp.Height
      ))
    else
      Canvas.Draw(
        LDI.EndP.X - HScrollPos + LEndBmpdX,
        LDI.EndP.Y - VScrollPos - 10,
        LBmp
      );
end;

procedure TELDBDiagram.SetItems(const Value: TELDBDiagramItems);
begin
  inherited Items := Value;
end;

procedure TELDBDiagram.SetLinks(const Value: TELDBDiagramLinks);
begin
  inherited Links := Value;
end;

{ TELDBDiagramItem }

constructor TELDBDiagramItem.Create(Collection: TCollection);
begin
  FLineIndex := -1;
  FLines := TStringList.Create;
  TStringList(FLines).OnChange := LinesChange;
  inherited;
  Color := clWindow;
end;

procedure TELDBDiagramItem.DoAssign(ASource: TPersistent);
var
  LTmp: TNotifyEvent;
begin
  inherited;
  LTmp := TStringList(FLines).OnChange;
  TStringList(FLines).OnChange := nil;
  try
    FLines.Assign(TELDBDiagramItem(ASource).Lines);
  finally
    TStringList(FLines).OnChange := LTmp;
  end;
end;

procedure TELDBDiagramItem.Focus;
begin
  if not (csDesigning in TELDBDiagramItems(Collection).Diagram.ComponentState) and
    (Panel <> nil) and (TELDBDiagramItemPanel(Panel).ListBox <> nil) and
    TELDBDiagramItemPanel(Panel).ListBox.HandleAllocated and
    TELDBDiagramItemPanel(Panel).ListBox.CanFocus then
    Windows.SetFocus(TELDBDiagramItemPanel(Panel).ListBox.Handle);
end;

procedure TELDBDiagramItem.ForceUpdate;
begin
  inherited;
  FItemsChanged := True;
end;

function TELDBDiagramItem.GetPanelClass: TELDiagramItemPanelClass;
begin
  Result := TELDBDiagramItemPanel; 
end;

procedure TELDBDiagramItem.LinesChange(Sender: TObject);
begin
  FItemsChanged := True;
  TELDBDiagramItems(Collection).Diagram.Change;
  Changed(False);
end;

procedure TELDBDiagramItem.MakeUpdated;
begin
  inherited;
  FItemsChanged := False;
end;

procedure TELDBDiagramItem.Select(ASelect: Boolean);
var
  LListBoxAvailable: Boolean;
begin
  inherited;
  LListBoxAvailable := (Panel <> nil) and (TELDBDiagramItemPanel(Panel).ListBox <> nil) and
    TELDBDiagramItemPanel(Panel).ListBox.HandleAllocated;
  if ASelect then
  begin
    if TELDBDiagramItemPanel(Panel).ListBox.ItemIndex = -1 then
    begin
      if FOldItemIndex < 0 then FOldItemIndex := 0;
      if FOldItemIndex > Lines.Count - 1 then
        FOldItemIndex := Lines.Count - 1;
      if LListBoxAvailable then
        TELDBDiagramItemPanel(Panel).ListBox.ItemIndex := FOldItemIndex
      else
        FLineIndex := FOldItemIndex;
    end;
  end
  else
  begin
    if LListBoxAvailable then
    begin
      FOldItemIndex := TELDBDiagramItemPanel(Panel).ListBox.ItemIndex;
      TELDBDiagramItemPanel(Panel).ListBox.ItemIndex := -1;
    end
    else
    begin
      FOldItemIndex := FLineIndex;
      FLineIndex := -1;
    end;
  end;
end;

procedure TELDBDiagramItem.SetLines(const Value: TStrings);
begin
  FLines.Assign(Value);
end;

procedure TELDBDiagramItem.Update(var ARefreshLinks: Boolean);
var
  LCount: Integer;
begin
  inherited;
  if (Panel <> nil) and (TELDBDiagramItemPanel(Panel).ListBox <> nil) and
    (isColorChanged in State) then
    TELDBDiagramItemPanel(Panel).ListBox.Color := Color;

  if FItemsChanged then
  begin
    if (Panel <> nil) and (TELDBDiagramItemPanel(Panel).ListBox <> nil) and
      TELDBDiagramItemPanel(Panel).ListBox.HandleAllocated then
    begin
      LCount := TELDBDiagramItemPanel(Panel).ListBox.Items.Count;
      ARefreshLinks := ARefreshLinks or (LCount <> Lines.Count);
      TELDBDiagramItemPanel(Panel).ListBox.Items.Assign(Lines);
    end;
  end;
end;

{ TELDBDiagramItemPanel }

constructor TELDBDiagramItemPanel.Create(AOwner: TComponent;
  AItem: TELDiagramItem);
begin
  inherited;
  FListBox := TELDBDiagramItemListBox.Create(Self);
  FListBox.Align := alClient;
  FListBox.Parent := Self;
end;

{ TELDBDiagramItemListBox }

procedure TELDBDiagramItemListBox.CreateHandle;
begin
  inherited;
  if (Panel <> nil) and (Panel.Item <> nil) then
  begin
    Items.Assign(TELDBDiagramItem(Panel.Item).Lines);
    ItemIndex := TELDBDiagramItem(Panel.Item).FLineIndex;
  end;
end;

procedure TELDBDiagramItemListBox.DestroyWnd;
begin
  if (Panel <> nil) and (Panel.Item <> nil) then
    TELDBDiagramItem(Panel.Item).FLineIndex := ItemIndex;
  inherited;
end;

function TELDBDiagramItemListBox.GetPanel: TELDBDiagramItemPanel;
begin
  Result := TELDBDiagramItemPanel(Owner);
end;

procedure TELDBDiagramItemListBox.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if (Panel <> nil) and (Panel.Item <> nil) then
    TELDBDiagramItems(Panel.Item.Collection).Diagram.KeyDown(Key, Shift);
  if Key <> 0 then inherited;
end;

procedure TELDBDiagramItemListBox.KeyPress(var Key: Char);
begin
  if (Panel <> nil) and (Panel.Item <> nil) then
    TELDBDiagramItems(Panel.Item.Collection).Diagram.KeyPress(Key);
  if Key <> #0 then inherited;
end;

procedure TELDBDiagramItemListBox.KeyUp(var Key: Word; Shift: TShiftState);
begin
  if (Panel <> nil) and (Panel.Item <> nil) then
    TELDBDiagramItems(Panel.Item.Collection).Diagram.KeyUp(Key, Shift);
  if Key <> 0 then inherited;
end;

procedure TELDBDiagramItemListBox.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (Panel <> nil) and (Panel.Item <> nil) then
  begin
    TELDBDiagramItems(Panel.Item.Collection).Diagram.SelectedItem := Panel.Item;
    Panel.Item.Focus;
  end;
end;

procedure TELDBDiagramItemListBox.WMContextMenu(var Message: TWMContextMenu);
var
  LDiagram: TELCustomDiagram;
begin
  if (Panel <> nil) and (Panel.Item <> nil) then
  begin
    LDiagram := TELDBDiagramItems(Panel.Item.Collection).Diagram;
    if LDiagram.HandleAllocated then
    begin
      Message.hWnd := LDiagram.Handle;
      LDiagram.Dispatch(Message);
    end;
  end;
end;

procedure TELDBDiagramItemListBox.WMGetDlgCode(var Msg: TWMGetDlgCode);
begin
  inherited;
  Msg.Result := Msg.Result or DLGC_WANTTAB;
end;

procedure TELDBDiagramItemListBox.WMKeyDown(var Message: TWMKeyDown);
var
  LTopIndex: Integer;
begin
  LTopIndex := TopIndex;
  inherited;
  if (LTopIndex <> TopIndex) and (Panel <> nil) then
    TELDBDiagramItems(Panel.Item.Collection).Diagram.Links.Refresh;
end;

procedure TELDBDiagramItemListBox.WMMouseWheel(var Message: TWMMouseWheel);
var
  LTopIndex: Integer;
begin
  LTopIndex := TopIndex;
  inherited;
  if (LTopIndex <> TopIndex) and (Panel <> nil) then
    TELDBDiagramItems(Panel.Item.Collection).Diagram.Links.Refresh;
end;

procedure TELDBDiagramItemListBox.WMNCHitTest(var Message: TWMNCHitTest);
begin
  DefaultHandler(Message);
end;

procedure TELDBDiagramItemListBox.WMVScroll(var Message: TWMVScroll);
var
  LTopIndex: Integer;
begin
  LTopIndex := TopIndex;
  inherited;
  if (LTopIndex <> TopIndex) and (Panel <> nil) then
    TELDBDiagramItems(Panel.Item.Collection).Diagram.Links.Refresh;
end;

procedure TELDBDiagramItemListBox.WndProc(var Message: TMessage);
var
  LForm: TCustomForm;
  LDiagram: TELCustomDiagram;
begin
  if (Message.Msg = WM_SETFOCUS) and (Panel <> nil) and (Panel.Item <> nil) then
  begin
    LDiagram := TELDBDiagramItems(Panel.Item.Collection).Diagram;
    LForm := GetParentForm(LDiagram);
    if (LForm = nil) or LForm.SetFocusedControl(LDiagram) then
      Dispatch(Message);
    Exit;
  end;
  inherited;
end;

{ TELDBDiagramLink }

function TELDBDiagramLink.CanBeShown: Boolean;
begin
  Result := inherited CanBeShown;
  if Result then
  begin
    Result := (BeginLineIndex >= 0) and
      (BeginLineIndex <= BeginItem.Lines.Count - 1) and
      (EndLineIndex >= 0) and
      (EndLineIndex <= EndItem.Lines.Count - 1);
  end;
end;

constructor TELDBDiagramLink.Create(Collection: TCollection);
begin
  FBeginLineIndex := -1;
  FEndLineIndex := -1;
  inherited;
end;

procedure TELDBDiagramLink.DoAssign(ASource: TPersistent);
begin
  inherited;
  FBeginLineIndex := TELDBDiagramLink(ASource).FBeginLineIndex;
  FEndLineIndex := TELDBDiagramLink(ASource).FEndLineIndex;
end;

function TELDBDiagramLink.GetBeginItem: TELDBDiagramItem;
begin
  Result := TELDBDiagramItem(inherited BeginItem);
end;

function TELDBDiagramLink.GetEndItem: TELDBDiagramItem;
begin
  Result := TELDBDiagramItem(inherited EndItem);
end;

procedure TELDBDiagramLink.SetBeginLineIndex(const Value: Integer);
begin
  if FBeginLineIndex <> Value then
  begin
    FBeginLineIndex := Value;
    TELDBDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDBDiagramLink.SetBeginPointType(
  const Value: TELDBLinkPointType);
begin
  if FBeginPointType <> Value then
  begin
    FBeginPointType := Value;
    TELDBDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDBDiagramLink.SetEndLineIndex(const Value: Integer);
begin
  if FEndLineIndex <> Value then
  begin
    FEndLineIndex := Value;
    TELDBDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

procedure TELDBDiagramLink.SetEndPointType(
  const Value: TELDBLinkPointType);
begin
  if FEndPointType <> Value then
  begin
    FEndPointType := Value;
    TELDBDiagramLinks(Collection).Diagram.Change;
    Changed(False);
  end;
end;

{ TELDBDiagramItems }

function TELDBDiagramItems.Find(const AName: string): TELDBDiagramItem;
begin
  Result := TELDBDiagramItem(inherited Find(AName));
end;

function TELDBDiagramItems.GetDiagram: TELDBDiagram;
begin
  Result := TELDBDiagram(inherited Diagram);
end;

function TELDBDiagramItems.GetItem(Index: Integer): TELDBDiagramItem;
begin
  Result := TELDBDiagramItem(inherited Items[Index]);
end;

function TELDBDiagramItems.ItemAtPos(AX, AY: Integer): TELDBDiagramItem;
begin
  Result := TELDBDiagramItem(inherited ItemAtPos(AX, AY));
end;

procedure TELDBDiagramItems.SetItem(Index: Integer;
  const Value: TELDBDiagramItem);
begin
  inherited Items[Index] := Value;
end;

{ TELDBDiagramLinks }

function TELDBDiagramLinks.GetDiagram: TELDBDiagram;
begin
  Result := TELDBDiagram(inherited Diagram);
end;

function TELDBDiagramLinks.GetItem(Index: Integer): TELDBDiagramLink;
begin
  Result := TELDBDiagramLink(inherited Items[Index]);
end;

function TELDBDiagramLinks.ItemAtPos(AX, AY: Integer): TELDBDiagramLink;
begin
  Result := TELDBDiagramLink(inherited ItemAtPos(AX, AY));
end;

procedure TELDBDiagramLinks.SetItem(Index: Integer;
  const Value: TELDBDiagramLink);
begin
  Items[Index] := Value;
end;

end.
