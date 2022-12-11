{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ TdfsGrabBar v1.16                                                            }
{------------------------------------------------------------------------------}
{ A grab bar, or splitter, to allow two windows to be resized simultaneously.  }
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
{ See GrabBar.txt for notes, known issues, and revision history.               }
{------------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{------------------------------------------------------------------------------}

unit GrabBar;

interface

{$IFDEF DFS_WIN32}
  {$R GrabBar.r32}
{$ELSE}
  {$R GrabBar.r16}
{$ENDIF}

uses
  SysUtils, WinTypes, WinProcs, Messages, Forms, Classes, Graphics, Controls,
  Dialogs;


const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION = 'TdfsGrabBar v1.16';

type
  TdfsGrabBarStyle = (gbHorizontal, gbVertical);

  TdfsGrabBar = class(TCustomControl)
  private
    { Property Variables }
    FBorderStyle: TBorderStyle;
    FStyle: TdfsGrabBarStyle;
    FWindowA,
    FWindowB: TWinControl;
    FWindowAMinSize : integer;    { 0 or negative value = no minimum }
    FWindowBMinSize : integer;
    FDragUpdate: boolean;

    { Event Variables }
    FOnMove: TNotifyEvent;

    { Internal Variables }
    LastRect: TRect;
    OldWndProc: TFarProc;
    NewWndProc: Pointer;
    FDragging: boolean;
    FSettingBounds:Boolean;

    { Utility functions }
    procedure HookParent;
    procedure UnhookParent;
    procedure HookWndProc(var Message: TMessage);

    function BarRect(APoint: TPoint): TRect;
    function ClientToParent(APoint: TPoint): TPoint;
    procedure InvertedRect(R: TRect; InvertLast: boolean);
    procedure MoveWindows;
    procedure ResizeBar;

    { Message response methods }
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
    procedure WMMove(var Msg: TWMMove); message WM_MOVE;
    procedure WMSize(var Msg: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Msg: TWMEraseBkgnd); message WM_ERASEBKGND;
  protected
    { Property methods }
    procedure SetBorderStyle(Value: TBorderStyle);
    procedure SetStyle(Value: TdfsGrabBarStyle);
    function GetThickness: Integer;
    procedure SetThickness(Value: Integer);
    procedure SetWindowA(Value: TWinControl);
    procedure SetWindowB(Value: TWinControl);
    function GetVersion: string;
    procedure SetVersion(const Val: string);

    { Overriden methods }
    procedure SetParent(Value: TWinControl); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
       X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
       override;
    procedure Notification(AComponent: TComponent; Operation: TOperation);
       override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
  published
    { Properties }
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    property BorderStyle: TBorderStyle
       read FBorderStyle
       write SetBorderStyle
       default bsSingle;
    property DragUpdate: boolean
       read FDragUpdate
       write FDragUpdate
       default FALSE;
    property Style: TdfsGrabBarStyle
       read FStyle
       write SetStyle
       default gbHorizontal;
    property Thickness: integer
       read GetThickness
       write SetThickness;
    property WindowA: TWinControl
       read FWindowA
       write SetWindowA;
    property WindowAMinSize: integer
       read FWindowAMinSize
       write FWindowAMinSize;
    property WindowB: TWinControl
       read FWindowB
       write SetWindowB;
    property WindowBMinSize: integer
       read FWindowBMinSize
       write FWindowBMinSize;

    { Events }
    property OnMove: TNotifyEvent
       read FOnMove
       write FOnMove;

    { Publish Inherited Protected Properties }
    property Color;
    property Ctl3D;
    property Cursor
       default crVSplit;
    property Hint;
    property ParentColor;
    property ParentCtl3D;
    property ParentShowHint;
    property ShowHint;
    property Visible;

    { Publish Inherited Protected Events }
    property OnClick;
    property OnDblClick;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
  end;

implementation

uses
  ExtCtrls;


{ Note that the "hook" is not installed here.  Parent is not valid in the }
{ constructor.  See SetParent.                                            }
constructor TdfsGrabBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  { Initialize variables }
  FSettingBounds := FALSE;
  FDragging := FALSE;
  FDragUpdate := FALSE;
  NewWndProc := NIL;
  OldWndProc := NIL;
  SetRectEmpty(LastRect);
  { Set Defaults }
  FBorderStyle := bsSingle;
  FStyle := gbHorizontal;
  Cursor := crVSplit;
  Thickness := 4;
end;

destructor TdfsGrabBar.Destroy;
begin
  if FDragging then { Remove the clipping of the mouse cursor }
    ClipCursor(NIL);
  { Always make sure that the hook is removed. }
  UnhookParent;
  inherited Destroy;
end;

{ This procedure is used to get the parent's window procedure, save it,      }
{ and replace it with our own.  This allows see all of the parent's messages }
{ before it does.                                                            }
procedure TdfsGrabBar.HookParent;
begin
  { If there is no parent, we can't hook it. }
  if Parent = NIL then exit;
  { Get the old window procedure via API call and store it. }
  OldWndProc := TFarProc(GetWindowLong(Parent.Handle, GWL_WNDPROC));
  { Convert our object method into something Windows knows how to call }
  NewWndProc := MakeObjectInstance(HookWndProc);
  { Install it as the new Parent window procedure }
  SetWindowLong(Parent.Handle, GWL_WNDPROC, LongInt(NewWndProc));
end;

{ Remove our window function and reinstall the original. }
procedure TdfsGrabBar.UnhookParent;
begin
  { We must have a parent, and we must have already hooked it. }
  if (Parent <> NIL) and assigned(OldWndProc) then
    { Set back to original window procedure }
    SetWindowLong(Parent.Handle, GWL_WNDPROC, LongInt(OldWndProc));
  { If we have created a window procedure via MakeObjectInstance, }
  { it must be disposed of.                                       }
  if assigned(NewWndProc) then
    FreeObjectInstance(NewWndProc);
  { Reset variables to NIL }
  NewWndProc := NIL;
  OldWndProc := NIL;
end;

{ The window procedure that is installed into our parent. }
procedure TdfsGrabBar.HookWndProc(var Message: TMessage);
  function Max(i1, i2: integer): integer;
  begin
    if i1 > i2 then
      Result := i1
    else
      Result := i2;
  end;
begin
  { If there's no parent, something has really gone wrong. }
  if Parent = NIL then exit;
  with Message do begin
    { ALWAYS call the old window procedure so the parent can process its    }
    { messages.  Thanks to Gary Frerking for pointing me at CallWindowProc. }
    { I was trying to call the function directly, which died horribly.      }
    Result := CallWindowProc(OldWndProc, Parent.Handle, Msg, wParam, lParam);

    { If Parent gets a WM_SIZE message, it has been resized }
    if (Msg = WM_SIZE) and (wParam <> SIZE_MINIMIZED) then begin
      { We need to resize the bar so it fits in the new size, honor FWindowBMinSize }
      if FStyle = gbHorizontal then begin
        if Top > Parent.ClientHeight-FWindowBMinSize then
          Top := Parent.ClientHeight - FWindowBMinSize;
      end else
        if Left > Parent.ClientWidth-FWindowBMinSize then
          Left := Parent.ClientWidth - FWindowBMinSize;
      ResizeBar;
      { And update the positions of the windows we control }
      MoveWindows;
    end;
  end;
end;

{ Function to calculate rectangle coordinates of the bar given a point. }
function TdfsGrabBar.BarRect(APoint: TPoint): TRect;
begin
  SetRectEmpty(Result);
  if Parent = nil then exit;
  if FStyle = gbHorizontal then
    Result := Bounds(0, APoint.Y - (Thickness div 2),
                     Parent.ClientWidth, Thickness)
  else
    Result := Bounds(APoint.X - (Thickness div 2), 0,
                     Thickness, Parent.ClientHeight);
end;

{ Convert from our client coordinates to parent's client coordinates. }
function TdfsGrabBar.ClientToParent(APoint: TPoint): TPoint;
begin
  if Parent = NIL then
    Result := ClientToScreen(APoint)
  else begin
    Result := ClientToScreen(APoint);
    Result := Parent.ScreenToClient(Result);
  end;
end;

{ Draw an inverted rectangle on the parent to indicate where the bar }
{ will be when it is released.                                       }
procedure TdfsGrabBar.InvertedRect(R: TRect; InvertLast: boolean);
var
  aDC: hDC;
begin
  if Parent = nil then exit;
  { Get the parent's device context (something we can draw on).  Flags }
  { indicate that we want to be able to draw anywhere on the parent,   }
  { regardless of what it's child windows have to say about it.  Also  }
  { speed it up a bit.                                                 }
  aDC := GetDCEx(Parent.Handle, 0, DCX_PARENTCLIP or DCX_CACHE);
  { Invert the last rectange we drew to remove it. }
  { Inverted + Inverted = NOT Inverted.            }
  if InvertLast and not IsRectEmpty(LastRect) then
    InvertRect(aDC, LastRect);
  { Draw the new rectangle }
  InvertRect(aDC, R);
  { Release the DC when done with it or very bad things will happen. }
  ReleaseDC(Parent.Handle, aDC);
end;

{ Reposition the windows we are responsible for. }
procedure TdfsGrabBar.MoveWindows;
  { Move the top or left window by setting its height or width }
  procedure MoveWindowA;
  begin
    if FStyle = gbHorizontal then
      FWindowA.Height := Top - FWindowA.Top
    else
      FWindowA.Width := Left - FWindowA.Left;
  end;

  { Move the bottom or right window by recalculating its Top or Left }
  procedure MoveWindowB;
  var
    X: integer;
  begin
    if FStyle = gbHorizontal then begin
      X := Top + Thickness;
      with FWindowB do
        SetBounds(Left, X, Width, Height + Top - X);
    end else begin
      X := Left + Thickness;
      with FWindowB do
        SetBounds(X, Top, Width + (Left - X), Height);
    end;
  end;
var
  newSize: integer;
begin
  if Parent = NIL then exit;
  { Disable parent aligning until we move both windows.  If we don't, the    }
  { parent will try to reposition aligned controls when they are moved.      }
  { This produces scrollbars in some cases and annoying flicker most always. }
  Parent.DisableAlign;

  { Added by Beth Weiss, 2/12/97:                                            }
  { If the user has attempted to make one of the window's too small,         }
  { adjust Top/Left so that window is the minimum allowed size.              }
  if assigned(FWindowA) and (FWindowAMinSize > 0) then begin
    if FStyle = gbHorizontal then begin
      if Top - FWindowA.Top < FWindowAMinSize then
        Top := FWindowAMinSize;
    end  { horizontal }
    else begin
      if Left - FWindowA.Left < FWindowAMinSize then
        Left := FWindowAMinSize
    end;  { vertical }
  end;  { adjust windowA's size as necessary }

  if assigned(FWindowB) and (FWindowBMinSize > 0) then begin
    if FStyle = gbHorizontal then begin
      newSize := FWindowB.Top + FwindowB.Height - (Top + Thickness);
      if newSize < FWindowBMinSize then
        Top := top - (FWindowBMinSize - newSize);
    end  { horizontal }
    else begin { vertical }
      newSize := FWindowB.Left + FWindowB.Width - (Left + Thickness);
      if newSize < FWindowBMinSize then
        Left := left - (FWindowBMinSize - newSize);
    end;  { vertical }
  end;   { adjust Top if WindowB was made too small }

  { end of additions by Beth Weiss }

  if assigned(FWindowA) then
    MoveWindowA;
  if assigned(FWindowB) then
    MoveWindowB;
  { Tell parent it can align controls now if it wants.  We have repositioned }
  { windows and they should not need further moving.                         }
  Parent.EnableAlign;
end;

{ Reset the bar's size to fill the client's width or height. }
procedure TdfsGrabBar.ResizeBar;
var
 PPanel : TPanel;
begin
  if (Parent = NIL) then exit;
  if FStyle = gbHorizontal then
  begin
    if (Parent is TCustomPanel) then
    begin {Respect border widths}
      PPanel := (Parent as TPanel);{Use Panel instead of CustomPanel}
      SetBounds(PPanel.BorderWidth, Top,
                Parent.ClientWidth - 2*PPanel.BorderWidth, Thickness);
    end else
      SetBounds(0, Top, Parent.ClientWidth, Thickness)
  end else begin
    if (Parent is TCustomPanel) then
    begin {Respect border widths}
      PPanel := (Parent as TPanel);{USe Panel instead of CustomPanel}
      SetBounds(Left, PPanel.BorderWidth ,
                Thickness, Parent.ClientHeight - 2*PPanel.BorderWidth);
    end else
      SetBounds(Left, 0, Thickness, Parent.ClientHeight);
  end;
end;

{ The value of the Ctl3D property has changed, invalidate the control so }
{ that it is redrawn to reflect the change.                              }
procedure TdfsGrabBar.CMCtl3DChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

{ We have been moved.  Make sure we are as wide or tall as the parent. }
procedure TdfsGrabBar.WMMove(var Msg: TWMMove);
begin
  inherited;
  ResizeBar;
end;

{ We have been resized.  Make sure we are as wide or tall as the parent. }
procedure TdfsGrabBar.WMSize(var Msg: TWMSize);
begin
  inherited;
  ResizeBar;
end;

{ BorderStyle property has changed.  Redraw control to reflect change. }
procedure TdfsGrabBar.SetBorderStyle(Value: TBorderStyle);
begin
  if Value = FBorderStyle then exit;
  FBorderStyle := Value;
  RecreateWnd;
end;

{ A Parent has been assigned or changed.  Unhook old parent and install }
{ hook in new parent.                                                   }
procedure TdfsGrabBar.SetParent(Value: TWinControl);
begin
  { UnhookParent knows if the current parent has been hooked or not }
  UnhookParent;
  { Set Parent to the new value }
  inherited SetParent(Value);
  { Hook the new parent's window procedure }
  HookParent;
  { Size ourselves to fill the new parent's client area }
  ResizeBar;
  { Position our windows accordingly }
  MoveWindows;
end;

{ Set whether the bar is horizontal or vertical, setting the cursor }
{ accordingly. }
procedure TdfsGrabBar.SetStyle(Value: TdfsGrabBarStyle);
begin
  if Value = FStyle then exit;
  FStyle := Value;
  if FStyle = gbHorizontal then begin
    Cursor := crVSplit;
    Height := Width;
{    if Parent <> NIL then
      Top := Parent.ClientHeight div 2;}
  end else begin
    Cursor := crHSplit;
    Width := Height;
{    if Parent <> NIL then
      Left := Parent.ClientWidth div 2;}
  end;
  ResizeBar;
end;

{ Return the thickness of the bar, depending on the orientation. }
function TdfsGrabBar.GetThickness: integer;
begin
  if FStyle = gbHorizontal then
    Result := Height
  else
    Result := Width;
end;

{ Set the thickness, depending on the orientation. }
procedure TdfsGrabBar.SetThickness(Value: integer);
begin
  if (Value = Thickness) or (Value < 0) then exit;
  if FStyle = gbHorizontal then
    Height := Value
  else
    Width := Value;
end;

{ Set a window we are responsible for.  Do not allow selection of ourself or }
{ the other window being split.                                              }
procedure TdfsGrabBar.SetWindowA(Value: TWinControl);
begin
  if (Value = FWindowA) or (Value = FWindowB) or (Value = Self) then exit;
  FWindowA := Value;
  { Position it correctly with the bar. }
  MoveWindows;
end;

{ Set a window we are responsible for.  Do not allow selection of ourself or }
{ the other window being split.                                              }
procedure TdfsGrabBar.SetWindowB(Value: TWinControl);
begin
  if (Value = FWindowA) or (Value = FWindowB) or (Value = Self) then exit;
  FWindowB := Value;
  { Position it correctly with the bar. }
  MoveWindows;
end;

procedure TdfsGrabBar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  if FBorderStyle = bsSingle then
    Params.Style := Params.Style or WS_BORDER;
end;

procedure TdfsGrabBar.WMEraseBkgnd(var Msg: TWMEraseBkgnd);
var
  FrameBrush: HBRUSH;
begin
  inherited; { Paint rectangle with Color property }
  if Ctl3D then begin
    FrameBrush := CreateSolidBrush(ColorToRGB(clBtnShadow));
    try
      FrameRect(Msg.DC, Rect(-1, -1, Width, Height), FrameBrush);
    finally
      DeleteObject(FrameBrush);
    end;
    FrameBrush := CreateSolidBrush(ColorToRGB(clBtnHighlight));
    try
      FrameRect(Msg.DC, Rect(0, 0, Width+1, Height+1), FrameBrush);
    finally
      DeleteObject(FrameBrush);
    end;
  end;
end;

{ Mouse button has been pressed.  Setup for moving the bar. This is only }
{ called when the application is running, not in design mode.            }
procedure TdfsGrabBar.MouseDown(Button: TMouseButton;
                             Shift: TShiftState; X, Y: Integer);
  function Min(i1, i2: integer): integer;
  begin
    if i1 > i2 then
      Result := i2
    else
      Result := i1;
  end;

  function Max(i1, i2: integer): integer;
  begin
    if i1 < i2 then
      Result := i2
    else
      Result := i1;
  end;
var
  WARect, WBRect,
  ClipRect: TRect;
begin
  inherited MouseDown(Button, Shift, X, Y);
  { If no parent or not left button pressed, no reason to go on }
  if (Parent = NIL) or (Button <> mbLeft) then exit;

(*
  { Get the rectangle of our parent }
  ClipRect := Parent.ClientRect;
  { Convert rectangle to screen coords. Simpler than calling ClientToScreen }
  { twice, once for TopLeft and again for BottomRight                       }
  with Parent.ClientOrigin do OffsetRect(ClipRect, X, Y);
*)

  if WindowA = NIL then
    GetWindowRect(Parent.Handle, WARect)
  else
    GetWindowRect(WindowA.Handle, WARect);

  if WindowB = NIL then
    GetWindowRect(Parent.Handle, WBRect)
  else
    GetWindowRect(WindowB.Handle, WBRect);

  { Remove the minimum sizes from the rectangle }
  if FWindowAMinSize > 0 then begin
    if FStyle = gbHorizontal then { horizontal }
      Inc(WARect.Top, FWindowAMinSize)
    else { vertical }
      Inc(WARect.Left, FWindowAMinSize);
  end;  { adjust windowA's size as necessary }

  if FWindowBMinSize > 0 then begin
    if FStyle = gbHorizontal then { horizontal }
      Dec(WBRect.Bottom, FWindowBMinSize)
    else { vertical }
      Dec(WBRect.Right, FWindowBMinSize);
  end;   { adjust Top if WindowB was made too small }

  with ClipRect do begin
    Left := Min(WARect.Left, WBRect.Left);
    Top := Min(WARect.Top, WBRect.Top);
    Right := Max(WARect.Right, WBRect.Right);
    Bottom := Max(WARect.Bottom, WBRect.Bottom);
  end;

  { Subtract our size from the rectangle }
  if FStyle = gbHorizontal then begin
    Inc(ClipRect.Top, Thickness div 2);
    Dec(ClipRect.Bottom, (Thickness div 2) - 1);
  end else begin
    Inc(ClipRect.Left, Thickness div 2);
    Dec(ClipRect.Right, (Thickness div 2) - 1);
  end;

  { Clip the mouse cursor to the rectangle.  Prevents from moving out of it }
  ClipCursor(@ClipRect);
  FDragging := TRUE;
  LastRect := BoundsRect;
  if not FDragUpdate then { Draw the indicator bar }
    InvertedRect(LastRect, FALSE);
end;

{ The mouse has moved.  Move the indicator bar accordingly. }
procedure TdfsGrabBar.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  R: TRect;
begin
  inherited MouseMove(Shift, X, Y);
  if (ssLeft in Shift) and FDragging then begin
    { Convert our client point to our parent's client point }
    R := BarRect(ClientToParent(Point(X,Y)));
    { If the bar is still in the same place as last time, }
    { there's nothing to do                               }
    if EqualRect(R, LastRect) or IsRectEmpty(R) then exit;
    if not FDragUpdate then { Draw the indicator bar }
      InvertedRect(R, TRUE);
    LastRect := R;

    if FDragUpdate then { Update the bar's position.  This updates windows, too}
      if FStyle = gbHorizontal then
        Top := LastRect.Top
      else
        Left := LastRect.Left;
  end;
end;

{ The mouse button has been released, update the position of the }
{ bar and it's windows.                                          }
procedure TdfsGrabBar.MouseUp(Button: TMouseButton;
                           Shift: TShiftState; X, Y: Integer);
var
  OldRect,
  Intersect: TRect;
begin
  inherited MouseUp(Button, Shift, X, Y);
  { Don't do anything if it wasn't the left button. }
  if not ((Button = mbLeft) and FDragging) then exit;

  { Remove the clipping of the mouse cursor }
  ClipCursor(NIL);
  FDragging := FALSE;
  if not IsRectEmpty(LastRect) then begin
    if not FDragUpdate then { Remove the last indicator bar }
      InvertedRect(LastRect, FALSE);
    OldRect := BoundsRect;
    { Update the bar position.  Because SetBounds is overridden, }
    { the other windows will be moved accordingly.               }
    if FStyle = gbHorizontal then
      Top := LastRect.Top
    else
      Left := LastRect.Left;
    if not FDragUpdate then begin
      { If new rect is in old rect, part of inverted rect gets left over. }
      { Invalidate the control and update so it is repainted immediately. }
      IntersectRect(Intersect, LastRect, OldRect);
      if not IsRectEmpty(Intersect) then
        Refresh;
    end;
  end;
  SetRectEmpty(LastRect);
  { Fire the OnMove event if there is one }
  if assigned(FOnMove) then
    FOnMove(Self);
end;

{ We have be notified of a change in the on-form components. If it is one }
{ that we are responsible for, update variables accordingly.              }
procedure TdfsGrabBar.Notification(AComponent: TComponent; Operation: TOperation);
begin
  if Operation = opRemove then begin
    if AComponent = FWindowA then
      FWindowA := NIL;
    if AComponent = FWindowB then
      FWindowB := NIL;
  end;
end;

{ Every change to Top, Left, Width and Height come through this procedure.  }
{ The statement: Top := 10; will result in the procedure being called.  By  }
{ overriding it, we can ensure that the windows our repositioned every time }
{ we are moved.                                                             }
procedure TdfsGrabBar.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var
  R: TRect;
begin
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
  if HandleAllocated then begin
    R := Rect(0, 0, Width, Height);
    InvalidateRect(Handle, @R, TRUE);
    Update;
    if not Fsettingbounds then
      try
        FSettingBounds := TRUE;
        MoveWindows;
      finally
        FSettingBounds := FALSE;
      end;
{    MoveWindows;}
  end;
end;

function TdfsGrabBar.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

procedure TdfsGrabBar.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

end.
