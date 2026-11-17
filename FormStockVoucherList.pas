unit FormStockVoucherList;

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
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, NReportRPC,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter,
  cxGridLevel, cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, cxImageComboBox, System.DateUtils,
  System.Actions, System.ImageList, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockVoucherList = class(TfrmBrowseData)
    cdsStockVoucherList: TNClientDataset;
    cdsStockVoucherListVOUCHERID: TLargeintField;
    cdsStockVoucherListVOUCHERNO: TStringField;
    cdsStockVoucherListVOUCHERTYPE: TStringField;
    cdsStockVoucherListENTRYDATE: TDateField;
    cdsStockVoucherListVALUEDATE: TDateField;
    cdsStockVoucherListTRTYPE: TStringField;
    cdsStockVoucherListACCID: TLargeintField;
    cdsStockVoucherListACCNO: TStringField;
    cdsStockVoucherListACCNAME: TStringField;
    cdsStockVoucherListCUST_BANKCODE: TStringField;
    cdsStockVoucherListCUST_BANKACCNO: TStringField;
    cdsStockVoucherListCUST_BANKACCNAME: TStringField;
    cdsStockVoucherListBROKER_BANKCODE: TStringField;
    cdsStockVoucherListBROKER_BANKACCNO: TStringField;
    cdsStockVoucherListBROKER_BANKACCNAME: TStringField;
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
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_QTY: TcxGridDBBandedColumn;
    gvwMasterTRANSFERMODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterSTOCK_ONHAND: TcxGridDBBandedColumn;
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
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    actViewVoucher: TNAction;
    cdsStockVoucherListSTOCKID: TIntegerField;
    cdsStockVoucherListSTOCKCODE: TStringField;
    cdsStockVoucherListCUST_CUSTODYID: TLargeintField;
    cdsStockVoucherListCUST_CUSTODYBRANCH: TStringField;
    cdsStockVoucherListBROKER_CUSTODYID: TLargeintField;
    cdsStockVoucherListBROKER_CUSTODYBRANCH: TStringField;
    cdsStockVoucherListREMARKS: TStringField;
    cdsStockVoucherListLINKTYPE: TStringField;
    cdsStockVoucherListLINKID: TLargeintField;
    cdsStockVoucherListLINKNO: TStringField;
    cdsStockVoucherListTRDDATE: TDateField;
    cdsStockVoucherListDUEDATE: TDateField;
    cdsStockVoucherListSETTLE_SIDE: TStringField;
    cdsStockVoucherListSETTLE_QTY: TFloatField;
    cdsStockVoucherListTRANSFERMODE: TStringField;
    cdsStockVoucherListQTY: TFloatField;
    cdsStockVoucherListSTOCK_ONHAND: TFloatField;
    cdsStockVoucherListSETTLE_CCY: TStringField;
    cdsStockVoucherListSETTLE_AMT: TFloatField;
    cdsStockVoucherListSTAT: TStringField;
    cdsStockVoucherListMODDA: TDateTimeField;
    cdsStockVoucherListMODUI: TStringField;
    cdsStockVoucherListAPPDA: TDateTimeField;
    cdsStockVoucherListAPPUI: TStringField;
    cdsStockVoucherListUNDER4Y: TIntegerField;
    cdsStockVoucherListUNDER4YDA: TDateTimeField;
    cdsStockVoucherListNOTES4Y: TStringField;
    cdsStockVoucherListISDEL: TIntegerField;
    cdsStockVoucherListID: TLargeintField;
    actPosting: TNAction;
    N5: TMenuItem;
    Posting1: TMenuItem;
    actCancelVoucher: TNAction;
    CancelStockVoucher1: TMenuItem;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actCancelVoucherExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockVoucherList: TfrmStockVoucherList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmStockVoucherList.actCancelVoucherExecute(Sender: TObject);
var
  sVoucherID: string;
  iVoucherID: Int64;
  i: Integer;
begin
  inherited;
  for i := 0 to gvwMaster.DataController.Controller.SelectedRecordCount -1 do
  begin
    if gvwMaster.DataController.Controller.SelectedRecords[i].Values[
    gvwMasterSTAT.Index] <> 'P' then
    begin
      sVoucherID := gvwMaster.DataController.Controller.SelectedRecords[i].Values[
         gvwMasterVOUCHERID.Index];
      iVoucherID := StrToInt64Def(sVoucherID, 0);

      dmGlobal.RemoteServer.StockVoucherCancel(iVoucherID);
    end;
  end;

  MessageDlg('Cancel stock voucher has done...', mtInformation, [mbYes], 0);
  cdsStockVoucherList.Refresh;
end;

procedure TfrmStockVoucherList.actPostingExecute(Sender: TObject);
var
  sVoucherID: string;
  iVoucherID: Int64;
  i: Integer;
begin
  inherited;
  for i := 0 to gvwMaster.DataController.Controller.SelectedRecordCount -1 do
  begin
    if gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterSTAT.Index] <> 'P' then
    begin
      sVoucherID := gvwMaster.DataController.Controller.SelectedRecords[i].Values[
         gvwMasterVOUCHERID.Index];
      iVoucherID := StrToInt64Def(sVoucherID, 0);

      dmGlobal.RemoteServer.StockVoucherPosting(iVoucherID);
    end;
  end;

  MessageDlg('Posting stock voucher has done...', mtInformation, [mbYes], 0);
  cdsStockVoucherList.Refresh;
end;

procedure TfrmStockVoucherList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsStockVoucherList.Close;
  cdsStockVoucherList.Params[0].AsDate := DateOf(dtValueDate.Date);
  cdsStockVoucherList.Open;
end;

procedure TfrmStockVoucherList.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmStockVoucherList);

end.
