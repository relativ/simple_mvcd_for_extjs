unit DataDM;

interface

uses
  SysUtils, Classes, IBDatabase, IniFiles,DB, IBCustomDataSet, IBQuery, cxClasses,
  cxStyles, cxGridTableView;

type
  TDMData = class(TDataModule)
    IBDBCariPro: TIBDatabase;
    IBTCariPro: TIBTransaction;
    islemturleriIBQ: TIBQuery;
    islemturleriIBQOTONO: TIntegerField;
    islemturleriIBQTURADI: TIBStringField;
    islemturleriIBQTURKOD: TIntegerField;
    GridStil: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Kayit(Tableismi:TDataset);
  end;

var
  DMData: TDMData;
   BugununTarihi :TDateTime;
   IslemTurKod: TStrings;
implementation

uses SabitDM;

{$R *.dfm}
Procedure TDMData.Kayit(Tableismi:TDataset);
Begin
        IBDBCariPro.ApplyUpdates([Tableismi]);
        IBTCariPro.CommitRetaining;
        TIBQuery(Tableismi).FetchAll;
        TIBQuery(Tableismi).Refresh;
end;
procedure TDMData.DataModuleCreate(Sender: TObject);
var
        IniFile,Stil: TIniFile;
        s: TStringList;
begin
        IBDBCariPro.Close;
        s:= TStringList.Create;
        IniFile:= TIniFile.Create(GetCurrentDir+'\DataBase.ini');
        IniFile.ReadSections(s);
        if IniFile.ReadString(s[0],'Server','') = '' then
                IBDBCariPro.DatabaseName := IniFile.ReadString(s[0],'Adres','')
        else
                IBDBCariPro.DatabaseName := IniFile.ReadString(s[0],'Server','')+':'+IniFile.ReadString(s[0],'Adres','');
        IBDBCariPro.Params.Clear;
        IBDBCariPro.Params.Add('user_name='+IniFile.ReadString(s[0],'User',''));
        IBDBCariPro.Params.Add('password='+IniFile.ReadString(s[0],'Sifre',''));
        IBDBCariPro.Params.Add('lc_ctype=WIN1254');
        IBDBCariPro.Open;
        IBTCariPro.StartTransaction;
        IniFile.Free;

        IslemTurKod:= TStringList.Create;
        IslemTurKod.Text := '';
        islemturleriIBQ.Open;
        islemturleriIBQ.First;
        while not islemturleriIBQ.Eof do
        begin
                IslemTurKod.Add(islemturleriIBQTURADI.AsString+'='+islemturleriIBQTURKOD.AsString);
                islemturleriIBQ.Next;
        end;
        islemturleriIBQ.Close;  
end;
end.
