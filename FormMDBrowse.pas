unit FormMDBrowse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NDatasetContainer, cxSplitter, cxClasses, cxPropertiesStore,
  dxPSCore, dxPScxCommon, Vcl.Menus, Vcl.ImgList, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxBar, NDatasetAction, Vcl.ActnList,
  NActionPermission;

type
  TfrmMDBrowse = class(TfrmBasic)
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
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuInsert: TdxBarButton;
    mnuEdit: TdxBarButton;
    mnuDelete: TdxBarButton;
    mnuPrint: TdxBarButton;
    mnuRefresh: TdxBarButton;
    grdApproval: TcxGrid;
    gvwApproval: TcxGridDBBandedTableView;
    grdApprovalLevel1: TcxGridLevel;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    imlBrowse: TImageList;
    popApproval: TPopupMenu;
    Approve1: TMenuItem;
    Reject1: TMenuItem;
    Cancel1: TMenuItem;
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
    PrintComp: TdxComponentPrinter;
    PrintCompMainGrid: TdxGridReportLink;
    PropStore: TcxPropertiesStore;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    spMain: TcxSplitter;
    dsBrowseMaster: TDataSource;
    dsBrowseApproval: TDataSource;
    MasterDetailContainer: TNMasterDetailContainer;
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseApproval: TNClientDataset;
    procedure FormShow(Sender: TObject);
    procedure MasterDetailContainerGetUserID(var AUserID: string);
    procedure MasterDetailContainerAfterCreateEditorForm(AForm: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMDBrowse: TfrmMDBrowse;

implementation

{$R *.dfm}

uses DataGlobal, FormMDEditor;

procedure TfrmMDBrowse.FormShow(Sender: TObject);
begin
  inherited;
  spMain.Visible := MasterDetailContainer.Control4Eyes;
  grdApproval.Visible := MasterDetailContainer.Control4Eyes;
end;

procedure TfrmMDBrowse.MasterDetailContainerAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  TfrmMDEditor(AForm).FormContainer := MasterDetailContainer;
end;

procedure TfrmMDBrowse.MasterDetailContainerGetUserID(var AUserID: string);
begin
  inherited;
  AUserID := dmGlobal.UserID;
end;

end.
