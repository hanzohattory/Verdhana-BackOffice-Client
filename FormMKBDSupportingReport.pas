unit FormMKBDSupportingReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, NClientDataset, dxLayoutContainer, dxLayoutControl,
  Vcl.ActnList, Vcl.ImgList, cxPropertiesStore, cxClasses, NActionPermission,
  Vcl.Menus, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCheckBox, cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, NDatasetAction,
  NReportClient, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, System.Actions,
  System.ImageList;

type
  TfrmMKBDSupportingReport = class(TfrmBrowseNoEdit)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsVD51Support: TDataSource;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtBackDate: TcxDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    actView: TNAction;
    Report: TNClientReportContainer;
    actPrint: TNAction;
    dxLayoutControl1Group3: TdxLayoutGroup;
    grdMasterLevel2: TcxGridLevel;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    grdMasterLevel3: TcxGridLevel;
    grdMasterLevel4: TcxGridLevel;
    grdMasterLevel5: TcxGridLevel;
    grdMasterLevel6: TcxGridLevel;
    grdMasterLevel7: TcxGridLevel;
    grdMasterLevel8: TcxGridLevel;
    grdMasterDBBandedTableView2: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView3: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView4: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView5: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView6: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView7: TcxGridDBBandedTableView;
    cdsVD51SupportAR: TNClientDataset;
    cdsVD51Support: TNClientDataset;
    cdsVD51SupportLedger: TNClientDataset;
    cdsVD51SupportLedgerNO: TStringField;
    cdsVD51SupportLedgerREPORT_DESC: TStringField;
    cdsVD51SupportLedgerACCOUNT: TStringField;
    cdsVD51SupportLedgerBANKACCOUNT: TStringField;
    cdsVD51SupportLedgerTRDATE: TDateField;
    cdsVD51SupportLedgerEXRATE: TFloatField;
    cdsVD51SupportLedgerCCYCODE: TStringField;
    cdsVD51SupportLedgerAMOUNT: TFloatField;
    cdsVD51SupportLedgerFOREX_AMT: TFloatField;
    cdsVD51SupportStockPos: TNClientDataset;
    cdsVD51SupportStockPosNO: TStringField;
    cdsVD51SupportStockPosREPORT_DESC: TStringField;
    cdsVD51SupportStockPosACCNO: TStringField;
    cdsVD51SupportStockPosACCNAME: TStringField;
    cdsVD51SupportStockPosSTOCKCODE: TStringField;
    cdsVD51SupportStockPosSTOCKNAME: TStringField;
    cdsVD51SupportStockPosAVGPRICE: TFloatField;
    cdsVD51SupportStockPosCLOSEPRICE: TFloatField;
    cdsVD51SupportStockPosQTY: TFloatField;
    cdsVD51SupportStockPosVALUE: TFloatField;
    cdsVD51SupportStockPosMARKETVALUE: TFloatField;
    cdsVD52SupportAP: TNClientDataset;
    cdsVD52SupportLedger: TNClientDataset;
    cdsVD52SupportLedgerNO: TStringField;
    cdsVD52SupportLedgerREPORT_DESC: TStringField;
    cdsVD52SupportLedgerACCOUNT: TStringField;
    cdsVD52SupportLedgerEXRATE: TFloatField;
    cdsVD52SupportLedgerCCYCODE: TStringField;
    cdsVD52SupportLedgerAMOUNT: TFloatField;
    cdsVD52SupportLedgerFOREX_AMT: TFloatField;
    cdsVD56Support: TNClientDataset;
    cdsVD56SupportNO: TStringField;
    cdsVD56SupportREPORT_DESC: TStringField;
    cdsVD56SupportACCOUNTBANK: TStringField;
    cdsVD56SupportACCNO: TStringField;
    cdsVD56SupportACCNAME: TStringField;
    cdsVD56SupportEXRATE: TFloatField;
    cdsVD56SupportCCYCODE: TStringField;
    cdsVD56SupportAMOUNT: TFloatField;
    cdsVD56SupportFOREX_AMT: TFloatField;
    cdsVD57Support: TNClientDataset;
    cdsVD57SupportNO: TStringField;
    cdsVD57SupportREPORT_DESC: TStringField;
    cdsVD57SupportACCNO: TStringField;
    cdsVD57SupportACCNAME: TStringField;
    cdsVD57SupportTRDATE: TDateField;
    cdsVD57SupportDUEDATE: TDateField;
    cdsVD57SupportSTOCKCODE: TStringField;
    cdsVD57SupportSTOCKNAME: TStringField;
    cdsVD57SupportCLOSEPRICE: TFloatField;
    cdsVD57SupportQTY: TFloatField;
    cdsVD57SupportMARKETVALUE: TFloatField;
    dsVD51SupportAR: TDataSource;
    dsVD51SupportingLedger: TDataSource;
    dsVD51SupportStockPos: TDataSource;
    dsVD52SupportAP: TDataSource;
    dsVD52SupportLedger: TDataSource;
    dsVD56Support: TDataSource;
    dsVD57Support: TDataSource;
    grdMasterDBBandedTableView2NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACCOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2BANKACCOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2TRDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2EXRATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2AMOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2FOREX_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3STOCKCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3STOCKNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3AVGPRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3CLOSEPRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3QTY: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3MARKETVALUE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5ACCOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5EXRATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5AMOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5FOREX_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6ACCOUNTBANK: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6EXRATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6AMOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView6FOREX_AMT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7TRDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7DUEDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7STOCKCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7STOCKNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7CLOSEPRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7QTY: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView7MARKETVALUE: TcxGridDBBandedColumn;
    cdsVD51SupportARNO: TStringField;
    cdsVD51SupportARREPORT_DESC: TStringField;
    cdsVD51SupportARACCNO: TStringField;
    cdsVD51SupportARACCNAME: TStringField;
    cdsVD51SupportARTRDATE: TDateField;
    cdsVD51SupportARDUEDATE: TDateField;
    cdsVD51SupportAREXRATE: TFloatField;
    cdsVD51SupportARCCYCODE: TStringField;
    cdsVD51SupportARAMOUNT: TFloatField;
    cdsVD51SupportARFOREX_AMT: TFloatField;
    grdMasterDBBandedTableView1NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1TRDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1DUEDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1EXRATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1AMOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1FOREX_AMT: TcxGridDBBandedColumn;
    cdsVD52SupportAPNO: TStringField;
    cdsVD52SupportAPREPORT_DESC: TStringField;
    cdsVD52SupportAPACCNO: TStringField;
    cdsVD52SupportAPACCNAME: TStringField;
    cdsVD52SupportAPTRDATE: TDateField;
    cdsVD52SupportAPDUEDATE: TDateField;
    cdsVD52SupportAPEXRATE: TFloatField;
    cdsVD52SupportAPCCYCODE: TStringField;
    cdsVD52SupportAPAMOUNT: TFloatField;
    cdsVD52SupportAPFOREX_AMT: TFloatField;
    grdMasterDBBandedTableView4NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4TRDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4DUEDATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4EXRATE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4CCYCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4AMOUNT: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4FOREX_AMT: TcxGridDBBandedColumn;
    cdsVD51SupportNO: TStringField;
    cdsVD51SupportREPORT_DESC: TStringField;
    cdsVD51SupportBANKACCOUNT: TStringField;
    cdsVD51SupportACCNO: TStringField;
    cdsVD51SupportACCNAME: TStringField;
    cdsVD51SupportTRDATE: TDateField;
    cdsVD51SupportDUEDATE: TDateField;
    cdsVD51SupportEXRATE: TFloatField;
    cdsVD51SupportCCYCODE: TStringField;
    cdsVD51SupportAMOUNT: TFloatField;
    cdsVD51SupportFOREX_AMT: TFloatField;
    cdsVD51SupportSTOCKCODE: TStringField;
    cdsVD51SupportSTOCKNAME: TStringField;
    cdsVD51SupportAVGPRICE: TFloatField;
    cdsVD51SupportCLOSEPRICE: TFloatField;
    cdsVD51SupportQTY: TFloatField;
    cdsVD51SupportVALUE: TFloatField;
    cdsVD51SupportMARKETVALUE: TFloatField;
    gvwMasterNO: TcxGridDBBandedColumn;
    gvwMasterREPORT_DESC: TcxGridDBBandedColumn;
    gvwMasterBANKACCOUNT: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTRDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFOREX_AMT: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterCLOSEPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterMARKETVALUE: TcxGridDBBandedColumn;
    actSaveGridExcel: TNAction;
    SaveDlg: TSaveDialog;
    popMaster: TPopupMenu;
    SaveGridtoExcel1: TMenuItem;
    grdMasterLevel9: TcxGridLevel;
    grdMasterDBBandedTableView8: TcxGridDBBandedTableView;
    cdsVD57SupportReport: TNClientDataset;
    dsVD57SupportReport: TDataSource;
    cdsVD57SupportReportNO: TIntegerField;
    cdsVD57SupportReportLINE: TStringField;
    cdsVD57SupportReportREPORT_DESC: TStringField;
    cdsVD57SupportReportACCNO: TStringField;
    cdsVD57SupportReportACCNAME: TStringField;
    cdsVD57SupportReportACCTYPE: TStringField;
    cdsVD57SupportReportSTOCKKEEP: TStringField;
    cdsVD57SupportReportSTOCKCODE: TStringField;
    cdsVD57SupportReportSTOCKNAME: TStringField;
    cdsVD57SupportReportDEPOSITORYACC: TStringField;
    cdsVD57SupportReportCLOSEPRICE: TFloatField;
    cdsVD57SupportReportQTY1: TFloatField;
    cdsVD57SupportReportAMT1: TFloatField;
    cdsVD57SupportReportQTY2: TFloatField;
    cdsVD57SupportReportAMT2: TFloatField;
    cdsVD57SupportReportQTY3: TFloatField;
    cdsVD57SupportReportAMT3: TFloatField;
    cdsVD57SupportReportQTY4: TFloatField;
    cdsVD57SupportReportAMT4: TFloatField;
    cdsVD57SupportReportQTY5: TFloatField;
    cdsVD57SupportReportAMT5: TFloatField;
    grdMasterDBBandedTableView8NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8LINE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8REPORT_DESC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8ACCTYPE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8STOCKKEEP: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8STOCKCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8STOCKNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8DEPOSITORYACC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8CLOSEPRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8QTY1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8AMT1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8QTY2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8AMT2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8QTY3: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8AMT3: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8QTY4: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8AMT4: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8QTY5: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView8AMT5: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actSaveGridExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMKBDSupportingReport: TfrmMKBDSupportingReport;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink, FormMKBDSupportingReportFilter;

procedure TfrmMKBDSupportingReport.actPrintExecute(Sender: TObject);
var
  sCaption: String;
  iFrom, iTo: Integer;
begin
  inherited;
  sCaption := grdMaster.ActiveLevel.Caption;

  if grdMasterLevel2.Active then
  begin
    Report.ReportName := 'Report MKBD\VD51_AR_Support.fr3';
    iFrom := 25;
    iTo := 103;
  end
  else if grdMasterLevel3.Active then
  begin
    Report.ReportName := 'Report MKBD\VD51_Ledger_Support.fr3';
    iFrom := 10;
    iTo := 111;
  end
  else if grdMasterLevel4.Active then
  begin
    Report.ReportName := 'Report MKBD\VD51_StockPos_Support.fr3';
    iFrom := 58;
    iTo := 99;
  end
  else if grdMasterLevel5.Active then
  begin
    Report.ReportName := 'Report MKBD\VD52_AP_Support.fr3';
    iFrom := 129;
    iTo := 141;
  end
  else if grdMasterLevel6.Active then
  begin
    Report.ReportName := 'Report MKBD\VD52_Ledger_Support.fr3';
    iFrom := 122;
    iTo := 171;
  end
  else if grdMasterLevel7.Active then
  begin
    Report.ReportName := 'Report MKBD\VD56_Support.fr3';
    iFrom := 8;
    iTo := 24;
  end
  else if grdMasterLevel9.Active then
  begin
    Report.ReportName := 'Report MKBD\VD57_Support.fr3';
    iFrom := 8;
    iTo := 58;
  end
  else
    Exit;

  if frmMKBDSupportReportFilter.FilterRow(sCaption, iFrom, iTo) <> mrOk then
    Exit;

  Report.Params[0].AsDate := txtBackDate.Date;
  Report.Params[1].AsInteger := iFrom;
  Report.Params[2].AsInteger := iTo;
  Report.Params[3].AsString := dmGlobal.UserID;
  Report.PreviewReport;
end;

procedure TfrmMKBDSupportingReport.actSaveGridExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmMKBDSupportingReport.cxButton1Click(Sender: TObject);
begin
  inherited;
//  cdsVD51Support.Close;
//  cdsVD51Support.Params[0].AsDate := txtBackDate.Date;
//  cdsVD51Support.Open;

  cdsVD51SupportAR.Close;
  cdsVD51SupportAR.Params[0].AsDate := txtBackDate.Date;
  cdsVD51SupportAR.Open;

  cdsVD51SupportLedger.Close;
  cdsVD51SupportLedger.Params[0].AsDate := txtBackDate.Date;
  cdsVD51SupportLedger.Open;

  cdsVD51SupportStockPos.Close;
  cdsVD51SupportStockPos.Params[0].AsDate := txtBackDate.Date;
  cdsVD51SupportStockPos.Open;

  cdsVD52SupportAP.Close;
  cdsVD52SupportAP.Params[0].AsDate := txtBackDate.Date;
  cdsVD52SupportAP.Open;

  cdsVD52SupportLedger.Close;
  cdsVD52SupportLedger.Params[0].AsDate := txtBackDate.Date;
  cdsVD52SupportLedger.Open;

  cdsVD56Support.Close;
  cdsVD56Support.Params[0].AsDate := txtBackDate.Date;
  cdsVD56Support.Open;

//  cdsVD57Support.Close;
//  cdsVD57Support.Params[0].AsDate := txtBackDate.Date;
//  cdsVD57Support.Open;

  cdsVD57SupportReport.Close;
  cdsVD57SupportReport.Params[0].AsDate := txtBackDate.Date;
  cdsVD57SupportReport.Open;
end;

procedure TfrmMKBDSupportingReport.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuRptType.Close;
  dmGlobal.IntDataLookup.cdsLuRptType.Params[0].AsString := 'VD5';
  dmGlobal.IntDataLookup.cdsLuRptType.Open;
end;

procedure TfrmMKBDSupportingReport.FormShow(Sender: TObject);
begin
  inherited;
  txtBackDate.Date := dmGlobal.RemoteServer.GetTransDate();
end;

end.
