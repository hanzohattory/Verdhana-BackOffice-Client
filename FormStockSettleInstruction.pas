unit FormStockSettleInstruction;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportRPC,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, NReportClient, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.DateUtils, System.Actions, System.ImageList,
  dxDateRanges;

type
  TfrmStockSettleInstruction = class(TfrmBrowseData)
    cdsStockSettleList: TNClientDataset;
    cdsSIStock: TNClientDataset;
    dsSIStock: TDataSource;
    cdsStockSettleListACCID: TLargeintField;
    cdsStockSettleListACCNO: TStringField;
    cdsStockSettleListACCNAME: TStringField;
    cdsStockSettleListSTOCKID: TIntegerField;
    cdsStockSettleListSTOCK_POS: TFloatField;
    cdsStockSettleListNETSTOCK_OD: TFloatField;
    cdsStockSettleListNETSTOCK_DUE0: TFloatField;
    cdsStockSettleListNETSTOCK_DUE1: TFloatField;
    cdsStockSettleListNETSTOCK_DUE2: TFloatField;
    cdsStockSettleListNETSTOCK_DUE22: TFloatField;
    cdsStockSettleListNET_STOCK: TFloatField;
    grdMasterLevel2: TcxGridLevel;
    gvwSIStock: TcxGridDBBandedTableView;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCK_POS: TcxGridDBBandedColumn;
    gvwMasterNETSTOCK_OD: TcxGridDBBandedColumn;
    gvwMasterNETSTOCK_DUE0: TcxGridDBBandedColumn;
    gvwMasterNETSTOCK_DUE1: TcxGridDBBandedColumn;
    gvwMasterNETSTOCK_DUE2: TcxGridDBBandedColumn;
    gvwMasterNETSTOCK_DUE21: TcxGridDBBandedColumn;
    gvwMasterNET_STOCK: TcxGridDBBandedColumn;
    gvwSIStockSIID: TcxGridDBBandedColumn;
    gvwSIStockSINO: TcxGridDBBandedColumn;
    gvwSIStockCONID: TcxGridDBBandedColumn;
    gvwSIStockDUEDATE: TcxGridDBBandedColumn;
    gvwSIStockSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwSIStockINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwSIStockACCID: TcxGridDBBandedColumn;
    gvwSIStockACCNO: TcxGridDBBandedColumn;
    gvwSIStockACCNAME: TcxGridDBBandedColumn;
    gvwSIStockSTOCKID: TcxGridDBBandedColumn;
    gvwSIStockSTOCKCODE: TcxGridDBBandedColumn;
    gvwSIStockSTOCKNAME: TcxGridDBBandedColumn;
    gvwSIStockBANKCODE: TcxGridDBBandedColumn;
    gvwSIStockBANKACCNO: TcxGridDBBandedColumn;
    gvwSIStockCP_BANKCODE: TcxGridDBBandedColumn;
    gvwSIStockCP_BANKACCNO: TcxGridDBBandedColumn;
    gvwSIStockQTY: TcxGridDBBandedColumn;
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    cdsStockVoucher: TNClientDataset;
    cdsStockVoucherVOUCHERID: TLargeintField;
    cdsStockVoucherVOUCHERNO: TStringField;
    cdsStockVoucherVOUCHERTYPE: TStringField;
    cdsStockVoucherENTRYDATE: TDateField;
    cdsStockVoucherVALUEDATE: TDateField;
    cdsStockVoucherTRTYPE: TStringField;
    cdsStockVoucherACCID: TLargeintField;
    cdsStockVoucherACCNO: TStringField;
    cdsStockVoucherACCNAME: TStringField;
    cdsStockVoucherCUST_BANKCODE: TStringField;
    cdsStockVoucherCUST_BANKACCNO: TStringField;
    cdsStockVoucherCUST_BANKACCNAME: TStringField;
    cdsStockVoucherBROKER_BANKCODE: TStringField;
    cdsStockVoucherBROKER_BANKACCNO: TStringField;
    cdsStockVoucherBROKER_BANKACCNAME: TStringField;
    cdsStockVoucherSIID: TLargeintField;
    cdsStockVoucherSINO: TStringField;
    cdsStockVoucherTRDDATE: TDateField;
    cdsStockVoucherDUEDATE: TDateField;
    cdsStockVoucherSETTLE_SIDE: TStringField;
    cdsStockVoucherSTOCKID: TIntegerField;
    cdsStockVoucherSTOCKCODE: TStringField;
    cdsStockVoucherSETTLE_QTY: TFloatField;
    cdsStockVoucherTRANSFERMODE: TStringField;
    cdsStockVoucherQTY: TFloatField;
    cdsStockVoucherSTOCK_ONHAND: TFloatField;
    cdsStockVoucherSTAT: TStringField;
    cdsStockVoucherMODDA: TDateTimeField;
    cdsStockVoucherMODUI: TStringField;
    cdsStockVoucherAPPDA: TDateTimeField;
    cdsStockVoucherAPPUI: TStringField;
    cdsStockVoucherUNDER4Y: TIntegerField;
    cdsStockVoucherUNDER4YDA: TDateTimeField;
    cdsStockVoucherNOTES4Y: TStringField;
    cdsStockVoucherISDEL: TIntegerField;
    cdsStockVoucherID: TLargeintField;
    cdsSIStockSIID: TLargeintField;
    cdsSIStockSINO: TStringField;
    cdsSIStockCONID: TLargeintField;
    cdsSIStockTRDDATE: TDateField;
    cdsSIStockDUEDATE: TDateField;
    cdsSIStockSITYPE: TStringField;
    cdsSIStockSETTLE_SIDE: TStringField;
    cdsSIStockNETTYPE: TStringField;
    cdsSIStockINSTRUCTION_TYPE: TStringField;
    cdsSIStockACCID: TLargeintField;
    cdsSIStockACCNO: TStringField;
    cdsSIStockACCNAME: TStringField;
    cdsSIStockSTOCKID: TIntegerField;
    cdsSIStockSTOCKCODE: TStringField;
    cdsSIStockSTOCKNAME: TStringField;
    cdsSIStockBANKCODE: TStringField;
    cdsSIStockBANKACCNO: TStringField;
    cdsSIStockBANKACCNAME: TStringField;
    cdsSIStockCP_BANKCODE: TStringField;
    cdsSIStockCP_BANKACCNO: TStringField;
    cdsSIStockCP_BANKACCNAME: TStringField;
    cdsSIStockTRANSFER_MODE: TStringField;
    cdsSIStockQTY: TFloatField;
    cdsSIStockONHAND: TFloatField;
    cdsSIStockONHOLD: TFloatField;
    actCreateVoucher: TNAction;
    CreateVoucher1: TMenuItem;
    cdsStockSettleListVOUCHER_BAL: TFloatField;
    gvwMasterVOUCHER_BAL: TcxGridDBBandedColumn;
    cdsStockSettleListSTOCKCODE: TStringField;
    cdsStockSettleListSTOCKNAME: TStringField;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerAfterCreateEditorForm(AForm: TForm);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure DataContainerBeforeInsert(Sender: TNMasterDetailData;
      var AContinue: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockSettleInstruction: TfrmStockSettleInstruction;

implementation

{$R *.dfm}

uses DataGlobal, FormStockSettle;

procedure TfrmStockSettleInstruction.actCreateVoucherExecute(Sender: TObject);
begin
  inherited;
  DataContainer.Insert;
end;

procedure TfrmStockSettleInstruction.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsStockSettleList.Close;
  cdsStockSettleList.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsStockSettleList.Open;

  cdsSIStock.Close;
  cdsSIStock.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsSIStock.Open;

  gvwSIStock.ApplyBestFit();
end;

procedure TfrmStockSettleInstruction.DataContainerAfterCreateEditorForm(
  AForm: TForm);
begin
  inherited;
  if DataContainer.State = mddsInsert then
  begin
    cdsStockVoucherVOUCHERTYPE.AsString := cdsSIStockSETTLE_SIDE.AsString;
    cdsStockVoucherTRTYPE.AsString := cdsSIStockSITYPE.AsString;
    cdsStockVoucherENTRYDATE.AsDateTime := Now;
    cdsStockVoucherVALUEDATE.AsDateTime := cdsSIStockDUEDATE.AsDateTime;
    cdsStockVoucherACCID.AsInteger := cdsSIStockACCID.AsInteger;
    cdsStockVoucherACCNO.AsString := cdsSIStockACCNO.AsString;
    cdsStockVoucherACCNAME.AsString := cdsSIStockACCNAME.AsString;
    cdsStockVoucherCUST_BANKCODE.AsString := cdsSIStockBANKCODE.AsString;
    cdsStockVoucherCUST_BANKACCNO.AsString := cdsSIStockBANKACCNO.AsString;
    cdsStockVoucherCUST_BANKACCNAME.AsString := cdsSIStockBANKACCNAME.AsString;
    cdsStockVoucherBROKER_BANKCODE.AsString := cdsSIStockCP_BANKCODE.AsString;
    cdsStockVoucherBROKER_BANKACCNO.AsString := cdsSIStockCP_BANKACCNO.AsString;
    cdsStockVoucherBROKER_BANKACCNAME.AsString := cdsSIStockCP_BANKACCNAME.AsString;
    cdsStockVoucherSIID.AsLargeInt := cdsSIStockSIID.AsLargeInt;
    cdsStockVoucherSINO.AsString := cdsSIStockSINO.AsString;
    cdsStockVoucherTRDDATE.AsDateTime := cdsSIStockTRDDATE.AsDateTime;
    cdsStockVoucherDUEDATE.AsDateTime := cdsSIStockDUEDATE.AsDateTime;
    cdsStockVoucherSETTLE_SIDE.AsString := cdsSIStockSETTLE_SIDE.AsString;
    cdsStockVoucherSTOCKID.AsInteger := cdsSIStockSTOCKID.AsInteger;
    cdsStockVoucherSTOCKCODE.AsString := cdsSIStockSTOCKCODE.AsString;
    cdsStockVoucherSETTLE_QTY.AsFloat := cdsSIStockQTY.AsFloat;
    cdsStockVoucherTRANSFERMODE.AsString := cdsSIStockTRANSFER_MODE.AsString;
    cdsStockVoucherQTY.AsFloat := cdsSIStockQTY.AsFloat;
    cdsStockVoucherSTOCK_ONHAND.AsFloat := cdsSIStockONHAND.AsFloat;
    cdsStockVoucherSTAT.AsString := 'O';
  end;
end;

procedure TfrmStockSettleInstruction.DataContainerBeforeInsert(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if cdsSIStockSETTLE_SIDE.AsString = 'R' then
    DataContainer.AutoFields.Items[1].Prefix := 'R-'
  else
    DataContainer.AutoFields.Items[1].Prefix := 'D-';
end;

procedure TfrmStockSettleInstruction.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockSettle;
end;

procedure TfrmStockSettleInstruction.FormCreate(Sender: TObject);
begin
  inherited;
  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmStockSettleInstruction);

end.
