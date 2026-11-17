unit FormTrialBalanceByCcy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxCalendar, dxLayoutControl, Data.DB, Datasnap.DBClient, NClientDataset,
  dxBar, cxClasses, Vcl.ActnList, NDatasetAction, cxStyles, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGridCustomView,
  cxGrid, NReportRPC, frxClass, frxDBSet, NReportClient, System.DateUtils,
  System.Actions, System.ImageList;

type
  TfrmTrialBalanceByCcy = class(TfrmBasic)
    imlBrowse: TImageList;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    cdsTrialBalanceByCcy: TNClientDataset;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cbCcy: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwTrialBalance: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dsTrialBalanceByCcy: TDataSource;
    cdsTrialBalanceByCcyGLACCOUNTCODE: TStringField;
    cdsTrialBalanceByCcyGLACCOUNTNAME: TStringField;
    cdsTrialBalanceByCcyCCY: TStringField;
    cdsTrialBalanceByCcyCATEGORY: TStringField;
    cdsTrialBalanceByCcyPREVAMT: TFloatField;
    cdsTrialBalanceByCcyDBAMT: TFloatField;
    cdsTrialBalanceByCcyCRAMT: TFloatField;
    cdsTrialBalanceByCcyCURRAMT: TFloatField;
    gvwTrialBalanceGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwTrialBalanceGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwTrialBalanceCCY: TcxGridDBBandedColumn;
    gvwTrialBalanceCATEGORY: TcxGridDBBandedColumn;
    gvwTrialBalancePREVAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceDBAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceCRAMT: TcxGridDBBandedColumn;
    gvwTrialBalanceCURRAMT: TcxGridDBBandedColumn;
    ReportContainer: TNClientReportContainer;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrialBalanceByCcy: TfrmTrialBalanceByCcy;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmTrialBalanceByCcy.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsTrialBalanceByCcy.Close;
  cdsTrialBalanceByCcy.Params[0].AsDate := DateOf(dtReportDate.Date);
  cdsTrialBalanceByCcy.Params[1].AsString := cbCcy.EditValue;
  cdsTrialBalanceByCcy.Open;
end;

procedure TfrmTrialBalanceByCcy.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsDate := cdsTrialBalanceByCcy.Params[0].AsDate;
  ReportContainer.Params[1].AsString := cdsTrialBalanceByCcy.Params[1].AsString;
  ReportContainer.PreviewReport;
end;

procedure TfrmTrialBalanceByCcy.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  cbCcy.EditValue := dmGlobal.RemoteServer.GetLocalCCY;
end;

Initialization
  RegisterClass(TfrmTrialBalanceByCcy);

end.
