unit FormMarginAlertList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, System.Actions, System.ImageList,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmMarginAlertList = class(TfrmBrowseData)
    cdsMarginAlert: TNClientDataset;
    cdsMarginAlertMGRALRTID: TLargeintField;
    cdsMarginAlertACCID: TLargeintField;
    cdsMarginAlertALERTDATE: TDateTimeField;
    cdsMarginAlertACCRUED_INTEREST: TFloatField;
    cdsMarginAlertCASH_ONHAND: TFloatField;
    cdsMarginAlertCASH_QQ: TFloatField;
    cdsMarginAlertCASH_SUBACC: TFloatField;
    cdsMarginAlertCASH_ONHOLD: TFloatField;
    cdsMarginAlertARAMT: TFloatField;
    cdsMarginAlertAPAMT: TFloatField;
    cdsMarginAlertCASH_OUTS: TFloatField;
    cdsMarginAlertCASH_OTHERS: TFloatField;
    cdsMarginAlertRATIO: TFloatField;
    cdsMarginAlertCASH_DRAWDOWN: TFloatField;
    cdsMarginAlertSTOCK_DRAWDOWN: TFloatField;
    cdsMarginAlertCASH_SHORTFALL: TFloatField;
    cdsMarginAlertSTOCK_SHORTFALL: TFloatField;
    cdsMarginAlertMODDA: TDateTimeField;
    cdsMarginAlertMODUI: TStringField;
    cdsMarginAlertAPPDA: TDateTimeField;
    cdsMarginAlertAPPUI: TStringField;
    cdsMarginAlertUNDER4Y: TIntegerField;
    cdsMarginAlertUNDER4YDA: TDateTimeField;
    cdsMarginAlertNOTES4Y: TStringField;
    cdsMarginAlertISDEL: TIntegerField;
    cdsMarginAlertID: TLargeintField;
    cdsMarginAlertMCALDAY: TIntegerField;
    cdsMarginAlertMCALSTATUS: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtAlertDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    gvwMasterMGRALRTID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterALERTDATE: TcxGridDBBandedColumn;
    gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterCASH_QQ: TcxGridDBBandedColumn;
    gvwMasterCASH_SUBACC: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHOLD: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    gvwMasterCASH_OUTS: TcxGridDBBandedColumn;
    gvwMasterCASH_OTHERS: TcxGridDBBandedColumn;
    gvwMasterRATIO: TcxGridDBBandedColumn;
    gvwMasterCASH_DRAWDOWN: TcxGridDBBandedColumn;
    gvwMasterSTOCK_DRAWDOWN: TcxGridDBBandedColumn;
    gvwMasterCASH_SHORTFALL: TcxGridDBBandedColumn;
    gvwMasterSTOCK_SHORTFALL: TcxGridDBBandedColumn;
    gvwMasterMCALDAY: TcxGridDBBandedColumn;
    gvwMasterMCALSTATUS: TcxGridDBBandedColumn;
    cdsMarginAlertACCCODE: TStringField;
    cdsMarginAlertACCNAME: TStringField;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarginAlertList: TfrmMarginAlertList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMarginAlertList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate    := dtAlertDate.Date;
  ReportContainer.Params[1].AsInteger := cdsMarginAlertACCID.AsInteger  ;
  inherited;
end;

procedure TfrmMarginAlertList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsMarginAlert.Close;
  cdsMarginAlert.Params[0].AsDate := dtAlertDate.Date;
  cdsMarginAlert.Open;
end;

procedure TfrmMarginAlertList.FormShow(Sender: TObject);
begin
  inherited;
  dtAlertDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
