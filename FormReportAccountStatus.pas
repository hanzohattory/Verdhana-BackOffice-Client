unit FormReportAccountStatus;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  System.Actions, System.ImageList, dxDateRanges, dxScrollbarAnnotations,
  cxDBLookupComboBox, cxBarEditItem;

type
  TfrmReportAccountStatus = class(TfrmBrowseData)
    cdsAccountStatusList: TNClientDataset;
    cdsAccountStatusListACCID: TIntegerField;
    cdsAccountStatusListACCCODE: TStringField;
    cdsAccountStatusListACCNAME: TStringField;
    cdsAccountStatusListSIDNO: TStringField;
    cdsAccountStatusListSTAT: TStringField;
    cdsAccountStatusListPRDDESC: TStringField;
    cdsAccountStatusListCUST_TYPE: TStringField;
    cdsAccountStatusListACCTYPE: TStringField;
    cdsAccountStatusListSALESCODE: TStringField;
    cdsAccountStatusListSALESNAME: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterPRDDESC: TcxGridDBBandedColumn;
    gvwMasterCUST_TYPE: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    cmbAccountStatus: TcxBarEditItem;
    cdsAccountStatusListTRADINGID: TStringField;
    cdsAccountStatusListENTTCODE: TStringField;
    cdsAccountStatusListKSEI_SID: TStringField;
    gvwMasterTRADINGID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterKSEI_SID: TcxGridDBBandedColumn;
    cdsAccountStatusListphone: TStringField;
    cdsAccountStatusListEMAIL: TStringField;
    cdsAccountStatusListMAIN_ACCID: TIntegerField;
    cdsAccountStatusListmainAccountCode: TStringField;
    cdsAccountStatusListmainAccountName: TStringField;
    gvwMasterphone: TcxGridDBBandedColumn;
    gvwMasterEMAIL: TcxGridDBBandedColumn;
    gvwMasterMAIN_ACCID: TcxGridDBBandedColumn;
    gvwMastermainAccountCode: TcxGridDBBandedColumn;
    gvwMastermainAccountName: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportAccountStatus: TfrmReportAccountStatus;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportAccountStatus.actPrintExecute(Sender: TObject);
begin
  cdsAccountStatusList.Close;
  cdsAccountStatusList.Params[0].AsString := cmbAccountStatus.EditValue;
  cdsAccountStatusList.Open;

  ReportContainer.Params[0].AsString := cmbAccountStatus.EditValue;
  inherited;
end;

procedure TfrmReportAccountStatus.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsAccountStatusList.Close;
  cdsAccountStatusList.Params[0].AsString := cmbAccountStatus.EditValue;
  cdsAccountStatusList.Open
end;

procedure TfrmReportAccountStatus.FormShow(Sender: TObject);
begin
  inherited;
  cmbAccountStatus.EditValue := 'A';
end;

end.
