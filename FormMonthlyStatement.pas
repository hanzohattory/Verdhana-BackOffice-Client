unit FormMonthlyStatement;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, Vcl.StdCtrls, dxLayoutContainer,
  cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  dxLayoutControl, NReportClient, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, System.Actions, System.ImageList;

type
  TfrmMonthlyStatement = class(TfrmBrowseData)
    lcParameter: TdxLayoutControl;
    edYear: TcxSpinEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    lcParameterItem4: TdxLayoutItem;
    Button1: TButton;
    lcParameterItem1: TdxLayoutItem;
    cdsMonthlyStatementList: TNClientDataset;
    cdsMonthlyStatement: TNClientDataset;
    cdsMonthlyStatementListPERIOD: TStringField;
    cdsMonthlyStatementListACCID: TIntegerField;
    cdsMonthlyStatementListACCCODE: TStringField;
    cdsMonthlyStatementListACCNAME: TStringField;
    cdsMonthlyStatementListEMAIL: TStringField;
    cdsMonthlyStatementListSOA_FILENAME: TStringField;
    cdsMonthlyStatementListSTATUS: TStringField;
    cdsMonthlyStatementListMODDA: TDateTimeField;
    cdsMonthlyStatementListMODUI: TStringField;
    cdsMonthlyStatementListAPPDA: TDateTimeField;
    cdsMonthlyStatementListAPPUI: TStringField;
    cdsMonthlyStatementListUNDER4Y: TIntegerField;
    cdsMonthlyStatementListUNDER4YDA: TDateTimeField;
    cdsMonthlyStatementListNOTES4Y: TStringField;
    cdsMonthlyStatementListISDEL: TIntegerField;
    cdsMonthlyStatementListID: TLargeintField;
    cdsMonthlyStatementPERIOD: TStringField;
    cdsMonthlyStatementACCID: TIntegerField;
    cdsMonthlyStatementACCCODE: TStringField;
    cdsMonthlyStatementACCNAME: TStringField;
    cdsMonthlyStatementEMAIL: TStringField;
    cdsMonthlyStatementSOA_FILENAME: TStringField;
    cdsMonthlyStatementSOA_FILE: TBlobField;
    cdsMonthlyStatementSOA_FILEPASSWORD: TStringField;
    cdsMonthlyStatementSTATUS: TStringField;
    cdsMonthlyStatementMODDA: TDateTimeField;
    cdsMonthlyStatementMODUI: TStringField;
    cdsMonthlyStatementAPPDA: TDateTimeField;
    cdsMonthlyStatementAPPUI: TStringField;
    cdsMonthlyStatementUNDER4Y: TIntegerField;
    cdsMonthlyStatementUNDER4YDA: TDateTimeField;
    cdsMonthlyStatementNOTES4Y: TStringField;
    cdsMonthlyStatementISDEL: TIntegerField;
    cdsMonthlyStatementID: TLargeintField;
    actViewData: TNAction;
    gvwMasterPERIOD: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterEMAIL: TcxGridDBBandedColumn;
    gvwMasterSOA_FILENAME: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actCreateAllMonthlyStatement: TNAction;
    actCreateMonthlyStatement: TNAction;
    ReCreateMonthlyStatementForThisAccount1: TMenuItem;
    actViewSOA: TNAction;
    ViewStatementOfThisAccount1: TMenuItem;
    cbMonth: TcxImageComboBox;
    lcParameterItem5: TdxLayoutItem;
    actSendSelected: TNAction;
    SendSelectedByEmail1: TMenuItem;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCreateAllMonthlyStatementExecute(Sender: TObject);
    procedure actCreateMonthlyStatementExecute(Sender: TObject);
    procedure actViewSOAExecute(Sender: TObject);
    procedure actSendSelectedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthlyStatement: TfrmMonthlyStatement;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMonthlyStatement.actCreateAllMonthlyStatementExecute(
  Sender: TObject);
var
  dtPeriod: TDateTime;
  sPeriod: String;
begin
  inherited;
  if MessageDlg('Are you sure to create monthly statement?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Screen.Cursor := crSQLWait;
    Try
      dtPeriod := EncodeDate(edYear.Value, cbMonth.EditValue, 1);
      sPeriod := FormatDateTime('yyyymm', dtPeriod);
      dmGlobal.RemoteServer.CreateAllMonthlyStatement(sPeriod);
      actViewData.Execute;
    Finally
      Screen.Cursor := crDefault;
    End;
  end;
end;

procedure TfrmMonthlyStatement.actCreateMonthlyStatementExecute(
  Sender: TObject);
var
  i, RecIdx: Integer;
begin
  inherited;
  if MessageDlg('Are you sure to recreate monthly statement for selected account?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Screen.Cursor := crSQLWait;
    try
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        dmGlobal.RemoteServer.CreateMonthlyStatement(cdsMonthlyStatementListPERIOD.AsString, cdsMonthlyStatementListACCID.AsInteger);
      end;
      actViewData.Execute;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmMonthlyStatement.actSendSelectedExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sMessage: String;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to send multiple Monthly Statement By Email?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        dmGlobal.RemoteServer.SendSOAByMail(cdsMonthlyStatementListPERIOD.AsString, cdsMonthlyStatementListACCID.AsLargeInt);
      end;

      ShowMessage('Proses send contract is on progress in Server.');
    end;
  end
  else
  begin
    if MessageDlg('Are you sure to send contract ' +
      QuotedStr(cdsMonthlyStatementListACCCODE.AsString) + ' By Email?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      dmGlobal.RemoteServer.SendSOAByMail(cdsMonthlyStatementListPERIOD.AsString, cdsMonthlyStatementListACCID.AsLargeInt);
      ShowMessage('Proses send contract is on progress in Server.');
    end;
  end;

end;

procedure TfrmMonthlyStatement.actViewDataExecute(Sender: TObject);
var
  dtPeriod: TDateTime;
  sPeriod: String;
begin
  inherited;
  dtPeriod := EncodeDate(edYear.EditValue, cbMonth.EditValue, 1);
  sPeriod := FormatDateTime('yyyymm', dtPeriod);

  cdsMonthlyStatementList.Close;
  cdsMonthlyStatementList.Params[0].AsString := sPeriod;
  cdsMonthlyStatementList.Open;
end;

procedure TfrmMonthlyStatement.actViewSOAExecute(Sender: TObject);
var
  sFile: String;
begin
  inherited;
  cdsMonthlyStatement.Close;
  cdsMonthlyStatement.Params[0].AsString := cdsMonthlyStatementListPERIOD.AsString;
  cdsMonthlyStatement.Params[1].AsInteger := cdsMonthlyStatementListACCID.AsInteger;
  cdsMonthlyStatement.Open;

  if not cdsMonthlyStatement.IsEmpty then
  begin
    sFile := ExtractFilePath(Application.ExeName) + 'Temp\' + cdsMonthlyStatementSOA_FILENAME.AsString;
    cdsMonthlyStatementSOA_FILE.SaveToFile(sFile);
    dmGlobal.OpenFile(sFile);
  end;
end;

procedure TfrmMonthlyStatement.FormCreate(Sender: TObject);
var
  dtTransDate: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTransDate, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue := iYear;
end;

Initialization
  RegisterClass(TfrmMonthlyStatement);

end.
