unit FormSingleBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, NDatasetContainer,
  cxPropertiesStore, Vcl.ImgList, dxBar, cxClasses, Vcl.Menus, NDatasetAction,
  Vcl.ActnList, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxPSCore, dxPScxCommon, NActionPermission,
  Datasnap.DBClient, NClientDataset;

type
  TfrmSingleBrowse = class(TfrmBasic)
    PrintComp: TdxComponentPrinter;
    PrintCompMainGrid: TdxGridReportLink;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    grdApproval: TcxGrid;
    gvwApproval: TcxGridDBBandedTableView;
    grdApprovalLevel1: TcxGridLevel;
    spMain: TcxSplitter;
    dsBrowseMaster: TDataSource;
    aclEditor: TActionList;
    actCustomize: TNAction;
    actSaveView: TNAction;
    actSaveGridView: TNAction;
    actPrint: TNAction;
    actView: TNAction;
    actNew: TNContainerActionNew;
    actEdit: TNContainerActionEdit;
    actDelete: TNContainerActionDelete;
    actRefresh: TNContainerActionRefresh;
    actApprove: TNContainerActionApprove;
    actCancel: TNContainerActionCancel;
    actReject: TNContainerActionReject;
    popMaster: TPopupMenu;
    N2: TMenuItem;
    View1: TMenuItem;
    actPrint1: TMenuItem;
    N3: TMenuItem;
    Insert1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    Post1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    CustomizeColumn2: TMenuItem;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuInsert: TdxBarButton;
    mnuEdit: TdxBarButton;
    mnuDelete: TdxBarButton;
    mnuPrint: TdxBarButton;
    mnuRefresh: TdxBarButton;
    imlBrowse: TImageList;
    PropStore: TcxPropertiesStore;
    dsBrowseApproval: TDataSource;
    SingleContainer: TNSingleContainer;
    popApproval: TPopupMenu;
    Approve1: TMenuItem;
    Reject1: TMenuItem;
    Cancel1: TMenuItem;
    cdsEditor: TNClientDataset;
    cdsMain: TNClientDataset;
    cdsUpdate: TNClientDataset;
    procedure SingleContainerGetUserID(var AUserID: string);
    procedure FormShow(Sender: TObject);
    procedure SingleContainerAfterCreateEditorForm(AForm: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSingleBrowse: TfrmSingleBrowse;

implementation

{$R *.dfm}

uses DataGlobal, FormSingleEditor;

procedure TfrmSingleBrowse.FormShow(Sender: TObject);
begin
  inherited;
  spMain.Visible := SingleContainer.Control4Eyes;
  grdApproval.Visible := SingleContainer.Control4Eyes;
end;

procedure TfrmSingleBrowse.SingleContainerAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  TfrmSingleEditor(AForm).FormContainer := SingleContainer;
end;

procedure TfrmSingleBrowse.SingleContainerGetUserID(var AUserID: string);
begin
  inherited;
  AUserID := dmGlobal.UserID;
end;

end.
