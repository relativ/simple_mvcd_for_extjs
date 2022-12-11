unit ParaBirSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB,OnlineDBGrid, OnlineCustomControl, OnlineButton,
  ExtCtrls, StdCtrls, Mask, OnlineEdit;

type
  TFParaBirimSecim = class(TForm)
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    OnlineDBGrid3: TOnlineDBGrid;
    GroupBox1: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    BitBtn11: TOnlineButton;
    BitBtn2: TOnlineButton;
    Panel6: TPanel;
    procedure BitBtn11Click(Sender: TObject);
    procedure OnlineDBGrid2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataSet: TDataSet;
    IslemNo: TOnlineEdit;
  end;

var
  FParaBirimSecim: TFParaBirimSecim;

implementation

uses SabitDM;

{$R *.dfm}

procedure TFParaBirimSecim.BitBtn11Click(Sender: TObject);
begin
        if DataSet <> nil then
          begin
            DataSet.Edit;
            DataSet.FindField('PARABIRIMKOD').AsInteger := DMSabit.ParaBirSecIBQPARABIRKOD.AsInteger;
            DataSet.Post;
            close;
          end else
                IslemNo.Text := DMSabit.ParaBirSecIBQPARABIRKOD.AsString;
end;

procedure TFParaBirimSecim.OnlineDBGrid2DblClick(Sender: TObject);
begin
        BitBtn11Click(Sender);
end;

procedure TFParaBirimSecim.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure TFParaBirimSecim.FormShow(Sender: TObject);
begin
        DMSabit.ParaBirSecIBQ.Close;
        DMSabit.ParaBirSecIBQ.Open;
end;

end.
