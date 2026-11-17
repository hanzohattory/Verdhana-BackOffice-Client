unit FormReportValueAddedTaxGrid;

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
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, dxLayoutcxEditAdapters,
  cxSpinEdit, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, dxLayoutControl, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCheckBox, cxButtonEdit, cxCalendar, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons;

type
  TfrmReportValueAddedTaxGrid = class(TfrmBrowseData)
    cdsValueAddedTax: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtRptDateFrom: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtRptDateTo: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    edAccName: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    chkSelectAll: TcxCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cbRptType: TcxImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsValueAddedTaxCONDATE: TDateField;
    cdsValueAddedTaxMARKETCODE: TStringField;
    cdsValueAddedTaxACCID: TLargeintField;
    cdsValueAddedTaxACCNO: TStringField;
    cdsValueAddedTaxACCNAME: TStringField;
    cdsValueAddedTaxBS: TStringField;
    cdsValueAddedTaxSTOCKCODE: TStringField;
    cdsValueAddedTaxAVALUE: TFloatField;
    cdsValueAddedTaxCOMMISION: TFloatField;
    cdsValueAddedTaxGROSSCOMM: TFloatField;
    cdsValueAddedTaxTOTAL_CHARGES: TFloatField;
    cdsValueAddedTaxLEVY: TFloatField;
    cdsValueAddedTaxCLEARINGHOUSELEVY: TFloatField;
    cdsValueAddedTaxVATLEVY: TFloatField;
    cdsValueAddedTaxVATCOMMISSION: TFloatField;
    cdsValueAddedTaxSALESTAX: TFloatField;
    cdsValueAddedTaxSTAMPFEE: TFloatField;
    cdsValueAddedTaxSCRIPLESSFEE: TFloatField;
    cdsValueAddedTaxOTCCHARGE: TFloatField;
    cdsValueAddedTaxPPH23: TFloatField;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterAVALUE: TcxGridDBBandedColumn;
    gvwMasterCOMMISION: TcxGridDBBandedColumn;
    gvwMasterGROSSCOMM: TcxGridDBBandedColumn;
    gvwMasterTOTAL_CHARGES: TcxGridDBBandedColumn;
    gvwMasterLEVY: TcxGridDBBandedColumn;
    gvwMasterCLEARINGHOUSELEVY: TcxGridDBBandedColumn;
    gvwMasterVATLEVY: TcxGridDBBandedColumn;
    gvwMasterVATCOMMISSION: TcxGridDBBandedColumn;
    gvwMasterSALESTAX: TcxGridDBBandedColumn;
    gvwMasterSTAMPFEE: TcxGridDBBandedColumn;
    gvwMasterSCRIPLESSFEE: TcxGridDBBandedColumn;
    gvwMasterOTCCHARGE: TcxGridDBBandedColumn;
    gvwMasterPPH23: TcxGridDBBandedColumn;
    btnViewReport: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    ReportContainerDetail: TNClientReportContainer;
    btnView: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnViewReportClick(Sender: TObject);
    procedure RefreshData;
    procedure btnViewClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    FAccID : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportValueAddedTaxGrid: TfrmReportValueAddedTaxGrid;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportValueAddedTaxGrid.actPrintExecute(Sender: TObject);
begin
  //inherited;
  if cbRptType.EditValue = 0 then
  begin
    ReportContainer.Params[0].AsDate := dtRptDateFrom.Date;
    ReportContainer.Params[1].asDate := dtRptDateTo.Date;
    ReportContainer.Params[2].AsInteger := FAccID;
    ReportContainer.Params[3].AsInteger := chkSelectAll.EditValue;
    ReportContainer.PreviewReport;
  end
  else
  begin
    ReportContainerDetail.Params[0].AsDate := dtRptDateFrom.Date;
    ReportContainerDetail.Params[1].asDate := dtRptDateTo.Date;
    ReportContainerDetail.Params[2].AsInteger := FAccID;
    ReportContainerDetail.Params[3].AsInteger := chkSelectAll.EditValue;
    ReportContainerDetail.PreviewReport;
  end;
end;

procedure TfrmReportValueAddedTaxGrid.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmReportValueAddedTaxGrid.btnViewClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmReportValueAddedTaxGrid.btnViewReportClick(Sender: TObject);
begin
  inherited;
  if cbRptType.EditValue = 0 then
  begin
    ReportContainer.Params[0].AsDate := dtRptDateFrom.Date;
    ReportContainer.Params[1].asDate := dtRptDateTo.Date;
    ReportContainer.Params[2].AsInteger := FAccID;
    ReportContainer.Params[3].AsInteger := chkSelectAll.EditValue;
    ReportContainer.PreviewReport;
  end
  else
  begin
    ReportContainerDetail.Params[0].AsDate := dtRptDateFrom.Date;
    ReportContainerDetail.Params[1].asDate := dtRptDateTo.Date;
    ReportContainerDetail.Params[2].AsInteger := FAccID;
    ReportContainerDetail.Params[3].AsInteger := chkSelectAll.EditValue;
    ReportContainerDetail.PreviewReport;
  end;
end;

procedure TfrmReportValueAddedTaxGrid.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := FAccID;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportValueAddedTaxGrid.FormCreate(Sender: TObject);
var
  dtTransDate: TDateTime;
begin
  inherited;
  FAccId := 0;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  dtRptDateFrom.EditValue := dtTransDate;
  dtRptDateTo.EditValue := dtTransDate;
  chkSelectAll.EditValue := 0;
end;
procedure TfrmReportValueAddedTaxGrid.RefreshData;
begin
  cdsValueAddedTax.Close;
  cdsValueAddedTax.Params[0].AsDate := dtRptDateFrom.EditValue;
  cdsValueAddedTax.Params[1].AsDate := dtRptDateTo.EditValue;
  cdsValueAddedTax.Params[2].AsInteger := FAccID;
  cdsValueAddedTax.Params[3].AsInteger := chkSelectAll.EditValue;
  cdsValueAddedTax.Params[4].AsInteger := cbRptType.EditValue;
  cdsValueAddedTax.Open;

  if cbRptType.EditValue = 0 then
  begin
    gvwMasterBS.Visible := false;
    gvwMasterSTOCKCODE.Visible := false;
  end
  else
  begin
    gvwMasterBS.Visible := True;
    gvwMasterSTOCKCODE.Visible := True;
  end;

end;

end.
