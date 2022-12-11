unit DBTechRichEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls,Graphics, StdCtrls, ComCtrls,
  DBCtrls;
    const
  TechEdit_ABOUT = 'TechnoLIFE Yazýlým / Serkan Güneþ'#13#10+'E-Mail: info@technolife.com.tr '#13#10+'Web: www.technolife.com.tr';

type
  TDBTechRichEdit = class(TDBRichEdit)
  private
    color1: TColor;
    color2: TColor;
    procedure SetGirisColor(gcolor: TColor);
    procedure SetCikisColor(ccolor: TColor);
  protected
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
  public
        constructor Create(aOwner: TComponent); override;
  published
    property RenkGiris: TColor read color1 write SetGirisColor;
    property RenkCikis: TColor read color2 write SetCikisColor;
  end;

procedure Register;

implementation

constructor TDBTechRichEdit.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);
        color1:=$0093FFFF;
        color2:=clwhite;
end;

procedure TDBTechRichEdit.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TDBTechRichEdit.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   RecreateWnd;
end;

procedure TDBTechRichEdit.CMEnter(var Message: TCMEnter); //kutucuða girdiðinde
begin
        inherited;
        Color := color1;
        refresh;
end;
procedure TDBTechRichEdit.CMExit(var Message: TCMExit); // kutucuktan çýktýðýnda
begin
        inherited;
        Color := color2;
        refresh;
end;

procedure Register;
begin
  RegisterComponents('TechDB', [TDBTechRichEdit]);
end;

end.
