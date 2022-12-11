unit TechDBText;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

type
  TTechDBText = class(TDBText)
  private
    { Private declarations }
  protected
  renk1: TColor;
  renk2: TColor;

  procedure SetGirisColor(gcolor: TColor);
  procedure SetCikisColor(ccolor: TColor);
   procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
   procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  public
    constructor Create(aOwner: TComponent); override;
  published
   property RenkGiris: TColor read renk1 write SetGirisColor;
   property RenkCikis: TColor read renk2 write SetCikisColor;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBText]);
end;

constructor TTechDBText.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);

 renk1:=clwhite;
 renk2:=clblack;
end;

procedure TTechDBText.CMMouseEnter(var Message: TMessage);
begin
        inherited;
         font.Color := renk1;
end;

procedure TTechDBText.CMMouseLeave(var Message: TMessage);
begin
        inherited;
         font.Color := renk2;
end;

procedure TTechDBText.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> renk1 then
      renk1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   Refresh;
end;

procedure TTechDBText.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> renk2 then
     renk2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   Refresh;
end;

end.
