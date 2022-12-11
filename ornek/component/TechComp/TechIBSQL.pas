unit TechIBSQL;

interface

uses
  Windows, Messages, SysUtils, Classes, IBSQL;

type
  TTechIBSQL = class(TIBSQL)
  private
    FAbout: string;
    FSql: TStringList;
    procedure SetSQL(Value: TStringList);
    procedure SetAbout(Value: String);
  protected
    { Protected declarations }
  public
    procedure ExecFullQuery;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property FullSQL: TStringList read FSQL write SetSQL;
    property About: string read FAbout write SetAbout;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechIBSQL]);
end;

procedure TTechIBSQL.SetAbout(Value: String);
begin
        { Kayýt giriþi yapýlamaz... }
end;

constructor TTechIBSQL.Create(AOwner: TComponent);
begin
        inherited;
        FAbout := 'Copyright © Tech Yazýlým'+#13+'Coded by Serkan Güneþ'; 
        FSql:= TStringList.Create;
end;

destructor TTechIBSQL.Destroy;
begin
        FSql.Free;
        inherited;
end;

procedure TTechIBSQL.ExecFullQuery;
var
        i,a: integer;
        s: string;
        ISql: TStringList;
begin
        a := 0;
        ISql:= TStringList.Create;
        for i := 0 to FSql.Count - 1 do
        begin
                if Pos('^',AnsiUpperCase(FSql[i])) <> 0 then
                        a := a + 1;
                if Pos(' TABLE ',AnsiUpperCase(FSql[i])) <> 0 then
                        a := 1;
                if StringReplace(AnsiUpperCase(FSql[i]),' ','',[rfReplaceAll]) = ');' then
                        a := 2;
                if (Pos(' GENERATOR ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' EXCEPTION ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' INDEX ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' DOMAIN ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' DATABASE ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' DROP ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' ROLE ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' GRANT ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos(' REVOKE ',AnsiUpperCase(FSql[i])) <> 0) and (Pos(';',AnsiUpperCase(FSql[i])) <> 0)  then
                        a := 2;
                if (Pos('SET ',AnsiUpperCase(FSql[i])) <> 0) and (Pos('TERM',AnsiUpperCase(FSql[i])) = 0) and
                (Pos(';',AnsiUpperCase(FSql[i])) <> 0) and (Pos('AUTODDL',AnsiUpperCase(FSql[i])) = 0)
                 and (Pos(' DIALECT ',AnsiUpperCase(FSql[i])) = 0) then
                        a := 2;
                if (Pos('^',AnsiUpperCase(FSql[i])) <> 0) and (Pos('END',AnsiUpperCase(FSql[i])) <> 0) then
                begin
                        s := FSql[i];
                        Delete(s,Pos('^',AnsiUpperCase(s)),1);
                        FSql[i] := s;
                end;

                if (Pos('^',AnsiUpperCase(FSql[i])) = 0) and (Pos('COMMIT',AnsiUpperCase(FSql[i])) = 0)
                         and (Pos('AUTODDL',AnsiUpperCase(FSql[i])) = 0) then
                begin
                        ISql.Add(FSql[i]);
                end;
                if a = 2 then
                begin
                        if ISql.Text <> '' then
                        begin
                                SQL.Text := ISql.Text;
                                ExecQuery;
                        end;
                        ISql.Text := '';
                        a:= 0;
                end;
        end;
        FSql.Text := '';
end;

procedure TTechIBSQL.SetSQL(Value: TStringList);
begin
  if FSQL.Text <> Value.Text then
  begin
    FSQL.BeginUpdate;
    try
      FSQL.Assign(Value);
    finally
      FSQL.EndUpdate;
    end;
  end;
end;
end.
