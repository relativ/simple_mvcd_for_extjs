unit MSektor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DBOnlineEdit, Grids, DBGrids,
  ExtCtrls, OnlineDBGrid, OnlineButton, OnlineCustomControl;

type
  TFCariSektor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBGrid1: TOnlineDBGrid;
    DBEdit1: TDBOnlineEdit;
    BitBtn11: TOnlineButton;
    BitBtn12: TOnlineButton;
    BitBtn2: TOnlineButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCariSektor: TFCariSektor;

implementation

Uses SabitDM, ProcedureDM, DataDM;

{$R *.dfm}

procedure TFCariSektor.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure TFCariSektor.BitBtn11Click(Sender: TObject);
begin
        DBEdit1.SetFocus;
        DMSabit.SektorIBQ.Append;
end;

procedure TFCariSektor.BitBtn12Click(Sender: TObject);
begin
        DMProcedure.Silme_Kontrol_Proc.ParamByName('TIP').AsString := 'Sektörler';
        DMProcedure.Silme_Kontrol_Proc.ParamByName('KOD_IN').AsInteger := DMSabit.SektorIBQSEKKOD.AsInteger;
        DMProcedure.Silme_Kontrol_Proc.Prepare;
        DMProcedure.Silme_Kontrol_Proc.ExecProc;
        DMData.IBTCariPro.CommitRetaining;
        if DMProcedure.Silme_Kontrol_Proc.ParamByName('DURUM').AsInteger = 0 then
        begin
                if DMSabit.SektorIBQ.RecordCount > 0 then
                if MessageBox(Handle,'Silmek istediðinizden emin misiniz ?',PChar('Uyarý'),MB_YesNo) = mrYes then
                        DMSabit.SektorIBQ.Delete;
        end else MessageBox(handle,'Kullanýlan Cari Sektör silinemez..','Uyarý',MB_OK);
end;

procedure TFCariSektor.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                key :=#0;
                DMSabit.SektorIBQ.ApplyUpdates;
                BitBtn11.SetFocus;
        end;
end;

procedure TFCariSektor.FormShow(Sender: TObject);
begin
        DMSabit.SektorIBQ.Open;
        DBEdit1.SetFocus;
end;

procedure TFCariSektor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
end;

end.
