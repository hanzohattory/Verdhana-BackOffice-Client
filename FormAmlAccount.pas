unit FormAmlAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxDBLabel, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl, cxMemo, cxDBEdit, cxTextEdit,
  dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGridLevel,
  cxGrid, cxGroupBox, cxCheckGroup, NReportClient, cxImageComboBox, cxCheckBox,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAMLAccount = class(TfrmEditorData)
    cdsAmlAccount: TNClientDataset;
    cdsAmlAccountCUST_CODE: TStringField;
    cdsAmlAccountCUST_NAME: TStringField;
    cdsAmlAccountNO_ID: TStringField;
    cdsAmlAccountNPWP: TStringField;
    cdsAmlAccountSOURCE_INC: TStringField;
    cdsAmlAccountOCCUPATION: TStringField;
    cdsAmlAccountWORK_PLACE: TStringField;
    cdsAmlAccountINCOME: TFloatField;
    cdsAmlAccountOA_DATE: TDateTimeField;
    cdsAmlAccountHRC_STATUS: TStringField;
    cdsAmlAccountHRC_REMARKS: TStringField;
    cdsAmlAccountASSESSMENT_STATUS: TStringField;
    cdsAmlAccountASSESSMENT_DATE: TDateTimeField;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutItem3: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutItem5: TdxLayoutItem;
    cxDBLabel5: TcxDBLabel;
    dxLayoutItem6: TdxLayoutItem;
    cxDBLabel6: TcxDBLabel;
    dxLayoutItem7: TdxLayoutItem;
    cxDBLabel7: TcxDBLabel;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBLabel8: TcxDBLabel;
    dxLayoutItem9: TdxLayoutItem;
    cdsAmlAccountSOURCE_NAME: TStringField;
    cxDBLabel9: TcxDBLabel;
    dxLayoutItem10: TdxLayoutItem;
    cxDBLabel10: TcxDBLabel;
    dxLayoutItem11: TdxLayoutItem;
    cxDBLabel11: TcxDBLabel;
    dxLayoutItem12: TdxLayoutItem;
    cxDBLabel12: TcxDBLabel;
    dxLayoutItem13: TdxLayoutItem;
    AmlDesc: TcxPageControl;
    tsAssetOutOfProfile: TcxTabSheet;
    tsNonCash: TcxTabSheet;
    tsCash: TcxTabSheet;
    cdsPortofolio: TNClientDataset;
    cdsCashOnHand: TNClientDataset;
    cdsNonCash: TNClientDataset;
    cdsCash: TNClientDataset;
    dsPorfolio: TDataSource;
    dsCashOnHand: TDataSource;
    dsNonCash: TDataSource;
    dsCash: TDataSource;
    cdsPortofolioCUST_CODE: TStringField;
    cdsPortofolioSTOCK_CODE: TStringField;
    cdsPortofolioSTOCK_NAME: TStringField;
    cdsPortofolioQUANTITY: TFloatField;
    cdsPortofolioCLOSE_PRICE: TFloatField;
    cdsPortofolioVALUE: TFloatField;
    cdsPortofolioTRX_DATE: TDateField;
    cdsCashOnHandCUST_CODE: TStringField;
    cdsCashOnHandBANK_CODE: TStringField;
    cdsCashOnHandBANK_ACC_NO: TStringField;
    cdsCashOnHandAMOUNT: TFloatField;
    cdsCashOnHandCASH_OUTSTAND: TFloatField;
    cdsCashOnHandTRX_DATE: TDateField;
    cdsNonCashCUST_CODE: TStringField;
    cdsNonCashTRX_DATE: TDateField;
    cdsNonCashTRX_TYPE: TStringField;
    cdsNonCashSTOCK_CODE: TStringField;
    cdsNonCashQUANTITY: TFloatField;
    cdsNonCashPRICE: TFloatField;
    cdsNonCashTRX_VALUE: TFloatField;
    cdsCashCUST_CODE: TStringField;
    cdsCashTRX_DATE: TDateField;
    cdsCashTRX_TYPE: TStringField;
    cdsCashTRX_AMOUNT: TFloatField;
    cdsCashACC_TYPE: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwPortofolio: TcxGridDBBandedTableView;
    cxGrid1Level2: TcxGridLevel;
    gvwCashOnHand: TcxGridDBBandedTableView;
    gvwPortofolioCUST_CODE: TcxGridDBBandedColumn;
    gvwPortofolioSTOCK_CODE: TcxGridDBBandedColumn;
    gvwPortofolioSTOCK_NAME: TcxGridDBBandedColumn;
    gvwPortofolioQUANTITY: TcxGridDBBandedColumn;
    gvwPortofolioCLOSE_PRICE: TcxGridDBBandedColumn;
    gvwPortofolioVALUE: TcxGridDBBandedColumn;
    gvwPortofolioTRX_DATE: TcxGridDBBandedColumn;
    gvwCashOnHandCUST_CODE: TcxGridDBBandedColumn;
    gvwCashOnHandBANK_CODE: TcxGridDBBandedColumn;
    gvwCashOnHandBANK_ACC_NO: TcxGridDBBandedColumn;
    gvwCashOnHandAMOUNT: TcxGridDBBandedColumn;
    gvwCashOnHandCASH_OUTSTAND: TcxGridDBBandedColumn;
    gvwCashOnHandTRX_DATE: TcxGridDBBandedColumn;
    dsReportDate: TDataSource;
    cdsReportDate: TClientDataSet;
    cdsReportDateREPORTDATE: TDateField;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwNonCash: TcxGridDBBandedTableView;
    gvwNonCashCUST_CODE: TcxGridDBBandedColumn;
    gvwNonCashTRX_DATE: TcxGridDBBandedColumn;
    gvwNonCashTRX_TYPE: TcxGridDBBandedColumn;
    gvwNonCashSTOCK_CODE: TcxGridDBBandedColumn;
    gvwNonCashQUANTITY: TcxGridDBBandedColumn;
    gvwNonCashPRICE: TcxGridDBBandedColumn;
    gvwNonCashTRX_VALUE: TcxGridDBBandedColumn;
    cxGrid3: TcxGrid;
    gvwCash: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    gvwCashCUST_CODE: TcxGridDBBandedColumn;
    gvwCashTRX_DATE: TcxGridDBBandedColumn;
    gvwCashTRX_TYPE: TcxGridDBBandedColumn;
    gvwCashTRX_AMOUNT: TcxGridDBBandedColumn;
    gvwCashACC_TYPE: TcxGridDBBandedColumn;
    chkStatus: TcxCheckGroup;
    dxLayoutItem14: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    ReportContainer: TNClientReportContainer;
    cdsAmlAccountASSET_PROFILE_STAT: TStringField;
    cdsAmlAccountUNUSUAL_NONCASH: TStringField;
    cdsAmlAccountUNUSUAL_CASH: TStringField;
    cdsAmlAccountINCOME_VALUE: TFloatField;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cdsCashX: TFloatField;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem17: TdxLayoutItem;
    cxDBLabel13: TcxDBLabel;
    dxLayoutItem16: TdxLayoutItem;
    cdsAmlAccountKSEIACC: TStringField;
    cdsAmlAccountKSEISUBACC: TStringField;
    cdsCashOnHandAR: TFloatField;
    cdsCashOnHandAP: TFloatField;
    gvwCashOnHandAR: TcxGridDBBandedColumn;
    gvwCashOnHandAP: TcxGridDBBandedColumn;
    cdsPortofolioCUST_ID: TLargeintField;
    cdsCashOnHandCUST_ID: TLargeintField;
    cdsAmlAccountCUST_ID: TLargeintField;
    cdsAmlAccountACCID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsCashCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function AmlCustomer(ACustID: Integer; ADate: TDateTime): Boolean; Overload;
var
  frmAMLAccount: TfrmAMLAccount;

implementation

{$R *.dfm}

uses DataGlobal;

function AmlCustomer(ACustID: Integer; ADate: TDateTime): Boolean; Overload;
begin
  with TfrmAMLAccount.Create(Application) do
  begin
    cdsAmlAccount.Close;
    cdsAmlAccount.Params[0].AsDateTime := ADate;
    cdsAmlAccount.Params[1].AsInteger  := ACustID;
    cdsAmlAccount.Open;

    ShowModal;
  end;
end;

procedure TfrmAMLAccount.cdsCashCalcFields(DataSet: TDataSet);
begin
  inherited;
  if UpperCase(cdsCashTRX_TYPE.AsString) = 'C' then
    cdsCashX.AsFloat := cdsCashTRX_AMOUNT.AsFloat
  else
    cdsCashX.AsFloat := - cdsCashTRX_AMOUNT.AsFloat;
end;

procedure TfrmAMLAccount.cxButton1Click(Sender: TObject);
begin
//  inherited;
  ReportContainer.Params[0].AsDate    := cdsReportDateREPORTDATE.AsDateTime;
  ReportContainer.Params[1].Asinteger := cdsAmlAccountCUST_ID.AsInteger;

  if AmlDesc.ActivePageIndex = 0 then
  begin
    ReportContainer.ReportName := 'AML\AssetOutofProfile.fr3';
  end
  else if AmlDesc.ActivePageIndex = 1 then
  begin
    ReportContainer.ReportName := 'AML\UnusualNonCashTransaction.fr3';
  end
  else if AmlDesc.ActivePageIndex = 2 then
  begin
    ReportContainer.ReportName := 'AML\UnusualCashTransaction.fr3';
  end;

  ReportContainer.PreviewReport;
end;

procedure TfrmAMLAccount.FormShow(Sender: TObject);
begin
  inherited;
  cdsReportDate.CreateDataSet;
  cdsReportDate.Append;
  cdsReportDateREPORTDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsReportDate.Post;

  cdsPortofolio.Close;
  cdsPortofolio.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsPortofolio.Params[1].Asinteger := cdsAmlAccountCUST_ID.AsInteger;
  cdsPortofolio.Open;

  cdsCashOnHand.Close;
  cdsCashOnHand.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsCashOnHand.Params[1].Asinteger := cdsAmlAccountCUST_ID.AsInteger;
  cdsCashOnHand.Open;

  cdsNonCash.Close;
  cdsNonCash.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsNonCash.Params[1].Asinteger := cdsAmlAccountCUST_ID.AsInteger;
  cdsNonCash.Open;

  cdsCash.Close;
  cdsCash.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsCash.Params[1].Asinteger := cdsAmlAccountCUST_ID.AsInteger;
  cdsCash.Open;

  AmlDesc.Pages[0].TabVisible := cdsAmlAccountASSET_PROFILE_STAT.AsString = '1';
  AmlDesc.Pages[1].TabVisible := cdsAmlAccountUNUSUAL_NONCASH.AsString = '1';
  AmlDesc.Pages[2].TabVisible := cdsAmlAccountUNUSUAL_CASH.AsString = '1';

  if AmlDesc.Pages[0].TabVisible then
    chkStatus.States[0] := cbsChecked;
  if AmlDesc.Pages[1].TabVisible then
    chkStatus.States[1] := cbsChecked;
  if AmlDesc.Pages[2].TabVisible then
    chkStatus.States[2] := cbsChecked;
end;

end.
