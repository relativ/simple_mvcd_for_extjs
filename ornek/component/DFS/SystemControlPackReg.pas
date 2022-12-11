{$I DFS.INC}                    { Defines for all Delphi Free Stuff components }
{$I SYSTEMCONTROLPACK.INC}      { Defines specific to these components }

{ -----------------------------------------------------------------------------}
{ System Control Pack                                                          }
{ -----------------------------------------------------------------------------}
{ A set of components that allow you to emulate most of the Windows Explorer   }
{ behavior.  Included is a treeview, listview and combobox.  This unit         }
{ registers the components for use in the IDE.                                 }
{                                                                              }
{ Copyright 1999-2001, Brad Stowers.  All Rights Reserved.                     }
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

unit SystemControlPackReg;

interface

procedure Register;

implementation

uses
  {$IFDEF DFS_NO_DSGNINTF}
  DesignIntf,
  DesignEditors,
  {$ELSE}
  DsgnIntf,
  {$ENDIF}
  {$IFDEF DFS_SCP_SYSTREEVIEW}
  SystemTreeView,
  {$ENDIF}
  {$IFDEF DFS_SCP_SYSLISTVIEW}
  SystemListView,
  {$ENDIF}
  {$IFDEF DFS_SCP_SYSCOMBOBOX}
  SystemComboBox,
  {$ENDIF}
  DFSAbout, Classes;

procedure Register;
begin
{$IFDEF DFS_SCP_SYSTREEVIEW}
  RegisterComponents('DFS', [TdfsSystemTreeView]);
  RegisterPropertyEditor(TypeInfo(string), TdfsSystemTreeView, 'Version',
     TDFSVersionProperty);
{$ENDIF}
{$IFDEF DFS_SCP_SYSLISTVIEW}
  RegisterComponents('DFS', [TdfsSystemListView]);
  RegisterPropertyEditor(TypeInfo(string), TdfsSystemListView, 'Version',
     TDFSVersionProperty);
{$ENDIF}
{$IFDEF DFS_SCP_SYSCOMBOBOX}
  RegisterComponents('DFS', [TdfsSystemComboBox]);
  RegisterPropertyEditor(TypeInfo(string), TdfsSystemComboBox, 'Version',
     TDFSVersionProperty);
{$ENDIF}
end;


end.
