unit FormLoadBalanceList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmLendBorrowList = class(TfrmBrowseData)
    cdsLoadBalanceList: TNClientDataset;
    cdsLoadBalanceListLBID: TLargeintField;
    cdsLoadBalanceListLBNO: TStringField;
    cdsLoadBalanceListENTRYDATE: TDateField;
    cdsLoadBalanceListLBDATE: TDateField;
    cdsLoadBalanceListDUEDATE: TDateField;
    cdsLoadBalanceListACCID: TLargeintField;
    cdsLoadBalanceListACCNO: TStringField;
    cdsLoadBalanceListACCNAME: TStringField;
    cdsLoadBalanceListCP_ACCID: TLargeintField;
    cdsLoadBalanceListCP_ACCNO: TStringField;
    cdsLoadBalanceListCP_ACCNAME: TStringField;
    cdsLoadBalanceListLB: TStringField;
    cdsLoadBalanceListLB_CHARGESRATE: TFloatField;
    cdsLoadBalanceListLB_DAY: TIntegerField;
    cdsLoadBalanceListARO: TStringField;
    cdsLoadBalanceListSTAT: TStringField;
    cdsLoadBalanceListSETTLEDDATE: TDateField;
    cdsLoadBalanceListMODDA: TDateTimeField;
    cdsLoadBalanceListMODUI: TStringField;
    cdsLoadBalanceListAPPDA: TDateTimeField;
    cdsLoadBalanceListAPPUI: TStringField;
    cdsLoadBalanceListUNDER4Y: TIntegerField;
    cdsLoadBalanceListUNDER4YDA: TDateTimeField;
    cdsLoadBalanceListNOTES4Y: TStringField;
    cdsLoadBalanceListISDEL: TIntegerField;
    cdsLoadBalanceListID: TLargeintField;
    gvwMasterLBID: TcxGridDBBandedColumn;
    gvwMasterLBNO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterLBDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCP_ACCID: TcxGridDBBandedColumn;
    gvwMasterCP_ACCNO: TcxGridDBBandedColumn;
    gvwMasterCP_ACCNAME: TcxGridDBBandedColumn;
    gvwMasterLB: TcxGridDBBandedColumn;
    gvwMasterLB_CHARGESRATE: TcxGridDBBandedColumn;
    gvwMasterLB_DAY: TcxGridDBBandedColumn;
    gvwMasterARO: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsLoadBalance_H: TNClientDataset;
    cdsLoadBalance_HLBID: TLargeintField;
    cdsLoadBalance_HLBNO: TStringField;
    cdsLoadBalance_HENTRYDATE: TDateField;
    cdsLoadBalance_HLBDATE: TDateField;
    cdsLoadBalance_HDUEDATE: TDateField;
    cdsLoadBalance_HACCID: TLargeintField;
    cdsLoadBalance_HACCNO: TStringField;
    cdsLoadBalance_HACCNAME: TStringField;
    cdsLoadBalance_HCP_ACCID: TLargeintField;
    cdsLoadBalance_HCP_ACCNO: TStringField;
    cdsLoadBalance_HCP_ACCNAME: TStringField;
    cdsLoadBalance_HLB: TStringField;
    cdsLoadBalance_HLB_CHARGESRATE: TFloatField;
    cdsLoadBalance_HLB_DAY: TIntegerField;
    cdsLoadBalance_HARO: TStringField;
    cdsLoadBalance_HSTAT: TStringField;
    cdsLoadBalance_HSETTLEDDATE: TDateField;
    cdsLoadBalance_HMODDA: TDateTimeField;
    cdsLoadBalance_HMODUI: TStringField;
    cdsLoadBalance_HAPPDA: TDateTimeField;
    cdsLoadBalance_HAPPUI: TStringField;
    cdsLoadBalance_HUNDER4Y: TIntegerField;
    cdsLoadBalance_HUNDER4YDA: TDateTimeField;
    cdsLoadBalance_HNOTES4Y: TStringField;
    cdsLoadBalance_HISDEL: TIntegerField;
    cdsLoadBalance_HID: TLargeintField;
    cdsLoadBalance_HqryLoadBalance_D: TDataSetField;
    cdsLoadBalance_D: TNClientDataset;
    cdsLoadBalance_DLBID: TLargeintField;
    cdsLoadBalance_DSTOCKID: TIntegerField;
    cdsLoadBalance_DSTOCKCODE: TStringField;
    cdsLoadBalance_DSTOCKNAME: TStringField;
    cdsLoadBalance_DLB_PRICE: TFloatField;
    cdsLoadBalance_DLB_QTY: TFloatField;
    cdsLoadBalance_DCHARGES_AMT: TFloatField;
    cdsLoadBalance_DCHARGES_PAYDATE: TDateField;
    cdsLoadBalance_DCHARGES_PAID: TStringField;
    cdsLoadBalance_DMODDA: TDateTimeField;
    cdsLoadBalance_DMODUI: TStringField;
    cdsLoadBalance_DAPPDA: TDateTimeField;
    cdsLoadBalance_DAPPUI: TStringField;
    cdsLoadBalance_DUNDER4Y: TIntegerField;
    cdsLoadBalance_DUNDER4YDA: TDateTimeField;
    cdsLoadBalance_DNOTES4Y: TStringField;
    cdsLoadBalance_DISDEL: TIntegerField;
    cdsLoadBalance_DID: TLargeintField;
    cdsLoadBalance_HACCCODETMP: TStringField;
    cdsLoadBalance_HACCNAMETMP: TStringField;
    cdsLoadBalance_HCPACCCODETMP: TStringField;
    cdsLoadBalance_HCPACCNAMETMP: TStringField;
    cdsLoadBalance_DSTOCKCODETMP: TStringField;
    cdsLoadBalance_DSTOCKNAMETMP: TStringField;
    cdsLuInstrument: TClientDataSet;
    cdsLuInstrumentINSTRUMENT_ID: TLargeintField;
    cdsLuInstrumentINSTRUMENT_CODE: TStringField;
    cdsLuInstrumentLOCALCODE: TStringField;
    cdsLuInstrumentMARKETCODE: TStringField;
    cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsLuInstrumentSHORTNAME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsLoadBalance_HNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLendBorrowList: TfrmLendBorrowList;

implementation

{$R *.dfm}

uses FormLoadBalance, DataGlobal, DataLookup;

procedure TfrmLendBorrowList.cdsLoadBalance_HNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsLoadBalance_HENTRYDATE.AsDateTime := Date;
  cdsLoadBalance_HSTAT.AsString        := 'O';
  cdsLoadBalance_HLBDATE.AsDateTime    := Date;
  cdsLoadBalance_HDUEDATE.AsDateTime   := Date;
//  cdsLoadBalance_HLB_DAY.AsInteger     := Round(cdsLoadBalance_HDUEDATE.AsFloat - cdsLoadBalance_HLBDATE.AsFloat);
end;

procedure TfrmLendBorrowList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmLoadBalance;
end;

procedure TfrmLendBorrowList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsLoadBalanceList.Close;
  cdsLoadBalanceList.Open;

  dmGlobal.IntDataLookup.cdsLuAccount.Close;
  dmGlobal.IntDataLookup.cdsLuAccount.Open;

  cdsLuInstrument.Close;
  cdsLuInstrument.Open;
end;

end.
