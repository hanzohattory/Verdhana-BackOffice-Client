unit FormReportTradeTransactionList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGrid;

type
  TfrmReportTradeTransactionList = class(TfrmBrowseData)
    cdsReportTraseTrans: TNClientDataset;
    cdsReportTraseTransPeriod: TWideStringField;
    cdsReportTraseTransID: TLargeintField;
    cdsReportTraseTransIDXTRADEID: TStringField;
    cdsReportTraseTransIDXORDERID: TStringField;
    cdsReportTraseTransTRADEDATE: TDateTimeField;
    cdsReportTraseTransSTOCKCODE: TStringField;
    cdsReportTraseTransBOARDCODE: TStringField;
    cdsReportTraseTransMKTID: TStringField;
    cdsReportTraseTransBS: TStringField;
    cdsReportTraseTransMTIME: TDateTimeField;
    cdsReportTraseTransMQTY: TFloatField;
    cdsReportTraseTransLOTSIZE: TFloatField;
    cdsReportTraseTransMPRICE: TFloatField;
    cdsReportTraseTransCPBROKER: TStringField;
    cdsReportTraseTransCPDEALER: TStringField;
    cdsReportTraseTransMODDA: TDateTimeField;
    cdsReportTraseTransMODUI: TStringField;
    cdsReportTraseTransINSDA: TDateTimeField;
    cdsReportTraseTransINSUI: TStringField;
    cdsReportTraseTransSID: TStringField;
    cdsReportTraseTransBRKREFF: TStringField;
    cdsReportTraseTransEXTREF_CODE: TStringField;
    cdsReportTraseTransALLOCQTY: TFloatField;
    cdsReportTraseTransALLOC: TStringField;
    cdsReportTraseTransACCINIT: TStringField;
    cdsReportTraseTransTRDMEMO: TStringField;
    cdsReportTraseTransACCID: TIntegerField;
    cdsReportTraseTransORDSOURCE: TStringField;
    cdsReportTraseTransDEALTICKETID: TLargeintField;
    cdsReportTraseTransORDERCODE: TStringField;
    cdsReportTraseTransISGENERATED: TStringField;
    cdsReportTraseTransACCSOPID: TIntegerField;
    cdsReportTraseTransCHANNELCODE: TStringField;
    cdsReportTraseTransDAYTRADE: TBooleanField;
    cdsReportTraseTransAVGPRICE: TFloatField;
    cdsReportTraseTransAVGPRICEFEE: TFloatField;
    cdsReportTraseTransSTOCK_AVGPRICE: TFloatField;
    cdsReportTraseTransACCCODE: TStringField;
    cdsReportTraseTransACCNAME: TStringField;
    cdsReportTraseTransSALESCODE: TStringField;
    cdsReportTraseTransSALESNAME: TStringField;
    cdsReportTraseTransBRANCHCODE: TStringField;
    cdsReportTraseTransBRANCHNAME: TStringField;
    cdsReportTraseTransCUSTODYACCNO: TStringField;
    cdsReportTraseTransSETTLE_DATE: TDateTimeField;
    gvwMasterPeriod: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterIDXTRADEID: TcxGridDBBandedColumn;
    gvwMasterIDXORDERID: TcxGridDBBandedColumn;
    gvwMasterTRADEDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterBOARDCODE: TcxGridDBBandedColumn;
    gvwMasterMKTID: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMTIME: TcxGridDBBandedColumn;
    gvwMasterMQTY: TcxGridDBBandedColumn;
    gvwMasterLOTSIZE: TcxGridDBBandedColumn;
    gvwMasterMPRICE: TcxGridDBBandedColumn;
    gvwMasterCPBROKER: TcxGridDBBandedColumn;
    gvwMasterCPDEALER: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterINSDA: TcxGridDBBandedColumn;
    gvwMasterINSUI: TcxGridDBBandedColumn;
    gvwMasterSID: TcxGridDBBandedColumn;
    gvwMasterBRKREFF: TcxGridDBBandedColumn;
    gvwMasterEXTREF_CODE: TcxGridDBBandedColumn;
    gvwMasterALLOCQTY: TcxGridDBBandedColumn;
    gvwMasterALLOC: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterTRDMEMO: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterORDSOURCE: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterORDERCODE: TcxGridDBBandedColumn;
    gvwMasterISGENERATED: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterCHANNELCODE: TcxGridDBBandedColumn;
    gvwMasterDAYTRADE: TcxGridDBBandedColumn;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterAVGPRICEFEE: TcxGridDBBandedColumn;
    gvwMasterSTOCK_AVGPRICE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwMasterSETTLE_DATE: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTradeTransactionList: TfrmReportTradeTransactionList;

implementation

uses DataGlobal;

{$R *.dfm}

end.
