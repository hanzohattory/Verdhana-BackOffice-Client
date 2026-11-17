unit FormGridReportEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxInplaceContainer, cxVGrid, cxOI, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxSplitter, Vcl.ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, Vcl.ActnList,
  NDatasetAction, dxNavBar, dxNavBarBase, dxNavBarCollns, cxPropertiesStore,
  cxButtons, JvComponentBase, JvAppStorage, JvAppXMLStorage, dxLayoutContainer,
  dxLayoutControl, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, dxBar, Vcl.ImgList, FrameGridReport, cxButtonEdit, cxMemo;

type
  TfrmGridReportEditor = class(TfrmBasic)
    aclReport: TActionList;
    actSetDataSetProperty: TNAction;
    actSetGridProperty: TNAction;
    actFetchDataSet: TNAction;
    actSetDatasetFieldsProperty: TNAction;
    nbReportDesigner: TdxNavBar;
    nbObjectInspector: TdxNavBarGroup;
    nbObjectInspectorControl: TdxNavBarGroupControl;
    cxRTTIInspector: TcxRTTIInspector;
    actCustomizeColumn: TNAction;
    actSetGridColumnProperty: TNAction;
    actFilterCustomization: TNAction;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsReportGrid: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton3: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    actSaveReport: TNAction;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuFile: TdxBarSubItem;
    mnuEdit: TdxBarSubItem;
    btnDataSet: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actFilterLayout: TNAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    actNewReport: TNAction;
    actDuplicateReport: TNAction;
    actExit: TNAction;
    NAction4: TNAction;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    frGridReport: TfrGridReport;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actSetDataSetPropertyExecute(Sender: TObject);
    procedure actSetGridPropertyExecute(Sender: TObject);
    procedure actFetchDataSetExecute(Sender: TObject);
    procedure actSetDatasetFieldsPropertyExecute(Sender: TObject);
    procedure actCustomizeColumnExecute(Sender: TObject);
    procedure actSetGridColumnPropertyExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actFilterCustomizationExecute(Sender: TObject);
    procedure actSaveReportExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure frGridReportactViewDataExecute(Sender: TObject);
    procedure actFilterLayoutExecute(Sender: TObject);
    procedure frGridReportcdsReportGridSQLChange(Sender: TField);
  private
    { Private declarations }
    FSelectedObjectEvent: TNotifyEvent;

    procedure ObjectSelected(Sender: TObject);
    procedure UpdateLabel(AObject: TComponent);
  public
    { Public declarations }
    procedure LoadReport;
  end;

  TcxGridColumnPropertiesProperty = class(TcxClassProperty)
  private
    function GetColumn: TcxGridColumn;
  protected
    function HasSubProperties: Boolean;
  public
    function GetAttributes: TcxPropertyAttributes; override;
    function GetValue: string; override;
    procedure SetValue(const Value: string); override;
    procedure GetValues(Proc: TGetStrProc); override;
    property Column: TcxGridColumn read GetColumn;
  end;

function CreateReport: Boolean;
function EditReport(AReportID: Integer): Boolean;

var
  frmGridReportEditor: TfrmGridReportEditor;

implementation

{$R *.dfm}

uses DataGlobal, FormBrowseData, FormRTTIPropertyEditor;

function CreateReport: Boolean;
begin
  Result := False;
  frmGridReportEditor := TfrmGridReportEditor.Create(Nil);
  Try
    with frmGridReportEditor do
    begin
      with frGridReport do
      begin
        cdsReportGrid.Close;
        cdsReportGrid.Params[0].AsInteger := -1;
        cdsReportGrid.Open;

        cdsReportGrid.Append;
      end;
      ShowModal;
    end;

    Result := True;
  Finally
    FreeAndNil(frmGridReportEditor);
  End;
end;

function EditReport(AReportID: Integer): Boolean;
begin
  Result := False;
  frmGridReportEditor := TfrmGridReportEditor.Create(Nil);
  Try
    with frmGridReportEditor do
    begin
      with frGridReport do
      begin
        cdsReportGrid.Close;
        cdsReportGrid.Params[0].AsInteger := AReportID;
        cdsReportGrid.Open;

        cdsReportGrid.Edit;
      end;
      LoadReport;
      ShowModal;
    end;

    Result := True;
  Finally
    FreeAndNil(frmGridReportEditor);
  End;
end;

{ TfrmGridReportEditor }

procedure TfrmGridReportEditor.actFilterCustomizationExecute(Sender: TObject);
begin
  inherited;
  frGridReport.lcFilter.Customization := True;
//  actCustomization.Checked := lcFilter.Customization;
end;

procedure TfrmGridReportEditor.actFilterLayoutExecute(Sender: TObject);
begin
  inherited;
  ObjectSelected(frGridReport.lcFilter);
end;

procedure TfrmGridReportEditor.actCustomizeColumnExecute(Sender: TObject);
begin
  inherited;
  frGridReport.gvwReport.Controller.Customization := True;
end;

procedure TfrmGridReportEditor.actExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmGridReportEditor.actFetchDataSetExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  Try
    with frGridReport do
    begin
      cdsSubject.Close;
      cdsSubject.Open;

      for i := 0 to cdsSubject.FieldCount - 1 do
      begin
        cdsSubject.Fields[i].Name := cdsSubject.Name + cdsSubject.Fields[i].FieldName;
      end;

      gvwReport.ClearItems;
      gvwReport.DataController.CreateAllItems;
    end;
  Except
    on E: Exception do
    begin
      dmGlobal.NewAlertMessage(E.Message, mtError);
    end;
  End;
end;

procedure TfrmGridReportEditor.actSaveReportExecute(Sender: TObject);
var
  LayoutStream, PropStream: TStream;
  i: Integer;
begin
  inherited;
  with frGridReport do
  begin
    if cdsReportGrid.State in [dsInsert] then
    begin
      cdsReportGridREPORT_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_R_GRIDREPORT');
    end;

    if cdsReportGrid.State in dsEditModes then
    begin
//      if cdsSubject.Active then
//        cdsSubject.Close;

//      for i := 0 to cdsSubject.FieldCount - 1 do
//      begin
//        cdsSubject.Fields[i].Name := cdsSubject.Name + cdsSubject.Fields[i].FieldName;
//        with PropStore.Components.Add do
//        begin
//          Component := cdsSubject.Fields[i];
//          Properties.Add('Alignment');
//          Properties.Add('DisplayFormat');
//          Properties.Add('DisplayLabel');
//          Properties.Add('EditMask');
//          Properties.Add('Name');
//          Properties.Add('Tag');
//          Properties.Add('Visible');
//        end;
//      end;

      for i := 0 to gvwReport.ColumnCount - 1 do
      begin
        with PropStore.Components.Add do
        begin
          Component := gvwReport.Columns[i];
          Properties.Add('AlternateCaption');
          Properties.Add('BestFitMaxWidth');
          Properties.Add('Caption');
          Properties.Add('DataBinding');
          Properties.Add('DateTimeGrouping');
          Properties.Add('FooterAlignmentHorz');
          Properties.Add('GroupIndex');
          Properties.Add('GroupSummaryAlignment');
          Properties.Add('HeaderAlignmentHorz');
          Properties.Add('HeaderAlignmentVert');
          Properties.Add('HeaderGlyph');
          Properties.Add('HeaderGlyphAlignmentHorz');
          Properties.Add('HeaderGlyphAlignmentVert');
          Properties.Add('HeaderHint');
          Properties.Add('HeaderImageIndex');
          Properties.Add('MinWidth');
          Properties.Add('Name');
          Properties.Add('Options');
          Properties.Add('Position');
          Properties.Add('Properties');
          Properties.Add('RepositoryItem');
          Properties.Add('SortIndex');
          Properties.Add('SortOrder');
          Properties.Add('Styles');
          Properties.Add('Summary');
          Properties.Add('Tag');
          Properties.Add('Visible');
          Properties.Add('VisibleForCustomization');
          Properties.Add('Width');
        end;
      end;

      cdsReportGridSQL.AsWideString := cdsSubject.CommandText;
      LayoutStream := cdsReportGrid.CreateBlobStream(cdsReportGridFILTER_CONFIG, bmReadWrite);
      PropStream := cdsReportGrid.CreateBlobStream(cdsReportGridREPORT_CONFIG, bmReadWrite);
      Try
        lcFilter.SaveToStream(LayoutStream);
        cdsReportGridFILTER_CONFIG.LoadFromStream(LayoutStream);
        PropStore.StorageStream := PropStream;
        PropStore.StoreTo();
        cdsReportGridREPORT_CONFIG.LoadFromStream(PropStream);
      Finally
        FreeAndNil(PropStream);
        FreeAndNil(LayoutStream);
      End;
      cdsReportGrid.Post;
    end;

    if cdsReportGrid.ApplyUpdates(0) = 0 then
    begin
      ShowMessage('Report save succesfully');
    end;
  end;
end;

procedure TfrmGridReportEditor.actSetDatasetFieldsPropertyExecute(
  Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to frGridReport.cdsSubject.FieldCount - 1 do
  begin
    frGridReport.cdsSubject.Fields[i].Name := frGridReport.cdsSubject.Name +
      frGridReport.cdsSubject.Fields[i].FieldName;
  end;

  GetDataSetFieldsEditor(frGridReport.cdsSubject, FSelectedObjectEvent).Show;
end;

procedure TfrmGridReportEditor.actSetDataSetPropertyExecute(Sender: TObject);
begin
  inherited;
  with frGridReport do
  begin
    if cdsSubject.Active then
      cdsSubject.Close;

    gvwReport.ClearItems;
    ObjectSelected(cdsSubject);
  end;
end;

procedure TfrmGridReportEditor.actSetGridColumnPropertyExecute(Sender: TObject);
begin
  inherited;
  GetGridColumnEditor(frGridReport.gvwReport, FSelectedObjectEvent).Show;
end;

procedure TfrmGridReportEditor.actSetGridPropertyExecute(Sender: TObject);
begin
  inherited;
  ObjectSelected(frGridReport.gvwReport);
end;

procedure TfrmGridReportEditor.FormCreate(Sender: TObject);
begin
  inherited;
  FSelectedObjectEvent := ObjectSelected;
  ObjectSelected(frGridReport.cdsSubject);

  with dmGlobal.IntDataLookup do
  begin
    cdsLuReportCategory.Close;
    cdsLuReportCategory.Open;

    if not cdsLuSales.Active then
      cdsLuSales.Open
    else
      cdsLuSales.Refresh;

    if not cdsLuAccount.Active then

  end;
end;

procedure TfrmGridReportEditor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AControl: TWinControl;
begin
  inherited;
  if (Key = VK_F3) then
  begin
    AControl := Screen.ActiveControl;
    if Supports(AControl, IcxInnerEditHelper) or Supports(AControl, IcxContainerInnerControl) then
    begin
      ObjectSelected(AControl.Owner);
    end
    else
    begin
      if AControl is TcxGridSite then
      begin
        ObjectSelected(AControl.Parent);
      end
      else
      begin
        ObjectSelected(AControl);
      end;
    end;
  end;
end;

procedure TfrmGridReportEditor.frGridReportactViewDataExecute(Sender: TObject);
begin
  inherited;
  frGridReport.FirstView := True;
  frGridReport.actViewDataExecute(Sender);
end;

procedure TfrmGridReportEditor.frGridReportcdsReportGridSQLChange(
  Sender: TField);
begin
  inherited;
  frGridReport.cdsSubject.CommandText := Sender.AsWideString;
end;

procedure TfrmGridReportEditor.LoadReport;
var
  LayoutStream, PropStream: TStream;
  i: Integer;
begin
  with frGridReport do
  begin
    cdsSubject.Close;
    cdsSubject.CommandText := cdsReportGridSQL.AsWideString;
    cdsSubject.Open;

    gvwReport.ClearItems;
    gvwReport.DataController.CreateAllItems;

    for i := 0 to cdsSubject.FieldCount - 1 do
    begin
      cdsSubject.Fields[i].Name := cdsSubject.Name + cdsSubject.Fields[i].FieldName;
//      with PropStore.Components.Add do
//      begin
//        Component := cdsSubject.Fields[i];
//        Properties.Add('Alignment');
//        Properties.Add('DisplayFormat');
//        Properties.Add('DisplayLabel');
//        Properties.Add('EditMask');
//        Properties.Add('Name');
//        Properties.Add('Tag');
//        Properties.Add('Visible');
//      end;

      if cdsSubject.Fields[i] is TIntegerField then
      begin
        TIntegerField(cdsSubject.Fields[i]).DisplayFormat := '#,##0';
      end
      else if cdsSubject.Fields[i] is TDateField then
      begin
        TDateField(cdsSubject.Fields[i]).DisplayFormat := 'dd MMM yyyy';
      end
      else if cdsSubject.Fields[i] is TTimeField then
      begin
        TTimeField(cdsSubject.Fields[i]).DisplayFormat := 'hh:nn:ss.zzz';
      end
      else if cdsSubject.Fields[i] is TDateTimeField then
      begin
        TDateTimeField(cdsSubject.Fields[i]).DisplayFormat := 'dd MMM yyyy hh:nn:ss.zzz';
      end
      else if cdsSubject.Fields[i] is TFloatField then
      begin
        TFloatField(cdsSubject.Fields[i]).DisplayFormat := '#,##0.##########';
      end
      else if cdsSubject.Fields[i] is TNumericField then
      begin
        TNumericField(cdsSubject.Fields[i]).DisplayFormat := '#,##0.##########';
      end;
    end;

    for i := 0 to gvwReport.ColumnCount - 1 do
    begin
      with PropStore.Components.Add do
      begin
        Component := gvwReport.Columns[i];
        Properties.Add('AlternateCaption');
        Properties.Add('BestFitMaxWidth');
        Properties.Add('Caption');
        Properties.Add('DataBinding');
        Properties.Add('DateTimeGrouping');
        Properties.Add('FooterAlignmentHorz');
        Properties.Add('GroupIndex');
        Properties.Add('GroupSummaryAlignment');
        Properties.Add('HeaderAlignmentHorz');
        Properties.Add('HeaderAlignmentVert');
        Properties.Add('HeaderGlyph');
        Properties.Add('HeaderGlyphAlignmentHorz');
        Properties.Add('HeaderGlyphAlignmentVert');
        Properties.Add('HeaderHint');
        Properties.Add('HeaderImageIndex');
        Properties.Add('MinWidth');
        Properties.Add('Name');
        Properties.Add('Options');
        Properties.Add('Position');
        Properties.Add('Properties');
        Properties.Add('RepositoryItem');
        Properties.Add('SortIndex');
        Properties.Add('SortOrder');
        Properties.Add('Styles');
        Properties.Add('Summary');
        Properties.Add('Tag');
        Properties.Add('Visible');
        Properties.Add('VisibleForCustomization');
        Properties.Add('Width');
      end;
    end;

    cdsSubject.CommandText := cdsReportGridSQL.AsWideString;
    LayoutStream := cdsReportGrid.CreateBlobStream(cdsReportGridFILTER_CONFIG, bmRead);
    PropStream := cdsReportGrid.CreateBlobStream(cdsReportGridREPORT_CONFIG, bmRead);
    Try
      cdsSubject.Close;
      lcFilter.LoadFromStream(LayoutStream);
      PropStore.StorageStream := PropStream;
      PropStore.RestoreFrom;
      cdsSubject.Open;
    Finally
      FreeAndNil(PropStream);
      FreeAndNil(LayoutStream);
    End;
  end;
end;

procedure TfrmGridReportEditor.ObjectSelected(Sender: TObject);
begin
  cxRTTIInspector.InspectedObject := TPersistent(Sender);
  UpdateLabel(TComponent(Sender));
end;

procedure TfrmGridReportEditor.UpdateLabel(AObject: TComponent);
begin
  if AObject <> nil then
    nbObjectInspector.Caption := Format('%s: %s', [AObject.Name, AObject.ClassName])
  else
    nbObjectInspector.Caption := '<not selected>';

  nbObjectInspector.Hint := nbObjectInspector.Caption;
end;

{ TcxGridColumnPropertiesProperty }

function TcxGridColumnPropertiesProperty.GetAttributes: TcxPropertyAttributes;
begin
  Result := inherited GetAttributes;
  if not HasSubProperties then
    Exclude(Result, ipaSubProperties);
  Result := Result - [ipaReadOnly] + [ipaValueList, ipaSortList, ipaRevertable];
end;

function TcxGridColumnPropertiesProperty.GetColumn: TcxGridColumn;
begin
  Result := TcxGridColumn(GetComponent(0));
end;

function TcxGridColumnPropertiesProperty.GetValue: string;
begin
  if HasSubProperties then
    Result := GetRegisteredEditProperties.GetDescriptionByClass(
      TcxCustomEditProperties(GetOrdValue).ClassType)
  else
    Result := '';
end;

procedure TcxGridColumnPropertiesProperty.GetValues(Proc: TGetStrProc);
var
  I: Integer;
begin
  inherited;
  for I := 0 to GetRegisteredEditProperties.Count - 1 do
    Proc(GetRegisteredEditProperties.Descriptions[I]);
end;

function TcxGridColumnPropertiesProperty.HasSubProperties: Boolean;
var
  I: Integer;
  AIntf: IcxEditorPropertiesContainer;
begin
  Result := (Column <> nil) And (Column.Properties <> nil);
end;

procedure TcxGridColumnPropertiesProperty.SetValue(const Value: string);
var
  APropertiesClass: TcxCustomEditPropertiesClass;
  I: Integer;
begin
  APropertiesClass := TcxCustomEditPropertiesClass(
    GetRegisteredEditProperties.FindByClassName(Value));
  if APropertiesClass = nil then
    APropertiesClass := TcxCustomEditPropertiesClass(
      GetRegisteredEditProperties.FindByDescription(Value));
  for I := 0 to PropCount - 1 do
    Column.PropertiesClass := APropertiesClass;
  inherited;
end;

initialization
  cxRegisterPropertyEditor(TypeInfo(string), TcxCustomEditorRowProperties, 'EditPropertiesClassName', nil);
  cxRegisterPropertyEditor(TypeInfo(string), TcxGridColumn, 'PropertiesClassName', nil);
  cxRegisterPropertyEditor(TypeInfo(TcxCustomEditProperties), TcxGridColumn, 'Properties', TcxGridColumnPropertiesProperty);
  cxRegisterPropertyEditor(TypeInfo(String), TNClientDataset, 'CommandText', TcxStringProperty);
  cxRegisterEditPropertiesClass(TcxStringProperty, TcxButtonEditProperties);
  RegisterClass(TfrmGridReportEditor);

end.
