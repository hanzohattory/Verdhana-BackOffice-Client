unit FormReportAccountBalanceSummary;

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
  dxLayoutcxEditAdapters, cxDropDownEdit, cxImageComboBox, cxGroupBox,
  cxRadioGroup, cxTextEdit, dxLayoutContainer, cxMaskEdit, cxButtonEdit,
  dxLayoutControl, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, Datasnap.DBClient, NClientDataset, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar;

type
  TfrmReportClientAccountBalanceSummarys = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edAccCodeFrom: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edAccNameFrom: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edAccCodeTo: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    rgFilter: TcxRadioGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    grpAccount: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    GrpAccType: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cbAccType: TcxImageComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnView: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dtRptDate: TcxDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    gvwMasterrptdate: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    gvwMasterNETARAP: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterCASH_QQ: TcxGridDBBandedColumn;
    cdsAccountBalanceSummary: TNClientDataset;
    cdsAccountBalanceSummaryrptdate: TDateField;
    cdsAccountBalanceSummaryACCCODE: TStringField;
    cdsAccountBalanceSummaryACCNAME: TStringField;
    cdsAccountBalanceSummaryACCTYPE: TStringField;
    cdsAccountBalanceSummaryCCY: TStringField;
    cdsAccountBalanceSummaryARAMT: TFloatField;
    cdsAccountBalanceSummaryAPAMT: TFloatField;
    cdsAccountBalanceSummaryNETARAP: TFloatField;
    cdsAccountBalanceSummaryCASH_ONHAND: TFloatField;
    cdsAccountBalanceSummaryCASH_QQ: TFloatField;
    btnViewReport: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    procedure rgFilterPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnViewClick(Sender: TObject);
    procedure cbAccTypePropertiesChange(Sender: TObject);
    procedure btnViewReportClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    FShowAll : Integer;
    FAccIDFrom : Integer;
    FAccIDTo : Integer;
    FAccType : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientAccountBalanceSummarys: TfrmReportClientAccountBalanceSummarys;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

procedure TfrmReportClientAccountBalanceSummarys.actPrintExecute(
  Sender: TObject);
begin
  //inherited;
  ReportContainer.Params[0].AsString := FAccType;
  ReportContainer.Params[1].asInteger := FShowAll;
  ReportContainer.Params[2].AsInteger := FAccIDFrom;
  ReportContainer.Params[3].AsInteger := FAccIDTo;
  ReportContainer.Params[4].AsDate := dtRptDate.date;
  ReportContainer.PreviewReport;
end;

procedure TfrmReportClientAccountBalanceSummarys.btnViewClick(Sender: TObject);
begin
  inherited;
  cdsAccountBalanceSummary.Close;
  cdsAccountBalanceSummary.Params[0].AsString := FAccType;
  cdsAccountBalanceSummary.Params[1].asInteger := FShowAll;
  cdsAccountBalanceSummary.Params[2].AsInteger := FAccIDFrom;
  cdsAccountBalanceSummary.Params[3].AsInteger := FAccIDTo;
  cdsAccountBalanceSummary.Params[4].AsDate := dtRptDate.date;
  cdsAccountBalanceSummary.Open;
end;

procedure TfrmReportClientAccountBalanceSummarys.cbAccTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  FAccType := cbAccType.EditValue;
end;

procedure TfrmReportClientAccountBalanceSummarys.btnViewReportClick(
  Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsString := FAccType;
  ReportContainer.Params[1].asInteger := FShowAll;
  ReportContainer.Params[2].AsInteger := FAccIDFrom;
  ReportContainer.Params[3].AsInteger := FAccIDTo;
  ReportContainer.Params[4].AsDate := dtRptDate.date;
  ReportContainer.PreviewReport;
end;

procedure TfrmReportClientAccountBalanceSummarys.edAccCodeFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeFrom.EditValue := FAccIDFrom;
      edAccCodeFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;

      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.EditValue := FAccIDTo;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientAccountBalanceSummarys.edAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.EditValue := FAccIDTo;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientAccountBalanceSummarys.FormShow(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
      if not cdsLuAccount.Active then
          cdsLuAccount.Open;
  end;
  dtRptDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  rgFilter.EditValue := 3;
end;

procedure TfrmReportClientAccountBalanceSummarys.rgFilterPropertiesChange(Sender: TObject);
begin
  inherited;
  FShowAll := 0;
  FAccIDFrom := 0;
  FAccIDTo := 0;
  FAccType := '';

  if rgFilter.EditValue = '1' then
  begin
    grpAccount.Visible := True;
    GrpAccType.Visible := False;
    dxLayoutControl1.Height := 180;
  end
  else if rgFilter.EditValue = '2' then
  begin
    grpAccount.Visible := False;
    GrpAccType.Visible := True;
    dxLayoutControl1.Height := 160;
  end
  else if rgFilter.EditValue = '3' then
  begin
    FShowAll := 1;
    grpAccount.Visible := False;
    GrpAccType.Visible := False;
    dxLayoutControl1.Height := 95;
  end;
end;

end.
