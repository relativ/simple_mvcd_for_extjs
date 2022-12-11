unit frmPropsUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, QRCtrls, StdCtrls, ELDsgnr, Buttons, ExtCtrls, ComCtrls, QRPrntr,
  Grids, ELPropInsp, TypInfo, DB;

type
  TfrmProps = class(TForm)
    PropInsp: TELPropertyInspector;
    procedure PropInspModified(Sender: TObject);
  private
    FDoc: TForm;
    procedure SetDoc(const Value: TForm);
    { Private declarations }
  public
    { Public declarations }
    property Doc: TForm read FDoc write SetDoc;
  end;

var
  frmProps: TfrmProps;

implementation

uses frmDocUnit;

{$R *.dfm}

{ TfrmProps }

procedure TfrmProps.SetDoc(const Value: TForm);
begin
  FDoc := Value;
end;

procedure TfrmProps.PropInspModified(Sender: TObject);
begin
  if FDoc <> nil then
    TfrmDoc(FDoc).Modify;
end;

end.
