{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ TdfsLayeredForm v1.00 Beta 3                                                 }
{------------------------------------------------------------------------------}
{ A TForm descendent that enables the new transparency features of windows in  }
{ Windows 2000.  This feature is not available on older Windows versions, i.e. }
{ Win95, Win98, NT 4.                                                          }
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
{ See DFSLayeredForm.txt for notes, known issues, and revision history.        }
{------------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{------------------------------------------------------------------------------}

unit DFSLayeredForm;

interface

uses
  Windows,
  Forms,
  Controls,
  Graphics,
  Classes;

// The new API stuff.  It's not defined in Delphi 5, let's assume it will be in
// Delphi 6.
{$IFNDEF DFS_COMPILER_6_UP}
const
  WS_EX_LAYERED = $00080000;
  LWA_COLORKEY = $00000001;
  LWA_ALPHA = $00000002;
  ULW_COLORKEY = $00000001;
  ULW_ALPHA = $00000002;
  ULW_OPAQUE = $00000004;
  AC_SRC_ALPHA = $1;

{$IFNDEF DFS_COMPILER_4_UP}
type
  PBlendFunction = ^TBlendFunction;
  {$IFDEF DFS_CPPB_3_UP} {$EXTERNALSYM _BLENDFUNCTION} {$ENDIF}
  _BLENDFUNCTION = packed record
    BlendOp: BYTE;
    BlendFlags: BYTE;
    SourceConstantAlpha: BYTE;
    AlphaFormat: BYTE;
  end;
  TBlendFunction = _BLENDFUNCTION;
  {$IFDEF DFS_CPPB_3_UP} {$EXTERNALSYM BLENDFUNCTION} {$ENDIF}
  BLENDFUNCTION = _BLENDFUNCTION;

const
  { currentlly defined blend function }
  {$IFDEF DFS_CPPB_3_UP} {$EXTERNALSYM AC_SRC_OVER} {$ENDIF}
  AC_SRC_OVER = $00;
{$ENDIF}

{$ENDIF}

const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION = 'TdfsLayeredForm v1.00 Beta 3';

// The new APIs.  They're declared as types here so we can have variables that
// hold the address of the real functions.  This allows us to gracefully deal
// with systems that don't have these functions available.
type
  TSetLayeredWindowAttributes = function(
    hWnd: HWND;             // handle to the layered window
    crKey: COLORREF;        // specifies the color key
    bAlpha: byte;           // value for the blend function
    dwFlags: DWORD          // action
  ): BOOL; stdcall;

{ This function is supposed to allow a lot more flexibility in the way things
  work and better performance, but I've yet to figure out how to make it work.
  If anyone has a working demo showing the use of this function, I'd love to see
  it.  C/C++ code is fine. }
  TUpdateLayeredWindow = function(
    hWnd: HWND;             // handle to the layered window
    hdcDst: HDC;            // handle to screen DC
    pptDst: PPoint;         // new screen position
    pSize: PSize;           // new size of the layered screen
    hdcSrc: HDC;            // handle to surface DC
    pptSrc: PPoint;         // layer position
    crKey: COLORREF;        // specifies the color key
    const bBlend: TBlendFunction; // value for the blend function
    dwFlags: DWORD          // action
  ): BOOL; stdcall;

type
  TdfsLayeredForm = class(TForm)
  private
    FMousePassthrough: boolean;
    FOpacity: byte;
    FTransparentColor: TColor;
    FUseOpacity: boolean;
    FUseTransparentColor: boolean;
  protected
    function GetVersion: string;
    procedure SetVersion(const Val: string);
    procedure SetMousePassthrough(const Value: boolean);
    procedure SetOpacity(const Value: byte);
    procedure SetTransparentColor(const Value: TColor);
    procedure SetUseOpacity(const Value: boolean);
    procedure SetUseTransparentColor(const Value: boolean);

    procedure UpdateLayeredAttrs; virtual;

    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property MousePassthrough: boolean read FMousePassthrough
      write SetMousePassthrough default FALSE;
    property Opacity: byte read FOpacity write SetOpacity default 128;
    property TransparentColor: TColor read FTransparentColor
      write SetTransparentColor default clWhite;
    property UseOpacity: boolean read FUseOpacity write SetUseOpacity
      default TRUE;
    property UseTransparentColor: boolean read FUseTransparentColor
      write SetUseTransparentColor default FALSE;
    property Version: string read GetVersion write SetVersion stored FALSE;
  end;


function SetLayeredWindowAttributes(
  hWnd: HWND;             // handle to the layered window
  crKey: COLORREF;        // specifies the color key
  bAlpha: byte;           // value for the blend function
  dwFlags: DWORD          // action
): BOOL;

{ This function is supposed to allow a lot more flexibility in the way things
  work and better performance, but I've yet to figure out how to make it work.
  If anyone has a working demo showing the use of this function, I'd love to see
  it.  C/C++ code is fine. }
function UpdateLayeredWindow(
  hWnd: HWND;             // handle to the layered window
  hdcDst: HDC;            // handle to screen DC
  pptDst: PPoint;         // new screen position
  pSize: PSize;           // new size of the layered screen
  hdcSrc: HDC;            // handle to surface DC
  pptSrc: PPoint;         // layer position
  crKey: COLORREF;        // specifies the color key
  const bBlend: TBlendFunction; // value for the blend function
  dwFlags: DWORD          // action
): BOOL;

implementation

var
  FDLLHandle: HINST;
  FSetLayeredWindowAttrFunc: TSetLayeredWindowAttributes;
  FUpdateLayeredWindowFunc: TUpdateLayeredWindow;


function SetLayeredWindowAttributes(hWnd: HWND; crKey: COLORREF; bAlpha: byte;
  dwFlags: DWORD): BOOL;
begin
  if assigned(FSetLayeredWindowAttrFunc) then
    Result := FSetLayeredWindowAttrFunc(hWnd, crKey, bAlpha, dwFlags)
  else
    Result := FALSE;
end;

function UpdateLayeredWindow(hWnd: HWND; hdcDst: HDC; pptDst: PPoint;
  pSize: PSize; hdcSrc: HDC; pptSrc: PPoint; crKey: COLORREF;
  const bBlend: TBlendFunction; dwFlags: DWORD): BOOL;
begin
  if assigned(FUpdateLayeredWindowFunc) then
    Result := FUpdateLayeredWindowFunc(hWnd, hdcDst, pptDst, pSize, hdcSrc,
      pptSrc, crKey, bBlend, dwFlags)
  else
    Result := FALSE;
end;

{ TdfsLayeredForm }

constructor TdfsLayeredForm.Create(AOwner: TComponent);
begin
  FMousePassthrough := FALSE;
  FOpacity := 128;
  FTransparentColor := clWhite;
  FUseOpacity := TRUE;
  FUseTransparentColor := FALSE;
  inherited;
end;

procedure TdfsLayeredForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
  if not (csDesigning in ComponentState) then
  begin
    Params.ExStyle := Params.ExStyle or WS_EX_LAYERED;
    if FMousePassthrough then
      Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
  end;
end;

procedure TdfsLayeredForm.CreateWnd;
begin
  inherited;
  UpdateLayeredAttrs;
end;

function TdfsLayeredForm.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

procedure TdfsLayeredForm.Loaded;
begin
  inherited;
  UpdateLayeredAttrs;
end;

procedure TdfsLayeredForm.SetMousePassthrough(const Value: boolean);
begin
  if FMousePassthrough <> Value then
  begin
    FMousePassthrough := Value;
    if HandleAllocated and not (csDesigning in ComponentState) then
      SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or
        WS_EX_TRANSPARENT);
  end;
end;

procedure TdfsLayeredForm.SetOpacity(const Value: byte);
begin
  if FOpacity <> Value then
  begin
    FOpacity := Value;
    UpdateLayeredAttrs;
  end;
end;

procedure TdfsLayeredForm.SetTransparentColor(const Value: TColor);
begin
  if FTransparentColor <> Value then
  begin
    FTransparentColor := Value;
    UpdateLayeredAttrs;
  end;
end;

procedure TdfsLayeredForm.SetUseOpacity(const Value: boolean);
begin
  if FUseOpacity <> Value then
  begin
    FUseOpacity := Value;
    UpdateLayeredAttrs;
  end;
end;

procedure TdfsLayeredForm.SetUseTransparentColor(const Value: boolean);
begin
  if FUseTransparentColor <> Value then
  begin
    FUseTransparentColor := Value;
    UpdateLayeredAttrs;
  end;
end;

procedure TdfsLayeredForm.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

procedure TdfsLayeredForm.UpdateLayeredAttrs;
var
  Color: COLORREF;
  Flags: DWORD;
begin
  if HandleAllocated and (([csLoading, csDesigning] * ComponentState) = []) then
  begin
    if UseOpacity then
      Flags := LWA_ALPHA
    else
      Flags := 0;
    if UseTransparentColor then
    begin
      Color := ColorToRGB(TransparentColor);
      Flags := Flags or LWA_COLORKEY;
    end
    else
      Color := 0;

    SetLayeredWindowAttributes(Handle, Color, FOpacity, Flags);
  end;
end;

initialization
  FDLLHandle := LoadLibrary(user32);
  FSetLayeredWindowAttrFunc := GetProcAddress(FDLLHandle,
    'SetLayeredWindowAttributes');
  FUpdateLayeredWindowFunc := GetProcAddress(FDLLHandle,
    'UpdateLayeredWindow');
finalization
  FreeLibrary(FDLLHandle);
end.
