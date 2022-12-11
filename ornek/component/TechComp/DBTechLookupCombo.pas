unit DBTechLookupCombo;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;
  const
  TechDBCombo_ABOUT = 'TechnoLIFE Yaz�l�m/ Serkan G�ne� '#13#10+'E-Mail: info@technolife.com.tr '#13#10+'Web: www.technolife.com.tr';

type
  TDBTechLookupCombo = class(TDBLookupComboBox)
  private
    { Private declarations }
  protected
  color1: TColor;
  color2: TColor;

  procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  procedure CMExit(var Message: TCMExit); message CM_EXIT;
  procedure SetGirisColor(gcolor: TColor);
  procedure SetCikisColor(ccolor: TColor);
  procedure SetVersion(const Val: string);
  function GetVersion: string;
  public
   constructor Create(aOwner: TComponent); override;
  published
   property RenkGiris: TColor read color1 write SetGirisColor;
   property RenkCikis: TColor read color2 write SetCikisColor;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TDBTechLookupCombo]);
end;

constructor TDBTechLookupCombo.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);

 color1:=clInfobk;
 color2:=clwhite;
end;

procedure TDBTechLookupCombo.CMEnter(var Message: TCMEnter); //kutucu�a girdi�inde
begin
inherited;
Color := color1;

end;
procedure TDBTechLookupCombo.CMExit(var Message: TCMExit); // kutucuktan ��kt���nda
begin
inherited;
Color := color2;
end;

procedure TDBTechLookupCombo.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> color1 then
      color1 := gcolor;
// yeni ayarlara g�re editi tekrar olu�turur
   RecreateWnd;
end;

procedure TDBTechLookupCombo.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> color2 then
     color2 := ccolor;
// yeni ayarlara g�re editi tekrar olu�turur
   RecreateWnd;
end;

function TDBTechLookupCombo.GetVersion: string;
begin
  Result := TechDBCombo_ABOUT;
end;

procedure TDBTechLookupCombo.SetVersion(const Val: string);
begin
  { Kay�t giri�i yap�lama }
end;

end.
