{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ TdfsPageSetupDialog v2.14                                                    }
{------------------------------------------------------------------------------}
{ A component to wrap the Win95 PageSetupDlg common dialog API function.       }
{ Borland seems to have forgotten this new common dialog in Delphi 2.0.        }
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
{ See PgSetup.txt for notes, known issues, and revision history.               }
{------------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{------------------------------------------------------------------------------}


// Make sure we have RTTI available for the TPSRect class below.
{$M+}

unit PgSetup;

interface

{$IFNDEF DFS_WIN32}
  ERROR!  This unit only available for Delphi 2.0 or later!!!
{$ENDIF}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
{$IFDEF DFS_DEBUG}
  mmsystem,
{$ENDIF}
  CommDlg;


const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION = 'TdfsPageSetupDialog v2.14';

type
  TPageSetupOption = (
       poDefaultMinMargins, poDisableMargins, poDisableOrientation,
       poDisablePagePainting, poDisablePaper, poDisablePrinter, poNoWarning,
       poShowHelp
     );
  TPageSetupOptions = set of TPageSetupOption;
  TPSPaperType = (ptPaper, ptEnvelope);
  TPSPaperOrientation = (poPortrait, poLandscape);
  TPSPrinterType = (ptDotMatrix, ptHPPCL);
  TPSPaintWhat = (pwFullPage, pwMinimumMargins, pwMargins,
                  pwGreekText, pwEnvStamp, pwYAFullPage);

  TPSMeasureVal = Double;
  TPSMeasurements = (pmDefault, pmMillimeters, pmInches);
  TPSPrinterEvent = procedure(Sender: TObject; Wnd: HWND) of object;

  (* PPSDlgData is simply redeclared as PPageSetupDlg (COMMDLG.PAS) to prevent
     compile errors in units that have this event.  They won't compile unless
     you add CommDlg to their units.  This circumvents the problem.           *)
  PPSDlgData = ^TPSDlgData;
  TPSDlgData = TPageSetupDlg;
  { PaperSize: See DEVMODE help topic, dmPaperSize member. DMPAPER_* constants.}
  TPSInitPaintPageEvent = function(Sender: TObject; PaperSize: short;
     PaperType: TPSPaperType; PaperOrientation: TPSPaperOrientation;
     PrinterType: TPSPrinterType; pSetupData: PPSDlgData): boolean of object;
  TPSPaintPageEvent = function(Sender: TObject; PaintWhat: TPSPaintWhat;
     Canvas: TCanvas; Rect: TRect): boolean of object;

  (* TPSRect is used for published properties that would normally be of TRect
     type.  Can't publish properties that are record types, so this is used.  *)
  TPSRect = class(TPersistent)
  private
    FRect: TRect;

    {$IFDEF DFS_CPPB_4_UP}
    function GetLeft: integer;
    procedure SetLeft(Value: integer);
    function GetRight: integer;
    procedure SetRight(Value: integer);
    function GetTop: integer;
    procedure SetTop(Value: integer);
    function GetBottom: integer;
    procedure SetBottom(Value: integer);
    {$ENDIF}
  public
    function Compare(Other: TPSRect): boolean;

    property Rect: TRect
       read FRect
       write FRect;
  published
    property Left: integer
       read {$IFDEF DFS_CPPB_4_UP} GetLeft {$ELSE} FRect.Left {$ENDIF}
       write {$IFDEF DFS_CPPB_4_UP} SetLeft {$ELSE} FRect.Left {$ENDIF};
    property Right: integer
       read {$IFDEF DFS_CPPB_4_UP} GetRight {$ELSE} FRect.Right {$ENDIF}
       write {$IFDEF DFS_CPPB_4_UP} SetRight {$ELSE} FRect.Right {$ENDIF};
    property Top: integer
       read {$IFDEF DFS_CPPB_4_UP} GetTop {$ELSE} FRect.Top {$ENDIF}
       write {$IFDEF DFS_CPPB_4_UP} SetTop {$ELSE} FRect.Top {$ENDIF};
    property Bottom: integer
       read {$IFDEF DFS_CPPB_4_UP} GetBottom {$ELSE} FRect.Bottom {$ENDIF}
       write {$IFDEF DFS_CPPB_4_UP} SetBottom {$ELSE} FRect.Bottom {$ENDIF};
  end;

  (* TPSPoint is needed for the same reason as TPSRect above.                 *)
  TPSPoint = class(TPersistent)
  private
    FPoint: TPoint;
  protected
    function GetX: longint;
    procedure SetX(Val: longint);
    function GetY: longint;
    procedure SetY(Val: longint);
  public
    function Compare(Other: TPSPoint): boolean;

    property Point: TPoint
       read FPoint
       write FPoint;
  published
    property X: longint
       read GetX
       write SetX;
    property Y: longint
       read GetY
       write SetY;
  end;


  TdfsPageSetupDialog = class(TCommonDialog)
  private
    FGettingDefaults: boolean;
    FCentered: boolean;
    FOptions: TPageSetupOptions;
    FCustomData: LPARAM;
    FPaperSize: TPSPoint;
    FMinimumMargins: TPSRect;
    FMargins: TPSRect;
    FMeasurements: TPSMeasurements;
    FOnPrinter: TPSPrinterEvent;
    FOnInitPaintPage: TPSInitPaintPageEvent;
    FOnPaintPage: TPSPaintPageEvent;

    function DoPrinter(Wnd: HWND): boolean;
    function DoExecute(Func: pointer): boolean;
  protected
    procedure SetName(const NewName: TComponentName); override;
    function Printer(Wnd: HWND): boolean; virtual;

    procedure SetPaperSize(const Val: TPSPoint);
    function StorePaperSize: boolean;
    procedure SetMinimumMargins(const Val: TPSRect);
    function StoreMinimumMargins: boolean;
    procedure SetMargins(const Val: TPSRect);
    function StoreMargins: boolean;
    procedure SetMeasurements(Val: TPSMeasurements);
    function GetDefaultMeasurements: TPSMeasurements;
    function GetCurrentMeasurements: TPSMeasurements;
    function GetVersion: string;
    procedure SetVersion(const Val: string);
    function GetPaperSizeType: short;
    procedure SetPaperSizeType(Value: short);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Delphi and C++Builder 3 finally got it right! }
    function Execute: boolean;
       {$IFDEF DFS_COMPILER_3_UP} override; {$ELSE} virtual; {$ENDIF}
    function ReadCurrentValues: boolean; virtual;
    function FromMeasurementVal(Val: integer): TPSMeasureVal;
    function ToMeasurementVal(Val: TPSMeasureVal): integer;

    { Did the user select a user-defined size? }
    property PaperSizeType: SHORT
       read GetPaperSizeType
       write SetPaperSizeType;
    { How does the user's system like to measure things? }
    property DefaultMeasurements: TPSMeasurements
       read GetDefaultMeasurements;
    { What are we using currently, i.e. translate pmDefault value }
    property CurrentMeasurements: TPSMeasurements
       read GetCurrentMeasurements;

    { It is the user's responsibility to clean up this pointer if necessary. }
    property CustomData: LPARAM
       read FCustomData
       write FCustomData;
  published
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    // Measurements property has to be declared before PaperSize, MinimumMargins
    // and Margins because of streaming quirks.
    property Measurements: TPSMeasurements
       read FMeasurements
       write SetMeasurements
       nodefault;

    property PaperSize: TPSPoint
       read FPaperSize
       write SetPaperSize
       stored StorePaperSize;
    property MinimumMargins: TPSRect
       read FMinimumMargins
       write SetMinimumMargins
       stored StoreMinimumMargins;
    property Margins: TPSRect
       read FMargins
       write SetMargins
       stored StoreMargins;

    property Centered: boolean
       read FCentered
       write FCentered
       default TRUE;
    property Options: TPageSetupOptions
       read FOptions
       write FOptions
       default [poDefaultMinMargins, poShowHelp];

    { Events }
    property OnPrinter: TPSPrinterEvent
       read FOnPrinter
       write FOnPrinter;
    property OnInitPaintPage: TPSInitPaintPageEvent
       read FOnInitPaintPage
       write FOnInitPaintPage;
    property OnPaintPage: TPSPaintPageEvent
       read FOnPaintPage
       write FOnPaintPage;
  end;

implementation

uses
{$IFDEF DFS_COMPILER_3_UP}
  Dlgs,
{$ENDIF}
  Printers;

const
  IDPRINTERBTN = {$IFDEF DFS_COMPILER_3_UP} Dlgs.psh3 {$ELSE} $0402 {$ENDIF};

{ Private globals }
var
  NeedInitGlobals: boolean;
  HelpMsg: Integer;
  DefPaperSizeI: TPSPoint;
  DefMinimumMarginsI: TPSRect;
  DefMarginsI: TPSRect;
  DefPaperSizeM: TPSPoint;
  DefMinimumMarginsM: TPSRect;
  DefMarginsM: TPSRect;
  HookCtl3D: boolean;
  PageSetupDialog: TdfsPageSetupDialog;


procedure InitGlobals; forward;

{ Center the given window on the screen }
procedure CenterWindow(Wnd: HWnd);
var
  Rect: TRect;
begin
  GetWindowRect(Wnd, Rect);
  SetWindowPos(Wnd, 0,
     (GetSystemMetrics(SM_CXSCREEN) - Rect.Right + Rect.Left) div 2,
     (GetSystemMetrics(SM_CYSCREEN) - Rect.Bottom + Rect.Top) div 3,
     0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;

{ Generic dialog hook. Centers the dialog on the screen in response to
  the WM_INITDIALOG message }
function DialogHook(Wnd: HWnd; Msg: UINT; WParam: WPARAM; LParam: LPARAM): UINT; stdcall;
begin
  Result := 0;
  case Msg of
    WM_INITDIALOG:
      begin
        {$IFNDEF DFS_COMPILER_5_UP}
        if HookCtl3D then
        begin
          // These were only stubbed in D5, and deprecated in D6.
          Subclass3DDlg(Wnd, CTL3D_ALL);
          SetAutoSubClass(True);
        end;
        {$ENDIF}
        if PageSetupDialog.Centered then
          CenterWindow(Wnd);
        Result := 1;
      end;
    {$IFNDEF DFS_COMPILER_5_UP}
    WM_DESTROY:
      if HookCtl3D then
        SetAutoSubClass(False);
    {$ENDIF}
  end;
end;

function PageSetupDialogHook(Wnd: HWnd; Msg: UINT; WParam: WPARAM;
                             LParam: LPARAM): UINT; stdcall;
const
  PagePaintWhat: array[WM_PSD_FULLPAGERECT..
                       WM_PSD_YAFULLPAGERECT] of TPSPaintWhat = (
    pwFullPage, pwMinimumMargins, pwMargins,
    pwGreekText, pwEnvStamp, pwYAFullPage
  );
  PRINTER_MASK = $00000002;
  ORIENT_MASK  = $00000004;
  PAPER_MASK   = $00000008;
var
  PaperData: word;
  Paper: TPSPaperType;
  Orient: TPSPaperOrientation;
  Printer: TPSPrinterType;
  PaintRect: TRect;
  PaintCanvas: TCanvas;
begin
  if (Msg = WM_COMMAND) and (LongRec(WParam).Lo = IDPRINTERBTN) and
     (LongRec(WParam).Hi = BN_CLICKED) then
  begin
    // if hander is assigned, use it.  If not, let system do it.
    Result := ord(PageSetupDialog.DoPrinter(Wnd));
  end else begin
    if assigned(PageSetupDialog.FOnInitPaintPage) and
       assigned(PageSetupDialog.FOnPaintPage) then
    begin
      case Msg of
        WM_PSD_PAGESETUPDLG:
          begin
            PaperData := HiWord(WParam);
            if (PaperData AND PAPER_MASK > 0) then
              Paper := ptEnvelope
            else
              Paper := ptPaper;
            if (PaperData AND ORIENT_MASK > 0) then
              Orient := poPortrait
            else
              Orient := poLandscape;
            if (PaperData AND PAPER_MASK > 0) then
              Printer := ptHPPCL
            else
              Printer := ptDotMatrix;
            Result := Ord(PageSetupDialog.FOnInitPaintPage(PageSetupDialog,
               LoWord(WParam), Paper, Orient, Printer, PPSDlgData(LParam)));
          end;
        WM_PSD_FULLPAGERECT,
        WM_PSD_MINMARGINRECT,
        WM_PSD_MARGINRECT,
        WM_PSD_GREEKTEXTRECT,
        WM_PSD_ENVSTAMPRECT,
        WM_PSD_YAFULLPAGERECT:
          begin
            if LParam <> 0 then
              PaintRect := PRect(LParam)^
            else
              PaintRect := Rect(0,0,0,0);
            PaintCanvas := TCanvas.Create;
            PaintCanvas.Handle := HDC(WParam);
            try
              Result := Ord(PageSetupDialog.FOnPaintPage(PageSetupDialog,
                 PagePaintWhat[Msg], PaintCanvas, PaintRect));
            finally
              PaintCanvas.Free;   { This better not be deleting the DC! }
            end;
          end;
      else
        Result := DialogHook(Wnd, Msg, wParam, lParam);
      end;
    end else
      Result := DialogHook(Wnd, Msg, wParam, lParam);
  end;
end;


{$IFDEF DFS_CPPB_4_UP}
function TPSRect.GetLeft: integer;
begin
  Result := FRect.Left;
end;

procedure TPSRect.SetLeft(Value: integer);
begin
  FRect.Left := Value;
end;

function TPSRect.GetRight: integer;
begin
  Result := FRect.Right;
end;

procedure TPSRect.SetRight(Value: integer);
begin
  FRect.Right := Value;
end;

function TPSRect.GetTop: integer;
begin
  Result := FRect.Top;
end;

procedure TPSRect.SetTop(Value: integer);
begin
  FRect.Top := Value;
end;

function TPSRect.GetBottom: integer;
begin
  Result := FRect.Bottom;
end;

procedure TPSRect.SetBottom(Value: integer);
begin
  FRect.Bottom := Value;
end;

{$ENDIF}

function TPSRect.Compare(Other: TPSRect): boolean;
begin
  Result := EqualRect(Rect, Other.Rect);
end;

function TPSPoint.Compare(Other: TPSPoint): boolean;
begin
  Result := (X = Other.X) and (Y = Other.Y);
end;

function TPSPoint.GetX: longint;
begin
  Result := FPoint.X;
end;

procedure TPSPoint.SetX(Val: longint);
begin
  FPoint.X := Val;
end;

function TPSPoint.GetY: longint;
begin
  Result := FPoint.Y;
end;

procedure TPSPoint.SetY(Val: longint);
begin
  FPoint.Y := Val;
end;



constructor TdfsPageSetupDialog.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  InitGlobals;
  FCentered := TRUE;
  FOptions := [poDefaultMinMargins, poShowHelp];
  FOnPrinter := NIL;
  FOnInitPaintPage := NIL;
  FOnPaintPage := NIL;
  FCustomData := 0;
  FMeasurements := pmDefault;
  FPaperSize := TPSPoint.Create;
  FMinimumMargins := TPSRect.Create;
  FMargins := TPSRect.Create;
  if CurrentMeasurements = pmInches then
  begin
    FPaperSize.Point := DefPaperSizeI.Point;
    FMinimumMargins.Rect := DefMinimumMarginsI.Rect;
    FMargins.Rect := DefMarginsI.Rect;
  end else begin
    FPaperSize.Point := DefPaperSizeM.Point;
    FMinimumMargins.Rect := DefMinimumMarginsM.Rect;
    FMargins.Rect := DefMarginsM.Rect;
  end;
end;

destructor TdfsPageSetupDialog.Destroy;
begin
  FPaperSize.Free;
  FMinimumMargins.Free;
  FMargins.Free;

  inherited Destroy;
end;

procedure TdfsPageSetupDialog.SetName(const NewName: TComponentName);
begin
  inherited Setname(NewName);
  if not (csLoading in ComponentState) then
    ReadCurrentValues;
end;

procedure TdfsPageSetupDialog.SetPaperSize(const Val: TPSPoint);
begin
  FPaperSize.Point := Val.Point;
end;

function TdfsPageSetupDialog.StorePaperSize: boolean;
begin
  if CurrentMeasurements = pmInches then
    Result := not PaperSize.Compare(DefPaperSizeI)
  else
    Result := not PaperSize.Compare(DefPaperSizeM);
end;

procedure TdfsPageSetupDialog.SetMinimumMargins(const Val: TPSRect);
begin
  FMinimumMargins.Rect := Val.Rect;
end;

function TdfsPageSetupDialog.StoreMinimumMargins: boolean;
begin
  if CurrentMeasurements = pmInches then
    Result := not MinimumMargins.Compare(DefMinimumMarginsI)
  else
    Result := not MinimumMargins.Compare(DefMinimumMarginsM);
end;

procedure TdfsPageSetupDialog.SetMargins(const Val: TPSRect);
begin
  FMargins.Rect := Val.Rect;
end;

function TdfsPageSetupDialog.StoreMargins: boolean;
begin
  if CurrentMeasurements = pmInches then
    Result := not Margins.Compare(DefMarginsI)
  else
    Result := not Margins.Compare(DefMarginsM);
end;

procedure TdfsPageSetupDialog.SetMeasurements(Val: TPSMeasurements);
var
  TempVal: TPSMeasurements;
begin
  if Val = pmDefault then
    TempVal := DefaultMeasurements
  else
    TempVal := Val;
  if CurrentMeasurements <> TempVal then
  begin
    if TempVal = pmInches then
    begin
      // Convert to thousandths of an inch
      PaperSize.X := Round(PaperSize.X / 2.54);
      PaperSize.Y := Round(PaperSize.Y / 2.54);
      MinimumMargins.Top := Round(MinimumMargins.Top / 2.54);
      MinimumMargins.Left := Round(MinimumMargins.Left / 2.54);
      MinimumMargins.Right := Round(MinimumMargins.Right / 2.54);
      MinimumMargins.Bottom := Round(MinimumMargins.Bottom / 2.54);
      Margins.Top := Round(Margins.Top / 2.54);
      Margins.Left := Round(Margins.Left / 2.54);
      Margins.Right := Round(Margins.Right / 2.54);
      Margins.Bottom := Round(Margins.Bottom / 2.54);
    end else begin
      // Convert to millimeters
      PaperSize.X := Round(PaperSize.X * 2.54);
      PaperSize.Y := Round(PaperSize.Y * 2.54);
      MinimumMargins.Top := Round(MinimumMargins.Top * 2.54);
      MinimumMargins.Left := Round(MinimumMargins.Left * 2.54);
      MinimumMargins.Right := Round(MinimumMargins.Right * 2.54);
      MinimumMargins.Bottom := Round(MinimumMargins.Bottom * 2.54);
      Margins.Top := Round(Margins.Top * 2.54);
      Margins.Left := Round(Margins.Left * 2.54);
      Margins.Right := Round(Margins.Right * 2.54);
      Margins.Bottom := Round(Margins.Bottom * 2.54);
    end;
  end;
  FMeasurements := Val;
  if not (csLoading in ComponentState) then
    ReadCurrentValues;
end;

function TdfsPageSetupDialog.GetDefaultMeasurements: TPSMeasurements;
begin
  if GetLocaleChar(LOCALE_USER_DEFAULT,LOCALE_IMEASURE,'0') = '0' then
    Result:= pmMillimeters
  else
    Result:= pmInches;
end;

function TdfsPageSetupDialog.GetCurrentMeasurements: TPSMeasurements;
begin
  if FMeasurements = pmDefault then
    Result := DefaultMeasurements
  else
    Result := FMeasurements;
end;

procedure GetPrinter(var DeviceMode, DeviceNames: THandle);
var
  Device, Driver, Port: array[0..79] of char;
  DevNames: PDevNames;
  Offset: PChar;
begin
  Printer.GetPrinter(Device, Driver, Port, DeviceMode);
  if DeviceMode <> 0 then
  begin
    DeviceNames := GlobalAlloc(GHND, SizeOf(TDevNames) + StrLen(Device) +
       StrLen(Driver) + StrLen(Port) + 3);
    DevNames := PDevNames(GlobalLock(DeviceNames));
    try
      Offset := PChar(DevNames) + SizeOf(TDevnames);
      with DevNames^ do
      begin
        wDriverOffset := Longint(Offset) - Longint(DevNames);
        Offset := StrECopy(Offset, Driver) + 1;
        wDeviceOffset := Longint(Offset) - Longint(DevNames);
        Offset := StrECopy(Offset, Device) + 1;
        wOutputOffset := Longint(Offset) - Longint(DevNames);;
        StrCopy(Offset, Port);
      end;
    finally
      GlobalUnlock(DeviceNames);
    end;
  end;
end;

procedure SetPrinter(DeviceMode, DeviceNames: THandle);
var
  DevNames: PDevNames;
begin
  DevNames := PDevNames(GlobalLock(DeviceNames));
  try
    with DevNames^ do
      Printer.SetPrinter(PChar(DevNames) + wDeviceOffset, PChar(DevNames) +
         wDriverOffset, PChar(DevNames) + wOutputOffset, DeviceMode);
  finally
    GlobalUnlock(DeviceNames);
    GlobalFree(DeviceNames);
  end;
end;

function CopyData(Handle: THandle): THandle;
var
  Src, Dest: PChar;
  Size: Integer;
begin
  if Handle <> 0 then
  begin
    Size := GlobalSize(Handle);
    Result := GlobalAlloc(GHND, Size);
    if Result <> 0 then
      try
        Src := GlobalLock(Handle);
        Dest := GlobalLock(Result);
        if (Src <> nil) and (Dest <> nil) then
           Move(Src^, Dest^, Size);
      finally
        GlobalUnlock(Handle);
        GlobalUnlock(Result);
      end
  end else
    Result := 0;
end;

function TdfsPageSetupDialog.DoExecute(Func: pointer): boolean;
const
  PageSetupOptions: array [TPageSetupOption] of DWORD = (
     PSD_DEFAULTMINMARGINS, PSD_DISABLEMARGINS, PSD_DISABLEORIENTATION,
     PSD_DISABLEPAGEPAINTING, PSD_DISABLEPAPER, PSD_DISABLEPRINTER,
     PSD_NOWARNING, PSD_SHOWHELP
    );
  PageSetupMeasurements: array [TPSMeasurements] of DWORD = (
     0, PSD_INHUNDREDTHSOFMILLIMETERS, PSD_INTHOUSANDTHSOFINCHES
    );
var
  Option: TPageSetupOption;
  PageSetup: TPageSetupDlg;
  SavePageSetupDialog: TdfsPageSetupDialog;
  DevHandle: THandle;
begin
  FillChar(PageSetup, SizeOf(PageSetup), 0);
  with PageSetup do
  try
    // Make sure the user has a printer installed.  If not, calling PageSetupDlg
    // will cause an error message to be displayed, so we'll avoid that.
    if FGettingDefaults and (Printers.Printer.Printers.Count < 1) then
    begin
      // No printer installed, just fill with some semi-reasonable default values
      ptPaperSize := Point(8500, 11000); // 8 1/2" X 11" letter size
      rtMinMargin := Rect(250, 250, 250, 250); // 1/4"
      rtMargin := rtMinMargin; // 1/4"
      Result := TRUE;
    end else begin
      {$IFDEF DFS_COMPILER_2}
      hInstance := System.HInstance;
      {$ELSE}
      hInstance := SysInit.HInstance;
      {$ENDIF}
      lStructSize := SizeOf(TPageSetupDlg);

      if FGettingDefaults then
      begin
        // Using millimeters always fails to retreive margins and minimum margins.
        // Only inches seems to work so I use that and convert.
        Flags := PSD_MARGINS or PSD_DEFAULTMINMARGINS or PSD_RETURNDEFAULT or
           PSD_INTHOUSANDTHSOFINCHES;
      end else begin
        Flags := PSD_MARGINS;
        Flags := Flags OR PageSetupMeasurements[CurrentMeasurements];
        if not (poDefaultMinMargins in FOptions) then
          Flags := Flags or PSD_MINMARGINS;

        if assigned(FOnPrinter) or assigned(FOnInitPaintPage) or
           assigned(FOnPaintPage) or FCentered then
        begin
          Flags := Flags or PSD_ENABLEPAGESETUPHOOK;
          lpfnPageSetupHook := PageSetupDialogHook;
        end;

        for Option := Low(Option) to High(Option) do
          if Option in FOptions then
            Flags := Flags OR PageSetupOptions[Option];
    {    if not assigned(FOnPrinter) then
          Flags := Flags OR PSD_DISABLEPRINTER;}
        if assigned(FOnInitPaintPage) and assigned(FOnPaintPage) then
        begin
          Flags := Flags OR PSD_ENABLEPAGEPAINTHOOK;
          lpfnPagePaintHook := PageSetupDialogHook;
        end;
        HookCtl3D := Ctl3D;
        lCustData := FCustomData;

        GetPrinter(DevHandle, hDevNames);
        hDevMode := CopyData(DevHandle);

        // This appears to do nothing.
        ptPaperSize := FPaperSize.Point;
        rtMinMargin := FMinimumMargins.Rect;
        rtMargin := FMargins.Rect;
        if (Flags and PSD_MINMARGINS) <> 0 then
        begin
          // rtMargin can not be smaller than rtMinMargin or dialog call will fail!
          if rtMargin.Left < rtMinMargin.Left then
            rtMargin.Left := rtMinMargin.Left;
          if rtMargin.Right < rtMinMargin.Right then
            rtMargin.Right := rtMinMargin.Right;
          if rtMargin.Top < rtMinMargin.Top then
            rtMargin.Top := rtMinMargin.Top;
          if rtMargin.Bottom < rtMinMargin.Bottom then
            rtMargin.Bottom := rtMinMargin.Bottom;
        end;
      end;

      hWndOwner := Application.Handle;

      SavePageSetupDialog := PageSetupDialog;
      PageSetupDialog := Self;
      if FGettingDefaults then
        Result := PageSetupDlg(PageSetup)
      else
        Result := TaskModalDialog(Func, PageSetup);
      PageSetupDialog := SavePageSetupDialog;
    end;

    if Result then
    begin
      // don't stomp on values that don't match defaults!
      if FGettingDefaults and (CurrentMeasurements = pmMillimeters) then
      begin
        // Defaults are always retreived in inches because the API won't
        // cooperate with defaults in millimeters.  Have to convert by hand.
        if (csLoading in ComponentState) or
           (DefPaperSizeM.Compare(FPaperSize)) then
        begin
          FPaperSize.X := Round(ptPaperSize.X * 2.54);
          FPaperSize.Y := Round(ptPaperSize.Y * 2.54);
        end;
        if (csLoading in ComponentState) or
           (DefMinimumMarginsM.Compare(FMinimumMargins)) then
        begin
          FMinimumMargins.Left := Round(rtMinMargin.Left * 2.54);
          FMinimumMargins.Top := Round(rtMinMargin.Top * 2.54);
          FMinimumMargins.Right := Round(rtMinMargin.Right * 2.54);
          FMinimumMargins.Bottom := Round(rtMinMargin.Bottom * 2.54);
        end;
        if (csLoading in ComponentState) or
           (DefMarginsM.Compare(FMargins)) then
        begin
          FMargins.Left := Round(rtMargin.Left * 2.54);
          FMargins.Top := Round(rtMargin.Top * 2.54);
          FMargins.Right := Round(rtMargin.Right * 2.54);
          FMargins.Bottom := Round(rtMargin.Bottom * 2.54);
        end;
      end else begin
        FPaperSize.Point := ptPaperSize;
        FMinimumMargins.Rect := rtMinMargin;
        FMargins.Rect := rtMargin;
      end;

      // Only do this if not getting defaults
      if not FGettingDefaults then
        SetPrinter(hDevMode, hDevNames);
    end else begin
      if hDevMode <> 0 then GlobalFree(hDevMode);
      if hDevNames <> 0 then GlobalFree(hDevNames);
    end;
  finally
    { Nothing yet }
  end;
end;

function TdfsPageSetupDialog.ReadCurrentValues: boolean;
begin
  FGettingDefaults := TRUE;
  try
    Result := DoExecute(@PageSetupDlg)
  finally
    FGettingDefaults := FALSE;
  end;
end;

const
  MeasurementsDiv : array [pmMillimeters..pmInches] of TPSMeasureVal = (
     100.0,1000.0
  );

function TdfsPageSetupDialog.FromMeasurementVal(Val: integer): TPSMeasureVal;
begin
  Result := Val / MeasurementsDiv[CurrentMeasurements];
end;

function TdfsPageSetupDialog.ToMeasurementVal(Val: TPSMeasureVal): integer;
const
  MeasurementsDiv : array [pmMillimeters..pmInches] of TPSMeasureVal = (
     100.0,1000.0
  );
begin
  Result := Round(Val * MeasurementsDiv[CurrentMeasurements]);
end;

function TdfsPageSetupDialog.Execute: boolean;
begin
  FGettingDefaults := FALSE; // just in case
  Result := DoExecute(@PageSetupDlg);
end;

function TdfsPageSetupDialog.Printer(Wnd: HWND): boolean;
begin
  Result :=  assigned(FOnPrinter);
  if Result then
    FOnPrinter(Self, Wnd);
end;

function TdfsPageSetupDialog.DoPrinter(Wnd: HWND): boolean;
begin
  try
    Result := Printer(Wnd);
  except
    Result := FALSE;
    Application.HandleException(Self);
  end;
end;

function TdfsPageSetupDialog.GetPaperSizeType: SHORT;
var
  Device, Driver, Port: array[0..79] of char;
  HDevMode: THandle;
  PDevMode: PDeviceMode;
begin
  Result := 0;
  Printers.Printer.GetPrinter(Device, Driver, Port, HDevMode);
  if HDevMode <> 0 then
  begin
    try
      PDevMode := GlobalLock(HDevMode);
      Result := PDevMode.dmPaperSize;
    finally
      GlobalUnlock(HDevMode);
    end;
  end;
end;

procedure TdfsPageSetupDialog.SetPaperSizeType(Value: short);
var
  Device, Driver, Port: array[0..79] of char;
  HDevMode: THandle;
  PDevMode: PDeviceMode;
begin
  Printers.Printer.GetPrinter(Device, Driver, Port, HDevMode);
  if HDevMode <> 0 then
  begin
    try
      PDevMode := GlobalLock(HDevMode);
      PDevMode.dmPaperSize := Value;
    finally
      GlobalUnlock(HDevMode);
    end;
  end;
end;

function TdfsPageSetupDialog.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

procedure TdfsPageSetupDialog.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;



{ Initialization and cleanup }

procedure InitGlobals;
var
  PageSetup: TPageSetupDlg;
begin
  if not NeedInitGlobals then exit;
  
  NeedInitGlobals := FALSE;
  HelpMsg := RegisterWindowMessage(HelpMsgString);

  DefPaperSizeI := TPSPoint.Create;
  DefMinimumMarginsI := TPSRect.Create;
  DefMarginsI := TPSRect.Create;

  // Make sure the user has a printer installed.  If not, calling PageSetupDlg
  // will cause an error message to be displayed, so we'll avoid that.
  if Printers.Printer.Printers.Count > 0 then
  begin
    FillChar(PageSetup, SizeOf(PageSetup), 0);
    PageSetup.hInstance := HInstance;
    with PageSetup do
    begin
      lStructSize := SizeOf(TPageSetupDlg);
      hWndOwner := Application.Handle;
      Flags := PSD_MARGINS or PSD_DEFAULTMINMARGINS or PSD_INTHOUSANDTHSOFINCHES
         or PSD_RETURNDEFAULT;
      if PageSetupDlg(PageSetup) then
      begin
        DefPaperSizeI.Point := ptPaperSize;
        DefMinimumMarginsI.Rect := rtMinMargin;
        DefMarginsI.Rect := rtMargin;
      end;
      if hDevMode <> 0 then GlobalFree(hDevMode);
      if hDevNames <> 0 then GlobalFree(hDevNames);
    end;
  end else begin
    // No printer installed, just fill with some semi-reasonable default values
    DefPaperSizeI.Point := Point(8500, 11000); // 8 1/2" X 11" letter size
    DefMinimumMarginsI.Rect := Rect(250, 250, 250, 250); // 1/4"
    DefMarginsI.Rect := DefMinimumMarginsI.Rect; // 1/4"
  end;

  DefPaperSizeM := TPSPoint.Create;
  DefMinimumMarginsM := TPSRect.Create;
  DefMarginsM := TPSRect.Create;

  // convert 1/1000 of inches to 1/100 of millimeters
  DefPaperSizeM.X := Round(DefPaperSizeI.X * 2.54);
  DefPaperSizeM.Y := Round(DefPaperSizeI.Y * 2.54);
  DefMinimumMarginsM.Top := Round(DefMinimumMarginsI.Top * 2.54);
  DefMinimumMarginsM.Left := Round(DefMinimumMarginsI.Left * 2.54);
  DefMinimumMarginsM.Right := Round(DefMinimumMarginsI.Right * 2.54);
  DefMinimumMarginsM.Bottom := Round(DefMinimumMarginsI.Bottom * 2.54);
  DefMarginsM.Top := Round(DefMarginsI.Top * 2.54);
  DefMarginsM.Left := Round(DefMarginsI.Left * 2.54);
  DefMarginsM.Right := Round(DefMarginsI.Right * 2.54);
  DefMarginsM.Bottom := Round(DefMarginsI.Bottom * 2.54);
end;

procedure DoneGlobals;
begin
  if not NeedInitGlobals then
  begin
    NeedInitGlobals := TRUE;
    DefPaperSizeI.Free;
    DefMinimumMarginsI.Free;
    DefMarginsI.Free;
    DefPaperSizeM.Free;
    DefMinimumMarginsM.Free;
    DefMarginsM.Free;
  end;
end;

{$IFDEF DFS_DEBUG}
var
  t: dword;
{$ENDIF}

initialization
{$IFDEF DFS_DEBUG}
  t := timegettime;
{$ENDIF}
  NeedInitGlobals := TRUE;
{$IFDEF DFS_DEBUG}
//  odm('Milliseconds: ', timegettime - t);
{$ENDIF}

finalization
  DoneGlobals;
end.

