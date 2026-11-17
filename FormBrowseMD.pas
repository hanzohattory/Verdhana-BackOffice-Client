unit FormBrowseMD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormBasic, dxPSGlbl, dxPSUtl, dxBkgnd, dxWrap,
  dxPrnDev, dxPSFillPatterns, dxPSEdgePatterns,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NDatasetContainer,
  dxPSCore, dxPScxCommon, Menus, NDatasetAction, ActnList, cxClasses, ImgList,
  NActionPermission, dxBar,
  cxPropertiesStore, cxDBEdit, cxContainer, cxDBLookupComboBox,
  cxCustomData, cxFilter, cxData, dxPSEngn, dxPrnPg, dxPSCompsProvider,
  dxPSPDFExportCore, dxPSPDFExport, cxNavigator, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.Actions, System.ImageList;

type
  TfrmBrowseMD = class(TfrmBasic)
    imlBrowse: TImageList;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    aclEditor: TActionList;
    actFirst: TNDataSetFirst;
    actPrior: TNDataSetPrior;
    actNext: TNDataSetNext;
    actLast: TNDataSetLast;
    actInsert: TNDataSetInsert;
    actDelete: TNDataSetDelete;
    actEdit: TNDataSetEdit;
    actPost: TNDataSetPost;
    actcancel: TNDataSetCancel;
    actRefresh: TNDataSetRefresh;
    actCustomize: TNAction;
    actSaveView: TNAction;
    actSaveGridView: TNAction;
    actPrint: TNAction;
    actView: TNAction;
    dsBrowse: TDataSource;
    popGrid: TPopupMenu;
    N2: TMenuItem;
    View1: TMenuItem;
    actPrint1: TMenuItem;
    N3: TMenuItem;
    Insert1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    Refresh1: TMenuItem;
    PrintComp: TdxComponentPrinter;
    PrintCompMainGrid: TdxGridReportLink;
    PopupMenu1: TPopupMenu;
    CustomizeColumn1: TMenuItem;
    SaveView1: TMenuItem;
    N1: TMenuItem;
    SaveGridView1: TMenuItem;
    DatasetContainer: TNMasterDetail;
    cxGrid1: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    N4: TMenuItem;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuInsert: TdxBarButton;
    mnuEdit: TdxBarButton;
    mnuDelete: TdxBarButton;
    mnuPrint: TdxBarButton;
    mnuRefresh: TdxBarButton;
    CustomizeColumn2: TMenuItem;
    PropStore: TcxPropertiesStore;
    actApprove: TNAction;
    Approve1: TMenuItem;
    procedure actCustomizeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DatasetContainerShowEditor(Sender: TNMasterDetail);
    procedure DatasetContainerGetUser(var AUserID: string);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure actApproveUpdate(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
  private
    { Private declarations }
    FEditorClass: TFormClass;
//    FOpenModalResult: TModalResult;
  public
    { Public declarations }
    property EditorClass: TFormClass read FEditorClass write FEditorClass;
    procedure SetOldValueHint(AForm: TForm);
  end;

var
  frmBrowseMD: TfrmBrowseMD;

implementation

uses DataGlobal, FormEditor;

{$R *.dfm}

procedure TfrmBrowseMD.actApproveExecute(Sender: TObject);
begin
  inherited;
  DatasetContainer.Approve;
end;

procedure TfrmBrowseMD.actApproveUpdate(Sender: TObject);
begin
  inherited;
  actApprove.Enabled := DatasetContainer.Control4Eyes;

  if DatasetContainer.Control4Eyes then
  begin
    if Assigned(DatasetContainer.ListDataset.FieldByName('UPDSTATUS')) then
    begin
      actApprove.Enabled := (DatasetContainer.Control4Eyes) and
        (not DatasetContainer.ListDataset.FieldByName('UPDSTATUS').IsNull);
    end;
  end;

  actApprove.Visible := actApprove.Enabled;
end;

procedure TfrmBrowseMD.actCustomizeExecute(Sender: TObject);
begin
  gvwBrowse.Controller.Customization := True;
end;

procedure TfrmBrowseMD.actViewExecute(Sender: TObject);
begin
  inherited;
  DatasetContainer.MasterDataset.ReadOnly := True;
  DatasetContainer.Open;
end;

procedure TfrmBrowseMD.DatasetContainerGetUser(var AUserID: string);
begin
  inherited;
  AUserID := dmGlobal.UserID;
end;

procedure TfrmBrowseMD.DatasetContainerShowEditor(Sender: TNMasterDetail);
var
  oForm: TForm;
begin
  inherited;
  if (DatasetContainer.State = mdsApprove) and (DatasetContainer.Control4Eyes) then
  begin
    if MessageDlg('Are you sure to approve this data changed?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DatasetContainer.Post;
    end;
  end
  else
  begin
    if Assigned(FEditorClass) then
    begin
      oForm := FEditorClass.Create(nil);

      if (DatasetContainer.State = mdsEdit) and (DatasetContainer.Control4Eyes) then
      begin
        SetOldValueHint(oForm);
      end;

      if oForm.ShowModal = mrOK then
      begin
        if (DatasetContainer.State = mdsInsert) or (DatasetContainer.State = mdsEdit) then
          DatasetContainer.Post;
      end
      else
      begin
        if (DatasetContainer.State = mdsInsert) or (DatasetContainer.State = mdsEdit) then
          DatasetContainer.Cancel;
      end;

      DatasetContainer.MasterDataset.ReadOnly := False;
      oForm.Free;
    end;
  end;
end;

procedure TfrmBrowseMD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  gvwBrowse.Controller.Customization := False;
end;

procedure TfrmBrowseMD.FormCreate(Sender: TObject);
var
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
begin
  inherited;
  with DatasetContainer do
  begin
    if Assigned(ListDataset) then
    begin
      dmGlobal.SetDefaultDataDisplayFormat(ListDataset);
    end;
  end;

  for i := 0 to gvwBrowse.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwBrowse.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  with dmGlobal do
  begin
    OpenUserLayout(Self.Name);

    if cdsUserLayout.IsEmpty then
      exit;

    LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmRead);
    Try
      PropStore.StorageStream := LayoutStream;
      PropStore.RestoreFrom;
    Finally
      if Assigned(LayoutStream) then
        FreeAndNil(LayoutStream);
    End;
  end;
end;

procedure TfrmBrowseMD.FormDestroy(Sender: TObject);
var
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
begin
  inherited;

  for i := 0 to gvwBrowse.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwBrowse.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  with dmGlobal do
  begin
    OpenUserLayout(Self.Name);

    if cdsUserLayout.isEmpty then
      cdsUserLayout.Append
    else
      cdsUserLayout.Edit;

    LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmReadWrite);
    Try
      PropStore.StorageStream := LayoutStream;
      PropStore.StoreTo();
      cdsUserLayoutFORMNAME.AsString := Self.Name;
      cdsUserLayoutLAYOUTSETTING.LoadFromStream(LayoutStream);
      cdsUserLayout.Post;
    Finally
      if Assigned(LayoutStream) then
        FreeAndNil(LayoutStream);
    End;
  end;
end;

procedure TfrmBrowseMD.SetOldValueHint(AForm: TForm);
var
  i: Integer;
  sHint, sFieldName: String;
  oDataset: TDataset;
begin
  for i:=0 to AForm.ComponentCount-1 do
  begin

    if (AForm.Components[i] is TcxDBLookupComboBox) then
    begin
      sFieldName := TcxDBLookupComboBox(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBLookupComboBox(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBLookupComboBox(AForm.Components[i]).Hint := sHint;
      TcxDBLookupComboBox(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBTextEdit) then
    begin
      sFieldName := TcxDBTextEdit(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBTextEdit(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBTextEdit(AForm.Components[i]).Hint := sHint;
      TcxDBTextEdit(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBMemo) then
    begin
      sFieldName := TcxDBMemo(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBMemo(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBMemo(AForm.Components[i]).Hint := sHint;
      TcxDBMemo(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBButtonEdit) then
    begin
      sFieldName := TcxDBButtonEdit(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBButtonEdit(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBButtonEdit(AForm.Components[i]).Hint := sHint;
      TcxDBButtonEdit(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBDateEdit) then
    begin
      sFieldName := TcxDBDateEdit(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBDateEdit(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBDateEdit(AForm.Components[i]).Hint := sHint;
      TcxDBDateEdit(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBComboBox) then
    begin
      sFieldName := TcxDBComboBox(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBComboBox(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBComboBox(AForm.Components[i]).Hint := sHint;
      TcxDBComboBox(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBTimeEdit) then
    begin
      sFieldName := TcxDBTimeEdit(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBTimeEdit(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBTimeEdit(AForm.Components[i]).Hint := sHint;
      TcxDBTimeEdit(AForm.Components[i]).ShowHint := True;
    end
    else if (AForm.Components[i] is TcxDBSpinEdit) then
    begin
      sFieldName := TcxDBSpinEdit(AForm.Components[i]).DataBinding.DataField;
      oDataset := TcxDBSpinEdit(AForm.Components[i]).DataBinding.DataSource.DataSet;
      sHint := '';
      if oDataset = DatasetContainer.MasterDatasetUpd then
      begin
        if Assigned(DatasetContainer.MasterDataset.FieldByName(sFieldName)) then
          sHint := DatasetContainer.MasterDataset.FieldByName(sFieldName).AsString;
      end;
      TcxDBSpinEdit(AForm.Components[i]).Hint := sHint;
      TcxDBSpinEdit(AForm.Components[i]).ShowHint := True;
    end;

  end;
end;

end.
