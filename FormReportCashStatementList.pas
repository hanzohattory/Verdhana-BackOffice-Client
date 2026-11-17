unit FormReportCashStatementList;

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
  NClientDataset, cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, dxLayoutContainer, cxCheckBox, dxLayoutControl, cxSpinEdit,
  cxDropDownEdit, cxImageComboBox;

type
  TfrmReportCashStatementList = class(TfrmBrowseData)
    cdsCashStatementList: TNClientDataset;
    cdsCashStatementListACCNO: TStringField;
    cdsCashStatementListAccName: TStringField;
    cdsCashStatementListSETTLE_CCYCODE: TStringField;
    cdsCashStatementListTRDDATE: TDateField;
    cdsCashStatementListSETTLEDDATE: TDateField;
    cdsCashStatementListSINO: TStringField;
    cdsCashStatementListSTOCKCODE: TStringField;
    cdsCashStatementListQTY: TFloatField;
    cdsCashStatementListSI_DESC: TStringField;
    cdsCashStatementListDEBIT: TFloatField;
    cdsCashStatementListCREDIT: TFloatField;
    cdsCashStatementListbalance: TFloatField;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterAccName: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterDEBIT: TcxGridDBBandedColumn;
    gvwMasterCREDIT: TcxGridDBBandedColumn;
    gvwMasterbalance: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    chkAll: TcxCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccCode: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtAccName: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cbMonth: TcxImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    edYear: TcxSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure txtAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmReportCashStatementList: TfrmReportCashStatementList;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportCashStatementList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsInteger := chkAll.EditValue;
  ReportContainer.Params[1].AsInteger := FAccID;
  ReportContainer.Params[2].AsInteger := cbMonth.EditValue;
  ReportContainer.Params[3].AsInteger := edYear.EditValue;

  inherited;
end;

procedure TfrmReportCashStatementList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsCashStatementList.Close;
  cdsCashStatementList.Params[0].AsInteger := chkAll.EditValue;
  cdsCashStatementList.Params[1].AsInteger := FAccID;
  cdsCashStatementList.Params[2].AsInteger := cbMonth.EditValue;
  cdsCashStatementList.Params[3].AsInteger := edYear.EditValue;
  cdsCashStatementList.Open;
end;

procedure TfrmReportCashStatementList.FormShow(Sender: TObject);
var
  dtTransDate: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  FAccID      := 0;

  DecodeDate(dtTransDate, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue  := iYear;
end;

procedure TfrmReportCashStatementList.txtAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if frmLuAccount.Run(FAccID, True) = mrOK then
  begin
    with dmGlobal.IntDataLookup do
    begin
      FAccID               := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

end.
