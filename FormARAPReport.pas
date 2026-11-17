unit FormARAPReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxGridCustomView, cxGrid, cxClasses, Vcl.ActnList, NDatasetAction,
  Vcl.ImgList, dxBar, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, System.DateUtils, System.Actions,
  System.ImageList, dxDateRanges, cxBarEditItem;

type
  TfrmARAPReport = class(TfrmBasic)
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    imlBrowse: TImageList;
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cdsARAPSum: TNClientDataset;
    cdsARAPDet: TNClientDataset;
    cdsARAPSumACCID: TLargeintField;
    cdsARAPSumACCNO: TStringField;
    cdsARAPSumACCNAME: TStringField;
    cdsARAPSumCUST_TYPE: TIntegerField;
    cdsARAPSumCCYCODE: TStringField;
    cdsARAPSumAR_AMT: TFloatField;
    cdsARAPSumAP_AMT: TFloatField;
    cdsARAPSumAROD_AMT: TFloatField;
    cdsARAPSumAPOD_AMT: TFloatField;
    cdsARAPDetACCID: TLargeintField;
    cdsARAPDetTRDATE: TDateField;
    cdsARAPDetDUEDATE: TDateField;
    cdsARAPDetCCYCODE: TStringField;
    cdsARAPDetAR_AMT: TFloatField;
    cdsARAPDetAP_AMT: TFloatField;
    cdsARAPDetAR_OUTS_AMT: TFloatField;
    cdsARAPDetAP_OUT_AMT: TFloatField;
    cdsARAPDetEX_CCYCODE: TStringField;
    cdsARAPDetEX_AR_AMT: TFloatField;
    cdsARAPDetEX_AP_AMT: TFloatField;
    cdsARAPDetEX_AR_OUTS_AMT: TFloatField;
    cdsARAPDetEX_AP_OUT_AMT: TFloatField;
    grdMasterLevel2: TcxGridLevel;
    gvwDetail: TcxGridDBBandedTableView;
    dsARAPSum: TDataSource;
    dsARAPDet: TDataSource;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUST_TYPE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterAR_AMT: TcxGridDBBandedColumn;
    gvwMasterAP_AMT: TcxGridDBBandedColumn;
    gvwMasterAROD_AMT: TcxGridDBBandedColumn;
    gvwMasterAPOD_AMT: TcxGridDBBandedColumn;
    gvwDetailACCID: TcxGridDBBandedColumn;
    gvwDetailTRDATE: TcxGridDBBandedColumn;
    gvwDetailDUEDATE: TcxGridDBBandedColumn;
    gvwDetailCCYCODE: TcxGridDBBandedColumn;
    gvwDetailAR_AMT: TcxGridDBBandedColumn;
    gvwDetailAP_AMT: TcxGridDBBandedColumn;
    gvwDetailAR_OUTS_AMT: TcxGridDBBandedColumn;
    gvwDetailAP_OUT_AMT: TcxGridDBBandedColumn;
    gvwDetailEX_CCYCODE: TcxGridDBBandedColumn;
    gvwDetailEX_AR_AMT: TcxGridDBBandedColumn;
    gvwDetailEX_AP_AMT: TcxGridDBBandedColumn;
    gvwDetailEX_AR_OUTS_AMT: TcxGridDBBandedColumn;
    gvwDetailEX_AP_OUT_AMT: TcxGridDBBandedColumn;
    actSaveGridToExcel: TNAction;
    SaveDlg: TSaveDialog;
    SaveGridToExcel1: TMenuItem;
    dtReportDate: TcxBarEditItem;
    grdMasterLevel3: TcxGridLevel;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cdsARAPDetACCNO: TStringField;
    cdsARAPDetACCNAME: TStringField;
    grdMasterDBBandedTableView1ACCID: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1TRDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1DUEDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1AR_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1AP_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1AR_OUTS_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1AP_OUT_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1EX_CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1EX_AR_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1EX_AP_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1EX_AR_OUTS_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1EX_AP_OUT_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACCNAME: TcxGridDBBandedColumn;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSaveGridToExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmARAPReport: TfrmARAPReport;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink;

procedure TfrmARAPReport.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsARAPSum.Close;
  cdsARAPSum.Params[0].AsDate := DateOf(dtReportDate.EditValue);
  cdsARAPSum.Open;

  cdsARAPDet.Close;
  cdsARAPDet.Params[0].AsDate := DateOf(dtReportDate.EditValue);
  cdsARAPDet.Open;

  gvwMaster.ApplyBestFit();
  gvwDetail.ApplyBestFit();
end;

procedure TfrmARAPReport.actSaveGridToExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmARAPReport.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  actLoadData.Execute;
end;

end.
