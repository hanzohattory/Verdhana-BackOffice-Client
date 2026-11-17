unit FormValidateDataReportHis;

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
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, cxBarEditItem;

type
  TfrmValidateDataReportHis = class(TfrmBrowseData)
    cdsValidateHis: TNClientDataset;
    cdsValidateHisREPORTDATE: TDateTimeField;
    cdsValidateHisREPORT_VLD: TDateTimeField;
    cdsValidateHisUSERID: TWideStringField;
    gvwMasterREPORTDATE: TcxGridDBBandedColumn;
    gvwMasterREPORT_VLD: TcxGridDBBandedColumn;
    gvwMasterUSERID: TcxGridDBBandedColumn;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidateDataReportHis: TfrmValidateDataReportHis;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmValidateDataReportHis.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsValidateHis.Close;
  cdsValidateHis.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsValidateHis.Params[0].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsValidateHis.Open;
end;

procedure TfrmValidateDataReportHis.FormCreate(Sender: TObject);
begin
  inherited;
  dtStart.EditValue := dmGlobal.RemoteServer.GetServerTimeStamp;
  dtEnd.EditValue   := dtStart.EditValue;
end;

end.
