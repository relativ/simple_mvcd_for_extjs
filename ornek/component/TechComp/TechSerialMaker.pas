unit TechSerialMaker;

interface

uses
  Windows, Messages,Dialogs, SysUtils, Classes, Graphics, Controls,uTBase64;

type
  TTechSeriNoOlusturma = class(TComponent)
  private
    FGuvenlikNo,FHakkinda: string;
    FKod: string;
    FSeri: string;
    FBidon: string;
    TechBase64: TTechBase64;
    procedure DegisimUser(User: string);
    procedure DegisimKod(ValueKod: string);
    procedure SetHakkinda(Val: string);
    function GetIdeSeriNumber: string;
  public
    function GiveSeri(ValueKod: Integer; GuvenlikNo: string): string;
    function SeriIsCorrect(Kod: Integer; GuvenlikNo: string; Seri: string): Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Hakkinda: string read FHakkinda write SetHakkinda;
    property GuvenlikNo: string read FGuvenlikNo write DegisimUser;
    property Kod: string read FKod write DegisimKod;
    property Seri: string read FSeri write FBidon;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechSeriNoOlusturma]);
end;

function TTechSeriNoOlusturma.GetIdeSeriNumber: string;
var
        VolumeSeriNumber : DWORD;
        MaximumComponentLength : DWORD;
        FileSystemFlags : DWORD;
        SeriNumber,sn : string;
begin
        GetVolumeInformation('C:\',nil,0,@VolumeSeriNumber,MaximumComponentLength,FileSystemFlags,nil,0);
        TechBase64.EncodeData(Trim(IntToHex(HiWord(VolumeSeriNumber), 3)),sn);
        SeriNumber := sn;
        TechBase64.EncodeData(Trim(IntToHex(LoWord(VolumeSeriNumber), 3)),sn);
        SeriNumber := SeriNumber +'-'+ sn;
        TechBase64.EncodeData(Trim(IntToHex(HiWord(VolumeSeriNumber*3), 3)),sn);
        SeriNumber := SeriNumber +'-'+ sn;
        TechBase64.EncodeData(Trim(IntToHex(LoWord(VolumeSeriNumber*3), 3)),sn);
        SeriNumber := SeriNumber +'-'+ sn;
        TechBase64.EncodeData(FKod,sn);
        result := SeriNumber+'-'+sn;

end;

constructor TTechSeriNoOlusturma.Create(AOwner: TComponent);
begin
        inherited Create(AOwner);
        TechBase64:= TTechBase64.Create(nil);
        Kod :='1';
        FGuvenlikNo := Trim(GetIdeSeriNumber);
        FHakkinda := 'Copyright by TechnoLIFE /by Serkan';
end;

destructor TTechSeriNoOlusturma.Destroy;
begin
  TechBase64.Free;
  inherited Destroy;
end;

{***************************************************}

procedure TTechSeriNoOlusturma.DegisimUser(User: string);
var
  IntKod: integer;
  i: integer;
begin
  IntKod := 1;
  for i :=length(FKod) downto 1 do
    IntKod:= IntKod * Ord(FKod[i]);
    FGuvenlikNo := Trim(User);
    FSeri := GiveSeri(IntKod, FGuvenlikNo);
end;

{***************************************************}

procedure TTechSeriNoOlusturma.DegisimKod(ValueKod: string);
var
  IntKod: integer;
  i: integer;
begin
  FKod := ValueKod;
  IntKod := 1;
  for i :=length(FKod) downto 1 do
    IntKod:= IntKod * Ord(FKod[i]);
  GuvenlikNo :=Trim(GetIdeSeriNumber);
  FSeri := GiveSeri(IntKod, FGuvenlikNo);
end;

{***************************************************}

function TTechSeriNoOlusturma.GiveSeri(ValueKod: Integer; GuvenlikNo: string): string;
var
  st: string;
  a,i: Integer;
  UserToplam: integer;
begin
  st := 'Hata';
  if (ValueKod <> 0) and (GuvenlikNo <> '') then
  begin
        UserToplam := 0;
          for i := 1 to Length(GuvenlikNo) do
                UserToplam := UserToplam + Ord(GuvenlikNo[i]);
    a := (ValueKod div (Length(GuvenlikNo) + UserToplam)) * UserToplam;
    if a < 0 then a := a * -1;
    st := IntToStr(a) + '-';
    a := (ValueKod * UserToplam) div Length(GuvenlikNo);
    if a < 0 then a := a * -1;
    st := st + IntToStr(a) + '-';
    a := (ValueKod + (Length(GuvenlikNo) * UserToplam)) div Length(GuvenlikNo);
    if a < 0 then a := a * -1;
    st := st + IntToStr(a);
  end;
  Result := st;
end;

{***************************************************}

function TTechSeriNoOlusturma.SeriIsCorrect(Kod: Integer; GuvenlikNo: string; Seri: string): Boolean;
begin
  if GuvenlikNo = '' then
    Result := False
  else if Kod = 0 then
    Result := False
  else
    Result := Seri = GiveSeri(Kod, GuvenlikNo);
end;

procedure TTechSeriNoOlusturma.SetHakkinda(Val: string);
begin
        { Kay�t giri�i yap�lamaz...}
end;


end.
