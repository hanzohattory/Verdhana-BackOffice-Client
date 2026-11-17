unit FormStockLedger;

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
  cxImageComboBox, cxDBLookupComboBox;

type
  TfrmStockLedger = class(TfrmEditorData)
    cdsStockLedgerH: TNClientDataset;
    cdsStockLedgerHSLGID: TLargeintField;
    cdsStockLedgerHVDATE: TDateField;
    cdsStockLedgerHEDATE: TDateField;
    cdsStockLedgerHVPERIODID: TLargeintField;
    cdsStockLedgerHVPERIODCODE: TStringField;
    cdsStockLedgerHEPERIODID: TLargeintField;
    cdsStockLedgerHEPERIODCODE: TStringField;
    cdsStockLedgerHHDESC: TStringField;
    cdsStockLedgerHTOTALDB: TFloatField;
    cdsStockLedgerHTOTALCR: TFloatField;
    cdsStockLedgerHPOSTED: TStringField;
    cdsStockLedgerHPOSTEDDATE: TDateField;
    cdsStockLedgerHPOSTEDUI: TStringField;
    cdsStockLedgerHCANCELED: TVarBytesField;
    cdsStockLedgerHCANCELDATE: TDateField;
    cdsStockLedgerHCANCELUI: TStringField;
    cdsStockLedgerHREVERSED: TStringField;
    cdsStockLedgerHREVERSDATE: TDateField;
    cdsStockLedgerHREVERSUI: TStringField;
    cdsStockLedgerHMODDA: TDateTimeField;
    cdsStockLedgerHMODUI: TStringField;
    cdsStockLedgerHAPPDA: TDateTimeField;
    cdsStockLedgerHAPPUI: TStringField;
    cdsStockLedgerHUNDER4Y: TIntegerField;
    cdsStockLedgerHUNDER4YDA: TDateTimeField;
    cdsStockLedgerHNOTES4Y: TStringField;
    cdsStockLedgerHISDEL: TIntegerField;
    cdsStockLedgerHID: TLargeintField;
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
    cdsStockLedgerD: TNClientDataset;
    dsStockLedgerD: TDataSource;
    cdsStockLedgerHqryStockLedger_D: TDataSetField;
    cdsStockLedgerDSLGID: TLargeintField;
    cdsStockLedgerDACCNO: TStringField;
    cdsStockLedgerDALTYPE: TStringField;
    cdsStockLedgerDSTOCKID: TLargeintField;
    cdsStockLedgerDDC: TStringField;
    cdsStockLedgerDAMOUNT: TFloatField;
    cdsStockLedgerDMODDA: TDateTimeField;
    cdsStockLedgerDMODUI: TStringField;
    cdsStockLedgerDAPPDA: TDateTimeField;
    cdsStockLedgerDAPPUI: TStringField;
    cdsStockLedgerDUNDER4Y: TIntegerField;
    cdsStockLedgerDUNDER4YDA: TDateTimeField;
    cdsStockLedgerDNOTES4Y: TStringField;
    cdsStockLedgerDISDEL: TIntegerField;
    cdsStockLedgerDID: TLargeintField;
    cdsStockLedgerDDEBET: TFloatField;
    cdsStockLedgerDCREDIT: TFloatField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwStockLedgerD: TcxGridDBBandedTableView;
    gvwStockLedgerDSLGID: TcxGridDBBandedColumn;
    gvwStockLedgerDSLGCD: TcxGridDBBandedColumn;
    gvwStockLedgerDACCID: TcxGridDBBandedColumn;
    gvwStockLedgerDACCNO: TcxGridDBBandedColumn;
    gvwStockLedgerDALTYPE: TcxGridDBBandedColumn;
    gvwStockLedgerDSTOCKID: TcxGridDBBandedColumn;
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
    cdsStockLedgerDACCNAME: TStringField;
    gvwStockLedgerDACCNAME: TcxGridDBBandedColumn;
    cdsStockLedgerHSLGCD: TStringField;
    cdsStockLedgerDSLGCD: TStringField;
    cdsStockLedgerDMARKETCODE: TStringField;
    cdsStockLedgerDPRICE: TFloatField;
    gvwStockLedgerDMARKETCODE: TcxGridDBBandedColumn;
    gvwStockLedgerDPRICE: TcxGridDBBandedColumn;
    cdsStockLedgerDSEQNUM: TLargeintField;
    cdsStockLedgerDACCID: TLargeintField;
    procedure cdsStockLedgerHNewRecord(DataSet: TDataSet);
    procedure cdsStockLedgerHVDATEChange(Sender: TField);
    procedure cdsStockLedgerHEDATEChange(Sender: TField);
    procedure cdsStockLedgerHBeforePost(DataSet: TDataSet);
    procedure cdsStockLedgerDCalcFields(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsStockLedgerDAfterPost(DataSet: TDataSet);
    procedure cdsStockLedgerDNewRecord(DataSet: TDataSet);
    procedure cdsStockLedgerDBeforeEdit(DataSet: TDataSet);
    procedure cdsStockLedgerDACCIDChange(Sender: TField);
    procedure cdsStockLedgerDSTOCKIDChange(Sender: TField);
  private
    FDebet: Double;
    FCredit: Double;

    procedure OpenPeriodByDate(ADate: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockLedger: TfrmStockLedger;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmStockLedger.btnOKClick(Sender: TObject);
begin
  if cdsStockLedgerD.State in dsEditModes then
    cdsStockLedgerD.Post;

  if cdsStockLedgerHTOTALDB.AsFloat <> cdsStockLedgerHTOTALCR.AsFloat then
    MessageDlg('Total Debet and Credit must be equal', mtError, [mbOk], 0)
  else
    inherited;
end;

procedure TfrmStockLedger.cdsStockLedgerDACCIDChange(Sender: TField);
begin
  inherited;
  cdsStockLedgerDMARKETCODE.AsString := 'IDX';
end;

procedure TfrmStockLedger.cdsStockLedgerDAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsStockLedgerH.Edit;
  cdsStockLedgerHTOTALDB.AsFloat := cdsStockLedgerHTOTALDB.AsFloat - FDebet + cdsStockLedgerDDEBET.AsFloat;
  cdsStockLedgerHTOTALCR.AsFloat := cdsStockLedgerHTOTALCR.AsFloat - FCredit + cdsStockLedgerDCREDIT.AsFloat;
  cdsStockLedgerH.Post;
end;

procedure TfrmStockLedger.cdsStockLedgerDBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  FDebet  := cdsStockLedgerDDEBET.AsFloat;
  FCredit := cdsStockLedgerDCREDIT.AsFloat;
end;

procedure TfrmStockLedger.cdsStockLedgerDCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsStockLedgerDDC.AsString = 'D' then
  begin
    cdsStockLedgerDDEBET.AsFloat  := cdsStockLedgerDAMOUNT.AsFloat;
    cdsStockLedgerDCREDIT.AsFloat := 0;
  end
  else if cdsStockLedgerDDC.AsString = 'C' then
  begin
    cdsStockLedgerDDEBET.AsFloat  := 0;
    cdsStockLedgerDCREDIT.AsFloat := cdsStockLedgerDAMOUNT.AsFloat;
  end;

end;

procedure TfrmStockLedger.cdsStockLedgerDNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsStockLedgerDAMOUNT.AsFloat := 0;

  FDebet  := 0;
  FCredit := 0;
end;

procedure TfrmStockLedger.cdsStockLedgerDSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsStockLedgerDSTOCKID.AsInteger, []) then
      cdsStockLedgerDPRICE.AsFloat := cdsLuInstrumentAllLASTCLSPRICE.AsFloat;
  end;
end;

procedure TfrmStockLedger.cdsStockLedgerHBeforePost(DataSet: TDataSet);
var
  sSeqName: string;
  iSeq: Int64;
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    sSeqName := cdsStockLedgerHEPERIODCODE.AsString;
    iSeq     := dmGlobal.RemoteServer.GetSeq(sSeqName);

    cdsStockLedgerHSLGID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKLEDGER');
    cdsStockLedgerHSLGCD.AsString   := cdsStockLedgerHEPERIODCODE.AsString + '/' + FormatFloat('00000', iSeq);
  end;
end;

procedure TfrmStockLedger.cdsStockLedgerHEDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsStockLedgerHEDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsStockLedgerHEPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsStockLedgerHEPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;
end;

procedure TfrmStockLedger.cdsStockLedgerHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsStockLedgerHVDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsStockLedgerHEDATE.AsDateTime := cdsStockLedgerHVDATE.AsDateTime;
end;

procedure TfrmStockLedger.cdsStockLedgerHVDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsStockLedgerHVDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsStockLedgerHVPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsStockLedgerHVPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;
end;

procedure TfrmStockLedger.OpenPeriodByDate(ADate: TDateTime);
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
