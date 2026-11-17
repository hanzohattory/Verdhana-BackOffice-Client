unit FormReportSupportMBKDVD5;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.Actions, System.ImageList, dxDateRanges;

type
  TfrmReportSupportMBKDVD5 = class(TfrmBrowseData)
    cdsSupportVD51Header: TNClientDataset;
    cdsSupportVD52Header: TNClientDataset;
    cdsSupportVD56Header: TNClientDataset;
    cdsSupportVD57Header: TNClientDataset;
    cdsSupportVD51: TNClientDataset;
    cdsSupportVD52: TNClientDataset;
    cdsSupportVD56: TNClientDataset;
    cdsSupportVD57: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    grdMasterLevel2: TcxGridLevel;
    grdMasterLevel3: TcxGridLevel;
    grdMasterLevel4: TcxGridLevel;
    gvwMaster1: TcxGridDBBandedTableView;
    gvwMaster2: TcxGridDBBandedTableView;
    gvwMaster3: TcxGridDBBandedTableView;
    dsSupportVD52Header: TDataSource;
    dsSupportVD56Header: TDataSource;
    dsSupportVD57Header: TDataSource;
    dsSupportVD51: TDataSource;
    dsSupportVD52: TDataSource;
    dsSupportVD56: TDataSource;
    dsSupportVD57: TDataSource;
    cdsSupportVD51HeaderRPTTYPE: TStringField;
    cdsSupportVD51HeaderROWNO: TStringField;
    cdsSupportVD51HeaderROWDESC: TStringField;
    cdsSupportVD52HeaderRPTTYPE: TStringField;
    cdsSupportVD52HeaderROWNO: TStringField;
    cdsSupportVD52HeaderROWDESC: TStringField;
    cdsSupportVD56HeaderRPTTYPE: TStringField;
    cdsSupportVD56HeaderROWNO: TStringField;
    cdsSupportVD56HeaderROWDESC: TStringField;
    cdsSupportVD57HeaderRPTTYPE: TStringField;
    cdsSupportVD57HeaderROWNO: TStringField;
    cdsSupportVD57HeaderROWDESC: TStringField;
    gvwMasterRPTTYPE: TcxGridDBBandedColumn;
    gvwMasterROWNO: TcxGridDBBandedColumn;
    gvwMasterROWDESC: TcxGridDBBandedColumn;
    gvwMaster1RPTTYPE: TcxGridDBBandedColumn;
    gvwMaster1ROWNO: TcxGridDBBandedColumn;
    gvwMaster1ROWDESC: TcxGridDBBandedColumn;
    gvwMaster2RPTTYPE: TcxGridDBBandedColumn;
    gvwMaster2ROWNO: TcxGridDBBandedColumn;
    gvwMaster2ROWDESC: TcxGridDBBandedColumn;
    gvwMaster3RPTTYPE: TcxGridDBBandedColumn;
    gvwMaster3ROWNO: TcxGridDBBandedColumn;
    gvwMaster3ROWDESC: TcxGridDBBandedColumn;
    grdMasterLevel5: TcxGridLevel;
    gvwDetail1: TcxGridDBBandedTableView;
    grdMasterLevel6: TcxGridLevel;
    gvwDetail2: TcxGridDBBandedTableView;
    grdMasterLevel7: TcxGridLevel;
    gvwDetail3: TcxGridDBBandedTableView;
    grdMasterLevel8: TcxGridLevel;
    gvwDetail4: TcxGridDBBandedTableView;
    cdsSupportVD52VALUEDATE: TDateField;
    cdsSupportVD52ROWNO: TStringField;
    cdsSupportVD52GLACCOUNTNO: TStringField;
    cdsSupportVD52AMOUNT: TFloatField;
    cdsSupportVD56VALUEDATE: TDateField;
    cdsSupportVD56ROWNO: TStringField;
    cdsSupportVD56ACCID: TLargeintField;
    cdsSupportVD56ACCCODE: TStringField;
    cdsSupportVD56ACCNAME: TStringField;
    cdsSupportVD56BNNAME: TStringField;
    cdsSupportVD56BANKACCNO: TStringField;
    cdsSupportVD56CCYCODE: TStringField;
    cdsSupportVD56AMOUNT: TFloatField;
    cdsSupportVD56AMOUNTONIDR: TFloatField;
    cdsSupportVD57VALUEDATE: TDateField;
    cdsSupportVD57ROWNO: TStringField;
    cdsSupportVD57ACCID: TLargeintField;
    cdsSupportVD57ACCCODE: TStringField;
    cdsSupportVD57ACCNAME: TStringField;
    cdsSupportVD57STOCKCODE: TStringField;
    cdsSupportVD57CLOSEPRICE: TFloatField;
    cdsSupportVD57QUANTITY: TFloatField;
    cdsSupportVD57MARKETVALUE: TFloatField;
    gvwDetail1VALUEDATE: TcxGridDBBandedColumn;
    gvwDetail1ROWNO: TcxGridDBBandedColumn;
    gvwDetail1GLACCOUNTNO: TcxGridDBBandedColumn;
    gvwDetail1AMOUNT: TcxGridDBBandedColumn;
    gvwDetail2VALUEDATE: TcxGridDBBandedColumn;
    gvwDetail2ROWNO: TcxGridDBBandedColumn;
    gvwDetail2GLACCOUNTNO: TcxGridDBBandedColumn;
    gvwDetail2AMOUNT: TcxGridDBBandedColumn;
    gvwDetail3VALUEDATE: TcxGridDBBandedColumn;
    gvwDetail3ROWNO: TcxGridDBBandedColumn;
    gvwDetail3ACCID: TcxGridDBBandedColumn;
    gvwDetail3ACCCODE: TcxGridDBBandedColumn;
    gvwDetail3ACCNAME: TcxGridDBBandedColumn;
    gvwDetail3BNNAME: TcxGridDBBandedColumn;
    gvwDetail3BANKACCNO: TcxGridDBBandedColumn;
    gvwDetail3CCYCODE: TcxGridDBBandedColumn;
    gvwDetail3AMOUNT: TcxGridDBBandedColumn;
    gvwDetail3AMOUNTONIDR: TcxGridDBBandedColumn;
    gvwDetail4VALUEDATE: TcxGridDBBandedColumn;
    gvwDetail4ROWNO: TcxGridDBBandedColumn;
    gvwDetail4ACCID: TcxGridDBBandedColumn;
    gvwDetail4ACCCODE: TcxGridDBBandedColumn;
    gvwDetail4ACCNAME: TcxGridDBBandedColumn;
    gvwDetail4STOCKCODE: TcxGridDBBandedColumn;
    gvwDetail4CLOSEPRICE: TcxGridDBBandedColumn;
    gvwDetail4QUANTITY: TcxGridDBBandedColumn;
    gvwDetail4MARKETVALUE: TcxGridDBBandedColumn;
    cdsSupportVD51VALUEDATE: TDateField;
    cdsSupportVD51ROWNO: TStringField;
    cdsSupportVD51GLACCOUNTNO: TStringField;
    cdsSupportVD51AMOUNT: TFloatField;
    cdsSupportVD51HeaderTOTALAMOUNT: TFloatField;
    cdsSupportVD52HeaderTOTALAMOUNT: TFloatField;
    cdsSupportVD56HeaderTOTALAMOUNT: TFloatField;
    cdsSupportVD57HeaderTOTALAMOUNT: TFloatField;
    gvwMasterTOTALAMOUNT: TcxGridDBBandedColumn;
    gvwMaster1TOTALAMOUNT: TcxGridDBBandedColumn;
    gvwMaster2TOTALAMOUNT: TcxGridDBBandedColumn;
    gvwMaster3TOTALAMOUNT: TcxGridDBBandedColumn;
    actDetailReport: TNAction;
    DetailReport1: TMenuItem;
    procedure cxButton1Click(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actDetailReportExecute(Sender: TObject);
    procedure actDetailReportUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmReportSupportMBKDVD5: TfrmReportSupportMBKDVD5;

implementation

{$R *.dfm}

uses DataGlobal, ClassClientConst, FormReportSupportMBKDVD57Detail;

{ TfrmReportSupportMBKDVD5 }

procedure TfrmReportSupportMBKDVD5.actDetailReportExecute(Sender: TObject);
Var
  sRowNo: String;
  oForm: TfrmReportSupportMBKDVD57Detail;
begin
  inherited;

  sRowNo := cdsSupportVD57HeaderROWNO.AsString;

  cdsSupportVD57.Close;
  cdsSupportVD57.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD57.Params[1].AsString := sRowNo;
  cdsSupportVD57.Open;

  oForm := TfrmReportSupportMBKDVD57Detail.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    FreeAndNil(oForm);
  end;
end;

procedure TfrmReportSupportMBKDVD5.actDetailReportUpdate(Sender: TObject);
begin
  inherited;
  actDetailReport.Visible := grdMaster.ActiveView = gvwMaster3;
end;

procedure TfrmReportSupportMBKDVD5.actRefreshExecute(Sender: TObject);
begin
  RefreshData;
  inherited;

end;

procedure TfrmReportSupportMBKDVD5.cxButton1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmReportSupportMBKDVD5.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.EditValue := dmGlobal.RemoteServer.GetTransDate;

  RefreshData;
end;

procedure TfrmReportSupportMBKDVD5.RefreshData;
begin
  cdsSupportVD51Header.Close;
  cdsSupportVD51Header.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD51Header.Open;

  cdsSupportVD52Header.Close;
  cdsSupportVD52Header.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD52Header.Open;

  cdsSupportVD56Header.Close;
  cdsSupportVD56Header.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD56Header.Open;

  cdsSupportVD57Header.Close;
  cdsSupportVD57Header.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD57Header.Open;

  cdsSupportVD51.Close;
  cdsSupportVD51.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD51.Open;

  cdsSupportVD52.Close;
  cdsSupportVD52.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD52.Open;

  cdsSupportVD56.Close;
  cdsSupportVD56.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD56.Open;

  cdsSupportVD57.Close;
  cdsSupportVD57.Params[0].AsDate := dtReportDate.Date;
  cdsSupportVD57.Open;
end;

end.
