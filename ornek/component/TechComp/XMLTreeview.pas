{------------------------------------------------------------------------------}
{                                                                              }
{  XMLTreeview v1.0                                                            }
{  by Serkan G�ne�                                                             }
{                                                                              }
{  gorecelik@gmail.com                                                         }
{  http://www.e-xtraportal.net                                                 }
{------------------------------------------------------------------------------}

unit XMLTreeview;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, JvSimpleXml, Forms,IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,HTTPApp, TechScrollMeter,
  Graphics;

type
  TXMLTreeview = class;
  TXMLData = class(TList)
    id     : string;
    typ    : string;
    name   : string;
    serino : string;
  end;

  ThttpThread = class(TThread)
  private
    fXmlTree: TXMLTreeview;
    Fhost,FpostParams,Flocalfile:string;
    fDownload: boolean;
    procedure PostWebParams(host,postParams: string; out outText:string);
  protected
    procedure Execute; override;
  public
    constructor CreateDownloadThread(CreateSuspended: Boolean; ParentTree: TXMLTreeview; host,localfile:string);
    destructor Destroy; override;
  end;


  TXMLTreeview = class(TTreeView)
  private
    JvXML: TJvSimpleXML;
    Fmeter: TTechScrollMeter;
  protected
    { Protected declarations }
  public
    webPostStatus: boolean;
    procedure LoadXMLFile(fileName: string);
    function LoadXMLString(XML: string): boolean;
    function GetNodeParameter(ItemIndex: integer; parameterText: string): string;
    procedure LoadXMLFromInternet(xmlAddress: string);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property TechMeter: TTechScrollMeter read Fmeter write Fmeter;
  end;

procedure Register;

implementation

uses JclSimpleXml;

procedure Register;
begin
  RegisterComponents('Tech', [TXMLTreeview]);
end;

{ ThttpThread }

constructor ThttpThread.CreateDownloadThread(CreateSuspended: Boolean; ParentTree: TXMLTreeview; host,localfile:string);
begin
  Fhost       := host;
  Flocalfile  := localfile;
  fDownload   := true;
  fXmlTree    := ParentTree;
  inherited Create(CreateSuspended);
end;

destructor ThttpThread.Destroy;
begin
  inherited Destroy;
end;

procedure ThttpThread.PostWebParams(host,postParams: string; out outText:string);
var
	webcon: TIdHTTP;
  s: string;
begin
try
  Try
    fXmlTree.webPostStatus := true;
    webcon := TIdHTTP.Create(nil);
    s      := webcon.Get(host+postParams);
    outText:= s;
  finally
    fXmlTree.webPostStatus := false;
  end;
except
  
end;
end;

procedure ThttpThread.Execute;
begin
  PostWebParams(Fhost,FpostParams,Flocalfile);
end;

//---------------------TXMLTreeview---------------------------------------------

constructor TXMLTreeview.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  JvXML:= TJvSimpleXML.Create(nil);
end;

destructor TXMLTreeview.Destroy;
begin
  JvXML.Free;
  inherited Destroy;
end;

procedure TXMLTreeview.LoadXMLFile(fileName: string);
var
  fs: TFileStream;
  stringStream: TStringStream;
begin
  fs:= TFileStream.Create(fileName,fmOpenRead or fmShareDenyWrite);
  stringStream:= TStringStream.Create('');
  stringStream.CopyFrom(fs,fs.Size);
  LoadXMLString(stringStream.DataString);
  fs.Free;
  stringStream.Free;
end;

function TXMLTreeview.LoadXMLString(XML: string): boolean;
var
  rootItem,Item,subItems,subItems2 : TJvSimpleXMLElem;
  node,subNode  : TTreeNode;
  i,a,b         : integer;
  caption,ImageIndexStr: string;
  XMLData       : TXMLData;
  MeterItem     : TTechMeterItem;
  newMeter      : TTechScrollMeter;
begin
  Result := true;
  Items.Clear;
try
  JvXML.LoadFromString(XML);
  rootItem := JvXML.Root;
  for i := 0 to rootItem.Items.Count -1 do
  begin
    XMLData         := TXMLData.Create;
    Item            := rootItem.Items[i];
    caption         := Trim(Item.Items.Value('caption'));
    ImageIndexStr   := Trim(Item.Items.Value('imageindex'));
    node := Items.Add(nil,caption);
    XMLData.id      := Trim(Item.Items.Value('id'));
    XMLData.name    := Trim(Item.Items.Value('name'));
    XMLData.typ     := Trim(Item.Items.Value('type'));
    XMLData.serino  := Trim(Item.Items.Value('serialNumber'));
    node.Data       := XMLData;
    XMLData.Free;
    if ImageIndexStr <> '' then
    begin
      node.ImageIndex     := StrToInt(ImageIndexStr);
      node.SelectedIndex  := StrToInt(ImageIndexStr);
    end;
    subItems        := Item.Items[Item.Items.count - 1];

    for a := 0 to subItems.Items.Count -1 do
    begin
      XMLData         := TXMLData.Create;
      Item            := subItems.Items[a];
      caption         := Trim(Item.Items.Value('caption'));
      ImageIndexStr   := Trim(Item.Items.Value('imageindex'));
      subNode         := Items.AddChild(node,caption);
      XMLData.id      := Trim(Item.Items.Value('id'));
      XMLData.name    := Trim(Item.Items.Value('name'));
      XMLData.serino  := Trim(Item.Items.Value('serialNumber'));
      XMLData.typ     := Trim(Item.Items.Value('type'));
      subNode.Data    := XMLData;
      XMLData.Free;
      if ImageIndexStr <> '' then
      begin
        subNode.ImageIndex     := StrToInt(ImageIndexStr);
        subNode.SelectedIndex  := StrToInt(ImageIndexStr);
      end;
      subItems2        := Item.Items[Item.Items.count - 1];

      for b := 0 to subItems2.Items.Count -1 do
      begin
        XMLData         := TXMLData.Create;
        Item            := subItems2.Items[b];
        caption         := Trim(Item.Items.Value('caption'));
        ImageIndexStr   := Trim(Item.Items.Value('imageindex'));
        node := Items.AddChild(subNode,caption);
        XMLData.id      := Trim(Item.Items.Value('id'));
        XMLData.name    := Trim(Item.Items.Value('name'));
        XMLData.serino  := Trim(Item.Items.Value('serialNumber'));
        XMLData.typ     := Trim(Item.Items.Value('type'));
        node.Data       := XMLData;
        if Fmeter <> nil then
        begin
          MeterItem       := Fmeter.Columns[0].MeterList.Add;
          MeterItem.Name  := XMLData.serino;
          MeterItem.Meter.Caption := caption;
          MeterItem.Meter.CaptionBlock.Caption  := caption;
          MeterItem.Meter.NameBlock.Caption     := XMLData.name;
        end;
        XMLData.Free;
        if ImageIndexStr <> '' then
        begin
          node.ImageIndex     := StrToInt(ImageIndexStr);
          node.SelectedIndex  := StrToInt(ImageIndexStr);
        end;
       // subItems        := Item.Items[Item.Items.count - 1];
      end;
    end;
  end;
except
  Result := false;
end;
end;

procedure TXMLTreeview.LoadXMLFromInternet(xmlAddress: string);
var
  outString: string;
begin
  try
    webPostStatus := true;
    ThttpThread.CreateDownloadThread(false, Self, xmlAddress, outString);
    while webPostStatus do
      Application.ProcessMessages;

    LoadXMLString(outString);
  finally

  end;
end;

function TXMLTreeview.GetNodeParameter(ItemIndex: integer; parameterText: string): string;
var
  XMLData       : TXMLData;
begin
  XMLData := TXMLData(Items[ItemIndex].Data);
  if LowerCase(parameterText) = 'id' then
    Result := XMLData.ID
  else if LowerCase(parameterText) = 'name' then
    Result := XMLData.name
  else if LowerCase(parameterText) = 'serino' then
    Result := XMLData.serino
  else if LowerCase(parameterText) = 'type' then
    Result := XMLData.typ;
end;
end.