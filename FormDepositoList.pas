unit FormDepositoList;

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
  Datasnap.DBClient, NClientDataset, cxImageComboBox, cxCalendar, cxBarEditItem,
  cxCheckGroup;

type
  TfrmDepositoList = class(TfrmBrowseData)
    cdsDepositoList: TNClientDataset;
    cdsDepositoListDEPOSITO_ID: TLargeintField;
    cdsDepositoListDEPOSITO_CODE: TStringField;
    cdsDepositoListBNCODE: TStringField;
    cdsDepositoListREFERENCE_NO: TStringField;
    cdsDepositoListDEPOSITO_OPENDATE: TDateField;
    cdsDepositoListDEPOSITO_MATURITYDATE: TDateField;
    cdsDepositoListCCYCODE: TStringField;
    cdsDepositoListEXCHRATE: TFloatField;
    cdsDepositoListDEPOSITO_AMOUNT: TFloatField;
    cdsDepositoListDEPOSITO_EXCHAMOUNT: TFloatField;
    cdsDepositoListSTAT: TStringField;
    cdsDepositoListCREATED_DATE: TDateTimeField;
    cdsDepositoListCREATED_SYSDATE: TDateTimeField;
    cdsDepositoListCREATED_UI: TStringField;
    cdsDepositoListAPPROVED_DATE: TDateTimeField;
    cdsDepositoListAPPROVED_SYSDATE: TDateTimeField;
    cdsDepositoListAPPROVED_UI: TStringField;
    cdsDepositoListCLOSED_DATE: TDateTimeField;
    cdsDepositoListCLOSED_SYSDATE: TDateTimeField;
    cdsDepositoListCLOSED_UI: TStringField;
    cdsDepositoListCANCELED_DATE: TDateTimeField;
    cdsDepositoListCANCELED_SYSDATE: TDateTimeField;
    cdsDepositoListCANCELED_UI: TStringField;
    cdsDepositoListCANCELED_NOTES: TStringField;
    cdsDepositoListMODDA: TDateTimeField;
    cdsDepositoListMODUI: TStringField;
    gvwMasterDEPOSITO_ID: TcxGridDBBandedColumn;
    gvwMasterDEPOSITO_CODE: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterREFERENCE_NO: TcxGridDBBandedColumn;
    gvwMasterDEPOSITO_OPENDATE: TcxGridDBBandedColumn;
    gvwMasterDEPOSITO_MATURITYDATE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXCHRATE: TcxGridDBBandedColumn;
    gvwMasterDEPOSITO_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterDEPOSITO_EXCHAMOUNT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterCREATED_DATE: TcxGridDBBandedColumn;
    gvwMasterCREATED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCREATED_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    gvwMasterCLOSED_DATE: TcxGridDBBandedColumn;
    gvwMasterCLOSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCLOSED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_NOTES: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    actDepositoApprove: TNAction;
    actDepositoCancel: TNAction;
    actDepositoClose: TNAction;
    N1: TMenuItem;
    Approve1: TMenuItem;
    DepositoCancel1: TMenuItem;
    DepositoCancel2: TMenuItem;
    chkStatus: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actDepositoApproveExecute(Sender: TObject);
    procedure actDepositoCancelExecute(Sender: TObject);
    procedure actDepositoCloseExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepositoList: TfrmDepositoList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormProgressBar, FormDeposito;

procedure TfrmDepositoList.actDepositoApproveExecute(Sender: TObject);
var
  sMsg, sTmpMsg: string;
  iSelected, i,
  iDone, iFail,
  iDepositoID: integer;
  oProgress: TfrmProgressBar;
  iCon: Boolean;
begin
  inherited;
  iCon  := False;
  iDone := 0;
  iFail := 0;

  iSelected := gvwMaster.Controller.SelectedRecordCount;
  if iSelected = 1 then
    iCon := MessageQuestion('Approve Deposito '+ cdsDepositoListDEPOSITO_CODE.AsString +' ?')
  else if iSelected > 1 then
    iCon := MessageQuestion('Approve Multiple Deposito ?')
  else
    exit;

  if iCon then
  begin
    if iSelected = 1 then
    begin
      dmGlobal.RemoteServer.DepositoApprove(cdsDepositoListDEPOSITO_ID.AsInteger, sMsg);
      MessageInformation(sMsg);
    end
    else
    begin
      oProgress := TfrmProgressBar.Create(nil);
      try
        cdsDepositoList.DisableControls;

        oProgress.Show;
        for i := 0 to iSelected -1 do
        begin
          oProgress.ChangeBar(trunc(i / iSelected * 100), 'Processing Deposito ' + cdsDepositoListDEPOSITO_CODE.AsString);

          iDepositoID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEPOSITO_ID.Index];
          if dmGlobal.RemoteServer.DepositoApprove(iDepositoID, sTmpMsg) then
            Inc(iDone)
          else
          begin
            Inc(iFail);
            if sMsg <> '' then
              sMsg := sMsg + #13#10;
            sMsg := sMsg + sTmpMsg;
          end;
        end;
      finally
        FreeAndNil(oProgress);
        sTmpMsg := IntToStr(iDone) +' data has been approved';
        if iFail > 0 then
          sTmpMsg := sTmpMsg +#13#10+ IntToStr(iFail) +' data has been failed, Error : '+#13#10+ sMsg;
        MessageInformation(sTmpMsg);

        cdsDepositoList.EnableControls;
      end;
    end;
    cdsDepositoList.Refresh;
  end;
end;

procedure TfrmDepositoList.actDepositoCancelExecute(Sender: TObject);
var
  sMsg, sTmpMsg, sReason: string;
  iSelected, i,
  iDone, iFail,
  iDepositoID: integer;
  oProgress: TfrmProgressBar;
  iCon: Boolean;
begin
  inherited;
  iCon  := False;
  iDone := 0;
  iFail := 0;

  iSelected := gvwMaster.Controller.SelectedRecordCount;
  if iSelected = 1 then
    iCon := MessageQuestion('Cancel Deposito '+ cdsDepositoListDEPOSITO_CODE.AsString +' ?')
  else if iSelected > 1 then
    iCon := MessageQuestion('Cancel Multiple Deposito ?')
  else
    exit;

  if iCon then
  begin

    sReason := '';
    if not InputQuery('Reason Canceled', 'Reason', sReason) then
      Exit;


    if iSelected = 1 then
    begin
      dmGlobal.RemoteServer.DepositoCancel(cdsDepositoListDEPOSITO_ID.AsInteger, sReason, sMsg);
      MessageInformation(sMsg);
    end
    else
    begin
      try
        cdsDepositoList.DisableControls;
        oProgress := TfrmProgressBar.Create(nil);
        oProgress.Show;
        for i := 0 to iSelected -1 do
        begin
          oProgress.ChangeBar(trunc(i / iSelected * 100), 'Processing Deposito ' + cdsDepositoListDEPOSITO_CODE.AsString);

          iDepositoID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEPOSITO_ID.Index];
          if dmGlobal.RemoteServer.DepositoCancel(iDepositoID, sReason, sTmpMsg) then
            Inc(iDone)
          else
          begin
            Inc(iFail);
            if sMsg <> '' then
              sMsg := sMsg + #13#10;
            sMsg := sMsg + sTmpMsg;
          end;
        end;
      finally
        FreeAndNil(oProgress);
        sTmpMsg := IntToStr(iDone) +' data has been approved';
        if iFail > 0 then
          sTmpMsg := sTmpMsg +#13#10+ IntToStr(iFail) +' data has been failed, Error : '+#13#10+ sMsg;
        MessageInformation(sTmpMsg);

        cdsDepositoList.EnableControls;
      end;
    end;

    cdsDepositoList.Refresh;
  end;
end;

procedure TfrmDepositoList.actDepositoCloseExecute(Sender: TObject);
var
  sMsg, sTmpMsg: string;
  iSelected, i,
  iDone, iFail,
  iDepositoID: integer;
  oProgress: TfrmProgressBar;
  iCon: Boolean;
begin
  inherited;
  iCon  := False;
  iDone := 0;
  iFail := 0;

  iSelected := gvwMaster.Controller.SelectedRecordCount;
  if iSelected = 1 then
    iCon := MessageQuestion('Close Deposito '+ cdsDepositoListDEPOSITO_CODE.AsString +' ?')
  else if iSelected > 1 then
    iCon := MessageQuestion('Close Multiple Deposito ?')
  else
    exit;

  if iCon then
  begin
    if iSelected = 1 then
    begin
      dmGlobal.RemoteServer.DepositoClose(cdsDepositoListDEPOSITO_ID.AsInteger, sMsg);
      MessageInformation(sMsg);
    end
    else
    begin
      oProgress := TfrmProgressBar.Create(nil);
      try
        cdsDepositoList.DisableControls;

        oProgress.Show;
        for i := 0 to iSelected -1 do
        begin
          oProgress.ChangeBar(trunc(i / iSelected * 100), 'Processing Deposito ' + cdsDepositoListDEPOSITO_CODE.AsString);

          iDepositoID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEPOSITO_ID.Index];
          if dmGlobal.RemoteServer.DepositoClose(iDepositoID, sTmpMsg) then
            Inc(iDone)
          else
          begin
            Inc(iFail);
            if sMsg <> '' then
              sMsg := sMsg + #13#10;
            sMsg := sMsg + sTmpMsg;
          end;
        end;
      finally
        FreeAndNil(oProgress);
        sTmpMsg := IntToStr(iDone) +' data has been approved';
        if iFail > 0 then
          sTmpMsg := sTmpMsg +#13#10+ IntToStr(iFail) +' data has been failed, Error : '+#13#10+ sMsg;
        MessageInformation(sTmpMsg);

        cdsDepositoList.EnableControls;
      end;
    end;
    cdsDepositoList.Refresh;
  end;
end;

procedure TfrmDepositoList.actRefreshExecute(Sender: TObject);
var
  sTempStatus, sStatus: string;
begin
//  inherited;
  sTempStatus := chkStatus.EditValue;
  sStatus     := '';

  // Status : Created
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '1';
  end;

  // Status : Approved
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '2';
  end;

  // Status : Canceled
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '4';
  end;

  // Status : Closed
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '3';
  end;

  cdsDepositoList.Close;
  cdsDepositoList.Params[0].AsString := sStatus;
  cdsDepositoList.Open;
end;

procedure TfrmDepositoList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmDeposito;
end;

procedure TfrmDepositoList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chkStatus.EditValue := '1111';
end;

procedure TfrmDepositoList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chkStatus.EditValue := '0000';
end;

procedure TfrmDepositoList.FormCreate(Sender: TObject);
begin
  inherited;

  chkStatus.EditValue := '1000';
end;

Initialization
  RegisterClass(TfrmDepositoList);

end.
