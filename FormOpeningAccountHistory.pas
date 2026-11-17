unit FormOpeningAccountHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormWorkflow, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxMemo, Datasnap.DBClient,
  NClientDataset, Vcl.ImgList, Vcl.ActnList, NDatasetAction, NActionPermission,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxLabel, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, cxCheckBox,
  cxDBLookupComboBox, ClassGeneral, NReportClient, dxBarBuiltInMenu,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, System.Actions,
  cxGridViewLayoutContainer;

type
  TfrmOpeningAccountHistory = class(TfrmWorkflow)
    cdsOAHistoryList: TNClientDataset;
    cdsOAHistoryListOAID: TIntegerField;
    cdsOAHistoryListOACODE: TStringField;
    cdsOAHistoryListCUST_TYPE: TIntegerField;
    cdsOAHistoryListBRANCHID: TLargeintField;
    cdsOAHistoryListSALESID: TLargeintField;
    cdsOAHistoryListENTNAME: TStringField;
    cdsOAHistoryListENTDESC: TStringField;
    cdsOAHistoryListCREATEDATE: TDateTimeField;
    cdsOAHistoryListINVESTORCAT: TStringField;
    cdsOAHistoryListENTACCTYPE: TStringField;
    cdsOAHistoryListAFFIL: TBooleanField;
    cdsOAHistoryListASSET_OWNER: TStringField;
    cdsOAHistoryListPRDCODE: TStringField;
    cdsOAHistoryListACCID: TIntegerField;
    cdsOAHistoryListEXISTING_CLIENT: TStringField;
    cdsOAHistoryListPARENT_ACCID: TIntegerField;
    cdsOAHistoryListDIRECTSID: TStringField;
    cdsOAHistoryListKSEI_CLIENT_CODE: TStringField;
    cdsOAHistoryListREQUEST_SUBREK: TStringField;
    cdsOAHistoryListLAST_ACTIVITYID: TIntegerField;
    cdsOAHistoryListLAST_ACTIVITY_USER: TStringField;
    cdsOAHistoryListLAST_ACTIVITY_DATE: TDateTimeField;
    gvwBrowseOAID: TcxGridDBBandedColumn;
    gvwBrowseOACODE: TcxGridDBBandedColumn;
    gvwBrowseCUST_TYPE: TcxGridDBBandedColumn;
    gvwBrowseBRANCHID: TcxGridDBBandedColumn;
    gvwBrowseSALESID: TcxGridDBBandedColumn;
    gvwBrowseENTNAME: TcxGridDBBandedColumn;
    gvwBrowseENTDESC: TcxGridDBBandedColumn;
    gvwBrowseCREATEDATE: TcxGridDBBandedColumn;
    gvwBrowseINVESTORCAT: TcxGridDBBandedColumn;
    gvwBrowseENTACCTYPE: TcxGridDBBandedColumn;
    gvwBrowseAFFIL: TcxGridDBBandedColumn;
    gvwBrowseASSET_OWNER: TcxGridDBBandedColumn;
    gvwBrowsePRDCODE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseEXISTING_CLIENT: TcxGridDBBandedColumn;
    gvwBrowsePARENT_ACCID: TcxGridDBBandedColumn;
    gvwBrowseDIRECTSID: TcxGridDBBandedColumn;
    gvwBrowseKSEI_CLIENT_CODE: TcxGridDBBandedColumn;
    gvwBrowseREQUEST_SUBREK: TcxGridDBBandedColumn;
    gvwBrowseLAST_ACTIVITYID: TcxGridDBBandedColumn;
    gvwBrowseLAST_ACTIVITY_USER: TcxGridDBBandedColumn;
    gvwBrowseLAST_ACTIVITY_DATE: TcxGridDBBandedColumn;
    dsWorkflowActivity: TDataSource;
    actPrintWelcomeLetter: TNAction;
    WelcomeLetter1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actPrintWelcomeLetterExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CustomOnGetEditorFormClass(var AFormClass: TFormEditorClass);
  public
    { Public declarations }
  end;

var
  frmOpeningAccountHistory: TfrmOpeningAccountHistory;

implementation

{$R *.dfm}

uses DataGlobal, FormOpeningAccountIns, FormOpeningAccountRetail;

procedure TfrmOpeningAccountHistory.actPrintWelcomeLetterExecute(
  Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsInteger := cdsOAHistoryListOAID.AsInteger;
  ReportContainer.PreviewReport;
end;

procedure TfrmOpeningAccountHistory.CustomOnGetEditorFormClass(
  var AFormClass: TFormEditorClass);
begin
  if cdsOAHistoryListCUST_TYPE.AsInteger = 1 then
    AFormClass := TfrmOpeningAccountRetail
  else
    AFormClass := TfrmOpeningAccountIns;
end;

procedure TfrmOpeningAccountHistory.FormCreate(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmOpeningAccountRetail;
  OnGetFormEditorClass := CustomOnGetEditorFormClass;
  FlowID := 1;
  KeyField := cdsOAHistoryListOAID;
//  OnBeforeCompleteActivity := CustomOnBeforeCompleteActivity;
//  OnAfterCompleteActivity := CustomOnAfterCompleteActivity;
//  OnBackToPreviousActivity := CustomOnBackToPreviousActivity;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBranch.Active then
      cdsLuBranch.Refresh
    else
      cdsLuBranch.Open;

    if cdsLuSales.Active then
      cdsLuSales.Refresh
    else
      cdsLuSales.Open;

    cdsLuCCType.Close;
    cdsLuCCType.Open;

    cdsLuCrdConClass.Close;
    cdsLuCrdConClass.Open;
  end;
end;

Initialization
  RegisterClass(TfrmOpeningAccountHistory);

end.
