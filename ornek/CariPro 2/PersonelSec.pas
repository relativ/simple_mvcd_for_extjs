unit PersonelSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB,OnlineDBGrid, OnlineCustomControl, OnlineButton,
  ExtCtrls, StdCtrls, Mask, OnlineEdit, OnlineSearchEdit;

type
  TFPersonelSec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn11: TOnlineButton;
    BitBtn2: TOnlineButton;
    OnlineDBGrid2: TOnlineDBGrid;
    OnlineSearchEdit1: TOnlineSearchEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure BitBtn11Click(Sender: TObject);
    procedure OnlineDBGrid2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataSet: TDataSet;
    IslemNo: TOnlineEdit;
  end;

var
  FPersonelSec: TFPersonelSec;

implementation

uses SabitDM;

{$R *.dfm}

procedure TFPersonelSec.BitBtn11Click(Sender: TObject);
begin
        if DataSet <> nil then
          begin
            DataSet.Edit;
            DataSet.FindField('PERSONELKOD').AsInteger := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
            DataSet.Post;
            close;
          end
        else begin
                IslemNo.Text := DMSabit.PersonelIBQPERSONELNO.AsString;
                IslemNo.Tag := DMSabit.PersonelIBQPERSONELKOD.AsInteger;
                close;
        end;
end;

procedure TFPersonelSec.OnlineDBGrid2DblClick(Sender: TObject);
begin
        BitBtn11Click(Sender);
end;

procedure TFPersonelSec.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure TFPersonelSec.FormShow(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Close;
        DMSabit.PersonelIBQ.Open;
end;

procedure TFPersonelSec.RadioButton2Click(Sender: TObject);
begin
        OnlineSearchEdit1.Like := RadioButton2.Checked;
end;

procedure TFPersonelSec.RadioButton1Click(Sender: TObject);
begin
        OnlineSearchEdit1.Locate := RadioButton1.Checked;
end;

end.
