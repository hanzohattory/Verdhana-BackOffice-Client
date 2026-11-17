unit FormReksdanaList;

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
  Datasnap.DBClient, NClientDataset, cxCalendar, cxBarEditItem;

type
  TfrmReksadanaList = class(TfrmBrowseData)
    NClientDataset1: TNClientDataset;
    cdsReksadanaList: TNClientDataset;
    cdsReksadanaListREKSADANAID: TLargeintField;
    cdsReksadanaListREKSADANACODE: TStringField;
    cdsReksadanaListVALUEDATE: TDateField;
    cdsReksadanaListACCID: TIntegerField;
    cdsReksadanaListACCCODE: TStringField;
    cdsReksadanaListACCNAME: TStringField;
    cdsReksadanaListINSTRUMENT_ID: TLargeintField;
    cdsReksadanaListLOCALCODE: TStringField;
    cdsReksadanaListSTOCKNAME: TStringField;
    cdsReksadanaListUNIT: TFloatField;
    cdsReksadanaListCLOSE_PRICE: TFloatField;
    cdsReksadanaListTOTAL_NAV: TFloatField;
    cdsReksadanaListSTAT: TStringField;
    cdsReksadanaListSTATUSDESC: TStringField;
    cdsReksadanaListCREATED_DATE: TDateTimeField;
    cdsReksadanaListCREATED_SYSDATE: TDateTimeField;
    cdsReksadanaListCREATED_UI: TStringField;
    cdsReksadanaListAPPROVED_DATE: TDateTimeField;
    cdsReksadanaListAPPROVED_SYSDATE: TDateTimeField;
    cdsReksadanaListAPPROVED_UI: TStringField;
    cdsReksadanaListCLOSED_DATE: TDateTimeField;
    cdsReksadanaListCLOSED_SYSDATE: TDateTimeField;
    cdsReksadanaListCLOSED_UI: TStringField;
    cdsReksadanaListCANCELED_DATE: TDateTimeField;
    cdsReksadanaListCANCELED_SYSDATE: TDateTimeField;
    cdsReksadanaListCANCELED_UI: TStringField;
    cdsReksadanaListCANCELED_NOTES: TStringField;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    gvwMasterREKSADANAID: TcxGridDBBandedColumn;
    gvwMasterREKSADANACODE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterUNIT: TcxGridDBBandedColumn;
    gvwMasterCLOSE_PRICE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_NAV: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterSTATUSDESC: TcxGridDBBandedColumn;
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
    actClose: TNAction;
    N1: TMenuItem;
    Approve1: TMenuItem;
    Cancel1: TMenuItem;
    Close1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actApproveExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  fSystemDate: TDate;
  public
    { Public declarations }
  end;

var
  frmReksadanaList: TfrmReksadanaList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormReksadana;

procedure TfrmReksadanaList.actApproveExecute(Sender: TObject);
var
  sMsg, sTempMsg: string;
  i, iReksadanaID: integer;
  iDone, iFailed: integer;
  bCon: boolean;
  sReksadanaCode: string;
begin
//  inherited;
  bCon     := False;
  iDone    := 0;
  iFailed  := 0;
  sTempMsg := '';

  if gvwMaster.Controller.SelectedRecordCount > 1 then
    bCon := MessageQuestion('Approve multiple Reksadana Deposit ?')
  else if gvwMaster.Controller.SelectedRecordCount = 1 then
    bCon := MessageQuestion('Approve Reksadana Deposit '+ cdsReksadanaListREKSADANACODE.AsString +' ?');

  if bCon then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iReksadanaID   := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterREKSADANAID.Index];
      sReksadanaCode := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterREKSADANACODE.Index];

      if dmGlobal.RemoteServer.ReksadanaDepositoAppove(iReksadanaID, sMsg) then
        inc(iDone)
      else
      begin
        Inc(ifailed);
        if sTempMsg <> '' then
          sTempMsg := sTempMsg + #13#10;
        sTempMsg := intToStr(iFailed) +'. '+ sTempMsg + sMsg;
      end;
    end;
  end;

  MessageInformation(intToStr(iDone) +' Reksadana deposito has been approved, '+#13#10+
    intToStr(iFailed) +' has failed to approve'+#13#10+ sTempMsg);
end;

procedure TfrmReksadanaList.actCancelExecute(Sender: TObject);
var
  sMsg, sTempMsg: string;
  i, iReksadanaID: integer;
  iDone, iFailed: integer;
  bCon: boolean;
  sReksadanaCode: string;
  sNotes: string;
begin
//  inherited;
  bCon     := False;
  iDone    := 0;
  iFailed  := 0;
  sTempMsg := '';
  sNotes   := '';

  if gvwMaster.Controller.SelectedRecordCount > 1 then
    bCon := MessageQuestion('Close multiple Reksadana Deposit ?')
  else if gvwMaster.Controller.SelectedRecordCount = 1 then
    bCon := MessageQuestion('Close Reksadana Deposit '+ cdsReksadanaListREKSADANACODE.AsString +' ?');

  if bCon then
  begin
    sNotes := InputBox('Cancel Notes', 'Reason Notes', '');
    if sNotes <> '' then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        iReksadanaID   := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterREKSADANAID.Index];
        sReksadanaCode := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterREKSADANACODE.Index];

        if dmGlobal.RemoteServer.ReksadanaDepositoCancel(iReksadanaID, sNotes, sMsg) then
          inc(iDone)
        else
        begin
          Inc(ifailed);
          if sTempMsg <> '' then
            sTempMsg := sTempMsg + #13#10;
          sTempMsg := intToStr(iFailed) +'. '+ sTempMsg + sMsg;
        end;
      end;
    end;
  end;

  if sNotes <> '' then
    MessageInformation(intToStr(iDone) +' Reksadana deposito has been cancel, '+#13#10+
      intToStr(iFailed) +' has failed to cancel'+#13#10+ sTempMsg)
  else
    MessageInformation('Process canceled, Reason notes can not be emptied !');
end;

procedure TfrmReksadanaList.actCloseExecute(Sender: TObject);
var
  sMsg, sTempMsg: string;
  i, iReksadanaID: integer;
  iDone, iFailed: integer;
  bCon: boolean;
  sReksadanaCode: string;
begin
//  inherited;
  bCon     := False;
  iDone    := 0;
  iFailed  := 0;
  sTempMsg := '';

  if gvwMaster.Controller.SelectedRecordCount > 1 then
    bCon := MessageQuestion('Close multiple Reksadana Deposit ?')
  else if gvwMaster.Controller.SelectedRecordCount = 1 then
    bCon := MessageQuestion('Close Reksadana Deposit '+ cdsReksadanaListREKSADANACODE.AsString +' ?');

  if bCon then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iReksadanaID   := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterREKSADANAID.Index];
      sReksadanaCode := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterREKSADANACODE.Index];

      if dmGlobal.RemoteServer.ReksadanaDepositoClose(iReksadanaID, sMsg) then
        inc(iDone)
      else
      begin
        Inc(ifailed);
        if sTempMsg <> '' then
          sTempMsg := sTempMsg + #13#10;
        sTempMsg := intToStr(iFailed) +'. '+ sTempMsg + sMsg;
      end;
    end;
  end;

  MessageInformation(intToStr(iDone) +' Reksadana deposito has been close, '+#13#10+
    intToStr(iFailed) +' has failed to close'+#13#10+ sTempMsg);
end;

procedure TfrmReksadanaList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsReksadanaList.Close;
  cdsReksadanaList.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsReksadanaList.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsReksadanaList.Open;
end;

procedure TfrmReksadanaList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReksadana;
end;

procedure TfrmReksadanaList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField    := cdsReksadanaListREKSADANAID;
  fSystemDate := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := fSystemDate;
  dtEnd.EditValue   := fSystemDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsluaccount.Open;

    cdsLuInstrumentNotStock.Close;
    cdsLuInstrumentNotStock.Open;
  end;
end;

initialization
  RegisterClass(TfrmReksadanaList);

end.
