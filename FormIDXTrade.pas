unit FormIDXTrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.ActnList,
  NDatasetAction, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Datasnap.DBClient, NClientDataset, NActionPermission, Vcl.Menus,
  XLSSheetData5, DBXJSON, Data.DBXJSONCommon, XLSReadWriteII5, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, dbf,
  System.JSON, System.Actions, ComObj, cxCheckBox, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmIDXTrade = class(TfrmBasic)
    dsIDXTrade: TDataSource;
    cdsIDXTrade: TNClientDataset;
    cdsIDXTradeIDXTRADEID: TStringField;
    cdsIDXTradeIDXORDERID: TStringField;
    cdsIDXTradeTRADEDATE: TDateTimeField;
    cdsIDXTradeSTOCKCODE: TStringField;
    cdsIDXTradeBOARDCODE: TStringField;
    cdsIDXTradeMKTID: TStringField;
    cdsIDXTradeBS: TStringField;
    cdsIDXTradeMTIME: TDateTimeField;
    cdsIDXTradeMQTY: TFloatField;
    cdsIDXTradeLOTSIZE: TFloatField;
    cdsIDXTradeMPRICE: TFloatField;
    cdsIDXTradeCPBROKER: TStringField;
    cdsIDXTradeCPDEALER: TStringField;
    cdsIDXTradeMODDA: TDateTimeField;
    cdsIDXTradeMODUI: TStringField;
    cdsIDXTradeINSDA: TDateTimeField;
    cdsIDXTradeINSUI: TStringField;
    cdsIDXTradeSID: TStringField;
    cdsIDXTradeBRKREFF: TStringField;
    cdsIDXTradeALLOCQTY: TFloatField;
    cdsIDXTradeALLOC: TStringField;
    cdsIDXTradeACCINIT: TStringField;
    cdsIDXTradeTRDMEMO: TStringField;
    cdsIDXTradeACCID: TIntegerField;
    cdsIDXTradeORDSOURCE: TStringField;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterIDXTRADEID: TcxGridDBBandedColumn;
    gvwMasterIDXORDERID: TcxGridDBBandedColumn;
    gvwMasterTRADEDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterBOARDCODE: TcxGridDBBandedColumn;
    gvwMasterMKTID: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMTIME: TcxGridDBBandedColumn;
    gvwMasterMQTY: TcxGridDBBandedColumn;
    gvwMasterLOTSIZE: TcxGridDBBandedColumn;
    gvwMasterMPRICE: TcxGridDBBandedColumn;
    gvwMasterCPBROKER: TcxGridDBBandedColumn;
    gvwMasterCPDEALER: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterINSDA: TcxGridDBBandedColumn;
    gvwMasterINSUI: TcxGridDBBandedColumn;
    gvwMasterSID: TcxGridDBBandedColumn;
    gvwMasterBRKREFF: TcxGridDBBandedColumn;
    gvwMasterALLOCQTY: TcxGridDBBandedColumn;
    gvwMasterALLOC: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterTRDMEMO: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterORDSOURCE: TcxGridDBBandedColumn;
    aclIDXTrade: TActionList;
    actRefresh: TNAction;
    actUpdateFromSungard: TNAction;
    actGenerateAllDealTicket: TNAction;
    popGrid: TPopupMenu;
    Refresh1: TMenuItem;
    UpdateSunguardTrade1: TMenuItem;
    OpenDialog: TOpenDialog;
    cdsSunGardTrade: TNClientDataset;
    GenerateDealTicket1: TMenuItem;
    cdsIDXTradeDEALTICKETID: TLargeintField;
    cdsIDXTradeACCCODE: TStringField;
    cdsIDXTradeACCNAME: TStringField;
    cdsIDXTradeINSTRUMENT_ID: TLargeintField;
    cdsIDXTradeINSTRUMENT_CODE: TStringField;
    cdsIDXTradeSHORTNAME: TStringField;
    gvwMasterDEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    actUpdateAccount: TNAction;
    UpdateAccount1: TMenuItem;
    cdsIDXTradeORDERCODE: TStringField;
    cdsIDXTradeISGENERATED: TStringField;
    gvwMasterORDERCODE: TcxGridDBBandedColumn;
    gvwMasterISGENERATED: TcxGridDBBandedColumn;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    actViewData: TNAction;
    actGenerateSelectedDealTicket: TNAction;
    cdsIDXTradeCHANNELCODE: TStringField;
    gvwMasterCHANNELCODE: TcxGridDBBandedColumn;
    N1: TMenuItem;
    actSaveAsDTEFormat: TNAction;
    dbfDTE: TDbf;
    dbfDTETRX_CODE: TIntegerField;
    dbfDTETRX_POST: TSmallintField;
    dbfDTETRX_NOTE: TStringField;
    dbfDTETRX_TYPE: TStringField;
    dbfDTEBRK_COD2: TStringField;
    dbfDTEINV_TYP2: TStringField;
    dbfDTEBRK_COD1: TStringField;
    dbfDTEINV_TYP1: TStringField;
    dbfDTESTK_CODE: TStringField;
    dbfDTESTK_PRIC: TFloatField;
    dbfDTETRX_DATE: TDateField;
    dbfDTETRX_ORD2: TIntegerField;
    dbfDTETRX_ORD1: TIntegerField;
    dbfDTETRX_REF2: TStringField;
    dbfDTETRX_REF1: TStringField;
    dbfDTETRX_KOPUR: TFloatField;
    dbfDTETRX_TIME: TStringField;
    dbfDTETRX_USER: TStringField;
    dbfDTETRADING_ID: TStringField;
    SaveDialog: TSaveDialog;
    SaveAsDTEFormat1: TMenuItem;
    actClearIDXAllTrade: TNAction;
    ClearData1: TMenuItem;
    dbfDTETRX_SESS: TFloatField;
    dbfDTESTK_VOLM: TFloatField;
    cdsSunGardTradeNumCac2: TFloatField;
    cdsSunGardTradeClientreference: TWideStringField;
    cdsSunGardTradeUserid: TFloatField;
    cdsSunGardTradeHour: TDateTimeField;
    cdsSunGardTradeBuySell: TWideStringField;
    cdsSunGardTradeSymbol: TWideStringField;
    cdsSunGardTradeQuantity: TFloatField;
    cdsSunGardTradePrice: TFloatField;
    cdsSunGardTradeQuantityremaining: TFloatField;
    cdsSunGardTradeStatus: TWideStringField;
    cdsSunGardTradeResponsetype: TWideStringField;
    cdsSunGardTradeFirmID: TStringField;
    cdsSunGardTradeMemo: TWideStringField;
    cdsSunGardTradeParentOrderId: TWideStringField;
    cdsSunGardTradeID: TLargeintField;
    cdsIDXTradeID: TLargeintField;
    cdsIDXTradeEXTREF_CODE: TStringField;
    cdsIDXTradeACCSOPID: TIntegerField;
    cdsIDXTradeDAYTRADE: TBooleanField;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterEXTREF_CODE: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterDAYTRADE: TcxGridDBBandedColumn;
    procedure actUpdateFromSungardExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateAllDealTicketExecute(Sender: TObject);
    procedure actUpdateAccountExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actGenerateSelectedDealTicketExecute(Sender: TObject);
    procedure actSaveAsDTEFormatExecute(Sender: TObject);
    procedure actClearIDXAllTradeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SaveAsDTE(AFileName: String);
  end;

var
  frmIDXTrade: TfrmIDXTrade;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmIDXTrade.actClearIDXAllTradeExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to Clear IDX Trade Data on ' +
    FormatDateTime('dd MMM yyyy ?', cdsIDXTrade.Params[0].AsDate) , mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Screen.Cursor := crSQLWait;
    Try
      dmGlobal.RemoteServer.ClearIDXAllTrade(cdsIDXTrade.Params[0].AsDate, sMsg);
      MessageDlg(sMsg, mtInformation, [mbYes], 0);
      cdsIDXTrade.Close;
      cdsIDXTrade.Params[0].AsDate := dtTransDate.Date;
      cdsIDXTrade.Open;
    Finally
      cdsIDXTrade.Refresh;
      Screen.Cursor := crDefault;
    End;
  end;
end;

procedure TfrmIDXTrade.actGenerateAllDealTicketExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to generate deal ticket from All IDX Trade ' +
    FormatDateTime('dd MMM yyyy ?', cdsIDXTrade.Params[0].AsDate) , mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Screen.Cursor := crSQLWait;
    Try
      dmGlobal.RemoteServer.GenerateDTFromIDXTradeAll(cdsIDXTrade.Params[0].AsDate, dmGlobal.UserID, sMsg);
      MessageDlg(sMsg, mtInformation, [mbYes], 0);
    Finally
      cdsIDXTrade.DisableControls;
      try
        cdsIDXTrade.Refresh;
      finally
        cdsIDXTrade.EnableControls;
      end;
      Screen.Cursor := crDefault;
    End;
  end;
end;

procedure TfrmIDXTrade.actGenerateSelectedDealTicketExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sTradeID: String;
begin
  inherited;
  if MessageDlg('Are you sure to generate deal ticket from Selected IDX Trade ' +
    FormatDateTime('dd MMM yyyy ?', cdsIDXTrade.Params[0].AsDate) , mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Screen.Cursor := crSQLWait;
    Try
      sTradeID := '';

      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        sTradeID := sTradeID + cdsIDXTradeIDXTRADEID.AsString + ';'
      end;

      ShowMessage(dmGlobal.RemoteServer.GenerateDTFromIDXTradeSelected(sTradeID, cdsIDXTrade.Params[0].AsDate, dmGlobal.UserID));

    Finally
      Screen.Cursor := crDefault;
    End;
  end;
end;

procedure TfrmIDXTrade.actSaveAsDTEFormatExecute(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  if SaveDialog.Execute then
  begin
    sFileName := SaveDialog.FileName;
    SaveAsDTE(sFileName);
    if FileExists(sFileName) then
    begin
      ShowMessage('DTE Created Successfully @ '
        + QuotedStr(sFileName) + '.');
    end
    else
    begin
      dmGlobal.ErrorMessage('Can''t create DTE File!');
    end;
  end;
end;

procedure TfrmIDXTrade.actUpdateAccountExecute(Sender: TObject);
var
  FAccID, i, RecIdx: Integer;
begin
  inherited;
  FAccID := cdsIDXTradeACCID.AsInteger;
  if frmLuAccount.Run(FAccID, True) = mrOK then
  begin
    with dmGlobal.IntDataLookup do
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        cdsIDXTrade.Edit;
        cdsIDXTradeACCID.AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
  //      cdsIDXTradeACCCODE.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
  //      cdsIDXTradeACCNAME.AsString := cdsLuAccountMultiFilterACCNAME.AsString;
        cdsIDXTradeACCINIT.AsString := cdsLuAccountMultiFilterACCINIT.AsString;
        cdsIDXTrade.Post;
      end;

      cdsIDXTrade.ApplyUpdates(-1);

      actRefresh.Execute;
    end;
  end;
end;

procedure TfrmIDXTrade.actUpdateFromSungardExecute(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName, sMsg: String;
  iRows, iCols: Integer;
  i, j: Integer;
begin
  inherited;
  if MessageDlg('Are you sure to update SunGard trade from it''s excel file?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if OpenDialog.Execute then
    begin
      sFileName := OpenDialog.FileName;
      if FileExists(sFileName) then
      begin
        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := False;
        oExcel.WorkBooks.Open := sFileName;

        oSheet := oExcel.WorkBooks[1].WorkSheets[1];
        iRows  := oSheet.UsedRange.Rows.Count;
        iCols  := oSheet.UsedRange.Cols.Count;
        Screen.Cursor := crSQLWait;
        try
          cdsSunGardTrade.Close;
          cdsSunGardTrade.Open;

          for i := 1 to iRows do
          begin  cdsSunGardTrade.Append;
            for j := 1 to iCols do
              cdsSunGardTrade.Fields[j-1].AsVariant := oSheet.Cells[i, j].Value;
            cdsSunGardTrade.Post;
          end;
          cdsSunGardTrade.ApplyUpdates(-1);

          sMsg := dmGlobal.RemoteServer.SungardAllTrade;
        finally
          Screen.Cursor := crDefault;
          oExcel.Quit;

          oExcel.Unassigned;
          oSheet.Unassigned;

          MessageDlg(sMsg, mtInformation, [mbOk], 0);
          actRefresh.Execute;
        end;
      end;

    end;
  end;
end;

procedure TfrmIDXTrade.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsIDXTrade.DisableControls;
  try
    cdsIDXTrade.Close;
    cdsIDXTrade.Params[0].AsDate := dtTransDate.Date;
    cdsIDXTrade.Open;
  finally
    cdsIDXTrade.EnableControls;
  end;
end;

procedure TfrmIDXTrade.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;

//  with dmGlobal.IntDataLookup do
//  begin
//    cdsLuMainAccount.Close;
//    cdsLuMainAccount.Open;
//  end;

//  actViewData.Execute;
end;

procedure TfrmIDXTrade.SaveAsDTE(AFileName: String);
var
  i: Integer;
  sBrkCode: String;
begin
  if (cdsIDXTrade.Active) And (not cdsIDXTrade.IsEmpty) then
  begin
    dbfDTE.Close;
    dbfDTE.TableName := AFileName;
    dbfDTE.CreateTable;
    dbfDTE.Open;

    i := -1;
    sBrkCode := dmGlobal.RemoteServer.GetBrokerCode;

    cdsIDXTrade.DisableControls;
    Try
      cdsIDXTrade.First;
      while not cdsIDXTrade.Eof do
      begin
        dbfDTE.Append;
        dbfDTETRX_CODE.AsInteger := StrToInt64Def(cdsIDXTradeIDXTRADEID.AsString, i);
        if dbfDTETRX_CODE.AsInteger < 0 then Dec(i);
        dbfDTETRX_POST.AsInteger := 1;
        dbfDTETRX_NOTE.AsString := cdsIDXTradeIDXORDERID.AsString;
        dbfDTETRX_SESS.AsInteger := 1;
        dbfDTETRX_TYPE.AsString := cdsIDXTradeBOARDCODE.AsString;
        if cdsIDXTradeBS.AsString = 'B' then
        begin
          dbfDTEBRK_COD1.AsString := sBrkCode;
          dbfDTEBRK_COD2.AsString := cdsIDXTradeCPBROKER.AsString;
          dbfDTETRX_REF1.AsString := cdsIDXTradeACCINIT.AsString + '-' + cdsIDXTradeACCCODE.AsString;
          dbfDTETRX_REF2.AsString := '.';
        end
        else
        begin
          dbfDTEBRK_COD1.AsString := cdsIDXTradeCPBROKER.AsString;
          dbfDTEBRK_COD2.AsString := sBrkCode;
          dbfDTETRX_REF1.AsString := '.';
          dbfDTETRX_REF2.AsString := cdsIDXTradeACCINIT.AsString + '-' + cdsIDXTradeACCCODE.AsString;
        end;
        dbfDTEINV_TYP1.AsString := 'I';
        dbfDTEINV_TYP2.AsString := 'I';
        dbfDTESTK_CODE.AsString := cdsIDXTradeSTOCKCODE.AsString;
        dbfDTESTK_VOLM.AsLargeInt := Trunc(cdsIDXTradeMQTY.AsFloat);
        dbfDTESTK_PRIC.AsFloat := cdsIDXTradeMPRICE.AsFloat;
        dbfDTETRX_DATE.AsDateTime := cdsIDXTradeTRADEDATE.AsDateTime;
        dbfDTETRX_TIME.AsString := FormatDateTime('hhnnss', cdsIDXTradeMTIME.AsDateTime);
        dbfDTE.Post;

        cdsIDXTrade.Next;
      end;
    Finally
      cdsIDXTrade.EnableControls;
    End;
  end;
end;

Initialization
  RegisterClass(TfrmIDXTrade);

end.
