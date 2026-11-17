unit FormCashVoucher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, Datasnap.DBClient, NClientDataset, cxPropertiesStore,
  dxBar, cxClasses, dxPSCore, dxPScxCommon, NDatasetContainer, NDatasetAction,
  Vcl.ActnList, Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxImageComboBox;

type
  TfrmCashVoucher = class(TfrmBrowseSingle)
    cdsCashVoucherH: TNClientDataset;
    cdsCashVoucherD: TNClientDataset;
    cdsCashVoucherDVOUCHERID: TLargeintField;
    cdsCashVoucherDSEQID: TLargeintField;
    cdsCashVoucherDTRANS_TYPE: TStringField;
    cdsCashVoucherDLINKTYPE: TStringField;
    cdsCashVoucherDLINKID: TLargeintField;
    cdsCashVoucherDLINKNO: TStringField;
    cdsCashVoucherDACCID: TLargeintField;
    cdsCashVoucherDACCNO: TStringField;
    cdsCashVoucherDACCNAME: TStringField;
    cdsCashVoucherDCUST_BANKID: TIntegerField;
    cdsCashVoucherDCUST_BANKCODE: TStringField;
    cdsCashVoucherDCUST_BANKACCNO: TStringField;
    cdsCashVoucherDCUST_BANKACCNAME: TStringField;
    cdsCashVoucherDCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucherDTRDDATE: TDateField;
    cdsCashVoucherDDUEDATE: TDateField;
    cdsCashVoucherDCASH_DESC: TStringField;
    cdsCashVoucherDTRANS_AMT: TFloatField;
    cdsCashVoucherDCHARGESAMT: TFloatField;
    cdsCashVoucherDNETTYPE: TStringField;
    cdsCashVoucherDAMOUNT: TFloatField;
    cdsCashVoucherHVOUCHERID: TLargeintField;
    cdsCashVoucherHVOUCHERNO: TStringField;
    cdsCashVoucherHVOUCHERTYPE: TStringField;
    cdsCashVoucherHENTRYDATE: TDateField;
    cdsCashVoucherHVOUCHERDATE: TDateField;
    cdsCashVoucherHBROKER_BANKID: TIntegerField;
    cdsCashVoucherHBROKER_BANKCODE: TStringField;
    cdsCashVoucherHBROKER_BANKACCNO: TStringField;
    cdsCashVoucherHBROKER_BANKACCNAME: TStringField;
    cdsCashVoucherHBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucherHVOUCHER_DESC: TStringField;
    cdsCashVoucherHCCYCODE: TStringField;
    cdsCashVoucherHEXRATE: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT: TFloatField;
    cdsCashVoucherHSTAT: TStringField;
    cxGrid1Level2: TcxGridLevel;
    gvwCashVoucherD: TcxGridDBBandedTableView;
    dsCashVoucherD: TDataSource;
    gvwBrowseVOUCHERID: TcxGridDBBandedColumn;
    gvwBrowseVOUCHERNO: TcxGridDBBandedColumn;
    gvwBrowseVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwBrowseENTRYDATE: TcxGridDBBandedColumn;
    gvwBrowseVOUCHERDATE: TcxGridDBBandedColumn;
    gvwBrowseBROKER_BANKID: TcxGridDBBandedColumn;
    gvwBrowseBROKER_BANKCODE: TcxGridDBBandedColumn;
    gvwBrowseBROKER_BANKACCNO: TcxGridDBBandedColumn;
    gvwBrowseBROKER_BANKACCNAME: TcxGridDBBandedColumn;
    gvwBrowseBROKER_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwBrowseVOUCHER_DESC: TcxGridDBBandedColumn;
    gvwBrowseCCYCODE: TcxGridDBBandedColumn;
    gvwBrowseEXRATE: TcxGridDBBandedColumn;
    gvwBrowseTOTAL_AMOUNT: TcxGridDBBandedColumn;
    gvwBrowseSTAT: TcxGridDBBandedColumn;
    gvwCashVoucherDVOUCHERID: TcxGridDBBandedColumn;
    gvwCashVoucherDSEQID: TcxGridDBBandedColumn;
    gvwCashVoucherDTRANS_TYPE: TcxGridDBBandedColumn;
    gvwCashVoucherDLINKTYPE: TcxGridDBBandedColumn;
    gvwCashVoucherDLINKID: TcxGridDBBandedColumn;
    gvwCashVoucherDLINKNO: TcxGridDBBandedColumn;
    gvwCashVoucherDACCID: TcxGridDBBandedColumn;
    gvwCashVoucherDACCNO: TcxGridDBBandedColumn;
    gvwCashVoucherDACCNAME: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKID: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwCashVoucherDTRDDATE: TcxGridDBBandedColumn;
    gvwCashVoucherDDUEDATE: TcxGridDBBandedColumn;
    gvwCashVoucherDCASH_DESC: TcxGridDBBandedColumn;
    gvwCashVoucherDTRANS_AMT: TcxGridDBBandedColumn;
    gvwCashVoucherDCHARGESAMT: TcxGridDBBandedColumn;
    gvwCashVoucherDNETTYPE: TcxGridDBBandedColumn;
    gvwCashVoucherDAMOUNT: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtVoucherDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsCashVoucherHTRANSFERMODE: TStringField;
    gvwBrowseTRANSFERMODE: TcxGridDBBandedColumn;
    actPosting: TNAction;
    Posting1: TMenuItem;
    actCancelVoucher: TNAction;
    CancelCreateVoucher1: TMenuItem;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actCancelVoucherExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GetVoucherData(AVoucherDate: TDateTime);
  end;

var
  frmCashVoucher: TfrmCashVoucher;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashVoucher.actCancelVoucherExecute(Sender: TObject);
var
  iVoucherID: Int64;
  sVoucherID: string;
  i: Integer;
begin
  inherited;
  for i := 0 to gvwBrowse.DataController.Controller.SelectedRecordCount -1 do
  begin
    if gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSTAT.Index] <> 'P' then
    begin
      sVoucherID := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseVOUCHERID.Index];
      iVoucherID := StrToInt64Def(sVoucherID, 0);

      dmGlobal.RemoteServer.CashVoucherCancel(iVoucherID);
    end;
  end;

  MessageDlg('Cancel cash voucher has done...', mtInformation, [mbYes], 0);
  cdsCashVoucherH.Refresh;
end;

procedure TfrmCashVoucher.actPostingExecute(Sender: TObject);
var
  iVoucherID: Int64;
  sVoucherID: string;
  i: Integer;
begin
  inherited;
  for i := 0 to gvwBrowse.DataController.Controller.SelectedRecordCount -1 do
  begin
    if gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSTAT.Index] <> 'P' then
    begin
      sVoucherID := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseVOUCHERID.Index];
      iVoucherID := StrToInt64Def(sVoucherID, 0);

      dmGlobal.RemoteServer.CashVoucherPosting(iVoucherID);
    end;
  end;

  MessageDlg('Posting cash voucher has done...', mtInformation, [mbYes], 0);
  cdsCashVoucherH.Refresh;
end;

procedure TfrmCashVoucher.cxButton1Click(Sender: TObject);
begin
  inherited;
  GetVoucherData(txtVoucherDate.Date);
end;

procedure TfrmCashVoucher.FormCreate(Sender: TObject);
begin
  inherited;
  txtVoucherDate.Date := dmGlobal.RemoteServer.GetTransDate;

  GetVoucherData(dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmCashVoucher.GetVoucherData(AVoucherDate: TDateTime);
begin
  cdsCashVoucherH.Close;
  cdsCashVoucherH.Params[0].AsDateTime := AVoucherDate;
  cdsCashVoucherH.Open;

  cdsCashVoucherD.Close;
  cdsCashVoucherD.Params[0].AsDateTime := AVoucherDate;
  cdsCashVoucherD.Open;
end;

Initialization
  RegisterClass(TfrmCashVoucher);
end.
