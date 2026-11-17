unit FormAccSuspendList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, dxSkinsCore, NReportClient, cxCalendar, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  System.Actions, System.ImageList, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAccSuspendList = class(TfrmBrowseData)
    cdsAccSuspendList: TNClientDataset;
    cdsAccSuspendListACC_STAT: TStringField;
    cdsAccSuspendListSPDATE: TDateField;
    cdsAccSuspendListSPBY: TStringField;
    cdsAccSuspendListSPRESID: TLargeintField;
    cdsAccSuspendListSPNOTES: TStringField;
    cdsAccSuspendListMODDA: TDateTimeField;
    cdsAccSuspendListMODUI: TStringField;
    cdsAccSuspendListAPPDA: TDateTimeField;
    cdsAccSuspendListAPPUI: TStringField;
    cdsAccSuspendListUNDER4Y: TIntegerField;
    cdsAccSuspendListUNDER4YDA: TDateTimeField;
    cdsAccSuspendListNOTES4Y: TStringField;
    cdsAccSuspendListISDEL: TIntegerField;
    cdsAccSuspendListID: TLargeintField;
    cdsAccSuspendListACCCODE: TStringField;
    cdsAccSuspendListACCNAME: TStringField;
    cdsAccSuspendListACC_STS: TStringField;
    cdsAccSuspendListSPRESID_1: TLargeintField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACC_STAT: TcxGridDBBandedColumn;
    gvwMasterSPDATE: TcxGridDBBandedColumn;
    gvwMasterSPBY: TcxGridDBBandedColumn;
    gvwMasterSPRESID: TcxGridDBBandedColumn;
    gvwMasterSPNOTES: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterSPRESID_1: TcxGridDBBandedColumn;
    N5: TMenuItem;
    actApproveSuspend: TNAction;
    actRejectSuspend: TNAction;
    actCancelSuspend: TNAction;
    Approve2: TMenuItem;
    Reject2: TMenuItem;
    Cancel2: TMenuItem;
    cdsAccSuspendListACCID: TIntegerField;
    cdsAccSuspend: TNClientDataset;
    cdsAccSuspendACCID: TIntegerField;
    cdsAccSuspendACC_STAT: TStringField;
    cdsAccSuspendSPDATE: TDateField;
    cdsAccSuspendSPBY: TStringField;
    cdsAccSuspendSPRESID: TLargeintField;
    cdsAccSuspendSPNOTES: TStringField;
    cdsAccSuspendMODDA: TDateTimeField;
    cdsAccSuspendMODUI: TStringField;
    cdsAccSuspendAPPDA: TDateTimeField;
    cdsAccSuspendAPPUI: TStringField;
    cdsAccSuspendUNDER4Y: TIntegerField;
    cdsAccSuspendUNDER4YDA: TDateTimeField;
    cdsAccSuspendNOTES4Y: TStringField;
    cdsAccSuspendISDEL: TIntegerField;
    cdsAccSuspendID: TLargeintField;
    cdsAccSuspendACCCODE: TStringField;
    cdsAccSuspendACCNAME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actApproveSuspendExecute(Sender: TObject);
    procedure actRejectSuspendExecute(Sender: TObject);
    procedure actCancelSuspendExecute(Sender: TObject);
    procedure actApproveSuspendUpdate(Sender: TObject);
    procedure actCancelSuspendUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccSuspendList: TfrmAccSuspendList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccSuspend, DataLookup;

procedure TfrmAccSuspendList.actApproveSuspendExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to approve this account suspend request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if dmGlobal.RemoteServer.ApproveSuspendAccount(cdsAccSuspendListACCID.AsInteger, sMsg) then
    begin
      cdsAccSuspendList.Close;
      cdsAccSuspendList.Open;
    end;

    ShowMessage(sMsg);
  end;
end;

procedure TfrmAccSuspendList.actApproveSuspendUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (UpperCase(cdsAccSuspendListSPBY.AsString) <> UpperCase(dmGlobal.UserID));
end;

procedure TfrmAccSuspendList.actCancelSuspendExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to cancel this account suspend request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsAccSuspend.Close;
    cdsAccSuspend.Params[0].AsInteger := cdsAccSuspendListACCID.AsInteger;
    cdsAccSuspend.Open;

    if not cdsAccSuspend.IsEmpty then
    begin
      cdsAccSuspend.Delete;
      cdsAccSuspend.ApplyUpdates(0);
      sMsg := 'Account suspend request cancelled succesfullly';
    end
    else
    begin
      sMsg := 'This account suspend request not found!'
    end;

    cdsAccSuspendList.Close;
    cdsAccSuspendList.Open;

    ShowMessage(sMsg);
  end;
end;

procedure TfrmAccSuspendList.actCancelSuspendUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (UpperCase(cdsAccSuspendListSPBY.AsString) = UpperCase(dmGlobal.UserID));
end;

procedure TfrmAccSuspendList.actRejectSuspendExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to reject this account suspend request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsAccSuspend.Close;
    cdsAccSuspend.Params[0].AsInteger := cdsAccSuspendListACCID.AsInteger;
    cdsAccSuspend.Open;

    if not cdsAccSuspend.IsEmpty then
    begin
      cdsAccSuspend.Delete;
      cdsAccSuspend.ApplyUpdates(0);
      sMsg := 'Account suspend request rejected succesfullly';
    end
    else
    begin
      sMsg := 'This account suspend request not found!'
    end;

    cdsAccSuspendList.Close;
    cdsAccSuspendList.Open;

    ShowMessage(sMsg);
  end;
end;

procedure TfrmAccSuspendList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccSuspend;
end;

procedure TfrmAccSuspendList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAccSuspendListACCID;

  cdsAccSuspendList.Close;
  cdsAccSuspendList.Open;

  dmGlobal.IntDataLookUp.cdsLuAccount.Close;
  dmGlobal.IntDataLookUp.cdsLuAccount.Open;

  dmGlobal.IntDataLookUp.cdsLuSuspendList.Close;
  dmGlobal.IntDataLookUp.cdsLuSuspendList.Open;
end;

Initialization
  RegisterClass(TfrmAccSuspendList);

end.
