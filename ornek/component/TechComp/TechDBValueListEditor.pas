unit TechDBValueListEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Grids, ValEdit,
  db,Graphics,ComCtrls,StdCtrls;

  const
  TechDBValueList_ABOUT = 'Tech Yaz�l�m / Serkan G�ne�'#13#10+'E-Mail: Tech@Techbilgisayar.com. '#13#10+'Web: www.Techbilgisayar.com';

type
  TTechDBValueListEditor = class;

  TTechDBValueListEditorDataLink=class(TDataLink)
  private
        FDBValueList : TTechDBValueListEditor;
  public
        constructor CreateValueList(Owner:TTechDBValueListEditor);
        procedure ActiveChanged;                      override;
        procedure DataSetScrolled(Distance: Integer); override;
        procedure RecordChanged(Field: TField);       override;
        procedure UpdateData;                       override;
  end;
  TTechDBValueListEditor = class(TValueListEditor)
  private
    FDataLink: TTechDBValueListEditorDataLink;
    procedure SetVersion(const Val: string);
    function  GetVersion: string;
    procedure SetAllFields;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
  protected
    procedure SetEditText(ACol, ARow: Integer; const Value: string); override;
    procedure WMPaint(var Message: TWMPaint); message wm_Paint;
  public
    constructor Create(AOwner:TComponent); override;
    destructor  Destroy;                   override;
    procedure   Yenile;
  published
    property About: string read GetVersion write SetVersion stored FALSE;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TechDB', [TTechDBValueListEditor]);
end;

{ TTechDBValueListEditorDataLink }

procedure TTechDBValueListEditorDataLink.ActiveChanged;
begin
  inherited ActiveChanged;
  FDBValueList.Yenile;
end;

constructor TTechDBValueListEditorDataLink.CreateValueList(Owner:TTechDBValueListEditor);
begin
     inherited Create;
     FDBValueList := Owner;
end;

procedure TTechDBValueListEditorDataLink.DataSetScrolled(Distance: Integer);
begin
     inherited DataSetScrolled(Distance);
     FDBValueList.Yenile;
end;

procedure TTechDBValueListEditorDataLink.RecordChanged(Field: TField);
begin
  inherited RecordChanged(Field);

end;

procedure TTechDBValueListEditorDataLink.UpdateData;
begin
  inherited UpdateData;
end;

{ ---------- TTechDBValueListEditorDataLink Sonu -------}
{ ---------- TTechDBValueListEditor ba�lang�c� --------}

procedure TTechDBValueListEditor.WMPaint(var Message: TWMPaint);
var D:TDataSet;
    i: integer;
    Bmp: TBitmap;
    OutRect: TRect;
    BmpWidth: Integer;
begin
        inherited;
        if (FDataLink <> nil) and (FDataLink.DataSet <> nil) then
        begin
        D:=FDataLink.DataSet;
        if D.Active = true then
        begin
                if D.Fields <> nil then
                begin
                        for i := 0 to D.FieldCount - 1 do
                                if D.Fields[i].DataType = ftGraphic then
                                begin
                                        OutRect := CellRect(1,i+1);
                                        Bmp := TBitmap.Create;
                                        try
                                                Bmp.Assign(D.Fields[i]);
                                                BmpWidth := CellRect(1,i+1).Right - CellRect(1,i+1).Left;
                                                OutRect.Right :=CellRect(1,i+1).Left + BmpWidth;
                                                Canvas.StretchDraw(OutRect, Bmp);
                                        finally
                                                Bmp.Free;
                                        end;
                                end;
                end;
        end;
        end;

end;

constructor TTechDBValueListEditor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataLink := TTechDBValueListEditorDataLink.CreateValueList(self);
  TitleCaptions.Clear;
  TitleCaptions.Add('S�tun');
  TitleCaptions.Add('De�er');

end;

function TTechDBValueListEditor.GetDataSource: TDataSource;
begin
        Result := FDataLink.DataSource;
end;

destructor TTechDBValueListEditor.Destroy;
begin
  FDataLink.Free;
  inherited Destroy;
end;

procedure TTechDBValueListEditor.SetDataSource(const Value: TDataSource);
begin
     if FDataLink.DataSource<>Value then begin
        FDataLink.DataSource := Value;
        Yenile;
     end;
end;

procedure TTechDBValueListEditor.SetEditText(ACol, ARow: Integer; const Value: string);
var
    D:TDataSet;
    i: integer;
begin
        inherited;
        if FDataLink.DataSet <> nil then
        begin
        D:=FDataLink.DataSet;
        if D.Fields <> nil then
        begin
                if not Assigned(D) then Exit;
                if D.FieldCount = RowCount then
                begin
                        D.Edit;
                        for i := 0 to D.FieldCount - 1 do
                                if D.Fields[i].AsString <> Values[Keys[i]] then
                                        D.Fields[i].AsString := Values[Keys[i]];
                end;
        end;
        end;
end;

function TTechDBValueListEditor.GetVersion: string;
begin
  Result := TechDBValueList_ABOUT;
end;

procedure TTechDBValueListEditor.SetVersion(const Val: string);
begin
  { Kay�t giri�i yap�lamaz }
end;

procedure TTechDBValueListEditor.SetAllFields;
var D:TDataSet;
    i: integer;
begin
        if FDataLink.DataSet <> nil then
        begin
        D:=FDataLink.DataSet;
        if D.Fields <> nil then
        begin
                D.First;
                Strings.Clear;
                for i := 0 to D.FieldCount - 1 do
                        Strings.Add(D.Fields[i].DisplayName+'='+D.Fields[i].AsString);
        end;
        end;
end;

procedure TTechDBValueListEditor.Yenile;
var D:TDataSet;
    i: integer;
    Bmp: TBitmap;
    OutRect: TRect;
    BmpWidth: Integer;
begin
        if FDataLink.DataSet <> nil then
        begin
        D:=FDataLink.DataSet;
        if D.Fields <> nil then
        begin
                if Strings.Text ='' then
                begin
                        SetAllFields;
                end else
                for i := 0 to D.FieldCount - 1 do
                        if D.Fields[i].DataType <> ftGraphic then
                                Values[D.Fields[i].DisplayName] := D.Fields[i].AsString
                        else begin
                                OutRect := CellRect(1,i+1);
                                Bmp := TBitmap.Create;
                                try
                                        Bmp.Assign(D.Fields[i]);
                                        BmpWidth := CellRect(1,i+1).Right - CellRect(1,i+1).Left;
                                        OutRect.Right :=CellRect(1,i+1).Left + BmpWidth;
                                        Canvas.StretchDraw(OutRect, Bmp);
                                finally
                                        Bmp.Free;
                                end;
                        end;
        end;
        end;
end;

end.
