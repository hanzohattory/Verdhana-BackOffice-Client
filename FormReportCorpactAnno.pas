unit FormReportCorpactAnno;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, NReportClient, NDatasetContainer,
  dxBar, cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmReportCorpactAnnoList = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtStartDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsCorpactAnnoList: TNClientDataset;
    cdsCorpactAnnoListSTAT: TStringField;
    cdsCorpactAnnoListCANO: TStringField;
    cdsCorpactAnnoListCATYPE: TStringField;
    cdsCorpactAnnoListSTOCKCODE: TStringField;
    cdsCorpactAnnoListNGRG_CUMDATE: TDateField;
    cdsCorpactAnnoListNGRG_EXDATE: TDateField;
    cdsCorpactAnnoListLAST_OLD_NOMDATE: TDateField;
    cdsCorpactAnnoListST_TRD_NOMDATE: TDateField;
    cdsCorpactAnnoListRECDATE: TDateField;
    cdsCorpactAnnoListDISTDATE: TDateField;
    cdsCorpactAnnoListPAYDATE: TDateField;
    cdsCorpactAnnoListCASH_STAT: TStringField;
    cdsCorpactAnnoListSTOCK_STAT: TStringField;
    cdsCorpactAnnoListBASE_STK_RATIO: TFloatField;
    cdsCorpactAnnoListGET_STK_RT: TFloatField;
    cdsCorpactAnnoListBASE_CASH_RATIO: TFloatField;
    cdsCorpactAnnoListGET_CASH_RATIO: TFloatField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterCANO: TcxGridDBBandedColumn;
    gvwMasterCATYPE: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterNGRG_CUMDATE: TcxGridDBBandedColumn;
    gvwMasterNGRG_EXDATE: TcxGridDBBandedColumn;
    gvwMasterLAST_OLD_NOMDATE: TcxGridDBBandedColumn;
    gvwMasterST_TRD_NOMDATE: TcxGridDBBandedColumn;
    gvwMasterRECDATE: TcxGridDBBandedColumn;
    gvwMasterDISTDATE: TcxGridDBBandedColumn;
    gvwMasterPAYDATE: TcxGridDBBandedColumn;
    gvwMasterCASH_STAT: TcxGridDBBandedColumn;
    gvwMasterSTOCK_STAT: TcxGridDBBandedColumn;
    gvwMasterBASE_STK_RATIO: TcxGridDBBandedColumn;
    gvwMasterGET_STK_RT: TcxGridDBBandedColumn;
    gvwMasterBASE_CASH_RATIO: TcxGridDBBandedColumn;
    gvwMasterGET_CASH_RATIO: TcxGridDBBandedColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure RefreshData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCorpactAnnoList: TfrmReportCorpactAnnoList;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmReportCorpactAnnoList }

procedure TfrmReportCorpactAnnoList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := dtStartDate.EditValue;
  ReportContainer.Params[1].AsDate := dtEndDate.EditValue;
  inherited;
end;

procedure TfrmReportCorpactAnnoList.cxButton1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmReportCorpactAnnoList.FormShow(Sender: TObject);
begin
  inherited;
  dtStartDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEndDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmReportCorpactAnnoList.RefreshData;
begin
  cdsCorpactAnnoList.Close;
  cdsCorpactAnnoList.Params[0].AsDate := dtStartDate.EditValue;
  cdsCorpactAnnoList.Params[1].AsDate := dtEndDate.EditValue;
  cdsCorpactAnnoList.Open;
end;

end.
