unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, OnlineLabel, OnlineButton,
  OnlineCustomControl;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Copyright: TLabel;
    OKButton: TOnlineButton;
    OnlineLabel1: TOnlineLabel;
    OnlineLabel2: TOnlineLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ProgramIconClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Main;



{$R *.dfm}

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
        Close;
end;

procedure TAboutBox.FormKeyPress(Sender: TObject; var Key: Char);
begin
        if Key=#27 Then Close;
end;

procedure TAboutBox.ProgramIconClick(Sender: TObject);
begin
  WinExec ('C:\program files\Internet Explorer\Iexplore.exe www.onlinebilgisayar.com',SW_SHOW);
end;

procedure TAboutBox.FormShow(Sender: TObject);
begin
        ProductName.Caption := AnaSayfa.Caption;
end;

end.
 
