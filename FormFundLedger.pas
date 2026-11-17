unit FormFundLedger;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  cxImageComboBox, cxDBLookupComboBox, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmFundLedger = class(TfrmEditorData)
    cdsFundLedgerH: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cdsFundLedgerD: TNClientDataset;
    dsStockLedgerD: TDataSource;
    cdsFundLedgerDACCNO: TStringField;
    cdsFundLedgerDALTYPE: TStringField;
    cdsFundLedgerDDC: TStringField;
    cdsFundLedgerDAMOUNT: TFloatField;
    cdsFundLedgerDMODDA: TDateTimeField;
    cdsFundLedgerDMODUI: TStringField;
    cdsFundLedgerDAPPDA: TDateTimeField;
    cdsFundLedgerDAPPUI: TStringField;
    cdsFundLedgerDUNDER4Y: TIntegerField;
    cdsFundLedgerDUNDER4YDA: TDateTimeField;
    cdsFundLedgerDNOTES4Y: TStringField;
    cdsFundLedgerDISDEL: TIntegerField;
    cdsFundLedgerDID: TLargeintField;
    cdsFundLedgerDDEBET: TFloatField;
    cdsFundLedgerDCREDIT: TFloatField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwStockLedgerD: TcxGridDBBandedTableView;
    gvwStockLedgerDACCID: TcxGridDBBandedColumn;
    gvwStockLedgerDACCNO: TcxGridDBBandedColumn;
    gvwStockLedgerDALTYPE: TcxGridDBBandedColumn;
    gvwStockLedgerDDC: TcxGridDBBandedColumn;
    gvwStockLedgerDAMOUNT: TcxGridDBBandedColumn;
    gvwStockLedgerDMODDA: TcxGridDBBandedColumn;
    gvwStockLedgerDMODUI: TcxGridDBBandedColumn;
    gvwStockLedgerDAPPDA: TcxGridDBBandedColumn;
    gvwStockLedgerDAPPUI: TcxGridDBBandedColumn;
    gvwStockLedgerDUNDER4Y: TcxGridDBBandedColumn;
    gvwStockLedgerDUNDER4YDA: TcxGridDBBandedColumn;
    gvwStockLedgerDNOTES4Y: TcxGridDBBandedColumn;
    gvwStockLedgerDISDEL: TcxGridDBBandedColumn;
    gvwStockLedgerDID: TcxGridDBBandedColumn;
    gvwStockLedgerDDEBET: TcxGridDBBandedColumn;
    gvwStockLedgerDCREDIT: TcxGridDBBandedColumn;
    gvwStockLedgerDACCNAME: TcxGridDBBandedColumn;
    cdsFundLedgerHFLGID: TLargeintField;
    cdsFundLedgerHFLGCD: TStringField;
    cdsFundLedgerHVDATE: TDateField;
    cdsFundLedgerHEDATE: TDateField;
    cdsFundLedgerHVPERIODID: TLargeintField;
    cdsFundLedgerHVPERIODCODE: TStringField;
    cdsFundLedgerHEPERIODID: TLargeintField;
    cdsFundLedgerHEPERIODCODE: TStringField;
    cdsFundLedgerHHDESC: TStringField;
    cdsFundLedgerHTOTALDB: TFloatField;
    cdsFundLedgerHTOTALCR: TFloatField;
    cdsFundLedgerHPOSTED: TStringField;
    cdsFundLedgerHPOSTEDDATE: TDateField;
    cdsFundLedgerHPOSTEDUI: TStringField;
    cdsFundLedgerHCANCELED: TVarBytesField;
    cdsFundLedgerHCANCELDATE: TDateField;
    cdsFundLedgerHCANCELUI: TStringField;
    cdsFundLedgerHREVERSED: TStringField;
    cdsFundLedgerHREVERSDATE: TDateField;
    cdsFundLedgerHREVERSUI: TStringField;
    cdsFundLedgerHMODDA: TDateTimeField;
    cdsFundLedgerHMODUI: TStringField;
    cdsFundLedgerHAPPDA: TDateTimeField;
    cdsFundLedgerHAPPUI: TStringField;
    cdsFundLedgerHUNDER4Y: TIntegerField;
    cdsFundLedgerHUNDER4YDA: TDateTimeField;
    cdsFundLedgerHNOTES4Y: TStringField;
    cdsFundLedgerHISDEL: TIntegerField;
    cdsFundLedgerHID: TLargeintField;
    cdsFundLedgerHqryFundLedger_D: TDataSetField;
    cdsFundLedgerDFLGID: TLargeintField;
    cdsFundLedgerDFLGCD: TStringField;
    cdsFundLedgerDCCYCODE: TStringField;
    cdsFundLedgerDACCNAME: TStringField;
    gvwStockLedgerDFLGID: TcxGridDBBandedColumn;
    gvwStockLedgerDFLGCD: TcxGridDBBandedColumn;
    gvwStockLedgerDCCYCODE: TcxGridDBBandedColumn;
    cdsFundLedgerDSEQNUM: TLargeintField;
    cdsFundLedgerDACCID: TLargeintField;
    cdsFundLedgerHGL_SUBGL: TStringField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cdsFundLedgerHNewRecord(DataSet: TDataSet);
    procedure cdsFundLedgerHVDATEChange(Sender: TField);
    procedure cdsFundLedgerHEDATEChange(Sender: TField);
    procedure cdsFundLedgerHBeforePost(DataSet: TDataSet);
    procedure cdsFundLedgerDCalcFields(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsFundLedgerDAfterPost(DataSet: TDataSet);
    procedure cdsFundLedgerDNewRecord(DataSet: TDataSet);
    procedure cdsFundLedgerDBeforeEdit(DataSet: TDataSet);
    procedure cdsFundLedgerDACCIDChange(Sender: TField);
    procedure cdsFundLedgerHGL_SUBGLChange(Sender: TField);
  private
    FDebet: Double;
    FCredit: Double;

    procedure OpenPeriodByDate(ADate: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFundLedger: TfrmFundLedger;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmFundLedger.btnOKClick(Sender: TObject);
begin
  if cdsFundLedgerD.State in dsEditModes then
    cdsFundLedgerD.Post;

  if cdsFundLedgerHTOTALDB.AsFloat <> cdsFundLedgerHTOTALCR.AsFloat then
    MessageDlg('Total Debet and Credit must be equal', mtError, [mbOk], 0)
  else
    inherited;
end;

procedure TfrmFundLedger.cdsFundLedgerDACCIDChange(Sender: TField);
begin
  inherited;
  cdsFundLedgerDCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmFundLedger.cdsFundLedgerDAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsFundLedgerH.Edit;
  cdsFundLedgerHTOTALDB.AsFloat := cdsFundLedgerHTOTALDB.AsFloat - FDebet + cdsFundLedgerDDEBET.AsFloat;
  cdsFundLedgerHTOTALCR.AsFloat := cdsFundLedgerHTOTALCR.AsFloat - FCredit + cdsFundLedgerDCREDIT.AsFloat;
  cdsFundLedgerH.Post;
end;

procedure TfrmFundLedger.cdsFundLedgerDBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  FDebet  := cdsFundLedgerDDEBET.AsFloat;
  FCredit := cdsFundLedgerDCREDIT.AsFloat;
end;

procedure TfrmFundLedger.cdsFundLedgerDCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsFundLedgerDDC.AsString = 'D' then
  begin
    cdsFundLedgerDDEBET.AsFloat  := cdsFundLedgerDAMOUNT.AsFloat;
    cdsFundLedgerDCREDIT.AsFloat := 0;
  end
  else if cdsFundLedgerDDC.AsString = 'C' then
  begin
    cdsFundLedgerDDEBET.AsFloat  := 0;
    cdsFundLedgerDCREDIT.AsFloat := cdsFundLedgerDAMOUNT.AsFloat;
  end;

end;

procedure TfrmFundLedger.cdsFundLedgerDNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsFundLedgerDAMOUNT.AsFloat := 0;

  FDebet  := 0;
  FCredit := 0;
end;

procedure TfrmFundLedger.cdsFundLedgerHBeforePost(DataSet: TDataSet);
var
  sSeqName: string;
  iSeq: Int64;
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    sSeqName := cdsFundLedgerHEPERIODCODE.AsString;
    iSeq     := dmGlobal.RemoteServer.GetSeq(sSeqName);

    cdsFundLedgerHFLGID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_FUNDLEDGER');
    cdsFundLedgerHFLGCD.AsString   := cdsFundLedgerHEPERIODCODE.AsString + '/' + FormatFloat('00000', iSeq);
  end;
end;

procedure TfrmFundLedger.cdsFundLedgerHEDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsFundLedgerHEDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsFundLedgerHEPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsFundLedgerHEPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;
end;

procedure TfrmFundLedger.cdsFundLedgerHGL_SUBGLChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsluActLedTypeFund.Close;
    cdsluActLedTypeFund.Params[0].AsString := cdsFundLedgerHGL_SUBGL.AsString;
    cdsluActLedTypeFund.Open;
  end;
end;

procedure TfrmFundLedger.cdsFundLedgerHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsFundLedgerHFLGCD.AsString    := '<Auto>';
  cdsFundLedgerHVDATE.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
  cdsFundLedgerHEDATE.AsDateTime  := cdsFundLedgerHVDATE.AsDateTime;
  cdsFundLedgerHGL_SUBGL.AsString := 'S';
end;

procedure TfrmFundLedger.cdsFundLedgerHVDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsFundLedgerHVDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsFundLedgerHVPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsFundLedgerHVPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;
end;

procedure TfrmFundLedger.OpenPeriodByDate(ADate: TDateTime);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsGLPeriodByDate.Close;
    cdsGLPeriodByDate.Params[0].Value := ADate;
    cdsGLPeriodByDate.Params[1].Value := ADate;
    cdsGLPeriodByDate.Open;
  end;
end;

end.
