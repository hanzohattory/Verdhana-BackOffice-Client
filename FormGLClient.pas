unit FormGLClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, cxBarEditItem, cxDBLookupComboBox, cxButtonEdit,
  cxTextEdit, cxCheckBox;

type
  TfrmGLClient = class(TfrmBrowseData)
    cdsGLClient: TNClientDataset;
    dtDateFrom: TcxBarEditItem;
    dtDateTo: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    edAccCode: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    edLedger: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    chkAllAccount: TcxBarEditItem;
    chkAllLedger: TcxBarEditItem;
    cdsGLClientJRNID: TLargeintField;
    cdsGLClientJRNCD: TStringField;
    cdsGLClientENTRYDATE: TDateField;
    cdsGLClientVALUEDATE: TDateField;
    cdsGLClientACCID: TIntegerField;
    cdsGLClientACCCODE: TStringField;
    cdsGLClientACCNAME: TStringField;
    cdsGLClientLDGTYPE: TStringField;
    cdsGLClientGL_JRNTYPE: TStringField;
    cdsGLClientHDESC: TStringField;
    cdsGLClientCCYCODE: TStringField;
    cdsGLClientDBAMOUNT: TFloatField;
    cdsGLClientCRAMOUNT: TFloatField;
    cdsGLClientFXDBAMOUNT: TFloatField;
    cdsGLClientFXCRAMOUNT: TFloatField;
    cdsGLClientENDBALANCE: TFloatField;
    cdsGLClientFXENDBALANCE: TFloatField;
    cdsGLClientEXRATE: TFloatField;
    cdsGLClientREFFNO: TStringField;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterJRNCD: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterLDGTYPE: TcxGridDBBandedColumn;
    gvwMasterGL_JRNTYPE: TcxGridDBBandedColumn;
    gvwMasterHDESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterDBAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCRAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXDBAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXCRAMOUNT: TcxGridDBBandedColumn;
    gvwMasterENDBALANCE: TcxGridDBBandedColumn;
    gvwMasterFXENDBALANCE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterREFFNO: TcxGridDBBandedColumn;
    cdsGLClientLDGNAME: TStringField;
    gvwMasterLDGNAME: TcxGridDBBandedColumn;
    procedure cxBarEditItem4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmGLClient: TfrmGLClient;

implementation

uses DataGlobal,FormLuAccount;

{$R *.dfm}

procedure TfrmGLClient.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsDate := cdsGLClient.Params[0].AsDate;
  ReportContainer.Params[1].AsDate := cdsGLClient.Params[1].AsDate;
  ReportContainer.Params[2].AsString := cdsGLClient.Params[2].AsString;
  ReportContainer.Params[3].AsString := cdsGLClient.Params[3].AsString;
  ReportContainer.Params[4].AsInteger := cdsGLClient.Params[4].AsInteger;
  ReportContainer.Params[5].AsInteger := cdsGLClient.Params[5].AsInteger;
  ReportContainer.PreviewReport;
end;

procedure TfrmGLClient.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsGLClient.Close;
  cdsGLClient.Params[0].AsDate  := dtDateFrom.EditValue;
  cdsGLClient.Params[1].AsDate  := dtDateTo.EditValue;
  cdsGLClient.Params[2].Value   := edAccCode.EditValue;
  cdsGLClient.Params[3].Value   := edLedger.EditValue;
  cdsGLClient.Params[4].AsString:= chkAllAccount.EditValue;
  cdsGLClient.Params[5].AsString:= chkAllLedger.EditValue;
  cdsGLClient.Open;
end;

procedure TfrmGLClient.cxBarEditItem4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID, True) = mrOK then
    begin
      FAccID              := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
//      edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmGLClient.FormCreate(Sender: TObject);
begin
  inherited;
  dtDateFrom.EditValue  := dmGlobal.RemoteServer.GetTransDate;
  dtDateTo.EditValue    := dmGlobal.RemoteServer.GetTransDate;


  chkAllAccount.EditValue := '0';
  chkAllLedger.EditValue  := '0';


  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuLedgerType.Active then
      cdsLuLedgerType.Open
  end;
end;

end.
