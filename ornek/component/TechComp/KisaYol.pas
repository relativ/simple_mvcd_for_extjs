unit KisaYol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,ShlObj, ComObj, ActiveX, registry;

  {$R KisaYol.res}

type
  TOnMakeEvent = procedure(Sender: TObject) of object;
  TKisaYol = class(TComponent)

  private

  FOnMake:TOnMakeEvent;
  FDirinStartmenu : string;
  FMakeOnDesktop,FMakeOnStarTMenu:boolean;
  FCop: string;
  function GetCop: string;
  function GetDirinStartmenu: string;
  function CreateShortcut(const CmdLine, Args, WorkDir, LinkFile: string):IPersistFile;
  procedure SetDirinStartmenu(ADirinStartmenu: string);
  procedure SetMakeOnDesktop(AMakeOnDesktop:boolean);
  procedure SetMakeOnStarTMenu(AMakeOnStarTMenu:boolean);
  procedure CreateShortcuts;
  procedure SetCop(const Value: string);

  protected

  public
     ExecDir,ExeName,ShortCutCaption:string;
     procedure Make;
     constructor Create(Aowner:Tcomponent);override;

  published

      property MakeOnDesktop:boolean
    read FMakeOnDesktop write SetMakeOnDesktop default True;
      property MakeOnStartMenu:boolean
    read FMakeOnStarTMenu write SetMakeOnStarTMenu default True;
    property NameSubDirInStartMenu:string
    read GetDirinStartmenu write SetDirinStartmenu;
    property Version: string read GetCop write SetCop;
    property OnMake:TOnMakeEvent read FOnMake write FOnMake;
  end;

procedure Register;

implementation


    constructor TKisaYol.Create(AOwner:TComponent);

begin
     inherited;
     MakeOnStartMenu:=true;
     MakeOnDesktop:=true;
     FCop:='Version 1.00, Copyright © 2003-2004 TechnoLIFE Yazilim, E-mail: info@technolife.com.tr'+#13+'Coded by Serkan Güneþ';
end;

function TKisaYol.GetCop: string;
begin
Result:=FCop;
end;


procedure TKisaYol.SetCop(const Value: string);
begin
FCop:=FCop;
end;



function TKisaYol.CreateShortcut(const CmdLine, Args, WorkDir, LinkFile: string): IPersistFile;

var
MyObject : IUnknown;
MySLink : IShellLink;
MyPFile : IPersistFile;
WideFile : WideString;
begin
MyObject := CreateComObject(CLSID_ShellLink);
MySLink := MyObject as IShellLink;
MyPFile := MyObject as IPersistFile;
with MySLink do
begin
SetPath(PChar(CmdLine));
SetArguments(PChar(Args));
SetWorkingDirectory(PChar(WorkDir));
end;
WideFile := LinkFile;
MyPFile.Save(PWChar(WideFile), False);
Result := MyPFile;
end;

procedure TKisaYol.CreateShortcuts;
var Directory,start: String;
MyReg: TRegIniFile;
begin

MyReg := TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');

start := MyReg.ReadString('Shell Folders','Programs','')+'\'+FDirinStartmenu;
if FMakeOnStarTMenu then
ForceDirectories(start);


Directory := MyReg.ReadString('Shell Folders','Desktop','');
ForceDirectories(Directory);
MyReg.Free;

if FMakeOnDesktop then
CreateShortcut(ExecDir+'/'+ExeName, '', ExecDir,Directory +'/'+ ShortCutCaption+'.lnk');

If FMakeOnStarTMenu then
CreateShortcut(ExecDir +'/'+ExeName, '', ExecDir,start +'/'+ShortCutCaption+'.lnk');

end;

function TKisaYol.GetDirinStartmenu: string;
begin
     Result:=FDirinStartmenu;
end;


procedure TKisaYol.SetDirinStartmenu(ADirinStartmenu:string);
begin
     FDirinStartmenu:=ADirinStartmenu;
end;


procedure TKisaYol.Make;
begin
    CreateShortcuts;
    if Assigned(FOnMake) then  FOnMake(Self);
end;

procedure TKisaYol.SetMakeOnStarTMenu (AMakeOnStarTMenu :boolean);
begin
     FMakeOnStarTMenu :=AMakeOnStarTMenu ;
end;

procedure TKisaYol.SetMakeOnDesktop (AMakeOnDesktop :boolean);
begin
     FMakeOnDesktop :=AMakeOnDesktop ;
end;

procedure Register;
begin
  RegisterComponents('Tech', [TKisaYol]);
end;

end.
