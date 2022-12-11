unit frmDocUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, ELDsgnr, ExtCtrls, QuickRpt, QRCtrls, ELControls, Menus,
  ELUtils, StdCtrls, Grids, DBGrids, ComCtrls, Barcode, ToolWin, ImgList, StdActns,
  ActnList, Buttons, OnlineQRBarcode, QOnlineDBQRLabel, QOnlineQRLabel,IBCustomDataSet,
  IBQuery,ExtDlgs;

type
  TNotifyQuickRep = class(TQuickRep)
  private
    FOnNotification: TELDesignerOnNotificationEvent;
  protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
  public
    property OnNotification: TELDesignerOnNotificationEvent read FOnNotification write FOnNotification;
  end;

  TfrmDoc = class(TForm)
    ELDesignPanel1: TELDesignPanel;
    ELDesigner1: TELDesigner;
    ActionList1: TActionList;
    actNew: TAction;
    actPreview: TAction;
    actPropsView: TAction;
    actOpen: TAction;
    actSave: TAction;
    actSaveAs: TAction;
    actCloseAll: TAction;
    actClose: TAction;
    actSaveSaveAll: TAction;
    actCopy: TAction;
    actCut: TAction;
    actPaste: TAction;
    Sil: TAction;
    actDelete2: TAction;
    actLock: TAction;
    actUnlock: TAction;
    actUnlockAll: TAction;
    actSelectAll: TAction;
    actAlignToGrid: TAction;
    actBringToFront: TAction;
    actSendToBack: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    actEnabled: TAction;
    actEnableAll: TAction;
    actChangeData: TAction;
    actZoom100: TAction;
    actPrint: TAction;
    actALLeft: TAction;
    actALRight: TAction;
    actALTop: TAction;
    actALBottom: TAction;
    actALHSpace: TAction;
    actALVSpace: TAction;
    actALHCenter: TAction;
    actALVCenter: TAction;
    actALHCenterWindow: TAction;
    actALVCenterWindow: TAction;
    actRepProps: TAction;
    LockAll: TAction;
    ImageList1: TImageList;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton21: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolBar3: TToolBar;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    PopupMenu1: TPopupMenu;
    Enable1: TMenuItem;
    N7: TMenuItem;
    Cut2: TMenuItem;
    Copy2: TMenuItem;
    Paste2: TMenuItem;
    Delete2: TMenuItem;
    N2: TMenuItem;
    AlignToGrid1: TMenuItem;
    Bringtofront1: TMenuItem;
    Sendtoback2: TMenuItem;
    N6: TMenuItem;
    Lock2: TMenuItem;
    Unlock1: TMenuItem;
    mnKilitle2: TMenuItem;
    mnKaldr1: TMenuItem;
    N9: TMenuItem;
    nzile1: TMenuItem;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    N1: TMenuItem;
    DataAyarla1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Edit1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ELDesigner1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure ELDesigner1ChangeSelection(Sender: TObject);
    procedure ELDesigner1Modified(Sender: TObject);
    procedure ELDesigner1ControlHint(Sender: TObject; AControl: TControl;
      var AHint: String);
    procedure FormDestroy(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actCutExecute(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure SilExecute(Sender: TObject);
    procedure actAlignToGridExecute(Sender: TObject);
    procedure actPasteExecute(Sender: TObject);
    procedure actBringToFrontExecute(Sender: TObject);
    procedure actSendToBackExecute(Sender: TObject);
    procedure actLockExecute(Sender: TObject);
    procedure actUnlockExecute(Sender: TObject);
    procedure actPropsViewExecute(Sender: TObject);
    procedure actALLeftExecute(Sender: TObject);
    procedure actCutUpdate(Sender: TObject);
    procedure actPasteUpdate(Sender: TObject);
    procedure actEnabledExecute(Sender: TObject);
    procedure LockAllExecute(Sender: TObject);
    procedure actUnlockAllExecute(Sender: TObject);
    procedure actRepPropsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ELDesigner1ControlInserted(Sender: TObject);
    procedure ELDesigner1ControlInserting(Sender: TObject;
      var AControlClass: TControlClass);
    procedure DataAyarla1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ELDesigner1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSaveUpdate(Sender: TObject);
    procedure ELDesigner1DblClick(Sender: TObject);
  private
    { Private declarations }
    FDataSet: TDataSet;
    FReport: TNotifyQuickRep;
    FFileName: string;
    FModified: Boolean;
    procedure SetDataSet(const Value: TDataSet);
    procedure AdjustChangeSelection;
    procedure LoadFromFile(AFileName: string);
    procedure SaveToFile(AFileName: string);
    procedure ControlInserting(var AControlClass: TControlClass);
    procedure ControlInserted;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateDocument(AOwner: TComponent; AFileName: string);
    procedure Save;
    procedure SaveAs(AFileName: string);
    procedure Modify;
    property Report: TNotifyQuickRep read FReport;
    property Designer: TELDesigner read ELDesigner1;
    property FileName: string read FFileName;
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property Modified: Boolean read FModified;
  end;

var
  frmDoc: TfrmDoc;
  FormWasClosed: Boolean;
  LControl: TControl;
  
implementation

uses frmPropsUnit, dlgReportPropsUnit, Evraklar, DataModul, FinansDM,
  RaporDaMo, SabitDaMo, StokDaMo,IslemDM, Rapor2;

{$R *.dfm}

{ TForm3 }

var
  DocNum: Integer = 1;
  Signature: packed array[0..3] of Char = ('O', 'N', 'L', 'R');
  Cop: packed array[0..20] of Char = (#67,#79,#68,#69,#68,#32,#66,#89,#32,#83,#69,#82,#75,#65,#78,#32,#71,#221,#78,#69,#186);

procedure TfrmDoc.SetDataSet(const Value: TDataSet);
begin
  if FDataSet <> nil then FDataSet.Free;
  FDataSet := Value;
  if FReport.DataSet = nil then
  FReport.DataSet := Value;
end;

procedure TfrmDoc.ControlInserted;
begin
  SpeedButton1.Down := True;
end;

procedure TfrmDoc.ControlInserting(var AControlClass: TControlClass);
begin
  if SpeedButton10.Down then
    AControlClass := TQRBand
  else if SpeedButton2.Down then
    AControlClass := TQRLabel
  else if SpeedButton3.Down then
    AControlClass := TQRDBText
  else if SpeedButton5.Down then
    AControlClass := TQRExpr
  else if SpeedButton6.Down then
    AControlClass := TQRSysData
  else if SpeedButton7.Down then
    AControlClass := TQRMemo
  else if SpeedButton8.Down then
    AControlClass := TQRExprMemo
  else if SpeedButton4.Down then
    AControlClass := TQRImage
  else if SpeedButton11.Down then
    AControlClass := TQRDBImage
  else if SpeedButton12.Down then
    AControlClass := TOnlineQRBarcode
  else if SpeedButton9.Down then
    AControlClass := TQRShape
  else if SpeedButton13.Down then
    AControlClass := TQRDBRichText
  else if SpeedButton14.Down then
    AControlClass := TOnlineQRLabel
  else if SpeedButton15.Down then
    AControlClass := TOnlineDBQRLabel;
end;

procedure TfrmDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if Modified then
    case MessageDlg('"' + Caption + '" Dosyasýný Kaydetmek Ýstiyormusunuz ?', mtConfirmation,
      [mbYes, mbNo, mbCancel], 0) of
      mrYes:
        if FileName <> '' then
          Save;
      mrCancel: Action := caNone;
    end;
  FormWasClosed := Action = caFree;
  FModified := False;
  if frmProps.Showing then
        frmProps.Close;
end;

procedure TfrmDoc.ELDesigner1KeyPress(Sender: TObject; var Key: Char);

  function _SetString(var AStr: string): Boolean;
  begin
    Result := False;
    if Ord(Key) >= 32 then
    begin
      AStr := AStr + Key;
      Result := True;
    end
    else if Ord(Key) = VK_BACK then
    begin
      AStr := Copy(AStr, 1, Length(AStr) - 1);
      Result := True;
    end;
  end;

var
  LC: TControl;
  LS: string;

begin
if Key = #27 then
begin
        Key := #0;
        Panel2.Visible := false;
        edit1.Text := '';
end;
  if ELDesigner1.SelectedControls.Count = 1 then
    LC := ELDesigner1.SelectedControls.DefaultControl
  else
    LC := nil;
  if LC <> nil then
  begin
    if LC.ClassType = TQRLabel then
    begin
      LS := TQRLabel(LC).Caption;
      if _SetString(LS) then
      begin
        TQRLabel(LC).Caption := LS;
        ELDesigner1.Modified;
      end;
    end;
    end;
  end;

procedure TfrmDoc.FormActivate(Sender: TObject);
begin
  frmProps.Doc := Self;
  AdjustChangeSelection;
end;

procedure TfrmDoc.AdjustChangeSelection;
var
  LObjects: TList;
begin
  if frmProps.Doc = Self then
  begin
    LObjects := TList.Create;
    try
      ELDesigner1.SelectedControls.GetCotnrols(LObjects);
      frmProps.PropInsp.AssignObjects(LObjects);
    finally
      LObjects.Free;
    end;
  end;
end;

procedure TfrmDoc.ELDesigner1ChangeSelection(Sender: TObject);
begin
  AdjustChangeSelection;
end;

procedure TfrmDoc.ELDesigner1Modified(Sender: TObject);
begin
  if frmProps.Doc = Self then frmProps.PropInsp.Modified;
  Modify;
end;

procedure TNotifyQuickRep.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if Assigned(OnNotification) then OnNotification(Self, AComponent, Operation);
end;

procedure TfrmDoc.ELDesigner1ControlHint(Sender: TObject;
  AControl: TControl; var AHint: String);
var
  LI: Integer;
begin
  if AControl is TQRMemo then
  begin
    AHint := AHint + #13 + 'Metin :';
    for LI := 0 to TQRMemo(AControl).Lines.Count - 1 do
      AHint := AHint + #13 + '  ' + TQRMemo(AControl).Lines[LI];
  end else if AControl is TQRExprMemo then
  begin
    AHint := AHint + #13 + 'Metin :';
    for LI := 0 to TQRExprMemo(AControl).Lines.Count - 1 do
      AHint := AHint + #13 + '  ' + TQRExprMemo(AControl).Lines[LI];
  end else if AControl is TQRLabel then
  begin
    AHint := AHint + #13 + 'Baþlýk : ' + TQRLabel(AControl).Caption;
  end else if AControl is TQRDBText then
  begin
    AHint := AHint + #13 + 'Data Sütun: ' + TQRDBText(AControl).DataField;
  end else if AControl is TQRExpr then
  begin
    AHint := AHint + #13 + 'Ýþlem : ' + TQRExpr(AControl).Expression;
  end else if AControl is TQRDBImage then
  begin
    AHint := AHint + #13 + 'Sütun: ' + TQRDBImage(AControl).DataField;
  end else if AControl is TNotifyQuickRep then
  begin

    AHint := AHint + #13 + 'DataSet: ' + TNotifyQuickRep(AControl).DataSet.Name
  end;
end;

constructor TfrmDoc.CreateDocument(AOwner: TComponent; AFileName: string);
begin
  Create(AOwner);
  LoadFromFile(AFileNAme);
  FFileName := AFileNAme;
  Caption := ExtractFileName(AFileName);
  Dec(DocNum);
end;

procedure TfrmDoc.Save;
begin
  SaveToFile(FFileName);
  FModified := False;
end;

procedure TfrmDoc.SaveAs(AFileName: string);
begin
  SaveToFile(AFileName);
  FFileName := AFileName;
  Caption := ExtractFileName(AFileName);
  FModified := False;
end;

procedure TfrmDoc.LoadFromFile(AFileName: string);
var
  LS: TFileStream;
  LI: Longint;
begin
  LS := TFileStream.Create(AFileName, fmOpenRead);
  try
    LS.Read(LI, SizeOf(Longint));
    if LI <> Longint(Signature) then
      raise Exception.Create('Bu Dosya "' + ExtractFileName(AFileName) +
        '" rapor dosyasý deðil..');

    LS.ReadComponent(FReport);
    FReport.Left := 0;
    FReport.Top := 0;
    FDataSet := FReport.DataSet;
  finally
    LS.Free;
  end;
end;

procedure TfrmDoc.SaveToFile(AFileName: string);
var
  LS: TFileStream;
  LI: Longint;
begin
  LS := TFileStream.Create(AFileName, fmCreate);
  try
    LI := Longint(Signature);
    LS.Write(LI, SizeOf(Longint));
    LS.WriteComponent(FReport);
    LS.WriteBuffer(Cop,SizeOf(Cop));
  finally
    LS.Free;
  end;
end;

constructor TfrmDoc.Create(AOwner: TComponent);
begin
  inherited;
  FReport := TNotifyQuickRep.Create(nil);
  FReport.Name := 'Report';
  FReport.PrintIfEmpty := True;
  ELDesigner1.DesignControl := FReport;
  ELDesigner1.Active := True;
  Caption := 'Rapor' + IntToStr(DocNum);
  Inc(DocNum);
end;

procedure TfrmDoc.Modify;
begin
  FModified := True;
end;

procedure TfrmDoc.FormDestroy(Sender: TObject);
begin
  ELDesigner1.SelectedControls.Clear;
  ELDesigner1.Active := False;
  FReport.Free;
  if frmProps.Doc = Self then frmProps.Doc := nil;
end;

procedure TfrmDoc.actPreviewExecute(Sender: TObject);
var
  LV: Boolean;
begin
  LV := frmProps.Visible;
  frmProps.Visible := False;
  try
    if DataSet <> nil then
        DataSet.Open;
    Report.PreviewModal;
  finally
    frmProps.Visible := LV;
  end;
end;

procedure TfrmDoc.actSaveExecute(Sender: TObject);
begin
    Save;
end;

procedure TfrmDoc.actPrintExecute(Sender: TObject);
var
  LV: Boolean;
begin
if DataSet <> nil then
begin
  LV := frmProps.Visible;
  frmProps.Visible := False;
  try
    DataSet.Open;
    Report.PrinterSetup;
  finally
    frmProps.Visible := LV;
  end;
end else ShowMessage('Raporun Datasý Ayarlanmamýþ...');
end;

procedure TfrmDoc.actCutExecute(Sender: TObject);
begin
  Designer.Cut;
end;

procedure TfrmDoc.actCopyExecute(Sender: TObject);
begin
  Designer.Copy;
end;

procedure TfrmDoc.SilExecute(Sender: TObject);
begin
  Designer.DeleteSelectedControls;
end;

procedure TfrmDoc.actAlignToGridExecute(Sender: TObject);
begin
  Designer.SelectedControls.AlignToGrid;
end;

procedure TfrmDoc.actPasteExecute(Sender: TObject);
begin
  Designer.Paste;
end;

procedure TfrmDoc.actBringToFrontExecute(Sender: TObject);
begin
  Designer.SelectedControls.BringToFront;
end;

procedure TfrmDoc.actSendToBackExecute(Sender: TObject);
begin
  Designer.SelectedControls.SendToBack;
end;

procedure TfrmDoc.actLockExecute(Sender: TObject);
begin
  Designer.SelectedControls.Lock(
    [lmNoResize, lmNoMove, lmNoDelete]);
end;

procedure TfrmDoc.actUnlockExecute(Sender: TObject);
begin
  Designer.SelectedControls.Lock([]);
end;

procedure TfrmDoc.actPropsViewExecute(Sender: TObject);
begin
  frmProps.Visible := not frmProps.Visible;
end;

procedure TfrmDoc.actALLeftExecute(Sender: TObject);
var
  LHorzAlignType, LVertAlignType: TELDesignerAlignType;
begin
  LHorzAlignType := atNoChanges;
  LVertAlignType := atNoChanges;
  case TAction(Sender).Tag of
    0: LHorzAlignType := atLeftTop;
    1: LHorzAlignType := atRightBottom;
    2: LVertAlignType := atLeftTop;
    3: LVertAlignType := atRightBottom;
    4: LHorzAlignType := atSpaceEqually;
    5: LVertAlignType := atSpaceEqually;
    6: LHorzAlignType := atCenter;
    7: LVertAlignType := atCenter;
    8: LHorzAlignType := atCenterInWindow;
    9: LVertAlignType := atCenterInWindow;
  end;
  Designer.SelectedControls.Align(LHorzAlignType, LVertAlignType);
end;

procedure TfrmDoc.actCutUpdate(Sender: TObject);
begin
        actCut.Enabled := Designer.CanCut;
end;

procedure TfrmDoc.actPasteUpdate(Sender: TObject);
begin
        actPaste.Enabled := Designer.CanPaste;
end;

procedure TfrmDoc.actEnabledExecute(Sender: TObject);
begin
  Designer.SelectedControls.DefaultControl.Enabled :=
    not Designer.SelectedControls.DefaultControl.Enabled;
  Designer.Modified;
end;

procedure TfrmDoc.LockAllExecute(Sender: TObject);
begin
  Designer.LockAll([lmNoResize, lmNoMove, lmNoDelete]);
end;

procedure TfrmDoc.actUnlockAllExecute(Sender: TObject);
begin
  Designer.LockAll([]);
end;

procedure TfrmDoc.actRepPropsExecute(Sender: TObject);
begin
  if dlgReportProps.Execute(Report) then
    Designer.Modified;
end;

procedure TfrmDoc.FormCreate(Sender: TObject);
var
        i: integer;
begin
  if frmProps.Showing = false then
        frmProps.Show;
  for i := 0 to CariDM.ComponentCount - 1 do
  begin
        if (CariDM.Components[i] is TIBQuery) or (CariDM.Components[i] is TDataSource) then
                Edit1.Items.Add('CariDM.'+CariDM.Components[i].Name);
  end;

  for i := 0 to SabitDM.ComponentCount - 1 do
  begin
        if (SabitDM.Components[i] is TIBQuery) or (SabitDM.Components[i] is TDataSource) then
                Edit1.Items.Add('SabitDM.'+SabitDM.Components[i].Name);
  end;

  for i := 0 to FinansDataM.ComponentCount - 1 do
  begin
        if (FinansDataM.Components[i] is TIBQuery) or (FinansDataM.Components[i] is TDataSource) then
                Edit1.Items.Add('FinansDataM.'+FinansDataM.Components[i].Name);
  end;

  for i := 0 to IslemDataM.ComponentCount - 1 do
  begin
        if (IslemDataM.Components[i] is TIBQuery) or (IslemDataM.Components[i] is TDataSource) then
                Edit1.Items.Add('IslemDataM.'+IslemDataM.Components[i].Name);
  end;

  for i := 0 to Rapor2DM.ComponentCount - 1 do
  begin
        if (Rapor2DM.Components[i] is TIBQuery) or (Rapor2DM.Components[i] is TDataSource) then
                Edit1.Items.Add('Rapor2DM.'+Rapor2DM.Components[i].Name);
  end;

  for i := 0 to RaporDM.ComponentCount - 1 do
  begin
        if (RaporDM.Components[i] is TIBQuery) or (RaporDM.Components[i] is TDataSource) then
                Edit1.Items.Add('RaporDM.'+RaporDM.Components[i].Name);
  end;

  for i := 0 to StokDM.ComponentCount - 1 do
  begin
        if (StokDM.Components[i] is TIBQuery) or (StokDM.Components[i] is TDataSource) then
                Edit1.Items.Add('StokDM.'+StokDM.Components[i].Name);
  end;


end;

procedure TfrmDoc.ELDesigner1ControlInserted(Sender: TObject);
begin
        ControlInserted;
end;

procedure TfrmDoc.ELDesigner1ControlInserting(Sender: TObject;
  var AControlClass: TControlClass);
begin
        ControlInserting(AControlClass);
end;

procedure TfrmDoc.DataAyarla1Click(Sender: TObject);
begin
        Panel2.Visible := true;
        Edit1.SetFocus;
end;

procedure TfrmDoc.BitBtn1Click(Sender: TObject);
begin
                if ELDesigner1.SelectedControls.DefaultControl is TQRDBText then
                begin
                        if Pos('CariDM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(CariDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('FinansDataM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(FinansDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('RaporDM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(RaporDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('SabitDM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(SabitDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('StokDM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('Rapor2DM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(Rapor2DM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('IslemDataM',edit1.Text) <> 0 then
                                TQRDBText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(IslemDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                end else if ELDesigner1.SelectedControls.DefaultControl is TOnlineDBQRLabel then
                begin
                        if Pos('CariDM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(CariDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('FinansDataM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(FinansDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('Rapor2DM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(Rapor2DM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('RaporDM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(RaporDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('SabitDM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(SabitDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('StokDM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('IslemDataM',edit1.Text) <> 0 then
                                TOnlineDBQRLabel(ELDesigner1.SelectedControls.DefaultControl).DataSource := TDataSource(IslemDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                end else if ELDesigner1.SelectedControls.DefaultControl is TQRDBRichText then
                begin
                        if Pos('CariDM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(CariDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('FinansDataM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(FinansDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('RaporDM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(RaporDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('Rapor2DM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(Rapor2DM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('SabitDM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(SabitDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('StokDM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('IslemDataM',edit1.Text) <> 0 then
                                TQRDBRichText(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(IslemDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                end else if ELDesigner1.SelectedControls.DefaultControl is TQRDBImage then
                begin
                        if Pos('CariDM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(CariDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('FinansDataM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(FinansDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('RaporDM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(RaporDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('Rapor2DM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(Rapor2DM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('SabitDM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(SabitDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('StokDM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('IslemDataM',edit1.Text) <> 0 then
                                TQRDBImage(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(IslemDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                end else if ELDesigner1.SelectedControls.DefaultControl is TNotifyQuickRep then
                begin
                        if Pos('CariDM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(CariDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('FinansDataM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(FinansDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('RaporDM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(RaporDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('Rapor2DM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(Rapor2DM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('SabitDM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(SabitDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('StokDM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('IslemDataM',edit1.Text) <> 0 then
                                TNotifyQuickRep(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(IslemDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                        DataSet := TDataSet(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                end else if ELDesigner1.SelectedControls.DefaultControl is TOnlineQRBarcode then
                begin
                        if Pos('CariDM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(CariDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('FinansDataM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(FinansDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('RaporDM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(RaporDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('Rapor2DM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(Rapor2DM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('SabitDM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(SabitDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('StokDM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(StokDM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))))
                        else if Pos('IslemDataM',edit1.Text) <> 0 then
                                TOnlineQRBarcode(ELDesigner1.SelectedControls.DefaultControl).DataSet := TDataSet(IslemDataM.FindComponent(Copy(edit1.Text,Pos('.',edit1.Text)+1,length(edit1.Text))));
                end;
                FModified := true;
                frmProps.PropInsp.Refresh;
end;

procedure TfrmDoc.BitBtn2Click(Sender: TObject);
begin
        Panel2.Visible := false;
                edit1.Text := '';
end;

procedure TfrmDoc.ELDesigner1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (Shift = [ssCTRL]) and (Key = Ord('A')) then
                Designer.SelectedControls.SelectAll;
        if ((Shift = [ssCTRL]) and (Key = Ord('C'))) or ((Shift = [ssCTRL]) and (Key = VK_INSERT)) then
                  Designer.Copy
        else if ((Shift = [ssCTRL]) and (Key = Ord('V'))) or ((Shift = [ssShift]) and (Key = VK_INSERT)) then
                Designer.Paste
        else if ((Shift = [ssCTRL]) and (Key = Ord('X'))) or ((Shift = [ssCTRL]) and (Key = VK_DELETE)) then
                Designer.Cut;
        if (Shift = []) and (Key = VK_RETURN) and (frmProps.Showing = true) then
                frmProps.PropInsp.SetFocus;

end;

procedure TfrmDoc.actSaveUpdate(Sender: TObject);
begin
        actSave.Enabled := Modified;
end;

procedure TfrmDoc.ELDesigner1DblClick(Sender: TObject);
begin
        if ELDesigner1.SelectedControls.DefaultControl is TQRImage then
        begin
                if OpenPictureDialog1.Execute then
                begin
                        TQRImage(ELDesigner1.SelectedControls.DefaultControl).Picture.LoadFromFile(OpenPictureDialog1.FileName);
                        Modify;
                end;
        end else if ELDesigner1.SelectedControls.DefaultControl is TNotifyQuickRep then
        begin
                  if dlgReportProps.Execute(Report) then
                        Designer.Modified;
        end;
end;

initialization
  ForceCurrentDirectory := True;
  RegisterClasses([TQuickRep,TNotifyQuickRep, TQRBand, TQRLabel, TQRDBText, TQRExpr,
    TQRSysData, TQRMemo, TQRExprMemo, TQRShape,TQRImage,TQRDBImage,TOnlineQRBarcode,
    TQRDBRichText,TOnlineDBQRLabel,TOnlineQRLabel]);

end.
