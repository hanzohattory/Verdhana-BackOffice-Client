unit FormBrowseSingle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormBasic, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, NActionPermission, Menus, dxPSGlbl, dxPSUtl,
  dxBkgnd, dxWrap, dxPrnDev, dxPSFillPatterns,
  dxPSEdgePatterns, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxPSCore, dxPScxCommon,
  NDatasetContainer, NDatasetAction, ActnList, ImgList,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  cxPropertiesStore, cxCustomData, cxFilter, cxData, dxPSEngn, dxPrnPg,
  dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport, dxBar, cxNavigator,
  System.Actions, System.ImageList, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmBrowseSingle = class(TfrmBasic)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    imlBrowse: TImageList;
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
    CustomizeColumn1: TMenuItem;
    SaveView1: TMenuItem;
    N1: TMenuItem;
    SaveGridView1: TMenuItem;
    popGrid: TPopupMenu;
    View1: TMenuItem;
    Insert1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N3: TMenuItem;
    Post1: TMenuItem;
    Refresh1: TMenuItem;
    actPrint1: TMenuItem;
    DatasetContainer: TNSimpleContainer;
    dsBrowse: TDataSource;
    PrintComp: TdxComponentPrinter;
    PrintCompMainGrid: TdxGridReportLink;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    N2: TMenuItem;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuInsert: TdxBarButton;
    mnuEdit: TdxBarButton;
    mnuDelete: TdxBarButton;
    mnuPrint: TdxBarButton;
    mnuRefresh: TdxBarButton;
    CustomizeColumn2: TMenuItem;
    N4: TMenuItem;
    PropStore: TcxPropertiesStore;
    procedure DatasetContainerShowEditor(Sender: TObject);
    procedure actCustomizeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FEditorClass: TFormClass;
    FOpenModalResult: TModalResult;
    FReportFileName: String;
    FReportID: Integer;
  public
    { Public declarations }
    property EditorClass: TFormClass read FEditorClass write FEditorClass;
    property ReportFileName: String read FReportFileName write FReportFileName;
    property ReportID: Integer read FReportID write FReportID Default -1;
    property OpenModalResult: TModalResult read FOpenModalResult write FOpenModalResult;
  end;

var
  frmBrowseSingle: TfrmBrowseSingle;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmBrowseSingle.actCustomizeExecute(Sender: TObject);
begin
  gvwBrowse.Controller.Customization := True;
end;

procedure TfrmBrowseSingle.DatasetContainerShowEditor(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  if Assigned(FEditorClass) then
  begin
    oForm := FEditorClass.Create(nil);

    if oForm.ShowModal = mrOK then
    begin
      FOpenModalResult := mrOk;
      if DatasetContainer.Dataset.State in [dsInsert,dsEdit] then DatasetContainer.Post;
    end
    else
    begin
      FOpenModalResult := mrCancel;
      if DatasetContainer.Dataset.State in [dsInsert,dsEdit] then DatasetContainer.Cancel;
    end;

    oForm.Free;
  end;

end;

procedure TfrmBrowseSingle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  gvwBrowse.Controller.Customization := False;

end;

procedure TfrmBrowseSingle.FormCreate(Sender: TObject);
var
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
begin
  inherited;
  dmGlobal.SetDefaultDataDisplayFormat(dsBrowse.DataSet);

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

procedure TfrmBrowseSingle.FormDestroy(Sender: TObject);
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

end.
