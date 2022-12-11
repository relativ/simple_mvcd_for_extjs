{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ TdfsStickyForm v1.00 Beta 2                                                  }
{------------------------------------------------------------------------------}
{ A TForm descendent that makes the window behave like it wants to "stick" to  }
{ any edge of the screen, that is, when it comes within a certain number of    }
{ pixels of a screen edge, the window will jump to that edge.                  }
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
{ See DFSStickyForm.txt for notes, known issues, and revision history.         }
{------------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{------------------------------------------------------------------------------}

unit DFSStickyForm;

interface

uses
  Windows, Messages, Forms, Classes;

const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION = 'TdfsStickyForm v1.00 Beta 2';

type
  {$IFNDEF DFS_COMPILER_4_UP}
  // Not defined before Delphi and Builder 4.
  TWMSettingChange = packed record
    Msg: Cardinal;
    Flag: Integer;
    Section: PChar;
    Result: Longint;
  end;
  {$ENDIF}

  TdfsStickyObject = (soScreen, soParent, soOwner, soNothing);

  TdfsStickyForm = class(TForm)
  private
    FStuck: boolean;
    FWorkArea: TRect;
    FThreshold: integer;
    FStickTo: TdfsStickyObject;
    procedure WMWindowPosChanging(var Msg: TWMWindowPosMsg); message WM_WINDOWPOSCHANGING;
    procedure WMSettingChange(var Msg: TWMSettingChange); message WM_SETTINGCHANGE;
  protected
    function GetStickyRect: TRect; virtual;
    function GetVersion: string;
    procedure SetVersion(const Val: string);
    procedure UpdateWorkArea; virtual;
  public
    constructor Create(AOwner: TComponent); override;

    property Stuck: boolean read FStuck;
    property StickyRect: TRect read GetStickyRect;
  published
    property StickTo: TdfsStickyObject
      read FStickTo write FStickTo default soScreen;
    property Threshold: integer
      read FThreshold write FThreshold default 25;
    property Version: string
      read GetVersion write SetVersion stored FALSE;
  end;

implementation

uses
  Controls;

{ TdfsStickyForm }

constructor TdfsStickyForm.Create(AOwner: TComponent);
begin
  FStuck := FALSE;
  FStickTo := soScreen;
  FThreshold := 25;
  UpdateWorkArea;
  inherited;
end;

function TdfsStickyForm.GetStickyRect: TRect;
begin
  case StickTo of
    soScreen:
      Result := FWorkArea;
    soParent:
      if Parent <> NIL then
        Result := Parent.ClientRect
      else
        Result := FWorkArea;
    soOwner:
      if (Owner <> NIL) and (Owner is TControl) then
      begin
        Result.TopLeft := TControl(Owner).ClientToScreen(TControl(Owner).ClientRect.TopLeft);
        Result.BottomRight := TControl(Owner).ClientToScreen(TControl(Owner).ClientRect.BottomRight);
      end
      else
        Result := FWorkArea;
  else
    SetRectEmpty(Result);
  end;
end;

function TdfsStickyForm.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

procedure TdfsStickyForm.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

procedure TdfsStickyForm.UpdateWorkArea;
begin
  SystemParametersInfo(SPI_GETWORKAREA, 0, @FWorkArea, 0);
end;

procedure TdfsStickyForm.WMSettingChange(var Msg: TWMSettingChange);
begin
  UpdateWorkArea;
end;

procedure TdfsStickyForm.WMWindowPosChanging(var Msg: TWMWindowPosMsg);
var
  SR: TRect;
begin
  if StickTo <> soNothing then
  begin
    SR := StickyRect;
    with Msg.WindowPos^ do
    begin
      FStuck := FALSE;
      // check if form is inside threshold limits of border
      if x <= SR.Left + Threshold then
      begin
        x := SR.Left;
        FStuck := TRUE;
      end
      else if x + cx >= SR.Right - Threshold then
      begin
        x := SR.Right - cx;
        FStuck := TRUE;
      end;

      if y <= SR.Top + Threshold then
      begin
        y := SR.Top;
        FStuck := TRUE;
      end
      else if y + cy >= SR.Bottom - Threshold then
      begin
        y := SR.Bottom - cy;
        FStuck := TRUE;
      end;
    end;
  end;
  // else it's teflon coated, won't stick to anything.

  inherited;
end;

end.
