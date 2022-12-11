unit PanelButton;

interface

uses
  Windows, SysUtils, Classes, Controls, Graphics, ExtCtrls, Messages,
  ModBusProtocol, pngimage;

type
  TButonTuru     = (btBitSet,btBitReset,btMomentery,btAlternate);
  TParentControl = class(TWinControl);
  TParentViewPortRec= record
                        X         : integer;
                        Y         : integer;
                        PrControl : TParentControl;
                        Control   : TControl;
                      end;
  PParentViewPort  = ^TParentViewPortRec;




  TBasePanelAbstraction = class(TCustomPanel)
  private
    FOkumaAdresi: integer;
    FYazmaAdresi: integer;
    FYazmaAktif : boolean;
    FOkumaAktif : boolean;
  protected
    function  PaneldenDegerOku: string; Virtual; Abstract;
    procedure PaneleDegerYaz(val: string); Virtual; Abstract;
  public

  published
    property OkumaAktif    : boolean read FOkumaAktif  write FOkumaAktif;
    property YazmaAktif    : boolean read FYazmaAktif  write FYazmaAktif;
    property OkumaAdresi   : Integer read FOkumaAdresi write FOkumaAdresi;
    property YazmaAdresi   : Integer read FYazmaAdresi write FYazmaAdresi;
  end;
   
  TPanelButton = class(TBasePanelAbstraction)
  private
    FFirstMove   : boolean;
    FButtonType  : TButonTuru;
    FCornerRadius: integer;
    FDownPicture : TPicture;
    FUpPicture   : TPicture;
    FMovePicture   : TPicture;
    FNormalPicture : TPicture;
    FDisplayPicture: TPicture;
    FDrawBorder  : boolean;
    FTransparent : boolean;
    FBorderColor : TColor;
    FButtonDown  : boolean;
    FMouseDown   : boolean;
    FOnKillFocus : TNotifyEvent;
    FSigdir      : boolean;
    FProtocol    : TModBusProtocol;
    FProtocolPaint: boolean;
    FProtocolReceive: boolean;

    procedure SetDownPicture  (val: TPicture);
    procedure SetUpPicture    (val: TPicture);
    procedure SetNormalPicture(val: TPicture);
    procedure SetCornerRadius (Value: integer);
    procedure SetMovePicture  (val: TPicture);
    procedure SetText         (const Value: TCaption);
    procedure SetBorderColor  (Value: TColor);
    procedure SetDrawBorder   (Value: boolean);
    procedure SetTransparent  (Value: boolean);
    procedure SetButtonDown   (Value: boolean);

    function  GetText: TCaption;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  protected
    procedure Paint; override;
    procedure Click; override;
    procedure WMSize       (var Message: TWMSize);       message WM_SIZE;
    procedure WMEraseBkgnd (var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
    procedure WMKillFocus  (var Message: TWMKillFocus);  message WM_KILLFOCUS;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    property ButtonDown: boolean read FButtonDown write SetButtonDown;
  published
    property Ovallik            : integer        read FCornerRadius    write SetCornerRadius;
    property Resim_Basiliyken   : TPicture       read FDownPicture     write SetDownPicture;
    property Resim_Uzerindeyken : TPicture       read FMovePicture     write SetMovePicture;
    property Resim_Normal       : TPicture       read FNormalPicture   write SetNormalPicture;
    property Resim_Biraktiginda : TPicture       read FUpPicture       write SetUpPicture;
    property ButonTuru          : TButonTuru     read FButtonType      write FButtonType;
    property ResimleriSigdir    : boolean        read FSigdir          write FSigdir;
    property Protocol           : TModBusProtocol read FProtocol       write FProtocol;

    property Align;
    property Alignment;
    property Caption: TCaption read GetText write SetText;
    property PopUpMenu;
    property Enabled;
    property Font;
    property FullRepaint;
    property TabOrder;
    property TabStop;
    property Tag;
    property Visible;
    property BorderCiz    : boolean           read FDrawBorder    write SetDrawBorder;
    property BorderRengi  : TColor            read FBorderColor   write SetBorderColor;
    property Transparent  : boolean           read FTransparent   write SetTransparent;
    property OnClick;
    property OnDblClick;
    property OnDockDrop;
    property OnDockOver;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKillFocus : TNotifyEvent      read FOnKillFocus  write FOnKillFocus;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnResize;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TPanelButton]);
end;

//------------------------------------------------------------------------------
procedure RenderText(const Parent: TControl; const Canvas: TCanvas;
                     AText: string; const AFont: TFont;
                     const Enabled, ShowAccelChar: Boolean;
                     var Rect: TRect; Flags: Integer);
  procedure DoDrawText;
  begin
    DrawText(Canvas.Handle, PChar(AText), -1, Rect, Flags);
  end;

begin
  if (Flags and DT_CALCRECT <> 0) and ((AText = '') or ShowAccelChar
   and (AText[1] = '&') and (AText[2] = #0)) then
    AText := AText + ' ';
  if not ShowAccelChar then
    Flags := Flags or DT_NOPREFIX;
  Flags := Parent.DrawTextBiDiModeFlags(Flags);
  with Canvas do begin
    Font.Assign(AFont);
    if not Enabled then begin
      OffsetRect(Rect, 1, 1);
      Font.Color := clBtnHighlight;
      DoDrawText;
      OffsetRect(Rect, -1, -1);
      Font.Color := clBtnShadow;
      DoDrawText;
    end else
      DoDrawText;
  end;
end;

//------------------------------------------------------------------------------
procedure CopyParentImage(Control: TControl; Dest: TCanvas);
var
  I, I1, Count,
  X, Y, SaveIndex: Integer;
  DC             : HDC;
  R, SelfR, CtlR : TRect;
  OK             : boolean;
  TmpControl     : TParentcontrol;
  LParentViewPort: TList;
  ParentViewPort : PParentViewPort;
begin
  if (Control = nil) or (Control.Parent = nil) then Exit;
  DC := Dest.Handle;
{$IFDEF WIN32}
  with Control.Parent do ControlState := ControlState + [csPaintCopy];
  try
{$ENDIF}
    with Control do begin
      SelfR := Bounds(Left, Top, Width, Height);
      X := -Left; Y := -Top;
    end;
    OK:= false;
    TmpControl:= TParentControl(control.parent);

    while not ok do begin
      if (TmpControl.Classname<>'TPanelButton') or (TmpControl.Parent.ClassName<>'TPanelButton') then
        OK:= true
      else if (TmpControl.classname='TPanelButton')  then begin
        if not TPanelButton(TmpControl).Transparent then begin
          OK:= true;
        end else   begin
          X         := X-TmpControl.Left;
          Y         := Y-TmpControl.top;
          TmpControl:= TParentControl(TmpControl.parent);
        end;
      end;
    end;

    SaveIndex := SaveDC(DC);
    try
      SetViewportOrgEx(DC, x, y, nil);
      intersectClipRect(DC, 0, 0, TmpControl.ClientWidth, TmpControl.ClientHeight);
      with TmpControl do begin
        Perform(WM_ERASEBKGND, DC, 0);
        PaintWindow(DC);
      end;
    finally
      RestoreDC(DC, SaveIndex);
    end;

    with Control do begin
      X := -Left; Y := -Top;
    end;
    OK:= false;
    New(ParentViewPort);
    ParentViewPort^.x        := X;
    ParentViewPort^.y        := Y;
    ParentViewPort^.PrControl:= TParentControl(control.parent);
    ParentViewPort^.Control  := Control;
    LParentViewPort          :=TList.Create;
    LParentViewPort.Add(ParentViewPort);
    TmpControl:=TParentControl(control.parent);;

    while not ok do begin
     if (TmpControl.classname<>'TPanelButton')  then begin
       OK:= true ;
     end else if (TmpControl.classname='TPanelButton')  then begin
       if not TPanelButton(TmpControl).Transparent then begin
         OK:= true;
       end else begin
         New(ParentViewPort);
         X                        := X-TmpControl.Left;
         ParentViewPort^.x        := X;
         Y                        := y-TmpControl.Top;
         ParentViewPort^.y        := Y;
         ParentViewPort^.Control  := TmpControl;
         TmpControl               := TParentControl(TmpControl.parent);
         ParentViewPort^.PrControl:= TmpControl;
         LParentViewPort.Add(ParentViewPort);
       end
     end;
    end;

    for I1:= LParentViewPort.Count-1 downto 0 do begin
      OK:= false;
      ParentViewPort:=LParentViewPort.Items[I1];
      TmpControl:=ParentViewPort^.PrControl;
      X:= ParentViewPort^.x;
      Y:= ParentViewPort^.y;

      Count := TmpControl.ControlCount;
      with TParentControl(PParentViewPort(LParentViewPort.Items[I1]).Control) do begin
        SelfR := Bounds(Left, Top, Width, Height);
      end;
      for I := 0 to Count - 1 do begin
        if TmpControl.Controls[I] = PParentViewPort(LParentViewPort.Items[I1]).Control then
          Break
        else if (TmpControl.Controls[I] <> nil) and (TmpControl.Controls[I] is TGraphicControl) then begin
          with TGraphicControl(TmpControl.Controls[I]) do begin
            CtlR := Bounds(Left, Top, Width, Height);
            if Bool(IntersectRect(R, SelfR, CtlR)) and Visible then begin
{$IFDEF WIN32}
            ControlState := ControlState + [csPaintCopy];
{$ENDIF}
            SaveIndex := SaveDC(DC);
            try
              SetViewportOrgEx(DC,x+left, y+Top, nil);
              IntersectClipRect(DC, 0, 0, Width, Height);
              Perform(WM_PAINT, DC, 0);
            finally
              RestoreDC(DC, SaveIndex);
{$IFDEF WIN32}
              ControlState := ControlState - [csPaintCopy];
{$ENDIF}
            end;
          end;
        end;
      end;
    end; { for }
  end; { try }
{$IFDEF WIN32}
  finally
    with control.parent do ControlState := ControlState - [csPaintCopy];
  end;
{$ENDIF}
end;

//------------------------------------------------------------------------------
constructor TPanelButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FDownPicture   := TPicture.Create;
  FNormalPicture := TPicture.Create;
  FUpPicture     := TPicture.Create;
  FDisplayPicture:= TPicture.Create;
  FMovePicture   := TPicture.Create;

  FCornerRadius  :=0;
  DoubleBuffered := true;
  Width          := 75;
  Height         := 25;
  FProtocolPaint := true;

  FFirstMove     := false;

end;

//------------------------------------------------------------------------------
destructor TPanelButton.Destroy;
begin
  FDownPicture.Free;
  FUpPicture.Free;
  FNormalPicture.Free;
  FDisplayPicture.Free;
  FMovePicture.Free;
  inherited Destroy;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetCornerRadius(Value: integer);
begin
  FCornerRadius:= Value;
  SetWindowRgn(Handle,CreateRoundRectRgn(0,0,Width,Height,FCornerRadius,FCornerRadius),true);
  invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetDownPicture(val: TPicture);
begin
  FDownPicture.Assign(val);
  Invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetUpPicture(val: TPicture);
begin
  FUpPicture.Assign(val);
  Invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetNormalPicture(val: TPicture);
begin
  FNormalPicture.Assign(val);
  FDisplayPicture.Assign(val);
  Invalidate;
end;

procedure TPanelButton.SetMovePicture  (val: TPicture);
begin
  FMovePicture.Assign(val);
  Invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.Paint;
var
  bmp: TBitmap;
  Flags, I: integer;
  R, RefreshRect: TRect;
begin
  if (not FFirstMove) and (not FProtocolReceive) then
    FDisplayPicture.Assign(FNormalPicture);
    
  if FTransparent then
      CopyParentImage(Self, Canvas);

  if FDisplayPicture.Graphic <> nil then
  begin
    bmp:= TBitmap.Create;
    bmp.Assign(FDisplayPicture.Graphic);
    if not FSigdir then
      BitBlt(canvas.Handle,0, 0, width, height, bmp.Canvas.Handle, 0, 0, srccopy)
    else
      Canvas.StretchDraw(ClientRect,FDisplayPicture.Graphic);
    bmp.Free;
  end;

  Canvas.Pen.Color  := FBorderColor;
  Canvas.Brush.Style:= bsClear;
  if FDrawBorder then
    Canvas.RoundRect(0, 0,Width-1, Height-1, FCornerRadius, FCornerRadius);

  R    := ClientRect;
  Flags:= DT_END_ELLIPSIS ;
 
  RenderText(Self, Canvas, Caption, Font, Enabled, true, R, Flags or DT_CALCRECT);
  OffsetRect(R, (Width - R.Right) div 2, (Height - R.Bottom) div 2);
  RenderText(Self, Canvas, Caption, Font, Enabled, true, R, Flags);
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetText(const Value: TCaption);
var
  Buffer: PChar;
begin
  if GetText <> Value then begin
    Buffer:= PChar(Value);
    Perform(WM_SETTEXT, 0, Longint(Buffer));
    Perform(CM_TEXTCHANGED, 0, 0);
  end;
  self.Changed
end;

//------------------------------------------------------------------------------
function TPanelButton.GetText: TCaption;
var
  Len: Integer;
begin
  Len := Perform(WM_GETTEXTLENGTH, 0, 0);;
  SetString(Result, PChar(nil), Len);
  if Len <> 0 then
    // WM_GETTEXT mesaj�n� g�ndererek bile�enle ili�kilendirilen text'i Caption
    // �zelli�ine at�yoruz.
    Perform(WM_GETTEXT, Len + 1, Longint(Pointer(Result)));
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetBorderColor(Value: TColor);
begin
  FBorderColor:= Value;
  invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetDrawBorder(Value: boolean);
begin
  FDrawBorder:= Value;
  invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetTransparent (Value: boolean);
var
  I: integer;
begin
  FTransparent:= value;

  for I:=0 to ControlCount-1 do
    Controls[I].Invalidate;
  invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.SetButtonDown   (Value: boolean);
  procedure SetImage;
  begin
    FProtocolReceive := true;
    if FButtonDown then
      FDisplayPicture.Assign(FDownPicture)
    else
      FDisplayPicture.Assign(FNormalPicture);
  end;
begin
  FButtonDown := Value;
  if FProtocolPaint then
  begin
    case FButtonType of
      btBitSet: SetImage;
      btAlternate: SetImage;
      btMomentery: SetImage;
    end;

  end;
  Invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.WMKillFocus(var Message: TWMKillFocus);
begin
  inherited;
  if Assigned(FOnKillFocus) then FOnKillFocus(Self);
end;

//------------------------------------------------------------------------------
procedure TPanelButton.Click;
begin
  case FButtonType of
    btBitSet:
      begin
        if not FButtonDown then
          FProtocol.SetState(YazmaAdresi,true);
        FButtonDown := true;
      end;
    btBitReset:
      begin
        FButtonDown := false;
        FProtocol.SetState(YazmaAdresi,false);
      end;
    btMomentery:
      begin
        FButtonDown := false;
      end;
    btAlternate:
      begin
        FButtonDown := not FButtonDown;
        FProtocol.SetState(YazmaAdresi,FButtonDown);
      end;
  end;
  inherited Click;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
begin
  FProtocolPaint := false;
  FMouseDown := true;
  FDisplayPicture.Assign(FDownPicture);
  if FButtonType = btMomentery then
    FProtocol.SetState(FYazmaAdresi,true);
  Invalidate;

  inherited MouseDown(Button,Shift,X,Y);
end;

//------------------------------------------------------------------------------
procedure TPanelButton.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  FFirstMove := true;
  FProtocolPaint := false;
 { if not FMouseDown then
  begin
    if not FButtonDown then
      FDisplayPicture.Assign(FMovePicture)
    else
      FDisplayPicture.Assign(FDownPicture);
  end;   }
  Invalidate;
  inherited MouseMove(Shift,X,Y);
end;

//------------------------------------------------------------------------------
procedure TPanelButton.MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
begin
  FMouseDown := false;
  FProtocolPaint := false;
  if not FButtonDown then
  begin
    FDisplayPicture.Assign(FUpPicture);
    Invalidate;
  end;
  
  if FProtocol <> nil then
  begin
    if FButtonType = btMomentery then
      FProtocol.SetState(FYazmaAdresi,false);
  end;
  
  inherited MouseUp(Button,Shift,X,Y);
end;

//------------------------------------------------------------------------------
procedure TPanelButton.CMMouseLeave(var Message: TMessage);
begin
  FProtocolPaint := true;
  if not FMouseDown then
  begin
    if not FButtonDown then
      FDisplayPicture.Assign(FNormalPicture)
    else
      FDisplayPicture.Assign(FDownPicture);
  end;

 Invalidate;
end;

//------------------------------------------------------------------------------
procedure TPanelButton.WMEraseBkgnd(var Message : TWMEraseBkgnd);
begin
  // WM_ERASEBKGND  mesaj� al�nd���nda 0 de�eri geri d�d�r�lerek panelin kendini
  // boyamas�n� engelleyip Gradient temam�z�n panel zeninine kopyalanmas�n sa�l�yoruz.
  message.Result := LRESULT(False);
end;

//------------------------------------------------------------------------------
procedure TPanelButton.WMSize   (var Message: TWMSize) ;
begin
  Invalidate;
  inherited;
end;
end.
