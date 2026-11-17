unit FormStaticDataLog;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, cxImageComboBox, dxDateRanges,
  System.Actions, System.ImageList, dxScrollbarAnnotations, cxBarEditItem;

type
  TfrmStaticDataLog = class(TfrmBrowseData)
    actLoadData: TNAction;
    cdsStaticDataLog: TNClientDataset;
    cdsStaticDataLogID: TLargeintField;
    cdsStaticDataLogSEQID: TIntegerField;
    cdsStaticDataLogTABLENAME: TStringField;
    cdsStaticDataLogFIELDNAME: TStringField;
    cdsStaticDataLogFIELDID: TStringField;
    cdsStaticDataLogSTATUS: TStringField;
    cdsStaticDataLogOLDVALUE: TMemoField;
    cdsStaticDataLogNEWVALUE: TMemoField;
    cdsStaticDataLogMODULE: TStringField;
    cdsStaticDataLogKEYID: TStringField;
    cdsStaticDataLogWRITEDATE: TDateTimeField;
    cdsStaticDataLogWRITEUID: TStringField;
    cdsStaticDataLogACCESSID: TLargeintField;
    cdsStaticDataLogPROTOCOL: TStringField;
    cdsStaticDataLogIPADDRESS: TStringField;
    cdsStaticDataLogCOMPNAME: TStringField;
    cdsStaticDataLogMACADDRESS: TStringField;
    cdsStaticDataLogMODDA: TStringField;
    cdsStaticDataLogMODUI: TStringField;
    cdsStaticDataLogCHECKDA: TStringField;
    cdsStaticDataLogCHECKUI: TStringField;
    cdsStaticDataLogAPPDA: TStringField;
    cdsStaticDataLogAPPUI: TStringField;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSEQID: TcxGridDBBandedColumn;
    gvwMasterTABLENAME: TcxGridDBBandedColumn;
    gvwMasterFIELDNAME: TcxGridDBBandedColumn;
    gvwMasterFIELDID: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterOLDVALUE: TcxGridDBBandedColumn;
    gvwMasterNEWVALUE: TcxGridDBBandedColumn;
    gvwMasterMODULE: TcxGridDBBandedColumn;
    gvwMasterKEYID: TcxGridDBBandedColumn;
    gvwMasterWRITEDATE: TcxGridDBBandedColumn;
    gvwMasterWRITEUID: TcxGridDBBandedColumn;
    gvwMasterACCESSID: TcxGridDBBandedColumn;
    gvwMasterPROTOCOL: TcxGridDBBandedColumn;
    gvwMasterIPADDRESS: TcxGridDBBandedColumn;
    gvwMasterCOMPNAME: TcxGridDBBandedColumn;
    gvwMasterMACADDRESS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterCHECKDA: TcxGridDBBandedColumn;
    gvwMasterCHECKUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStaticDataLog: TfrmStaticDataLog;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmStaticDataLog.actRefreshExecute(Sender: TObject);
begin
//  inherited;

  cdsStaticDataLog.Close;
  cdsStaticDataLog.Params[0].AsDateTime := VarToDateTime(dtStart.EditValue);
  cdsStaticDataLog.Params[1].AsDateTime := VarToDateTime(dtEnd.EditValue);
  cdsStaticDataLog.Open;
end;

procedure TfrmStaticDataLog.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem
end;

end.
