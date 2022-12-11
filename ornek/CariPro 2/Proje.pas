unit Proje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, OnlineDBGrid, StdCtrls, OnlineCustomControl,
  OnlineButton, ExtCtrls, OnlineCheckDBGrid;

type
  TFProje = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    BitBtn3: TOnlineButton;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    OnlineCheckDBGrid1: TOnlineCheckDBGrid;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnlineCheckDBGrid1EditButtonClick(Sender: TObject);
    procedure OnlineDBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProje: TFProje;

implementation

{$R *.dfm}
Uses ProjeDM, SabitDM, PersonelSec;

procedure TFProje.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFProje.BitBtn1Click(Sender: TObject);
begin
        DMProje.ProjeIBQ.Append;
end;

procedure TFProje.FormShow(Sender: TObject);
begin
        DMProje.ProjeIBQ.Open;
        DMProje.islemIBQ.Open;
end;

procedure TFProje.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMProje.ProjeIBQ.Close;
        DMProje.islemIBQ.Close;
end;

procedure TFProje.OnlineCheckDBGrid1EditButtonClick(Sender: TObject);
begin
        if  DMProje.ProjeIBQ.Active then
        begin
                DMSabit.PersonelIBQ.Open;
                FPersonelSec.DataSet :=  DMProje.ProjeIBQ;
                FPersonelSec.ShowModal;
        end;
end;

procedure TFProje.OnlineDBGrid1EditButtonClick(Sender: TObject);
begin
        DMSabit.PersonelIBQ.Open;
        FPersonelSec.DataSet :=  DMProje.islemIBQ;
        FPersonelSec.ShowModal;

end;

end.
