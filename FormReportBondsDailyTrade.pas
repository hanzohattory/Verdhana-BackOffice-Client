unit FormReportBondsDailyTrade;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,XLSSheetData5, XLSReadWriteII5,
  cxDBLookupComboBox;

type
  TfrmReportBondsDailyTrade = class(TfrmBrowseData)
    cdsBondsDailyTrade_H: TNClientDataset;
    cdsBondsDailyTrade_D: TNClientDataset;
    cdsBondsDailyTrade_HCONBONID: TLargeintField;
    cdsBondsDailyTrade_HCONDATE: TDateTimeField;
    cdsBondsDailyTrade_HDUEDATE: TDateTimeField;
    cdsBondsDailyTrade_HMATURITY_DATE: TDateTimeField;
    cdsBondsDailyTrade_HLASTCOUPONDATE: TDateTimeField;
    cdsBondsDailyTrade_HNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDailyTrade_HINSTRUMENT_CODE: TStringField;
    cdsBondsDailyTrade_HFACEVALUE: TFloatField;
    cdsBondsDailyTrade_HINTEREST_RATE: TFloatField;
    cdsBondsDailyTrade_HCOUPONPERIOD: TIntegerField;
    cdsBondsDailyTrade_HACR_INTEREST: TFloatField;
    cdsBondsDailyTrade_HINTEREST_AMT: TFloatField;
    cdsBondsDailyTrade_HBS: TStringField;
    cdsBondsDailyTrade_DCONBONID: TLargeintField;
    cdsBondsDailyTrade_DBS: TStringField;
    cdsBondsDailyTrade_DACCCODE: TStringField;
    cdsBondsDailyTrade_DACCNAME: TStringField;
    cdsBondsDailyTrade_DACQDATE: TDateField;
    cdsBondsDailyTrade_DACQ_PRICE: TFloatField;
    cdsBondsDailyTrade_DFACEVALUE: TFloatField;
    cdsBondsDailyTrade_DPROCEED: TFloatField;
    cdsBondsDailyTrade_DCAPGAIN: TFloatField;
    cdsBondsDailyTrade_DACC_INTEREST: TFloatField;
    cdsBondsDailyTrade_DHOLD_PERIOD: TIntegerField;
    cdsBondsDailyTrade_DHOLD_INTEREST: TFloatField;
    cdsBondsDailyTrade_DHOLD_TAX: TFloatField;
    cdsBondsDailyTrade_DHOLD_INTERESTTAX: TFloatField;
    cdsBondsDailyTrade_DNET_PROCEED: TFloatField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtDateFrom: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsBondsDailyTrade_D: TDataSource;
    gvwMasterCONBONID: TcxGridDBBandedColumn;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterMATURITY_DATE: TcxGridDBBandedColumn;
    gvwMasterLASTCOUPONDATE: TcxGridDBBandedColumn;
    gvwMasterNEXTCOUPONDATE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterFACEVALUE: TcxGridDBBandedColumn;
    gvwMasterINTEREST_RATE: TcxGridDBBandedColumn;
    gvwMasterCOUPONPERIOD: TcxGridDBBandedColumn;
    gvwMasterACR_INTEREST: TcxGridDBBandedColumn;
    gvwMasterINTEREST_AMT: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView1BS: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACCCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACQDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACQ_PRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1FACEVALUE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1PROCEED: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1CAPGAIN: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACC_INTEREST: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1HOLD_PERIOD: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1HOLD_INTEREST: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1HOLD_TAX: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1HOLD_INTERESTTAX: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1NET_PROCEED: TcxGridDBBandedColumn;
    actSaveExcel: TNAction;
    XLS: TXLSReadWriteII5;
    grdMasterLevel3: TcxGridLevel;
    grdMasterDBBandedTableView2: TcxGridDBBandedTableView;
    cdsBondsDailyTrade: TNClientDataset;
    dsBondsDailyTrade: TDataSource;
    cdsBondsDailyTradeCONBONID: TLargeintField;
    cdsBondsDailyTradeTRADEBOND_NO: TStringField;
    cdsBondsDailyTradeBS: TStringField;
    cdsBondsDailyTradeCTPREF: TStringField;
    cdsBondsDailyTradeCONDATE: TDateTimeField;
    cdsBondsDailyTradeDUEDATE: TDateTimeField;
    cdsBondsDailyTradeINSTRUMENT_CODE: TStringField;
    cdsBondsDailyTradeFACEVALUE: TFloatField;
    cdsBondsDailyTradeINTEREST_RATE: TFloatField;
    cdsBondsDailyTradeLASTCOUPONDATE: TDateTimeField;
    cdsBondsDailyTradeNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDailyTradeMATURITYDATE: TDateTimeField;
    cdsBondsDailyTradeCOUPONPERIOD: TIntegerField;
    cdsBondsDailyTradeHOLD_INTERESTDAY: TIntegerField;
    cdsBondsDailyTradeSTAT: TStringField;
    cdsBondsDailyTradeBONDNAME: TStringField;
    cdsBondsDailyTradePRICE: TFloatField;
    cdsBondsDailyTradeBS_HISTORY: TStringField;
    cdsBondsDailyTradeACCID: TLargeintField;
    cdsBondsDailyTradeACCCODE: TStringField;
    cdsBondsDailyTradeACCNAME: TStringField;
    cdsBondsDailyTradeACCTYPE: TStringField;
    cdsBondsDailyTradePRDCODE: TStringField;
    cdsBondsDailyTradeACQ_PRICE: TFloatField;
    cdsBondsDailyTradeACQDATE: TDateField;
    cdsBondsDailyTradeACQVALUE: TFloatField;
    cdsBondsDailyTradeACC_INTEREST: TFloatField;
    cdsBondsDailyTradeCAP_GAIN: TFloatField;
    cdsBondsDailyTradeCAP_GAIN_TAX: TFloatField;
    cdsBondsDailyTradeHOLD_INTEREST: TFloatField;
    cdsBondsDailyTradeHOLD_INTERESTTAX: TFloatField;
    cdsBondsDailyTradeNETPROCEED: TFloatField;
    cdsBondsDailyTradePROCEED: TFloatField;
    cdsBondsDailyTradeACRINTERESTDAY: TIntegerField;
    cdsBondsDailyTradePRICE_X: TFloatField;
    cdsBondsDailyTradeACQ_PRICE_X: TFloatField;
    cxDateEdit1: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dtDateTo: TcxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    grdMasterDBBandedTableView2CONBONID: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2TRADEBOND_NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2BS: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2CTPREF: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2CONDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2DUEDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2INSTRUMENT_CODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2FACEVALUE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2INTEREST_RATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2LASTCOUPONDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2NEXTCOUPONDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2MATURITYDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2COUPONPERIOD: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2HOLD_INTERESTDAY: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2STAT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2BONDNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2PRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2BS_HISTORY: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACCID: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACCCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACCTYPE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2PRDCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACQ_PRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACQDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACQVALUE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACC_INTEREST: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2CAP_GAIN: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2CAP_GAIN_TAX: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2HOLD_INTEREST: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2HOLD_INTERESTTAX: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2NETPROCEED: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2PROCEED: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACRINTERESTDAY: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2PRICE_X: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACQ_PRICE_X: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSaveExcelExecute(Sender: TObject);
    procedure cdsBondsDailyTradeCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportBondsDailyTrade: TfrmReportBondsDailyTrade;

implementation

{$R *.dfm}

uses DataGlobal,cxGridExportLink, DataLookup;

procedure TfrmReportBondsDailyTrade.actRefreshExecute(Sender: TObject);
begin
//  inherited;
//  cdsBondsDailyTrade_H.Close;
//  cdsBondsDailyTrade_H.Params[0].AsDateTime := dtDateFrom.Date;
//  cdsBondsDailyTrade_H.Params[1].AsDateTime := dtDateTo.Date;
//  cdsBondsDailyTrade_H.Open;
//
//  cdsBondsDailyTrade_D.Close;
//  cdsBondsDailyTrade_D.Params[0].AsDateTime := dtDateFrom.Date;
//  cdsBondsDailyTrade_D.Params[1].AsDateTime := dtDateTo.Date;
//  cdsBondsDailyTrade_D.Open;

  cdsBondsDailyTrade.Close;
  cdsBondsDailyTrade.Params[0].AsDate := dtDateFrom.Date;
  cdsBondsDailyTrade.Params[1].AsDate := dtDateTo.Date;
  cdsBondsDailyTrade.Open;

end;

procedure TfrmReportBondsDailyTrade.actSaveExcelExecute(Sender: TObject);
var
  i, RecIdx, LastRow: Integer;
  oSheet: TXLSWorkSheet;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    if not cdsBondsDailyTrade_H.IsEmpty then
    begin
      XLS.Filename := SaveDlg.FileName;
      oSheet := XLS.Sheets[0];
      oSheet.Clear;

      //Set Excel Header
      oSheet.AsString[0, 0]  := 'Contract Bonds ID';
      oSheet.AsString[1, 0]  := 'Contract Date';
      oSheet.AsString[2, 0]  := 'Settlement Date';
      oSheet.AsString[3, 0]  := 'Maturity Date';
      oSheet.AsString[4, 0]  := 'Last Coupon Date';
      oSheet.AsString[5, 0]  := 'Next Coupon Date';
      oSheet.AsString[6, 0]  := 'Bonds Code';
      oSheet.AsString[7, 0]  := 'B/S';
      oSheet.AsString[8, 0]  := 'Face Value';
      oSheet.AsString[9, 0]  := 'Interest Rate';
      oSheet.AsString[10, 0] := 'Coupon Period';
      oSheet.AsString[11, 0] := 'ACR Interest';
      oSheet.AsString[12, 0] := 'Interest Amount';

      LastRow := 0;

      cdsBondsDailyTrade_H.First;
      while not cdsBondsDailyTrade_H.Eof do
      begin
        Inc(LastRow);

        oSheet.AsInteger[0, LastRow]  := cdsBondsDailyTrade_HCONBONID.AsInteger;
        oSheet.AsDateTime[1, LastRow] := cdsBondsDailyTrade_HCONDATE.AsDateTime;
        oSheet.AsDateTime[2, LastRow] := cdsBondsDailyTrade_HDUEDATE.AsDateTime;
        oSheet.AsDateTime[3, LastRow] := cdsBondsDailyTrade_HMATURITY_DATE.AsDateTime;
        oSheet.AsDateTime[4, LastRow] := cdsBondsDailyTrade_HLASTCOUPONDATE.AsDateTime;
        oSheet.AsDateTime[5, LastRow] := cdsBondsDailyTrade_HNEXTCOUPONDATE.AsDateTime;
        oSheet.AsString[6, LastRow]   := cdsBondsDailyTrade_HINSTRUMENT_CODE.AsString;
        oSheet.AsString[7, LastRow]   := cdsBondsDailyTrade_HBS.AsString;
        oSheet.AsFloat[8, LastRow]    := cdsBondsDailyTrade_HFACEVALUE.AsFloat;
        oSheet.asFloat[9, LastRow]    := cdsBondsDailyTrade_HINTEREST_RATE.asFloat;
        oSheet.asInteger[10, LastRow] := cdsBondsDailyTrade_HCOUPONPERIOD.AsInteger;
        oSheet.AsFloat[11, LastRow]   := cdsBondsDailyTrade_HACR_INTEREST.AsFloat;
        oSheet.AsFloat[12, LastRow]   := cdsBondsDailyTrade_HINTEREST_AMT.AsFloat;

        Inc(lastRow);
        oSheet.AsString[1, lastRow]  := 'B/S';
        oSheet.AsString[2, lastRow]  := 'Account Code';
        oSheet.AsString[3, lastRow]  := 'Account Name';
        oSheet.AsString[4, lastRow]  := 'Acquisition Date';
        oSheet.AsString[5, lastRow]  := 'Acquisition Price';
        oSheet.AsString[6, lastRow]  := 'Face Value';
        oSheet.AsString[7, lastRow]  := 'Proceed';
        oSheet.AsString[8, lastRow]  := 'Capital Gain';
        oSheet.AsString[9, lastRow]  := 'Account Interest';
        oSheet.AsString[10, lastRow] := 'Hold Period';
        oSheet.AsString[11, lastRow] := 'Hold Interest';
        oSheet.AsString[12, lastRow] := 'Hold Tax';
        oSheet.AsString[13, lastRow] := 'Hold Interest Tax';
        oSheet.AsString[14, lastRow] := 'Net Proceed';

        cdsBondsDailyTrade_D.Filter := 'CONBONID = '+InttoStr(cdsBondsDailyTrade_HCONBONID.AsInteger);
        cdsBondsDailyTrade_D.Filtered := True;

        cdsBondsDailyTrade_D.First;
        while not cdsBondsDailyTrade_D.Eof do
        begin
            Inc(LastRow);
            oSheet.AsString[1, lastRow]  := cdsBondsDailyTrade_DBS.AsString;
            oSheet.AsString[2, lastRow]  := cdsBondsDailyTrade_DACCCODE.AsString;
            oSheet.AsString[3, lastRow]  := cdsBondsDailyTrade_DACCNAME.AsString;
            oSheet.AsDateTime[4, lastRow]:= cdsBondsDailyTrade_DACQDATE.AsDateTime;
            oSheet.AsFloat[5, lastRow]   := cdsBondsDailyTrade_DACQ_PRICE.AsFloat;
            oSheet.AsFloat[6, lastRow]   := cdsBondsDailyTrade_DFACEVALUE.AsFloat;
            oSheet.AsFloat[7, lastRow]   := cdsBondsDailyTrade_DPROCEED.AsFloat;
            oSheet.AsFloat[8, lastRow]   := cdsBondsDailyTrade_DCAPGAIN.AsFloat;
            oSheet.AsFloat[9, lastRow]   := cdsBondsDailyTrade_DACC_INTEREST.AsFloat;
            oSheet.AsInteger[10, lastRow]:= cdsBondsDailyTrade_DHOLD_PERIOD.AsInteger;
            oSheet.AsFloat[11, lastRow]  := cdsBondsDailyTrade_DHOLD_INTEREST.AsFloat;
            oSheet.AsFloat[12, lastRow]  := cdsBondsDailyTrade_DHOLD_TAX.AsFloat;
            oSheet.AsFloat[13, lastRow]  := cdsBondsDailyTrade_DHOLD_INTERESTTAX.AsFloat;
            oSheet.AsFloat[14, lastRow]  := cdsBondsDailyTrade_DNET_PROCEED.AsFloat;
            cdsBondsDailyTrade_D.Next;
        end;

        cdsBondsDailyTrade_H.Next;
      end;

      XLS.Write;
      MessageDlg('File has been generate...', mtInformation, [mbOk], 0);
    end;
  end;
  cdsBondsDailyTrade_D.Filter := '';
  cdsBondsDailyTrade_D.Filtered := True;
end;

procedure TfrmReportBondsDailyTrade.cdsBondsDailyTradeCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsBondsDailyTradePRICE_X.AsFloat := cdsBondsDailyTradePRICE.AsFloat / 100;
  cdsBondsDailyTradeACQ_PRICE_X.AsFloat := cdsBondsDailyTradeACQ_PRICE.AsFloat / 100;
end;

procedure TfrmReportBondsDailyTrade.FormCreate(Sender: TObject);
begin
  inherited;
  dtDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtDateTo.Date   := dmGlobal.RemoteServer.GetTransDate;
end;

end.
