unit TechWordExport;

interface

uses
  Windows, Messages, SysUtils, Classes,ComObj,DBGrids,Variants;

type
  TTechWordExport = class(TComponent)
  private
    FDBGrid: TDBGrid;
    FAbout: string;
    FStil: integer;
    procedure SetDBGrid(val: TDBGrid);
    procedure SetAbout(Val: string);
    procedure GridToWord(Grid: TDBGrid; FormatNum: integer);
  protected
    { Protected declarations }
  public
    SatirEkle: Array[1..10000,1..50] of string;
    Aciklama: string;
    constructor Create(AOwner: TComponent); override;
    procedure WordExport;
    function SatirSayisi: integer;
    procedure Temizle;
  published
    property About: string read FAbout write SetAbout;
    property StilNo: integer read FStil write FStil;
    property DBGrid: TDBGrid read FDBGrid write SetDBGrid;
  end;

procedure Register;

implementation

uses DB;

procedure Register;
begin
  RegisterComponents('Tech', [TTechWordExport]);
end;


constructor TTechWordExport.Create(AOwner: TComponent);
begin
        inherited;
        FAbout := 'Copyright by Tech Yazýlým'+#13+'Coded by Serkan Güneþ';
        FStil := 9;
end;

function TTechWordExport.SatirSayisi: integer;
begin
    result := FDBGrid.DataSource.DataSet.RecordCount + 1;
end;

procedure TTechWordExport.WordExport;
var
  Word: Variant;
  i,a,boyut: integer;
  s,cizgi: string ;
begin
        try
            GridToWord(FDBGrid,FStil);
        except;
                if (FDBGrid <> nil) and (FDBGrid.DataSource <> nil) and (FDBGrid.DataSource.DataSet <> nil) then
                        FDBGrid.DataSource.DataSet.EnableControls;
        end;
end;

procedure TTechWordExport.Temizle;
var
    i,a: integer;
begin
    for i := 1 to 10000 do
        for a := 1 to 50 do
            SatirEkle[i,a] := '';
end;

procedure TTechWordExport.GridToWord(Grid: TDBGrid; FormatNum: integer);
var
   x: integer;
   y: integer;
   i,a,top,col: integer;
   Word: Olevariant;
   GColCount: integer;
   GRowCount: integer;
begin
    top := 0;
   col := 0;
   x := 0;
   y := 0;
   for i := 1 to 10000 do
   begin
        for a := 1 to 50 do
        begin
            if (y<i) and (SatirEkle[i,a] <> '') and (i > Grid.DataSource.DataSet.RecordCount) then
            begin
                y := i;
                top := top + 1;
            end;
            if (x< a) and (SatirEkle[i,a] <> '') and (a > Grid.Columns.Count) then
            begin
                x := a;
                col := col + 1;
            end;

        end;
    end;
    y := 0;
    x := 0;
   Word := CreateOLEobject('Word.Application');
   Word.Visible := True;
   Word.Documents.Add;
   GColCount := Grid.Columns.Count+col;
   Grid.DataSource.DataSet.Last;
   GRowCount := Grid.DataSource.DataSet.RecNo+top;
   Word.ActiveDocument.Range.Font.Name := 'Verdana';
   Word.ActiveDocument.Range.Font.Size := 8;
   Word.ActiveDocument.PageSetup.Orientation := 1;
   Word.ActiveDocument.Tables.Add(Word.ActiveDocument.Range, GRowCount + 1, GColCount);
   Word.ActiveDocument.Range.InsertAfter(#13+Aciklama+#13+'Tarih ' + Datetimetostr(Now));
   Word.ActiveDocument.Range.Tables.Item(1).AutoFormat(FormatNum, 1, 1, 1, 1, 1, 0, 0, 0, 1);

   for y := 1 to GColCount-col do
      begin
         Word.ActiveDocument.Tables.Item(1).Cell(1, y).Range.InsertAfter(Grid.Columns[y - 1].Title.Caption);
      end;

   x := 1;
   Grid.DataSource.DataSet.DisableControls;
   with Grid.DataSource.DataSet do
      begin
         First;
         while not Eof do
            begin
               x := x + 1;
               for y := 1 to GColCount-col do
                  begin
                    if FieldByName(Grid.Columns[y - 1].FieldName) is TFloatField then
                        Word.ActiveDocument.Tables.Item(1).Cell(x, y).Range.InsertAfter(FormatFloat('###,###.00',FieldByName(Grid.Columns[y - 1].FieldName).AsFloat))
                    else
                        Word.ActiveDocument.Tables.Item(1).Cell(x, y).Range.InsertAfter(FieldByName(Grid.Columns[y - 1].FieldName).AsString);
                  end;
               Next;
            end;
      end;

    for i := 1 to 10000 do
    begin
        for a := 1 to 50 do
        begin
            if SatirEkle[i,a] <> '' then
            begin
                    Word.ActiveDocument.Tables.Item(1).Cell(i, a).Range.InsertAfter(SatirEkle[i,a]);
            end;
        end;
    end;
   Grid.DataSource.DataSet.EnableControls;

   Word.ActiveDocument.Range.Tables.Item(1).UpdateAutoFormat;
end;

procedure TTechWordExport.SetDBGrid(val: TDBGrid);
begin
        FDBGrid:= val;
end;

procedure TTechWordExport.SetAbout(Val: string);
begin
        { Kayýt giriþi yapýlamaz...}
end;

end.
