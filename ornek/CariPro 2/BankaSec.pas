unit BankaSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  ExtCtrls, OnlineDBGrid, OnlineButton, DB, IBCustomDataSet,
  IBQuery, OnlineCustomControl;

type
  TFBankaSec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TOnlineDBGrid;
    BitBtn11: TOnlineButton;
    BitBtn2: TOnlineButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    DataSet: TDataSet;
    kodfield: string;
  end;

var
  FBankaSec: TFBankaSec;
  FieldName,ParaBirimField: string;
implementation

Uses SabitDM, BankaDM;

{$R *.dfm}

procedure TFBankaSec.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure TFBankaSec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFBankaSec.BitBtn11Click(Sender: TObject);
var
        bankakod: integer;
begin
        bankakod := DMBanka.BankaIBQBANKAKOD.AsInteger;
        DataSet.Edit;
        DataSet.FindField(kodfield).AsInteger := bankakod;
        DataSet.Post;
        close;
end;

procedure TFBankaSec.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
                BitBtn11Click(sender);
end;

procedure TFBankaSec.FormShow(Sender: TObject);
begin
        DMBanka.BankaIBQ.Close;
        DMBanka.BankaIBQ.Open;
end;

end.
