unit FormARAPAging;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.ActnList, NDatasetAction,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, NReportClient, Vcl.ImgList, dxBar,
  System.DateUtils, System.ImageList, System.Actions;

type
  TfrmARAPAging = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclARAPAging: TActionList;
    dsARAPAging: TDataSource;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    imlBrowse: TImageList;
    actPrint: TNAction;
    ReportContainer: TNClientReportContainer;
    cdsARAPAging: TNClientDataset;
    cdsARAPAgingACCID: TLargeintField;
    cdsARAPAgingACCNO: TStringField;
    cdsARAPAgingACCNAME: TStringField;
    cdsARAPAgingACCINIT: TStringField;
    cdsARAPAgingACCTYPE: TStringField;
    cdsARAPAgingCCY: TStringField;
    cdsARAPAgingART3: TFloatField;
    cdsARAPAgingAPT3: TFloatField;
    cdsARAPAgingART2: TFloatField;
    cdsARAPAgingAPT2: TFloatField;
    cdsARAPAgingART1: TFloatField;
    cdsARAPAgingAPT1: TFloatField;
    cdsARAPAgingART0: TFloatField;
    cdsARAPAgingAPT0: TFloatField;
    cdsARAPAgingART1_OUTS: TFloatField;
    cdsARAPAgingAPT1_OUTS: TFloatField;
    cdsARAPAgingART2_OUTS: TFloatField;
    cdsARAPAgingAPT2_OUTS: TFloatField;
    cdsARAPAgingART3_OUTS: TFloatField;
    cdsARAPAgingAPT3_OUTS: TFloatField;
    cdsARAPAgingARTotal: TFloatField;
    cdsARAPAgingAPTotal: TFloatField;
    cdsARAPAgingNetARAP: TFloatField;
    popMaster: TPopupMenu;
    SaveGridtoExcel1: TMenuItem;
    SaveDlg: TSaveDialog;
    actSaveGridExcel: TNAction;
    cdsARAPAgingCashAvailable: TFloatField;
    cdsARAPAgingT3: TFloatField;
    cdsARAPAgingT2: TFloatField;
    cdsARAPAgingT1: TFloatField;
    cdsARAPAgingT0: TFloatField;
    cdsARAPAgingT1_OUTS: TFloatField;
    cdsARAPAgingT2_OUTS: TFloatField;
    cdsARAPAgingT3_OUTS: TFloatField;
    cdsARAPAginguptoT3: TFloatField;
    cdsARAPAgingARuptoT3: TFloatField;
    cdsARAPAgingAPuptoT3: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterART3: TcxGridDBBandedColumn;
    gvwMasterAPT3: TcxGridDBBandedColumn;
    gvwMasterART2: TcxGridDBBandedColumn;
    gvwMasterAPT2: TcxGridDBBandedColumn;
    gvwMasterART1: TcxGridDBBandedColumn;
    gvwMasterAPT1: TcxGridDBBandedColumn;
    gvwMasterART0: TcxGridDBBandedColumn;
    gvwMasterAPT0: TcxGridDBBandedColumn;
    gvwMasterART1_OUTS: TcxGridDBBandedColumn;
    gvwMasterAPT1_OUTS: TcxGridDBBandedColumn;
    gvwMasterART2_OUTS: TcxGridDBBandedColumn;
    gvwMasterAPT2_OUTS: TcxGridDBBandedColumn;
    gvwMasterART3_OUTS: TcxGridDBBandedColumn;
    gvwMasterAPT3_OUTS: TcxGridDBBandedColumn;
    gvwMasterARTotal: TcxGridDBBandedColumn;
    gvwMasterAPTotal: TcxGridDBBandedColumn;
    gvwMasterNetARAP: TcxGridDBBandedColumn;
    gvwMasterCashAvailable: TcxGridDBBandedColumn;
    gvwMasterT3: TcxGridDBBandedColumn;
    gvwMasterT2: TcxGridDBBandedColumn;
    gvwMasterT1: TcxGridDBBandedColumn;
    gvwMasterT0: TcxGridDBBandedColumn;
    gvwMasterT1_OUTS: TcxGridDBBandedColumn;
    gvwMasterT2_OUTS: TcxGridDBBandedColumn;
    gvwMasterT3_OUTS: TcxGridDBBandedColumn;
    gvwMasterARuptoT3: TcxGridDBBandedColumn;
    gvwMasterAPuptoT3: TcxGridDBBandedColumn;
    gvwMasteruptoT3: TcxGridDBBandedColumn;
    cdsARAPAgingBankRDN: TStringField;
    cdsARAPAgingBranchID: TIntegerField;
    gvwMasterBankRDN: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSaveGridExcelExecute(Sender: TObject);
    procedure cdsARAPAgingCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmARAPAging: TfrmARAPAging;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink;

procedure TfrmARAPAging.actLoadDataExecute(Sender: TObject);
var
  dtT6, dtT5, dtT4, dtT3, dtT2, dtT1, dtT0, dtT1Outs, dtT2Outs, dtT3Outs: TDate;
begin
  inherited;
  dtT0 := DateOf(dtTransDate.Date);
  dtT1 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), -1);
  dtT2 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), -2);
  dtT3 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), -3);
  //dtT4 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), -4);
  //dtT5 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), -5);
  //dtT6 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), -6);
  dtT1Outs := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), 1);
  dtT2Outs := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), 2);
  dtT3Outs := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), 3);

  cdsARAPAging.Close;
  cdsARAPAging.Params[0].AsDate := dtT0;
  cdsARAPAging.Open;

  gvwMaster.Bands[1].Caption := FormatDateTime('< dd MMM yyyy', dtT3);
  //gvwMaster.Bands[2].Caption := 'T-6 ' + FormatDateTime('(dd MMM yyyy)', dtT6);
  //gvwMaster.Bands[3].Caption := 'T-5 ' + FormatDateTime('(dd MMM yyyy)', dtT5);
  //gvwMaster.Bands[4].Caption := 'T-4 ' + FormatDateTime('(dd MMM yyyy)', dtT4);
  gvwMaster.Bands[2].Caption := FormatDateTime('dd MMM yyyy', dtT3);
  gvwMaster.Bands[3].Caption := FormatDateTime('dd MMM yyyy', dtT2);
  gvwMaster.Bands[4].Caption := FormatDateTime('dd MMM yyyy', dtT1);
  gvwMaster.Bands[5].Caption := FormatDateTime('dd MMM yyyy', dtT0);
  gvwMaster.Bands[6].Caption := FormatDateTime('dd MMM yyyy', dtT1Outs);
  gvwMaster.Bands[7].Caption := FormatDateTime('dd MMM yyyy', dtT2Outs);
  gvwMaster.Bands[8].Caption := FormatDateTime('dd MMM yyyy', dtT3Outs);
  //gvwMaster.Bands[12].Caption := '> T3 ' + FormatDateTime('(> dd MMM yyyy)', dtT3Outs);

//  gvwMasterAPuptoT6.Caption := FormatDateTime('< dd MMM yyyy', dtT6);
//  gvwMasterAPT6.Caption := FormatDateTime('dd MMM yyyy', dtT6);
//  gvwMasterAPT5.Caption := FormatDateTime('dd MMM yyyy', dtT5);
//  gvwMasterAPT4.Caption := FormatDateTime('dd MMM yyyy', dtT4);
//  gvwMasterAPT3.Caption := FormatDateTime('dd MMM yyyy', dtT3);
//  gvwMasterAPT2.Caption := FormatDateTime('dd MMM yyyy', dtT2);
//  gvwMasterAPT1.Caption := FormatDateTime('dd MMM yyyy', dtT1);
//  gvwMasterAPT0.Caption := FormatDateTime('dd MMM yyyy', dtT0);
//  gvwMasterAPT1_OUTS.Caption := FormatDateTime('dd MMM yyyy', dtT1Outs);
//  gvwMasterAPT2_OUTS.Caption := FormatDateTime('dd MMM yyyy', dtT2Outs);
//  gvwMasterAPT3_OUTS.Caption := FormatDateTime('dd MMM yyyy', dtT3Outs);
//  gvwMasterAPUptoT3_OUTS.Caption := FormatDateTime('> dd MMM yyyy', dtT3Outs);
end;

procedure TfrmARAPAging.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsDate := cdsARAPAging.Params[0].AsDate;
  ReportContainer.PreviewReport;
end;

procedure TfrmARAPAging.actSaveGridExcelExecute(Sender: TObject);
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

procedure TfrmARAPAging.cdsARAPAgingCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsARAPAgingUptoT3.AsFloat := cdsARAPAgingARuptoT3.AsFloat - cdsARAPAgingAPuptoT3.AsFloat;
  //cdsARAPAgingT6.AsFloat := cdsARAPAgingUptoT6.AsFloat + cdsARAPAgingAPT6.AsFloat - cdsARAPAgingART6.AsFloat;
  //cdsARAPAgingT5.AsFloat := cdsARAPAgingT6.AsFloat + cdsARAPAgingAPT5.AsFloat - cdsARAPAgingART5.AsFloat;
  //cdsARAPAgingT4.AsFloat := cdsARAPAgingT5.AsFloat + cdsARAPAgingAPT4.AsFloat - cdsARAPAgingART4.AsFloat;
  cdsARAPAgingT3.AsFloat := cdsARAPAgingART3.AsFloat - cdsARAPAgingAPT3.AsFloat;
  cdsARAPAgingT2.AsFloat := cdsARAPAgingART2.AsFloat - cdsARAPAgingAPT2.AsFloat;
  cdsARAPAgingT1.AsFloat := cdsARAPAgingART1.AsFloat - cdsARAPAgingAPT1.AsFloat;
  cdsARAPAgingT0.AsFloat := cdsARAPAgingART0.AsFloat - cdsARAPAgingAPT0.AsFloat;
  cdsARAPAgingT1_OUTS.AsFloat := cdsARAPAgingART1_OUTS.AsFloat - cdsARAPAgingAPT1_OUTS.AsFloat;
  cdsARAPAgingT2_OUTS.AsFloat := cdsARAPAgingART2_OUTS.AsFloat - cdsARAPAgingAPT2_OUTS.AsFloat;
  cdsARAPAgingT3_OUTS.AsFloat := cdsARAPAgingART3_OUTS.AsFloat - CdsARAPAgingAPT3_OUTS.AsFloat;
  //cdsARAPAgingUptoT3_OUTS.AsFloat := cdsARAPAgingT3_OUTS.AsFloat + cdsARAPAgingAPUptoT3_OUTS.AsFloat - cdsARAPAgingARUptoT3_OUTS.AsFloat;
  //cdsARAPAgingTotal.AsFloat := cdsARAPAgingCashAvailable.AsFloat + cdsARAPAgingAPTotal.AsFloat - cdsARAPAgingARTotal.AsFloat;
end;

procedure TfrmARAPAging.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
  actLoadData.Execute;
end;

Initialization
  RegisterClass(TfrmARAPAging);

end.
