unit KasaSecim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, OnlineEdit, Grids, DBGrids, OnlineDBGrid,
  ExtCtrls, DB,OnlineButton, OnlineCustomControl, Mask;

type
  TFKasaSecim = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TOnlineDBGrid;
    BitBtn11: TOnlineButton;
    BitBtn2: TOnlineButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private

  public
    DataSet: TDataSet;
    FieldName,ParaBirimField: string;
  end;

var
  FKasaSecim: TFKasaSecim;

implementation

{$R *.dfm}
uses KasaDM;
procedure TFKasaSecim.DBGrid1DblClick(Sender: TObject);
var
        ParaBirimKod: string;
        KasaKod: integer;
begin
        KasaKod := DMKasa.AktifKasaIBQKASAKOD.AsInteger;
        ParaBirimkod := DMKasa.AktifKasaIBQPARABIRIMKOD.AsString;
        DataSet.Edit;
        DataSet.FindField(FieldName).AsInteger := KasaKod;
        DataSet.FindField(ParaBirimField).AsString := ParaBirimKod;
        DataSet.Post;
        DataSet.Refresh;

        close;
end;

procedure TFKasaSecim.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
                DBGrid1DblClick(Sender);
end;

procedure TFKasaSecim.FormShow(Sender: TObject);
begin
        DMKasa.AktifKasaIBQ.Open;
end;

procedure TFKasaSecim.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure TFKasaSecim.BitBtn11Click(Sender: TObject);
begin
        DBGrid1DblClick(Sender);
end;

end.
