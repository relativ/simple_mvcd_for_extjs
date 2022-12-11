{$I EXDBGRID.INC}

unit TechDBGridProp;

interface

uses
   SysUtils, Classes, Controls, Forms, Dialogs,
   DesignIntf, DesignEditors,
   StdCtrls, Buttons, Graphics, FileUtil,
   TechDBGrid;

type
   TTechDBGridControlsEditor = class(TPropertyEditor)
   public
      procedure Edit; override;
      function GetAttributes: TPropertyAttributes; override;
      function GetValue: string; override;
   end;

   TfmTechDBGridProp = class(TForm)
      GroupBoxFields: TGroupBox;
      lbFields: TListBox;
      GroupBoxSelected: TGroupBox;
      lbSelected: TListBox;
      sbAdd: TSpeedButton;
      sbDelete: TSpeedButton;
      LabelControl: TLabel;
      cbControl: TComboBox;
      btnOK: TButton;
      btnCancel: TButton;
      procedure FormCreate(Sender: TObject);
      procedure lbSelectedClick(Sender: TObject);
      procedure cbControlClick(Sender: TObject);
      procedure sbAddClick(Sender: TObject);
      procedure sbDeleteClick(Sender: TObject);
      procedure FormDestroy(Sender: TObject);
   private
      procedure SetControl(Name: string);
   public
      TechDBGridControls: TTechDBGridControls;
      Grid: TTechDBGrid;
      procedure Initialize;
   end;

type
   TFilenameProperty = class(TStringProperty)
   protected
      function GetFilter: string; virtual;
   public
      procedure Edit; override;
      function GetAttributes: TPropertyAttributes; override;
   end;

const
   lsFormCaption = 'Grid Kontrolu Hazýrla';
   lsCurrentFields = ' Geçerli Sütunlar ';
   lsSelectedFields = ' Seçili Sütun ';
   lsLabelControl = 'Kontrol :';
   lsBtnCancel = '&Ýptal';
   lsDataSourceNeeded = 'Edit edebilmek için bir DataSource gerekli.';
   lsDataSetNeeded = 'DataSource nin bir DataSet e baðlanmasý gerekli .';
   lsAlreadyAdded = 'Sütun "%s" zaten eklenmiþ.';
   lsDefaultFilter = 'Tüm Dosyalar (*.*)|*.*';

var
   fmTechDBGridProp: TfmTechDBGridProp;

implementation

{$R *.DFM}

procedure TTechDBGridControlsEditor.Edit;
var
   Dlg: TfmTechDBGridProp;
   CloseDataset: Boolean;
begin
   CloseDataset := False;

   if TTechDBGrid(GetComponent(0)).DataSource = nil then
      raise Exception.Create(lsDataSourceNeeded);

   if TTechDBGrid(GetComponent(0)).DataSource.DataSet = nil then
      raise Exception.Create(lsDataSetNeeded);

   if not TTechDBGrid(GetComponent(0)).DataSource.DataSet.Active then
      begin
         TTechDBGrid(GetComponent(0)).DataSource.DataSet.Open;
         CloseDataset := True;
      end;

   Dlg := TfmTechDBGridProp.Create(Application);
   try
      Dlg.TechDBGridControls.Assign(TTechDBGridControls(GetOrdValue));
      Dlg.Grid := TTechDBGrid(GetComponent(0));
      Dlg.Initialize;
      Dlg.Caption := lsFormCaption;
      Dlg.ShowModal;
      if Dlg.ModalResult = mrOk then
         begin
            TTechDBGridControls(GetOrdValue).Assign(Dlg.TechDBGridControls);
            Modified;
         end;
   finally
      Dlg.Free;
      if CloseDataset then
         begin
            TTechDBGrid(GetComponent(0)).DataSource.DataSet.Close;
         end;
   end;
end;

function TTechDBGridControlsEditor.GetAttributes: TPropertyAttributes;
begin
   Result := [paDialog, paReadOnly];
end;

function TTechDBGridControlsEditor.GetValue: string;
begin
   Result := '(' + GetPropType^.Name + ')';
end;

procedure TfmTechDBGridProp.FormCreate(Sender: TObject);
begin
   TechDBGridControls := TTechDBGridControls.Create(nil);
   GroupBoxFields.Caption := lsCurrentFields;
   GroupBoxSelected.Caption := lsSelectedFields;
   LabelControl.Caption := lsLabelControl;
   btnCancel.Caption := lsBtnCancel;
end;

procedure TfmTechDBGridProp.Initialize;
var
   i: Integer;
begin
   for i := 0 to Grid.Columns.Count - 1 do
      lbFields.Items.Add(Grid.Columns.Items[i].FieldName);

   for i := 0 to TechDBGridControls.Count - 1 do
      lbSelected.Items.Add(TechDBGridControls.Items[i].FieldName);

   for i := 0 to Grid.Owner.ComponentCount - 1 do
      if Grid.Owner.Components[i] is TWinControl then
         cbControl.Items.Add(Grid.Owner.Components[i].Name);

   lbSelectedClick(lbSelected);
end;

procedure TfmTechDBGridProp.SetControl(Name: string);
var
   i: Integer;
begin
   for i := 0 to cbControl.Items.Count - 1 do
      if CompareText(Name, cbControl.Items[i]) = 0 then
         begin
            cbControl.ItemIndex := i;
            Exit;
         end;
   cbControl.ItemIndex := -1;
end;

procedure TfmTechDBGridProp.lbSelectedClick(Sender: TObject);
begin
   if lbSelected.ItemIndex >= 0 then
      begin
         cbControl.Enabled := True;
         cbControl.Color := clWindow;
         SetControl(TechDBGridControls.Items[lbSelected.ItemIndex].ControlName);
      end
   else
      begin
         cbControl.Enabled := False;
         cbControl.Color := clBtnface;
      end;
end;

procedure TfmTechDBGridProp.cbControlClick(Sender: TObject);
begin
   if lbSelected.ItemIndex >= 0 then
      TechDBGridControls.Items[lbSelected.ItemIndex].ControlName := cbControl.Text;
end;

procedure TfmTechDBGridProp.sbAddClick(Sender: TObject);
begin
   if (lbFields.ItemIndex >= 0) then
      begin
         if (lbSelected.Items.Indexof(lbFields.Items[lbFields.ItemIndex]) < 0) then
            begin
               lbSelected.Items.Add(lbFields.Items[lbFields.ItemIndex]);

               with TechDBGridControls.Add do
                  FieldName := lbFields.Items[lbFields.ItemIndex];
            end
         else
            MessageDlg(Format(lsAlreadyAdded, [lbFields.Items[lbFields.ItemIndex]]), mtWarning, [mbOK], 0);
      end;
end;

procedure TfmTechDBGridProp.sbDeleteClick(Sender: TObject);
begin
   if lbSelected.ItemIndex >= 0 then
      begin
         TechDBGridControls.Items[lbSelected.ItemIndex].Free;
         lbSelected.Items.Delete(lbSelected.ItemIndex);
      end;
end;

procedure TfmTechDBGridProp.FormDestroy(Sender: TObject);
begin
   TechDBGridControls.Free;
end;

function TFilenameProperty.GetFilter: string;
begin
   Result := lsDefaultFilter;
end;

procedure TFilenameProperty.Edit;
var
   FileOpen: TOpenDialog;
begin
   FileOpen := TOpenDialog.Create(Application);
   try
      FileOpen.Filename := GetValue;
      FileOpen.InitialDir := ExtractFilePath(FileOpen.Filename);

      if (ExtractFileName(FileOpen.Filename) = '') or not ValidFileName(ExtractFileName(FileOpen.Filename)) then
         FileOpen.Filename := '';

      FileOpen.Filter := GetFilter;
      FileOpen.Options := FileOpen.Options + [ofHideReadOnly];

      if FileOpen.Execute then
         SetValue(FileOpen.Filename);
   finally
      FileOpen.Free;
   end;
end;

function TFilenameProperty.GetAttributes: TPropertyAttributes;
begin
   Result := [paDialog, paRevertable];
end;

end.

