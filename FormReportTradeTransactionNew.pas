unit FormReportTradeTransactionNew;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, cxCheckBox;

type
  TfrmReportTradeTransactionNew = class(TfrmBrowseData)
    cdsReportTradeTransactionNew: TNClientDataset;
    lcFilter: TdxLayoutControl;
    dtStart: TcxDateEdit;
    btnView: TcxButton;
    dtEnd: TcxDateEdit;
    lcFilterGroup_Root: TdxLayoutGroup;
    lcFilterItem2: TdxLayoutItem;
    lcFilterGroup1: TdxLayoutGroup;
    lcFilterItem3: TdxLayoutItem;
    lcFilterItem4: TdxLayoutItem;
    gvwMasterTradeDate: TcxGridDBBandedColumn;
    gvwMasterSettleDate: TcxGridDBBandedColumn;
    gvwMasterIDXTrade: TcxGridDBBandedColumn;
    gvwMasterAccountCode: TcxGridDBBandedColumn;
    gvwMasterAccountName: TcxGridDBBandedColumn;
    gvwMasterSubRek: TcxGridDBBandedColumn;
    gvwMasterStockCode: TcxGridDBBandedColumn;
    gvwMasterBoard: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMatchTime: TcxGridDBBandedColumn;
    gvwMasterMatchQty: TcxGridDBBandedColumn;
    gvwMasterMatchPrice: TcxGridDBBandedColumn;
    gvwMasterMatchhValue: TcxGridDBBandedColumn;
    gvwMasterCPBroker: TcxGridDBBandedColumn;
    gvwMasterCPDealer: TcxGridDBBandedColumn;
    chkAll: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    cbBoard: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cdsReportTradeTransactionNewPeriod: TWideStringField;
    cdsReportTradeTransactionNewID: TLargeintField;
    cdsReportTradeTransactionNewIDXTRADEID: TStringField;
    cdsReportTradeTransactionNewIDXORDERID: TStringField;
    cdsReportTradeTransactionNewTRADEDATE: TDateTimeField;
    cdsReportTradeTransactionNewSTOCKCODE: TStringField;
    cdsReportTradeTransactionNewBOARDCODE: TStringField;
    cdsReportTradeTransactionNewMKTID: TStringField;
    cdsReportTradeTransactionNewBS: TStringField;
    cdsReportTradeTransactionNewMTIME: TDateTimeField;
    cdsReportTradeTransactionNewMQTY: TFloatField;
    cdsReportTradeTransactionNewLOTSIZE: TFloatField;
    cdsReportTradeTransactionNewMPRICE: TFloatField;
    cdsReportTradeTransactionNewCPBROKER: TStringField;
    cdsReportTradeTransactionNewCPDEALER: TStringField;
    cdsReportTradeTransactionNewMODDA: TDateTimeField;
    cdsReportTradeTransactionNewMODUI: TStringField;
    cdsReportTradeTransactionNewINSDA: TDateTimeField;
    cdsReportTradeTransactionNewINSUI: TStringField;
    cdsReportTradeTransactionNewSID: TStringField;
    cdsReportTradeTransactionNewBRKREFF: TStringField;
    cdsReportTradeTransactionNewEXTREF_CODE: TStringField;
    cdsReportTradeTransactionNewALLOCQTY: TFloatField;
    cdsReportTradeTransactionNewALLOC: TStringField;
    cdsReportTradeTransactionNewACCINIT: TStringField;
    cdsReportTradeTransactionNewTRDMEMO: TStringField;
    cdsReportTradeTransactionNewACCID: TIntegerField;
    cdsReportTradeTransactionNewORDSOURCE: TStringField;
    cdsReportTradeTransactionNewDEALTICKETID: TLargeintField;
    cdsReportTradeTransactionNewORDERCODE: TStringField;
    cdsReportTradeTransactionNewISGENERATED: TStringField;
    cdsReportTradeTransactionNewACCSOPID: TIntegerField;
    cdsReportTradeTransactionNewCHANNELCODE: TStringField;
    cdsReportTradeTransactionNewDAYTRADE: TBooleanField;
    cdsReportTradeTransactionNewAVGPRICE: TFloatField;
    cdsReportTradeTransactionNewAVGPRICEFEE: TFloatField;
    cdsReportTradeTransactionNewSTOCK_AVGPRICE: TFloatField;
    cdsReportTradeTransactionNewACCCODE: TStringField;
    cdsReportTradeTransactionNewACCNAME: TStringField;
    cdsReportTradeTransactionNewSALESCODE: TStringField;
    cdsReportTradeTransactionNewSALESNAME: TStringField;
    cdsReportTradeTransactionNewBRANCHCODE: TStringField;
    cdsReportTradeTransactionNewBRANCHNAME: TStringField;
    cdsReportTradeTransactionNewSETTLE_DATE: TDateTimeField;
    cdsReportTradeTransactionNewMVALUE: TIntegerField;
    procedure btnViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsReportTradeTransactionNewCalcFields(DataSet: TDataSet);


   

   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTradeTransactionNew: TfrmReportTradeTransactionNew;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportTradeTransactionNew.btnViewClick(Sender: TObject);
var
  iBoardID, iAll: integer;
begin
  if VarIsNull(cbBoard.EditValue) then iBoardID := 0 else iBoardID := cbBoard.EditValue;
  if VarIsNull(chkAll.EditValue) then iAll := 0 else iAll := chkAll.EditValue;
  cdsReportTradeTransactionNew.Close;
  cdsReportTradeTransactionNew.Params[0].Value := dtStart.Date;
  cdsReportTradeTransactionNew.Params[1].Value := dtEnd.Date;
  cdsReportTradeTransactionNew.Params[2].Value := iBoardID;
  cdsReportTradeTransactionNew.Params[3].Value := iAll;
  cdsReportTradeTransactionNew.Open;

  inherited;

end;
procedure TfrmReportTradeTransactionNew.cdsReportTradeTransactionNewCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsReportTradeTransactionNewMVALUE.AsInteger := cdsReportTradeTransactionNewMQTY.AsInteger * cdsReportTradeTransactionNewMPRICE.AsInteger;
end;

procedure TfrmReportTradeTransactionNew.FormShow(Sender: TObject);
var
  FTradeDate: TDate;
begin
  inherited;
  FTradeDate := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := FTradeDate;
  dtEnd.EditValue   := FTradeDate;
  chkAll.EditValue  := 1;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.open;
  end;
end;


end.
