{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ TdfsToolBar v1.13                                                            }
{------------------------------------------------------------------------------}
{ A descendant of the TToolBar component (D3, C3, & D4) that adds a            }
{ "maximize - restore" button.  This mimics the behavior of the toolbar in     }
{ Netscape Communicator.  Clicking the button makes the toolbar small, hiding  }
{ its controls.  Clicking again returns it to normal.                          }
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
{ example, if you create a descendant of TdfsColorButton, you must include in  }
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
{ See DFSToolBar.txt for notes, known issues, and revision history.            }
{------------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{------------------------------------------------------------------------------}


unit dfsToolBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls;

const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION = 'TdfsToolBar v1.13';
  DEF_BUTTON_HIGHLIGHT_COLOR = $00FFCFCF; // same as RGB(207,207,255)

type
  TdfsOrientation = (oHorizontal, oVertical);

  TdfsToolBar = class(TToolBar)
  private
    FCaption: string;
    FShowTab: boolean;
    FTextureColor1: TColor;
    FTabColor: TColor;
    FArrowColor: TColor;
    FTextureColor2: TColor;
    FTabHighlightColor: TColor;
    FOnRestore: TNotifyEvent;
    FOnMaximize: TNotifyEvent;
    FMaximized: boolean;
    FRestoreVal: integer;
    FRestoreAutosize: boolean;
    FTabSizeMaximized: integer;
    FTabSizeMinimized: integer;
    FTabIndent: integer;
    FGotMouseDown: boolean;
    FIsHighlighted: boolean;
    procedure WMNCCalcSize(var Message: TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure WMNCPaint(var Message: TWMNCPaint); message WM_NCPAINT;
    procedure WMNCLButtonDown(var Message: TWMNCLButtonDown);
       message WM_NCLBUTTONDOWN;
    procedure WMNCLButtonUp(var Message: TWMNCLButtonUp); message WM_NCLBUTTONUP;
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure CMMouseLeave(var Msg: TWMMouse); message CM_MOUSELEAVE;
    function GetVersion: string;
    procedure SetArrowColor(const Value: TColor);
    procedure SetTabColor(const Value: TColor);
    procedure SetTabHighlightColor(const Value: TColor);
    procedure SetShowTab(const Value: boolean);
    procedure SetTextureColor1(const Value: TColor);
    procedure SetTextureColor2(const Value: TColor);
    procedure SetVersion(const Value: string);
    procedure SetMaximized(const Value: boolean);
    function GetHeight: integer;
    function GetWidth: integer;
    function GetOrientation: TdfsOrientation;
    procedure SetCaption(const Value: string);
    procedure SetHeight(const Value: integer);
    procedure SetWidth(const Value: integer);
    procedure SetTabSizeMaximized(const Value: integer);
    procedure SetTabSizeMinimized(const Value: integer);
    procedure SetTabIndent(const Value: integer);
    function GetTabRect: TRect;
    function GetAutoSize: boolean;
    procedure ReplacementSetAutoSize(Value: boolean);
    function GetAlign: TAlign;
    procedure SetAlign(const Value: TAlign);
    procedure CMFontChanged(var TMessage); message CM_FONTCHANGED;
  protected
    procedure DoMaximize; dynamic;
    procedure DoRestore; dynamic;
    procedure PaintTab(Highlight: boolean); dynamic;
    function TabHitTest(X, Y: integer): boolean; dynamic;
    function DrawArrow(ACanvas: TCanvas; AvailableRect: TRect; Offset: integer;
       ArrowSize: integer; Color: TColor): integer; dynamic;
    procedure InvalidateNonclientArea;
    procedure Resize; override;
    property Orientation: TdfsOrientation
      read GetOrientation;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    // SCREEN-RELATIVE!!!!
    property TabRect: TRect
       read GetTabRect;
  published
    // Overriden properties
    property Height: integer
       read GetHeight
       write SetHeight;
    property Width: integer
       read GetWidth
       write SetWidth;
    property AutoSize: boolean
       read GetAutoSize
       write ReplacementSetAutoSize;
    property Align: TAlign
       read GetAlign
       write SetAlign;

    // New Stuff
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    property Caption: string
       read FCaption
       write SetCaption;
    property ShowTab: boolean
       read FShowTab
       write SetShowTab
       default TRUE;
    property Maximized: boolean
       read FMaximized
       write SetMaximized
       default TRUE;
    property TabColor: TColor
       read FTabColor
       write SetTabColor
       default clBtnFace;
    property ArrowColor: TColor
       read FArrowColor
       write SetArrowColor
       default clNavy;
    property TabHighlightColor: TColor
       read FTabHighlightColor
       write SetTabHighlightColor
       default DEF_BUTTON_HIGHLIGHT_COLOR;
    property TextureColor1: TColor
       read FTextureColor1
       write SetTextureColor1
       default clWhite;
    property TextureColor2: TColor
       read FTextureColor2
       write SetTextureColor2
       default clNavy;
    property TabSizeMaximized: integer
       read FTabSizeMaximized
       write SetTabSizeMaximized
       default 10;
    property TabSizeMinimized: integer
       read FTabSizeMinimized
       write SetTabSizeMinimized
       default 62;
    property TabIndent: integer
       read FTabIndent
       write SetTabIndent
       default 4;

    property OnMaximize: TNotifyEvent
       read FOnMaximize
       write FOnMaximize;
    property OnRestore: TNotifyEvent
       read FOnRestore
       write FOnRestore;
  end;

implementation

{ TdfsToolBar }

constructor TdfsToolBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FIsHighlighted := FALSE;
  FShowTab := TRUE;
  FTabColor := clBtnFace;
  FArrowColor := clNavy;
  FTabHighlightColor := DEF_BUTTON_HIGHLIGHT_COLOR;
  FTextureColor1 := clWhite;
  FTextureColor2 := clNavy;
  FMaximized := TRUE;
  FTabSizeMaximized := 10;
  FTabSizeMinimized := 62;
  FTabIndent := 4;
  FRestoreVal := Height;
  FGotMouseDown := FALSE;
  FRestoreAutosize := AutoSize;
end;

destructor TdfsToolBar.Destroy;
begin
  inherited Destroy;
end;


function TdfsToolBar.GetHeight: integer;
begin
  // If the component is being written to the DFM file, we need to tell it the
  // toolbar's real size if it's minimized.
  if (csWriting in ComponentState) and (not Maximized) and
     (Orientation = oHorizontal) then
    Result := FRestoreVal
  else
    Result := inherited Height;
end;

// This is SCREEN-RELATIVE!!!
function TdfsToolBar.GetTabRect: TRect;
begin
  // Have to use this since we are in the non-client area
  GetWindowRect(Handle, Result);

  // Adjust for EdgeBorders property
  if ebTop in EdgeBorders then
    inc(Result.Top, 2);
  if ebLeft in EdgeBorders then
    inc(Result.Left, 2);
  if ebBottom in EdgeBorders then
    dec(Result.Bottom, 2);
  if ebRight in EdgeBorders then
    dec(Result.Right, 2);

  if FMaximized then
  begin
    // paint skinny tab
    if Orientation = oVertical then
      Result.Bottom := Result.Top + FTabSizeMaximized
    else
      Result.Right := Result.Left + FTabSizeMaximized;
  end else begin
    // paint wide tab
    if Orientation = oVertical then
      Result.Bottom := Result.Top + FTabSizeMinimized
    else
      Result.Right := Result.Left + FTabSizeMinimized;
  end;
end;

function TdfsToolBar.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

function TdfsToolBar.GetWidth: integer;
begin
  // If the component is being written to the DFM file, we need to tell it the
  // toolbar's real size if it's minimized.
  if (csWriting in ComponentState) and (not Maximized) and
     (Orientation = oVertical) then
    Result := FRestoreVal
  else
    Result := inherited Width;
end;

procedure TdfsToolBar.PaintTab(Highlight: boolean);
const
  TEXTURE_SIZE = 3;
var
  TR, R: TRect;
  TextureBmp: TBitmap;
  RW, RH: integer;
  TabCanvas: TCanvas;
  x, y: integer;
  Poly: array[0..4] of TPoint;
  CaptionFontRec: TLogFont;
  TM: TTextMetric;
begin
  TR := TabRect; // Save it so we don't call GetTabRect repeatedly
  // Offset so that it is client-relative instead of screen-relative
  OffsetRect(TR, -TR.Left, -TR.Top);
  if ebTop in EdgeBorders then
    OffsetRect(TR, 0, 2);
  if ebLeft in EdgeBorders then
    OffsetRect(TR, 2, 0);

  FIsHighlighted := Highlight;

  // TToolbar doesn't have a Canvas property, and it would be client area only
  // if it did.  We need the non-client area.
  TabCanvas := TCanvas.Create;
  try
    TabCanvas.Handle := GetWindowDC(Handle);

    with TabCanvas do
    begin
      if Highlight then
        Brush.Color := TabHighlightColor
      else
        Brush.Color := TabColor;
      if FMaximized then
      begin
        Pen.Color := Brush.Color;
        dec(TR.Right);
        dec(TR.Bottom);
        dec(TR.Left);
        Poly[0] := Point(TR.Right, TR.Top);
        Poly[1] := TR.BottomRight;
        Poly[2] := Point(TR.Left, TR.Bottom);
        Poly[3] := Point(TR.Left, TR.Top);
        Poly[4] := Point(TR.Right, TR.Top);
        Polygon(Poly);
        Pen.Color := clBtnShadow;
        PolyLine(Slice(Poly, 3));
        if Orientation = oHorizontal then
        begin
          // Arrow
          x := DrawArrow(TabCanvas, TR, 2, (TR.Right - TR.Left - 2) div 2,
             ArrowColor);
          inc(TR.Top, x);
        end else begin
          // Arrow
          x := DrawArrow(TabCanvas, TR, 2, (TR.Bottom - TR.Top - 2) div 2,
             ArrowColor);
          inc(TR.Left, x);
        end;
        InflateRect(TR, -2, -2);
      end else begin
        dec(TR.Right);
        dec(TR.Bottom);
        Pen.Color := cl3DDkShadow;
        Poly[0] := TR.TopLeft;
        Poly[1] := Point(TR.Right, TR.Top);
        if Orientation = oHorizontal then
          Poly[2] := Point(TR.Right - (TR.Bottom - TR.Top), TR.Bottom)
        else
          Poly[2] := Point(TR.Right, TR.Bottom - (TR.Right - TR.Left));
        Poly[3] := Point(TR.Left, TR.Bottom);
        Poly[4] := TR.TopLeft;
        Polygon(Poly);

        InflateRect(TR, -1, -1);
        if Orientation = oHorizontal then
          Dec(TR.Right)
        else
          Dec(TR.Bottom);
        Pen.Color := clWhite;
        Poly[0] := Point(TR.Left, TR.Bottom);
        Poly[1] := Point(TR.Left, TR.Top);
        Poly[2] := Point(TR.Right, TR.Top);
        Polyline(Slice(Poly, 3));
        Pen.Color := clBtnShadow;
        Poly[0] := Poly[2];
        if Orientation = oHorizontal then
          Poly[1] := Point(TR.Right - (TR.Bottom - TR.Top), TR.Bottom)
        else
          Poly[1] := Point(TR.Right, TR.Bottom - (TR.Right - TR.Left));
        Poly[2] := Point(TR.Left, TR.Bottom);
        Polyline(Slice(Poly, 3));
        if Orientation = oHorizontal then
        begin
          // Arrow
          x := DrawArrow(TabCanvas, TR, 2, (TR.Bottom - TR.Top) div 2,
             ArrowColor);
          inc(TR.Left, x + 2);
          dec(TR.Right, (TR.Bottom - TR.Top));
          InflateRect(TR, 0, -2);
        end else begin
          // Arrow
          x := DrawArrow(TabCanvas, TR, 2, (TR.Right - TR.Left) div 2,
             ArrowColor);
          inc(TR.Top, x + 2);
          dec(TR.Bottom, (TR.Right - TR.Left));
          InflateRect(TR, -2, 0);
        end;
      end;
    end;

    // Draw the texture
    // Note: This is so complex because I'm trying to make as much like the
    //       Netscape splitter as possible.  They use a 3x3 texture pattern, and
    //       that's harder to tile.  If the had used an 8x8 (or smaller
    //       divisibly, i.e. 2x2 or 4x4), I could have used Brush.Bitmap and
    //       FillRect and they whole thing would have been about half the size,
    //       twice as fast, and 1/10th as complex.
    RW := TR.Right - TR.Left;
    RH := TR.Bottom - TR.Top;
    if (RW >= TEXTURE_SIZE) and (RH >= TEXTURE_SIZE) then
    begin
      TextureBmp := TBitmap.Create;
      try
        with TextureBmp do
        begin
          Width := RW;
          Height := RH;
          // Draw first square
          Canvas.Brush.Color := TabCanvas.Brush.Color;
          Canvas.FillRect(Rect(0, 0, RW+1, RH+1));
          Canvas.Pixels[1,1] := TextureColor1;
          Canvas.Pixels[2,2] := TextureColor2;

          // Tile first square all the way across
          for x := 1 to ((RW div TEXTURE_SIZE) + ord(RW mod TEXTURE_SIZE > 0)) do
          begin
            Canvas.CopyRect(Bounds(x * TEXTURE_SIZE, 0, TEXTURE_SIZE,
               TEXTURE_SIZE), Canvas, Rect(0, 0, TEXTURE_SIZE, TEXTURE_SIZE));
          end;

          // Tile first row all the way down
          for y := 1 to ((RH div TEXTURE_SIZE) + ord(RH mod TEXTURE_SIZE > 0)) do
          begin
            Canvas.CopyRect(Bounds(0, y * TEXTURE_SIZE, RW, TEXTURE_SIZE),
               Canvas, Rect(0, 0, RW, TEXTURE_SIZE));
          end;

          // Above could be better if it reversed process when splitter was
          // taller than it was wider.  Optimized only for horizontal right now.
        end;
        // Copy texture bitmap to the screen.
        TabCanvas.CopyRect(TR, TextureBmp.Canvas, Rect(0, 0, RW, RH));
      finally
        TextureBmp.Free;
      end;
    end;

    if not Maximized then
    begin
      // Draw the caption
      TabCanvas.Font.Assign(Font);
      TabCanvas.Brush.Style := bsClear;
      GetObject(Font.Handle, SizeOf(CaptionFontRec), @CaptionFontRec);
      R := BoundsRect;
      TR := TabRect;
      if Orientation = oVertical then
      begin
        GetTextMetrics(TabCanvas.Handle, TM);
        // Has to be a true type font to be rotated.
        if (TM.tmPitchAndFamily and TMPF_TRUETYPE) = 0 then
          StrCopy(CaptionFontRec.lfFaceName, 'Arial');

        CaptionFontRec.lfOrientation := 2700;
        CaptionFontRec.lfEscapement := 2700;
        // Could do this to autofit text to the available space.  Need to change
        // the else clause below, though, to get horizontal text.
        // CaptionFontRec.lfHeight := R.Right - R.Left - 2;
        R.Top := TR.Bottom - TR.Top + 10;

        TabCanvas.Font.Handle := CreateFontIndirect(CaptionFontRec);
        TabCanvas.Brush.Style := bsClear;
        R.Left := TabCanvas.TextHeight(Caption);
        DrawText(TabCanvas.Handle, PChar(Caption), -1, R, DT_NOCLIP or
          DT_NOPREFIX or DT_SINGLELINE);
      end
      else
      begin
        OffsetRect(R, -Left, -Top);
        R.Left := TR.Right - TR.Left + 10;
        DrawText(TabCanvas.Handle, PChar(Caption), -1, R, DT_VCENTER or
          DT_NOPREFIX or DT_SINGLELINE);
      end;
    end;

  finally
    ReleaseDC(Handle, TabCanvas.Handle);
    TabCanvas.Handle := 0;
    TabCanvas.Free;
  end;
end;

procedure TdfsToolBar.SetArrowColor(const Value: TColor);
begin
  if FArrowColor <> Value then
  begin
    FArrowColor := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTabColor(const Value: TColor);
begin
  if FTabColor <> Value then
  begin
    FTabColor := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTabHighlightColor(const Value: TColor);
begin
  if FTabHighlightColor <> Value then
  begin
    FTabHighlightColor := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetCaption(const Value: string);
begin
  if FCaption <> Value then
  begin
    FCaption := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetHeight(const Value: integer);
begin
  if (Orientation = oHorizontal) and (not FMaximized) then
    FRestoreVal := Value
  else
    inherited Height := Value;
end;

procedure TdfsToolBar.SetMaximized(const Value: boolean);
var
  NewVal: integer;
begin
  if FMaximized <> Value then
  begin
    FMaximized := Value;
    if FMaximized then
    begin
      if Orientation = oVertical then
        inherited Width := FRestoreVal
      else
        inherited Height := FRestoreVal;
      inherited AutoSize := FRestoreAutoSize;
      DoMaximize;
    end else begin
      // AutoSize will prevent us from getting small!
      FRestoreAutoSize := AutoSize;
      inherited AutoSize := FALSE;
      if Orientation = oVertical then
      begin
        FRestoreVal := Width;
        NewVal := FTabSizeMaximized;
        if ebLeft in EdgeBorders then
          inc(NewVal, 2);
        if ebRight in EdgeBorders then
          inc(NewVal, 2);
        inherited Width := NewVal;
      end else begin
        FRestoreVal := Height;
        NewVal := FTabSizeMaximized;
        if ebTop in EdgeBorders then
          inc(NewVal, 2);
        if ebBottom in EdgeBorders then
          inc(NewVal, 2);
        inherited Height := NewVal;
      end;
      DoRestore;
    end;
    if HandleAllocated then
      InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetShowTab(const Value: boolean);
begin
  if FShowTab <> Value then
  begin
    FShowTab := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTabIndent(const Value: integer);
begin
  if FTabIndent <> Value then
  begin
    FTabIndent := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTabSizeMaximized(const Value: integer);
var
  NewVal: integer;
begin
  if FTabSizeMaximized <> Value then
  begin
    FTabSizeMaximized := Value;
    if not FMaximized then
    begin
      if Orientation = oVertical then
      begin
        NewVal := FTabSizeMaximized;
        if ebLeft in EdgeBorders then
          inc(NewVal, 2);
        if ebRight in EdgeBorders then
          inc(NewVal, 2);
        inherited Width := NewVal;
      end else begin
        NewVal := FTabSizeMaximized;
        if ebTop in EdgeBorders then
          inc(NewVal, 2);
        if ebBottom in EdgeBorders then
          inc(NewVal, 2);
        inherited Height := NewVal;
      end;
    end;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTabSizeMinimized(const Value: integer);
begin
  if FTabSizeMinimized <> Value then
  begin
    FTabSizeMinimized := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTextureColor1(const Value: TColor);
begin
  if FTextureColor1 <> Value then
  begin
    FTextureColor1 := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetTextureColor2(const Value: TColor);
begin
  if FTextureColor2 <> Value then
  begin
    FTextureColor2 := Value;
    InvalidateNonclientArea;
  end;
end;

procedure TdfsToolBar.SetVersion(const Value: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

procedure TdfsToolBar.SetWidth(const Value: integer);
begin
  if (Orientation = oVertical) and (not FMaximized) then
    FRestoreVal := Value
  else
    inherited Width := Value;
end;

procedure TdfsToolBar.WMNCCalcSize(var Message: TWMNCCalcSize);
begin
  inherited;

  if FShowTab then
  begin
    if FMaximized then
    begin
      // Take away some client area (make it non-client) to make room for tab.
      with Message.CalcSize_Params^ do
        if Orientation = oVertical then
          inc(rgrc[0].Top, FTabSizeMaximized + FTabIndent)
        else
          inc(rgrc[0].Left, FTabSizeMaximized + FTabIndent);
    end else begin
      // Everything is non-client, there is no client area, i.e. where toolbar
      // buttons go.  I originally made the rect empty, but that didn't work
      // with toolbars that had AutoSize set to false, so now I move the client
      // rect completely out of the window available.
      with Message.CalcSize_Params^ do
//        SetRectEmpty(rgrc[0]);
      begin
        if Orientation = oVertical then
          inc(rgrc[0].Top, Height)
        else
          inc(rgrc[0].Left, Width);
      end;
    end;
    Message.Result := 0;
  end;
end;

procedure TdfsToolBar.WMNCPaint(var Message: TWMNCPaint);
var
  Pt: TPoint;
begin
  inherited;

  if FShowTab then
  begin
    GetCursorPos(Pt);
    PaintTab(TabHitTest(Pt.x, Pt.y));
  end;
end;

// X, Y are screen-relative, not client-relative!!!
function TdfsToolBar.TabHitTest(X, Y: integer): boolean;
begin
  Result := PtInRect(TabRect{FLastKnownTabRect}, Point(X, Y));
end;

procedure TdfsToolBar.WMNCLButtonDown(var Message: TWMNCLButtonDown);
begin
  FGotMouseDown := (Message.HitTest = HTCAPTION);
  if FGotMouseDown then
    Message.Result := 0
  else
    inherited;
end;

procedure TdfsToolBar.WMNCLButtonUp(var Message: TWMNCLButtonUp);
begin
  inherited;

  if FGotMouseDown and (Message.HitTest = HTCAPTION) and
     not (csDesigning in ComponentState) then
  begin
    Maximized := not Maximized;

    FGotMouseDown := FALSE;
  end;
end;

procedure TdfsToolBar.WMNCHitTest(var Message: TWMNCHitTest);
begin
  inherited;

  if TabHitTest(Message.XPos, Message.YPos) then
  begin
    if csDesigning in ComponentState then
      Message.Result := HTCLIENT // Click to select in IDE.
    else
      Message.Result := HTCAPTION; // Generate WMNCLButtonXXX messages.

    if not FIsHighlighted then
      PaintTab(TRUE);
  end else
    if FIsHighlighted then
      PaintTab(FALSE);
end;

procedure TdfsToolBar.CMMouseLeave(var Msg: TWMMouse);
begin
  inherited;

  if FIsHighlighted then
    PaintTab(FALSE);
end;

function TdfsToolBar.DrawArrow(ACanvas: TCanvas; AvailableRect: TRect;
  Offset, ArrowSize: integer; Color: TColor): integer;
var
  x, y, q, i, j: integer;
  ArrowAlign: TAlign;
  OldPen: TColor;
begin
  if not Odd(ArrowSize) then
    Dec(ArrowSize);
  if ArrowSize < 1 then
    ArrowSize := 1;

  // The ArrowAlign value is pretty much meaningless as far as a direction goes.
  // I'm just making up a value so I can tell what way I want it done.
  if FMaximized then
  begin
    if Orientation = oVertical then
      ArrowAlign := alRight
    else
      ArrowAlign := alLeft;
  end else begin
    if Orientation = oVertical then
      ArrowAlign := alTop
    else
      ArrowAlign := alBottom;
  end;
  q := ArrowSize * 2 - 1 ;
  Result := q;
  OldPen := ACanvas.Pen.Color;
  ACanvas.Pen.Color := Color;
  with AvailableRect do
  begin
    case ArrowAlign of
      alBottom:
        begin
          if Offset < 0 then
            x := Right + Offset - q
          else
            x := Left + Offset;
          y := Top + ((Bottom - Top - q + 1) div 2);
          for j := x to x + ArrowSize - 1 do
          begin
            for i := y to y + q - 1 do
              ACanvas.Pixels[j, i] := Color;
            inc(y);
            dec(q,2);
          end;
        end;
      alTop:
        begin
          x := Left + ((Right - Left - q + 1) div 2);
          if Offset < 0 then
            y := Bottom + Offset - q
          else
            y := Top + Offset;
          for i := y to y + ArrowSize - 1 do
          begin
            for j := x to x + q - 1 do
              ACanvas.Pixels[j, i] := Color;
            inc(x);
            dec(q,2);
          end;
        end;
      alRight:
        begin
          y := Top + ((Bottom - Top - q) div 2);
          if Offset < 0 then
            x := Left + Offset - q
          else
            x := Left + Offset;
          for j := x to x + ArrowSize - 1 do
          begin
            for i := y to y + q - 1 do
              ACanvas.Pixels[j, i] := Color;
            inc(y);
            dec(q,2);
          end;
        end;
    else // alLeft
      x := Left + ((Right - Left - q) div 2) + 1;
      if Offset < 0 then
        y := Bottom + Offset - q
      else
        y := Top + Offset;
      for i := y to y + ArrowSize - 1 do
      begin
        for j := x to x + q - 1 do
          ACanvas.Pixels[j, i] := Color;
        inc(x);
        dec(q,2);
      end;
    end;
  end;
  ACanvas.Pen.Color := OldPen;
end;

procedure TdfsToolBar.DoMaximize;
begin
  if assigned(FOnMaximize) then
    FOnMaximize(Self);
end;

procedure TdfsToolBar.DoRestore;
begin
  if assigned(FOnRestore) then
    FOnRestore(Self);
end;

function TdfsToolBar.GetAutoSize: boolean;
begin
  // If the component is being written to the DFM file, we need to tell it the
  // toolbar's real AutoSize state if it's minimized.
  if (csWriting in ComponentState) and (not Maximized) then
    Result := FRestoreAutoSize
  else
    Result := inherited AutoSize;
end;

procedure TdfsToolBar.ReplacementSetAutoSize(Value: boolean);
begin
  FRestoreAutoSize := Value;
  // Don't pass it on if we are minimized!
  if FMaximized then
    inherited AutoSize := Value;
end;


function TdfsToolBar.GetAlign: TAlign;
begin
  Result := inherited Align;
end;

procedure TdfsToolBar.SetAlign(const Value: TAlign);
begin
  inherited Align := Value;
  InvalidateNonclientArea;
end;

procedure TdfsToolBar.CMFontChanged(var TMessage);
begin
  inherited;
  InvalidateNonclientArea;
end;

procedure TdfsToolBar.InvalidateNonclientArea;
begin
  // Cause non-client area to repaint
  SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_FRAMECHANGED or SWP_NOACTIVATE or
     SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);
end;

function TdfsToolBar.GetOrientation: TdfsOrientation;
var
  R: TRect;
begin
  if Align in [alTop, alBottom] then
    Result := oHorizontal
  else if Align in [alLeft, alRight] then
    Result := oVertical
  else
  begin
    R := BoundsRect;
    if (R.Right - R.Left) > (R.Bottom - R.Top) then
      Result := oHorizontal
    else
      Result := oVertical;
  end;
end;

procedure TdfsToolBar.Resize;
begin
  InvalidateNonclientArea;
  inherited;
end;

end.

