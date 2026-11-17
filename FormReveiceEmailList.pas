unit FormReveiceEmailList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem;

type
  TfrmReceiveEmailList = class(TfrmBrowseData)
    cdsReceiveEmailList: TNClientDataset;
    cdsReceiveEmailListEDATETIME: TDateTimeField;
    cdsReceiveEmailListESUBJECT: TStringField;
    cdsReceiveEmailListEFROMADDRESS: TStringField;
    cdsReceiveEmailListEBODY: TMemoField;
    cdsReceiveEmailListEMSGID: TStringField;
    cdsReceiveEmailListEDATETIMEMAIL: TDateTimeField;
    gvwMasterEDATETIME: TcxGridDBBandedColumn;
    gvwMasterESUBJECT: TcxGridDBBandedColumn;
    gvwMasterEFROMADDRESS: TcxGridDBBandedColumn;
    gvwMasterEBODY: TcxGridDBBandedColumn;
    gvwMasterEMSGID: TcxGridDBBandedColumn;
    gvwMasterEDATETIMEMAIL: TcxGridDBBandedColumn;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceiveEmailList: TfrmReceiveEmailList;

implementation

uses DataGlobal, FormReceiveEmail;

{$R *.dfm}

procedure TfrmReceiveEmailList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsReceiveEmailList.Close;
  cdsReceiveEmailList.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsReceiveEmailList.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsReceiveEmailList.Open;
end;

procedure TfrmReceiveEmailList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReceiveEmail;
end;

procedure TfrmReceiveEmailList.FormCreate(Sender: TObject);
var
  dDate: tDate;
begin
  inherited;
  KeyField := cdsReceiveEmailListEMSGID;
  dDate    := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dDate;
  dtEnd.EditValue   := dDate;
end;

end.
