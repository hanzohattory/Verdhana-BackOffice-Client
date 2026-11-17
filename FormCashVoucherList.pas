unit FormCashVoucherList;

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
  dxLayoutControlAdapters, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NReportClient,
  System.DateUtils, System.Actions, System.ImageList;

type
  TfrmCashVoucherList = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsCashVoucherList: TNClientDataset;
    cdsCashVoucherListVOUCHERID: TLargeintField;
    cdsCashVoucherListVOUCHERNO: TStringField;
    cdsCashVoucherListVOUCHERTYPE: TStringField;
    cdsCashVoucherListENTRYDATE: TDateField;
    cdsCashVoucherListVALUEDATE: TDateField;
    cdsCashVoucherListTRTYPE: TStringField;
    cdsCashVoucherListACCID: TLargeintField;
    cdsCashVoucherListACCNO: TStringField;
    cdsCashVoucherListACCNAME: TStringField;
    cdsCashVoucherListCUST_BANKCODE: TStringField;
    cdsCashVoucherListCUST_BANKACCNO: TStringField;
    cdsCashVoucherListCUST_BANKACCNAME: TStringField;
    cdsCashVoucherListBROKER_BANKCODE: TStringField;
    cdsCashVoucherListBROKER_BANKACCNO: TStringField;
    cdsCashVoucherListBROKER_BANKACCNAME: TStringField;
    cdsCashVoucherListSIID: TLargeintField;
    cdsCashVoucherListSINO: TStringField;
    cdsCashVoucherListTRDDATE: TDateField;
    cdsCashVoucherListDUEDATE: TDateField;
    cdsCashVoucherListSETTLE_SIDE: TStringField;
    cdsCashVoucherListSETTLE_CCY: TStringField;
    cdsCashVoucherListSETTLE_EXRATE: TFloatField;
    cdsCashVoucherListSETTLE_AMT: TFloatField;
    cdsCashVoucherListTRANSFERMODE: TStringField;
    cdsCashVoucherListCHARGESAMT: TFloatField;
    cdsCashVoucherListCCYCODE: TStringField;
    cdsCashVoucherListAMT: TFloatField;
    cdsCashVoucherListCASH_ONHAND: TFloatField;
    cdsCashVoucherListSTAT: TStringField;
    cdsCashVoucherListMODDA: TDateTimeField;
    cdsCashVoucherListMODUI: TStringField;
    cdsCashVoucherListAPPDA: TDateTimeField;
    cdsCashVoucherListAPPUI: TStringField;
    cdsCashVoucherListUNDER4Y: TIntegerField;
    cdsCashVoucherListUNDER4YDA: TDateTimeField;
    cdsCashVoucherListNOTES4Y: TStringField;
    cdsCashVoucherListISDEL: TIntegerField;
    cdsCashVoucherListID: TLargeintField;
    actViewData: TNAction;
    actViewVoucher: TNAction;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERNO: TcxGridDBBandedColumn;
    gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCNAME: TcxGridDBBandedColumn;
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
    actPosting: TNAction;
    actPostingAll: TNAction;
    PostingCashVoucher1: TMenuItem;
    PostingAllCashVoucher1: TMenuItem;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actPostingAllExecute(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashVoucherList: TfrmCashVoucherList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashVoucherList.actPostingAllExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting all cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostAllCashVoucher(DateTimeToFileDate(DateOf(dtValueDate.Date)));
    ShowMessage('Finished Posting All Cash Voucher.');
  end;
end;

procedure TfrmCashVoucherList.actPostingExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostCashVoucher(cdsCashVoucherListVOUCHERID.AsLargeInt);
    ShowMessage('Finished Posting Cash Voucher.');
  end;
end;

procedure TfrmCashVoucherList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsCashVoucherList.Active and (not cdsCashVoucherList.IsEmpty);
end;

procedure TfrmCashVoucherList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashVoucherList.Close;
  cdsCashVoucherList.Params[0].AsDate := DateOf(dtValueDate.Date);
  cdsCashVoucherList.Open;
end;

procedure TfrmCashVoucherList.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmCashVoucherList);

end.
