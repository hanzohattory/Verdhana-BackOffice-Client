unit FormContractRepo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxCheckBox,
  dxLayoutLookAndFeels, dxDateRanges;

type
  TfrmContractRepo = class(TfrmEditorData)
    cdsContractRepo: TNClientDataset;
    cdsContractRepoCONRID: TLargeintField;
    cdsContractRepoCONTRACT_NO: TStringField;
    cdsContractRepoENTTID: TIntegerField;
    cdsContractRepoENTTCODE: TStringField;
    cdsContractRepoENTTNAME: TStringField;
    cdsContractRepoTRXDATE: TDateTimeField;
    cdsContractRepoTRXTYPE: TStringField;
    cdsContractRepoACCID: TIntegerField;
    cdsContractRepoACCCODE: TStringField;
    cdsContractRepoACCNAME: TStringField;
    cdsContractRepoRACCID: TIntegerField;
    cdsContractRepoRACCCODE: TStringField;
    cdsContractRepoRACCNAME: TStringField;
    cdsContractRepoSETTDATE: TDateTimeField;
    cdsContractRepoSETTDAY: TIntegerField;
    cdsContractRepoMATURDATE: TDateTimeField;
    cdsContractRepoCCY: TStringField;
    cdsContractRepoLOAN_AMT: TFloatField;
    cdsContractRepoDUE_AMT: TFloatField;
    cdsContractRepoDISCOUNT: TSmallintField;
    cdsContractRepoINTERESTCODE: TStringField;
    cdsContractRepoINTERESTDESC: TStringField;
    cdsContractRepoINTERESTRATE: TFloatField;
    cdsContractRepoINTERESTTABLE: TStringField;
    cdsContractRepoINTERESTDAY: TIntegerField;
    cdsContractRepoCALCMETHOD: TStringField;
    cdsContractRepoCALCBASIS: TStringField;
    cdsContractRepoAPR_COLL: TFloatField;
    cdsContractRepoFORCESELL: TFloatField;
    cdsContractRepoCOLL_CALL: TFloatField;
    cdsContractRepoINTEREST_AMT: TFloatField;
    cdsContractRepoORG_AMT: TFloatField;
    cdsContractRepoREPO_AMT: TFloatField;
    cdsContractRepoCOLL_AMT: TFloatField;
    cdsContractRepoCORPACT: TSmallintField;
    cdsContractRepoISACCRUE: TSmallintField;
    cdsContractRepoISMONTHBASIS: TSmallintField;
    cdsContractRepoMODDA: TDateTimeField;
    cdsContractRepoMODUI: TStringField;
    cdsContractRepoAPPDA: TDateTimeField;
    cdsContractRepoAPPUI: TStringField;
    cdsContractRepoUNDER4Y: TIntegerField;
    cdsContractRepoUNDER4YDA: TDateTimeField;
    cdsContractRepoNOTES4Y: TStringField;
    cdsContractRepoISDEL: TIntegerField;
    cdsContractRepoID: TLargeintField;
    cdsContractRepoCON_DATE: TDateTimeField;
    cdsContractRepoTOPUP: TFloatField;
    cdsContractRepoDUE_DATE: TDateTimeField;
    cdsContractRepoREPO_STATUS: TStringField;
    cdsContractRepoqryCONTRACT_REPO_D: TDataSetField;
    cdsContractRepoD: TNClientDataset;
    cdsContractRepoDCONRID: TLargeintField;
    cdsContractRepoDSEQNO: TIntegerField;
    cdsContractRepoDSTOCKID: TIntegerField;
    cdsContractRepoDSTOCKCODE: TStringField;
    cdsContractRepoDSTOCKNAME: TStringField;
    cdsContractRepoDSHARES: TFloatField;
    cdsContractRepoDTODAY_VAL: TFloatField;
    cdsContractRepoDINSERT_DATE: TDateField;
    cdsContractRepoDMODDA: TDateTimeField;
    cdsContractRepoDMODUI: TStringField;
    cdsContractRepoDAPPDA: TDateTimeField;
    cdsContractRepoDAPPUI: TStringField;
    cdsContractRepoDUNDER4Y: TIntegerField;
    cdsContractRepoDUNDER4YDA: TDateTimeField;
    cdsContractRepoDNOTES4Y: TStringField;
    cdsContractRepoDISDEL: TIntegerField;
    cdsContractRepoDID: TLargeintField;
    cdsContractRepoDQTY: TLargeintField;
    cdsContractRepoDCLS_PRICE: TFloatField;
    cdsContractRepoDCOLL_AMT: TFloatField;
    cdsContractRepoDACCID: TLargeintField;
    cdsContractRepoDACCCODE: TStringField;
    cdsContractRepoDMARKETCODE: TStringField;
    cdsContractRepoDLOCALCODE: TStringField;
    cdsContractRepoDHCUT_REPO: TFloatField;
    cdsContractRepoDLASTCLSPRICE: TFloatField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    grdBrowse: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    grdBrowseLevel1: TcxGridLevel;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dsDetail: TDataSource;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxdbtext: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    lblCollateral: TcxLabel;
    dxLayoutControl1Item21: TdxLayoutItem;
    lblRatio: TcxLabel;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item25: TdxLayoutItem;
    gvwBrowseCONRID: TcxGridDBBandedColumn;
    gvwBrowseSEQNO: TcxGridDBBandedColumn;
    gvwBrowseSTOCKID: TcxGridDBBandedColumn;
    gvwBrowseSTOCKCODE: TcxGridDBBandedColumn;
    gvwBrowseSTOCKNAME: TcxGridDBBandedColumn;
    gvwBrowseSHARES: TcxGridDBBandedColumn;
    gvwBrowseTODAY_VAL: TcxGridDBBandedColumn;
    gvwBrowseINSERT_DATE: TcxGridDBBandedColumn;
    gvwBrowseMODDA: TcxGridDBBandedColumn;
    gvwBrowseMODUI: TcxGridDBBandedColumn;
    gvwBrowseAPPDA: TcxGridDBBandedColumn;
    gvwBrowseAPPUI: TcxGridDBBandedColumn;
    gvwBrowseUNDER4Y: TcxGridDBBandedColumn;
    gvwBrowseUNDER4YDA: TcxGridDBBandedColumn;
    gvwBrowseNOTES4Y: TcxGridDBBandedColumn;
    gvwBrowseISDEL: TcxGridDBBandedColumn;
    gvwBrowseID: TcxGridDBBandedColumn;
    gvwBrowseQTY: TcxGridDBBandedColumn;
    gvwBrowseCLS_PRICE: TcxGridDBBandedColumn;
    gvwBrowseCOLL_AMT: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseACCCODE: TcxGridDBBandedColumn;
    gvwBrowseMARKETCODE: TcxGridDBBandedColumn;
    gvwBrowseLOCALCODE: TcxGridDBBandedColumn;
    gvwBrowseHCUT_REPO: TcxGridDBBandedColumn;
    gvwBrowseLASTCLSPRICE: TcxGridDBBandedColumn;
    cdsContractRepoDCOLLATERAL: TFloatField;
    gvwBrowseCOLLATERAL: TcxGridDBBandedColumn;
    cdsContractRepoqryContractInterest: TDataSetField;
    cdsContractInterest: TNClientDataset;
    dsContractInterest: TDataSource;
    cdsContractInterestCONRID: TLargeintField;
    cdsContractInterestSEQID: TLargeintField;
    cdsContractInterestINTEREST_DATE: TDateField;
    cdsContractInterestREPO_AMOUNT: TFloatField;
    cdsContractInterestRATE: TFloatField;
    cdsContractInterestINTEREST_AMT: TFloatField;
    cdsContractInterestACCRUED: TStringField;
    cdsContractInterestACCRUED_DATE: TDateField;
    cdsContractInterestINTRS_ID: TLargeintField;
    cdsContractInterestPAID: TStringField;
    cdsContractInterestPAID_DATE: TDateField;
    cdsContractInterestSIID: TLargeintField;
    grdBrowseLevel2: TcxGridLevel;
    gvwInterest: TcxGridDBBandedTableView;
    gvwInterestCONRID: TcxGridDBBandedColumn;
    gvwInterestSEQID: TcxGridDBBandedColumn;
    gvwInterestINTEREST_DATE: TcxGridDBBandedColumn;
    gvwInterestREPO_AMOUNT: TcxGridDBBandedColumn;
    gvwInterestRATE: TcxGridDBBandedColumn;
    gvwInterestINTEREST_AMT: TcxGridDBBandedColumn;
    gvwInterestACCRUED: TcxGridDBBandedColumn;
    gvwInterestACCRUED_DATE: TcxGridDBBandedColumn;
    gvwInterestINTRS_ID: TcxGridDBBandedColumn;
    gvwInterestPAID: TcxGridDBBandedColumn;
    gvwInterestPAID_DATE: TcxGridDBBandedColumn;
    gvwInterestSIID: TcxGridDBBandedColumn;
    procedure cdsContractRepoDCalcFields(DataSet: TDataSet);
    procedure gvwBrowseTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContractRepo: TfrmContractRepo;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmContractRepo.cdsContractRepoDCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsContractRepoDCOLLATERAL.AsFloat := cdsContractRepoDQTY.AsLargeInt
    * cdsContractRepoDLASTCLSPRICE.AsFloat * cdsContractRepoDHCUT_REPO.AsFloat / 100;
end;

procedure TfrmContractRepo.gvwBrowseTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
Var
  fNilai, fRatio: Double;
begin
  inherited;
  fNilai := StrToFloatDef(VarToStr(AValue), 0);
  fRatio := fNilai / cdsContractRepoREPO_AMT.AsFloat * 100;

  lblCollateral.Caption := FormatFloat('#,##0', fNilai);
  lblRatio.Caption := FormatFloat('#,##0.00 %', fRatio);

  if fRatio < cdsContractRepoFORCESELL.AsFloat then
  begin
    lblCollateral.Style.TextColor := clRed;
    lblCollateral.StyleDisabled.TextColor := clRed;
    lblRatio.Style.TextColor := clRed;
    lblRatio.StyleDisabled.TextColor := clRed;
  end
  else if fRatio < cdsContractRepoCOLL_CALL.AsFloat then
  begin
    lblCollateral.Style.TextColor := clYellow;
    lblCollateral.StyleDisabled.TextColor := clYellow;
    lblRatio.Style.TextColor := clYellow;
    lblRatio.StyleDisabled.TextColor := clYellow;
  end
  else
  begin
    lblCollateral.Style.TextColor := clBlue;
    lblCollateral.StyleDisabled.TextColor := clBlue;
    lblRatio.Style.TextColor := clBlue;
    lblRatio.StyleDisabled.TextColor := clBlue;
  end;
end;

end.
