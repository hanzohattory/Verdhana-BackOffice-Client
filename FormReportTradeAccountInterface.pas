unit FormReportTradeAccountInterface;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, cxSpinEdit, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, dxLayoutControlAdapters, Vcl.StdCtrls;

type
  TfrmReportTradeAccountInterface = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbMonth: TcxImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    edYear: TcxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsMonthlyReport: TNClientDataset;
    cdsMonthlyReportCCYCODE: TStringField;
    cdsMonthlyReportACCNO: TStringField;
    cdsMonthlyReportACCNAME: TStringField;
    cdsMonthlyReportSALESCODE: TStringField;
    cdsMonthlyReportDEALTICKETDATE: TDateField;
    cdsMonthlyReportDEALTICKETCODE: TStringField;
    cdsMonthlyReportSTAT: TStringField;
    cdsMonthlyReportMARKETCODE: TStringField;
    cdsMonthlyReportMARKETDESC: TStringField;
    cdsMonthlyReportSTOCKCODE: TStringField;
    cdsMonthlyReportSTOCKNAME: TStringField;
    cdsMonthlyReportBS: TStringField;
    cdsMonthlyReportCCYCODE_1: TStringField;
    cdsMonthlyReportDEALPRICE: TFloatField;
    cdsMonthlyReportDEALQTY: TLargeintField;
    cdsMonthlyReportDEALVALUE: TFloatField;
    cdsMonthlyReportGROSS_COMM: TFloatField;
    cdsMonthlyReportREBATE_TO_CLIENT: TIntegerField;
    cdsMonthlyReportBROKER_COMM: TIntegerField;
    cdsMonthlyReportREBATE_TO_DEALER: TIntegerField;
    cdsMonthlyReportFFP: TIntegerField;
    cdsMonthlyReportNET_COMM: TFloatField;
    cdsMonthlyReportGAIN_LOSS: TIntegerField;
    cdsMonthlyReportNETEARNINGS: TFloatField;
    cdsMonthlyReportMODUI: TStringField;
    cdsMonthlyReportMODDA: TDateTimeField;
    Button1: TButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETDESC: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterCCYCODE_1: TcxGridDBBandedColumn;
    gvwMasterDEALPRICE: TcxGridDBBandedColumn;
    gvwMasterDEALQTY: TcxGridDBBandedColumn;
    gvwMasterDEALVALUE: TcxGridDBBandedColumn;
    gvwMasterGROSS_COMM: TcxGridDBBandedColumn;
    gvwMasterREBATE_TO_CLIENT: TcxGridDBBandedColumn;
    gvwMasterBROKER_COMM: TcxGridDBBandedColumn;
    gvwMasterREBATE_TO_DEALER: TcxGridDBBandedColumn;
    gvwMasterFFP: TcxGridDBBandedColumn;
    gvwMasterNET_COMM: TcxGridDBBandedColumn;
    gvwMasterGAIN_LOSS: TcxGridDBBandedColumn;
    gvwMasterNETEARNINGS: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    cdsMonthlyReportPERIOD: TStringField;
    gvwMasterPERIOD: TcxGridDBBandedColumn;
    cdsMonthlyReportACCTYPE: TStringField;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    cdsMonthlyReportFOREIGN_EX_OPR: TStringField;
    cdsMonthlyReportFOREIGN_EX_RT: TIntegerField;
    gvwMasterFOREIGN_EX_OPR: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_EX_RT: TcxGridDBBandedColumn;
    cdsMonthlyReportNET_AMOUNT: TFloatField;
    cdsMonthlyReportGROSS_COMM_LOC: TFloatField;
    cdsMonthlyReportREBATE_TO_CLIENT_LOC: TIntegerField;
    cdsMonthlyReportBROKER_COMM_LOC: TIntegerField;
    cdsMonthlyReportREBATE_TO_DEALER_LOC: TIntegerField;
    cdsMonthlyReportFFP_LOC: TIntegerField;
    cdsMonthlyReportNET_COMM_LOC: TFloatField;
    gvwMasterNET_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterGROSS_COMM_LOC: TcxGridDBBandedColumn;
    gvwMasterREBATE_TO_CLIENT_LOC: TcxGridDBBandedColumn;
    gvwMasterBROKER_COMM_LOC: TcxGridDBBandedColumn;
    gvwMasterREBATE_TO_DEALER_LOC: TcxGridDBBandedColumn;
    gvwMasterFFP_LOC: TcxGridDBBandedColumn;
    gvwMasterNET_COMM_LOC: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTradeAccountInterface: TfrmReportTradeAccountInterface;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportTradeAccountInterface.Button1Click(Sender: TObject);
begin
  inherited;
  cdsMonthlyReport.Close;
  cdsMonthlyReport.Params[0].AsInteger := cbMonth.EditValue;
  cdsMonthlyReport.Params[1].AsInteger := edYear.EditValue;
  cdsMonthlyReport.Open;
end;

procedure TfrmReportTradeAccountInterface.FormCreate(Sender: TObject);
var
  dtTransDate: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTransDate, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue := iYear;
end;

end.
