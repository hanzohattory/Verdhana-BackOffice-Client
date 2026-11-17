unit FormReportAgingMonitoringList;

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
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, cxButtonEdit;

type
  TfrmReportAgingMonitoringList = class(TfrmBrowseData)
    cdsAgingMonitoring: TNClientDataset;
    cdsAgingMonitoringACCFROM: TStringField;
    cdsAgingMonitoringACCTO: TStringField;
    cdsAgingMonitoringCCYCODE: TStringField;
    cdsAgingMonitoringACCCODE: TStringField;
    cdsAgingMonitoringACCNAME: TStringField;
    cdsAgingMonitoringACCTYPE: TStringField;
    cdsAgingMonitoringACCTYPEDESC: TStringField;
    cdsAgingMonitoringSALESCODE: TStringField;
    cdsAgingMonitoringNET_ARAPOD: TFloatField;
    cdsAgingMonitoringNOTDUE: TFloatField;
    cdsAgingMonitoringTOTAL_OUTS: TFloatField;
    cdsAgingMonitoringSALESNAME: TStringField;
    cdsAgingMonitoringT_DAY: TIntegerField;
    gvwMasterACCFROM: TcxGridDBBandedColumn;
    gvwMasterACCTO: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterNET_ARAPOD: TcxGridDBBandedColumn;
    gvwMasterNOTDUE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_OUTS: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterT_DAY: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccCodeFrom: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    txtAccCodeTo: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    txtAccNameFrom: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtAccNameTo: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
    FAccountIDFrom: Integer;
    FAccountIDTo: Integer;
  public
    { Public declarations }
  end;

var
  frmReportAgingMonitoringList: TfrmReportAgingMonitoringList;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportAgingMonitoringList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate   := dtReportDate.Date;
  ReportContainer.Params[1].AsString := txtAccCodeFrom.EditValue;
  ReportContainer.Params[2].AsString := txtAccCodeTo.EditValue;
  inherited;
end;

procedure TfrmReportAgingMonitoringList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsAgingMonitoring.Close;
  cdsAgingMonitoring.Params[0].AsDate   := dtReportDate.Date;
  cdsAgingMonitoring.Params[1].AsString := txtAccCodeFrom.EditValue;
  cdsAgingMonitoring.Params[2].AsString := txtAccCodeTo.EditValue;
  cdsAgingMonitoring.Open;
end;

procedure TfrmReportAgingMonitoringList.FormShow(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  FAccountIDFrom    := 0;
  FAccountIDTo      := 0;
end;

procedure TfrmReportAgingMonitoringList.txtAccCodeFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccountIDFrom, True) = mrOK then
    begin
      FAccountIDFrom           := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccCodeFrom.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameFrom.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;

      FAccountIDTo           := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccCodeTo.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportAgingMonitoringList.txtAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccountIDTo, True) = mrOK then
    begin
      FAccountIDTo           := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccCodeTo.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

end.
