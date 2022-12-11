unit TechTitleListBox;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, ExtCtrls,StdCtrls;

type
  TTechTitleListBox = class(TPanel)
  private
    FBaslik: string;
    title: TPanel;
    ListBox: TListBox;
    procedure SetBaslik(val: string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Baslik: string read FBaslik write SetBaslik;
    property Liste: TListBox read ListBox write ListBox;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechTitleListBox]);
end;

constructor TTechTitleListBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  title:= TPanel.Create(self);
  title.parent := self;
  title.align := alTop;
  title.height := 14;
  title.caption := '';
  ListBox:= TListBox.Create(self);
  ListBox.parent := self;
  ListBox.align := alClient;
end;

destructor TTechTitleListBox.Destroy;
begin
  title.Free;
  ListBox.Free;
  inherited Destroy;
end;

procedure TTechTitleListBox.SetBaslik(val: string);
begin
    FBaslik := val;
    title.Caption := FBaslik;
end;

end.
