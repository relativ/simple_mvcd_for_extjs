unit Giris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFGiris = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGiris: TFGiris;

implementation

{$R *.dfm}

procedure TFGiris.Timer1Timer(Sender: TObject);
begin
        if Timer1.Interval = 1000 Then Close;
end;

end.
