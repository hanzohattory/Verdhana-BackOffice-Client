unit FormCashMutationList;

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
  System.ImageList, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCashMutationList = class(TfrmBrowseData)
    cdsCashMutationList: TNClientDataset;
    cdsCashMutation: TNClientDataset;
    cdsCashMutationListCMID: TLargeintField;
    cdsCashMutationListCMCODE: TStringField;
    cdsCashMutationListCMDATE: TDateField;
    cdsCashMutationListCMTYPE: TStringField;
    cdsCashMutationListCMDESC: TStringField;
    cdsCashMutationListACCID: TIntegerField;
    cdsCashMutationListACCNO: TStringField;
    cdsCashMutationListACCBANKID: TIntegerField;
    cdsCashMutationListDC: TStringField;
    cdsCashMutationListCCY: TStringField;
    cdsCashMutationListCMAMT: TFloatField;
    cdsCashMutationListPOSTED: TStringField;
    cdsCashMutationListMODDA: TDateTimeField;
    cdsCashMutationListMODUI: TStringField;
    cdsCashMutationListAPPDA: TDateTimeField;
    cdsCashMutationListAPPUI: TStringField;
    cdsCashMutationListUNDER4Y: TIntegerField;
    cdsCashMutationListUNDER4YDA: TDateTimeField;
    cdsCashMutationListNOTES4Y: TStringField;
    cdsCashMutationListISDEL: TIntegerField;
    cdsCashMutationListID: TLargeintField;
    cdsCashMutationCMID: TLargeintField;
    cdsCashMutationCMCODE: TStringField;
    cdsCashMutationCMDATE: TDateField;
    cdsCashMutationCMTYPE: TStringField;
    cdsCashMutationCMDESC: TStringField;
    cdsCashMutationACCID: TIntegerField;
    cdsCashMutationACCNO: TStringField;
    cdsCashMutationACCBANKID: TIntegerField;
    cdsCashMutationDC: TStringField;
    cdsCashMutationCCY: TStringField;
    cdsCashMutationCMAMT: TFloatField;
    cdsCashMutationPOSTED: TStringField;
    cdsCashMutationMODDA: TDateTimeField;
    cdsCashMutationMODUI: TStringField;
    cdsCashMutationAPPDA: TDateTimeField;
    cdsCashMutationAPPUI: TStringField;
    cdsCashMutationUNDER4Y: TIntegerField;
    cdsCashMutationUNDER4YDA: TDateTimeField;
    cdsCashMutationNOTES4Y: TStringField;
    cdsCashMutationISDEL: TIntegerField;
    cdsCashMutationID: TLargeintField;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    gvwMasterCMID: TcxGridDBBandedColumn;
    gvwMasterCMCODE: TcxGridDBBandedColumn;
    gvwMasterCMDATE: TcxGridDBBandedColumn;
    gvwMasterCMTYPE: TcxGridDBBandedColumn;
    gvwMasterCMDESC: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCMAMT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsCashMutationListBNBRANCH: TStringField;
    cdsCashMutationListBNACCNAME: TStringField;
    cdsCashMutationListBNACCNO: TStringField;
    cdsCashMutationListBNCODE: TStringField;
    cdsCashMutationListACCNAME: TStringField;
    cdsCashMutationBNBRANCH: TStringField;
    cdsCashMutationBNACCNAME: TStringField;
    cdsCashMutationBNACCNO: TStringField;
    cdsCashMutationBNCODE: TStringField;
    cdsCashMutationACCNAME: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNACCNO: TcxGridDBBandedColumn;
    gvwMasterBNACCNAME: TcxGridDBBandedColumn;
    gvwMasterBNBRANCH: TcxGridDBBandedColumn;
    actViewData: TNAction;
    actPosting: TNAction;
    actPostingAll: TNAction;
    PostingCashMutation1: TMenuItem;
    PostingAllCashMutation1: TMenuItem;
    N5: TMenuItem;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actPostingAllExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashMutationList: TfrmCashMutationList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmCashMutationList.actPostingAllExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting all cash mutation?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostAllCashMutation(DateTimeToFileDate(DateOf(dtTransDate.Date)));
    ShowMessage('Finished Posting All Cash Mutation.');
  end;
end;

procedure TfrmCashMutationList.actPostingExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting cash mutation?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostCashMutation(cdsCashMutationListCMID.AsLargeInt);
    ShowMessage('Finished Posting Cash Mutation.');
  end;
end;

procedure TfrmCashMutationList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashMutationList.Close;
  cdsCashMutationList.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsCashMutationList.Params[1].AsString := dmGlobal.UserID;
  cdsCashMutationList.Open;

  gvwMaster.ApplyBestFit();
end;

procedure TfrmCashMutationList.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuAccountBank.Close;
    cdsLuAccountBank.Open;
  end;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmCashMutationList);

end.
