unit FormCashTransaction;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Datasnap.DBClient, NClientDataset, cxDropDownEdit,
  cxImageComboBox, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxCalendar, dxLayoutControl, NReportClient, NDatasetContainer,
  dxBar, cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, System.DateUtils,
  System.Actions, System.ImageList;

type
  TfrmCashTransaction = class(TfrmBrowseData)
    lcFilter: TdxLayoutControl;
    dtStart: TcxDateEdit;
    btnView: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    lcFilterItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    lcFilterItem3: TdxLayoutItem;
    cbFilter: TcxImageComboBox;
    lcFilterItem1: TdxLayoutItem;
    dtEnd: TcxDateEdit;
    lcFilterItem4: TdxLayoutItem;
    actViewData: TNAction;
    cdsCashTransaction: TNClientDataset;
    cdsCashTransactionSIID: TLargeintField;
    cdsCashTransactionSINO: TStringField;
    cdsCashTransactionENTRYDATE: TDateField;
    cdsCashTransactionTRDDATE: TDateField;
    cdsCashTransactionDUEDATE: TDateField;
    cdsCashTransactionSITYPE: TStringField;
    cdsCashTransactionSI_DESC: TStringField;
    cdsCashTransactionSETTLE_SIDE: TStringField;
    cdsCashTransactionACCID: TLargeintField;
    cdsCashTransactionACCCODE: TStringField;
    cdsCashTransactionACCNAME: TStringField;
    cdsCashTransactionACCINIT: TStringField;
    cdsCashTransactionACCTYPE: TStringField;
    cdsCashTransactionPRDCODE: TStringField;
    cdsCashTransactionSTOCKID: TIntegerField;
    cdsCashTransactionMARKETCODE: TStringField;
    cdsCashTransactionLOCALCODE: TStringField;
    cdsCashTransactionSHORTNAME: TStringField;
    cdsCashTransactionINSTRUMENT_TYPE_CODE: TStringField;
    cdsCashTransactionPRICE: TFloatField;
    cdsCashTransactionQTY: TFloatField;
    cdsCashTransactionBASE_CCYCODE: TStringField;
    cdsCashTransactionBASE_NETAMT: TFloatField;
    cdsCashTransactionSETTLE_CCYCODE: TStringField;
    cdsCashTransactionSETTLE_EXRATE: TFloatField;
    cdsCashTransactionSETTLE_NETAMT: TFloatField;
    cdsCashTransactionSETTLED_AMT: TFloatField;
    cdsCashTransactionSTAT: TStringField;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashTransaction: TfrmCashTransaction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashTransaction.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashTransaction.Close;
  cdsCashTransaction.Params[0].AsString := VarToStr(cbFilter.EditValue);
  cdsCashTransaction.Params[1].AsDate := DateOf(dtStart.Date);
  cdsCashTransaction.Params[2].AsDate := DateOf(dtEnd.Date);
  cdsCashTransaction.Open;
end;

procedure TfrmCashTransaction.FormCreate(Sender: TObject);
begin
  inherited;
  cbFilter.EditValue := 'E';
  dtStart.Date := dmGlobal.RemoteServer.GetTransDate;
  dtEnd.Date := dtStart.Date;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuSIType.Active then
      cdsLuSIType.Open;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open;

    if not cdsLuInstrumentType.Active then
      cdsLuInstrumentType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmCashTransaction);

end.
