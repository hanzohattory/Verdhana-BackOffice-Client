unit FormInputContractRepo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmInputContractRepo = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    txtSumLoanAmount: TcxCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBRadioGroup2: TcxDBRadioGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    glvvwContractRepoDetail: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsContractRepoDetail: TDataSource;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    gvwContractRepoD: TcxGridDBBandedTableView;
    gvwContractRepoDCONRID: TcxGridDBBandedColumn;
    gvwContractRepoDSEQNO: TcxGridDBBandedColumn;
    gvwContractRepoDSTOCKID: TcxGridDBBandedColumn;
    gvwContractRepoDSTOCKCODE: TcxGridDBBandedColumn;
    gvwContractRepoDSTOCKNAME: TcxGridDBBandedColumn;
    gvwContractRepoDSHARES: TcxGridDBBandedColumn;
    gvwContractRepoDTODAY_VAL: TcxGridDBBandedColumn;
    gvwContractRepoDINSERT_DATE: TcxGridDBBandedColumn;
    gvwContractRepoDMODDA: TcxGridDBBandedColumn;
    gvwContractRepoDMODUI: TcxGridDBBandedColumn;
    gvwContractRepoDAPPDA: TcxGridDBBandedColumn;
    gvwContractRepoDAPPUI: TcxGridDBBandedColumn;
    gvwContractRepoDUNDER4Y: TcxGridDBBandedColumn;
    gvwContractRepoDUNDER4YDA: TcxGridDBBandedColumn;
    gvwContractRepoDNOTES4Y: TcxGridDBBandedColumn;
    gvwContractRepoDISDEL: TcxGridDBBandedColumn;
    gvwContractRepoDID: TcxGridDBBandedColumn;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gvwContractRepoDetailSTOCKIDGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure gvwContractRepoDCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInputContractRepo: TfrmInputContractRepo;

implementation

{$R *.dfm}

uses FormContractRepo, DataGlobal, DataLookup;

procedure TfrmInputContractRepo.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', dsSubject.DataSet.FieldByName('ACCID').AsInteger, []) then
  begin
    dsSubject.DataSet.FieldByName('ACCCODE').AsString := dmGlobal.IntDataLookup.cdsLuAccountACCCODE.AsString;
    dsSubject.DataSet.FieldByName('ACCNAME').AsString := dmGlobal.IntDataLookup.cdsLuAccountACCNAME.AsString;
  end;
end;

procedure TfrmInputContractRepo.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', dsSubject.DataSet.FieldByName('ACCID').AsInteger, []) then
  begin
    dsSubject.DataSet.FieldByName('ACCCODE').AsString := dmGlobal.IntDataLookup.cdsLuAccountACCCODE.AsString;
    dsSubject.DataSet.FieldByName('ACCNAME').AsString := dmGlobal.IntDataLookup.cdsLuAccountACCNAME.AsString;
  end;
end;

procedure TfrmInputContractRepo.cxDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuInterest.Locate('INTERESTCODE', dsSubject.DataSet.FieldByName('INTERESTCODE').AsString, []) then
  begin
    dsSubject.DataSet.FieldByName('CCY').AsString          := dmGlobal.IntDataLookup.cdsLuInterestCCY.AsString;
    dsSubject.DataSet.FieldByName('INTERESTDESC').AsString := dmGlobal.IntDataLookup.cdsLuInterestINTERESTDESC.AsString;
    dsSubject.DataSet.FieldByName('CALCMETHOD').AsString   := dmGlobal.IntDataLookup.cdsLuInterestCALCMETHOD.AsString;
    dsSubject.DataSet.FieldByName('INTERESTRATE').AsString := dmGlobal.IntDataLookup.cdsLuInterestINTERESTRATE.AsString;
    dsSubject.DataSet.FieldByName('CALCBASIS').AsString    := dmGlobal.IntDataLookup.cdsLuInterestCALCBASIS.AsString;
    dsSubject.DataSet.FieldByName('INTERESTDAY').AsString  := dmGlobal.IntDataLookup.cdsLuInterestINTERESTDAY.AsString;
  end;
end;

procedure TfrmInputContractRepo.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
  begin
    dsSubject.DataSet.FieldByName('CONTRACT_NO').AsString := FormatFloat('00000000', dmGlobal.RemoteServer.GetSeq('TBL_CONTRACT_REPO'));
    dsSubject.DataSet.FieldByName('CON_DATE').AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
  end;
end;

procedure TfrmInputContractRepo.gvwContractRepoDCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if dsContractRepoDetail.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', dsContractRepoDetail.DataSet.FieldByName('STOCKID').AsInteger, []) then
    begin
      dsContractRepoDetail.DataSet.FieldByName('STOCKCODE').AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllINSTRUMENT_CODE.AsString;
      dsContractRepoDetail.DataSet.FieldByName('STOCKNAME').AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllSHORTNAME.AsString;
    end;
  end;

end;

procedure TfrmInputContractRepo.gvwContractRepoDetailSTOCKIDGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
//  if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', dsContractRepoDetail.DataSet.FieldByName('STOCKID').AsInteger, []) then
//  begin
//    dsContractRepoDetail.DataSet.FieldByName('STOCKCODE').AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllINSTRUMENT_CODE.AsString;
//    dsContractRepoDetail.DataSet.FieldByName('STOCKNAME').AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllSHORTNAME.AsString;
//  end;
end;

end.
