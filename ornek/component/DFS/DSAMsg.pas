{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

{------------------------------------------------------------------------------}
{ DSAMsg Unit v2.17                                                            }
{------------------------------------------------------------------------------}
{ A unit that provides "Don't Show Again" dialog and form services.  Included  }
{ is a form class that you can descend your own forms from, routines for       }
{ showing standarad TForm descendants, and replacement rountines for the       }
{ MessageDlg function.  DSA services allow the user to specify whether or not  }
{ they want to see the dialog or form in the future with only minimal effort   }
{ on the application programmer's part.                                        }
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
{ See DSAMsg.txt for notes, known issues, and revision history.                }
{------------------------------------------------------------------------------}
{ Date last modified:  June 28, 2001                                           }
{------------------------------------------------------------------------------}


{: This unit provides "Don't Show Again" dialog and form services.  Included...
   is a form class that you can descend your own forms from, routines for...
   showing standarad TForm descendants, and replacement rountines for the...
   MessageDlg function.  DSA services allow the user to specify whether or not...
   they want to see the dialog or form in the future with only minimal effort...
   on the application programmer's part.

   The dialog has a check box positioned at the bottom left corner which...
   the user can check to specify that he does not wish to see it again. If...
   checked, calling the function again will not display the dialog, it will...
   simply return a default value immediately.

   Procedures to get and set the state of the dialog are also provided so that...
   you can programmatically re-enable a dialog that has been hidden by the user.
}

unit DSAMsg;

interface

uses
  Dialogs, Classes, StdCtrls, Controls,
  {$IFDEF DFS_WIN32}
  Registry, Windows,
  {$ELSE}
  WinTypes,
  {$ENDIF}
  Forms;



{$IFDEF DFS_COMPILER_3_UP}
resourcestring
{$ELSE}
const
{$ENDIF}
  SDontShow = '&Don''t show this message again';
  SDSAGetSpecifierBlank = 'DSAIdentsGetState storage specifier blank';
  SDSASetSpecifierBlank = 'DSAIdentsSetState storage specifier blank';

  
const
  { This shuts up C++Builder 3 about the redefiniton being different. There
    seems to be no equivalent in C1.  Sorry. }
  {$IFDEF DFS_CPPB_3_UP}
  {$EXTERNALSYM DFS_COMPONENT_VERSION}
  {$ENDIF}
  DFS_COMPONENT_VERSION = 'DSAMsg Unit v2.17';

type
{: The TdfsDSAForm class is a TForm descendant that you can base your forms on...
   to easily provide "Don't Show Again" functionalitiy.  Several properties...
   have been added to provide complete control over where the information...
   on the displayable state of the dialog is stored, but you will often find...
   that simply leaving them blank (which uses default values based on your...
   application) will be sufficient.

   The DSA_CheckBox property is key as it defines the TCheckbox component on...
   the form to be used to indicate whether or not the user wishes to see the...
   form in the future or not.  You must assign a TCheckbox to it, or the DSA...
   state can not be saved.

   The two key methods that you need to be aware of are DSAShow and...
   DSAShowModal.  Because the Show and ShowModal methods of TForm are not...
   virtual, they can not be overriden by descendants.  Therefore, I had to...
   provide completely new equivalents of these functions.  One nice side...
   effect of this is that if you want to treat the form as DSA in some...
   situations but not others, you would simply call the old methods and not...
   have to fool with making sure it was displayable first.

   Design-time support of the new properties is available for Delphi...
   3.  Previous versions of Delphi and C++Builder 1.0 do NOT support...
   design-time access of TForm descendants.  Sorry, just be happy Borland...
   added it to Delphi 3 (and I presume C++B 3.0).  Unlike a normal component,...
   TForm descendant classes must also have a package installed for the...
   registration process to work.  See the installation notes in DSAMsg.Txt...
   for complete installation instructions.

   If you are not using Delphi 3, you can still have your forms descend from...
   TdfsDSAForm, you simply won't have design-time access to the properties.  In...
   that case you will have to set the property values in code, most likely in...
   the form's OnCreate event handler or just after calling the form's Create...
   constructor if operating outside of the form's code.
   }
  TdfsDSAForm = class(TForm)
  private
    FDSA_NotShowable: boolean; { Internal flag only! }
    {$IFDEF DFS_WIN32}
    FDSA_UseRegistry: boolean;
    {$ENDIF}
    FDSA_Filename: string;
    FDSA_ID: string;
    FDSA_DefaultResult: integer;
    FDSA_CheckBox: TCheckBox;

    procedure SetDSAShowable(Value: boolean);
    function GetDSAShowable: boolean;
  protected
    function GetVersion: string;
    procedure SetVersion(const Val: string);
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Create creates and initializes an instance of TGradientForm. }
    {: No documentaion, does nothing special the client needs to be aware of. }
    constructor Create(AOwner: TComponent); override;
    {: Destroys an instance of TGradientForm, storing DSA information. The...
       DSA_Checkbox value must still be valid in the destructor, since that...
       is the point at which the DSA information is stored.  You must not...
       free the TCheckbox that is used for DSA purposes or the information...
       cannot be stored. }
    destructor Destroy; override;

    {: Shows the form modelessly, or not if the user has requested that it...
       not be shown.  In that case, the window is simply closed.  The...
       instance of the form is not freed unless you have set CloseAction to...
       caFree in then OnClose event handler.

       Note that this function MUST be used in place of the normal Show...
       method because Show is not virtual (i.e. it can't be overriden to...
       modify behavior).  One nice side effect of this is that if you want...
       to treat the form as DSA in some situations but not others, you would...
       simply call the Show method and not have to fool with making sure it...
       was displayable first.
    }
    procedure DSAShow;
    {: Shows the form modally, or not if the user has requested that it...
       not be shown.  In that case, the window is simply closed and the value...
       of DSA_DefaultResult is returned.  The instance of the form is not...
       automatically freed, and must be treated as you would any normal TForm.

       Note that this function MUST be used in place of the normal ShowModal...
       method because ShowModal is not virtual (i.e. it can't be overriden to...
       modify behavior).  One nice side effect of this is that if you want...
       to treat the form as DSA in some situations but not others, you would...
       simply call the ShowModal method and not have to fool with making sure...
       it was displayable first.
    }
    function DSAShowModal: Integer;

    {: Use the DSAClear method to reset form's displayable state.  That is, if...
       the user has elected not to show the form, you can reset it so that...
       it will show up again.

       Normally, there is no way to re-enable a form once the user has turned...
       it off since it isn't displayed any longer.  However, it is wise to...
       include the ability to turn these back on in case the user disabled it...
       by accident, or changes its mind.  This functionality is often found in...
       a configuration/settings dialog.
    }
    procedure DSAClear;
  published
    property Version: string
       read GetVersion
       write SetVersion
       stored FALSE;
    {: The DSA_UseRegistry property is used to indicate if the displayable state...
       of the form should be stored in the registry or an INI file.  The...
       actual location in the registry or INI file is controlled by the...
       DSA_Filename and DSA_ID properties.  This property merely indicates...
       how those values should be interpretted.

       This property is not avaible under Delphi 1.
    }
    {$IFDEF DFS_WIN32}
    property DSA_UseRegistry: boolean
       read FDSA_UseRegistry write FDSA_UseRegistry;
    {$ENDIF}
    {: DSA_Filename is the INI file name (DSA_UseRegistry = FALSE) or Registry...
       path (Win32 only, DSA_UseRegistry = TRUE) that is used in conjunction...
       with the DSA_ID property to store the displayable state of the form.

       If this value is blank, the value of the DefaultFilename global is used.
    }
    property DSA_Filename: string
       read FDSA_Filename write FDSA_Filename;
    {: DSA_ID is the INI section name (DSA_UseRegistry = FALSE) or Registry...
       path subkey (Win32 only, DSA_UseRegistry = TRUE) that is used in...
       conjunction with the DSA_Filename property to store the displayable...
       state of the form.

       If this value is blank, the value of the ClassName property is used.
    }
    property DSA_ID: string
       read FDSA_ID write FDSA_ID;
    {: The DSA_DefaultResult property is used to specify what value the...
       DSAShowModal method should return if the user has elected not to...
       display the form.
    }
    property DSA_DefaultResult: integer
       read FDSA_DefaultResult write FDSA_DefaultResult;
    {: The DSA_CheckBox property identifies the TCheckBox component on the...
       form that should be treated as the "Don't Show Again" checkbox.  If...
       this property is blank (NIL), DSA functionality is disabled for the...
       form (i.e. DSAShowModal and DSAShow will always show the form).

       Simply assign any existing TCheckBox component on the form to this...
       property and when the form is destroyed, this checkbox will be used...
       to indicate the displayable state of the form for future calls to...
       DSAShow and DSAShowModal.

       If the box is checked, that indicates that it should not be shown in...
       the future.  The checkbox's caption should be worded accordingly.
    }
    property DSA_CheckBox: TCheckBox
       read FDSA_CheckBox write FDSA_CheckBox;
    {: The DSA_Showable property is used to check or set the displayable state...
       of the form.

       Normally, there is no way to re-enable a form once the user has turned...
       it off since it isn't displayed any longer.  However, it is wise to...
       include the ability to turn these back on in case the user disabled it...
       by accident, or changes its mind.  This functionality is often found in...
       a configuration/settings dialog.

       Setting this value to FALSE is equivalent to calling the DSAClear method.
    }
    property DSA_Showable: boolean
       read GetDSAShowable write SetDSAShowable;
  end;


{: A TForm.ShowModal replacement function.  This function will display the...
   form passed in the AForm parameter using the form class' ShowModal...
   function.  However, before ShowModal is called, the function will add a...
   check box in the bottom left corner of the form.  If the user checks it...
   before closing the form, the form will not be displayed in the future...
   when this function is called.

   The text that appears next to the check box is "Don't show this message...
   again", but this can be changed by using the DontShowMsgText global variable.

   If the user elects not to display the form in the future, this function...
   stores a value in an INI file or the registry (Win32 only) to identify...
   this fact.  Where this value is stored is controlled by three global...
   variables defined in the DSAMsg unit: UseRegistry, RegRootKey, and...
   DefaultFilename.  These values can be changed in your program if you so...
   desire.  A unique identifier based on the class name of the form will also...
   be used.  If you need more precise control over the storage location, you...
   should use the DSAIdentsShowModal function.

   If you need to re-enable a form that has been disabled, you can use the...
   DSAFormClear function, passing it the class type of the form variable you...
   passed to this function.  The form will then be displayed when this...
   function is called.

   AForm is an instance of the form you want to display already created.  The...
   DefaultResult value is used to specify what value to return if the user...
   has elected not to display the form.

   DSAShowModal returns the same value that TForm.ShowModal returns, except...
   if the form is not displayed.  In that case, the value of the...
   DefaultResult parameter is returned.

   $<EXAMPLE> }
function DSAShowModal(const AForm: TForm; DefaultResult: word): Word;


{: A TForm.ShowModal replacement function.  This function will display the...
   form passed in the AForm parameter using the form class' ShowModal...
   function.  However, before ShowModal is called, the function will add a...
   check box in the bottom left corner of the form.  If the user checks it...
   before closing the form, the form will not be displayed in the future...
   when this function is called.

   The text that appears next to the check box is "Don't show this message...
   again", but this can be changed by using the DontShowMsgText global variable.

   If the user elects not to display the form in the future, this function...
   stores a value in an INI file or the registry (Win32 only) to identify...
   this fact.  Where this value is stored is controlled by the Filename and...
   ID parameters, along with three global variables defined in the DSAMsg...
   unit: UseRegistry, RegRootKey, and DefaultFilename.  These values can be...
   changed in your program if you so desire.  If you leave the Filename...
   parameter blank, the value in DefaultFilename will be used.  If this is...
   also blank, or if ID is blank, an exception will be raised.

   If you need to re-enable a form that has been disabled, you can use the...
   DSAIdentsClear function, passing it the same Filename and ID parameters as...
   you passed to this function.  The form will then be displayed when this...
   function is called.

   AForm is an instance of the form you want to display already...
   created.  Filename is the INI file name or Registry path (Win32 only) that...
   is used in conjunction with the ID identifier to store the displayable...
   state of the dialog.  DefaultResult value is used to specify what value to...
   return if the user has elected not to display the form.

   DSAIdentsShowModal returns the same value that TForm.ShowModal returns,...
   except if the form is not displayed.  In that case, the value of the...
   DefaultResult parameter is returned.

   $<EXAMPLE> }
function DSAIdentsShowModal(const AForm: TForm; Filename, ID: string;
   DefaultResult: word): Word;


{: A MessageDlg replacement function.  This function will display a dialog...
   that is identical to the one that MessageDlg will display, except it will...
   also include a check box in the bottom left corner of the dialog.  If the...
   user checks it before closing the dialog, the dialog will not be displayed...
   in the future when this function is called.

   The text that appears next to the check box is "Don't show this message...
   again", but this can be changed by using the DontShowMsgText global variable.

   If the user elects not to display the dialog in the future, this function...
   stores a value in an INI file or the registry (Win32 only) to identify...
   this fact.  Where this value is stored is controlled by three global...
   variables defined in the DSAMsg unit: UseRegistry, RegRootKey, and...
   DefaultFilename.  These values can be changed in your program if you so...
   desire.  A unique identifier based on the Msg parameter will also be...
   used.  If you need more precise control over the storage location, you...
   should use the DSAIdentsMessageDlg.

   If you need to re-enable a dialog that has been disabled, you can use the...
   DSAClear function, passing it the same Msg parameter as you pass to this...
   function.  The dialog will then be displayed when this function is called.

   The message box displays the value of the Msg parameter.  Use the AType...
   parameter to indicate the purpose of the dialog.  Use the AButtons...
   parameter to indicate what buttons should appear in the message box.  Use...
   the HelpCtx parameter to specify the context ID for the help topic that...
   should appear when the user clicks the help button or presses F1 while the...
   dialog is displayed. Use the DefaultResult value to specify what value to...
   return if the user has elected not to display the dialog.

   DSAMessageDlg returns the value of the button the user selected, or the...
   value of the DefaultResult parameter if the dialog was not displayed. These...
   are the possible return values if DefaultResult is not used:

   	mrNone	mrAbort	mrYes
   	mrOk	mrRetry	mrNo
   	mrCancel	mrIgnore	mrAll

   $<EXAMPLE> }
function DSAMessageDlg(const Msg: string; AType: TMsgDlgType;
   AButtons: TMsgDlgButtons; HelpCtx: Longint; DefaultResult: word): Word;


{: A MessageDlg replacement function.  This function will display a dialog...
   that is identical to the one that MessageDlg will display, except it will...
   also include a check box in the bottom left corner of the dialog.  If the...
   user checks it before closing the dialog, the dialog will not be displayed...
   in the future when this function is called.

   The text that appears next to the check box is "Don't show this message...
   again", but this can be changed by using the DontShowMsgText global variable.

   If the user elects not to display the dialog in the future, this function...
   stores a value in an INI file or the registry (Win32 only) to identify...
   this fact.  Where this value is stored is controlled by the Filename and...
   ID parameters, along with three global variables defined in the DSAMsg...
   unit: UseRegistry, RegRootKey, and DefaultFilename.  These values can be...
   changed in your program if you so desire.  If you leave the Filename...
   parameter blank, the value in DefaultFilename will be used.  If this is...
   also blank, or if ID is blank, an exception will be raised.

   If you need to re-enable a dialog that has been disabled, you can use the...
   DSAIdentsClear function, passing it the same Filename and ID parameters as...
   you pass to this function.  The dialog will then be displayed when this...
   function is called.

   The message box displays the value of the Msg parameter.  Use the AType...
   parameter to indicate the purpose of the dialog.  Use the AButtons...
   parameter to indicate what buttons should appear in the message box.  Use...
   the HelpCtx parameter to specify the context ID for the help topic that...
   should appear when the user clicks the help button or presses F1 while the...
   dialog is displayed.  Filename is the INI file name or Registry path...
   (Win32 only) that is used in conjunction with the ID identifier to store...
   the displayable state of the dialog.  Use the DefaultResult value to...
   specify what value to return if the user has elected not to display the...
   dialog.

   DSAIdentsMessageDlg returns the value of the button the user selected, or...
   the value of the DefaultResult parameter if the dialog was not...
   displayed. These are the possible return values if DefaultResult is not used:

   	mrNone	mrAbort	mrYes
   	mrOk	mrRetry	mrNo
   	mrCancel	mrIgnore	mrAll

   $<EXAMPLE> }
function DSAIdentsMessageDlg(const Msg: string; AType: TMsgDlgType;
   AButtons: TMsgDlgButtons; HelpCtx: Longint; Filename, ID: string;
   DefaultResult: word): Word;


{: Use the DSAFormClear procedure to reset a DSAShowModal form that has been...
   disabled by the user.  Simply pass the class type of the form that was...
   passed to the DSAShowModal function.

   Normally, there is no way to re-enable a dialog once the user has turned...
   it off since it isn't displayed any longer.  However, it is wise to...
   include the ability to turn these back on in case the user disabled it...
   by accident, or changes its mind.  This functionality is often found in...
   a configuration/settings dialog.

   $<EXAMPLE> }
procedure DSAFormClear(const AFormClass: TFormClass);


{: Use the DSAClear procedure to reset a DSAMessageDlg dialog that has been...
   disabled by the user.  Simply pass the same text in the Msg parameter as...
   you do in the Msg parameter of the DSAMessageDlg function.

   Normally, there is no way to re-enable a dialog once the user has turned...
   it off since it isn't displayed any longer.  However, it is wise to...
   include the ability to turn these back on in case the user disabled it...
   by accident, or changes its mind.  This functionality is often found in...
   a configuration/settings dialog.

   $<EXAMPLE> }
procedure DSAClear(const Msg: string);


{: Use the DSAIdentsClear procedure to reset a DSAIdentsMessageDlg dialog..
   that has been disabled by the user.  Simply pass the same values in the...
   Filename and ID parameters as you do in the Filename and ID parameters of...
   the DSAIdentsMessageDlg function.

   Normally, there is no way to re-enable a dialog once the user has turned...
   it off since it isn't displayed any longer.  However, it is wise to...
   include the ability to turn these back on in case the user disabled it...
   by accident, or changes its mind.  This functionality is often found in...
   a configuration/settings dialog.

   $<EXAMPLE>
}
procedure DSAIdentsClear(Filename, ID: string);


{: This routine allows you to get the displayable state a form that is used...
   with the DSAShowModal or DSAIdentsShowModal function.

   Simply pass the form class to the function and if the form has been...
   disabled by the user, this function returns FALSE; otherwise, TRUE is...
   returned.

   This function is useful when allowing users to restore DSA dialogs that...
   they have hidden.

   $<EXAMPLE> }
function DSAFormGetState(const AFormClass: TFormClass): boolean;


{: This routine allows you to set the displayable state a form that is used...
   with the DSAShowModal or DSAIdentsShowModal function.

   Simply pass the form class to the function and a boolean value indicating...
   whether or not the form should be displayed.

   This function is useful when allowing users to override DSA dialogs...
   settings, in a configuration dialog for instance.

   $<EXAMPLE> }
procedure DSAFormSetState(const AFormClass: TFormClass; Value: boolean);


{: This routine allows you to get the displayable state for a dialog that is...
   used with the DSAMessageDlg function.

   Simply pass the same message string to the function that is passed to the...
   DSAMessageDlg function and if the dialog has been disabled by the user,...
   this function returns FALSE; otherwise, TRUE is returned.

   This function is useful when allowing users to restore DSA dialogs that...
   they have hidden.

   $<EXAMPLE> }
function DSAGetState(Msg: string): boolean;


{: This routine allows you to set the displayable state for a dialog that is...
   used with the DSAMessageDlg function.

   Simply pass the same message string to the function that is passed to the...
   DSAMessageDlg function and a boolean value indicating whether or not the...
   dialog should be displayed by DSAMessageDlg.

   This function is useful when allowing users to set preferences for showing...
   or hiding DSA dialogs from a central location (say a configuration dialog...
   that lists all DSA dialogs).

   $<EXAMPLE> }
procedure DSASetState(Msg: string; Value: boolean);


{: This routine allows you to get the displayable state for a dialog that is...
   used with the DSAIdentsMessageDlg function.

   Simply pass the same Filename and ID parameters to the function that are...
   passed to the DSAIdentsMessageDlg function and if the dialog has been...
   disabled by the user, this function returns FALSE; otherwise, TRUE is...
   returned.

   This function is useful when allowing users to restore DSA dialogs that...
   they have hidden.

   $<EXAMPLE> }
function DSAIdentsGetState(Filename, ID: string): boolean;


{: This routine allows you to set the displayable state for a dialog that is...
   used with the DSAIdentsMessageDlg function.

   Simply pass the same Filename and ID parameters to the function that are...
   passed to the DSAIdentsMessageDlg function and and a boolean value...
   indicating whether or not the dialog should be displayed by...
   DSAIdentsMessageDlg.

   This function is useful when allowing users to set preferences for showing...
   or hiding DSA dialogs from a central location (say a configuration dialog...
   that lists all DSA dialogs).

   $<EXAMPLE> }
procedure DSAIdentsSetState(Filename, ID: string; Value: boolean);


const
  {: This constant is the string that is assigned to the Name property of the...
     checkbox that is created by the various DSA dialog functions.  It is...
     included in case you ever needed to find the checkbox component.  You...
     can simply search for it using the FindComponent method, passing this...
     value as the parameter. 

   $<EXAMPLE> }
  DSA_CHECKBOX_NAME = '__DSA_CheckBox'; { in case you ever need to find it. }

{$IFDEF DFS_WIN32}
{$WRITEABLECONST ON}
  {: This writeable constant (also known as a static variable) allows you to...
     control whether the dialog display state storage uses the registry or an...
     INI file.  By default, the registry is used for Win32 (Windows 95 and...
     Windows NT), but simply setting this to FALSE will cause values to saved...
     in an INI file.

     This is only available under Win32.  It does not exist in Delphi 1 since...
     the registry is not the same as it is in Win32.  Only INI files can be...
     used in Delphi 1.

   $<EXAMPLE> }
  UseRegistry: boolean = TRUE;

  {: This writeable constant (also known as a static variable) allows you to...
     control which root registry key is used when storing dialog display...
     state information to the registry.  By default, the HKEY_CURRENT_USER...
     key is used, as that is the recommend key for applications to use...
     However, you may assign any of the HKEY_* constants to this to change...
     the root key.

     This is only available under Win32.  It does not exist in Delphi 1 since...
     the registry is not the same as it is in Win32.  Only INI files can be...
     used in Delphi 1.

   $<EXAMPLE> }
  RegRootKey: HKey = HKEY_CURRENT_USER;

{$ENDIF}

  {: This writeable constant (also known as a static variable) allows you to...
     control the default registry key or INI filename to use when storing...
     dialog display state information.

     This value is used by DSAMessageDlg, and also by DSAIdentsMessageDlg...
     when the Filename parameter has been left blank.

     If you are compiling for Win32, the default is 'Software\your_app_title\...
     DSADialogs\' where 'your_app_title' is the value returned by...
     Application.Title.

     If you are compiling for Win16, the default is an INI file with the same...
     name as your executable, and in the same directory.

   $<EXAMPLE> }
  DefaultFilename: string = ''; { Value set in initialization section }

  {: This writeable constant (also known as a static variable) allows you to...
     control the text that appears next to the check box.  By default, this...
     value is "&Don't show this message again".  If you do not like this, or...
     if using a foreign language, you can change the text by assigning your...
     own value.

   $<EXAMPLE> }
  DontShowMsgText: string = SDontShow;

  { Allowable characters in INI/registry keys.  Modified in InitValidChars below}
  Valid_Key_chars: set of char = ['~', '!', '@', '#', '$', '%', '^', '&',
     '_', '-'];


implementation

uses
  SysUtils, WinProcs, IniFiles;


{$IFDEF DFS_DELPHI_1}
function Trim(const S: string): string;
var
  I, L: Integer;
begin
  L := Length(S);
  I := 1;
  while (I <= L) and (S[I] <= ' ') do Inc(I);
  if I > L then Result := '' else
  begin
    while S[L] <= ' ' do Dec(L);
    Result := Copy(S, I, L - I + 1);
  end;
end;
{$ENDIF}


{ Utility function to strip invalid characters from INI and registry keys }
function StripInvalidChars(const S: string; AllowSlash: boolean): string;
var
  x: integer;
begin
  Result := '';
  for x := 1 to Length(S) do
  begin
    if (S[x] in ['\', '.', ':']) and AllowSlash then
      Result := Result + S[x]
    else if S[x] in Valid_Key_Chars then
      Result := Result + S[x]
    else
      Result := Result + ' ';
  end;
  { Also have to strip leading/trailing blanks or it messes up INI sections }
  Result := Trim(Result);
end;


{ Create creates and initializes an instance of TdfsDSAForm. }
constructor TdfsDSAForm.Create(AOwner: TComponent);
begin
  FDSA_NotShowable := FALSE;
  {$IFDEF DFS_WIN32}
  FDSA_UseRegistry := TRUE;
  {$ENDIF}
  FDSA_DefaultResult := mrOk;

  { have to call after so we don't stomp on stuff that may happen in OnCreate }
  inherited Create(AOwner);
end;


destructor TdfsDSAForm.Destroy;
var
  {$IFDEF DFS_WIN32}
  OldUseReg: boolean;
  {$ENDIF}
  AnID: string;
begin
  if assigned(FDSA_CheckBox) and (not FDSA_NotShowable) then
  begin
    if DSA_ID = '' then
      AnID := ClassName
    else
      AnID := DSA_ID;

    {$IFDEF DFS_WIN32}
    OldUseReg := UseRegistry;
    UseRegistry := DSA_UseRegistry;
    try
    {$ENDIF}
      DSAIdentsSetState(DSA_Filename, AnID, not DSA_CheckBox.Checked);
    {$IFDEF DFS_WIN32}
    finally
      UseRegistry := OldUseReg;
    end;
    {$ENDIF}
  end;

  inherited Destroy;
end;

function TdfsDSAForm.GetVersion: string;
begin
  Result := DFS_COMPONENT_VERSION;
end;

procedure TdfsDSAForm.SetVersion(const Val: string);
begin
  { empty write method, just needed to get it to show up in Object Inspector }
end;

procedure TdfsDSAForm.Notification(AComponent: TComponent; Operation: TOperation);
begin
  if Operation = opRemove then
  begin
    if AComponent = FDSA_CheckBox then
      FDSA_CheckBox := NIL;
  end else begin  { opInsert }
    if (FDSA_CheckBox = NIL) and (AComponent is TCheckBox) then
      FDSA_CheckBox := TCheckBox(AComponent);
  end;

  inherited Notification(AComponent, Operation);
end;


procedure TdfsDSAForm.SetDSAShowable(Value: boolean);
{$IFDEF DFS_WIN32}
var
  OldUseReg: boolean;
{$ENDIF}
begin
  if ([csLoading, csReading] * ComponentState) <> [] then
    exit; // Don't go setting values when we are reading the form.
    
  {$IFDEF DFS_WIN32}
  OldUseReg := UseRegistry;
  UseRegistry := DSA_UseRegistry;
  try
  {$ENDIF}
    if DSA_ID = '' then
      DSAFormSetState(TFormClass(ClassType), Value)
    else
      DSAIdentsSetState(DSA_Filename, DSA_ID, Value);
  {$IFDEF DFS_WIN32}
  finally
    UseRegistry := OldUseReg;
  end;
  {$ENDIF}
end;


function TdfsDSAForm.GetDSAShowable: boolean;
{$IFDEF DFS_WIN32}
var
  OldUseReg: boolean;
{$ENDIF}
begin
  {$IFDEF DFS_WIN32}
  OldUseReg := UseRegistry;
  UseRegistry := DSA_UseRegistry;
  try
  {$ENDIF}
    if DSA_ID = '' then
      Result := DSAFormGetState(TFormClass(ClassType))
    else
      Result := DSAIdentsGetState(DSA_Filename, DSA_ID);
  {$IFDEF DFS_WIN32}
  finally
    UseRegistry := OldUseReg;
  end;
  {$ENDIF}
end;


procedure TdfsDSAForm.DSAShow;
begin
  if (DSA_CheckBox = NIL) or DSA_Showable then
    Show
  else begin
    { Flag it so we don't overwrite with the checkbox value }
    FDSA_NotShowable := TRUE;
    Close;
  end;
end;


function TdfsDSAForm.DSAShowModal: Integer;
begin
  if DSA_CheckBox = NIL then
  begin
    Result := ShowModal;
    exit;
  end;

  if DSA_Showable then
  begin
    Result := ShowModal;
    { Something may have whacked the checkbox, take no chances }
    if DSA_CheckBox <> NIL then
      DSA_Showable := not DSA_CheckBox.Checked;
  end else begin
    { Flag it so we don't overwrite with the checkbox value }
    FDSA_NotShowable := TRUE;
    Close;
    Result := DSA_DefaultResult;
  end;
end;

procedure TdfsDSAForm.DSAClear;
begin
  DSA_Showable := TRUE;
end;




function DSAShowModal(const AForm: TForm; DefaultResult: word): Word;
begin
  Result := DSAIdentsShowModal(AForm, '', '', DefaultResult);
end;



function DSAIdentsShowModal(const AForm: TForm; Filename, ID: string;
   DefaultResult: word): Word;
var
  DSA: TCheckBox;
  EdgeCtl: TControl;
  TopCtl: TControl;
  x: integer;
begin
  Result := DefaultResult;
  if AForm = NIL then exit;

  if ID = '' then
    ID := AForm.ClassName;

  if not DSAIdentsGetState(Filename, ID) then
    exit;

  DSA := NIL;
  { Find left edge of the left-most control on the form }
  EdgeCtl := NIL;
  TopCtl := NIL;
  for x := 0 to AForm.ControlCount-1 do
  begin
    if EdgeCtl = NIL then
      EdgeCtl := AForm.Controls[x]
    else
      if AForm.Controls[x].Left < EdgeCtl.Left then
        EdgeCtl := AForm.Controls[x];
    if TopCtl = NIL then
      TopCtl := AForm.Controls[x]
    else
      if AForm.Controls[x].Top < TopCtl.Top then
        TopCtl := AForm.Controls[x];
  end;
  if (EdgeCtl <> NIL) and (TopCtl <> NIL) then
  begin
    { It's possible that this form has already has the checkbox on it, i.e. it
      has been passed to this function before without being freed.  Find out. }
    DSA := TCheckBox(AForm.FindComponent(DSA_CHECKBOX_NAME));
    if DSA = NIL then
    begin
      DSA := TCheckBox.Create(AForm);
      DSA.Name := DSA_CHECKBOX_NAME;
      DSA.Parent := AForm;
    end;

    DSA.Caption := DontShowMsgText;
    DSA.Width := AForm.Canvas.TextWidth(DontShowMsgText) + 19;

    { Position the checkbox at the bottom }
    DSA.Left := EdgeCtl.Left;
    DSA.Top := AForm.ClientHeight;
    { Make room for the checkbox }
    AForm.ClientHeight := AForm.ClientHeight + DSA.Height + TopCtl.Top;
    { Make sure it's wide enough }
    if (DSA.Width + (EdgeCtl.Left * 2)) > AForm.ClientWidth then
      AForm.ClientWidth := DSA.Width + (EdgeCtl.Left * 2);
    { Recenter it if we should }
    if AForm.Position = poScreenCenter then
      AForm.Top := (Screen.Height div 2) - (AForm.Height div 2);
  end;

  Result := AForm.ShowModal;

  if DSA <> NIL then
    DSAIdentsSetState(Filename, ID, not DSA.Checked);
  { Don't need to free DSA item because it is owned by the form.  It will do it
    when it is freed. }
end;


function DSAMessageDlg(const Msg: string; AType: TMsgDlgType;
   AButtons: TMsgDlgButtons; HelpCtx: Longint; DefaultResult: word): Word;
begin
  Result := DSAIdentsMessageDlg(Msg, AType, AButtons, HelpCtx, '', '',
     DefaultResult);
end;

function DSAIdentsMessageDlg(const Msg: string; AType: TMsgDlgType;
   AButtons: TMsgDlgButtons; HelpCtx: Longint; Filename, ID: string;
   DefaultResult: word): Word;
var
  Dlg: TForm;
  DSA: TCheckBox;
  EdgeCtl: TControl;
begin
  Result := DefaultResult;
  if ID = '' then
    ID := Msg;

  if not DSAIdentsGetState(Filename, ID) then
    exit;

  Dlg := CreateMessageDialog(Msg, AType, AButtons);
  try
    Dlg.HelpContext := HelpCtx;

    { DSA stuff }
    DSA := TCheckBox.Create(Dlg);
    DSA.Name := DSA_CHECKBOX_NAME;
    DSA.Parent := Dlg;
    DSA.Caption := DontShowMsgText;
    DSA.Width := Dlg.Canvas.TextWidth(DontShowMsgText) + 19;
    { Find left edge of a known control }
    EdgeCtl := TControl(Dlg.FindComponent('Image'));
    if EdgeCtl = NIL then { must be mtCustom type }
      EdgeCtl := TControl(Dlg.FindComponent('Message'));
    if EdgeCtl = NIL then begin { I give up }
      DSA.Free;
      DSA := NIL;
    end else begin
      { Position the checkbox at the bottom }
      DSA.Left := EdgeCtl.Left;
      DSA.Top := Dlg.ClientHeight;
      { Make room for the checkbox }
      Dlg.ClientHeight := Dlg.ClientHeight + DSA.Height + EdgeCtl.Top;
      { Make sure it's wide enough }
      if (DSA.Width + (EdgeCtl.Left * 2)) > Dlg.ClientWidth then
        Dlg.ClientWidth := DSA.Width + (EdgeCtl.Left * 2);
      { Recenter it }
      Dlg.Top := (Screen.Height div 2) - (Dlg.Height div 2);
    end;

    Result := Dlg.ShowModal;

    if DSA <> NIL then
      DSAIdentsSetState(Filename, ID, not DSA.Checked);
  finally
    Dlg.Free;
  end;
  { Don't need to free DSA item because it is owned by the form.  It will do it
    when it is freed. }
end;

procedure DSAIdentsClear(Filename, ID: string);
begin
  DSAIdentsSetState(Filename, ID, TRUE);
end;

procedure DSAClear(const Msg: string);
begin
  DSAIdentsSetState('', Msg, TRUE);
end;


procedure DSAFormClear(const AFormClass: TFormClass);
begin
  DSAIdentsSetState('', AFormClass.ClassName, TRUE);
end;


function DSAFormGetState(const AFormClass: TFormClass): boolean;
begin
  Result := DSAGetState(AFormClass.ClassName);
end;


procedure DSAFormSetState(const AFormClass: TFormClass; Value: boolean);
begin
  DSASetState(AFormClass.ClassName, Value);
end;


function DSAGetState(Msg: string): boolean;
begin
  Result := DSAIdentsGetState('', Msg);
end;


procedure DSASetState(Msg: string; Value: boolean);
begin
  DSAIdentsSetState('', Msg, Value);
end;


function DSAIdentsGetState(Filename, ID: string): boolean;
var
  INI: TIniFile;
  {$IFDEF DFS_WIN32}
  Reg: TRegistry;
  {$ENDIF}
begin
  Result := TRUE;

  if Filename = '' then
    Filename := DefaultFilename;

  ID := StripInvalidChars(ID, FALSE);
  Filename := StripInvalidChars(Filename, TRUE);
  if (ID = '') or (Filename = '') then
    raise Exception.Create(SDSAGetSpecifierBlank);

  {$IFDEF DFS_WIN32}
  if UseRegistry then
  begin
    if FileName[Length(Filename)] <> '\' then
      FileName := Filename + '\';
    Filename := Filename + ID;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := RegRootKey;
      if Reg.OpenKey(Filename, FALSE) then
      begin
        try
          Result := not Reg.ReadBool('DontShow');
        except
          Result := TRUE;
        end;
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;
  end else
  {$ENDIF}
  begin
    INI := TIniFile.Create(Filename);
    try
      Result := not INI.ReadBool(ID, 'DontShow', FALSE);
    finally
      INI.Free;
    end;
  end;
end;


procedure DSAIdentsSetState(Filename, ID: string; Value: boolean);
var
  INI: TIniFile;
  {$IFDEF DFS_WIN32}
  Reg: TRegistry;
  {$ENDIF}
begin
  if Filename = '' then
    Filename := DefaultFilename;

  ID := StripInvalidChars(ID, FALSE);
  Filename := StripInvalidChars(Filename, TRUE);
  if (ID = '') or (Filename = '') then
    raise Exception.Create(SDSASetSpecifierBlank);

  {$IFDEF DFS_WIN32}
  if UseRegistry then
  begin
    if FileName[Length(Filename)] <> '\' then
      FileName := Filename + '\';
    Filename := Filename + ID;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := RegRootKey;
      if Reg.OpenKey(Filename, TRUE) then
      begin
        try
          Reg.WriteBool('DontShow', not Value);
        except
          { do nothing };
        end;
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;
  end else
  {$ENDIF}
  begin
    INI := TIniFile.Create(Filename);
    try
      INI.WriteBool(ID, 'DontShow', not Value);
    finally
      INI.Free;
    end;
  end;
end;

procedure InitValidChars;
var
  c: Char;
begin
  for c := #0 to #255 do
    { ask Windows if it is alphanumeric.  This is for international chars }
    if IsCharAlphaNumeric(c) then
      Valid_Key_Chars := Valid_Key_Chars + [c];
end;


initialization
  InitValidChars;
  {$IFDEF DFS_WIN32}
  DefaultFilename := 'Software\' + Application.Title + '\DSADialogs';
  {$ELSE}
  DefaultFilename := ChangeFileExt(Application.EXEName, '.INI');
  {$ENDIF}
end.

