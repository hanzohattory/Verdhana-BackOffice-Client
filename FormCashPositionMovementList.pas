unit FormCashPositionMovementList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxDateRanges, dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TfrmCashPositionMovementList = class(TfrmBrowseData)
    cdsCashPositionMovementList: TNClientDataset;
    cdsCashPositionMovementListCMPOSID: TLargeintField;
    cdsCashPositionMovementListCMPOSCODE: TStringField;
    cdsCashPositionMovementListCMPOSDATE: TDateField;
    cdsCashPositionMovementListENTRYDATE: TDateField;
    cdsCashPositionMovementListCMPOSTYPE: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtEntryDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actViewData: TNAction;
    actCashPositionMovementPosting: TNAction;
    actCashPositionMovementReverse: TNAction;
    actApprovedCashPositionMovement: TNAction;
    cdsCashPositionMovement: TNClientDataset;
    CashPositionMovementPosting1: TMenuItem;
    CashPositionMovementReverse1: TMenuItem;
    ApprovedCashPositionMovement1: TMenuItem;
    N5: TMenuItem;
    cdsCashPositionMovementListSOURCE_ACCID: TLargeintField;
    cdsCashPositionMovementListTARGET_ACCID: TLargeintField;
    cdsCashPositionMovementListSOURCE_ALTYPE: TStringField;
    cdsCashPositionMovementListTARGET_ALTYPE: TStringField;
    cdsCashPositionMovementListCCYCODE: TStringField;
    cdsCashPositionMovementListEXCHRATE: TFloatField;
    cdsCashPositionMovementListAMOUNT: TFloatField;
    cdsCashPositionMovementListFXAMOUNT: TFloatField;
    cdsCashPositionMovementListPOSTED: TStringField;
    cdsCashPositionMovementListPOSTED_DATE: TDateField;
    cdsCashPositionMovementListPOSTED_UI: TStringField;
    cdsCashPositionMovementListCANCEL: TStringField;
    cdsCashPositionMovementListCANCEL_DATE: TDateField;
    cdsCashPositionMovementListCANCEL_UI: TStringField;
    cdsCashPositionMovementListAPPROVED: TStringField;
    cdsCashPositionMovementListAPPROVED_DATE: TDateField;
    cdsCashPositionMovementListAPPROVED_UI: TStringField;
    cdsCashPositionMovementListSOURCE_ALTYPE_1: TStringField;
    cdsCashPositionMovementListSOURCE_ALDESC: TStringField;
    cdsCashPositionMovementListTARGET_ALTYPE_1: TStringField;
    cdsCashPositionMovementListTARGET_ALDESC: TStringField;
    gvwMasterCMPOSID: TcxGridDBBandedColumn;
    gvwMasterCMPOSCODE: TcxGridDBBandedColumn;
    gvwMasterCMPOSDATE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterCMPOSTYPE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCID: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ALTYPE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ALTYPE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXCHRATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXAMOUNT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ALTYPE_1: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ALDESC: TcxGridDBBandedColumn;
    gvwMasterTARGET_ALTYPE_1: TcxGridDBBandedColumn;
    gvwMasterTARGET_ALDESC: TcxGridDBBandedColumn;
    cdsCashPositionMovementCMPOSID: TLargeintField;
    cdsCashPositionMovementCMPOSCODE: TStringField;
    cdsCashPositionMovementCMPOSDATE: TDateField;
    cdsCashPositionMovementENTRYDATE: TDateField;
    cdsCashPositionMovementCMPOSTYPE: TStringField;
    cdsCashPositionMovementSOURCE_ACCID: TLargeintField;
    cdsCashPositionMovementTARGET_ACCID: TLargeintField;
    cdsCashPositionMovementSOURCE_ALTYPE: TStringField;
    cdsCashPositionMovementTARGET_ALTYPE: TStringField;
    cdsCashPositionMovementCCYCODE: TStringField;
    cdsCashPositionMovementEXCHRATE: TFloatField;
    cdsCashPositionMovementAMOUNT: TFloatField;
    cdsCashPositionMovementFXAMOUNT: TFloatField;
    cdsCashPositionMovementPOSTED: TStringField;
    cdsCashPositionMovementPOSTED_DATE: TDateField;
    cdsCashPositionMovementPOSTED_UI: TStringField;
    cdsCashPositionMovementCANCEL: TStringField;
    cdsCashPositionMovementCANCEL_DATE: TDateField;
    cdsCashPositionMovementCANCEL_UI: TStringField;
    cdsCashPositionMovementAPPROVED: TStringField;
    cdsCashPositionMovementAPPROVED_DATE: TDateField;
    cdsCashPositionMovementAPPROVED_UI: TStringField;
    cdsCashPositionMovementMODDA: TDateTimeField;
    cdsCashPositionMovementMODUI: TStringField;
    cdsCashPositionMovementAPPDA: TDateTimeField;
    cdsCashPositionMovementAPPUI: TStringField;
    cdsCashPositionMovementUNDER4Y: TIntegerField;
    cdsCashPositionMovementUNDER4YDA: TDateTimeField;
    cdsCashPositionMovementNOTES4Y: TStringField;
    cdsCashPositionMovementISDEL: TIntegerField;
    cdsCashPositionMovementID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actApprovedCashPositionMovementExecute(Sender: TObject);
    procedure actApprovedCashPositionMovementUpdate(Sender: TObject);
    procedure actCashPositionMovementPostingUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashPositionMovementList: TfrmCashPositionMovementList;

implementation

{$R *.dfm}

uses DataGlobal, FormCashPositionMovement;

procedure TfrmCashPositionMovementList.actApprovedCashPositionMovementExecute(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Approved Cash Position Movement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsCashPositionMovement.Close;
    cdsCashPositionMovement.Params[0].AsInteger := cdsCashPositionMovementListCMPOSID.AsInteger;
    cdsCashPositionMovement.Open;

    cdsCashPositionMovement.Edit;
    cdsCashPositionMovementAPPROVED.AsString        := '1';
    cdsCashPositionMovementAPPROVED_DATE.AsDateTime := Now;
    cdsCashPositionMovementAPPROVED_UI.AsString     := dmGlobal.UserID;
    cdsCashPositionMovement.Post;

    cdsCashPositionMovement.ApplyUpdates(-1);
    MessageDlg('Approved Cash Position Movement Done', mtInformation, [mbYes], 0);

    cdsCashPositionMovementList.Refresh;
  end;
end;

procedure TfrmCashPositionMovementList.actApprovedCashPositionMovementUpdate(
  Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsCashPositionMovementListAPPROVED.AsString = '0';
end;

procedure TfrmCashPositionMovementList.actCashPositionMovementPostingUpdate(
  Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsCashPositionMovementListAPPROVED.AsString = '1';
end;

procedure TfrmCashPositionMovementList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashPositionMovementList.Close;
  cdsCashPositionMovementList.Params[0].AsDate := dtEntryDate.Date;
  cdsCashPositionMovementList.Open;
end;

procedure TfrmCashPositionMovementList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashPositionMovement;
end;

procedure TfrmCashPositionMovementList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField         := cdsCashPositionMovementListCMPOSID;
  dtEntryDate.Date := dmGlobal.RemoteServer.GetTransDate;

  actViewData.Execute;
end;

end.
