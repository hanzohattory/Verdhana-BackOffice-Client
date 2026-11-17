unit FormMonthlyStatementProcess;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmMonthlyStatementProcess = class(TfrmBrowseData)
    cdsMonthlyStatementProcessList: TNClientDataset;
    cdsMonthlyStatementProcess: TNClientDataset;
    cdsMonthlyStatementProcessListPROCESS_ID: TLargeintField;
    cdsMonthlyStatementProcessListPROCESS_CODE: TStringField;
    cdsMonthlyStatementProcessListSTART_DATE: TDateField;
    cdsMonthlyStatementProcessListEND_DATE: TDateField;
    cdsMonthlyStatementProcessListNOTES: TStringField;
    cdsMonthlyStatementProcessListSTATUS: TStringField;
    cdsMonthlyStatementProcessListMODDA: TDateTimeField;
    cdsMonthlyStatementProcessListMODUI: TStringField;
    cdsMonthlyStatementProcessListAPPDA: TDateTimeField;
    cdsMonthlyStatementProcessListAPPUI: TStringField;
    cdsMonthlyStatementProcessListUNDER4Y: TIntegerField;
    cdsMonthlyStatementProcessListUNDER4YDA: TDateTimeField;
    cdsMonthlyStatementProcessListNOTES4Y: TStringField;
    cdsMonthlyStatementProcessListISDEL: TIntegerField;
    cdsMonthlyStatementProcessListID: TLargeintField;
    cdsMonthlyStatementProcessPROCESS_ID: TLargeintField;
    cdsMonthlyStatementProcessPROCESS_CODE: TStringField;
    cdsMonthlyStatementProcessSTART_DATE: TDateField;
    cdsMonthlyStatementProcessEND_DATE: TDateField;
    cdsMonthlyStatementProcessNOTES: TStringField;
    cdsMonthlyStatementProcessSTATUS: TStringField;
    cdsMonthlyStatementProcessMODDA: TDateTimeField;
    cdsMonthlyStatementProcessMODUI: TStringField;
    cdsMonthlyStatementProcessAPPDA: TDateTimeField;
    cdsMonthlyStatementProcessAPPUI: TStringField;
    cdsMonthlyStatementProcessUNDER4Y: TIntegerField;
    cdsMonthlyStatementProcessUNDER4YDA: TDateTimeField;
    cdsMonthlyStatementProcessNOTES4Y: TStringField;
    cdsMonthlyStatementProcessISDEL: TIntegerField;
    cdsMonthlyStatementProcessID: TLargeintField;
    gvwMasterPROCESS_CODE: TcxGridDBBandedColumn;
    gvwMasterSTART_DATE: TcxGridDBBandedColumn;
    gvwMasterEND_DATE: TcxGridDBBandedColumn;
    gvwMasterNOTES: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    actGenerateClientStatement: TNAction;
    GenerateClientStatement1: TMenuItem;
    cdsMonthlyStatementClient: TNClientDataset;
    cdsMonthlyStatementClientPROCESS_ID: TLargeintField;
    cdsMonthlyStatementClientACCID: TIntegerField;
    cdsMonthlyStatementClientACCCODE: TStringField;
    cdsMonthlyStatementClientPROCESS_NAME: TStringField;
    cdsMonthlyStatementClientMAIL_SUBJECT: TStringField;
    cdsMonthlyStatementClientMAIL_TO: TStringField;
    cdsMonthlyStatementClientMAIL_MESSAGE: TMemoField;
    cdsMonthlyStatementClientMAIL_OBJECT_FILENAME: TStringField;
    cdsMonthlyStatementClientMAIL_OBJECT_FILE: TBlobField;
    cdsMonthlyStatementClientMAIL_STATUS: TStringField;
    cdsMonthlyStatementClientNOTES: TMemoField;
    actViewClientStatement: TNAction;
    ViewClientMonthlyStatement1: TMenuItem;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateClientStatementExecute(Sender: TObject);
    procedure actGenerateClientStatementUpdate(Sender: TObject);
    procedure actViewClientStatementExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthlyStatementProcess: TfrmMonthlyStatementProcess;

implementation

{$R *.dfm}

uses DataGlobal, FormMonthlyStatementProcessEdit, FormMonthlyStatementClient;

procedure TfrmMonthlyStatementProcess.actGenerateClientStatementExecute(
  Sender: TObject);
begin
  inherited;
  dmGlobal.RemoteServer.GenerateClientStatement(cdsMonthlyStatementProcessListPROCESS_ID.AsLargeInt);
end;

procedure TfrmMonthlyStatementProcess.actGenerateClientStatementUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerateClientStatement.Enabled := (cdsMonthlyStatementProcessList.Active) and (not cdsMonthlyStatementProcessList.IsEmpty);
end;

procedure TfrmMonthlyStatementProcess.actViewClientStatementExecute(
  Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  cdsMonthlyStatementClient.Close;
  cdsMonthlyStatementClient.Params[0].AsInteger := cdsMonthlyStatementProcessListPROCESS_ID.AsInteger;
  cdsMonthlyStatementClient.Open;

  if not cdsMonthlyStatementClient.IsEmpty then
  begin
    oForm := TfrmMonthlyStatementClient.Create(nil);
    Try
      oForm.ShowModal;
    Finally
      FreeAndNil(oForm);
    End;
  end;
end;

procedure TfrmMonthlyStatementProcess.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmMonthlyStatementProcessEdit;
end;

procedure TfrmMonthlyStatementProcess.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsMonthlyStatementProcessListPROCESS_ID;
  cdsMonthlyStatementProcessList.Close;
  cdsMonthlyStatementProcessList.Open;
end;

Initialization
  RegisterClass(TfrmMonthlyStatementProcess);

end.
