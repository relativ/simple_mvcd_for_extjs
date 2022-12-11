{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ TdfsGradientForm v2.03                                                       }
{ A form to provide gradient filled caption bars ala Microsoft Office.         }
{ You will notice that some of the initial comment characters are followed by  }
{ a colon, and those sometimes contains some odd looking things that resemble  }
{ HTML codes.  These comments are used by the Time2Help application that I     }
{ used to build the help file.                                                 }
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
{ See GradForm.txt for notes, known issues, and revision history.              }
{------------------------------------------------------------------------------}
{ Date last modified:  June 27, 2001                                           }
{------------------------------------------------------------------------------}


{: This unit provides the TdfsGradientForm class, and all supporting elements. }
unit GradForm;

{$IFNDEF DFS_WIN32}
  Error!  This unit is only available for Win32.
{$ENDIF}

interface

uses
  {$IFDEF DFS_COMPILER_6_UP}
  RTLConsts,
  {$ELSE}
  Consts,
  {$ENDIF}
  Windows, Messages, SysUtils, Forms, Classes, Graphics, Controls, Dialogs;

const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION             = 'TdfsGradientForm v2.03';

  {: The minimum number of colors that can be assigned to the
     <See Property=TdfsGradientForm.GradientColors Text=GradientColors> property.
     Any less than 8 colors doesn't look much like a gradient.
     <Related A=MAX_GRADIENT_COLORS;DEF_GRADIENT_COLORS>
  }
  MIN_GRADIENT_COLORS               = 8;
  {: The maximum number of colors that can be assigned to the
     <See Property=TdfsGradientForm.GradientColors Text=GradientColors> property.
     Any more than 512 colors is not noticeable, and just slows the painting
     down. <Related A=MIN_GRADIENT_COLORS;DEF_GRADIENT_COLORS> }
  MAX_GRADIENT_COLORS               = 512;
  {: The default number of colors for the
     <See Property=TdfsGradientForm.GradientColors Text=GradientColors> property.
     This is a good compromise between speed and appearance.
     <Related A=MAX_GRADIENT_COLORS;MIN_GRADIENT_COLORS>}
  DEF_GRADIENT_COLORS               = 64;
  DEF_CAPTION_TEXT_COLOR            = clWhite;
  DEF_INACTIVE_CAPTION_TEXT_COLOR   = clWhite;
  DEF_GRADIENT_START_COLOR          = clBlack;
  DEF_GRADIENT_STOP_COLOR           = clActiveCaption;
  DEF_GRADIENT_INACTIVE_START_COLOR = clBlack;
  DEF_GRADIENT_INACTIVE_STOP_COLOR  = clInactiveCaption;
  DEF_USE_WIN98_GRADIENT            = FALSE;
  DEF_USE_DITHERING                 = TRUE;

type
  {: For some reason, you can not pass HWND and HDC type parameters from
     C++Builder source code to a Delphi component.  For some reason, C++B wants
     to treat these parameters as "void *" (pointer) types, and you will get
     unresolved external linker errors from Builder if you have methods that
     take HWND and/or HDC parameters in other than the private section.

     I have delcared this type so that it makes the code cleaner below. }

  {$IFDEF DFS_CPPB}
  DFS_HDC = pointer;
  {$ELSE}
  DFS_HDC = HDC;
  {$ENDIF}
  
  {: This enumerated type is used by the
     <See Property=TdfsGradientForm.PaintGradient Text=PaintGradient> property to
     indicate when the caption should be painted as a gradient.<BR>
     <UL>
     <LI>gfpAlways <TAB> The gradient should always be drawn.
     <LI>gfpActive <TAB> Only draw the gradient when the form is active.
     <LI>gfpNever  <TAB> Never draw the gradient.
     </UL>
     <Related A=PaintGradient>}
  TGFPaintWhen = (gfpAlways, gfpActive, gfpNever);
  TGFLogoAlign = (laLeft, laRight);

const
  DEF_PAINT_GRADIENT = gfpAlways;

type
  {: Describes the parameters used by an
     <See Event=TdfsGradientForm.OnCaptionPaint Text=OnCaptionPaint> event handler.
     <BR><BR><B>Sender</B> is the TdfsGradientForm that is being painted.<BR><BR>
     <B>Canvas</B> is the drawing surface that is being painted.  Anything you
     want to appear on the caption must be drawn on this canvas.  This canvas is
     not the actual caption canvas, it is a memory bitmap (non-visible).  This
     prevents flicker as many things are being drawn since the actual visible
     drawing only happens when the entire drawing operation is complete.<BR><BR>
     <B>R</B> is a rectangle that describes the area in which you can draw.
     When the event is first fired, this rectangle will be the entire caption
     less the system icon on the left (if any) and the caption buttons on the
     right (if any).  After performing your drawing operations, this value
     should be modified so that the area you have painted is subtracted out.
     This prevents the gradient from painting over what you have just done.
     <Related A=OnCaptionPaint>}
  TGFOnCaptionPaint = procedure(Sender: TObject; Canvas: TCanvas;
     var R: TRect) of object;

//CE_Desc_Begin(TdfsGradientForm)
{TdfsGradientForm is a descendant of the TForm class that paints it's caption
bar in a gradient fill pattern, like the Microsoft Office applications.
By default, it starts with black and moves gradually to the system defined
caption color, although you can override these values.  Also provided is
an event to allow you to add your own custom painting on the caption bar. }
//CE_Desc_End
  TdfsGradientForm = class(TForm)
  private
    // Internal variables
    Colors: array[0..1, 0..MAX_GRADIENT_COLORS-1] of TColorRef;
//**    CaptionFontHandle: HFONT;
    FGradDefClientProc: TFarProc;
    FGradClientInstance: TFarProc;
    // Property variables
    FCaptionTextColor: TColor;
    FInactiveCaptionTextColor: TColor;
    FGradientStartColor: TColor;
    FGradientStopColor: TColor;
    FGradientInactiveStartColor: TColor;
    FGradientInactiveStopColor: TColor;
    FGradientColors: integer;
    FPaintGradient: TGFPaintWhen;
    FCaptionText: string;
    FOnCaptionPaint: TGFOnCaptionPaint;
    FUsingDefaultGradientStopColor: boolean;
    FUsingDefaultGradientInactiveStopColor: boolean;
    FUseWin98Gradient: boolean;
    FRunningOnWin98: boolean;
    FChangingActivationState: boolean;
    FPaint16Color: boolean;
    FSystemIs16Color: boolean;
    FCaptionFont: TFont;
    FUseSystemCaptionFont: boolean;
    FCreating: boolean;
    FUseDithering: boolean;
    FLogo: TBitmap;
    FLogoAlign: TGFLogoAlign;
    FLogoLayered: Boolean;
    FInactiveLogo: TBitmap;

    // Internal methods
    function IsActiveWindow: boolean;
//**    procedure CreateCaptionFontHandle;
    // Window message handlers
    procedure WMNCActivate(var Msg: TWMNCActivate); message WM_NCACTIVATE;
    procedure WMNCPaint(var Msg: TMessage); message WM_NCPAINT;
    procedure WMSysColorChange(var Msg: TWMSysColorChange);
       message WM_SYSCOLORCHANGE;
    procedure WMSize(var Msg: TWMSize); message WM_SIZE;
    procedure WMSetCursor(var Msg: TWMSetCursor); message WM_SETCURSOR;
    procedure WMSetText(var Msg: TWMSetText); message WM_SETTEXT;
    procedure WMGetText(var Msg: TWMGetText); message WM_GETTEXT;
    procedure WMGetTextLength(var Msg: TWMGetTextLength);
       message WM_GETTEXTLENGTH;
    procedure WMSettingChange(var Msg: TMessage); message WM_SETTINGCHANGE;
    procedure WMNCLButtonDown(var Msg: TWMNCLButtonDown);
       message WM_NCLBUTTONDOWN;
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure WMEnterIdle(var Msg: TWMEnterIdle); message WM_ENTERIDLE;
    procedure WMWindowPosChanging(var Msg: TWMWindowPosChanging);
       message WM_WINDOWPOSCHANGING;
    // MDI Client Window Procedure
    procedure GradClientWndProc(var Message: TMessage);
    function GetInhibitGradient: boolean;
    procedure SetCaptionFont(const Value: TFont);
    // Misc
    function GetSysCaptionLogFont: TLogFont;
    procedure SetUseSystemCaptionFont(const Value: boolean);
  protected
    // Virtual methods useful for descandants
    function GetCaptionRect: TRect; virtual;
    procedure InvalidateCaption;
    function DrawCaption(FormDC: DFS_HDC; Active: boolean): TRect; virtual;
    procedure PaintMenuIcon(DC: DFS_HDC; var R: TRect; Active: boolean); virtual;
    procedure FillRectSolid(DC: DFS_HDC; const R: TRect; Active: boolean;
      ActiveColor, InactiveColor : TColor); virtual;
    procedure FillRectGradient(DC: DFS_HDC; const R: TRect;
       Dithered, Active: boolean); virtual;
    procedure PaintCaptionText(DC: DFS_HDC; R: TRect; Active: boolean); virtual;
    procedure PaintCaptionButtons(DC: DFS_HDC; var Rect: TRect); virtual;
    procedure CalculateColors; virtual;
    // Overriden methods
    procedure Loaded; override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure Activate; override;
    procedure Deactivate; override;
    procedure DoShow; override;
    // Property methods
    procedure SetCaptionTextColor(Color: TColor);
    procedure SetInactiveCaptionTextColor(Color: TColor);
    procedure SetGradientStartColor(Color : TColor);
    procedure SetGradientStopColor(Color : TColor);
    procedure SetGradientInactiveStartColor(Color : TColor);
    procedure SetGradientInactiveStopColor(Color : TColor);
    procedure SetGradientColors(Val: integer);
    procedure SetPaintGradient(Val: TGFPaintWhen);
    procedure SetCaptionText(const Val: string);
    procedure SetUseWin98Gradient(Val: boolean);
    procedure SetUseDithering(Val: boolean);
    procedure SetPaint16Color(const Value: boolean);
    procedure SetLogo(const Value: TBitmap);
    procedure SetLogoAlign(const Value: TGFLogoAlign);
    procedure SetLogoLayered(const Value: Boolean);
    procedure SetInactiveLogo(const Value: TBitmap);
    function GetVersion: string;
    procedure SetVersion(const Val: string);
    // Property storage qualifing methods
    function StoreGradientStopColor: boolean;
    function StoreGradientInactiveStopColor: boolean;
    // Utility methods
    function Win98Check: boolean; virtual;
    procedure UpdateCaptionFont; virtual;
  public
    function GetSystemColorBitDepth: integer;
    { This procedure is used to paint the caption gradient. }
    procedure Draw(Active: boolean); virtual;
    // Overridden methods
    { Create creates and initializes an instance of TdfsGradientForm. }
    constructor Create(AOwner: TComponent); override;
    { Destroy destroys an instance of TdfsGradientForm. }
    destructor Destroy; override;

    property InhibitGradient: boolean
       read GetInhibitGradient;
    property Paint16Color: boolean
       read FPaint16Color
       write SetPaint16Color;
    property SystemIs16Color: boolean
       read FSystemIs16Color;
  published
    // Properties
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    {: Caption specifies a text string that appears in the caption bar. }
    property Caption: string
       read FCaptionText
       write SetCaptionText
       stored TRUE;
    property CaptionFont: TFont
       read FCaptionFont
       write SetCaptionFont;
    property UseSystemCaptionFont: boolean
       read FUseSystemCaptionFont
       write SetUseSystemCaptionFont;
    {: Determines the number of colors used to paint the gradient pattern.  The
       individual colors are determined by fading the start color into the stop
       color.  The number of times this is done is controled by this property.
       The higher the number of colors, the smoother the gradient will appear.
       However, the more colors that are used, the more complex the painting
       will be.
       <Related A=MAX_GRADIENT_COLORS;MIN_GRADIENT_COLORS;DEF_GRADIENT_COLORS> }
    property GradientColors: integer
       read FGradientColors
       write SetGradientColors
       default DEF_GRADIENT_COLORS;
    {: CaptionTextColor is the color that should be used for the text draw in
       the caption bar.  You may have to adjust this color if you change the
       <See Property=TdfsGradientForm.GradientStartColor Text=GradientStartColor>
       to something other than the default of clBlack.
       <Related A=GradientStartColor;GradientStopColor;Caption>}
    property CaptionTextColor: TColor
       read FCaptionTextColor
       write SetCaptionTextColor
       default DEF_CAPTION_TEXT_COLOR;
    property InactiveCaptionTextColor: TColor
       read FInactiveCaptionTextColor
       write SetInactiveCaptionTextColor
       default DEF_INACTIVE_CAPTION_TEXT_COLOR;
    {: The leftmost gradient color.  This is the color that is used at the
       beginning of the caption (the far left), and is gradually faded into the
       <See Property=TdfsGradientForm.GradientStopColor Text=GradientStopColor>.
       <Related A=GradientStopColor;GradientColors> }
    property GradientStartColor: TColor
       read FGradientStartColor
       write SetGradientStartColor
       default DEF_GRADIENT_START_COLOR;
    {: The rightmost gradient color. This is the color that is used at the
       end of the caption (the far right), and is gradually faded from the
       <See Property=TdfsGradientForm.GradientStartColor Text=GradientStartColor>.
       <Related A=GradientStartColor;GradientColors> }
    property GradientStopColor: TColor
       read FGradientStopColor
       write SetGradientStopColor
       stored StoreGradientStopColor
       default DEF_GRADIENT_STOP_COLOR;
    property GradientInactiveStartColor: TColor
       read FGradientInactiveStartColor
       write SetGradientInactiveStartColor
       default DEF_GRADIENT_INACTIVE_START_COLOR;
    property GradientInactiveStopColor: TColor
       read FGradientInactiveStopColor
       write SetGradientInactiveStopColor
       stored StoreGradientInactiveStopColor
       default DEF_GRADIENT_INACTIVE_STOP_COLOR;
    {: Determines if and when the gradient caption should be painted.
     <UL>
     <LI>gfpAlways <TAB> The gradient should always be drawn.
     <LI>gfpActive <TAB> Only draw the gradient when the form is active.
     <LI>gfpNever  <TAB> Never draw the gradient.
     </UL> }
    property PaintGradient: TGFPaintWhen
       read FPaintGradient
       write SetPaintGradient
       default DEF_PAINT_GRADIENT;
    property UseWin98Gradient: boolean
       read FUseWin98Gradient
       write SetUseWin98Gradient
       default DEF_USE_WIN98_GRADIENT;
    property UseDithering: boolean
       read FUseDithering
       write SetUseDithering
       default DEF_USE_DITHERING;
    property Logo: TBitmap
       read FLogo
       write SetLogo;
    property InactiveLogo: TBitmap
       read FInactiveLogo
       write SetInactiveLogo;
    property LogoAlign: TGFLogoAlign
       read FLogoAlign
       write SetLogoAlign
       default laRight;
    property LogoLayered: Boolean
       read FLogoLayered
       write SetLogoLayered
       default FALSE;
    {: This event is fired after the icon, buttons and gradient are painted,
       but just before the text is painted.  It is not fired if the caption is
       painted but not as a gradient, that is if
       <See TdfsGradientForm.PaintGradient Text=PaintGradient> is gfpNever or
       gfpActive and the form is not active.<BR><BR> <B>Sender</B> is the
       TdfsGradientForm that is being painted.<BR><BR><B>Canvas</B> is the drawing
       surface that is being painted.  Anything you want to appear on the
       caption must be drawn on this canvas.  This canvas is not the actual
       caption canvas, it is a memory bitmap (non-visible).  This prevents
       flicker as many things are being drawn since the actual visible drawing
       only happens when the entire drawing operation is complete.<BR><BR>
       <B>R</B> is a rectangle that describes the area in which you can draw.
       When the event is first fired, this rectangle will be the entire caption
       less the system icon on the left (if any) and the caption buttons on the
       right (if any).  After performing your drawing operations, this value
       should be modified so that the area you have painted is subtracted out.
       This prevents the gradient from painting over what you have just done. }
    property OnCaptionPaint: TGFOnCaptionPaint
       read FOnCaptionPaint
       write FOnCaptionPaint;
  end;
  
implementation

{$R GRADFORM.RES}

// A variant record (known as a union in C) to allow easy access to the
// individual red, // green, and blue values of a TColorRef (RGB) value.
type
  TRGBMap = packed record
    case boolean of
      TRUE:  ( RGBVal: DWORD );
      FALSE: ( Red,
               Green,
               Blue,
               Unused: byte );
  end;


var
  EntrancyFlag: boolean;

{: Create creates and initializes an instance of TdfsGradientForm. Call Create
   to instantiate a TdfsGradientForm at runtime.  After calling the inherited
   constructor, Create initializes the following properties:<BR>
   <UL>
   <LI>UsingDefaultGradientStopColor to TRUE.
   <LI>CaptionTextColor to clWhite.
   <LI>GradientStartColor to clBlack.
   <LI>GradientStopColor to clActiveCaption.
   <LI>GradientColors to <See DEF_GRADIENT_COLORS>.
   <LI>PaintGradient to gpfAlways.
   </UL> }
constructor TdfsGradientForm.Create(AOwner: TComponent);
var
  VerInfo: TOSVersionInfo;
begin
  // We set our new property values first so that they will be valid in the
  // OnCreate event handler.  The inherited Create is what calls that event, so
  // we set up first.

  FLogo := TBitmap.Create;
  FInactiveLogo := TBitmap.Create;
  FLogoLayered := FALSE;
  FLogoAlign := laRight;

  // Are we running under Win98, and should we let it do it for us?
  VerInfo.dwOSVersionInfoSize := SizeOf(VerInfo);
  if GetVersionEx(VerInfo) then
    // this will also catch NT 5.
    FRunningOnWin98 := (VerInfo.dwMajorVersion >= 5) or
       ((VerInfo.dwMajorVersion >= 4) and (VerInfo.dwMinorVersion > 0))
  else
    FRunningOnWin98 := FALSE;

  // Are we running on a 16-color system?
  FSystemIs16Color := GetSystemColorBitDepth = 4;

  // Don't paint 16-color by default
  FPaint16Color := FALSE;

  FUseWin98Gradient := DEF_USE_WIN98_GRADIENT;
  FUseDithering := DEF_USE_DITHERING;
  FUsingDefaultGradientStopColor := TRUE;
  FUsingDefaultGradientInactiveStopColor := TRUE;
  FCaptionTextColor := DEF_CAPTION_TEXT_COLOR;
  FInactiveCaptionTextColor := DEF_INACTIVE_CAPTION_TEXT_COLOR;
  // Set gradient start and stop colors.
  FGradientStartColor := DEF_GRADIENT_START_COLOR;
  FGradientStopColor := DEF_GRADIENT_STOP_COLOR;
  FGradientInactiveStartColor := DEF_GRADIENT_INACTIVE_START_COLOR;
  FGradientInactiveStopColor := DEF_GRADIENT_INACTIVE_STOP_COLOR;
  // Set the number of colors to use to create the gradient fill.
  FGradientColors := DEF_GRADIENT_COLORS;
  // Should we paint the gradient when window is inactive.
  FPaintGradient := DEF_PAINT_GRADIENT;
  FOnCaptionPaint := NIL;
  FChangingActivationState := FALSE;
  // Caption font stuff
  FUseSystemCaptionFont := TRUE;
  FCaptionFont := TFont.Create;
  UpdateCaptionFont;

  // Calculate the colors we need to paint the gradient.
  CalculateColors;
//**  CaptionFontHandle := 0;

//  inherited Create(AOwner);

  CreateNew(AOwner {$IFDEF DFS_CPPB_1}, 1 {$ENDIF});
  if (ClassType <> TdfsGradientForm) and not (csDesigning in ComponentState) then
  begin
    FCreating := TRUE;
    try
      if not InitInheritedComponent(Self, TdfsGradientForm) then
        {$IFDEF DFS_COMPILER_2}
        raise EResNotFound.CreateResFmt(sResNotFound, [ClassName]);
        {$ELSE}
        raise EResNotFound.CreateFmt(sResNotFound, [ClassName]);
        {$ENDIF}
    finally
      FCreating := FALSE;
    end;

    // All versions of Delphi, and C4 and up.
    {$IFDEF DFS_DELPHI}
      {$DEFINE DFS_DO_ONCREATE}
    {$ENDIF}
    {$IFDEF DFS_CPPB_4_UP}
      {$DEFINE DFS_DO_ONCREATE}
    {$ENDIF}
    {$IFDEF DFS_DO_ONCREATE}
    try
      if {$IFDEF DFS_COMPILER_4_UP} OldCreateOrder and {$ENDIF}
         assigned(OnCreate) then
        OnCreate(Self);
    except
      Application.HandleException(Self);
    end;
    {$UNDEF DFS_DO_ONCREATE}
    {$ENDIF}
  end;
end;


{: Destroy destroys an instance of TdfsGradientForm. Do not call Destroy
   directly in an application. Instead, call Free. Free verifies that the
   instance is not already freed, and only then calls Destroy.<BR>
   Destroy is used to free resources allocated in the
   <See Method=TdfsGradientForm.Create Text=Create> constructor. }
destructor TdfsGradientForm.Destroy;
begin
  FLogo.Free;
  FInactiveLogo.Free;
  FCaptionFont.Free;
  // Clean up the font we created.
//**  if CaptionFontHandle <> 0 then
//**    DeleteObject(CaptionFontHandle);
    
  inherited Destroy;
end;


procedure TdfsGradientForm.Loaded;
begin
  inherited Loaded;
  // Create a font for the caption bar.
//**  CreateCaptionFontHandle;
end;


procedure TdfsGradientForm.CreateWnd;
begin
  inherited CreateWnd;
  if (not InhibitGradient) and (FormStyle = fsMDIForm) then
  begin
    FGradClientInstance := MakeObjectInstance(GradClientWndProc);
    FGradDefClientProc := Pointer(GetWindowLong(ClientHandle, GWL_WNDPROC));
    SetWindowLong(ClientHandle, GWL_WNDPROC, Longint(FGradClientInstance));
  end else
    FGradClientInstance := NIL;
//**  if not (csLoading in ComponentState) then
    // Create a font for the caption bar.
//**    CreateCaptionFontHandle;
end;

procedure TdfsGradientForm.DestroyWnd;
begin
  if (FormStyle = fsMDIForm) and assigned(FGradClientInstance) then
  begin
    SetWindowLong(ClientHandle, GWL_WNDPROC, Longint(FGradDefClientProc));
    FreeObjectInstance(FGradClientInstance);
  end;

  inherited DestroyWnd;
end;

procedure TdfsGradientForm.SetGradientColors(Val: integer);
begin
  if (Val = FGradientColors) or (Val < MIN_GRADIENT_COLORS) or
     (Val > MAX_GRADIENT_COLORS) then
    exit;

  FGradientColors := Val;
  // The number of colors have changed, we need to recalculate the colors we
  // use to paint.
  CalculateColors;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetCaptionTextColor(Color: TColor);
begin
  if FCaptionTextColor = Color then
    exit;

  FCaptionTextColor := Color;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetInactiveCaptionTextColor(Color: TColor);
begin
  if FInactiveCaptionTextColor = Color then
    exit;

  FInactiveCaptionTextColor := Color;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetGradientStartColor(Color : TColor);
begin
  FGradientStartColor := Color;
  // The colors have changed, we need to recalculate the colors we use to paint.
  CalculateColors;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetGradientStopColor(Color : TColor);
begin
  FGradientStopColor := Color;
  FUsingDefaultGradientStopColor := FGradientStopColor = clActiveCaption;
  // The colors have changed, we need to recalculate the colors we use to paint.
  CalculateColors;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetGradientInactiveStartColor(Color : TColor);
begin
  FGradientInactiveStartColor := Color;
  // The colors have changed, we need to recalculate the colors we use to paint.
  CalculateColors;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetGradientInactiveStopColor(Color : TColor);
begin
  FGradientInactiveStopColor := Color;
  FUsingDefaultGradientInactiveStopColor :=
     (FGradientInactiveStopColor = clInactiveCaption);
  // The colors have changed, we need to recalculate the colors we use to paint.
  CalculateColors;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetPaintGradient(Val: TGFPaintWhen);
begin
  if FPaintGradient = Val then
     exit;

  FPaintGradient := Val;
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetCaptionText(const Val: string);
begin
  if EntrancyFlag then
    exit;

  EntrancyFlag := TRUE;
  try
    // Have to do this so the MDI window menus get updated and application
    // titles get updated (taskbar and Alt-Tab text)
    inherited Caption := Val;

    FCaptionText := Val;
    if (not InhibitGradient) and HandleAllocated and IsWindowVisible(Handle) then
    begin
      if (FormStyle = fsMDIChild) {and FChangingActivationState} then
      begin
        if WindowState = wsMaximized then
          // Need to cause main form's caption to be redrawn, not the MDI child.
          SetWindowPos(Application.MainForm.Handle, 0, 0, 0, 0, 0,
             SWP_DRAWFRAME or SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE
             or SWP_NOZORDER)
        else
          InvalidateCaption;
      end else
        Draw(IsActiveWindow);
    end;

  finally
    EntrancyFlag := FALSE;
  end;
end;

procedure TdfsGradientForm.SetUseWin98Gradient(Val: boolean);
begin
  if Val <> FUseWin98Gradient then
  begin
    FUseWin98Gradient := Val;
    if HandleAllocated then
    begin
      RecreateWnd;
      // hmmm, how to get it to show again in the IDE?
    end;
  end;
end;

procedure TdfsGradientForm.SetUseDithering(Val: boolean);
begin
  if Val <> FUseDithering then
  begin
    FUseDithering := Val;
    InvalidateCaption;
  end;
end;

function TdfsGradientForm.IsActiveWindow: boolean;
begin
  if FormStyle = fsMDIChild then
    if assigned(Application.MainForm) then
      Result := (GetActiveWindow = Application.MainForm.Handle) and
                (TForm(Application.MainForm).ActiveMDIChild = Self)
    else
      Result := FALSE
  else
    Result := GetActiveWindow=Handle;
end;

procedure TdfsGradientForm.CalculateColors;
var
  LoColor, HiColor: TRGBMap;
  RedPct,
  GreenPct,
  BluePct: real;
  x,
  Band: integer;
begin
  // Get colors for both active and inactive captions.
  for x := 0 to 1 do
  begin
    if x = 0 then   // inactive captions
    begin
      LoColor.RGBVal := ColorToRGB(FGradientInactiveStartColor);
      HiColor.RGBVal := ColorToRGB(FGradientInactiveStopColor);
    end else begin    // active caption
      LoColor.RGBVal := ColorToRGB(FGradientStartColor);
      HiColor.RGBVal := ColorToRGB(FGradientStopColor);
    end;
    // Figure out the percentage of each RGB value needed for banding
    RedPct   := (HiColor.Red - LoColor.Red)/ (FGradientColors-1);
    GreenPct := (HiColor.Green - LoColor.Green) / (FGradientColors-1);
    BluePct  := (HiColor.Blue - LoColor.Blue) / (FGradientColors-1);
    // Use the percentage of each color to create each band color.
    for Band := 0 to (FGradientColors-1) do
      Colors[x][Band] := RGB(LoColor.Red + round(RedPct * (Band)),
         LoColor.Green + round(GreenPct * (Band)),
         LoColor.Blue + round(BluePct * (Band)));
  end;
end;

//**
{procedure TdfsGradientForm.CreateCaptionFontHandle;
var
  NCM: TNonClientMetrics;
begin
  if CaptionFontHandle <> 0 then
    DeleteObject(CaptionFontHandle);
  NCM.cbSize := SizeOf(NCM);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NCM, 0) then
  begin
    if BorderStyle in [bsToolWindow, bsSizeToolWin] then
      CaptionFontHandle := CreateFontIndirect(NCM.lfSmCaptionFont)
    else
      CaptionFontHandle := CreateFontIndirect(NCM.lfCaptionFont);
  end else
    CaptionFontHandle := 0;
end;
}

// The caption rect is the rectangle we are interested in painting.  This will
// be the area that contains the caption icon, text and buttons.
function TdfsGradientForm.GetCaptionRect: TRect;
begin
  // Designing mode always draws the form as bsSizeable
  if csDesigning in ComponentState then
  begin
    GetWindowRect(Handle, Result);
    // Convert rect from screen (absolute) to client (0 based) coordinates.
    OffsetRect(Result, -Result.Left, -Result.Top);
    // Shrink rectangle to allow for window border.  We let Windows paint it.
    InflateRect(Result, -GetSystemMetrics(SM_CXSIZEFRAME),
       -GetSystemMetrics(SM_CYSIZEFRAME));
    Result.Bottom := Result.Top + GetSystemMetrics(SM_CYCAPTION) - 1;
  end else begin
    // if we have no border style, then just set the rectange empty.
    if BorderStyle = bsNone then
      SetRectEmpty(Result)
    else begin
      GetWindowRect(Handle, Result);
      // Convert rect from screen (absolute) to client (0 based) coordinates.
      OffsetRect(Result, -Result.Left, -Result.Top);
      // Shrink rectangle to allow for window border.  We let Windows paint it.
      if (WindowState = wsMinimized) or (BorderStyle in [bsToolWindow, bsSingle,
        bsDialog]) then
        InflateRect(Result, -GetSystemMetrics(SM_CXFIXEDFRAME),
          -GetSystemMetrics(SM_CYFIXEDFRAME))
      else if BorderStyle in [bsSizeable, bsSizeToolWin] then
        InflateRect(Result, -GetSystemMetrics(SM_CXSIZEFRAME),
          -GetSystemMetrics(SM_CYSIZEFRAME));

      // Set the appropriate height of caption bar.
      if BorderStyle in [bsToolWindow, bsSizeToolWin] then
        Result.Bottom := Result.Top + GetSystemMetrics(SM_CYSMCAPTION) - 1
      else
        Result.Bottom := Result.Top + GetSystemMetrics(SM_CYCAPTION) - 1;
    end;
  end;
end;

// Paint the icon for the system menu.
procedure TdfsGradientForm.PaintMenuIcon(DC: DFS_HDC; var R: TRect; Active: boolean);
{$IFDEF DFS_COMPILER_2}
const
  LR_COPYFROMRESOURCE = $4000; // Missing from WINDOWS.PAS in Delphi 2!
{$ENDIF}
var
  SmallCopy,
  IconHandle: HIcon;
  Size: integer;
begin
  // Does the form have an icon assigned to it?
  if Icon.Handle <> 0 then
    IconHandle := Icon.Handle
  // If not, does the application have an icon?
  else if Application.Icon.Handle <> 0 then
    IconHandle := Application.Icon.Handle
  // If not, then just use the system defined application icon.
  else
    IconHandle := LoadIcon(0, IDI_APPLICATION);

  Size := GetSystemMetrics(SM_CXSMICON);
  SmallCopy := CopyImage(IconHandle, IMAGE_ICON, Size, Size,
     LR_COPYFROMRESOURCE);
  with R do
    // Let CopyImage() make get us a nice 16x16 version of the icon and we'll
    // paint it.
    DrawIconEx(HDC(DC), Left+1, Top+1, SmallCopy, 0, 0, 0, 0, DI_NORMAL);
  DestroyIcon(SmallCopy);
  Inc(R.Left, Size+1);
end;

// Paint the given rectangle with the system solid color.
procedure TdfsGradientForm.FillRectSolid(DC: DFS_HDC; const R: TRect;
  Active: boolean; ActiveColor, InactiveColor : TColor);
var
  OldBrush,
  Brush: HBrush;
begin
  // Create a brush with the appropriate color\
  if Active then
    Brush := CreateSolidBrush(ColorToRGB(ActiveColor))
  else
    Brush := CreateSolidBrush(ColorToRGB(InactiveColor));
  // Select that brush into the temporary DC.
  OldBrush := SelectObject(HDC(DC), Brush);
  try
    // Fill the rectangle using the selected brush -- PatBlt is faster than
    // FillRect
    with R do
      PatBlt(HDC(DC), Left, Top, Right-Left, Bottom-Top, PATCOPY);
  finally
    // Clean up the brush
    SelectObject(HDC(DC), OldBrush);
    DeleteObject(Brush);
  end;
end;

// Paint the given rectangle with the gradient pattern.
procedure TdfsGradientForm.FillRectGradient(DC: DFS_HDC; const R: TRect;
   Dithered, Active: boolean);
  function MaxInt(I1, I2: integer): integer;
  begin
    if I1 > I2 then
      Result := I1
    else
      Result := I2;
  end;
  function MinInt(I1, I2: integer): integer;
  begin
    if I1 < I2 then
      Result := I1
    else
      Result := I2;
  end;
const
  HorizTileWidth: array[0..1] of Integer = (69, 14);
  HorizTileHeight: array[0..1] of Integer = (30, 28);
  TileResName: array[0..1] of String = ('DFS_DITHGRADMASK1','DFS_DITHGRADMASK2');
var
  OldBmp,
  TmpBmp: HBitmap;
  TmpDC: HDC;
  OldBrush,
  Brush: HBrush;
  Step: real;
  Band: integer;

  Width, Height: Integer;
  StartColor, StopColor: DWORD;
  x, y, i: Integer;
  RStart, GStart, BStart: Integer;
  RDiff, GDiff, BDiff: Integer;
  DitherColors, Index: Integer;
  TileBitmap,
  MaskBitmap,
  OffScreenBitmap: TBitmap;
  FromColor,
  ToColor: TColor;
  PixelsToInsert, PixelsNow: Integer;
  ImageList: TImageList;
begin
  Width := R.Right - R.Left;
  if Width < 1 then exit;
  Height := R.Bottom - R.Top;

  StartColor := 0;
  Index := 0;
  RStart := 0;
  GStart := 0;
  BStart := 0;
  RDiff := 0;
  GDiff := 0;
  BDiff := 0;

  if Dithered then
  begin
    // Dithered style gradient
    if Active then
    begin
      StartColor := ColorToRGB(FGradientStartColor);
      StopColor := ColorToRGB(FGradientStopColor);
    end else begin
      StartColor := ColorToRGB(FGradientInactiveStartColor);
      StopColor := ColorToRGB(FGradientInactiveStopColor);
    end;

    RStart := GetRValue(StartColor);
    GStart := GetGValue(StartColor);
    BStart := GetBValue(StartColor);
    RDiff  := GetRValue(StopColor) - RStart;
    GDiff  := GetGValue(StopColor) - GStart;
    BDiff  := GetBValue(StopColor) - BStart;

    if (Abs(RDiff) + Abs(GDiff) + Abs(BDiff)) / Width < 200.0 / 280.0 then
      Index := 0
    else
      Index := 1;

    // Want dithering, but make sure it will look good.
    if (Width < HorizTileWidth[Index] shl 1) or (GetDeviceCaps(HDC(DC),
       SIZEPALETTE) > 0) then
      Dithered := FALSE; // Low color mode, dithering will look horrible.
  end;

  if Dithered then
  begin
    OffScreenBitmap := TBitmap.Create;
    try
      OffScreenBitmap.Width := Width;
      OffScreenBitmap.Height := Height;

      // if dithering is on, we caluclate the number of colors from the width
      DitherColors := (Width div HorizTileWidth[Index]) + 1;
      if Width mod HorizTileWidth[Index] > 0 then
      // if the width is not the multiple of HorizTileWidth, additional pixels
      // must be inserted between the tiles
        PixelsToInsert := Width - (DitherColors - 1) * HorizTileWidth[Index]
      else
        PixelsToInsert := 0;

      // setting up the temp bitmap and loading the tile mask
      ImageList := TImageList.CreateSize(HorizTileWidth[Index],
         HorizTileHeight[Index]);
      MaskBitmap := TBitmap.Create;
      TileBitmap := TBitmap.Create;
      try
        MaskBitmap.LoadFromResourceName(HInstance, TileResName[Index]);
        TileBitmap.Width := HorizTileWidth[Index];
        TileBitmap.Height := HorizTileHeight[Index];

        x := 0;
        FromColor := StartColor;
        for i := 1 to DitherColors do
        begin
          // calculating the next color
          ToColor := RGB(
             MinInt(MaxInt(RStart + MulDiv(i, RDiff, DitherColors - 1), 0), 255),
             MinInt(MaxInt(GStart + MulDiv(i, GDiff, DitherColors - 1), 0), 255),
             MinInt(MaxInt(BStart + MulDiv(i, BDiff, DitherColors - 1), 0), 255));
          // colorizing the tile mask
          TileBitmap.Canvas.Brush.Color := FromColor;
          PatBlt(TileBitmap.Canvas.Handle, 0, 0, HorizTileWidth[Index],
             HorizTileHeight[Index], PATCOPY);
          if ImageList.Count = 0 then
            ImageList.Add(TileBitmap, MaskBitmap)
          else
            ImageList.Replace(0, TileBitmap, MaskBitmap);
          with OffScreenBitmap do
          begin
            // painting the tile mask
            Canvas.Brush.Color := ToColor;
            PatBlt(Canvas.Handle, x, 0, x + HorizTileWidth[Index], Height,
               PATCOPY);

            y := 0;
            while y < Height do
            begin
              ImageList.Draw(Canvas, x, y, 0);
              Inc(y, HorizTileHeight[Index]);
            end;

            Inc(x, HorizTileWidth[Index]);
            // inserting the extra pixels if necessary
            if PixelsToInsert <> 0 then
            begin
              PixelsNow := PixelsToInsert div (DitherColors - 2);
              if i < PixelsToInsert mod (DitherColors - 2) then
                Inc(PixelsNow);
              PatBlt(Canvas.Handle, x, 0, x + PixelsNow, Height, PATCOPY);
              Inc(x, PixelsNow);
            end;
          end;
          FromColor := ToColor;
        end;
      finally
        TileBitmap.Free;
        MaskBitmap.Free;
        ImageList.Free;
      end;

      BitBlt(HDC(DC), R.Left, R.Top, Width, Height,
         OffScreenBitmap.Canvas.Handle, 0, 0, SRCCOPY);
    finally
      OffScreenBitmap.Free;
    end;

  end else begin
    // "Banded" style gradient

    // This may look backwards, but it's not.  If the device capabilities
    // indicate that there are palette entries (more than 0), then we are in
    // a low color mode.  This is because when in high color mode or above,
    // Windows doesn't use palettes; each pixel knows it's RGB value.
    if (GetDeviceCaps(HDC(DC), SIZEPALETTE) > 0) or 
       (Width < GradientColors) then
    begin
      // Low color gradient, slower

      // Determine how large each band should be in order to cover the
      // rectangle (one band for every color intensity level).
      Step := Width / FGradientColors;

      // Start filling bands
      for Band := 0 to (FGradientColors-1) do
      begin
        // Create a brush with the appropriate color for this band
        Brush := CreateSolidBrush(Colors[ord(Active)][Band]);
        // Select that brush into the temporary DC.
        OldBrush := SelectObject(HDC(DC), Brush);
        try
          // Fill the rectangle using the selected brush -- PatBlt is faster
          // than FillRect
          PatBlt(HDC(DC), round(Band*Step) + R.Left, 0,
             round((Band+1)*Step) - round(Band*Step), Height, PATCOPY);
        finally
          // Clean up the brush
          SelectObject(HDC(DC), OldBrush);
          DeleteObject(Brush);
        end;
      end; // for
    end else begin
      // High color gradient, faster
      TmpDC := CreateCompatibleDC(HDC(DC));
      TmpBmp := CreateCompatibleBitmap(HDC(DC), FGradientColors, 1);
      OldBmp := SelectObject(TmpDC, TmpBmp);
      try
        // Start filling bands
        for Band := 0 to (FGradientColors-1) do
          SetPixel(TmpDC, Band, 0, Colors[ord(Active)][Band]);
        StretchBlt(HDC(DC), R.Left, 0, Width, Height, TmpDC, 0, 0,
           FGradientColors-1, 1, SRCCOPY);
      finally
        SelectObject(TmpDC, OldBmp);
        DeleteObject(TmpBmp);
        DeleteDC(TmpDC);
      end;
    end;
  end;
end;

procedure TdfsGradientForm.PaintCaptionText(DC: DFS_HDC; R: TRect; Active: boolean);
var
  OldColor: TColorRef;
  OldMode: integer;
  OldFont: HFont;
  CaptionText: string;
begin
  CaptionText := Caption;
  // Have to turn off complete boolean eval for this "if" statement.  I never
  // have it on anyway, but some do.
  {$IFOPT B+} {$DEFINE DFS_RESET_BOOL_EVAL} {$B-} {$ENDIF}
  if ((FormStyle = fsMDIForm) and (ActiveMDIChild <> NIL) and
      (ActiveMDIChild.WindowState = wsMaximized)) then
    CaptionText := CaptionText + ' - [' + ActiveMDIChild.Caption + ']';
  {$IFDEF DFS_RESET_BOOL_EVAL} {$B+} {$UNDEF DFS_RESET_BOOL_EVAL} {$ENDIF}

  Inc(R.Left, 2);

  // Set the color to paint the text with.
  if Active then
    OldColor := SetTextColor(HDC(DC), ColorToRGB(FCaptionTextColor))
  else
    OldColor := SetTextColor(HDC(DC), ColorToRGB(FInactiveCaptionTextColor));
  // Set the background text painting mode to transparent so that drawing text
  // doesn't distrub the gradient we just painted.  If you didn't do this, then
  // drawing text would also fill the text rectangle with a solid background
  // color, screwing up our gradient.
  OldMode := SetBkMode(HDC(DC), TRANSPARENT);
  // Select in the system defined caption font (see Create constructor).
  if FCaptionFont.Handle <> 0 then
//**  if CaptionFontHandle <> 0 then
    OldFont := SelectObject(HDC(DC), FCaptionFont.Handle)
//**    OldFont := SelectObject(HDC(DC), CaptionFontHandle)
  else
    OldFont := 0;
  try
    // Draw the text making it left aligned, centered vertically, allowing no
    // line breaks.
    DrawText(HDC(DC), PChar(CaptionText), -1, R, DT_LEFT or DT_VCENTER or
       DT_SINGLELINE or DT_END_ELLIPSIS);
  finally
    // Clean up all the drawing objects.
    if OldFont <> 0 then
      SelectObject(HDC(DC), OldFont);
    SetBkMode(HDC(DC), OldMode);
    SetTextColor(HDC(DC), OldColor);
  end;
end;

// Paint the min/max/help/close buttons.
procedure TdfsGradientForm.PaintCaptionButtons(DC: DFS_HDC; var Rect: TRect);
var
  BtnWidth: integer;
  Flag: UINT;
  SrcRect: TRect;
  ABorderStyle: TFormBorderStyle;
  ABorderIcons: TBorderIcons;
begin
  SrcRect := Rect;
  InflateRect(SrcRect, -2, -2);
  if csDesigning in ComponentState then
  begin
    // While designing, the min/max buttons are always shown in a sizeable frame
    ABorderStyle := bsSizeable;
    ABorderIcons := [biSystemMenu, biMinimize, biMaximize];
  end else begin
    ABorderStyle := BorderStyle;
    ABorderIcons := BorderIcons;
  end;

  if ABorderStyle in [bsToolWindow, bsSizeToolWin] then
  begin
    // Tool windows only have the close button, nothing else.
    with SrcRect do
      Left := Right - (GetSystemMetrics(SM_CXSMSIZE)) + 2;
    Flag := DFCS_CAPTIONCLOSE;
    if (GetClassLong(Handle, GCL_STYLE) and CS_NOCLOSE) <> 0 then
      Flag := Flag or DFCS_INACTIVE;
    DrawFrameControl(HDC(DC), SrcRect, DFC_CAPTION, Flag);
    Rect.Right := SrcRect.Left-5;
  end else begin
    BtnWidth := GetSystemMetrics(SM_CXSMICON)-2;
    { Windows is loopy.  It always returns an even number, no matter what }
    if (Odd(BtnWidth) XOR Odd(Rect.Bottom-Rect.Top)) then
      inc(BtnWidth);
    SrcRect.Left := SrcRect.Right - BtnWidth - 2;
    // if it has system menu, it has a close button.
    if biSystemMenu in ABorderIcons then
    begin
      Flag := DFCS_CAPTIONCLOSE;
      if (GetClassLong(Handle, GCL_STYLE) and CS_NOCLOSE) <> 0 then
        Flag := Flag or DFCS_INACTIVE;
      DrawFrameControl(HDC(DC), SrcRect, DFC_CAPTION, Flag);
      OffsetRect(SrcRect, -BtnWidth-4, 0);
      Dec(Rect.Right,BtnWidth+4);
    end;
    // Minimize and Maximized don't show up at all if BorderStyle is bsDialog or
    // if neither of them are enabled.
    if (ABorderStyle in [bsSizeable, bsSingle]) and
       (ABorderIcons * [biMinimize, biMaximize] <> []) then
    begin
      if WindowState = wsMaximized then
        Flag := DFCS_CAPTIONRESTORE
      else
        Flag := DFCS_CAPTIONMAX;
      // if it doesn't have max in style, then it shows up disabled.
      if not (biMaximize in ABorderIcons) then
        Flag := Flag or DFCS_INACTIVE;

      DrawFrameControl(HDC(DC), SrcRect, DFC_CAPTION, Flag);
      OffsetRect(SrcRect, -BtnWidth-2, 0);
      Dec(Rect.Right,BtnWidth+2);

      if WindowState = wsMinimized then
        Flag := DFCS_CAPTIONRESTORE
      else
        Flag := DFCS_CAPTIONMIN;
      // if it doesn't have min in style, then it shows up disabled.
      if not (biMinimize in ABorderIcons) then
        Flag := Flag or DFCS_INACTIVE;

      DrawFrameControl(HDC(DC), SrcRect, DFC_CAPTION, Flag);
      OffsetRect(SrcRect, -BtnWidth-2, 0);
      Dec(Rect.Right,BtnWidth+2);
    end;

    // Help only shows up in bsDialog style, and bsSizeable, bsSingle when there
    // is no min or max button.
    if biHelp in ABorderIcons then
    begin
      if ((ABorderStyle in [bsSizeable, bsSingle]) and
         (ABorderIcons * [biMinimize, biMaximize] = [])) or
         (ABorderStyle = bsDialog) then
      begin
        DrawFrameControl(HDC(DC), SrcRect, DFC_CAPTION, DFCS_CAPTIONHELP);
        Dec(Rect.Right,BtnWidth+2);
      end;
    end;

    Dec(Rect.Right, 3);
  end;
end;


function TdfsGradientForm.DrawCaption(FormDC: DFS_HDC; Active: boolean): TRect;
var
  R: TRect;
  OldBmp,
  Bmp: HBitmap;
  BmpDC: HDC;
  BmpCanvas: TCanvas;
  w,h:integer;
  IsLogoGradient : Boolean;
  GradientRect, LogoRect : TRect;
  LogoWidth : Integer;
  CurrentLogo : TBitmap;
begin
  // Get only the portion we need to draw.
  R := GetCaptionRect;
  Result := R;

  // Convert to logical (0-based) coordinates
  OffsetRect(R, -R.Left, -R.Top);

  W := R.Right - R.Left;
  H := R.Bottom - R.Top;

  // Create a temporary device context to draw on.  Drawing on a temporary DC
  // and copying it to the real DC accomplishes two things:
  // 1) It is faster because Windows doesn't have to draw anything in the
  //    temporary DC on the screen, it only draws when you paint something on a
  //    real DC.  Then it just draws everything at once when we copy it, instead
  //    of drawing a little, do some calculations, draw a little, etc.
  // 2) It looks much better because it is drawn faster.  It reduces the
  //    "flicker" that you would see from each individual part being drawn,
  //    especially the gradient bands.
  BmpDC := CreateCompatibleDC(HDC(FormDC));
  Bmp := CreateCompatibleBitmap(HDC(FormDC), W, H);
  OldBmp := SelectObject(BmpDC, Bmp);

  try
    // If there's a logo bitmap, we need a solid background
    // behind the menu icon, the caption buttons, and the
    // logo; so we need to delay drawing of the gradient
    // until after the menu and buttons are painted.
    IsLogoGradient := FALSE;

    if (FPaintGradient = gfpAlways) or
       (Active and (FPaintGradient = gfpActive)) then
    begin
      if (Assigned (FLogo)) and (not FLogo.Empty) then
      begin
        IsLogoGradient := TRUE;
        FillRectSolid(DFS_HDC (BmpDC), R, Active, GradientStartColor,
          GradientInactiveStartColor);
      end
      else
        // Draw the gradient background in the temporary DC
        FillRectGradient(DFS_HDC(BmpDC), R, UseDithering, Active)
    end
    else
      FillRectSolid(DFS_HDC(BmpDC), R, Active, GetSysColor(COLOR_ACTIVECAPTION),
        GetSysColor(COLOR_INACTIVECAPTION));

    Inc(R.Left, 1);
    // Do we need to paint an icon for the system menu?
    if not ((FormStyle = fsMDIChild) and (WindowState = wsMaximized)) then
    begin
      if IsLogoGradient then
      begin
        // Start by drawing the solid-color end of the bar.
        // There's a solid color under the menu icon if the
        // logo is left-aligned, or under the caption buttons
        // if the logo is right-aligned.
        if LogoAlign = laLeft then
        begin
          if ((biSystemMenu in BorderIcons) and
             (BorderStyle in [bsSingle, bsSizeable])) or
             (csDesigning in ComponentState) then
          begin
            FillRectSolid(DFS_HDC (BmpDC), R, Active, GradientStartColor,
              GradientInactiveStartColor);
            // PaintMenuIcon will adjust the rect so that future drawing operations
            // happen in the right spot.
            PaintMenuIcon(DFS_HDC(BmpDC), R, Active);
          end;
        end
        else  // LogoAlign = laRight
        begin
          FillRectSolid(DFS_HDC(BmpDC), R, Active, GradientStopColor,
            GradientInactiveStopColor);
          PaintCaptionButtons(DFS_HDC(BmpDC), R);
        end;

        if (not Active) and (not FInactiveLogo.Empty) then
          CurrentLogo := FInactiveLogo
        else
          CurrentLogo := FLogo;

        LogoWidth := CurrentLogo.Width;

        if LogoAlign = laLeft then
          LogoRect := Rect(R.Left, R.Top, R.Left + LogoWidth, R.Bottom)
        else
          LogoRect := Rect(R.Right - LogoWidth, R.Top, R.Right, R.Bottom);

        // Make sure LogoRect doesn't fall off the edge
        // of our drawable area (between icon and buttons)
        IntersectRect (LogoRect, LogoRect, R);

        if LogoAlign = laLeft then
          GradientRect := Rect(LogoRect.Right, R.Top, R.Right, R.Bottom)
        else
          GradientRect := Rect(R.Left, R.Top, LogoRect.Left, R.Bottom);

        if GradientRect.Right > GradientRect.Left then
          FillRectGradient(DFS_HDC(BmpDC), GradientRect, UseDithering, Active);

        BitBlt(BmpDC, LogoRect.Left, (LogoRect.Bottom - LogoRect.Top -
          CurrentLogo.Height) div 2 + LogoRect.Top, LogoRect.Right -
          LogoRect.Left, CurrentLogo.Height, CurrentLogo.Canvas.Handle, 0, 0,
          SRCCOPY);

        // Now draw the caption stuff that needs a gradient:
        // caption buttons if logo is left-aligned, or icon
        // if logo is right-aligned.
        if LogoAlign <> laLeft then
        begin
          if ((biSystemMenu in BorderIcons) and
             (BorderStyle in [bsSingle, bsSizeable])) or
             (csDesigning in ComponentState) then
          // PaintMenuIcon will adjust the rect so that future drawing operations
          // happen in the right spot.
          PaintMenuIcon(DFS_HDC(BmpDC), R, Active);
        end
        else  // LogoAlign = laRight
          PaintCaptionButtons(DFS_HDC(BmpDC), R);

        if not LogoLayered then
          IntersectRect(R, R, GradientRect);

        // Done drawing the gradient, icon, caption buttons, and logo.
      end
      else
      begin
        if ((biSystemMenu in BorderIcons) and
           (BorderStyle in [bsSingle, bsSizeable])) or
           (csDesigning in ComponentState) then
          // PaintMenuIcon will adjust the rect so that future drawing operations
          // happen in the right spot.
          PaintMenuIcon(DFS_HDC(BmpDC), R, Active);

        PaintCaptionButtons(DFS_HDC(BmpDC), R); // Paint the min/max/help/close buttons.
      end;
    end;
    if assigned(FOnCaptionPaint) then
    begin
      BmpCanvas := TCanvas.Create;
      try
        BmpCanvas.Handle := BmpDC;
//        BmpCanvas.Font.handle := FCaptionFont.handle;
        BmpCanvas.Font := FCaptionFont;

        FOnCaptionPaint(Self, BmpCanvas, R);
      finally
        BmpCanvas.Free;
      end;
    end;
    PaintCaptionText(DFS_HDC(BmpDC), R, Active); // Paint the caption text.
    // Copy the gradient caption bar to the real DC.
    BitBlt(HDC(FormDC), Result.Left, Result.Top, W, H, BmpDC, 0, 0, SRCCOPY);
  finally
    // Clean up all the temporary drawing objects.
    SelectObject(BmpDC, OldBmp);
    DeleteObject(Bmp);
    DeleteDC(BmpDC);
  end;
end;

// Windows sends this message when the window has been activated or deactivated.
procedure TdfsGradientForm.WMNCActivate(var Msg: TWMNCActivate);
begin
  if not InhibitGradient then
  begin
    Msg.Result := 1;
    // I can't remember what the "bad things" were, and I can't find any problems
    // now if I don't call it.... If some new bug shows up, this is the first
    // place to look. 
{    if FormStyle in [fsMDIForm, fsMDIChild] then
      inherited; { Call inherited or bad things will happen with MDI }
    Draw(Msg.Active);
  end else
    inherited;
end;

// Windows sends this message whenever any part of the non-client area
// (caption, window border) needs repainting.
procedure TdfsGradientForm.WMNCPaint(var Msg: TMessage);
var
{$IFDEF DFS_COMPILER_4_UP}
  SaveWR, CR,
{$ENDIF}
  WR, R: TRect;
  DC: HDC;
  MyRgn: HRGN;
  DeleteRgn: boolean;
begin
  if not InhibitGradient then
  begin
    DeleteRgn := FALSE;
    // The region that needs painting is passed in WParam.  A region is a Windows
    // object used to describe the non-rectangular area used by a combination of
    // rectangles.  We have to typecast it because in Delphi 4 wParam is signed
    // and HRGN in unsigned.  It worked prior to D4 because they were both
    // signed.
    MyRgn := HRGN(Msg.wParam);
    DC := GetWindowDC(Handle);
    try
      GetWindowRect(Handle, WR);
      // Select the update region as the clipping region.  Clipping regions
      // guarantee that any painting done outside of the selected region is not
      // shown (thrown away).
      if SelectClipRgn(DC, MyRgn) = ERROR then
      begin
        // We got passed an invalid region.  Generally, this happens when the
        // window is first created or a MDI is minimized.  We'll create our own
        // region (the rectangle that makes up the entire window) and use that
        // instead.
        with WR do
          MyRgn := CreateRectRgn(Left, Top, Right, Bottom);
        SelectClipRgn(DC, MyRgn);
        DeleteRgn := TRUE;
      end;
      // Convert the clipping region coordinates from screen to client.
      OffsetClipRgn(DC, -WR.Left, -WR.Top);
      // Draw our gradient caption.
      R := DrawCaption(DFS_HDC(DC), IsActiveWindow);
      // Here's the trick.  DrawCaption returns the rectangle that we painted.
      // We now exclude that rectangle from the clipping region.  This guarantees
      // that any further painting that occurs will not happen in this rectangle.
      // That means that when we let the default painting for WM_NCPAINT occur,
      // it will not paint over our gradient. It only paints the stuff that we
      // didn't, like the window borders.
      ExcludeClipRect(DC, R.Left, R.Top, R.Right, R.Bottom);

{$IFDEF DFS_COMPILER_4_UP}
      // Draw border if needed
      if BorderWidth > 0 then
      begin
        Windows.GetClientRect(Handle, CR);
        SaveWR := WR;
        MapWindowPoints(0, Handle, WR, 2);
        OffsetRect(CR, -WR.Left, -WR.Top);
        { Draw borders in non-client area }
        InflateRect(CR, BorderWidth, BorderWidth);
        WR := SaveWR;
        OffsetRect(WR, -WR.Left, -WR.Top);
        Windows.FillRect(DC, WR, Brush.Handle);
        WR := SaveWR;
      end;
{$ENDIF}

      // Convert coordinates back into screen-based.
      OffsetClipRgn(DC, WR.Left, WR.Top);
      // Get the region that is now described by the clipping region.
      GetClipRgn(DC, MyRgn);
      // Pass that region on to the default WM_NCPAINT handler.  Remember, we
      // excluded the rectangle that we painted, so Windows will not be able to
      // paint over what we did. Most gradient captions components just let
      // windows draw its stuff first, and then paint the gradient.  This results
      // in an irritating "flicker", caused by the area being painted normally,
      // and then painted over a second time by the gradient. We have to
      // typecast the wParam parameter because in Delphi 4 wParam is signed and
      // HRGN in unsigned.  It worked prior to D4 because they were both signed.
      Msg.Result := DefWindowProc(Handle, Msg.Msg, WPARAM(MyRgn), Msg.lParam);
    finally
      // If we had to create our own region, we have to clean it up.
      if DeleteRgn then
        DeleteObject(MyRgn);
      ReleaseDC(Handle, DC); // NEVER leave this hanging.
    end;
  end else
    inherited;
end;

// Windows sends this message if the user changes any of the system colors.
procedure TdfsGradientForm.WMSysColorChange(var Msg: TWMSysColorChange);
var
  x: integer;
begin
  // Did they change to 16-color mode?
  FSystemIs16Color := GetSystemColorBitDepth = 4;

  if not InhibitGradient then
  begin
    if FUsingDefaultGradientStopColor then
      FGradientStopColor := clActiveCaption;
    if FUsingDefaultGradientInactiveStopColor then
      FGradientInactiveStopColor := clInactiveCaption;
    CalculateColors;
    // This only goes to top-level windows so we have to feed it to MDI children
    if FormStyle = fsMDIForm then
    begin
      for x := 0 to MDIChildCount-1 do
        if MDIChildren[x] is TdfsGradientForm then
          TdfsGradientForm(MDIChildren[x]).WMSysColorChange(Msg);
    end;
  end;
  inherited;
end;

// The window has been resized.
procedure TdfsGradientForm.WMSize(var Msg: TWMSize);
begin
  inherited;
  if not InhibitGradient then
  begin
    // If the window was maximized or restored, we need to redraw so the right
    // caption button is painted.
    if (Msg.SizeType = SIZE_MAXIMIZED) or (Msg.SizeType = SIZE_RESTORED) then
      Draw(IsActiveWindow);
  end;
end;

// Windows would like to have a cursor displayed.  I know, you're wondering
// why the hell I care about this, aren't you?  Well, in the inherited handling
//  (default Windows processing) of this message, if the mouse is over a
// resizeable border section, Windows repaints the caption buttons.  Why?  I
// have absolutely no idea.  However, that's not the important part.  When it
// repaints those buttons, it also repaints the background around them in the
// last color it painted the caption in.  Now, usually this would just result
// in losing a few bands of the caption gradient, which 99.44% of all users
// would never notice.  However, because we don't always allow default
// processing of WM_NCACTIVATE, sometimes Windows doesn't have the right idea
// about which color is currently the background.  This cause the background to
// get painted in the wrong color sometimes, which 99.44% of all users *will*
// notice.  We fix it by setting the appropriate cursor and not allowing the
// default processing to occur.
procedure TdfsGradientForm.WMSetCursor(var Msg: TWMSetCursor);
begin
  if not InhibitGradient then
  begin
    // Tell Windows we handled the message
    Msg.Result := 1;
    // Load and display the correct cursor for the border area being hit
    case Msg.HitTest of
      HTTOP,
      HTBOTTOM:      SetCursor(LoadCursor(0, MakeIntResource(IDC_SIZENS)));
      HTLEFT,
      HTRIGHT:       SetCursor(LoadCursor(0, MakeIntResource(IDC_SIZEWE)));
      HTTOPRIGHT,
      HTBOTTOMLEFT:  SetCursor(LoadCursor(0, MakeIntResource(IDC_SIZENESW)));
      HTTOPLEFT,
      HTBOTTOMRIGHT: SetCursor(LoadCursor(0, MakeIntResource(IDC_SIZENWSE)));
    else
      // Wasn't anything we cared about, so tell Windows we didn't handle it.
      Msg.Result := 0;
      inherited;
    end;
  end else
    inherited;
end;


procedure TdfsGradientForm.WMSetText(var Msg: TWMSetText);
var
  FlagSet: boolean;
  Wnd: HWND;
begin
  if (not InhibitGradient) then
  begin
    Wnd := 0;
    if ((FormStyle = fsMDIChild) and (WindowState = wsMaximized)) then
    begin
      // Need to cause main form's caption to be redrawn, not the MDI child.
      if Application.MainForm.HandleAllocated then
        Wnd := Application.MainForm.Handle;
    end else begin
      if HandleAllocated then
        Wnd := Handle;
    end;

    if (Wnd <> 0) and IsWindowVisible(Wnd) then
    begin
      FlagSet := TRUE;
      // No update region for the window.  changes won't be painted.
      SetWindowRgn(Wnd, CreateRectRgn(0, 0, 0, 0), FALSE);
    end else
      FlagSet := FALSE;

    // Normally, processing WM_SETTEXT would cause all sorts of flicker as it
    // changed the caption text of the window.  But, we've told it that the
    // update region for the window (the portion it is allowed to paint in) is
    // a NULL region (a rectangle equal to 0, 0, 0, 0).  So, the changes don't
    // have anywhere to paint now, so it is safe to call inherited at this
    // point.  After that, we'll restore the window region so that painting
    // can happen again.
    inherited;

    if FlagSet then
      // Reset region to normal.
      SetWindowRgn(Wnd, 0, FALSE);

    // Don't do it if it was called from .SetCaption
    if not EntrancyFlag then
      Caption := Msg.Text;
  end else
    inherited;
end;

procedure TdfsGradientForm.WMGetText(var Msg: TWMGetText);
begin
  if not InhibitGradient then
  begin
    StrLCopy(Msg.Text, PChar(FCaptionText), Msg.TextMax-1);
    Msg.Result := StrLen(Msg.Text)+1;
  end else
    inherited;
end;

procedure TdfsGradientForm.WMGetTextLength(var Msg: TWMGetTextLength);
begin
  if not InhibitGradient then
  begin
    Msg.Result := Length(FCaptionText);
  end else
    inherited;
end;

procedure TdfsGradientForm.WMSettingChange(var Msg: TMessage);
begin
  if not InhibitGradient then
  begin
    // User might have changed NC font.
    if Msg.wParam = SPI_SETNONCLIENTMETRICS then
      UpdateCaptionFont;
//**      CreateCaptionFontHandle;
  end;
  inherited;
end;

{: This procedure is used to paint the caption gradient.  It is normally
   called internally, but it can be used any time a repaint of the caption
   is needed. The <B>Active</B> parameter is used to indicate whether the
   caption should be painted as the active window or an inactive window. }
procedure TdfsGradientForm.Draw(Active: boolean);
var
  DC: HDC;
begin
  if csDestroying in ComponentState then exit;
  
  // Get the DC we need to paint in.  GetDC would only get the DC for the
  // client area, we need it for non-client area, too, so we use GetWindowDC.
  DC := GetWindowDC(Handle);
  try
    DrawCaption(DFS_HDC(DC), Active);
  finally
    ReleaseDC(Handle, DC); // NEVER leave this hanging.
  end;
end;

procedure TdfsGradientForm.GradClientWndProc(var Message: TMessage);
begin
  with Message do begin
    Result := CallWindowProc(FGradDefClientProc, ClientHandle, Msg, wParam,
       lParam);
    // if you don't want your MDI child forms to be TdfsGradientForm descendants,
    // you will need to use uncomment the code in the following line.
    // It will work, but it causes an annoying flicker.
    // NOTE:  as of v1.55, this is no longer necessary.  Just leave it the way
    //        it is....I think.....

    // $003F is a "Magic Number".  I hate this, but it's the only way I could
    // get it to work.  :(
    if {(Msg = WM_MDIREFRESHMENU) or} (Msg = $003F) then
      Draw(IsActiveWindow);
  end;
end;

procedure TdfsGradientForm.WMNCLButtonDown(var Msg: TWMNCLButtonDown);
begin
  inherited;
  if not InhibitGradient then
    Draw(IsActiveWindow);
end;

procedure TdfsGradientForm.WMSysCommand (var Msg : TWMSysCommand);
begin
  if not InhibitGradient then
  begin
    if Msg.CmdType = SC_CONTEXTHELP then
      // Help button pressed, do't call Draw() because it will draw it in the up state.
      inherited
    else
    begin
      Draw(IsActiveWindow);
      inherited;
      Draw(IsActiveWindow);
    end;
  end else
    inherited;
end;

procedure TdfsGradientForm.WMEnterIdle(var Msg: TWMEnterIdle);
begin
  if not InhibitGradient then
    Draw(IsActiveWindow);
  inherited;
end;

procedure TdfsGradientForm.WMWindowPosChanging(var Msg: TWMWindowPosChanging);
begin
  with Msg.WindowPos^ do
    if FCreating and ((Flags and SWP_HIDEWINDOW) <> 0) then
      Flags := Flags or SWP_NOREDRAW;
  inherited;
end;

function TdfsGradientForm.StoreGradientStopColor: boolean;
begin
  Result := not FUsingDefaultGradientStopColor;
end;

function TdfsGradientForm.StoreGradientInactiveStopColor: boolean;
begin
  Result := not FUsingDefaultGradientInactiveStopColor;
end;

function TdfsGradientForm.Win98Check: boolean;
begin
  // Are we running under Win98, and should we let it do it for us?
  Result := FUseWin98Gradient and FRunningOnWin98;
end;

function TdfsGradientForm.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

procedure TdfsGradientForm.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

procedure TdfsGradientForm.Activate;
begin
  FChangingActivationState := TRUE;
  try
    inherited Activate;
  finally
    FChangingActivationState := FALSE;
  end;
end;

procedure TdfsGradientForm.Deactivate;
begin
  FChangingActivationState := TRUE;
  try
    inherited Deactivate;
  finally
    FChangingActivationState := FALSE;
  end;
end;

procedure TdfsGradientForm.DoShow;
begin
  FChangingActivationState := TRUE;
  try
    inherited DoShow;
  finally
    FChangingActivationState := FALSE;
  end;
end;


function TdfsGradientForm.GetSystemColorBitDepth: integer;
var
  DC: HDC;
begin
  DC := GetDC(0);
  try
    Result := (GetDeviceCaps(DC, PLANES) * GetDeviceCaps(DC, BITSPIXEL));
  finally
    ReleaseDC(0, DC);
  end;
end;

function TdfsGradientForm.GetInhibitGradient: boolean;
begin
  Result := Win98Check or (SystemIs16Color and (not Paint16Color));
end;

procedure TdfsGradientForm.SetPaint16Color(const Value: boolean);
begin
  if FPaint16Color <> Value then
  begin
    FPaint16Color := Value;
    InvalidateCaption;
  end;
end;


procedure TdfsGradientForm.SetCaptionFont(const Value: TFont);
begin
  FCaptionFont.Assign(Value);
  UseSystemCaptionFont := FALSE;
  UpdateCaptionFont;
end;

function TdfsGradientForm.GetSysCaptionLogFont: TLogFont;
var
  NCM: TNonClientMetrics;
begin
  FillChar(Result, SizeOf(Result), #0);
  NCM.cbSize := SizeOf(NCM);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NCM, 0) then
  begin
    if BorderStyle in [bsToolWindow, bsSizeToolWin] then
      Result := NCM.lfSmCaptionFont
    else
      Result := NCM.lfCaptionFont;
  end;
end;

procedure TdfsGradientForm.SetUseSystemCaptionFont(const Value: boolean);
begin
  if FUseSystemCaptionFont <> Value then
  begin
    FUseSystemCaptionFont := Value;
    UpdateCaptionFont;
  end;
end;


procedure TdfsGradientForm.UpdateCaptionFont;
var
  CF: TLogFont;
  NCM: TNonClientMetrics;
  FS: TFontStyles;
begin
  CF := GetSysCaptionLogFont;
  if FUseSystemCaptionFont then
  begin
    NCM.cbSize := SizeOf(NCM);
    SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NCM, 0);
    {$IFDEF DFS_COMPILER_3_UP}
    FCaptionFont.Charset := TFontCharset(CF.lfCharSet);
    {$ENDIF}
    FCaptionFont.Name := CF.lfFaceName;
    FCaptionFont.Height := CF.lfHeight;
    case CF.lfPitchAndFamily and $F of
      VARIABLE_PITCH: FCaptionFont.Pitch := fpVariable;
      FIXED_PITCH: FCaptionFont.Pitch := fpFixed;
    else
      FCaptionFont.Pitch := fpDefault;
    end;
    FS := [];
    if CF.lfWeight >= FW_BOLD then
      Include(FS, fsBold);
    if CF.lfItalic = 1 then
      Include(FS, fsItalic);
    if CF.lfUnderline = 1 then
      Include(FS, fsUnderline);
    if CF.lfStrikeOut = 1 then
      Include(FS, fsStrikeOut);
    FCaptionFont.Style := FS;
  end else
    FCaptionFont.Height := CF.lfHeight;

  InvalidateCaption;
end;

procedure TdfsGradientForm.SetInactiveLogo(const Value: TBitmap);
begin
  FInactiveLogo.Assign(Value);
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetLogo(const Value: TBitmap);
begin
  FLogo.Assign(Value);
  InvalidateCaption;
end;

procedure TdfsGradientForm.SetLogoAlign(const Value: TGFLogoAlign);
begin
  if FLogoAlign <> Value then
  begin
    FLogoAlign := Value;
    InvalidateCaption;
  end;
end;

procedure TdfsGradientForm.SetLogoLayered(const Value: Boolean);
begin
  if FLogoLayered <> Value then
  begin
    FLogoLayered := Value;
    InvalidateCaption;
  end;
end;

procedure TdfsGradientForm.InvalidateCaption;
begin
  if HandleAllocated and not InhibitGradient then
  begin
    // Make the non client area repaint.
    SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_DRAWFRAME or SWP_NOACTIVATE or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);
   end;
end;

initialization
  EntrancyFlag := FALSE;
end.

