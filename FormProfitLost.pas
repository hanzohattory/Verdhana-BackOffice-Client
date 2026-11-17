unit FormProfitLost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, frxClass, frxDBSet, Datasnap.DBClient,
  NClientDataset, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, cxGridLevel, cxGridCustomView, cxGrid,
  NReportRPC, dxBar, cxClasses, Vcl.ImgList, Vcl.ActnList, NDatasetAction,
  NActionPermission, Vcl.Menus, NReportClient;

type
  TfrmProfitLost = class(TfrmBasic)
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsProfitLoss: TNClientDataset;
    dsProfitLoss: TDataSource;
    cdsProfitLossGLACCOUNTCODE: TStringField;
    cdsProfitLossGLACCOUNTNAME: TStringField;
    cdsProfitLossCurrMonth: TFloatField;
    cdsProfitLossUPTOYEAR: TFloatField;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterCurrMonth: TcxGridDBBandedColumn;
    gvwMasterUPTOYEAR: TcxGridDBBandedColumn;
    ReportContainer: TNClientReportContainer;
    procedure actPrintExecute(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProfitLost: TfrmProfitLost;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmProfitLost.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsProfitLoss.Close;
  cdsProfitLoss.Params[0].AsDate := dtReportDate.Date;
  cdsProfitLoss.Open;
end;

procedure TfrmProfitLost.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsDate := cdsProfitLoss.Params[0].AsDate;
  ReportContainer.PreviewReport;
end;

procedure TfrmProfitLost.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmProfitLost);

end.
