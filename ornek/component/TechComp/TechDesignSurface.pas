unit TechDesignSurface;


interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Graphics,
  Forms, ExtCtrls, Contnrs;

type
  TTechDesignSurface = class;

  TTechDesignMessage = function(ASender: TControl; var AMsg: TMessage;
    const APt: TPoint): Boolean of object;

  TTechDesignCustomMessenger = class(TObject)
  private
    FContainer: TWinControl;
    FOnDesignMessage: TTechDesignMessage;
  protected
    procedure SetContainer(AValue: TWinControl); virtual;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    function IsDesignMessage(ASender: TControl; var AMessage: TMessage): Boolean; virtual;
    procedure Clear; virtual;
    procedure DesignChildren(AContainer: TWinControl; ADesigning: Boolean);
    procedure DesignComponent(AComponent: TComponent; ADesigning: Boolean); virtual;
    property Container: TWinControl read FContainer write SetContainer;
    property OnDesignMessage: TTechDesignMessage read FOnDesignMessage write FOnDesignMessage;
  end;

  TTechDesignCustomMessengerClass = class of TTechDesignCustomMessenger;

  TTechDesignMessageHook = class(TObject)
  private
    FClient: TWinControl;
    FOldProc: TWndMethod;
    FUser: TTechDesignCustomMessenger;
  protected
    procedure HookProc(var AMessage: TMessage);
    procedure Unhook;
  public
    constructor Create(AUser: TTechDesignCustomMessenger; AClient: TWinControl);
    destructor Destroy; override;
    property Client: TWinControl read FClient;
  end;

  TTechDesignCustomController = class(TObject)
  private
    FSurface: TTechDesignSurface;
  protected
    function GetDragRect: TRect; virtual; abstract;
    function GetShift: TShiftState;
    function KeyDown(AKeyCode: Cardinal): Boolean; virtual; abstract;
    function KeyUp(AKeyCode: Cardinal): Boolean; virtual; abstract;
    function MouseDown(Button: TMouseButton; X, Y: Integer): Boolean; virtual; abstract;
    function MouseMove(X, Y: Integer): Boolean; virtual; abstract;
    function MouseUp(Button: TMouseButton; X, Y: Integer): Boolean; virtual; abstract;
  public
    constructor Create(ASurface: TTechDesignSurface); virtual;
    property DragRect: TRect read GetDragRect;
    property Shift: TShiftState read GetShift;
    property Surface: TTechDesignSurface read FSurface;
  end;

  TTechDesignCustomControllerClass = class of TTechDesignCustomController;

  TTechDesignHandleId = (dhNone, dhLeftTop, dhMiddleTop, dhRightTop, dhLeftMiddle,
    dhRightMiddle, dhLeftBottom, dhMiddleBottom, dhRightBottom);

  TTechDesignCustomSelector = class(TComponent)
  private
    FSurface: TTechDesignSurface;
  protected
    function GetCount: Integer; virtual; abstract;
    function GetSelection(AIndex: Integer): TControl;  virtual; abstract;
    procedure SetSelection(AIndex: Integer; AValue: TControl); virtual; abstract;
  public
    constructor Create(ASurface: TTechDesignSurface); reintroduce; virtual;
    destructor Destroy; override;
    function IsSelected(AValue: TControl): Boolean; virtual; abstract;
    function GetClientControl(AControl: TControl): TControl; virtual; abstract;
    function GetCursor(AX, AY: Integer): TCursor; virtual; abstract;
    function GetHitHandle(AX, AY: Integer): TTechDesignHandleId; virtual; abstract;
    procedure AddToSelection(AValue: TControl); virtual; abstract;
    procedure ClearSelection; virtual; abstract;
    procedure RemoveFromSelection(AValue: TControl); virtual; abstract;
    procedure ToggleSelection(AValue: TControl);
    procedure Update; virtual; abstract;
    property Count: Integer read GetCount;
    property Selection[AIndex: Integer]: TControl read GetSelection write SetSelection;
    property Surface: TTechDesignSurface read FSurface;
  end;

  TTechDesignCustomSelectorClass = class of TTechDesignCustomSelector;

  TTechDesignObjectArray = array of TObject;
  TTechDesignGetAddClassEvent = procedure(Sender: TObject; var ioClass: string) of object;
{
  TTechDesignOwnerDrawGridEvent = procedure(ASender: TObject; ACanvas: TCanvas;
    ARect: TRect) of object;
}

  TTechDesignSurface = class(TComponent)
  private
    FActive: Boolean;
    FAddClass: string;
    FContainer: TWinControl;
    FContainerHook: TTechDesignMessageHook;
    FController: TTechDesignCustomController;
    FControllerClass: TTechDesignCustomControllerClass;
//    FDrawGrid: Boolean;
    FMessenger: TTechDesignCustomMessenger;
    FMessengerClass: TTechDesignCustomMessengerClass;
    FSelector: TTechDesignCustomSelector;
    FSelectorClass: TTechDesignCustomSelectorClass;
    FUpdateOwner: TComponent;
  protected
    FOnChange: TNotifyEvent;
    FOnGetAddClass: TTechDesignGetAddClassEvent;
//    FOnOwnerDrawGrid: TTechDesignOwnerDrawGridEvent;
    FOnSelectionChange: TNotifyEvent;
    function GetAddBounds: TRect;
    function GetCount: Integer;
    function GetSelected: TTechDesignObjectArray;
    function GetSelectedContainer: TWinControl;
    function GetSelection(AIndex: Integer): TControl;
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure NeedContainer;
    procedure NeedController;
    procedure NeedMessenger;
    procedure NeedSelector;
    //procedure PaintContainerBkgnd(ADC: HDC);
    procedure ReaderError(Reader: TReader; const Msg: string; var Handled: Boolean);
    procedure SetActive(AValue: Boolean);
    procedure SetContainer(AValue: TWinControl);
    //procedure SetDrawGrid(const Value: Boolean);
    procedure SetSelection(AIndex: Integer; AValue: TControl);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Clear: TTechDesignSurface;
    function ContainerToSelectedContainer(const APt: TPoint): TPoint;
    function FindControl(AX, AY: Integer): TControl; virtual;
    function GetCursor(AX, AY: Integer): TCursor; virtual;
    function GetHitHandle(AX, AY: Integer): TTechDesignHandleId; virtual;
    function IsDesignMessage(ASender: TControl; var AMsg: TMessage; const APt: TPoint): Boolean;
    function LoadFromFile(const AFileName: string): TTechDesignSurface;
    function LoadFromStream(AStream: TStream): TTechDesignSurface;
    procedure AddComponent;
    procedure Change;
    procedure ClearSelection;
    procedure CopyComponents;
    procedure CutComponents;
    procedure DeleteComponents;
    procedure GetAddClass;
    procedure GrowComponents(AGrowWidth, AGrowHeight: Integer);
    procedure NudgeComponents(ANudgeLeft, ANudgeTop: Integer);
    procedure PasteComponents;
    procedure SaveToFile(const AFileName: string);
    procedure SaveToStream(AStream: TStream);
    procedure Select(AControl: TControl);
    procedure SelectionChange;
    procedure SelectParent;
    procedure SetSelected(const AValue: array of TObject);
    procedure UpdateDesigner; virtual;
    property Active: Boolean read FActive write SetActive;
    property AddClass: string read FAddClass write FAddClass;
    property Controller: TTechDesignCustomController read FController;
    property ControllerClass: TTechDesignCustomControllerClass read FControllerClass write FControllerClass;
    property Count: Integer read GetCount;
    property Messenger: TTechDesignCustomMessenger read FMessenger;
    property MessengerClass: TTechDesignCustomMessengerClass read FMessengerClass write FMessengerClass;
    property Selected: TTechDesignObjectArray read GetSelected;
    property SelectedContainer: TWinControl read GetSelectedContainer;
    property Selection[AIndex: Integer]: TControl read GetSelection write SetSelection;
    property Selector: TTechDesignCustomSelector read FSelector;
    property SelectorClass: TTechDesignCustomSelectorClass read FSelectorClass write FSelectorClass;
  published
    property Container: TWinControl read FContainer write SetContainer;
//    property DrawGrid: Boolean read FDrawGrid write SetDrawGrid default True;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnGetAddClass: TTechDesignGetAddClassEvent read FOnGetAddClass write FOnGetAddClass;
//    property OnOwnerDrawGrid: TTechDesignOwnerDrawGridEvent read FOnOwnerDrawGrid write FOnOwnerDrawGrid;
    property OnSelectionChange: TNotifyEvent read FOnSelectionChange write FOnSelectionChange;
  end;

  TTechDesignScrollBox = class(TScrollBox)
  protected
    procedure AutoScrollInView(AControl: TControl); override;
  end;

  TTechDesignPanel = class(TPanel)
  private
    FSurface: TTechDesignSurface;
    FOnPaint: TNotifyEvent;
    FDrawRules: Boolean;
    function GetActive: Boolean;
    function GetOnChange: TNotifyEvent;
    function GetOnGetAddClass: TTechDesignGetAddClassEvent;
    function GetOnSelectionChange: TNotifyEvent;
    procedure SetActive(const Value: Boolean);
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnGetAddClass(const Value: TTechDesignGetAddClassEvent);
    procedure SetOnSelectionChange(const Value: TNotifyEvent);
  public
    constructor Create(AOwner: TComponent); override;
    procedure Clear;
    procedure LoadFromFile(const AFileName: string);
    procedure LoadFromStream(AStream: TStream);
    procedure Paint; override;
    procedure SaveToFile(const AFileName: string);
    procedure SaveToStream(AStream: TStream);
    procedure SetDrawRules(const Value: Boolean);
    property Active: Boolean read GetActive write SetActive;
    property Canvas;
    property Surface: TTechDesignSurface read FSurface;
  published
    property DrawRules: Boolean read FDrawRules write SetDrawRules default True;
    property OnPaint: TNotifyEvent read FOnPaint write FOnPaint;
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnGetAddClass: TTechDesignGetAddClassEvent read GetOnGetAddClass write SetOnGetAddClass;
    property OnSelectionChange: TNotifyEvent read GetOnSelectionChange write SetOnSelectionChange;
  end;

{$IFDEF UNITVERSIONING}
const
  UnitVersioning: TUnitVersionInfo = (
    RCSfile: '$URL: https://jvcl.svn.sourceforge.net/svnroot/jvcl/tags/JVCL3_32/run/TechDesignSurface.pas $';
    Revision: '$Revision: 11137 $';
    Date: '$Date: 2007-01-05 12:24:49 +0100 (ven., 05 janv. 2007) $';
    LogPath: 'JVCL\run'
  );
{$ENDIF UNITVERSIONING}

implementation

uses
  Clipbrd,
  JvDesignUtils, JvDesignClip, JvDesignImp, JvResources, JvTypes;

//=== { TTechDesignCustomMessenger } ===========================================

constructor TTechDesignCustomMessenger.Create;
begin
  //
end;

destructor TTechDesignCustomMessenger.Destroy;
begin
  //
end;

procedure TTechDesignCustomMessenger.Clear;
begin
  //
end;

procedure TTechDesignCustomMessenger.DesignComponent(AComponent: TComponent; ADesigning: Boolean);
begin
  //
end;

procedure TTechDesignCustomMessenger.DesignChildren(AContainer: TWinControl; ADesigning: Boolean);
var
  I: Integer;
begin
  for I := 0 to AContainer.ControlCount - 1 do
    DesignComponent(AContainer.Controls[I], ADesigning);
end;

procedure TTechDesignCustomMessenger.SetContainer(AValue: TWinControl);
begin
  FContainer := AValue;
end;

function TTechDesignCustomMessenger.IsDesignMessage(ASender: TControl;
  var AMessage: TMessage): Boolean;

  function MousePoint: TPoint;
  begin
    with TWMMouse(AMessage) do
      MousePoint := Point(XPos, YPos);
    Result := DesignClientToParent(Result, ASender, Container);
  end;

begin
  if not Assigned(FOnDesignMessage) then
    Result := False
  else
    case AMessage.Msg of
      WM_MOUSEFIRST..WM_MOUSELAST:
        Result := FOnDesignMessage(ASender, AMessage, MousePoint);
      WM_PAINT, WM_ERASEBKGND:
        Result := FOnDesignMessage(ASender, AMessage, Point(0, 0));
      else
        Result := False;
    end;
end;

//=== { TTechDesignMessageHook } ===============================================

constructor TTechDesignMessageHook.Create(AUser: TTechDesignCustomMessenger;
  AClient: TWinControl);
begin
  FUser := AUser;
  FClient := AClient;
  FOldProc := FClient.WindowProc;
  FClient.WindowProc := HookProc;
end;

destructor TTechDesignMessageHook.Destroy;
begin
  Unhook;
  inherited Destroy;
end;

procedure TTechDesignMessageHook.Unhook;
begin
  FClient.WindowProc := FOldProc;
end;

procedure TTechDesignMessageHook.HookProc(var AMessage: TMessage);
begin
  if not FUser.IsDesignMessage(FClient, AMessage) then
    FOldProc(AMessage);
end;

//=== { TTechDesignCustomController } ==========================================

constructor TTechDesignCustomController.Create(ASurface: TTechDesignSurface);
begin
  FSurface := ASurface;
end;

function TTechDesignCustomController.GetShift: TShiftState;
// obones: For C5/D5 compatibility, we must use a local variable
// as KeyboardStateToShiftState with no parameters was introduced
// in D6/C6 
var
  KeyState: TKeyBoardState;
begin
  GetKeyboardState(KeyState);
  Result := KeyboardStateToShiftState(KeyState);
end;

//=== { TTechDesignCustomSelector } ============================================

constructor TTechDesignCustomSelector.Create(ASurface: TTechDesignSurface);
begin
  inherited Create(nil);
  FSurface := ASurface;
end;

destructor TTechDesignCustomSelector.Destroy;
begin
  inherited Destroy;
end;

procedure TTechDesignCustomSelector.ToggleSelection(AValue: TControl);
begin
  if IsSelected(AValue) then
    RemoveFromSelection(AValue)
  else
    AddToSelection(AValue);
end;

//=== { TTechDesignSurface } ===================================================

constructor TTechDesignSurface.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMessengerClass := TTechDesignDesignerMessenger;
  FControllerClass := TTechDesignController;
  FSelectorClass := TTechDesignSelector;
  //FDrawGrid := True;
end;

destructor TTechDesignSurface.Destroy;
begin
  FContainerHook.Free;
  Messenger.Free;
  Controller.Free;
  Selector.Free;
  inherited Destroy;
end;

procedure TTechDesignSurface.Change;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TTechDesignSurface.SetContainer(AValue: TWinControl);
begin
  FContainer := AValue;
end;

procedure TTechDesignSurface.NeedContainer;
begin
  if (Container = nil) and (Owner is TWinControl) then
    Container := TWinControl(Owner);
  if Container = nil then
    raise EJVCLException.CreateResFmt(@RsEDesignNilFmt, [ClassName, 'Container']);
end;

procedure TTechDesignSurface.NeedController;
begin
  if (Controller = nil) and (ControllerClass <> nil) then
    FController := ControllerClass.Create(Self);
  if Controller = nil then
    raise EJVCLException.CreateResFmt(@RsEDesignNilFmt, [ClassName, 'Controller']);
end;

procedure TTechDesignSurface.NeedMessenger;
begin
  if (Messenger = nil) and (MessengerClass <> nil) then
  begin
    FMessenger := MessengerClass.Create;
    Messenger.OnDesignMessage := IsDesignMessage;
  end;
  if Messenger = nil then
    raise EJVCLException.CreateResFmt(@RsEDesignNilFmt, [ClassName, 'Messenger']);
end;

procedure TTechDesignSurface.NeedSelector;
begin
  if (Selector = nil) and (SelectorClass <> nil) then
    FSelector := SelectorClass.Create(Self);
  if Selector = nil then
    raise EJVCLException.CreateResFmt(@RsEDesignNilFmt, [ClassName, 'Selector']);
end;

procedure TTechDesignSurface.SetActive(AValue: Boolean);

  procedure Activate;
  begin
    NeedContainer;
    NeedController;
    NeedSelector;
    NeedMessenger;
    Messenger.Container := Container;
    FContainerHook := TTechDesignMessageHook.Create(Messenger, Container);
  end;

  procedure Deactivate;
  begin
    FreeAndNil(FContainerHook);
    Selector.ClearSelection;
    FreeAndNil(FMessenger);
  end;

begin
  if FActive <> AValue then
  begin
    if AValue then
      Activate
    else
      Deactivate;
    FActive := AValue;
    SelectionChange;
    if Assigned(Container) then
      Container.Invalidate;
  end;
end;

procedure TTechDesignSurface.UpdateDesigner;
begin
  Selector.Update;
end;

function TTechDesignSurface.GetCount: Integer;
begin
  Result := Selector.Count;
end;

function TTechDesignSurface.GetSelection(AIndex: Integer): TControl;
begin
  Result := Selector.Selection[AIndex];
end;

procedure TTechDesignSurface.SetSelection(AIndex: Integer; AValue: TControl);
begin
  Selector.Selection[AIndex] := AValue;
end;

procedure TTechDesignSurface.ClearSelection;
begin
  Selector.ClearSelection;
end;

procedure TTechDesignSurface.SelectionChange;
begin
  if not (csDestroying in ComponentState) and Assigned(FOnSelectionChange) then
    FOnSelectionChange(Self);
end;

function TTechDesignSurface.GetSelected: TTechDesignObjectArray;
var
  I: Integer;
begin
  SetLength(Result, Count);
  for I := 0 to Count - 1 do
    Result[I] := Selector.Selection[I];
end;

procedure TTechDesignSurface.SetSelected(const AValue: array of TObject);
var
  I: Integer;
begin
  ClearSelection;
  for I := 0 to Length(AValue) - 1 do
    if AValue[I] is TControl then
      Selector.AddToSelection(TControl(AValue[I]));
end;

procedure TTechDesignSurface.Select(AControl: TControl);
begin
  ClearSelection;
  if AControl <> nil then
    Selector.AddToSelection(AControl);
end;

function TTechDesignSurface.FindControl(AX, AY: Integer): TControl;
var
  C, C0: TControl;
  P: TPoint;
begin
  P := Point(AX, AY);
  C := Container.ControlAtPos(P, True, True);
  while (C <> nil) and (C is TWinControl) do
  begin
    Dec(P.X, C.Left);
    Dec(P.Y, C.Top);
    C0 := TWinControl(C).ControlAtPos(P, True, True);
    if (C0 = nil) or (C0.Owner <> C.Owner) then
      Break;
    C := C0;
  end;
  if C = nil then
    C := Container;
  Result := Selector.GetClientControl(C);
end;

function TTechDesignSurface.GetSelectedContainer: TWinControl;
begin
  if Count <> 1 then
    Result := Container
  else
  if (Selection[0] is TWinControl) and
    (csAcceptsControls in Selection[0].ControlStyle) then
    Result := TWinControl(Selection[0])
  else
    Result := Selection[0].Parent;
end;

function TTechDesignSurface.ContainerToSelectedContainer(const APt: TPoint): TPoint;
var
  C: TControl;
begin
  Result := APt;
  C := SelectedContainer;
  while (C <> Container) and (C <> nil) do
  begin
    Dec(Result.X, C.Left);
    Dec(Result.Y, C.Top);
    C := C.Parent;
  end;
end;

function TTechDesignSurface.GetAddBounds: TRect;
begin
  with Result, Controller do
  begin
    TopLeft := ContainerToSelectedContainer(DragRect.TopLeft);
    BottomRight := ContainerToSelectedContainer(DragRect.BottomRight);
  end;
end;

procedure TTechDesignSurface.GetAddClass;
begin
  if Assigned(FOnGetAddClass) then
    FOnGetAddClass(Self, FAddClass);
end;

procedure TTechDesignSurface.AddComponent;
var
  CC: TComponentClass;
  C: TComponent;
  CO: TControl;

  function GetBounds: TRect;
  begin
    Result := GetAddBounds;
    if DesignRectWidth(Result) = 0 then
      Result.Right := Result.Left + CO.Width;
    if DesignRectHeight(Result) = 0 then
      Result.Bottom := Result.Top + CO.Height;
  end;

begin
  CC := TComponentClass(GetClass(AddClass));
  if (CC <> nil) and (SelectedContainer <> nil) then
  begin
    //C := CC.Create(Owner);
    //C.Name := DesignUniqueName(Owner, AddClass);
    C := CC.Create(Container);
    C.Name := DesignUniqueName(Container, AddClass);
    if C is TControl then
    begin
      CO := TControl(C);
      CO.Parent := SelectedContainer;
      CO.BoundsRect := GetBounds;
      Select(CO);
    end;
    Messenger.DesignComponent(C, Active);
    SelectionChange;
    Change;
    AddClass := '';
  end;
end;

procedure TTechDesignSurface.NudgeComponents(ANudgeLeft, ANudgeTop: Integer);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    with Selection[I] do
    begin
      Left := Left + ANudgeLeft;
      Top := Top + ANudgeTop;
    end;
  Change;
end;

procedure TTechDesignSurface.GrowComponents(AGrowWidth, AGrowHeight: Integer);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    with Selection[I] do
    begin
      Width := DesignMax(1, Width + AGrowWidth);
      Height := DesignMax(1, Height + AGrowHeight);
    end;
  Change;
end;

procedure TTechDesignSurface.DeleteComponents;
var
  I: Integer;
begin
  if Count > 0 then
  begin
    for I := 0 to Count - 1 do
      Selection[I].Free;
    ClearSelection;
    SelectionChange;
    Change;
  end;
end;
 {
procedure TTechDesignSurface.CopyComponents;
var
  I: Integer;
begin
  with TTechDesignComponentClipboard.Create do
  try
    OpenWrite;
    try
      for I := 0 to Count - 1 do
        SetComponent(Selection[I]);
    finally
      CloseWrite;
    end;
  finally
    Free;
  end;
end;
 
procedure TTechDesignSurface.CutComponents;
begin
  CopyComponents;
  DeleteComponents;
end;

procedure TTechDesignSurface.PasteComponents;
var
  CO: TControl;
  C: TComponent;
  P: TWinControl;

  procedure KeepInParent;
  begin
    with P do
    begin
      if CO.Left > ClientWidth then
        CO.Left := ClientWidth - CO.Width;
      if CO.Top > ClientHeight then
        CO.Top := ClientHeight - CO.Height;
    end;
  end;

  procedure PasteComponent;
  begin
    C.Name := DesignUniqueName(Owner, C.ClassName);
    Owner.InsertComponent(C);
    if C is TControl then
    begin
      CO := TControl(C);
      KeepInParent;
      CO.Parent := P;
      Selector.AddToSelection(CO);
    end;
  end;

begin
  with TTechDesignComponentClipboard.Create do
  try
    OpenRead;
    try
      C := GetComponent;
      if (C <> nil) then
      begin
        P := Container;
        ClearSelection;
        repeat
          PasteComponent;
          C := GetComponent;
        until C = nil;
        SelectionChange;
        Change;
      end;
    finally
      CloseRead;
    end;
  finally
    Free;
  end;
end; }

procedure TTechDesignSurface.SelectParent;
begin
  if Count > 0 then
    Select(Selection[0].Parent);
end;

{
procedure TTechDesignSurface.PaintContainerBkgnd(ADC: HDC);
var
  r: TRect;
  canvas: TCanvas;
begin
  if DrawGrid then
  begin
    canvas := TCanvas.Create;
    try
      SelectClipRgn(ADC, 0);
      canvas.Handle := ADC;
      canvas.Brush.Color := Container.Brush.Color;
      r := canvas.ClipRect;
      if Assigned(FOnOwnerDrawGrid) then
        FOnOwnerDrawGrid(Self, canvas, Container.ClientRect)
      else begin
        canvas.FillRect(Container.ClientRect);
        DesignPaintRules(canvas, Container.ClientRect);
      end;
    finally
      canvas.Free;
    end;
  end;
end;
}

function TTechDesignSurface.IsDesignMessage(ASender: TControl;
  var AMsg: TMessage; const APt: TPoint): Boolean;

  function VirtKey: Cardinal;
  begin
    Result := AMsg.WParam;
  end;

{
  function HandlePaint: Boolean;
  begin
    Result := False;
  end;

  function HandleEraseBkgnd: Boolean;
  begin
    if (ASender <> Container) then
      Result := False
    else begin
       PaintContainerBkgnd(TWMPaint(AMsg).DC);
       AMsg.Result := 1;
       Result := True;
    end;
  end;
}

begin
  if not Active then
    Result := False
  else
    case AMsg.Msg of
{
      WM_ERASEBKGND:
        Result := HandleEraseBkgnd;
      WM_PAINT:
        Result := HandlePaint;
}
      WM_LBUTTONDOWN:
        Result := Controller.MouseDown(mbLeft, APt.X, APt.Y);
      WM_LBUTTONUP:
        Result := Controller.MouseUp(mbLeft, APt.X, APt.Y);
      WM_MOUSEMOVE:
        Result := Controller.MouseMove(APt.X, APt.Y);
   {   WM_KEYDOWN:
        Result := Controller.KeyDown(VirtKey);
      WM_KEYUP:
        Result := Controller.KeyUp(VirtKey);  }
      else
        Result := False;
    end;
end;

function TTechDesignSurface.GetCursor(AX, AY: Integer): TCursor;
begin
  // Using FindControl is inefficient.
  // All we really want to know is if Selected[0] contains (AX, AY)  
  if (Count > 0) and (FindControl(AX, AY) = Selected[0]) then
    Result := Selector.GetCursor(AX, AY)
  else
    Result := crDefault;
end;

function TTechDesignSurface.GetHitHandle(AX, AY: Integer): TTechDesignHandleId;
begin
  Result := Selector.GetHitHandle(AX, AY);
end;

procedure TTechDesignSurface.BeginUpdate;
begin
  Active := False;
  FUpdateOwner := Owner;
  Owner.RemoveComponent(Self);
end;

procedure TTechDesignSurface.EndUpdate;
begin
  FUpdateOwner.InsertComponent(Self);
  Active := True;
end;

procedure TTechDesignSurface.ReaderError(Reader: TReader; const Msg: string;
  var Handled: Boolean);
begin
  Handled := True;
end;

function TTechDesignSurface.Clear: TTechDesignSurface;
begin
  BeginUpdate;
  try
    Container.DestroyComponents;
  finally
    EndUpdate;
  end;
  Result := Self;
end;

procedure TTechDesignSurface.SaveToStream(AStream: TStream);
begin
  BeginUpdate;
  try
    DesignSaveComponentToStream(Container, AStream);
  finally
    EndUpdate;
  end;
end;

function TTechDesignSurface.LoadFromStream(AStream: TStream): TTechDesignSurface;
var
  SavedName: string;
begin
  BeginUpdate;
  SavedName := Container.Name;
  try
    Container.DestroyComponents;
    DesignLoadComponentFromStream(Container, AStream, ReaderError);
    Container.Name := SavedName;
  finally
    Container.Name := SavedName;
    EndUpdate;
  end;
  Result := Self;
end;

procedure TTechDesignSurface.SaveToFile(const AFileName: string);
begin
  BeginUpdate;
  try
    DesignSaveComponentToFile(Container, AFileName);
  finally
    EndUpdate;
  end;
end;

function TTechDesignSurface.LoadFromFile(const AFileName: string): TTechDesignSurface;
var
  SavedName: string;
begin
  BeginUpdate;
  SavedName := Container.Name;
  try
    Container.DestroyComponents;
    DesignLoadComponentFromFile(Container, AFileName, ReaderError);
  finally
    Container.Name := SavedName;
    EndUpdate;
  end;
  Result := Self;
end;

{
procedure TTechDesignSurface.SetDrawGrid(const Value: Boolean);
begin
  FDrawGrid := Value;
  if Active then
    Container.Invalidate;
end;
}

//=== { TTechDesignScrollBox } =================================================

procedure TTechDesignScrollBox.AutoScrollInView(AControl: TControl);
begin
  //
end;

//=== { TTechDesignPanel } =====================================================

constructor TTechDesignPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDrawRules := True;
  FSurface := TTechDesignSurface.Create(Self);
  Surface.Name := 'Surface';
  Surface.Container := Self;
end;

procedure TTechDesignPanel.SetDrawRules(const Value: Boolean);
begin
  FDrawRules := Value;
  Invalidate;
end;

procedure TTechDesignPanel.Paint;
begin
  inherited Paint;
  if Surface.Active or (csDesigning in ComponentState) then
  begin
    if DrawRules then
      DesignPaintRules(Canvas, ClientRect);
    if Assigned(FOnPaint) then
      FOnPaint(Self);
  end;
end;

procedure TTechDesignPanel.Clear;
begin
  // DesignSurface property value is lost on clear.
  // Restore it with the value returned from Clear.
  FSurface := Surface.Clear;
end;

procedure TTechDesignPanel.SaveToStream(AStream: TStream);
begin
  Surface.SaveToStream(AStream);
end;

procedure TTechDesignPanel.LoadFromStream(AStream: TStream);
begin
  // DesignSurface property value is lost on load.
  // Restore it with the value returned from LoadFromStream.
  FSurface := Surface.LoadFromStream(AStream);
end;

procedure TTechDesignPanel.SaveToFile(const AFileName: string);
begin
  Surface.SaveToFile(AFileName);
end;

procedure TTechDesignPanel.LoadFromFile(const AFileName: string);
begin
  // DesignSurface property value is lost on load.
  // Restore it with the value returned from LoadFromFile.
  FSurface := Surface.LoadFromFile(AFileName);
end;

function TTechDesignPanel.GetActive: Boolean;
begin
  Result := Surface.Active;
end;

function TTechDesignPanel.GetOnChange: TNotifyEvent;
begin
  Result := Surface.OnChange;
end;

function TTechDesignPanel.GetOnGetAddClass: TTechDesignGetAddClassEvent;
begin
  Result := Surface.OnGetAddClass;
end;

function TTechDesignPanel.GetOnSelectionChange: TNotifyEvent;
begin
  Result := Surface.OnSelectionChange;
end;

procedure TTechDesignPanel.SetActive(const Value: Boolean);
begin
  Surface.Active := Value;
end;

procedure TTechDesignPanel.SetOnChange(const Value: TNotifyEvent);
begin
  Surface.OnChange := Value;
end;

procedure TTechDesignPanel.SetOnGetAddClass(const Value: TTechDesignGetAddClassEvent);
begin
  Surface.OnGetAddClass := Value;
end;

procedure TTechDesignPanel.SetOnSelectionChange(const Value: TNotifyEvent);
begin
  Surface.OnSelectionChange := Value;
end;

{$IFDEF UNITVERSIONING}
initialization
  RegisterUnitVersion(HInstance, UnitVersioning);

finalization
  UnregisterUnitVersion(HInstance);
{$ENDIF UNITVERSIONING}

end.