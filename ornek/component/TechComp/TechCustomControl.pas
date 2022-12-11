unit TechCustomControl;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, ActnList, Dialogs;

type
  TTechCustomControl = class;

  TDrawState = set of (dsDefault, dsHighlight, dsFocused, dsClicked);

  TTechCustomControl = class(TCustomControl)
  private
    { Private desclarations }
    FClicking    : Boolean;
    FIsLocked    : Boolean;
    FModalResult : TModalResult;
    FOnMouseLeave: TNotifyEvent;
    FOnMouseEnter: TNotifyEvent;

    procedure CMDialogChar        (var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CMEnabledChanged    (var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMFocusChanged      (var Message: TMessage); message CM_FOCUSCHANGED;
    procedure CMMouseEnter        (var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave        (var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMParentColorChanged(var Message: TMessage); message CM_PARENTCOLORCHANGED;
    procedure CMTextChanged       (var Message: TMessage); message CM_TEXTCHANGED;
    procedure WMMouseMove         (var Message: TWMMouse); message WM_MOUSEMOVE;
    procedure WMSize              (var Message: TWMSize) ; message WM_SIZE;
  protected
    { Protected desclarations }
    procedure Click; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;

    procedure MouseDown(Button:TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X, Y: Integer); override;

    property ModalResult: TModalResult read FModalResult write FModalResult default 0;
  public
    FDrawState   : TDrawState;

    procedure CallEnabledChanged;     dynamic;
    procedure CallFocusedChanged;     dynamic;
    procedure CallMouseDown;          dynamic;
    procedure CallMouseEnter;         dynamic;
    procedure CallMouseLeave;         dynamic;
    procedure CallMouseMove;          dynamic;
    procedure CallMouseUp;            dynamic;
    procedure CallParentColorChanged; dynamic;
    procedure CallResized; dynamic;
    procedure CallTextChanged; dynamic;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure LockUpdate;
    procedure UnlockUpdate;

    property DrawState: TDrawState read FDrawState write FDrawState;
    property IsLocked: Boolean read FIsLocked write FIsLocked;
  published
    property Caption;
    property Height;
    property TabOrder;
    property TabStop;
    property Width;
    property Anchors;
    property Align;
    property BiDiMode;
    property Color;
    property Constraints;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property ParentBiDiMode;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClick;

  {$IFDEF VER140} // Borland Delphi 6.0
    property OnContextPopup;
  {$ENDIF}

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
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  end;

implementation


//------------------------------------------------------------------------------
//                            TTechCustomControl
//------------------------------------------------------------------------------

constructor TTechCustomControl.Create(AOwner: TComponent);
begin
  inherited;

  ControlStyle  := ControlStyle - [csDoubleClicks];
  DoubleBuffered:= True;
  TabStop       := True;

  FClicking   := False;
  FDrawState  := [dsDefault];
  FIsLocked   := False;
  FModalResult:= 0;
end;
//------------------------------------------------------------------------------
destructor TTechCustomControl.Destroy;
begin
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.LockUpdate;
begin
  FIsLocked := True;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.UnlockUpdate;
begin
  FIsLocked := False;
  Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, Caption) and CanFocus and
       (Focused or ((GetKeyState(VK_MENU) and $8000) <> 0)) then begin
      Click;
      Result := 1;
    end else
      inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMEnabledChanged(var Message: TMessage);
begin
  CallEnabledChanged;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallEnabledChanged;
begin
  if not FIsLocked then
    Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMFocusChanged(var Message: TMessage);
begin
  CallFocusedChanged;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallFocusedChanged;
begin
  if Focused then
    Include(FDrawState, dsFocused)
  else begin
    Exclude(FDrawState, dsFocused);
    Exclude(FDrawState, dsClicked);
  end;

  if not FIsLocked then
    Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMMouseEnter(var Message: TMessage);
begin
inherited;
  CallMouseEnter;

end;
//---------------------------------------------------------------------------
procedure TTechCustomControl.CallMouseEnter;
begin
  Include(FDrawState, dsHighlight);
  Exclude(FDrawState, dsClicked);
  if not FIsLocked then
    Invalidate;

  if Assigned(FOnMouseEnter) then  begin
    FOnMouseEnter(Self);
   end;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMMouseLeave(var Message: TMessage);
begin
  CallMouseLeave;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallMouseLeave;
begin
  Exclude(FDrawState, dsHighlight);
  if not FIsLocked then
    Invalidate;
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMParentColorChanged(var Message: TMessage);
begin
  CallParentColorChanged;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallParentColorChanged;
begin
  if not FIsLocked then
    Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CMTextChanged(var Message: TMessage);
begin
  CallTextChanged;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallTextChanged;
begin
  if not FIsLocked then
    Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.WMMouseMove(var Message: TWMMouse);
begin
  CallMouseMove;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallMouseMove;
begin
  // Bu metod kullanýcý fareyi kontrol sýnýrlarý içinde hareket ettirirse çaðrýlýr.
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.WMSize(var Message: TWMSize);
begin
  CallResized;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallResized;
begin
  // Bu metod kontrolün boyutlarý deðiþtirilirse çaðrýlýr.
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then begin
    FClicking:= True;
    CallMouseDown;
  end;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallMouseDown;
begin
  if not Focused then
    SetFocus;
  Include(FDrawState, dsClicked);
  if not FIsLocked then
    Invalidate;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FClicking then begin
    FClicking:= False;
  
    CallMouseUp;
  end;
  inherited;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.CallMouseUp;
var
  cPos: TPoint;
  NewControl: TWinControl;
begin
  Exclude(FDrawState, dsClicked);
  if not FIsLocked then
    Invalidate;
  GetCursorPos(cPos);

  // Cursor desteklenen baþka bir kontrol üzerindemi?
  NewControl := FindVCLWindow(cPos);
  if (NewControl <> nil) and (NewControl <> Self)
     and (NewControl.InheritsFrom(TTechCustomControl)) then
    TTechCustomControl(NewControl).CallMouseEnter;
end;
//------------------------------------------------------------------------------
procedure TTechCustomControl.Click;
var
  Form: TCustomForm;
begin
  Form := GetParentForm(Self);
  if Form <> nil then
    Form.ModalResult := ModalResult;
  inherited Click;
end;

end.

