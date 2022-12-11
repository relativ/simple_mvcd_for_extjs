unit SystemBiosInfo;

interface

uses Classes, Registry;

type
  TSystemBiosInfo = class(TComponent)
  private
    FBiosDate: string;
    FBiosVersion: string;
    FVideoBiosDate: string;
    FVideoBiosVersion: string;
    procedure ReadMultiRowKey(var ATarget: TStringList;
      const ARegistry: TRegistry; const AKey: string);
  protected
    function ReadSystemKey(AKey: string): string; virtual;
  public
    constructor Create; virtual;
    property BiosDate: string read FBiosDate;
    property BiosVersion: string read FBiosVersion;
    property VideoBiosDate: string read FVideoBiosDate;
    property VideoBiosVersion: string read FVideoBiosVersion;
  end;
procedure Register;
implementation

uses SysUtils, Windows;

{ TSystemBiosInfo }

procedure Register;
begin
  RegisterComponents('Tech', [TSystemBiosInfo]);
end;

constructor TSystemBiosInfo.Create;
begin
  FBiosDate:= ReadSystemKey('SystemBiosDate');
  FBiosVersion:= ReadSystemKey('SystemBiosVersion');
  FVideoBiosDate:= ReadSystemKey('VideoBiosDate');
  FVideoBiosVersion:= ReadSystemKey('VideoBiosVersion');
end;

function TSystemBiosInfo.ReadSystemKey(AKey: string): string;
const
  SystemInfoPath = '\HARDWARE\DESCRIPTION\System';
var
  Registry: TRegistry;
  StringList: TStringList;
begin
  Registry:= TRegistry.Create;
  try
    Registry.RootKey:= HKEY_LOCAL_MACHINE;
    if Registry.OpenKeyReadOnly(SystemInfoPath) then
    begin
      if Registry.GetDataType(AKey) = rdUnknown then
      begin
        StringList:= TStringList.Create;
        try
          ReadMultiRowKey(StringList, Registry, AKey);
          Result:= StringList.Text;
        finally
          StringList.Free;
        end;
      end else
        Result:= Registry.ReadString(AKey);
      Registry.CloseKey;
    end;
  finally
    Registry.Free;
  end;
end;

procedure TSystemBiosInfo.ReadMultiRowKey(var ATarget: TStringList;
  const ARegistry: TRegistry; const AKey: string);
var
  Buffer: array of Char;
  BufferSize: Integer;
  Index: Integer;
  TempString: string;
begin
  if not Assigned(ATarget) then
    raise Exception.Create('Target object unassigned');

  if not Assigned(ARegistry) then
    raise Exception.Create('Registry object unassigned');

  BufferSize:= ARegistry.GetDataSize(AKey);
  if BufferSize > 0 then
  begin
    SetLength(Buffer, BufferSize);
    try
      TempString:= '';
      BufferSize:= ARegistry.ReadBinaryData(AKey, Buffer[0], BufferSize);

      for Index:= 0 to (BufferSize - 1) do
      begin
        if Buffer[Index] <> #0 then
            TempString:= TempString + Buffer[Index]
        else
          if Length(TempString) > 0 then
          begin
            ATarget.Append(TempString);
            TempString:= '';
          end;
      end;
    finally
      Finalize(Buffer);
      Buffer:= nil;
    end;
  end;
end;

end.
