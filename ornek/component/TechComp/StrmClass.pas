unit StrmClass;
{$R-,T-,H+,X+}
interface
uses Classes;
type
TContainedClass = class(TPersistent)
private
  FSomeData: Integer;

  procedure SetSomeData(Value: Integer);

  public

    constructor Create;

  // Only published properties
  // are automatically streamed.
  published

    property SomeData: Integer read FSomeData write SetSomeData;

end;
TStreamableClass = class(TComponent)
private
  FContainedClass: TContainedClass;
  public

    constructor Create(AOwner: TComponent); override;

    destructor Destroy; override;

  // Only published properties
  // are automatically streamed.
  published

    property ContainedClass: TContainedClass read FContainedClass write FContainedClass;

end;

implementation

procedure TContainedClass.SetSomeData(Value: Integer);
begin
{ Place a breakpoint here and notice how the data is streamed back. }
  FSomeData := Value;
end;
constructor TContainedClass.Create;
begin
  FSomeData := 42;
end;
constructor TStreamableClass.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FContainedClass := TContainedClass.Create;

end;
destructor TStreamableClass.Destroy;
begin
  FContainedClass.Free;
end;
initialization
  RegisterClasses([TContainedClass, TStreamableClass]);
finalization
end.