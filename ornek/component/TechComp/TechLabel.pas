unit TechLabel;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics,Shellapi, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;
  const
  TechLabel_ABOUT = 'Tech Yazýlým/ Serkan Güneþ '#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';


type
  TTechLabel = class(TLabel)
  private

  protected

  renk1: TColor;
  renk2: TColor;
  urloku: string;
  urlonay1: boolean;

  procedure SetGirisColor(gcolor: TColor);
  procedure SetCikisColor(ccolor: TColor);
  procedure urlyaz(Url: string);
  procedure urlonayyaz(Onay: boolean);
  procedure Click; override;
  procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
  procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  function GetVersion: string;
  procedure SetVersion(const Val: string);
  public
    constructor Create(aOwner: TComponent); override;
  published
   property RenkGiris: TColor read renk1 write SetGirisColor;
   property Url: String read urloku write urlyaz;
   property UrlOnay: Boolean read urlonay1 write urlonayyaz;
   property RenkCikis: TColor read renk2 write SetCikisColor;
   property About: string read GetVersion write SetVersion;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechLabel]);
end;

constructor TTechLabel.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);

 renk1:=clwhite;
 renk2:=clblack;
end;

procedure TTechLabel.urlonayyaz(Onay: boolean);
begin
        if urlonay1 <> Onay then
        urlonay1 := Onay;
end;

procedure TTechLabel.Click;
begin
        if urlonay1 = true then
                ShellExecute(0, nil, PCHAR(urloku), nil, nil, SW_SHOWDEFAULT);
        inherited Click;
end;

procedure TTechLabel.urlyaz(Url: string);
begin
        if urloku <> Url then
        urloku := Url;
end;

procedure TTechLabel.CMMouseEnter(var Message: TMessage);
begin
 font.Color := renk1;
end;

procedure TTechLabel.CMMouseLeave(var Message: TMessage);
begin
 font.Color := renk2;
end;

procedure TTechLabel.SetGirisColor(gcolor: TColor);
begin
    if gcolor <> renk1 then
      renk1 := gcolor;
// yeni ayarlara göre editi tekrar oluþturur
   Refresh;
end;

procedure TTechLabel.SetCikisColor(ccolor: TColor);
begin
   if ccolor <> renk2 then
     renk2 := ccolor;
// yeni ayarlara göre editi tekrar oluþturur
   Refresh;
end;

function TTechLabel.GetVersion: string;
begin
  Result := TechLabel_ABOUT;
end;

procedure TTechLabel.SetVersion(const Val: string);
begin
  { Kayýt giriþi yapýlama }
end;

end.
