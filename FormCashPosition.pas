unit FormCashPosition;

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
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmCashPosition = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclCashPosition: TActionList;
    actViewList: TNAction;
    cdsCashPosition: TNClientDataset;
    dsCashPosition: TDataSource;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCashOnHand: TcxGridDBBandedColumn;
    gvwMasterCashOnHold: TcxGridDBBandedColumn;
    gvwMasterARAmt: TcxGridDBBandedColumn;
    gvwMasterApAmt: TcxGridDBBandedColumn;
    gvwMasterNetARAP: TcxGridDBBandedColumn;
    gvwMasterCashPosition: TcxGridDBBandedColumn;
    popMaster: TPopupMenu;
    actSaveGridExcel: TNAction;
    SaveGridtoExcel1: TMenuItem;
    SaveDlg: TSaveDialog;
    cdsCashPositionBranchID: TIntegerField;
    cdsCashPositionBranchCode: TStringField;
    cdsCashPositionBranchName: TStringField;
    cdsCashPositionSalesID: TIntegerField;
    cdsCashPositionSalesCode: TStringField;
    cdsCashPositionSalesName: TStringField;
    cdsCashPositionACCID: TLargeintField;
    cdsCashPositionACCNO: TStringField;
    cdsCashPositionACCNAME: TStringField;
    cdsCashPositionAccInit: TStringField;
    cdsCashPositionCCY: TStringField;
    cdsCashPositionCashOnHand: TFloatField;
    cdsCashPositionCashOnHold: TFloatField;
    cdsCashPositionARAmt: TFloatField;
    cdsCashPositionApAmt: TFloatField;
    cdsCashPositionNetARAP: TFloatField;
    cdsCashPositionCashPosition: TFloatField;
    gvwMasterBranchID: TcxGridDBBandedColumn;
    gvwMasterBranchCode: TcxGridDBBandedColumn;
    gvwMasterBranchName: TcxGridDBBandedColumn;
    gvwMasterSalesID: TcxGridDBBandedColumn;
    gvwMasterSalesCode: TcxGridDBBandedColumn;
    gvwMasterSalesName: TcxGridDBBandedColumn;
    gvwMasterAccInit: TcxGridDBBandedColumn;
    cdsCashPositionCASH_QQ: TFloatField;
    gvwMasterCASH_QQ: TcxGridDBBandedColumn;
    cdsCashPositionSAVEKEEP: TStringField;
    cdsCashPositionBuyAmount: TFloatField;
    cdsCashPositionAvCashAmount: TFloatField;
    cdsCashPositionCASHOUTS: TFloatField;
    cdsCashPositionCASH_SUBACC: TFloatField;
    cdsCashPositionACCRUED_INTEREST: TFloatField;
    gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwMasterSAVEKEEP: TcxGridDBBandedColumn;
    gvwMasterBuyAmount: TcxGridDBBandedColumn;
    gvwMasterAvCashAmount: TcxGridDBBandedColumn;
    gvwMasterCASHOUTS: TcxGridDBBandedColumn;
    gvwMasterCASH_SUBACC: TcxGridDBBandedColumn;
    chkAccount: TcxCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    chkBranch: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    chkSales: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    edAccName: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edBranch: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    edSales: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsCashPositionBankCode: TStringField;
    cdsCashPositionBankName: TStringField;
    cdsCashPositionBankAccountNo: TStringField;
    cdsCashPositionBankAccountName: TStringField;
    gvwMasterBankCode: TcxGridDBBandedColumn;
    gvwMasterBankName: TcxGridDBBandedColumn;
    gvwMasterBankAccountNo: TcxGridDBBandedColumn;
    gvwMasterBankAccountName: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actViewListExecute(Sender: TObject);
    procedure actSaveGridExcelExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkAccountPropertiesChange(Sender: TObject);
    procedure chkBranchPropertiesChange(Sender: TObject);
    procedure chkSalesPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmCashPosition: TfrmCashPosition;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink, FormLuAccount;

procedure TfrmCashPosition.actSaveGridExcelExecute(Sender: TObject);
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

procedure TfrmCashPosition.actViewListExecute(Sender: TObject);
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

  if VarIsNull(edBranch.EditValue) then
    iBranch := 0
  else
    iBranch := StrToIntDef(edBranch.EditValue, 0);

  if VarIsNull(edSales.EditValue) then
    iSales := 0
  else
    iSales := StrToIntDef(edSales.EditValue, 0);

  inherited;
  cdsCashPosition.Close;
  cdsCashPosition.Params[0].AsDate    := DateOf(dtTransDate.Date);
  cdsCashPosition.Params[1].AsInteger := ichkAccount;
  cdsCashPosition.Params[2].AsInteger := FAccID;
  cdsCashPosition.Params[3].AsInteger := ichkBranch;
  cdsCashPosition.Params[4].AsInteger := iBranch;
  cdsCashPosition.Params[5].AsInteger := ichkSales;
  cdsCashPosition.Params[6].AsInteger := iSales;
  cdsCashPosition.Open;
end;

procedure TfrmCashPosition.chkAccountPropertiesChange(Sender: TObject);
begin
  inherited;
  edAccCode.EditValue := '';
  edAccName.EditValue := '';
  edAccCode.Enabled   := chkAccount.Checked;
end;

procedure TfrmCashPosition.chkBranchPropertiesChange(Sender: TObject);
begin
  inherited;
  edBranch.EditValue := '';
  edBranch.Enabled   := chkBranch.Checked;
end;

procedure TfrmCashPosition.chkSalesPropertiesChange(Sender: TObject);
begin
  inherited;
  edSales.EditValue := '';
  edSales.Enabled   := chkSales.Checked;
end;

procedure TfrmCashPosition.edAccCodePropertiesButtonClick(Sender: TObject;
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

procedure TfrmCashPosition.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBranch.Active then
      cdsLuBranch.Open;

    if not cdsLuSales.Active then
      cdsLuSales.Open;
  end;
end;

Initialization
  RegisterClass(TfrmCashPosition);

end.
