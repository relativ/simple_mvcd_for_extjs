unit TechVerticalTabbar;

interface

uses
  SysUtils, Classes, Controls, Forms,ExtCtrls,TechGradPanel;

type
  TTechTabItem        = class(TCollectionItem);
    private
    TechButtonPanel: TTechGradPanel;
    GroupPanel: TPanel;
    FActivePage: TTechGradPanel;
    function GetPageCount: integer;
  protected
    procedure SetActivePage(ActivePage: TTechGradPanel);
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
  published


  end;

  TTechTab            = class(TCollection)
  private
    TechButtonPanel: TTechGradPanel;
    GroupPanel: TPanel;
    FActivePage: TTechGradPanel;
    function GetPageCount: integer;
  protected
    procedure SetActivePage(ActivePage: TTechGradPanel);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published

  end;


  TTechVerticalTabbar = class(TScrollBox)
  private
    TabSheet: TTechGradPanel;
    GroupPanel: TPanel;
    FActivePage: TTechGradPanel;
    function GetPageCount: integer;
  protected
    procedure SetActivePage(ActivePage: TTechGradPanel);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property PageCount: Integer read GetPageCount;
    property Pages[Index: Integer]: TTabSheet read GetPage;
  published
    property ActivePage: TTechGradPanel read FActivePage write SetActivePage;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Tech', [TTechVerticalTabbar]);
end;

constructor TTechVerticalTabbar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

end;

destructor TTechVerticalTabbar.Destroy;
begin

  inherited Destroy;
end;

procedure TTechVerticalTabbar.SetActivePage(ActivePage: TTechGradPanel);
begin
  CollapseAllPage;
  ExpandPage(ActivePage);
  FActivePage := ActivePage;
end;


function TTechVerticalTabbar.GetPageCount: integer;
var
  i,pageCnt: integer;
begin
  pageCnt := 0;
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
      inc(pageCnt);
  result := pageCnt;

end;

procedure TTechVerticalTabbar.CollapseAllPage;
var
  i: integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TPanel then
    begin

    end;
end;

end.
