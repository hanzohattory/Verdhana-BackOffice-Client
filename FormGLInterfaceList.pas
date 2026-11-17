unit FormGLInterfaceList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCheckBox;

type
  TfrmGLInterfaceList = class(TfrmBrowseData)
    cdsDetails: TNClientDataset;
    cdsDetailsJRNTYPE: TStringField;
    cdsDetailsJRNTYPEDESC: TStringField;
    cdsDetailsTRTYPE: TStringField;
    cdsDetailsTRANSTYPE_NAME: TStringField;
    cdsDetailsHTRANSDESC: TStringField;
    cdsDetailsTRANSDESC: TStringField;
    cdsDetailsACCCODE: TStringField;
    cdsDetailsACCNAME: TStringField;
    cdsDetailsLEDGERCODE: TStringField;
    cdsDetailsLEDGERDESC: TStringField;
    cdsDetailsCOA: TStringField;
    cdsDetailsCASHID: TLargeintField;
    cdsDetailsBNCODE: TStringField;
    cdsDetailsBANKACCNO: TStringField;
    cdsDetailsEXCHRATE: TFloatField;
    cdsDetailsCURRENCYCODE: TStringField;
    cdsDetailsDEBET: TFloatField;
    cdsDetailsCREDIT: TFloatField;
    cdsDetailsLINKTRTYPE: TStringField;
    cdsDetailsLINKNO: TStringField;
    cdsDetailsLINKID: TLargeintField;
    cdsDetailsREVERSED: TBooleanField;
    cdsDetailsREVERSED_DATE: TDateTimeField;
    cdsDetailsREVERSED_SYSTEMDATE: TDateField;
    cdsDetailsREVERSED_UI: TStringField;
    cdsDetailsREVERSED_JRNID: TLargeintField;
    cdsDetailsGL_POSTED: TBooleanField;
    cdsDetailsGL_POSTED_DATE: TDateTimeField;
    cdsDetailsGL_POSTED_SYSDATE: TDateTimeField;
    cdsDetailsGL_POST_UI: TStringField;
    cdsDetailsJRNID: TLargeintField;
    cdsDetailsJRNCODE: TStringField;
    cdsDetailsJRNID_REVERSED: TLargeintField;
    cdsDetailsJRNCODE_REVERSED: TStringField;
    cdsDetailsLEDGERTRANSID: TLargeintField;
    cdsDetailsSOURCE_LEDGERTRANSID: TLargeintField;
    cdsSummary: TNClientDataset;
    cdsSummaryJRNTYPE: TStringField;
    cdsSummaryJRNTYPEDESC: TStringField;
    cdsSummaryTRTYPE: TStringField;
    cdsSummaryTRANSTYPE_NAME: TStringField;
    cdsSummaryCURRENCYCODE: TStringField;
    cdsSummaryTOTALDEBET: TFloatField;
    cdsSummaryTOTALCREDIT: TFloatField;
    cdsSummaryDIFFERENT: TFloatField;
    cdsSummaryGL_POSTED: TBooleanField;
    grdMasterLevel2: TcxGridLevel;
    gvwDetails: TcxGridDBBandedTableView;
    dsDetails: TDataSource;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterJRNTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterTRANSTYPE_NAME: TcxGridDBBandedColumn;
    gvwMasterCURRENCYCODE: TcxGridDBBandedColumn;
    gvwMasterTOTALDEBET: TcxGridDBBandedColumn;
    gvwMasterTOTALCREDIT: TcxGridDBBandedColumn;
    gvwMasterDIFFERENT: TcxGridDBBandedColumn;
    gvwMasterGL_POSTED: TcxGridDBBandedColumn;
    gvwDetailsJRNTYPE: TcxGridDBBandedColumn;
    gvwDetailsJRNTYPEDESC: TcxGridDBBandedColumn;
    gvwDetailsTRTYPE: TcxGridDBBandedColumn;
    gvwDetailsTRANSTYPE_NAME: TcxGridDBBandedColumn;
    gvwDetailsHTRANSDESC: TcxGridDBBandedColumn;
    gvwDetailsTRANSDESC: TcxGridDBBandedColumn;
    gvwDetailsACCCODE: TcxGridDBBandedColumn;
    gvwDetailsACCNAME: TcxGridDBBandedColumn;
    gvwDetailsLEDGERCODE: TcxGridDBBandedColumn;
    gvwDetailsLEDGERDESC: TcxGridDBBandedColumn;
    gvwDetailsCOA: TcxGridDBBandedColumn;
    gvwDetailsCASHID: TcxGridDBBandedColumn;
    gvwDetailsBNCODE: TcxGridDBBandedColumn;
    gvwDetailsBANKACCNO: TcxGridDBBandedColumn;
    gvwDetailsEXCHRATE: TcxGridDBBandedColumn;
    gvwDetailsCURRENCYCODE: TcxGridDBBandedColumn;
    gvwDetailsDEBET: TcxGridDBBandedColumn;
    gvwDetailsCREDIT: TcxGridDBBandedColumn;
    gvwDetailsLINKTRTYPE: TcxGridDBBandedColumn;
    gvwDetailsLINKNO: TcxGridDBBandedColumn;
    gvwDetailsLINKID: TcxGridDBBandedColumn;
    gvwDetailsREVERSED: TcxGridDBBandedColumn;
    gvwDetailsREVERSED_DATE: TcxGridDBBandedColumn;
    gvwDetailsREVERSED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwDetailsREVERSED_UI: TcxGridDBBandedColumn;
    gvwDetailsREVERSED_JRNID: TcxGridDBBandedColumn;
    gvwDetailsGL_POSTED: TcxGridDBBandedColumn;
    gvwDetailsGL_POSTED_DATE: TcxGridDBBandedColumn;
    gvwDetailsGL_POSTED_SYSDATE: TcxGridDBBandedColumn;
    gvwDetailsGL_POST_UI: TcxGridDBBandedColumn;
    gvwDetailsJRNID: TcxGridDBBandedColumn;
    gvwDetailsJRNCODE: TcxGridDBBandedColumn;
    gvwDetailsJRNID_REVERSED: TcxGridDBBandedColumn;
    gvwDetailsJRNCODE_REVERSED: TcxGridDBBandedColumn;
    gvwDetailsLEDGERTRANSID: TcxGridDBBandedColumn;
    gvwDetailsSOURCE_LEDGERTRANSID: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    actGLInterfacePost: TNAction;
    procedure actRefreshExecute(Sender: TObject);
    procedure actGLInterfacePostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLInterfaceList: TfrmGLInterfaceList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGLInterfaceList.actGLInterfacePostExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if cdsSummary.IsEmpty then
  begin
    MessageError('There is no data can be posting !');
    exit;
  end;

  dmGlobal.RemoteServer.GLInterfacePost(sMsg);
  MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
end;

procedure TfrmGLInterfaceList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsSummary.Close;
  cdsSummary.Open;

  cdsDetails.Close;
  cdsDetails.Open;
end;

end.
