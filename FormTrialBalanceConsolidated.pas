unit FormTrialBalanceConsolidated;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, dxLayoutContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  dxLayoutControl, cxGridLevel, cxGridCustomView, cxGrid, Datasnap.DBClient,
  NClientDataset, dxBar, cxClasses, Vcl.ImgList, Vcl.ActnList, NDatasetAction,
  NActionPermission, Vcl.Menus, NReportRPC, frxClass, frxDBSet, NReportClient,
  System.DateUtils, System.ImageList, System.Actions;

type
  TfrmTrialBalanceConsolidated = class(TfrmBasic)
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
    dsTrialBalanceConsolidated: TDataSource;
    cdsTrialBalanceConsolidated: TNClientDataset;
    cxGrid1: TcxGrid;
    gvwTrialBalance: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    cbCcy: TcxLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    cdsTrialBalanceConsolidatedGLACCOUNTCODE: TStringField;
    cdsTrialBalanceConsolidatedGLACCOUNTNAME: TStringField;
    cdsTrialBalanceConsolidatedBASECCY: TStringField;
    cdsTrialBalanceConsolidatedCATEGORY: TStringField;
    cdsTrialBalanceConsolidatedASPARENT: TStringField;
    cdsTrialBalanceConsolidatedBASEPREVAMT: TFloatField;
    cdsTrialBalanceConsolidatedBASEPREVCCYAMT: TFloatField;
    cdsTrialBalanceConsolidatedCONVCCYCODE: TStringField;
    cdsTrialBalanceConsolidatedREVCCYAMT: TFloatField;
    cdsTrialBalanceConsolidatedPREVAMT: TFloatField;
    cdsTrialBalanceConsolidatedDBAMT: TFloatField;
    cdsTrialBalanceConsolidatedCRAMT: TFloatField;
    cdsTrialBalanceConsolidatedCURRAMT: TFloatField;
    gvwTrialBalanceGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwTrialBalanceGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwTrialBalanceBASECCY: TcxGridDBBandedColumn;
    gvwTrialBalanceCATEGORY: TcxGridDBBandedColumn;
    gvwTrialBalanceASPARENT: TcxGridDBBandedColumn;
    gvwTrialBalanceBASEPREVAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceBASEPREVCCYAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceCONVCCYCODE: TcxGridDBBandedColumn;
    gvwTrialBalanceREVCCYAMT: TcxGridDBBandedColumn;
    gvwTrialBalancePREVAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceDBAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceCRAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceCURRAMT: TcxGridDBBandedColumn;
    ReportContainer: TNClientReportContainer;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ReportContainerPrepareData(AFormParam: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrialBalanceConsolidated: TfrmTrialBalanceConsolidated;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmTrialBalanceConsolidated.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsTrialBalanceConsolidated.Close;
  cdsTrialBalanceConsolidated.Params[0].AsDate := DateOf(dtReportDate.Date);
  cdsTrialBalanceConsolidated.Params[1].AsString := cbCcy.EditValue;
  cdsTrialBalanceConsolidated.Open;
end;

procedure TfrmTrialBalanceConsolidated.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsDate := cdsTrialBalanceConsolidated.Params[0].AsDate;
  ReportContainer.Params[1].AsString := cdsTrialBalanceConsolidated.Params[1].AsString;
  ReportContainer.PreviewReport;
end;

procedure TfrmTrialBalanceConsolidated.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  cbCcy.EditValue := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmTrialBalanceConsolidated.ReportContainerPrepareData(
  AFormParam: TForm);
begin
  inherited;
  actLoadData.Execute;
end;

Initialization
  RegisterClass(TfrmTrialBalanceConsolidated);

end.
