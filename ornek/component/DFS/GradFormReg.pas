{$I DFS.INC}  { Standard defines for all Delphi Free Stuff components }

unit GradFormReg;

{$IFNDEF DFS_WIN32}
  Error!  This unit is only available for Win32.
{$ENDIF}

interface

uses
  {$IFDEF DFS_COMPILER_3_UP} ExptIntf, EditIntf, {$ENDIF}
  Windows, SysUtils, StdCtrls, GradForm, DFSAbout, Consts;

const
  { This is the name of the page in the Object Repository (File | New) that the
    form expert will be created on.  I chose DFS (for Delphi Free Stuff) so
    that it remained seperate from the standard items in the repository.
    However, you may find it more convenient to change this string to 'Forms'
    so that it shows up with all the other new types of forms you have in the
    repository. }
  // The page name for the Gradient Form Wizard
  sGradFormObjRepositoryPage = 'DFS';
  // The page name for the Gradient Form Project wizard
  sGradFormProjObjRepositoryPage = 'DFS';

type

{$IFDEF DFS_COMPILER_3_UP}
  {: Registers the class for use in the IDE of Delphi 3, 4, and C++Builder.
     Previous versions of Delphi and C++Builder 1.0 do <B>NOT</>
     support design-time access of TForm descendants.  Sorry.  Unlike a normal
     component, TForm descendant classes must have an expert that creates the
     custom form instance for the process to work. }
  { The IDE expert that allows the class to work at design-time in the IDE }
  TdfsGradientFormExpert = class(TIExpert)
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

{$IFDEF DFS_DELPHI_3_UP}
  { Generating a project file for C++Builder is more work than I want to
    even try.  If somone has a go at this, let me know. }
  TdfsGradientFormProjectExpert = class(TIExpert)
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

  TdfsGradientFormProjectCreator = class(TIProjectCreator)
  public
    function Existing: boolean; override;
    function GetFileName: string; override;
    function GetFileSystem: string; override;
    function NewProjectSource(const ProjectName: string): string; override;
    procedure NewDefaultModule; override;
    procedure NewProjectResource(Module: TIModuleInterface); override;
  end;
{$ENDIF}

  procedure Register;
{$ENDIF}


implementation

{$IFDEF DFS_COMPILER_3_UP}
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
  RegisterCustomModule(TdfsGradientForm, TCustomModule);
  RegisterLibraryExpert(TdfsGradientFormExpert.Create);
{$IFDEF DFS_DELPHI_3_UP}
  RegisterLibraryExpert(TdfsGradientFormProjectExpert.Create);
{$ENDIF}  
  RegisterPropertyEditor(TypeInfo(string), TdfsGradientForm, 'Version',
     TDFSVersionProperty);
end;
{$ENDIF}



{$IFDEF DFS_COMPILER_3_UP}

type
  {$IFDEF DFS_DELPHI_3}
  TdfsGradientFormModuleCreator = class(TIModuleCreator)
  {$ELSE}
  TdfsGradientFormModuleCreator = class(TIModuleCreatorEx)
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


{ TdfsGradientFormModuleCreator }

function TdfsGradientFormModuleCreator.Existing: boolean;
begin
  Result := FALSE;
end;

function TdfsGradientFormModuleCreator.GetFileName: string;
begin
  Result := '';
end;

function TdfsGradientFormModuleCreator.GetFileSystem: string;
begin
  Result := '';
end;

function TdfsGradientFormModuleCreator.GetFormName: string;
begin
  Result := FFormIdent;
end;

function TdfsGradientFormModuleCreator.GetAncestorName: string;
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

function TdfsGradientFormModuleCreator.GetIntfName: string;
begin
  Result := '';
end;

const
  COMMENT_LINE = '//---------------------------------------------------------------------------' + CRLF;

function TdfsGradientFormModuleCreator.NewIntfSource(const UnitIdent, FormIdent,
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

function TdfsGradientFormModuleCreator.NewModuleSource(
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

procedure TdfsGradientFormModuleCreator.FormCreated(Form: TIFormInterface);
begin
  // do nothing
end;

{ TdfsGradientFormExpert }

function TdfsGradientFormExpert.GetStyle: TExpertStyle;
begin
  // Make it show up in the object repository (File | New)
  Result := esForm;
end;

function TdfsGradientFormExpert.GetName: String;
begin
  // official name
  Result := 'Gradient Form'
end;

function TdfsGradientFormExpert.GetAuthor: string;
begin
  Result := 'Bradley D. Stowers';
end;

function TdfsGradientFormExpert.GetComment: String;
begin
  Result := 'Create a new gradient form in current project';
end;

function TdfsGradientFormExpert.GetPage: string;
begin
  Result := sGradFormObjRepositoryPage;
end;

function TdfsGradientFormExpert.GetGlyph: HICON;
begin
  Result := LoadIcon(hInstance, 'TdfsGradientForm');
end;

function TdfsGradientFormExpert.GetState: TExpertState;
begin
  // not used in a esForm expert
  Result := [esEnabled];
end;

function TdfsGradientFormExpert.GetIDString: String;
begin
  // must be unique
  Result := 'DelphiFreeStuff.TdfsGradientFormWizard';
end;

function TdfsGradientFormExpert.GetMenuText: string;
begin
  Result := ''; // not used for esForm, just here to shut up the compiler warning.
end;

procedure TdfsGradientFormExpert.Execute;
var
  IModuleCreator : TdfsGradientFormModuleCreator;
  IModule : TIModuleInterface;
begin
  IModuleCreator := TdfsGradientFormModuleCreator.Create;
  try
    IModuleCreator.FAncestorIdent := 'dfsGradientForm'; // Don't include the 'T'!!!!
    IModuleCreator.FAncestorClass := TdfsGradientForm;
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


{$IFDEF DFS_DELPHI_3_UP}

{ TdfsGradientFormProjectExpert }

function TdfsGradientFormProjectExpert.GetStyle: TExpertStyle;
begin
  // Make it show up in the object repository (File | New)
  Result := esProject;
end;

function TdfsGradientFormProjectExpert.GetName: String;
begin
  // official name
  Result := 'Gradient Form Application'
end;

function TdfsGradientFormProjectExpert.GetAuthor: string;
begin
  Result := 'Bradley D. Stowers';
end;

function TdfsGradientFormProjectExpert.GetComment: String;
begin
  Result := 'New project with gradient form as main form';
end;

function TdfsGradientFormProjectExpert.GetPage: string;
begin
  Result := sGradFormProjObjRepositoryPage;
end;

function TdfsGradientFormProjectExpert.GetGlyph: HICON;
begin
  Result := LoadIcon(hInstance, 'TdfsGradientForm');
end;

function TdfsGradientFormProjectExpert.GetState: TExpertState;
begin
  // not used in a esForm expert
  Result := [esEnabled];
end;

function TdfsGradientFormProjectExpert.GetIDString: String;
begin
  // must be unique
  Result := 'DelphiFreeStuff.TdfsGradientFormProjectWizard';
end;

function TdfsGradientFormProjectExpert.GetMenuText: string;
begin
  Result := ''; // not used for esForm, just here to shut up the compiler warning.
end;

procedure TdfsGradientFormProjectExpert.Execute;
var
  ModIntf: TIModuleInterface;
  ProjCreator: TdfsGradientFormProjectCreator;
begin
  ProjCreator := TdfsGradientFormProjectCreator.Create;
  ModIntf := ToolServices.ProjectCreate(ProjCreator, [cpApplication, cpCanShowSource]);
  ModIntf.Free;
  ProjCreator.Free;
end;

{ TdfsGradientFormProjectCreator }

function TdfsGradientFormProjectCreator.Existing: boolean;
begin
  Result := FALSE;
end;

function TdfsGradientFormProjectCreator.GetFileName: string;
begin
  Result := '';
end;

function TdfsGradientFormProjectCreator.GetFileSystem: string;
begin
  Result := '';
end;

procedure TdfsGradientFormProjectCreator.NewDefaultModule;
var
  IModuleCreator : TdfsGradientFormModuleCreator;
  IModule : TIModuleInterface;
begin
  IModuleCreator := TdfsGradientFormModuleCreator.Create;
  try
    IModuleCreator.FAncestorIdent := 'dfsGradientForm'; // Don't include the 'T'!!!!
    IModuleCreator.FAncestorClass := TdfsGradientForm;
    ToolServices.GetNewModuleAndClassName(IModuleCreator.FAncestorIdent,
    IModuleCreator.FUnitIdent,IModuleCreator.FFormIdent,IModuleCreator.FFileName);
    {$IFDEF DFS_DELPHI_3}
    IModule := ToolServices.ModuleCreate(IModuleCreator, [cmShowSource,
       cmShowForm, cmMainForm, cmMarkModified, cmAddToProject, cmUnNamed]);
    {$ELSE}
    IModule:=ToolServices.ModuleCreateEx(IModuleCreator, [cmShowSource,
       cmShowForm, cmMainForm, cmMarkModified, cmAddToProject, cmUnNamed]);
    {$ENDIF}
    IModule.Free;
  finally
    IModuleCreator.Free;
  end;
end;

procedure TdfsGradientFormProjectCreator.NewProjectResource(
  Module: TIModuleInterface);
begin
  Module.Free;
end;

function TdfsGradientFormProjectCreator.NewProjectSource(
   const ProjectName: string): string;
begin
  Result := Format('program %s;' + CRLF + CRLF, [ProjectName]) +
     'uses' + CRLF +
     '  Forms;' + CRLF + CRLF +
     '{$R *.RES}' + CRLF + CRLF +
     'begin' + CRLF +
     '  Application.Initialize;' + CRLF +
     '  Application.Run;' + CRLF +
     'end.' + CRLF;
end;

{$ENDIF}

{$ENDIF}


end.

