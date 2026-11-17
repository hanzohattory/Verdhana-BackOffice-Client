unit FormStockPosition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, NDatasetAction, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, System.DateUtils, System.Actions,
  cxCheckBox, cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockPosition = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclStockPosition: TActionList;
    actViewList: TNAction;
    cdsStockPosition: TNClientDataset;
    dsStockPosition: TDataSource;
    cdsStockPositionBranchID: TIntegerField;
    cdsStockPositionBranchCode: TStringField;
    cdsStockPositionBranchName: TStringField;
    cdsStockPositionSalesID: TIntegerField;
    cdsStockPositionSalesCode: TStringField;
    cdsStockPositionSalesName: TStringField;
    cdsStockPositionAccID: TLargeintField;
    cdsStockPositionAccNo: TStringField;
    cdsStockPositionAccName: TStringField;
    cdsStockPositionStockID: TIntegerField;
    cdsStockPositionStockCode: TStringField;
    cdsStockPositionStockName: TStringField;
    cdsStockPositionAvgPrice: TFloatField;
    cdsStockPositionClosePrice: TFloatField;
    cdsStockPositionStockOnHand: TFloatField;
    cdsStockPositionStockOnHold: TFloatField;
    cdsStockPositionStockOuts: TFloatField;
    cdsStockPositionStockBalance: TFloatField;
    cdsStockPositionStockBal_Value: TFloatField;
    cdsStockPositionStockBal_MktValue: TFloatField;
    cdsStockPositionUnReal_LossProfit: TFloatField;
    cdsStockPositionLastCP: TDateField;
    cdsStockPositionInvType: TStringField;
    gvwMasterBranchID: TcxGridDBBandedColumn;
    gvwMasterBranchCode: TcxGridDBBandedColumn;
    gvwMasterBranchName: TcxGridDBBandedColumn;
    gvwMasterSalesID: TcxGridDBBandedColumn;
    gvwMasterSalesCode: TcxGridDBBandedColumn;
    gvwMasterSalesName: TcxGridDBBandedColumn;
    gvwMasterAccID: TcxGridDBBandedColumn;
    gvwMasterAccNo: TcxGridDBBandedColumn;
    gvwMasterAccName: TcxGridDBBandedColumn;
    gvwMasterStockID: TcxGridDBBandedColumn;
    gvwMasterStockCode: TcxGridDBBandedColumn;
    gvwMasterStockName: TcxGridDBBandedColumn;
    gvwMasterAvgPrice: TcxGridDBBandedColumn;
    gvwMasterClosePrice: TcxGridDBBandedColumn;
    gvwMasterStockOnHand: TcxGridDBBandedColumn;
    gvwMasterStockOnHold: TcxGridDBBandedColumn;
    gvwMasterStockOuts: TcxGridDBBandedColumn;
    gvwMasterStockBalance: TcxGridDBBandedColumn;
    gvwMasterStockBal_Value: TcxGridDBBandedColumn;
    gvwMasterStockBal_MktValue: TcxGridDBBandedColumn;
    gvwMasterUnReal_LossProfit: TcxGridDBBandedColumn;
    gvwMasterLastCP: TcxGridDBBandedColumn;
    gvwMasterInvType: TcxGridDBBandedColumn;
    cdsStockPositionMarketCode: TStringField;
    cdsStockPositionSTOCKTYPE: TStringField;
    cdsStockPositionStockReceive: TFloatField;
    cdsStockPositionStockDeliver: TFloatField;
    cdsStockPositionSELLQTY: TFloatField;
    cdsStockPositionAV_QTY: TFloatField;
    cdsStockPositionQTY_CORPACT: TFloatField;
    cdsStockPositionACCTYPE: TStringField;
    cdsStockPositionHAIRCUTVAL: TFloatField;
    cdsStockPositionHCPERCENT: TFloatField;
    cdsStockPositionAccInit: TStringField;
    gvwMasterMarketCode: TcxGridDBBandedColumn;
    gvwMasterSTOCKTYPE: TcxGridDBBandedColumn;
    gvwMasterStockReceive: TcxGridDBBandedColumn;
    gvwMasterStockDeliver: TcxGridDBBandedColumn;
    gvwMasterSELLQTY: TcxGridDBBandedColumn;
    gvwMasterAV_QTY: TcxGridDBBandedColumn;
    gvwMasterQTY_CORPACT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterHAIRCUTVAL: TcxGridDBBandedColumn;
    gvwMasterHCPERCENT: TcxGridDBBandedColumn;
    gvwMasterAccInit: TcxGridDBBandedColumn;
    actSaveGridExcel: TNAction;
    popMaster: TPopupMenu;
    SaveGridtoExcel1: TMenuItem;
    SaveDlg: TSaveDialog;
    chkAccount: TcxCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    chkSales: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    chkStockCode: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edAccName: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edBranch: TcxLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    edSales: TcxLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    chkBranch: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edStockCode: TcxLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    edStockName: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cdsStockPositionQTY_WARKAT: TFloatField;
    gvwMasterQTY_WARKAT: TcxGridDBBandedColumn;
    cdsStockPositionSTK_WDR: TFloatField;
    gvwMasterSTK_WDR: TcxGridDBBandedColumn;
    procedure actViewListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSaveGridExcelExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkAccountPropertiesChange(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure chkSalesPropertiesChange(Sender: TObject);
    procedure chkStockCodePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmStockPosition: TfrmStockPosition;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink, FormLuAccount;

procedure TfrmStockPosition.actSaveGridExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmStockPosition.actViewListExecute(Sender: TObject);
var
  iBranch, iSales, iStock,
  ichkBranch, ichkSales,
  ichkAccount, ichkStock: Integer;
begin
  inherited;
  if chkAccount.Checked then
    ichkAccount := 0
  else
    ichkAccount := 1;

  if chkBranch.Checked then
    ichkBranch := 0
  else
    ichkBranch := 1;

  if chkSales.Checked then
    ichkSales := 0
  else
    ichkSales := 1;

  if chkStockCode.Checked then
    ichkStock := 0
  else
    ichkStock := 1;

  if VarIsNull(edBranch.EditValue) then
    iBranch := 0
  else
    iBranch := StrToIntDef(edBranch.EditValue, 0);

  if VarIsNull(edSales.EditValue) then
    iSales := 0
  else
    iSales := StrToIntDef(edSales.EditValue, 0);

  if VarIsNull(edStockCode.EditValue) then
    iStock := 0
  else
    iStock := StrToIntDef(edStockCode.EditValue, 0);

  cdsStockPosition.Close;
  cdsStockPosition.Params[0].AsDate    := DateOf(dtTransDate.Date);
  cdsStockPosition.Params[1].AsInteger := ichkAccount;
  cdsStockPosition.Params[2].AsInteger := FAccID;
  cdsStockPosition.Params[3].AsInteger := ichkBranch;
  cdsStockPosition.Params[4].AsInteger := iBranch;
  cdsStockPosition.Params[5].AsInteger := ichkSales;
  cdsStockPosition.Params[6].AsInteger := iSales;
  cdsStockPosition.Params[7].AsInteger := ichkStock;
  cdsStockPosition.Params[8].AsInteger := iStock;
  cdsStockPosition.Open;
end;

procedure TfrmStockPosition.chkAccountPropertiesChange(Sender: TObject);
begin
  inherited;
  edAccCode.EditValue := '';
  edAccName.EditValue := '';
  edAccCode.Enabled   := chkAccount.Checked;
end;

procedure TfrmStockPosition.chkSalesPropertiesChange(Sender: TObject);
begin
  inherited;
  edSales.EditValue := '';
  edSales.Enabled   := chkSales.Checked;
end;

procedure TfrmStockPosition.chkStockCodePropertiesChange(Sender: TObject);
begin
  inherited;
  edStockCode.EditValue := '';
  edStockName.EditValue := '';
  edStockCode.Enabled   := chkStockCode.Checked;
end;

procedure TfrmStockPosition.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  edBranch.EditValue := '';
  edBranch.Enabled   := chkBranch.Checked;
end;

procedure TfrmStockPosition.edAccCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID, True) = mrOK then
    begin
      FAccID              := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmStockPosition.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;

    if not cdsLuInstrumentType.Active then
      cdsLuInstrumentType.Open;

    if not cdsLuBranch.Active then
      cdsLuBranch.Open;

    if not cdsLuSales.Active then
      cdsLuSales.Open;

    if not cdsLuInstrumentAll.Active then
      cdsLuInstrumentAll.Open;
  end;
end;

Initialization
  RegisterClass(TfrmStockPosition);

end.
