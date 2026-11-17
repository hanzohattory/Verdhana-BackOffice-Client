unit FormGLJournalList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, System.DateUtils, System.Actions,
  System.ImageList;

type
  TfrmGLJournalList = class(TfrmBrowseData)
    cdsGLJournal: TNClientDataset;
    cdsGLJournalJOUTYPE: TStringField;
    cdsGLJournalGL_JRNTYPE: TStringField;
    cdsGLJournalVALUEDATE: TDateField;
    cdsGLJournalCPID: TIntegerField;
    cdsGLJournalTRTYPE: TStringField;
    cdsGLJournalTRTYPENAME: TStringField;
    cdsGLJournalGLACCOUNTID: TIntegerField;
    cdsGLJournalGLACCOUNTCODE: TStringField;
    cdsGLJournalGLACCOUNTNAME: TStringField;
    cdsGLJournalACCID: TLargeintField;
    cdsGLJournalACCNO: TStringField;
    cdsGLJournalACCNAME: TStringField;
    cdsGLJournalLINKTYPE: TStringField;
    cdsGLJournalLINKID: TLargeintField;
    cdsGLJournalLINKNO: TStringField;
    cdsGLJournalCDESC: TStringField;
    cdsGLJournalCCY: TStringField;
    cdsGLJournalDC: TStringField;
    cdsGLJournalAMT: TFloatField;
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    gvwMasterJOUTYPE: TcxGridDBBandedColumn;
    gvwMasterGL_JRNTYPE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterCPID: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterTRTYPENAME: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTID: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterLINKTYPE: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterCDESC: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterAMT: TcxGridDBBandedColumn;
    actPosting: TNAction;
    cxButton2: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure actViewDataExecute(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLJournalList: TfrmGLJournalList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGLJournalList.actPostingExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting all general ledger journal at ' +
    FormatDateTime('dd MMMM yyyy', dtValueDate.Date), mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostGLTrade(DateTimeToFileDate(dtValueDate.Date));
  end;
end;

procedure TfrmGLJournalList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsGLJournal.Close;
  cdsGLJournal.Params[0].AsDate := DateOf(dtValueDate.Date);
  cdsGLJournal.Open;
end;

procedure TfrmGLJournalList.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmGLJournalList);

end.
