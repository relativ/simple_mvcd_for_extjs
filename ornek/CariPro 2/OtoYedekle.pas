unit OtoYedekle;

interface

uses
  Classes,Forms,SysUtils,IniFiles,Windows,IBServices;

type
  TOtoYedekle = class(TThread)
  private
    IBBackupService1: TIBBackupService;
  protected
    procedure Execute; override;
  public
    constructor Create(CreateSuspended: Boolean);
    destructor Destroy; override;
  end;

implementation

{ TOtoYedekle }
uses Yedekleme,SabitDM,Main;

constructor TOtoYedekle.Create(CreateSuspended: Boolean);
begin
        inherited Create(CreateSuspended);
        IBBackupService1:= TIBBackupService.Create(nil);
end;

destructor TOtoYedekle.Destroy;
begin
        inherited Destroy;
end;

procedure TOtoYedekle.Execute;
var
        s: string;
        IniFile: TIniFile;
        yer: string;
begin
ForceDirectories(DMSabit.FirmaIBQYEDEKYER.AsString);
IniFile:= TIniFile.Create(ExtractFileDir(Application.ExeName)+'\DataBase.ini');
        if IniFile.ReadString(AnaSayfa.Sirket,'Adres','') <> '' then
                yer := IniFile.ReadString(AnaSayfa.Sirket,'Adres','');
s :=DMSabit.FirmaIBQYEDEKYER.AsString;
if s[length(s)] <>'\' then
s := s + '\';
if FileExists(s+'CariData'+DateToStr(now)+'.gbk') then
        DeleteFile(PChar(s+'CariData'+DateToStr(now)+'.gbk'));
 with IBBackupService1 do
  begin
    LoginPrompt := False;
    Params.Add('user_name='+IniFile.ReadString(AnaSayfa.Sirket,'User',''));
    Params.Add('password='+IniFile.ReadString(AnaSayfa.Sirket,'Sifre',''));
    Attach;
    try
      Verbose := True;
      DatabaseName := yer;
      if (DMSabit.FirmaIBQYEDEKYER.AsString<> 'C:\') and (DMSabit.FirmaIBQYEDEKYER.AsString <> 'c:\') and (DMSabit.FirmaIBQYEDEKYER.AsString<> 'A:\') and (DMSabit.FirmaIBQYEDEKYER.AsString <> 'a:\')
        and (DMSabit.FirmaIBQYEDEKYER.AsString<> 'B:\') and (DMSabit.FirmaIBQYEDEKYER.AsString <> 'b:\') and (DMSabit.FirmaIBQYEDEKYER.AsString<> 'D:\') and (DMSabit.FirmaIBQYEDEKYER.AsString <> 'd:\')
        and (DMSabit.FirmaIBQYEDEKYER.AsString<> 'E:\') and (DMSabit.FirmaIBQYEDEKYER.AsString <> 'e:\') and (DMSabit.FirmaIBQYEDEKYER.AsString<> 'F:\') and (DMSabit.FirmaIBQYEDEKYER.AsString <> 'f:\') then
        BackupFile.Add(DMSabit.FirmaIBQYEDEKYER.AsString+'\'+'CariData'+DateToStr(now)+'.gbk')
      else BackupFile.Add(DMSabit.FirmaIBQYEDEKYER.AsString+'CariData'+DateToStr(now)+'.gbk');

      ServiceStart;
    finally
      if Active then
        Detach;
    end;
  end;
 end;

end.
 