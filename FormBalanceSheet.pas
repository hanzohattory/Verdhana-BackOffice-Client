unit FormBalanceSheet;

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
  cxCalendar, dxLayoutControl, cxGridLevel, cxGridCustomView, cxGrid, dxBar,
  cxClasses, Vcl.ImgList, Vcl.ActnList, NDatasetAction, NActionPermission,
  Vcl.Menus, NReportRPC;

type
  TfrmBalanceSheet = class(TfrmBasic)
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
    cdsBalanceSheet: TNClientDataset;
    dsBalanceSheet: TDataSource;
    dbBalanceSheet: TfrxDBDataset;
    cdsBalanceSheetGLACCOUNTCODE: TStringField;
    cdsBalanceSheetGLACCOUNTNAME: TStringField;
    cdsBalanceSheetCurrMonth: TFloatField;
    cdsBalanceSheetUPTOYEAR: TFloatField;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterCurrMonth: TcxGridDBBandedColumn;
    gvwMasterUPTOYEAR: TcxGridDBBandedColumn;
    ReportContainer: TNReportContainer;
    procedure actLoadDataExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ReportContainerPrepareData(AFormParam: TForm);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanceSheet: TfrmBalanceSheet;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBalanceSheet.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsBalanceSheet.Close;
  cdsBalanceSheet.Params[0].AsDate := dtReportDate.Date;
  cdsBalanceSheet.Open;
end;

procedure TfrmBalanceSheet.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.ExecuteReport;
end;

procedure TfrmBalanceSheet.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmBalanceSheet.ReportContainerPrepareData(AFormParam: TForm);
begin
  inherited;
  actLoadData.Execute;
end;

Initialization
  RegisterClass(TfrmBalanceSheet);

end.
