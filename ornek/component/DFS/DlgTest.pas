{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ DlgTest v1.04                                                                }
{------------------------------------------------------------------------------}
{ Design-time testing of TCommonDialog component descendants.                  }
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
{ See DlgTest.txt for notes, known issues, and revision history.               }
{------------------------------------------------------------------------------}
{ Date last modified:  June 27, 2001                                           }
{------------------------------------------------------------------------------}

unit DlgTest;

interface

uses
  {$IFDEF DFS_NO_DSGNINTF}
  DesignIntf,
  DesignEditors;
  {$ELSE}
  DsgnIntf;
  {$ENDIF}

type
  TCommonDialogEditor = class(TDefaultEditor)
  public
    procedure ExecuteVerb(Index : Integer); override;
    function GetVerb(Index : Integer): string; override;
    function GetVerbCount : Integer; override;
    procedure Edit; override;
  end;

procedure Register;

implementation

uses Dialogs;

procedure TCommonDialogEditor.ExecuteVerb(Index: Integer);
begin
  if Index <> 0 then Exit; { We only have one verb, so exit if this ain't it }
  Edit;  { Invoke the Edit function the same as if double click had happened }
end;

function TCommonDialogEditor.GetVerb(Index: Integer): String;
begin
  Result := 'Test Dialog';  { Menu item caption for context menu }
end;

function TCommonDialogEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

type
  THackCommonDialog = class(TCommonDialog)
  end;

procedure TCommonDialogEditor.Edit;
begin
{$IFDEF DFS_COMPILER_3_UP}
  if Component is TCommonDialog then
    THackCommonDialog(Component).Execute;
{$ELSE}
  if Component is TColorDialog then
    TColorDialog(Component).Execute
  else if Component is TFindDialog then
    TFindDialog(Component).Execute
  else if Component is TReplaceDialog then
    TReplaceDialog(Component).Execute
  else if Component is TFontDialog then
    TFontDialog(Component).Execute
  else if Component is TOpenDialog then
    TOpenDialog(Component).Execute
  else if Component is TSaveDialog then
    TSaveDialog(Component).Execute
  else if Component is TPrintDialog then
    TPrintDialog(Component).Execute
  else if Component is TPrinterSetupDialog then
    TPrinterSetupDialog(Component).Execute;
  { If TCommonDialog had a virtual Execute method, we could replace all of   }
  { the above code with two lines:                                           }
  {   if Component is TCommonDialog then                                     }
  {     TCommonDialog(Component).Execute;                                    }
{$ENDIF}
end;

procedure Register;
begin
  RegisterComponentEditor(TCommonDialog, TCommonDialogEditor);
end;


end.
