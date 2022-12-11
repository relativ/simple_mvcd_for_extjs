{$I DFS.INC}        { Standard defines for all Delphi Free Stuff components }

{ -----------------------------------------------------------------------------}
{ PidlHelp Unit v1.00                                                          }
{ -----------------------------------------------------------------------------}
{ System Control Pack helper unit.  Lots of utility functions for working with }
{ PItemIDList variables.                                                       }
{                                                                              }
{ Copyright 1999, Brad Stowers.  All Rights Reserved.                          }
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
{ All DFS source code is provided free of charge. As such, I can not guarantee }
{ any support whatsoever. While I do try to answer all questions that I        }
{ receive, and address all problems that are reported to me, you must          }
{ understand that I simply can not guarantee that this will always be so.      }
{                                                                              }
{ Clarifications:                                                              }
{ If you need any further information, please feel free to contact me directly.}
{ This agreement can be found online at my site in the "Miscellaneous" section.}
{------------------------------------------------------------------------------}
{ Feel free to contact me if you have any questions, comments or suggestions   }
{ at bstowers@pobox.com.                                                       }
{ The lateset version of my components are always available on the web at:     }
{   http://www.delphifreestuff.com/                                            }
{ See SCP.txt for notes, known issues, and revision history.                   }
{ -----------------------------------------------------------------------------}
{ Date last modified:  February 23, 1999                                       }
{ -----------------------------------------------------------------------------}

unit PidlHelp;

interface

uses
  {$IFDEF DFS_COMPILER_3_UP}
  ShlObj, ActiveX,
  {$ELSE}
  MyShlObj, OLE2,
  {$ENDIF}
  Windows;

type
  // These map to the SHGDN_xxx constants.  uses in GetDisplayName function.
  TDisplayNameType = (dntNormal, dntInFolder, dntForParsing);

// Create a new, empty PIDL of the given size.  Mostly useful only for the other
// helpers like CopyPIDL and ConcatPIDLs.  Result must be released with FreePIDL
function CreatePIDL(Size: UINT): PItemIDList;

// Release the system memory associated with the PIDL.  Checks for NIL first.
procedure FreePIDL(var AnID: PItemIDList);

// Returns how much memory the PIDL uses.
function GetPidlSize(pidl: PItemIDList): integer;

// Create a new PIDL by adding ID2 onto the end of ID1. Result must be Free
// with FreePIDL.
function ConcatPIDLs(ID1, ID2: PItemIDList): PItemIDList;

// Create a new PItemIDList from an existing one. Result must be released with
// FreePIDL.
function CopyPIDL(AnID: PItemIDList): PItemIDList;

// Compare two PIDLs to see if they are the same.
function ComparePIDLs(ID1, ID2: PItemIDList): boolean;

// Returns to the next ID in the given list of IDs.  The return value is only a
// pointer into the real PIDL, so don't free it or rely on it if the list is
// released.
function NextPIDL(PIDL: PItemIDList): PItemIDList;

// Returns the number of IDs in the ID list.
function PIDLCount(PIDL: PItemIDList): integer;

// Create copy of the current (first) ID from the ID list.  This is used to
// create a relative PIDL from part of a fully qualified PIDL.  The result must
// be released with FreePIDL.
function CopyFirstID(AnID: PItemIDList): PItemIDList;

// Create a copy of the last ID in the ID list.  This is used to create a
// relative PIDL from part of a fully qualified PIDL.  The result must be
// released with FreePIDL.
function CopyLastID(IDList: PItemIDList): PItemIDList;

// Create a new PIDL that contains all IDs except for the last. The result must
// be released with FreePIDL.
function CopyParentPIDL(var IDList: PItemIDList): PItemIDList;

// Return the "display name" for a PIDL.  This is the string that Explorer shows
// to the user, and it changes based on user settings.  For example, for a file
// name the extension may or may not be shown based on the user's preferences.
function GetDisplayName(const ShellFolder: IShellFolder; IDList: PItemIDList;
   NameType: TDisplayNameType): string;

// Get a PItemIDList that represents the given pathname.  The var ID parameter
// must be released with FreePIDL.
function GetPIDLFromPath(Handle: HWND; const ShellFolder: IShellFolder;
   const APath: string; var ID: PItemIDList): boolean;

// Get the image index of the PIDL in the system image list.  Use this only for
// fully qualified PIDLs.  Relative won't work.
function GetIconIndex(IDList: PItemIDList; Flags: UINT): integer;

// Get the image index of the PIDL in the system image list for normal and
// selected icons.  Use this only for fully qualified PIDLs.  Relative won't
// work.
procedure GetNormalAndSelectedIcons(IDList: PItemIDList; var Normal,
   Selected: integer);


var
  // Used throught this unit.  It's a shared thing provided by the system, so
  // this variable can be used whereever you might need it.  It's created in
  // the unit initialization and released in finalization.
  ShellMalloc: IMalloc;


implementation


uses
  ShellAPI;


function GetPidlSize(pidl: PItemIDList): integer;
begin
  Result := 0;
  if pidl <> NIL then
  begin
    Inc(Result, SizeOf(pidl^.mkid.cb));
    while pidl^.mkid.cb <> 0 do
    begin
      Inc(Result, pidl^.mkid.cb);
      Inc(longint(pidl), pidl^.mkid.cb);
    end;
  end;
end;

function CreatePIDL(Size: UINT): PItemIDList;
begin
  Result := ShellMalloc.Alloc(Size);
  if Result <> NIL then
    FillChar(Result^, Size, #0);
end;

procedure FreePIDL(var AnID: PItemIDList);
begin
  if AnID <> NIL then
  begin
    ShellMalloc.Free(AnID);
    AnID := NIL;
  end;
end;

function ConcatPIDLs(ID1, ID2: PItemIDList): PItemIDList;
var
  S1, S2: UINT;
begin
  if (ID1 <> NIL) then
    S1 := GetPIDLSize(ID1) - SizeOf(ID1.mkid.cb)
  else
    S1 := 0;
  S2 := GetPIDLSize(ID2);

  Result := CreatePIDL(S1 + S2);
  if Result <> NIL then
  begin
    if (ID1 <> NIL) then
      Move(ID1^, Result^, S1);
    Move(ID2^, PChar(Result)[S1], S2);
  end;
end;

// Create a new PItemIDList from existing.  Call responsible for freeing it.
function CopyPIDL(AnID: PItemIDList): PItemIDList;
var
  Size: integer;
begin
  Size := GetPidlSize(AnID);
  if Size > 0 then
  begin
    Result := ShellMalloc.Alloc(Size); // Create the memory
    FillChar(Result^, Size, #0); // Initialize the memory to zero
    Move(AnID^, Result^, Size); // Copy the current ID
  end else
    Result := NIL;
end;

function ComparePIDLs(ID1, ID2: PItemIDList): boolean;
var
  S1, S2, x: UINT;
begin
  Result := FALSE;
  if (ID1 = NIL) and (ID2 = NIL) then
  begin
    Result := TRUE;
    exit;
  end;
  if (ID1 = NIL) or (ID2 = NIL) then exit;

  S1 := GetPIDLSize(ID1);
  S2 := GetPIDLSize(ID2);
  if S1 <> S2 then exit;

  Result := TRUE;
  for x := 0 to pred(S1) do
  begin
    if PChar(ID1)[x] <> PChar(ID2)[x] then
    begin
      Result := FALSE;
      exit;
    end;
  end;
end;

// Returns to the next ID in the given list of IDs
function NextPIDL(PIDL: PItemIDList): PItemIDList;
begin
  if PIDL.mkid.cb > 0 then
    Result := PItemIDList(Longint(PIDL) + PIDL.mkid.cb)
  else // At end of list.
    Result := NIL;
end;

// Returns the number of IDs in the ID list.
function PIDLCount(PIDL: PItemIDList): integer;
begin
  Result := 0;
  if PIDL <> NIL then
  begin
    while PIDL.mkid.cb > 0 do
    begin
      PIDL := NextPIDL(PIDL);
      inc(Result);
    end;
  end;
end;

// Create copy of the current ID from the ID list.  This is used to create a
// relative PIDL from part of a fully qualified PIDL.
function CopyFirstID(AnID: PItemIDList): PItemIDList;
var
  Size: integer;
begin
  // How much memory do we need?  Note that this allocates enough memory for
  // the current ID, plus enough for the mkid.cb member of another one.  The
  // extra is used as the "termintor" of the PIDL.  It is set to zero in the
  // FillChar below.
  Size := AnID.mkid.cb + SizeOf(AnID.mkid.cb);
  Result := ShellMalloc.Alloc(Size); // Create the memory
  if Result = NIL then exit; // If the shell couldn't allocate memory, get out
  FillChar(Result^, Size, #0); // Initialize the memory to zero
  Move(AnID^, Result^, AnID.mkid.cb); // Copy the current ID
end;

function CopyLastID(IDList: PItemIDList): PItemIDList;
var
  MarkerID: PItemIDList;
begin
  Result := NIL;
  MarkerID := IDList;
  if IDList <> NIL then
  begin
    while IDList.mkid.cb <> 0 do
    begin
      MarkerID := IDList;
      IDList := NextPIDL(IDList);
    end;
    Result := CopyPIDL(MarkerID);
  end;
end;

function CopyParentPIDL(var IDList: PItemIDList): PItemIDList;
var
  Last, Size: integer;
  Source: PItemIDList;
begin
  Size := 0;
  Last := 0;
  if IDList <> NIL then
  begin
    Source := IDList;
    Inc(Size, SizeOf(Source^.mkid.cb));
    while Source^.mkid.cb <> 0 do
    begin
      Last := Source^.mkid.cb;
      Inc(Size, Source^.mkid.cb);
      Inc(Longint(Source), Source^.mkid.cb);
    end;
    Dec(Size, Last);
  end;

  if Size > 0 then
  begin
    Result := ShellMalloc.Alloc(Size); // Create the memory
    FillChar(Result^, Size, #0); // Initialize the memory to zero
    Move(IDList^, Result^, Size - SizeOf(Source^.mkid.cb)); // Copy the current ID
  end else
    Result := NIL;
end;

function GetDisplayName(const ShellFolder: IShellFolder; IDList: PItemIDList;
   NameType: TDisplayNameType): string;
const
  NAMETYPEAPI: array[TDisplayNameType] of DWORD = (SHGDN_NORMAL, SHGDN_INFOLDER,
     SHGDN_FORPARSING);
var
  Str: TStrRet;
begin
  if ShellFolder.GetDisplayNameOf(IDList, NAMETYPEAPI[NameType],
     Str) = NOERROR then
  begin
    case Str.uType of
      STRRET_WSTR:   Result := WideCharToString(Str.pOleStr);
      STRRET_OFFSET: Result := PChar(UINT(IDList) + Str.uOffset);
      STRRET_CSTR:   Result := Str.cStr;
    else
      Result := '';
    end;
  end else
    Result := '';
end;

function GetPIDLFromPath(Handle: HWND; const ShellFolder: IShellFolder;
   const APath: string; var ID: PItemIDList): boolean;
var
  OLEStr: array[0..MAX_PATH] of TOLEChar;
  Eaten: ULONG;
  Attr: ULONG;
begin
  try
    Result := Succeeded(ShellFolder.ParseDisplayName(Handle, NIL,
       StringToWideChar(APath, OLEStr, MAX_PATH), Eaten, ID, Attr));
  except
    Result := FALSE;
  end;
end;


// Use this only for fully qualified PIDLs.  Relative won't work.
function GetIconIndex(IDList: PItemIDList; Flags: UINT): integer;
var
  SFI: TSHFileInfo;
begin
  if SHGetFileInfo(PChar(IDList), 0, SFI, SizeOf(TSHFileInfo), Flags) = 0 then
    Result := -1
  else
    Result := SFI.iIcon;
end;

// Use this only for fully qualified PIDLs.  Relative won't work.
procedure GetNormalAndSelectedIcons(IDList: PItemIDList; var Normal,
   Selected: integer);
begin
  Normal := GetIconIndex(IDList, SHGFI_PIDL or SHGFI_SYSICONINDEX or
     SHGFI_SMALLICON);
  Selected := GetIconIndex(IDList, SHGFI_PIDL or SHGFI_SYSICONINDEX or
     SHGFI_SMALLICON or SHGFI_OPENICON);
end;


initialization
  // Get the shell memory allocation interface that everyone uses.
  SHGetMalloc(ShellMalloc);

finalization
  // Release the shell memory allocation interface.
{$IFDEF DFS_COMPILER_2}
  ShellMalloc.Release;
{$ENDIF}

end.


