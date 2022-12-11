{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

unit DSAMsgReg;

{$IFNDEF DFS_WIN32}
  Error!  This unit is only available for Win32.
{$ENDIF}

{$IFNDEF DFS_COMPILER_3_UP}
  Error! This unit is not used by Delphi 2 or C++Builder 1.  Do not install it!
{$ENDIF}

interface

uses
  ExptIntf, EditIntf, Windows, SysUtils, StdCtrls, DSAMsg, DFSAbout, Consts;

const
  { This is the name of the page in the Object Repository (File | New) that the
    form expert will be created on.  I chose DFS (for Delphi Free Stuff) so
    that it remained seperate from the standard items in the repository.
    However, you may find it more convenient to change this string to 'Forms'
    so that it shows up with all the other new types of forms you have in the
    repository. }
  // The page name for the DSA Form Wizard
  sDSAFormObjRepositoryPage = 'DFS';

type
  {: Registers the class for use in the IDE of Delphi 3, 4, and C++Builder.
     Previous versions of Delphi and C++Builder 1.0 do <B>NOT</>
     support design-time access of TForm descendants.  Sorry.  Unlike a normal
     component, TForm descendant classes must have an expert that creates the
     custom form instance for the process to work. }
  { The IDE expert that allows the class to work at design-time in the IDE }
  TdfsDSAFormExpert = class(TIExpert)
  public
    function GetStyle: TExpertStyle; override;
    function GetName: string; override;
    function GetAuthor: string; override;
    function GetComment: string; override;
    function GetPage: string; override;
    function GetGlyph: HICON; override;
    function GetState: TExpertState; override;
    function GetIDString: string; override;
    function GetMenuText: string; override;
    procedure Execute; override;
  end;

  procedure Register;

implementation

uses
  {$IFDEF DFS_NO_DSGNINTF}
  DesignIntf,
  DesignEditors,
  {$ELSE}
  DsgnIntf,
  {$ENDIF}
  ToolIntf, TypInfo;

const
  CRLF = #13#10;

procedure Register;
begin
  RegisterCustomModule(TdfsDSAForm, TCustomModule);
  RegisterLibraryExpert(TdfsDSAFormExpert.Create);
  RegisterPropertyEditor(TypeInfo(string), TdfsDSAForm, 'Version',
     TDFSVersionProperty);
end;


type
  {$IFDEF DFS_DELPHI_3}
  TdfsDSAFormModuleCreator = class(TIModuleCreator)
  {$ELSE}
  TdfsDSAFormModuleCreator = class(TIModuleCreatorEx)
  {$ENDIF}
  private
    FAncestorIdent: string;
    FAncestorClass: TClass;
    FFormIdent: string;
    FUnitIdent: string;
    FFileName: string;
  public
    function Existing: boolean; override;
    function GetFileName: string; override;
    function GetFileSystem: string; override;
    function GetFormName: string; override;
    function GetAncestorName: string; override;
    function NewModuleSource({$IFNDEF DFS_DELPHI_3} const {$ENDIF} UnitIdent,
       FormIdent, AncestorIdent: string): string; override;
    {$IFNDEF DFS_DELPHI_3}
    function GetIntfName: string; override;
    function NewIntfSource(const UnitIdent, FormIdent,
       AncestorIdent: string): string; override;
    {$ENDIF}
    procedure FormCreated(Form: TIFormInterface); override;
  end;


{ TdfsDSAFormModuleCreator }

function TdfsDSAFormModuleCreator.Existing: boolean;
begin
  Result := FALSE;
end;

function TdfsDSAFormModuleCreator.GetFileName: string;
begin
  Result := '';
end;

function TdfsDSAFormModuleCreator.GetFileSystem: string;
begin
  Result := '';
end;

function TdfsDSAFormModuleCreator.GetFormName: string;
begin
  Result := FFormIdent;
end;

function TdfsDSAFormModuleCreator.GetAncestorName: string;
begin
  Result := FAncestorIdent;
end;

{$IFDEF DFS_CPPB}

function UnitName2NameSpace(const Value: string): string;
var
  s1, s2: string;
begin
  Result := '';
  if Value <> '' then
  begin
    s1 := Value[1];
    s2 := LowerCase(Value);
    System.Delete(s2, 1, 1);
    Result := UpperCase(s1)+s2;
  end;
end;

{$ENDIF}

function GetCustomFormUnit(const AClass: TClass): string;
begin
  Result := GetTypeData(PTypeInfo(AClass.ClassInfo))^.UnitName;
end;

{$IFNDEF DFS_DELPHI_3}

function TdfsDSAFormModuleCreator.GetIntfName: string;
begin
  Result := '';
end;

const
  COMMENT_LINE = '//---------------------------------------------------------------------------' + CRLF;

function TdfsDSAFormModuleCreator.NewIntfSource(const UnitIdent, FormIdent,
   AncestorIdent: string): string;
begin
  {$IFDEF DFS_CPPB}
  Result := COMMENT_LINE +
     '#ifndef ' + UnitIdent + 'H' + CRLF +
     '#define ' + UnitIdent + 'H' + CRLF +
     COMMENT_LINE +
     '#include <Classes.hpp>' + CRLF +
     '#include <Controls.hpp>' + CRLF +
     '#include <StdCtrls.hpp>' + CRLF +
     '#include <Forms.hpp>' + CRLF ;

  if (AncestorIdent <> 'Form') and (FAncestorIdent <> 'DataModule') then
    Result := Result + '#include "' +
       GetCustomFormUnit(FAncestorClass) + '.hpp"' + CRLF;

  Result := Result + COMMENT_LINE +
     'class T' + FormIdent + ' : public ' + FAncestorClass.ClassName + CRLF +
     '{' + CRLF +
      '__published: // IDE-managed Components' + CRLF +
      'private: // User declarations' + CRLF +
      'protected: // User declarations' + CRLF +
      'public: // User declarations' + CRLF +
      '  __fastcall T' + FormIdent + '(TComponent* Owner);' + CRLF +
      '__published: // User declarations' + CRLF +
      '};' + CRLF + COMMENT_LINE +
      'extern PACKAGE T'+FormIdent+' *'+FormIdent+';' + CRLF + COMMENT_LINE +
      '#endif';
  {$ELSE}
  Result := ''; // Delphi doesn't use this
  {$ENDIF}
end;

{$ENDIF}

function TdfsDSAFormModuleCreator.NewModuleSource(
   {$IFNDEF DFS_DELPHI_3} const {$ENDIF} UnitIdent, FormIdent,
   AncestorIdent: string): string;
begin
  {$IFDEF DFS_CPPB}
  Result := COMMENT_LINE + '#include <vcl.h>' + CRLF +
     '#pragma hdrstop' + CRLF + CRLF +
     '#include "' + UnitIdent + '.h"' + CRLF + COMMENT_LINE +
     '#pragma package(smart_init)' + CRLF;

  if (FAncestorIdent <> 'Form') and (FAncestorIdent <> 'DataModule') then
    Result := Result + '#pragma link "' +
       GetCustomFormUnit(FAncestorClass) + '"' + CRLF;

  Result := Result + '#pragma resource "*.dfm"' + CRLF +
     'T' + FormIdent + ' *' + FormIdent+';' + CRLF + COMMENT_LINE +
     '__fastcall T' + FormIdent + '::T' + FormIdent + '(TComponent* Owner)' + CRLF +
     '        : ' + FAncestorClass.ClassName + '(Owner)' + CRLF +
     '{' + CRLF +
     '}' + CRLF + COMMENT_LINE;
  {$ELSE}
  Result := 'unit ' + FUnitIdent + ';' + CRLF + CRLF +
     'interface' + CRLF + CRLF +
     'uses' + CRLF +
     '  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs';

  if (FAncestorIdent <> 'Form') and (FAncestorIdent <> 'DataModule') then
    Result := Result + ',' + CRLF +
       '  ' + GetCustomFormUnit(FAncestorClass);

  Result := Result + ';' + CRLF + CRLF +
     'type' + CRLF +
     '  T' + FFormIdent + ' = class(' + FAncestorClass.ClassName + ')' + CRLF +
     '  private' + CRLF +
     '    { Private declarations }' + CRLF +
     '  protected' + CRLF +
     '    { Protected declarations }' + CRLF +
     '  public' + CRLF +
     '    { Public declarations }' + CRLF +
     '  published' + CRLF +
     '    { Published declarations }' + CRLF +
     '  end;' + CRLF + CRLF +
     'var' + CRLF +
     '  ' + FFormIdent + ' : T' + FFormIdent + ';' + CRLF + CRLF +
     'implementation' + CRLF + CRLF +
     '{$R *.DFM}' + CRLF + CRLF +
     'end.' + CRLF;
  {$ENDIF}
end;

procedure TdfsDSAFormModuleCreator.FormCreated(Form: TIFormInterface);
begin
  // do nothing
end;

{ TdfsDSAFormExpert }

function TdfsDSAFormExpert.GetStyle: TExpertStyle;
begin
  // Make it show up in the object repository (File | New)
  Result := esForm;
end;

function TdfsDSAFormExpert.GetName: String;
begin
  // official name
  Result := 'DSA Form'
end;

function TdfsDSAFormExpert.GetAuthor: string;
begin
  Result := 'Bradley D. Stowers';
end;

function TdfsDSAFormExpert.GetComment: String;
begin
  Result := 'Create a new DSA form in current project';
end;

function TdfsDSAFormExpert.GetPage: string;
begin
  Result := sDSAFormObjRepositoryPage;
end;

function TdfsDSAFormExpert.GetGlyph: HICON;
begin
  Result := LoadIcon(hInstance, 'TdfsDSAForm');
end;

function TdfsDSAFormExpert.GetState: TExpertState;
begin
  // not used in a esForm expert
  Result := [esEnabled];
end;

function TdfsDSAFormExpert.GetIDString: String;
begin
  // must be unique
  Result := 'DelphiFreeStuff.TdfsDSAFormWizard';
end;

function TdfsDSAFormExpert.GetMenuText: string;
begin
  Result := ''; // not used for esForm, just here to shut up the compiler warning.
end;

procedure TdfsDSAFormExpert.Execute;
var
  IModuleCreator : TdfsDSAFormModuleCreator;
  IModule : TIModuleInterface;
begin
  IModuleCreator := TdfsDSAFormModuleCreator.Create;
  try
    IModuleCreator.FAncestorIdent := 'dfsDSAForm'; // Don't include the 'T'!!!!
    IModuleCreator.FAncestorClass := TdfsDSAForm;
    ToolServices.GetNewModuleAndClassName(IModuleCreator.FAncestorIdent,
    IModuleCreator.FUnitIdent,IModuleCreator.FFormIdent,IModuleCreator.FFileName);
    {$IFDEF DFS_DELPHI_3}
    IModule := ToolServices.ModuleCreate(IModuleCreator, [cmShowSource,
       cmShowForm, cmMarkModified, cmAddToProject, cmUnNamed]);
    {$ELSE}
    IModule:=ToolServices.ModuleCreateEx(IModuleCreator, [cmShowSource,
       cmShowForm, cmMarkModified, cmAddToProject, cmUnNamed]);
    {$ENDIF}
    IModule.Free;
  finally
    IModuleCreator.Free;
  end;
end;
       

end.

