unit ParaBirim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, Grids, DBGrids,
  OnlineDBGrid, ExtCtrls, Mask, DBCtrls, DBOnlineEdit, 
  OnlineButton,URLMON, Psock, NMHttp, NMFngr, OnlineCustomControl;

type
  TFParaBirim = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    OnlineDBGrid3: TOnlineDBGrid;
    Panel3: TPanel;
    GroupBox12: TGroupBox;
    BFirstPage: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    ButtonNext: TOnlineButton;
    BLastPage: TOnlineButton;
    BitBtn25: TOnlineButton;
    PopupMenu1: TPopupMenu;
    ParaBirimleri1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    BitBtn8: TOnlineButton;
    BitBtn7: TOnlineButton;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBOnlineEdit;
    DBOnlineEdit2: TDBOnlineEdit;
    Label3: TLabel;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    OnlineDBGrid1: TOnlineDBGrid;
    BitBtn5: TOnlineButton;
    OnlineButton1: TOnlineButton;
    OnlineButton2: TOnlineButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure BFirstPageClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure BLastPageClick(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure ParaBirimleri1Click(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParaBirim: TFParaBirim;
  //tcmburl:pchar='http://localhost/kur.htm';
  tcmburl:pchar='http://www.tcmb.gov.tr/kurlar/today.html';

implementation

uses SabitDM, Main,wininet;

{$R *.dfm}


function UserOnline:boolean;
var
connect_status:dword;
begin
        connect_status :=  1  ; // 2 {lan}   +                 1 {modem} ;                  //4 {proxy} ;
        result := InternetGetConnectedState(@connect_status,0);
end;


function download(url:string;F:string):boolean;
begin
        if FileExists(f) then deletefile(f);
        try
                UrlDownloadToFile(nil, PChar(url), PChar(f), 0, nil);
          except ;
                download := False;
        end;
        if FileExists(f) then download := true;

end;

function getval(dosya:string;Target:Pchar):Tstringlist;
var     i,j,c,vpos:integer;
        list:TStringlist;
        temp: String;
        FloatTemp: Extended;
begin
        list:=TStringList.Create();
        if not fileExists(dosya) then ShowMessage('Sunucu bulunamadý ! ')
        else begin
                     list.LoadFromFile(dosya);
                     result:=TStringList.Create;
                     result.Add('');
                     vpos:=0;

                     for i:=0 to list.Count-1 do  // Hedef satýrý bul
                             if strpos(pchar(list[i]),Target)<>nil then
                             begin
                                     temp:=list[i];
                                     repeat    // degerleri al
                                             for j:=length(temp) downto 1 do
                                             if temp[j] <>' ' then Result[vpos] :=temp[j] + Result[vpos]
                                                else if temp[j-1] <> ' ' then
                                                begin
                                                        Result.Add('');
                                                        Vpos:=Vpos+1;
                                                end;
                                     until vpos<>-1;
                                     for j:= 0 to Result.Count - 1 do
                                        Result[j] := StringReplace(Result[j],',','',[rfReplaceAll]);
                                     Result.Delete(Result.Count - 1);
                                     Temp:= Result[Result.Count - 1];
                                     Result.Delete(Result.Count - 1);
                                     for j:= Result.Count - 1 downto 0 do
                                     begin
                                             if tryStrToFloat(Result[j],FloatTemp) = false then
                                             begin
                                                     temp := temp + ' '+Result[j];
                                                     Result.Delete(j);
                                             end;
                                     end;
                                     Result.Insert(0,temp);
                                     temp:=list[8];

                                     for c:=0 to list.Count-1 do  // Hedef satýrý bul
                                     if strpos(pchar(list[c]),'Indicative')<>nil then
                                     begin
                                             temp:=list[c];
                                             Result.Insert(1,copy(temp,length(temp)+4-length(strpos(pchar(temp),Pchar('on '))),10));
                                             Result.insert(2,copy(temp,length(temp)+4-length(strpos(pchar(temp),Pchar('at '))),5));
                                             Result[1] := StringReplace(Result[1],'/','',[rfReplaceAll]);
                                             Result[1]:=copy(Result[1],3,2)+'.'+ copy(Result[1],1,2)+'.'+copy(Result[1],5,4);
                                             exit;
                                     end;
                                     exit;
                            end;
            end;
end;

procedure TFParaBirim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if DMSabit.ParaBirimiIBQ.Modified = true then
                DMSabit.ParaBirimiIBQ.Post;
        if DMSabit.DovizKurIBQ.Modified = true then
                DMSabit.DovizKurIBQ.Post;
        Action := caFree;
end;

procedure TFParaBirim.FormShow(Sender: TObject);
begin
        DMSabit.DovizKurIBQ.Open;
        DMSabit.ParaBirimiIBQ.Open;
        BitBtn8.SetFocus;

end;

procedure TFParaBirim.BitBtn8Click(Sender: TObject);
begin
        DMSabit.DovizKurIBQ.Insert;
        OnlineDBGrid3.SetFocus;
end;

procedure TFParaBirim.BitBtn7Click(Sender: TObject);
begin
        if DMSabit.DovizKurIBQ.RecordCount > 0 then
        if MessageBox(Handle,'Silmek istediðinizden emin misiniz ?','Uyarý',MB_YesNo) = mrYes then
                DMSabit.DovizKurIBQ.Delete;
end;

procedure TFParaBirim.ButtonNextClick(Sender: TObject);
begin
        DMSabit.ParaBirimiIBQ.Next;
end;

procedure TFParaBirim.BFirstPageClick(Sender: TObject);
begin
        DMSabit.ParaBirimiIBQ.First;
end;

procedure TFParaBirim.ButtonPreviousClick(Sender: TObject);
begin
        DMSabit.ParaBirimiIBQ.Prior;
end;

procedure TFParaBirim.BLastPageClick(Sender: TObject);
begin
        DMSabit.ParaBirimiIBQ.Last;
end;

procedure TFParaBirim.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFParaBirim.ParaBirimleri1Click(Sender: TObject);
var
        Denetim: string;
        Denetim1: string;
        Denetim2: string;
begin
        DMSabit.ParaBirimiIBQ.Locate('PARABIRIMI','Avrupa Para Birimi',[]);
        Denetim := DMSabit.ParaBirimiIBQPARABIRIMI.AsString;

        DMSabit.ParaBirimiIBQ.Locate('PARABIRIMI','Türk Lirasý',[]);
        Denetim1 := DMSabit.ParaBirimiIBQPARABIRIMI.AsString;

        DMSabit.ParaBirimiIBQ.Locate('PARABIRIMI','Amerikan Dolarý',[]);
        Denetim2 := DMSabit.ParaBirimiIBQPARABIRIMI.AsString;

        DMSabit.ParaBirimiIBQ.First;

        if (Denetim = '') and (Denetim1 = '') and (Denetim2 = '') then
        begin
        DMSabit.ParaBirimiIBQ.Append;
        DMSabit.ParaBirimiIBQPARABIRIMI.AsString := 'Türk Lirasý';
        DMSabit.ParaBirimiIBQFORMAT.AsString := '###,###';
        DMSabit.ParaBirimiIBQKISAADI.AsString := 'TL';
        DMSabit.ParaBirimiIBQKUR.AsFloat := 1;

        DMSabit.ParaBirimiIBQ.Append;
        DMSabit.ParaBirimiIBQPARABIRIMI.AsString := 'Amerikan Dolarý';
        DMSabit.ParaBirimiIBQFORMAT.AsString := '#,###,#0';
        DMSabit.ParaBirimiIBQKISAADI.AsString := 'USD';
        DMSabit.ParaBirimiIBQKUR.AsFloat := 1600000;

        DMSabit.ParaBirimiIBQ.Append;
        DMSabit.ParaBirimiIBQPARABIRIMI.AsString := 'Avrupa Para Birimi';
        DMSabit.ParaBirimiIBQFORMAT.AsString := '#,###,#0';
        DMSabit.ParaBirimiIBQKISAADI.AsString := 'EURO';
        DMSabit.ParaBirimiIBQKUR.AsFloat := 1500000;
        DMSabit.ParaBirimiIBQ.Post;
        end else ShowMessage('Para Birimleri Zaten Eklenmiþ...');
end;

procedure TFParaBirim.GroupBox3Exit(Sender: TObject);
begin
        if DMSabit.DovizKurIBQ.Modified = true then
                DMSabit.DovizKurIBQ.ApplyUpdates;
end;

procedure TFParaBirim.GroupBox1Exit(Sender: TObject);
begin
        if DMSabit.ParaBirimiIBQ.Modified = true then
                DMSabit.ParaBirimiIBQ.ApplyUpdates;
end;

procedure TFParaBirim.BitBtn5Click(Sender: TObject);
var kur : TStringList;
begin
        if UserOnline then
        begin
                kur:=tstringlist.create;
                if not download(tcmburl,'kur.txt') then
                begin
                        Application.MessageBox('Ýnternetten Kur bilgileri alýnamadý ,Lütfen internet baglantýnýz kontrol edin ! '+#13+'Sorun devam ederse online bilgisayarla temasa geçiniz.','Kur bilgileri indirilemedi');
                        exit;
                end;

                DMSabit.ParaBirimiIBQ.First;
                DMSabit.ParaBirimiIBQ.Next;

                repeat
                        kur:=getval('kur.txt',pchar(DMSabit.ParaBirimiIBQKISAADI.value));
                        if kur.Count<3 then begin  ShowMessage(DMSabit.ParaBirimiIBQPARABIRIMI.value + ' kuru okunamadý ...'); exit;end;

                        DMSabit.DovizKurIBQ.First;

                        if DMSabit.DovizKurIBQTARIH.Value <> strtodatetime(kur[1]+' '+kur[2]) then
                        begin
                               // varsayýlan kur
                               if Application.MessageBox(pchar('Varsayýlan ' + DMSabit.ParaBirimiIBQPARABIRIMI.value + ' otomatik hesaplamamý istermisiniz ?  '),pchar('Varsayýlan Kuru deðiþtir '),mb_yesno)=mryes then
                               begin
                                       DMSabit.ParaBirimiIBQ.Edit;
                                       DMSabit.ParaBirimiIBQKUR.Value:=round((strtofloat(kur[6])+strtofloat(kur[5])+strtofloat(kur[4])+strtofloat(kur[3])) / 4);
                               end;
                               DMSabit.DovizKurIBQ.Append;
                               DMSabit.DovizKurIBQTARIH.Value      := strtodatetime(kur[1]+' '+kur[2]);

                               DMSabit.DovizKurIBQFIRMAKUR.Value   := DMSabit.ParaBirimiIBQKUR.Value;

                               DMSabit.DovizKurIBQSERALIS.Value    := strtofloat(kur[4]);
                               DMSabit.DovizKurIBQSERSATIS.Value   := strtofloat(kur[3]);

                               DMSabit.DovizKurIBQMBALIS.Value     := strtofloat(kur[6]);
                               DMSabit.DovizKurIBQMBSATIS.Value    := strtofloat(kur[5]);
                               DMSabit.DovizKurIBQEFEALIS.Value    := strtofloat(kur[4]);
                               DMSabit.DovizKurIBQEFESATIS.Value   := strtofloat(kur[3]);
                               DMSabit.DovizKurIBQ.post;
                        end else ShowMessage('Kurlarda bir deðiþiklik yok !');
                        DMSabit.ParaBirimiIBQ.Next;
                until DMSabit.ParaBirimiIBQ.Eof;
        end else Showmessage('internet baglantýnýz yok');
end;

procedure TFParaBirim.OnlineButton1Click(Sender: TObject);
begin
        DMSabit.ParaBirimiIBQ.Append;
end;

end.
