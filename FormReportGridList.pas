unit FormReportGridList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, Vcl.Menus, Vcl.ActnList,
  NDatasetAction, dxBar, cxClasses, Vcl.ImgList, cxStyles, NActionPermission,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmReportGridList = class(TfrmBasic)
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuLoadData: TdxBarButton;
    aclReportList: TActionList;
    actLoadData: TNAction;
    actFullExpand: TNAction;
    actFullCollapse: TNAction;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    grdMasterLevel2: TcxGridLevel;
    gvwDetail: TcxGridDBBandedTableView;
    cdsReportCategory: TNClientDataset;
    cdsReportGrid: TNClientDataset;
    dsReportCategory: TDataSource;
    dsReportGrid: TDataSource;
    cdsReportCategoryCATEGORY_ID: TIntegerField;
    cdsReportCategoryCATEGORY_CODE: TStringField;
    cdsReportCategoryDESCRIPTION: TStringField;
    cdsReportCategoryPARENT_CATEGORY_ID: TIntegerField;
    cdsReportCategoryMODDA: TDateTimeField;
    cdsReportCategoryMODUI: TStringField;
    cdsReportCategoryAPPDA: TDateTimeField;
    cdsReportCategoryAPPUI: TStringField;
    cdsReportCategoryUNDER4Y: TIntegerField;
    cdsReportCategoryUNDER4YDA: TDateTimeField;
    cdsReportCategoryNOTES4Y: TStringField;
    cdsReportCategoryISDEL: TIntegerField;
    cdsReportCategoryID: TLargeintField;
    cdsReportGridREPORT_ID: TIntegerField;
    cdsReportGridREPORT_CODE: TStringField;
    cdsReportGridDESCRIPTION: TStringField;
    cdsReportGridCATEGORY_ID: TIntegerField;
    cdsReportGridREPORT_CONFIG: TWideMemoField;
    cdsReportGridFILTER_CONFIG: TWideMemoField;
    cdsReportGridMODDA: TDateTimeField;
    cdsReportGridMODUI: TStringField;
    cdsReportGridAPPDA: TDateTimeField;
    cdsReportGridAPPUI: TStringField;
    cdsReportGridUNDER4Y: TIntegerField;
    cdsReportGridUNDER4YDA: TDateTimeField;
    cdsReportGridNOTES4Y: TStringField;
    cdsReportGridISDEL: TIntegerField;
    cdsReportGridID: TLargeintField;
    gvwMasterCATEGORY_ID: TcxGridDBBandedColumn;
    gvwMasterCATEGORY_CODE: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterPARENT_CATEGORY_ID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwDetailREPORT_ID: TcxGridDBBandedColumn;
    gvwDetailREPORT_CODE: TcxGridDBBandedColumn;
    gvwDetailDESCRIPTION: TcxGridDBBandedColumn;
    gvwDetailCATEGORY_ID: TcxGridDBBandedColumn;
    gvwDetailREPORT_CONFIG: TcxGridDBBandedColumn;
    gvwDetailFILTER_CONFIG: TcxGridDBBandedColumn;
    gvwDetailMODDA: TcxGridDBBandedColumn;
    gvwDetailMODUI: TcxGridDBBandedColumn;
    gvwDetailAPPDA: TcxGridDBBandedColumn;
    gvwDetailAPPUI: TcxGridDBBandedColumn;
    gvwDetailUNDER4Y: TcxGridDBBandedColumn;
    gvwDetailUNDER4YDA: TcxGridDBBandedColumn;
    gvwDetailNOTES4Y: TcxGridDBBandedColumn;
    gvwDetailISDEL: TcxGridDBBandedColumn;
    gvwDetailID: TcxGridDBBandedColumn;
    popReport: TPopupMenu;
    ViewData1: TMenuItem;
    N2: TMenuItem;
    FullExpand1: TMenuItem;
    FullCollapse1: TMenuItem;
    N1: TMenuItem;
    actCreateCategory: TNAction;
    actEditCategory: TNAction;
    actCreateReport: TNAction;
    actEditReport: TNAction;
    CreateCategory1: TMenuItem;
    EditCategory1: TMenuItem;
    CreateReport1: TMenuItem;
    EditReport1: TMenuItem;
    actViewReport: TNAction;
    EditReport2: TMenuItem;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFullExpandExecute(Sender: TObject);
    procedure actFullCollapseExecute(Sender: TObject);
    procedure actCreateCategoryExecute(Sender: TObject);
    procedure actEditCategoryExecute(Sender: TObject);
    procedure actCreateReportExecute(Sender: TObject);
    procedure actEditReportExecute(Sender: TObject);
    procedure actViewReportExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportGridList: TfrmReportGridList;

implementation

{$R *.dfm}

uses DataGlobal, FormReportGridCategory, ClassClientConst, FormGridReportEditor,
  FormGridReport;

procedure TfrmReportGridList.actCreateCategoryExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := '';
  dmGlobal.ShowEditorForm(TfrmReportGridCategory, sKey, pkCreate);
end;

procedure TfrmReportGridList.actCreateReportExecute(Sender: TObject);
begin
  inherited;
  if CreateReport then
  begin
    cdsReportGrid.Refresh;
  end;
end;

procedure TfrmReportGridList.actEditCategoryExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsReportCategoryCATEGORY_ID.AsString;
  dmGlobal.ShowEditorForm(TfrmReportGridCategory, sKey, pkUpdate);
end;

procedure TfrmReportGridList.actEditReportExecute(Sender: TObject);
begin
  inherited;
  if EditReport(cdsReportGridREPORT_ID.AsInteger) then
  begin
    cdsReportGrid.Refresh;
  end;
end;

procedure TfrmReportGridList.actFullCollapseExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.ViewData.Collapse(True);
end;

procedure TfrmReportGridList.actFullExpandExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.ViewData.Expand(True);
end;

procedure TfrmReportGridList.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsReportCategory.Close;
  cdsReportCategory.Open;

  cdsReportGrid.Close;
  cdsReportGrid.Open;
end;

procedure TfrmReportGridList.actViewReportExecute(Sender: TObject);
begin
  inherited;
  if not ViewReportModal(cdsReportGridREPORT_ID.AsInteger) then
  begin
    ShowMessage('Report not found!');
  end;
end;

procedure TfrmReportGridList.FormCreate(Sender: TObject);
begin
  inherited;
  actLoadData.Execute;
end;

Initialization
  RegisterClass(TfrmReportGridList);

end.
