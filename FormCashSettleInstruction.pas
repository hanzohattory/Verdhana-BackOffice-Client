unit FormCashSettleInstruction;

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
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NReportClient, System.DateUtils, System.Actions,
  System.ImageList, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCashSettleInstruction = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsCashSettleList: TNClientDataset;
    actViewCashSettleList: TNAction;
    cdsCashSettleListACCID: TLargeintField;
    cdsCashSettleListACCNO: TStringField;
    cdsCashSettleListACCNAME: TStringField;
    cdsCashSettleListCCYCODE: TStringField;
    cdsCashSettleListCASH_POS: TFloatField;
    cdsCashSettleListNET_ARAPOD: TFloatField;
    cdsCashSettleListNET_ARAPDUE0: TFloatField;
    cdsCashSettleListNET_ARAPDUE1: TFloatField;
    cdsCashSettleListNET_ARAPDUE2: TFloatField;
    cdsCashSettleListNET_ARAPDUE22: TFloatField;
    cdsCashSettleListNET_ARAP: TFloatField;
    cdsSICash: TNClientDataset;
    grdMasterLevel2: TcxGridLevel;
    gvwSICash: TcxGridDBBandedTableView;
    dsSICash: TDataSource;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterCASH_POS: TcxGridDBBandedColumn;
    gvwMasterNET_ARAPOD: TcxGridDBBandedColumn;
    gvwMasterNET_ARAPDUE0: TcxGridDBBandedColumn;
    gvwMasterNET_ARAPDUE1: TcxGridDBBandedColumn;
    gvwMasterNET_ARAPDUE2: TcxGridDBBandedColumn;
    gvwMasterNET_ARAPDUE21: TcxGridDBBandedColumn;
    gvwMasterNET_ARAP: TcxGridDBBandedColumn;
    gvwSICashSIID: TcxGridDBBandedColumn;
    gvwSICashSINO: TcxGridDBBandedColumn;
    gvwSICashCONID: TcxGridDBBandedColumn;
    gvwSICashDUEDATE: TcxGridDBBandedColumn;
    gvwSICashSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwSICashINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwSICashACCID: TcxGridDBBandedColumn;
    gvwSICashACCNO: TcxGridDBBandedColumn;
    gvwSICashACCNAME: TcxGridDBBandedColumn;
    gvwSICashBANKCODE: TcxGridDBBandedColumn;
    gvwSICashBANKACCNO: TcxGridDBBandedColumn;
    gvwSICashCP_BANKCODE: TcxGridDBBandedColumn;
    gvwSICashCP_BANKACCNO: TcxGridDBBandedColumn;
    gvwSICashSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwSICashSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwSICashSETTLE_NETAMT: TcxGridDBBandedColumn;
    cdsCashVoucher: TNClientDataset;
    actCreateVoucher: TNAction;
    CreateVoucher1: TMenuItem;
    cdsCashVoucherVOUCHERID: TLargeintField;
    cdsCashVoucherVOUCHERNO: TStringField;
    cdsCashVoucherVOUCHERTYPE: TStringField;
    cdsCashVoucherENTRYDATE: TDateField;
    cdsCashVoucherVALUEDATE: TDateField;
    cdsCashVoucherTRTYPE: TStringField;
    cdsCashVoucherACCID: TLargeintField;
    cdsCashVoucherACCNO: TStringField;
    cdsCashVoucherACCNAME: TStringField;
    cdsCashVoucherCUST_BANKCODE: TStringField;
    cdsCashVoucherCUST_BANKACCNO: TStringField;
    cdsCashVoucherCUST_BANKACCNAME: TStringField;
    cdsCashVoucherBROKER_BANKCODE: TStringField;
    cdsCashVoucherBROKER_BANKACCNO: TStringField;
    cdsCashVoucherBROKER_BANKACCNAME: TStringField;
    cdsCashVoucherSIID: TLargeintField;
    cdsCashVoucherSINO: TStringField;
    cdsCashVoucherTRDDATE: TDateField;
    cdsCashVoucherDUEDATE: TDateField;
    cdsCashVoucherSETTLE_SIDE: TStringField;
    cdsCashVoucherSETTLE_CCY: TStringField;
    cdsCashVoucherSETTLE_EXRATE: TFloatField;
    cdsCashVoucherSETTLE_AMT: TFloatField;
    cdsCashVoucherTRANSFERMODE: TStringField;
    cdsCashVoucherCHARGESAMT: TFloatField;
    cdsCashVoucherCCYCODE: TStringField;
    cdsCashVoucherAMT: TFloatField;
    cdsCashVoucherCASH_ONHAND: TFloatField;
    cdsCashVoucherSTAT: TStringField;
    cdsCashVoucherMODDA: TDateTimeField;
    cdsCashVoucherMODUI: TStringField;
    cdsCashVoucherAPPDA: TDateTimeField;
    cdsCashVoucherAPPUI: TStringField;
    cdsCashVoucherUNDER4Y: TIntegerField;
    cdsCashVoucherUNDER4YDA: TDateTimeField;
    cdsCashVoucherNOTES4Y: TStringField;
    cdsCashVoucherISDEL: TIntegerField;
    cdsCashVoucherID: TLargeintField;
    cdsSICashSIID: TLargeintField;
    cdsSICashSINO: TStringField;
    cdsSICashCONID: TLargeintField;
    cdsSICashTRDDATE: TDateField;
    cdsSICashDUEDATE: TDateField;
    cdsSICashSITYPE: TStringField;
    cdsSICashSETTLE_SIDE: TStringField;
    cdsSICashNETTYPE: TStringField;
    cdsSICashINSTRUCTION_TYPE: TStringField;
    cdsSICashACCID: TLargeintField;
    cdsSICashACCNO: TStringField;
    cdsSICashACCNAME: TStringField;
    cdsSICashBANKCODE: TStringField;
    cdsSICashBANKACCNO: TStringField;
    cdsSICashBANKACCNAME: TStringField;
    cdsSICashCP_BANKCODE: TStringField;
    cdsSICashCP_BANKACCNO: TStringField;
    cdsSICashCP_BANKACCNAME: TStringField;
    cdsSICashTRANSFER_MODE: TStringField;
    cdsSICashBASE_CCYCODE: TStringField;
    cdsSICashBASE_NETAMT: TFloatField;
    cdsSICashSETTLE_CCYCODE: TStringField;
    cdsSICashSETTLE_EXRATE: TFloatField;
    cdsSICashSETTLE_NETAMT: TFloatField;
    cdsSICashCASHONHAND: TFloatField;
    cdsSICashBANK_CHARGES: TFloatField;
    cdsCashSettleListVOUCHER_BAL: TFloatField;
    gvwMasterVOUCHER_BAL: TcxGridDBBandedColumn;
    actCreateAllVoucher: TNAction;
    CreateAllVoucher1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actViewCashSettleListExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure DataContainerAfterCreateEditorForm(AForm: TForm);
    procedure DataContainerBeforeInsert(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actCreateAllVoucherExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashSettleInstruction: TfrmCashSettleInstruction;

implementation

{$R *.dfm}

uses DataGlobal, FormCashSettle;

procedure TfrmCashSettleInstruction.actCreateAllVoucherExecute(Sender: TObject);
var
  sResult: String;
begin
  inherited;
  if MessageDlg('Are you sure to create all voucher ' + FormatDateTime('dd MMM yyyy', cdsSICash.Params[0].AsDate) + ' ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Try
      Screen.Cursor := crHourGlass;
      sResult := dmGlobal.RemoteServer.CreateAllCashVoucher(DateTimeToFileDate(cdsSICash.Params[0].AsDate));
      ShowMessage(sResult);
    Finally
      Screen.Cursor := crDefault;
    End;
  end;
end;

procedure TfrmCashSettleInstruction.actCreateVoucherExecute(Sender: TObject);
begin
  inherited;
  DataContainer.Insert;
end;

procedure TfrmCashSettleInstruction.actViewCashSettleListExecute(
  Sender: TObject);
begin
  inherited;
  cdsCashSettleList.Close;
  cdsCashSettleList.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsCashSettleList.Open;

  cdsSICash.Close;
  cdsSICash.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsSICash.Open;

  gvwMaster.ApplyBestFit();
//  gvwMaster.ViewData.Expand(True);
  gvwSICash.ApplyBestFit();
end;

procedure TfrmCashSettleInstruction.DataContainerAfterCreateEditorForm(
  AForm: TForm);
begin
  inherited;
  if DataContainer.State = mddsInsert then
  begin
//    cdsCashSettleHENTRYDATE.AsDateTime := Now;
//    cdsCashSettleHVALUEDATE.AsDateTime := cdsCashSettleHENTRYDATE.AsDateTime;
//    cdsCashSettleHCSNO.AsString := Format('%.6d', [cdsCashSettleHCSID.AsInteger]) + FormatDateTime('/MM/yyyy', cdsCashSettleHENTRYDATE.AsDateTime);
    cdsCashVoucherVOUCHERTYPE.AsString := cdsSICashSETTLE_SIDE.AsString;
    cdsCashVoucherENTRYDATE.AsDateTime := Now;
    cdsCashVoucherVALUEDATE.AsDateTime := cdsSICashDUEDATE.AsDateTime;
    cdsCashVoucherTRTYPE.AsString := cdsSICashSITYPE.AsString;
    cdsCashVoucherACCID.AsInteger := cdsSICashACCID.AsInteger;
    cdsCashVoucherACCNO.AsString := cdsSICashACCNO.AsString;
    cdsCashVoucherACCNAME.AsString := cdsSICashACCNAME.AsString;
    cdsCashVoucherCUST_BANKCODE.AsString := cdsSICashBANKCODE.AsString;
    cdsCashVoucherCUST_BANKACCNO.AsString := cdsSICashBANKACCNO.AsString;
    cdsCashVoucherCUST_BANKACCNAME.AsString := cdsSICashACCNAME.AsString;
    cdsCashVoucherBROKER_BANKCODE.AsString := cdsSICashCP_BANKCODE.AsString;
    cdsCashVoucherBROKER_BANKACCNO.AsString := cdsSICashCP_BANKACCNO.AsString;
    cdsCashVoucherBROKER_BANKACCNAME.AsString := cdsSICashCP_BANKACCNAME.AsString;
    cdsCashVoucherSIID.AsLargeInt := cdsSICashSIID.AsLargeInt;
    cdsCashVoucherSINO.AsString := cdsSICashSINO.AsString;
    cdsCashVoucherTRDDATE.AsDateTime := cdsSICashTRDDATE.AsDateTime;
    cdsCashVoucherDUEDATE.AsDateTime := cdsSICashDUEDATE.AsDateTime;
    cdsCashVoucherSETTLE_SIDE.AsString := cdsSICashSETTLE_SIDE.AsString;
    cdsCashVoucherSETTLE_CCY.AsString := cdsSICashSETTLE_CCYCODE.AsString;
    cdsCashVoucherSETTLE_EXRATE.AsFloat := cdsSICashSETTLE_EXRATE.AsFloat;
    cdsCashVoucherSETTLE_AMT.AsFloat := cdsSICashSETTLE_NETAMT.AsFloat;
    cdsCashVoucherTRANSFERMODE.AsString := cdsSICashTRANSFER_MODE.AsString;
    cdsCashVoucherCHARGESAMT.AsFloat := cdsSICashBANK_CHARGES.AsFloat;
    cdsCashVoucherCCYCODE.AsString := cdsSICashBASE_CCYCODE.AsString;
    cdsCashVoucherAMT.AsFloat := cdsSICashBASE_NETAMT.AsFloat;
    cdsCashVoucherCASH_ONHAND.AsFloat := cdsSICashCASHONHAND.AsFloat;
    cdsCashVoucherSTAT.AsString := 'O';

    if cdsSICashSETTLE_SIDE.AsString = 'R' then
    begin
      if (cdsCashSettleListCASH_POS.AsFloat - cdsCashSettleListVOUCHER_BAL.AsFloat) < cdsSICashBASE_NETAMT.AsFloat then
      begin
        cdsCashVoucherAMT.AsFloat := (cdsCashSettleListCASH_POS.AsFloat - cdsCashSettleListVOUCHER_BAL.AsFloat);
      end;
    end;

  end;
end;

procedure TfrmCashSettleInstruction.DataContainerBeforeInsert(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if cdsSICashSETTLE_SIDE.AsString = 'P' then
  begin
    DataContainer.AutoFields.Items[1].Prefix := 'P-';
  end
  else
  begin
    DataContainer.AutoFields.Items[1].Prefix := 'R-';
    if (cdsCashSettleListACCID.AsInteger <> cdsSICashACCID.AsInteger) then
      cdsCashSettleList.Locate('ACCID', cdsSICashACCID.Value, []);

    if (cdsCashSettleListCASH_POS.AsFloat - cdsCashSettleListVOUCHER_BAL.AsFloat) <= 0 then
    begin
      AContinue := False;
      MessageDlg('Can''t create cash voucher. #13 Plaese make cash deposit for this account before create voucher!', mtInformation, [mbOK], 0);
    end;
  end;
end;

procedure TfrmCashSettleInstruction.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashSettle;
end;

procedure TfrmCashSettleInstruction.FormCreate(Sender: TObject);
begin
  inherited;
  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  actViewCashSettleList.Execute;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;
end;

Initialization
  RegisterClass(TfrmCashSettleInstruction);

end.
