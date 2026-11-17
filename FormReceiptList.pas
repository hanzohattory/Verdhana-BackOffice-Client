unit FormReceiptList;

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
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxCalendar, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  System.DateUtils, System.Actions, System.ImageList;

type
  TfrmReceiptList = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    cbBank: TcxLookupComboBox;
    edBankName: TcxTextEdit;
    edBankBranch: TcxTextEdit;
    edBankAccNo: TcxTextEdit;
    edBankAccName: TcxTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    cdsReceiptList: TNClientDataset;
    cdsReceiptListVOUCHERID: TLargeintField;
    cdsReceiptListVOUCHERNO: TStringField;
    cdsReceiptListVOUCHERTYPE: TStringField;
    cdsReceiptListENTRYDATE: TDateField;
    cdsReceiptListVALUEDATE: TDateField;
    cdsReceiptListTRTYPE: TStringField;
    cdsReceiptListACCID: TLargeintField;
    cdsReceiptListACCNO: TStringField;
    cdsReceiptListACCNAME: TStringField;
    cdsReceiptListCUST_BANKID: TIntegerField;
    cdsReceiptListCUST_BANKCODE: TStringField;
    cdsReceiptListCUST_BANKACCNO: TStringField;
    cdsReceiptListCUST_BANKACCNAME: TStringField;
    cdsReceiptListBROKER_BANKID: TIntegerField;
    cdsReceiptListBROKER_BANKCODE: TStringField;
    cdsReceiptListBROKER_BANKACCNO: TStringField;
    cdsReceiptListBROKER_BANKACCNAME: TStringField;
    cdsReceiptListSIID: TLargeintField;
    cdsReceiptListSINO: TStringField;
    cdsReceiptListTRDDATE: TDateField;
    cdsReceiptListDUEDATE: TDateField;
    cdsReceiptListSETTLE_SIDE: TStringField;
    cdsReceiptListSETTLE_CCY: TStringField;
    cdsReceiptListSETTLE_EXRATE: TFloatField;
    cdsReceiptListSETTLE_AMT: TFloatField;
    cdsReceiptListTRANSFERMODE: TStringField;
    cdsReceiptListCHARGESAMT: TFloatField;
    cdsReceiptListCCYCODE: TStringField;
    cdsReceiptListAMT: TFloatField;
    cdsReceiptListCASH_ONHAND: TFloatField;
    cdsReceiptListSTAT: TStringField;
    cdsReceiptListMODDA: TDateTimeField;
    cdsReceiptListMODUI: TStringField;
    cdsReceiptListAPPDA: TDateTimeField;
    cdsReceiptListAPPUI: TStringField;
    cdsReceiptListUNDER4Y: TIntegerField;
    cdsReceiptListUNDER4YDA: TDateTimeField;
    cdsReceiptListNOTES4Y: TStringField;
    cdsReceiptListISDEL: TIntegerField;
    cdsReceiptListID: TLargeintField;
    cdsReceipt: TNClientDataset;
    cdsReceiptVOUCHERID: TLargeintField;
    cdsReceiptVOUCHERNO: TStringField;
    cdsReceiptVOUCHERTYPE: TStringField;
    cdsReceiptENTRYDATE: TDateField;
    cdsReceiptVALUEDATE: TDateField;
    cdsReceiptTRTYPE: TStringField;
    cdsReceiptACCID: TLargeintField;
    cdsReceiptACCNO: TStringField;
    cdsReceiptACCNAME: TStringField;
    cdsReceiptCUST_BANKID: TIntegerField;
    cdsReceiptCUST_BANKCODE: TStringField;
    cdsReceiptCUST_BANKACCNO: TStringField;
    cdsReceiptCUST_BANKACCNAME: TStringField;
    cdsReceiptBROKER_BANKID: TIntegerField;
    cdsReceiptBROKER_BANKCODE: TStringField;
    cdsReceiptBROKER_BANKACCNO: TStringField;
    cdsReceiptBROKER_BANKACCNAME: TStringField;
    cdsReceiptSIID: TLargeintField;
    cdsReceiptSINO: TStringField;
    cdsReceiptTRDDATE: TDateField;
    cdsReceiptDUEDATE: TDateField;
    cdsReceiptSETTLE_SIDE: TStringField;
    cdsReceiptSETTLE_CCY: TStringField;
    cdsReceiptSETTLE_EXRATE: TFloatField;
    cdsReceiptSETTLE_AMT: TFloatField;
    cdsReceiptTRANSFERMODE: TStringField;
    cdsReceiptCHARGESAMT: TFloatField;
    cdsReceiptCCYCODE: TStringField;
    cdsReceiptAMT: TFloatField;
    cdsReceiptCASH_ONHAND: TFloatField;
    cdsReceiptSTAT: TStringField;
    cdsReceiptMODDA: TDateTimeField;
    cdsReceiptMODUI: TStringField;
    cdsReceiptAPPDA: TDateTimeField;
    cdsReceiptAPPUI: TStringField;
    cdsReceiptUNDER4Y: TIntegerField;
    cdsReceiptUNDER4YDA: TDateTimeField;
    cdsReceiptNOTES4Y: TStringField;
    cdsReceiptISDEL: TIntegerField;
    cdsReceiptID: TLargeintField;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERNO: TcxGridDBBandedColumn;
    gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKID: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKID: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCY: TcxGridDBBandedColumn;
    gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_AMT: TcxGridDBBandedColumn;
    gvwMasterTRANSFERMODE: TcxGridDBBandedColumn;
    gvwMasterCHARGESAMT: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterAMT: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actViewData: TNAction;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbBankPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceiptList: TfrmReceiptList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReceiptList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsReceiptList.Close;
  cdsReceiptList.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsReceiptList.Params[1].AsString := 'R';
  cdsReceiptList.Params[2].AsInteger := cbBank.EditValue;
  cdsReceiptList.Open;
end;

procedure TfrmReceiptList.cbBankPropertiesChange(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', cbBank.EditValue, []) then
    begin
      edBankName.Text := cdsLuBankAccountBNNAME.AsString;
      edBankBranch.Text := cdsLuBankAccountBANKBRANCH.AsString;
      edBankAccNo.Text := cdsLuBankAccountBANKACCNO.AsString;
      edBankAccName.Text := cdsLuBankAccountBANKACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReceiptList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;
  end;

  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmReceiptList);

end.
