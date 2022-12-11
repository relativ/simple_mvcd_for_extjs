unit Kopyala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls;

type
  TFKopyala = class(TForm)
    Animate1: TAnimate;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKopyala: TFKopyala;

implementation

uses ProcedureDM;

{$R *.dfm}

procedure TFKopyala.FormShow(Sender: TObject);
begin
        Timer1.Enabled := true;
        Animate1.Active := true;
end;

procedure TFKopyala.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Timer1.Enabled := false;
        Animate1.Active := false;
end;

procedure TFKopyala.Timer1Timer(Sender: TObject);
begin
        if DMProcedure.CeviriProc.ParamByName('ISLEMKOD_OUT').AsInteger > 0 then
                close;
end;

end.
