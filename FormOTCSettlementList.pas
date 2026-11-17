unit FormOTCSettlementList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, cxCheckBox, cxImageComboBox, System.Actions, System.ImageList;

type
  TfrmOTCSettlementList = class(TfrmBrowseData)
    cdsOTCSettlementList: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actViewData: TNAction;
    cdsOTCSettlementListSSID: TLargeintField;
    cdsOTCSettlementListSSNO: TStringField;
    cdsOTCSettlementListSSDESC: TStringField;
    cdsOTCSettlementListSETTLE_TYPE: TStringField;
    cdsOTCSettlementListENTRYDATE: TDateField;
    cdsOTCSettlementListVALUEDATE: TDateField;
    cdsOTCSettlementListACCID: TLargeintField;
    cdsOTCSettlementListSTOCKID: TLargeintField;
    cdsOTCSettlementListINSTRUCTION_TYPE: TStringField;
    cdsOTCSettlementListQTY: TFloatField;
    cdsOTCSettlementListORIG_AMOUNT: TFloatField;
    cdsOTCSettlementListAMOUNT: TFloatField;
    cdsOTCSettlementListCASH_VOUCHER_CREATED: TStringField;
    cdsOTCSettlementListCSID: TLargeintField;
    cdsOTCSettlementListSETTLE_CCYCODE: TStringField;
    cdsOTCSettlementListACCCODE: TStringField;
    cdsOTCSettlementListACCNAME: TStringField;
    cdsOTCSettlementListLOCALCODE: TStringField;
    gvwMasterSSID: TcxGridDBBandedColumn;
    gvwMasterSSNO: TcxGridDBBandedColumn;
    gvwMasterSSDESC: TcxGridDBBandedColumn;
    gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterORIG_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHER_CREATED: TcxGridDBBandedColumn;
    gvwMasterCSID: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    cdsOTCSettlementListCSNO: TStringField;
    gvwMasterCSNO: TcxGridDBBandedColumn;
    cbSettleType: TcxImageComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    chkShowAll: TcxCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    actCreateCashSettlementVoucher: TNAction;
    CreateCashSettlementVoucher1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actCreateCashSettlementVoucherExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOTCSettlementList: TfrmOTCSettlementList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmOTCSettlementList.actCreateCashSettlementVoucherExecute(
  Sender: TObject);
var
  iSSID,i,x,v : integer;
  sTmpMsg, sErrMsg, sMsg : string;
begin
  inherited;
  x := 0;
  v := 0;

  sTmpMsg := '';
  sErrMsg := '';
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iSSID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterSSID.Index], 0);

    if dmGlobal.RemoteServer.CreateCashVoucherFromStockVoucher(iSSID, sMsg) then
      Inc(v)
    else
    begin
      Inc(x);

      if sMsg <> sTmpMsg then
        sErrMsg := sErrMsg + sMsg + #13;
      sTmpMsg := sMsg;
    end;
  end;

  if x > 0 then
    sMsg := IntToStr(v)+' Voucher Create and '+IntToStr(x)+' Fail to create'+#13+'Fail Message : '+#13+sErrMsg
  else
    sMsg := IntToStr(v)+' Voucher Create and '+IntToStr(x)+' Fail to create';
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  cdsOTCSettlementList.Refresh;
end;

procedure TfrmOTCSettlementList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsOTCSettlementList.Close;
  cdsOTCSettlementList.Params[0].AsDateTime := dtValueDate.EditValue;
  cdsOTCSettlementList.Params[1].asString := cbSettleType.EditValue;
  if chkShowAll.Checked then
    cdsOTCSettlementList.Params[2].asString := '1'
  else
    cdsOTCSettlementList.Params[2].asString := '0';
  cdsOTCSettlementList.Open;
end;

procedure TfrmOTCSettlementList.FormShow(Sender: TObject);
begin
  inherited;
  dtValueDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

end.
