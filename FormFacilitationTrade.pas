unit FormFacilitationTrade;

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
  cxGridCustomView, cxGrid, NReportClient, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, System.ImageList, cxCalendar, cxBarEditItem;

type
  TfrmFacilitationTrade = class(TfrmBrowseData)
    cdsFacilitationTradeList: TNClientDataset;
    cdsFacilitationTrade: TNClientDataset;
    cdsFacilitationTradeListFACILITATIONID: TLargeintField;
    cdsFacilitationTradeListFACILITATIONCODE: TStringField;
    cdsFacilitationTradeListFACILITATIONDESC: TStringField;
    cdsFacilitationTradeListDEALTICKETID: TLargeintField;
    cdsFacilitationTradeListSEQID: TIntegerField;
    cdsFacilitationTradeListDEALTICKETDATE: TDateField;
    cdsFacilitationTradeListACCID: TIntegerField;
    cdsFacilitationTradeListACCNO: TStringField;
    cdsFacilitationTradeListACCNAME: TStringField;
    cdsFacilitationTradeListSTOCKID: TLargeintField;
    cdsFacilitationTradeListSTOCKCODE: TStringField;
    cdsFacilitationTradeListSTOCKNAME: TStringField;
    cdsFacilitationTradeListBS: TStringField;
    cdsFacilitationTradeListMARKETCODE: TStringField;
    cdsFacilitationTradeListCCYCODE: TStringField;
    cdsFacilitationTradeListQTY: TLargeintField;
    cdsFacilitationTradeListPRICE: TFloatField;
    cdsFacilitationTradeListVALUE: TFloatField;
    cdsFacilitationTradeListCDUEDATE: TDateField;
    cdsFacilitationTradeListSDUEDATE: TDateField;
    cdsFacilitationTradeListLISTED_DATE: TDateField;
    cdsFacilitationTradeListBOOKED_DATE: TDateField;
    cdsFacilitationTradeListSTATUS: TStringField;
    cdsFacilitationTradeListMODDA: TDateTimeField;
    cdsFacilitationTradeListMODUI: TStringField;
    cdsFacilitationTradeListAPPDA: TDateTimeField;
    cdsFacilitationTradeListAPPUI: TStringField;
    cdsFacilitationTradeListISDEL: TIntegerField;
    cdsFacilitationTradeListID: TLargeintField;
    cdsFacilitationTradeFACILITATIONID: TLargeintField;
    cdsFacilitationTradeFACILITATIONCODE: TStringField;
    cdsFacilitationTradeFACILITATIONDESC: TStringField;
    cdsFacilitationTradeDEALTICKETID: TLargeintField;
    cdsFacilitationTradeSEQID: TIntegerField;
    cdsFacilitationTradeDEALTICKETDATE: TDateField;
    cdsFacilitationTradeACCID: TIntegerField;
    cdsFacilitationTradeACCNO: TStringField;
    cdsFacilitationTradeACCNAME: TStringField;
    cdsFacilitationTradeSTOCKID: TLargeintField;
    cdsFacilitationTradeSTOCKCODE: TStringField;
    cdsFacilitationTradeSTOCKNAME: TStringField;
    cdsFacilitationTradeBS: TStringField;
    cdsFacilitationTradeMARKETCODE: TStringField;
    cdsFacilitationTradeCCYCODE: TStringField;
    cdsFacilitationTradeQTY: TLargeintField;
    cdsFacilitationTradePRICE: TFloatField;
    cdsFacilitationTradeVALUE: TFloatField;
    cdsFacilitationTradeCDUEDATE: TDateField;
    cdsFacilitationTradeSDUEDATE: TDateField;
    cdsFacilitationTradeLISTED_DATE: TDateField;
    cdsFacilitationTradeBOOKED_DATE: TDateField;
    cdsFacilitationTradeSTATUS: TStringField;
    cdsFacilitationTradeMODDA: TDateTimeField;
    cdsFacilitationTradeMODUI: TStringField;
    cdsFacilitationTradeAPPDA: TDateTimeField;
    cdsFacilitationTradeAPPUI: TStringField;
    cdsFacilitationTradeISDEL: TIntegerField;
    cdsFacilitationTradeID: TLargeintField;
    gvwMasterFACILITATIONCODE: TcxGridDBBandedColumn;
    gvwMasterFACILITATIONDESC: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterCDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSDUEDATE: TcxGridDBBandedColumn;
    gvwMasterLISTED_DATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    dtFrom: TcxBarEditItem;
    dtTo: TcxBarEditItem;
    actChangeBoardFacilitation: TNAction;
    gvwMasterFACILITATIONID: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterSEQID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterBOOKED_DATE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    ChangeBoardFacilitation1: TMenuItem;
    N1: TMenuItem;
    cdsFacilitationTradeListDEALTICKETCODE: TStringField;
    gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn;
    cdsBoard: TNClientDataset;
    cdsBoardBOARDID: TLargeintField;
    cdsBoardBOARDCODE: TStringField;
    cdsBoardMARKETCODE: TStringField;
    cdsBoardBOARDDESC: TStringField;
    cdsBoardGLCD: TStringField;
    cdsBoardMARKET: TStringField;
    cdsBoardCPTYPE: TStringField;
    cdsBoardDUEBUYSTOCK: TIntegerField;
    cdsBoardDUESELLSTOCK: TIntegerField;
    cdsBoardDUEBUYCASH: TIntegerField;
    cdsBoardDUESELLCASH: TIntegerField;
    cdsBoardUSEMOVEDUE: TStringField;
    cdsBoardMOVEDUE_BUYSTOCK: TIntegerField;
    cdsBoardMOVEDUE_SELLSTOCK: TIntegerField;
    cdsBoardMOVEDUE_BUYCASH: TIntegerField;
    cdsBoardMOVEDUE_SELLCASH: TIntegerField;
    cdsBoardCPVALUE: TIntegerField;
    cdsBoardMODDA: TDateTimeField;
    cdsBoardMODUI: TStringField;
    cdsBoardAPPDA: TDateTimeField;
    cdsBoardAPPUI: TStringField;
    cdsBoardISDEL: TIntegerField;
    cdsBoardID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actChangeBoardFacilitationExecute(Sender: TObject);
  private
    { Private declarations }

    FSysDate: TDate;
  public
    { Public declarations }
  end;

var
  frmFacilitationTrade: TfrmFacilitationTrade;

implementation

{$R *.dfm}

uses DataGlobal, FormFacilitationBoard;

procedure TfrmFacilitationTrade.actChangeBoardFacilitationExecute(
  Sender: TObject);
var
  iFacilitationID: largeint;
  iSeqID: LargeInt;
  iBoardID: Integer;
  iCPAccID: Integer;
  sMsg: string;
  bRes: Boolean;
  i: Integer;
  iDone, iFail: integer;
  sMsgTemp: string;
  oForm: TfrmFacilitationBoard;
begin
  inherited;
  iDone    := 0;
  iFail    := 0;
  sMsgTemp := '';

  try
    oForm := TfrmFacilitationBoard.Create(nil);
    if oForm.ShowModal = mrOk then
    begin
      iBoardID := TfrmFacilitationBoard(oForm).edBoardID.EditValue;

      cdsBoard.Close;
      cdsBoard.Params[0].AsInteger := iBoardID;
      cdsboard.Open;

      if cdsBoardCPVALUE.IsNull then
        iCPAccID := TfrmFacilitationBoard(oForm).edCPAccID.EditValue
      else
        iCPAccID := cdsBoardCPVALUE.AsInteger;
    end
    else
      Exit;
  finally
    FreeAndNil(oForm);
  end;

  if MessageQuestion('Change selected board facilitation ?') then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iFacilitationID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterFACILITATIONID.Index];
      iSeqID          := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterSEQID.Index];

      bRes := dmGlobal.RemoteServer.ChangeBoardFacilitation(iFacilitationID, iSeqID, iBoardID, iCPAccID, sMsg);
      if bRes then
      begin
        Inc(iDone);
        sMsgTemp := sMsgTemp + sMsg + #10#13;
      end
      else begin
        Inc(iFail);
        sMsgTemp := sMsgTemp + sMsg + #10#13;
      end;
    end;
  end;

  sMsg := '';
  if iDone > 0 then
    sMsg := FormatFloat('#,##0', iDone) + ' record''s board has been changed, ' +#10#13+ sMsgTemp;
  if iFail > 0 then
  begin
    if sMsg = '' then
      sMsg := FormatFloat('#,##0', iFail) + ' record''s board has been failed changed, ' +#10#13+ sMsgTemp
    else
      sMsg := sMsg +#10#13+ FormatFloat('#,##0', iFail) + ' record''s board has been failed changed, ' +#10#13+ sMsgTemp;
  end;

  MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
end;

procedure TfrmFacilitationTrade.actRefreshExecute(Sender: TObject);
begin
  inherited;

  cdsFacilitationTradeList.Close;
  cdsFacilitationTradeList.Params[0].AsDate := VarToDateTime(dtFrom.EditValue);
  cdsFacilitationTradeList.Params[1].AsDate := VarToDateTime(dtTo.EditValue);
  cdsFacilitationTradeList.Open;
end;

procedure TfrmFacilitationTrade.FormCreate(Sender: TObject);
begin
  inherited;
  FSysDate := dmglobal.RemoteServer.GetTransDate;

  try
    with dmGlobal.IntDataLookup do
    begin
      cdsLuCP_Broker.Close;
      cdsLuCP_Broker.Open;
    end;
  except
    on E: exception do
      MessageError(E.Message);
  end;

  dtFrom.EditValue := FSysDate;
  dtTo.EditValue   := FSysDate;
end;

Initialization
  RegisterClass(TfrmFacilitationTrade);

end.
