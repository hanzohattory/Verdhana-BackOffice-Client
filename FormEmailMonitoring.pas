unit FormEmailMonitoring;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxImageComboBox,
  NReportClient, DateUtils, System.Actions, System.ImageList, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, cxSpinEdit, cxLabel, cxBarEditItem,
  dxScrollbarAnnotations;

type
  TfrmEmailMonitoring = class(TfrmBrowseData)
    cdsEmailList: TNClientDataset;
    cdsEmailListEMAILID: TLargeintField;
    cdsEmailListEMAILTYPE: TStringField;
    cdsEmailListEMAILDATE: TDateField;
    cdsEmailListLINKID: TLargeintField;
    cdsEmailListACCID: TIntegerField;
    cdsEmailListACCCODE: TStringField;
    cdsEmailListACCNAME: TStringField;
    cdsEmailListEMAILTO: TStringField;
    cdsEmailListEMAILCC: TStringField;
    cdsEmailListEMAILBCC: TStringField;
    cdsEmailListEMAILSUBJECT: TStringField;
    cdsEmailListEMAILMESSAGE: TMemoField;
    cdsEmailListEMAILSTATUS: TStringField;
    cdsEmailListNOTES: TMemoField;
    cdsEmailListMODDA: TDateTimeField;
    cdsEmailListMODUI: TStringField;
    cdsSendEmailList: TNClientDataset;
    cdsSendEmailListSENDID: TLargeintField;
    cdsSendEmailListEMAILID: TLargeintField;
    cdsSendEmailListEMAILTO: TStringField;
    cdsSendEmailListEMAILCC: TStringField;
    cdsSendEmailListEMAILBCC: TStringField;
    cdsSendEmailListEMAILSUBJECT: TStringField;
    cdsSendEmailListEMAILMESSAGE: TMemoField;
    cdsSendEmailListEMAILSTATUS: TStringField;
    cdsSendEmailListSENDDA: TDateTimeField;
    cdsSendEmailListSENDUI: TStringField;
    cdsSendEmailListMODDA: TDateTimeField;
    cdsSendEmailListMODUI: TStringField;
    actViewData: TNAction;
    actResendEmail: TNAction;
    cdsEmailListAPPDA: TDateTimeField;
    cdsEmailListAPPUI: TStringField;
    cdsEmailListUNDER4Y: TIntegerField;
    cdsEmailListUNDER4YDA: TDateTimeField;
    cdsEmailListNOTES4Y: TStringField;
    cdsEmailListISDEL: TIntegerField;
    cdsEmailListID: TLargeintField;
    gvwMasterEMAILID: TcxGridDBBandedColumn;
    gvwMasterEMAILDATE: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterEMAILTO: TcxGridDBBandedColumn;
    gvwMasterEMAILCC: TcxGridDBBandedColumn;
    gvwMasterEMAILBCC: TcxGridDBBandedColumn;
    gvwMasterEMAILSUBJECT: TcxGridDBBandedColumn;
    gvwMasterEMAILMESSAGE: TcxGridDBBandedColumn;
    gvwMasterNOTES: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    gvwSendEmail: TcxGridDBBandedTableView;
    dsSendEmail: TDataSource;
    gvwSendEmailSENDID: TcxGridDBBandedColumn;
    gvwSendEmailEMAILID: TcxGridDBBandedColumn;
    gvwSendEmailEMAILTO: TcxGridDBBandedColumn;
    gvwSendEmailEMAILCC: TcxGridDBBandedColumn;
    gvwSendEmailEMAILBCC: TcxGridDBBandedColumn;
    gvwSendEmailEMAILSUBJECT: TcxGridDBBandedColumn;
    gvwSendEmailEMAILMESSAGE: TcxGridDBBandedColumn;
    gvwSendEmailEMAILSTATUS: TcxGridDBBandedColumn;
    gvwSendEmailSENDDA: TcxGridDBBandedColumn;
    gvwSendEmailSENDUI: TcxGridDBBandedColumn;
    gvwSendEmailMODDA: TcxGridDBBandedColumn;
    gvwSendEmailMODUI: TcxGridDBBandedColumn;
    cdsEmailView: TNClientDataset;
    cdsSendEmailView: TNClientDataset;
    cdsEmailAttachmentView: TNClientDataset;
    cdsSendEmailAttachmentView: TNClientDataset;
    cdsEmailViewEMAILID: TLargeintField;
    cdsEmailViewEMAILTYPE: TStringField;
    cdsEmailViewEMAILDATE: TDateField;
    cdsEmailViewLINKID: TLargeintField;
    cdsEmailViewACCID: TIntegerField;
    cdsEmailViewACCCODE: TStringField;
    cdsEmailViewACCNAME: TStringField;
    cdsEmailViewEMAILTO: TStringField;
    cdsEmailViewEMAILCC: TStringField;
    cdsEmailViewEMAILBCC: TStringField;
    cdsEmailViewEMAILSUBJECT: TStringField;
    cdsEmailViewEMAILMESSAGE: TMemoField;
    cdsEmailViewEMAILSTATUS: TStringField;
    cdsEmailViewNOTES: TMemoField;
    cdsEmailViewMODDA: TDateTimeField;
    cdsEmailViewMODUI: TStringField;
    cdsEmailViewAPPDA: TDateTimeField;
    cdsEmailViewAPPUI: TStringField;
    cdsEmailViewUNDER4Y: TIntegerField;
    cdsEmailViewUNDER4YDA: TDateTimeField;
    cdsEmailViewNOTES4Y: TStringField;
    cdsEmailViewISDEL: TIntegerField;
    cdsEmailViewID: TLargeintField;
    cdsEmailViewqryEmailAttachmentView: TDataSetField;
    cdsEmailAttachmentViewEMAILID: TLargeintField;
    cdsEmailAttachmentViewSEQID: TIntegerField;
    cdsEmailAttachmentViewEMAIL_OBJECT_FILENAME: TStringField;
    cdsEmailAttachmentViewEMAIL_OBJECT_FILE: TBlobField;
    cdsSendEmailViewSENDID: TLargeintField;
    cdsSendEmailViewEMAILID: TLargeintField;
    cdsSendEmailViewEMAILTO: TStringField;
    cdsSendEmailViewEMAILCC: TStringField;
    cdsSendEmailViewEMAILBCC: TStringField;
    cdsSendEmailViewEMAILSUBJECT: TStringField;
    cdsSendEmailViewEMAILMESSAGE: TMemoField;
    cdsSendEmailViewEMAILSTATUS: TStringField;
    cdsSendEmailViewSENDDA: TDateTimeField;
    cdsSendEmailViewSENDUI: TStringField;
    cdsSendEmailViewMODDA: TDateTimeField;
    cdsSendEmailViewMODUI: TStringField;
    cdsSendEmailViewEMAILTYPE: TStringField;
    cdsSendEmailViewEMAILDATE: TDateField;
    cdsSendEmailViewLINKID: TLargeintField;
    cdsSendEmailViewACCID: TIntegerField;
    cdsSendEmailViewACCCODE: TStringField;
    cdsSendEmailViewACCNAME: TStringField;
    cdsSendEmailViewqrySendEmailAttachmentView: TDataSetField;
    cdsSendEmailAttachmentViewSENDID: TLargeintField;
    cdsSendEmailAttachmentViewSEQID: TIntegerField;
    cdsSendEmailAttachmentViewEMAIL_OBJECT_FILENAME: TStringField;
    cdsSendEmailAttachmentViewEMAIL_OBJECT_FILE: TBlobField;
    cdsEmailAttachmentViewMODDA: TDateTimeField;
    cdsEmailAttachmentViewMODUI: TStringField;
    cdsEmailAttachmentViewAPPDA: TDateTimeField;
    cdsEmailAttachmentViewAPPUI: TStringField;
    cdsEmailAttachmentViewUNDER4Y: TIntegerField;
    cdsEmailAttachmentViewUNDER4YDA: TDateTimeField;
    cdsEmailAttachmentViewNOTES4Y: TStringField;
    cdsEmailAttachmentViewISDEL: TIntegerField;
    cdsEmailAttachmentViewID: TLargeintField;
    N5: TMenuItem;
    ResendThisEmail1: TMenuItem;
    popSendMail: TPopupMenu;
    actViewSendMail: TNAction;
    ViewSendMail1: TMenuItem;
    actFindEmail: TNAction;
    actExpandAll: TNAction;
    actCollapseAll: TNAction;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    cdsSendEmailListEMAILDATE: TDateField;
    gvwSendEmailSENDINFO: TcxGridDBBandedColumn;
    gvwSendEmailEMAILDATE: TcxGridDBBandedColumn;
    cdsSendEmailListSENDINFO: TStringField;
    cdsSendEmailViewSENDINFO: TStringField;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    btnExpand: TdxBarButton;
    cdsEmailListeStatus: TStringField;
    cdsEmailListEMAIL_DESC: TStringField;
    gvwMastereStatus: TcxGridDBBandedColumn;
    gvwMasterEMAIL_DESC: TcxGridDBBandedColumn;
    procedure actResendEmailExecute(Sender: TObject);
    procedure actResendEmailUpdate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure DataContainerBeforePost(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actViewSendMailExecute(Sender: TObject);
    procedure gvwSendEmailCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actExpandAllExecute(Sender: TObject);
    procedure actCollapseAllExecute(Sender: TObject);
    procedure btnExpandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailMonitoring: TfrmEmailMonitoring;

implementation

{$R *.dfm}

uses DataGlobal, FormEmail, FormSendMail;

procedure TfrmEmailMonitoring.actCollapseAllExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.ViewData.Collapse(True);
end;

procedure TfrmEmailMonitoring.actExpandAllExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.ViewData.Expand(True);
end;

procedure TfrmEmailMonitoring.actRefreshExecute(Sender: TObject);
begin
  inherited;

  cdsEmailList.Close;
  cdsEmailList.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsEmailList.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsEmailList.Open;

  cdsSendEmailList.Close;
  cdsSendEmailList.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsSendEmailList.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsSendEmailList.Open;
end;

procedure TfrmEmailMonitoring.actResendEmailExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to resend this email id ' + QuotedStr(cdsEmailListEMAILID.AsString) + ' ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.SendEmail(cdsEmailListEMAILID.AsLargeInt);
    ShowMessage('This email resend successfully!');
    cdsSendEmailList.Close;
    cdsSendEmailList.Open;
  end;
end;

procedure TfrmEmailMonitoring.actResendEmailUpdate(Sender: TObject);
begin
  inherited;
  actResendEmail.Enabled := (cdsEmailList.Active) and (not cdsEmailList.IsEmpty);
  actResendEmail.Visible := actResendEmail.Enabled;
end;

procedure TfrmEmailMonitoring.actViewSendMailExecute(Sender: TObject);
begin
  inherited;
  frmSendMail.ViewSendMail(cdsSendEmailListSENDID.AsInteger);
end;

procedure TfrmEmailMonitoring.DataContainerBeforePost(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if Sender.State = mddsInsert then
  begin
    Sender.MasterDataset.FieldByName('EMAILDATE').AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
  end;
end;

procedure TfrmEmailMonitoring.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEmail;
end;

procedure TfrmEmailMonitoring.btnExpandClick(Sender: TObject);
begin
  inherited;
  if btnExpand.Caption = 'Expand All' then
  begin
    gvwMaster.ViewData.Expand(True);
    btnExpand.Caption    := 'Collaps All';
    btnExpand.ImageIndex := 0;
  end
  else
  begin
    gvwMaster.ViewData.Collapse(True);
    btnExpand.Caption    := 'Expand All';
    btnExpand.ImageIndex := 1;
  end;
end;

procedure TfrmEmailMonitoring.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;
end;

procedure TfrmEmailMonitoring.gvwSendEmailCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if (AViewInfo.GridRecord.Values[gvwSendEmailEMAILSTATUS.Index] = 'F') then
  begin
    ACanvas.Font.Color := clRed;
  end
  else if (AViewInfo.GridRecord.Values[gvwSendEmailEMAILSTATUS.Index] = 'S') then
  begin
    ACanvas.Font.Color := clBlue;
  end;

  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
    end;
    ACanvas.Font.Color := clWhite;
  end;
end;

Initialization
  RegisterClass(TfrmEmailMonitoring);

end.
