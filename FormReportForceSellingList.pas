unit FormReportForceSellingList;

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
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxButtonEdit,
  Datasnap.DBClient, NClientDataset;

type
  TfrmReportForceSellingList = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccNoFrom: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    txtAccNoTo: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    txtAccNameFrom: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtAccNameTo: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsForceSelling: TNClientDataset;
    cdsForceSellingACCID: TLargeintField;
    cdsForceSellingACCCODE: TStringField;
    cdsForceSellingACCNAME: TStringField;
    cdsForceSellingSALESCODE: TStringField;
    cdsForceSellingOUTSAMT: TFloatField;
    cdsForceSellingSHAREVAL: TFloatField;
    cdsForceSellingRATIO_FORCESELL: TFloatField;
    cdsForceSellingRATIO_MRGCALL: TFloatField;
    cdsForceSellingCREDIT_LIMIT: TFloatField;
    cdsForceSellingCURRENTMOF: TFloatField;
    cdsForceSellingCASHSHORTVAL: TFloatField;
    cdsForceSellingSTOCK_SHORTVAL: TFloatField;
    cdsForceSellingCASH_DROWDOWN: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterOUTSAMT: TcxGridDBBandedColumn;
    gvwMasterSHAREVAL: TcxGridDBBandedColumn;
    gvwMasterRATIO_FORCESELL: TcxGridDBBandedColumn;
    gvwMasterRATIO_MRGCALL: TcxGridDBBandedColumn;
    gvwMasterCREDIT_LIMIT: TcxGridDBBandedColumn;
    gvwMasterCURRENTMOF: TcxGridDBBandedColumn;
    gvwMasterCASHSHORTVAL: TcxGridDBBandedColumn;
    gvwMasterSTOCK_SHORTVAL: TcxGridDBBandedColumn;
    gvwMasterCASH_DROWDOWN: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtAccNoFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtAccNoToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccIDFrom,
    FAccIDTo: Integer;
  public
    { Public declarations }
  end;

var
  frmReportForceSellingList: TfrmReportForceSellingList;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportForceSellingList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate   := dtReportDate.Date;
  ReportContainer.Params[1].AsString := txtAccNoFrom.EditValue;
  ReportContainer.Params[2].AsString := txtAccNoTo.EditValue;
  inherited;
end;

procedure TfrmReportForceSellingList.actRefreshExecute(Sender: TObject);
begin
  cdsForceSelling.Close;
  cdsForceSelling.Params[0].AsDate   := dtReportDate.Date;
  cdsForceSelling.Params[1].AsString := txtAccNoFrom.EditValue;
  cdsForceSelling.Params[2].AsString := txtAccNoTo.EditValue;
  cdsForceSelling.Open;
  inherited;
end;

procedure TfrmReportForceSellingList.FormShow(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmReportForceSellingList.txtAccNoFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if frmLuAccount.Run(FAccIDFrom, True) = mrOK then
  begin
    with dmGlobal.IntDataLookup do
    begin
      FAccIDFrom               := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccNoFrom.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameFrom.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;

      FAccIDTo               := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccNoTo.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportForceSellingList.txtAccNoToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if frmLuAccount.Run(FAccIDTo, True) = mrOK then
  begin
    with dmGlobal.IntDataLookup do
    begin
      FAccIDTo               := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccNoTo.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

end.
