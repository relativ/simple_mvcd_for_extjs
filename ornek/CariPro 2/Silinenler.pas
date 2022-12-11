unit Silinenler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OnlineCustomControl, OnlineButton, StdCtrls, ExtCtrls,
  Grids, DBGrids, OnlineDBGrid, dfsSplitter;

type
  TFSilinenler = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    GroupBox12: TGroupBox;
    BitBtn25: TOnlineButton;
    BLastPage: TOnlineButton;
    ButtonNext: TOnlineButton;
    ButtonPrevious: TOnlineButton;
    BFirstPage: TOnlineButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    TabSheet4: TTabSheet;
    GroupBox6: TGroupBox;
    Panel2: TPanel;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    OnlineDBGrid1: TOnlineDBGrid;
    OnlineDBGrid2: TOnlineDBGrid;
    dfsSplitter1: TdfsSplitter;
    OnlineDBGrid3: TOnlineDBGrid;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox1: TGroupBox;
    dfsSplitter2: TdfsSplitter;
    OnlineDBGrid4: TOnlineDBGrid;
    OnlineDBGrid5: TOnlineDBGrid;
    OnlineDBGrid6: TOnlineDBGrid;
    GroupBox4: TGroupBox;
    OnlineDBGrid7: TOnlineDBGrid;
    OnlineButton1: TOnlineButton;
    OnlineButton2: TOnlineButton;
    OnlineButton3: TOnlineButton;
    GroupBox5: TGroupBox;
    OnlineDBGrid8: TOnlineDBGrid;
    GroupBox7: TGroupBox;
    OnlineDBGrid9: TOnlineDBGrid;
    GroupBox8: TGroupBox;
    OnlineDBGrid10: TOnlineDBGrid;
    GroupBox9: TGroupBox;
    OnlineDBGrid11: TOnlineDBGrid;
    GroupBox10: TGroupBox;
    OnlineDBGrid12: TOnlineDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn25Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure OnlineButton1Click(Sender: TObject);
    procedure OnlineButton3Click(Sender: TObject);
    procedure OnlineButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSilinenler: TFSilinenler;

implementation
Uses SilinenlerDM, ProcedureDM ;

{$R *.dfm}

procedure TFSilinenler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DMSilinenler.KasaHareketIBQ.Close;
        DMSilinenler.AlisSatisIBQ.Close;
        DMSilinenler.AlisBodroIBQ.Close;
        DMSilinenler.StokIBQ.Open;
        DMSilinenler.StokBodroIBQ.Close;;
        DMSilinenler.BankaIBQ.Close;
        DMSilinenler.CariIBQ.Close;
        Action := caFree;
end;

procedure TFSilinenler.BitBtn25Click(Sender: TObject);
begin
        Close;
end;

procedure TFSilinenler.TabSheet2Show(Sender: TObject);
begin
        if DMSilinenler.KasaHareketIBQ.Active = false Then  DMSilinenler.KasaHareketIBQ.Open;
end;

procedure TFSilinenler.TabSheet1Show(Sender: TObject);
begin
        if DMSilinenler.AlisSatisIBQ.Active = False Then
        Begin
                DMSilinenler.AlisSatisIBQ.Open;
                DMSilinenler.AlisBodroIBQ.Open;
        end;
end;

procedure TFSilinenler.TabSheet8Show(Sender: TObject);
begin
        if DMSilinenler.CariIBQ.Active = false Then  DMSilinenler.CariIBQ.Open;
end;

procedure TFSilinenler.TabSheet4Show(Sender: TObject);
begin
        if DMSilinenler.BankaIBQ.Active = false Then  DMSilinenler.BankaIBQ.Open;
end;

procedure TFSilinenler.TabSheet3Show(Sender: TObject);
begin
        if DMSilinenler.StokIBQ.Active = False Then
        Begin
                DMSilinenler.StokIBQ.Open;
                DMSilinenler.StokBodroIBQ.Open;
        end;
end;

procedure TFSilinenler.OnlineButton1Click(Sender: TObject);
begin
        DMSilinenler.CariIBQ.Close;
        DMSilinenler.KasaHareketIBQ.Close;
        DMSilinenler.BankaIBQ.Close;
        DMSilinenler.AlisSatisIBQ.Close;
        DMSilinenler.AlisBodroIBQ.Close;
        DMSilinenler.StokIBQ.Open;
        DMSilinenler.StokBodroIBQ.Close;
        DMSilinenler.CekIBQ.Close;
        DMSilinenler.SenetIBQ.Close;
        DMSilinenler.TeklifIBQ.Close;
        DMSilinenler.SiparisIBQ.Close;
        DMSilinenler.IrsaliyeIBQ.Close;


        DMSilinenler.CariIBQ.Open;
        DMSilinenler.KasaHareketIBQ.Open;
        DMSilinenler.BankaIBQ.Open;
        DMSilinenler.AlisSatisIBQ.Open;
        DMSilinenler.AlisBodroIBQ.Open;
        DMSilinenler.StokIBQ.Open;
        DMSilinenler.StokBodroIBQ.Open;
        DMSilinenler.CekIBQ.Open;
        DMSilinenler.SenetIBQ.Open;
        DMSilinenler.TeklifIBQ.Open;
        DMSilinenler.SiparisIBQ.Open;
        DMSilinenler.IrsaliyeIBQ.Open;
end;

procedure TFSilinenler.OnlineButton3Click(Sender: TObject);
begin
   case PageControl1.TabIndex of
        0: begin
                if DMSilinenler.CariIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.CariIBQ.Delete;
                end;
        end;
        1: begin
                if DMSilinenler.AlisSatisIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.AlisSatisIBQ.Delete;
                end;
        end;
        2: begin
                if DMSilinenler.KasaHareketIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.KasaHareketIBQ.Delete;
                end;
        end;
        3: begin
                if DMSilinenler.BankaIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.BankaIBQ.Delete;
                end;
        end;
        4: begin
                if DMSilinenler.CekIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.CekIBQ.Delete;
                end;
        end;
        5: begin
                if DMSilinenler.SenetIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.SenetIBQ.Delete;
                end;
        end;
        6: begin
                if DMSilinenler.StokIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.StokIBQ.Delete;
                end;
        end;
        7: begin
                if DMSilinenler.IrsaliyeIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.IrsaliyeIBQ.Delete;
                end;
        end;
        8: begin
                if DMSilinenler.TeklifIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.TeklifIBQ.Delete;
                end;
        end;
        9: begin
                if DMSilinenler.SiparisIBQ.RecordCount > 0 then
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMSilinenler.SiparisIBQ.Delete;
                end;
        end;
   end;
end;

procedure TFSilinenler.OnlineButton2Click(Sender: TObject);
begin
   case PageControl1.TabIndex of
        0: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'CARIISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        1: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'ALISSATISISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        2: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'KASAISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        3: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'BANKAISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        4: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'CEKISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        5: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'SENETISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        6: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'STOKISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        7: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'IRSALIYEISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        8: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'TEKLIFISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
        9: begin
                if MessageBox(handle,'Bu iþlemi silmek istediðinizden emin misiniz?',
                                '          Uyarý Mesajý', mb_YesNo+mb_DefButton2)=6 Then
                begin
                        DMProcedure.KayitSilProc.ParamByName('ISLEMTUR_IN').AsString := 'SIPARISISLEM';
                        DMProcedure.KayitSilProc.Prepare;
                        DMProcedure.KayitSilProc.ExecProc;
                end;
        end;
   end;
end;

end.
