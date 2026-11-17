unit FormReportDailyCommisionGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridExportLink, cxGrid,Winapi.ShellAPI;

type
  TfrmReportDailyCommisionGrid = class(TfrmBrowseData)
    cdsDailyCommisionReport: TNClientDataset;
    cdsDailyCommisionReportMARKETCODE: TStringField;
    cdsDailyCommisionReportMARKETDESC: TStringField;
    cdsDailyCommisionReportBOARDDESC: TStringField;
    cdsDailyCommisionReportSALESCODE: TStringField;
    cdsDailyCommisionReportSALESNAME: TStringField;
    cdsDailyCommisionReportBRANCHCODE: TStringField;
    cdsDailyCommisionReportBRANCHNAME: TStringField;
    cdsDailyCommisionReportACCTYPE: TStringField;
    cdsDailyCommisionReportACCTYPEDESC: TStringField;
    cdsDailyCommisionReportCOMM_CODE: TStringField;
    cdsDailyCommisionReportCOMM_RATE: TFloatField;
    cdsDailyCommisionReportACCNO: TStringField;
    cdsDailyCommisionReportACCNAME: TStringField;
    cdsDailyCommisionReportDEALTICKETDATE: TDateField;
    cdsDailyCommisionReportDEALTICKETCODE: TStringField;
    cdsDailyCommisionReportSTOCKCODE: TStringField;
    cdsDailyCommisionReportDEALQTY: TLargeintField;
    cdsDailyCommisionReportDEALPRICE: TFloatField;
    cdsDailyCommisionReportDEALVALUE: TFloatField;
    cdsDailyCommisionReportPureCommision: TFloatField;
    cdsDailyCommisionReportBROKERFEE: TFloatField;
    cdsDailyCommisionReportNetComm: TFloatField;
    cdsDailyCommisionReportGainLoss: TFloatField;
    cdsDailyCommisionReportnetEarnings: TFloatField;
    cdsDailyCommisionReportSTAT: TStringField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETDESC: TcxGridDBBandedColumn;
    gvwMasterBOARDDESC: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterCOMM_CODE: TcxGridDBBandedColumn;
    gvwMasterCOMM_RATE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterDEALQTY: TcxGridDBBandedColumn;
    gvwMasterDEALPRICE: TcxGridDBBandedColumn;
    gvwMasterDEALVALUE: TcxGridDBBandedColumn;
    gvwMasterPureCommision: TcxGridDBBandedColumn;
    gvwMasterBROKERFEE: TcxGridDBBandedColumn;
    gvwMasterNetComm: TcxGridDBBandedColumn;
    gvwMasterGainLoss: TcxGridDBBandedColumn;
    gvwMasternetEarnings: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    actGenerateExcel: TNAction;
    SaveDialog: TSaveDialog;
    procedure actGenerateExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDailyCommisionGrid: TfrmReportDailyCommisionGrid;

implementation

{$R *.dfm}

procedure TfrmReportDailyCommisionGrid.actGenerateExcelExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  SaveDialog.FileName := GetCurrentDir + '\CorpactEntitlement.xls';
  if not SaveDialog.Execute then
    Abort;

  sFileName := SaveDialog.FileName;
  if sFileName <> '' then
  begin
    ExportGridToExcel(sFileName, grdMaster, True, True, False);
    MessageDlg('Export to excel has done', mtInformation, [mbOk], 0);
    ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

end.
