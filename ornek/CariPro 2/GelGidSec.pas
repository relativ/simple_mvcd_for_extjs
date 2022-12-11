unit GelGidSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  ExtCtrls, OnlineDBGrid, OnlineButton, DB, IBCustomDataSet,
  IBQuery, OnlineCustomControl, ComCtrls, OnlineDBTreeView;

type
  TFGelGidSec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn11: TOnlineButton;
    BitBtn2: TOnlineButton;
    OnlineDBTree1: TOnlineDBTree;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    DataSet: TDataSet;
  end;

var
  FGelGidSec: TFGelGidSec;

implementation

Uses SabitDM;

{$R *.dfm}

procedure TFGelGidSec.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure TFGelGidSec.FormShow(Sender: TObject);
begin
        DMSabit.GelirGiderIBQ.Open;
end;

procedure TFGelGidSec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFGelGidSec.BitBtn11Click(Sender: TObject);
begin
        DataSet.Edit;
        DataSet.FindField('GELGITKOD').AsInteger := DMSabit.GelirGiderIBQGELGITKOD.AsInteger;
        DataSet.Post;
        close;
end;

end.
