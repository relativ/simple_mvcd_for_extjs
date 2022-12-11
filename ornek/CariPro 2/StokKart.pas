unit StokKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DBOnlineCombo, OnlineEdit,
  Buttons, DBOnlineEdit, OnlineDBCheckBox, ExtDlgs,
  Grids, DBGrids, OnlineDBGrid, ComCtrls, OnlineButton,
  OnlineCustomControl, OnlineCheckBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBExtLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGridLevel,
  cxGrid, cxDBLookupComboBox, cxTextEdit, DBOnlineLookupCombo;

type
  TFStokKart = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    BitBtn1: TOnlineButton;
    BitBtn2: TOnlineButton;
    OnlineEdit2: TOnlineEdit;
    BitBtn3: TOnlineButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel5: TPanel;
    GroupBox5: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    GroupBox3: TGroupBox;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    DBOnlineEdit4: TDBOnlineEdit;
    DBOnlineEdit7: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    DBOnlineEdit3: TDBOnlineEdit;
    DBOnlineEdit5: TDBOnlineEdit;
    DBOnlineEdit6: TDBOnlineEdit;
    OnlineDBCheckBox1: TOnlineDBCheckbox;
    OnlineDBCheckBox3: TOnlineDBCheckbox;
    DBOnlineCombo1: TDBOnlineCombo;
    DBOnlineEdit8: TDBOnlineEdit;
    OnlineDBGrid1: TOnlineDBGrid;
    BitBtn4: TOnlineButton;
    BitBtn5: TOnlineButton;
    DBOnlineEdit1: TDBOnlineEdit;
    Label12: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    OnlineButton1: TOnlineButton;
    OnlineButton2: TOnlineButton;
    GroupBox2: TGroupBox;
    OnlineButton3: TOnlineButton;
    OnlineButton4: TOnlineButton;
    Label13: TLabel;
    DBOnlineEdit9: TDBOnlineEdit;
    DBOnlineLookupCombo1: TDBOnlineLookupCombo;
    Label14: TLabel;
    DBOnlineEdit10: TDBOnlineEdit;
    OnlineDBGrid2: TOnlineDBGrid;
    OnlineButton5: TOnlineButton;
    OnlineButton6: TOnlineButton;
    OnlineDBGrid4: TOnlineDBGrid;
    OnlineDBGrid3: TOnlineDBGrid;
    Label15: TLabel;
    Label16: TLabel;
    DBOnlineEdit11: TDBOnlineEdit;
    DBOnlineEdit12: TDBOnlineEdit;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    DBImage1: TDBImage;
    DBOnlineLookupCombo2: TDBOnlineLookupCombo;
    OnlineButton7: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Exit(Sender: TObject);
    procedure OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBOnlineEdit4Exit(Sender: TObject);
    procedure DBOnlineEdit8Exit(Sender: TObject);
    procedure DBOnlineEdit7Exit(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure OnlineButton3Click(Sender: TObject);
    procedure OnlineButton4Click(Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet4Show(Sender: TObject);
    procedure OnlineButton5Click(Sender: TObject);
    procedure OnlineButton6Click(Sender: TObject);
    procedure OnlineButton7Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FStokKart: TFStokKart;

implementation

uses StokDM, CariDM,SabitDM, StokGrup, AlisSatisDM, CariSecim;

{$R *.dfm}

procedure TFStokKart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        DMStok.StokAlterIBQ.Close;
        DMStok.StokOzellikIBQ.Close;
        DMStok.FiyatListesiIBQ.Close;
        DMStok.FiyatListesiIBQ.Open;
        Action := caFree;
end;

procedure TFStokKart.BFirstPageClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.First;
end;

procedure TFStokKart.ButtonPreviousClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Prior;
end;

procedure TFStokKart.ButtonNextClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Next;
end;

procedure TFStokKart.BLastPageClick(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Last;
end;

procedure TFStokKart.BitBtn1Click(Sender: TObject);
begin
        PageControl1.ActivePage := TabSheet1;
        DMStok.StokKartiIBQ.Append;
        //if DMStok.StokKartiIBQ.Modified then
        DMStok.StokKartiIBQ.Post;
        DBOnlineEdit7.SetFocus;
end;

procedure TFStokKart.BitBtn2Click(Sender: TObject);
begin
        DMAlisSatis.AlisBodroIBQ.Open;
        if DMStok.StokKartiIBQ.RecordCount>0 Then
        if DMAlisSatis.AlisBodroIBQ.Locate('STOKNO',DMStok.StokKartiIBQSTOKNO.AsString,[]) = False Then
        Begin
                if Application.MessageBox('Bu Stok Kartýný silmek istediðinizden emin misiniz?',
                        '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        try
                                DMStok.StokKartiIBQ.Delete;
                        except;
                                MessageBox(handle,'Ýþlem görmüþ Stok silinemez!...','Uyarý',MB_OK);
                        end;
                end;
        end
        else Application.MessageBox('Ýþlem görmüþ Stok Kartýný silemezsiniz','          Uyarý Mesajý', mb_OK);
end;

procedure TFStokKart.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TFStokKart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (ActiveControl is TDBOnlineEdit) or (ActiveControl is TDBOnlineCombo) or
            (ActiveControl is TOnlineDBCheckBox) or
         (ActiveControl is TDBOnlineCombo)    then
    begin
              Perform(WM_NEXTDLGCTL, 0, 0);
              Key := #0;
    end;
  end;
end;

procedure TFStokKart.GroupBox1Exit(Sender: TObject);
begin
        if DMStok.StokOzellikIBQ.Modified=True Then
                DMStok.StokOzellikIBQ.Post;
end;

procedure TFStokKart.OnlineEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        if key = #13 then
        begin
                Key := #0;
                if Pos('%',OnlineEdit2.Text) <> 0 then
                begin

                        DMStok.StokKartiIBQ.Close;
                        DMStok.StokKartiIBQ.SQL.Clear;
                        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                        DMStok.StokKartiIBQ.SQL.Add('where Upper(STOKADI) like '+#39+OnlineEdit2.UpperTurk+#39);
                        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                end else begin
                        DMStok.StokKartiIBQ.Close;
                        DMStok.StokKartiIBQ.SQL.Clear;
                        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                        DMStok.StokKartiIBQ.SQL.Add('where Upper(STOKADI) like '+#39+OnlineEdit2.UpperTurk+'%'+#39);
                        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                end;
                DMStok.StokKartiIBQ.Open;
                if DMStok.StokKartiIBQ.RecordCount=0 Then
                Begin
                        Application.MessageBox('Bu Ýsimde bir Stok Kartý yok!',
                        '    Uyarý Mesajý', mb_OK);
                        DMStok.StokKartiIBQ.SQL.Clear;
                        DMStok.StokKartiIBQ.SQL.Add('select * from  STOKKART');
                        DMStok.StokKartiIBQ.SQL.Add('Order By STOKADI');
                        DMStok.StokKartiIBQ.Open;
                        OnlineEdit2.SetFocus;
                        OnlineEdit2.SelectAll;
                end;
        end;

end;

procedure TFStokKart.DBOnlineEdit4Exit(Sender: TObject);
begin
        try
                if DMStok.StokKartiIBQ.Modified then
                        DMStok.StokKartiIBQ.Post;
        except;
                MessageBox(handle,'Bu numarada bir stok kartý var.'+#13+'Lütfen baþka bir numara giriniz!..','Uyarý',MB_OK);
                DBOnlineEdit4.SetFocus;
        end;
end;

procedure TFStokKart.DBOnlineEdit8Exit(Sender: TObject);
begin
        try
                if DMStok.StokKartiIBQ.Modified then
                        DMStok.StokKartiIBQ.Post;
        except;
                MessageBox(handle,'Bu barkodda bir stok kartý mevcut!.'+#13+'Lütfen yeni bir barkod giriniz..','Uyarý',MB_OK);
                DBOnlineEdit8.SetFocus;
        end;
end;

procedure TFStokKart.DBOnlineEdit7Exit(Sender: TObject);
begin
        if DBOnlineEdit7.Modified = true then
        begin
                DBOnlineEdit7.Modified := false;
                if DMStok.StokKartiIBQ.Modified then
                        DMStok.StokKartiIBQ.Post;
                if DMStok.StokKartiIBQSTOKADI.AsString <> '' then
                begin
                        DMCari.CiftDenetimIBQ.SQL.Text := 'Select Count(*) Miktar From STOKKART where STOKADI ='+#39+DMStok.StokKartiIBQSTOKADI.AsString+#39;
                        DMCari.CiftDenetimIBQ.Open;
                        if DMCari.CiftDenetimIBQ.FindField('Miktar').AsInteger > 1 then
                                if MessageBox(handle,'Bu isimde bir Stok Kart mevcut kullanmak ister misiniz?','Uyarý',MB_YESNO)= mrNo then
                                begin
                                        DMStok.StokKartiIBQ.Edit;
                                        DMStok.StokKartiIBQSTOKADI.AsString := '';
                                        DBOnlineEdit7.SetFocus;
                                end;
                        DMCari.CiftDenetimIBQ.Close;
                end;

        end;
end;

procedure TFStokKart.DBImage1DblClick(Sender: TObject);
begin
        if OpenPictureDialog1.Execute then
        begin
                if DMStok.StokResimIBQRESIM.AsString <> '' Then
                Begin
                        DMStok.StokResimIBQ.Edit;
                        DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
                        DMStok.StokResimIBQ.Post;
                end else
                Begin
                        DMStok.StokResimIBQ.Append;
                        DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
                        DMStok.StokResimIBQ.Post;
                end;
        end;
end;

procedure TFStokKart.FormDestroy(Sender: TObject);
begin
     {   if DMStok.StokKartiIBQ.Modified then
                DMStok.StokKartiIBQ.Post;
        RaporDM.BosIBQuery.SQL.Text := 'DELETE FROM STOKKART WHERE STOKADI IS NULL';
        RaporDM.BosIBQuery.ExecSQL;
        DMStok.StokKartiIBQ.Close;
        DMStok.StokKartiIBQ.Open;
        CariDM.AlisSatisListesiIBQuery.Close;
        CariDM.AlisSatisListesiIBQuery.Open; }
end;

procedure TFStokKart.BitBtn4Click(Sender: TObject);
begin
        FStokGrup := TFStokGrup.Create(self);
        FStokGrup.BitBtn2.Visible := True;
        FStokGrup.Show;
end;

procedure TFStokKart.BitBtn5Click(Sender: TObject);
begin
        if DMStok.GrupBaglantiIBQ.RecordCount > 0 then
        begin
                if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                        DMStok.GrupBaglantiIBQ.Delete;
        end;
end;

procedure TFStokKart.FormShow(Sender: TObject);
begin
        DMStok.StokKartiIBQ.Open;
        DMStok.StokGruplariIBQ.Close;
        DMStok.StokGruplariIBQ.Open;
        DMStok.StokAlterIBQ.Open;
        DMStok.StokOzellikIBQ.Open;
        DMStok.StokResimIBQ.Open;
        PageControl1.ActivePage := TabSheet1;

end;

procedure TFStokKart.OnlineButton1Click(Sender: TObject);
begin
        DMStok.StokOzellikIBQ.Append;
        OnlineDBGrid3.SetFocus;
end;

procedure TFStokKart.GroupBox3Exit(Sender: TObject);
begin
        if (DMStok.StokKartiIBQ.Modified=True) and (DMStok.StokKartiIBQ.RecordCount>0) Then
                if DMStok.StokKartiIBQSTOKADI.AsString='' Then
                        DMStok.StokKartiIBQ.Delete;
        if DMStok.StokKartiIBQ.Modified=True Then
                DMStok.StokKartiIBQ.Post;
        DMStok.FiyatListesiIBQ.Close;
        DMStok.FiyatListesiIBQ.Open;
end;

procedure TFStokKart.GroupBox4Exit(Sender: TObject);
begin
        if DMStok.StokGruplariIBQ.Modified=True Then
                DMStok.StokGruplariIBQ.Post;
end;

procedure TFStokKart.GroupBox2Exit(Sender: TObject);
begin
        if DMStok.StokAlterIBQ.Modified=True Then
                DMStok.StokAlterIBQ.Post;
end;

procedure TFStokKart.OnlineButton3Click(Sender: TObject);
begin
        DMStok.StokAlterIBQ.Append;
        DMStok.StokAlterIBQSTOKBAGKOD.AsInteger := DMStok.StokKartiIBQSTOKKOD.AsInteger;
        DMStok.StokAlterIBQ.Post;
end;

procedure TFStokKart.OnlineButton4Click(Sender: TObject);
begin
        if DMStok.StokAlterIBQ.RecordCount > 0 then
        if MessageBox(handle,'Silmek istediðinizden emin misiniz?','Uyarý',MB_YESNO)=mrYes then
                DMStok.StokAlterIBQ.Delete;
end;

procedure TFStokKart.cxGrid2DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if (Key =VK_DELETE) and (Shift = [ssCTRL]) then
                Key := 0;
end;

procedure TFStokKart.TabSheet4Show(Sender: TObject);
begin
        DMStok.FiyatListesiIBQ.Close;
        DMStok.FiyatListesiIBQ.Open;
end;

procedure TFStokKart.OnlineButton5Click(Sender: TObject);
begin
        FCariSecim.DataSet := DMStok.StokKartiIBQ;
        FCariSecim.islemtur := 'Cari' ;
        FCariSecim.ShowModal;
end;

procedure TFStokKart.OnlineButton6Click(Sender: TObject);
begin
        if DMStok.StokKartiIBQCARIKOD.AsInteger > 0 then
        if MessageBox(Handle,'Bu ürün kaynaðýný silmek istediðinizden emim misiniz?','Uyarý',MB_YesNo) = mrYes then
        begin
                DMStok.StokKartiIBQ.Edit;
                DMStok.StokKartiIBQCARIKOD.AsString:='';
                DMStok.StokKartiIBQ.Post;
        end;
end;

procedure TFStokKart.OnlineButton7Click(Sender: TObject);
var
        List: TStringList;
        i: integer;
begin
        List:= TStringList.Create;
        for i := 3 to DMStok.StokKartiIBQ.FieldCount - 1 do
                List.Add(DMStok.StokKartiIBQ.Fields[i].AsString);
        DMStok.StokKartiIBQ.Append;
        for i := 3 to DMStok.StokKartiIBQ.FieldCount - 1 do
            DMStok.StokKartiIBQ.Fields[i].AsString :=List[i-3];
        DMStok.StokKartiIBQ.Post;


end;

end.
