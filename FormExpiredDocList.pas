unit FormExpiredDocList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, cxImageComboBox;

type
  TfrmExpiredDocList = class(TfrmBrowseData)
    cdsExpiredDocList: TNClientDataset;
    cdsExpiredDocListENTTID: TIntegerField;
    cdsExpiredDocListENTTCODE: TStringField;
    cdsExpiredDocListENTNAME: TStringField;
    cdsExpiredDocListENTACCTYPE: TStringField;
    cdsExpiredDocListINVESTORCAT: TStringField;
    cdsExpiredDocListSIDNO: TStringField;
    cdsExpiredDocListAFFIL: TBooleanField;
    cdsExpiredDocListRISK: TStringField;
    cdsExpiredDocListCUST_TYPE: TIntegerField;
    cdsExpiredDocListSEQNO: TIntegerField;
    cdsExpiredDocListDOCTYPE: TStringField;
    cdsExpiredDocListDOCDESC: TStringField;
    cdsExpiredDocListDOCFILENAME: TStringField;
    cdsExpiredDocListEXPIREDATE: TDateField;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterINVESTORCAT: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterRISK: TcxGridDBBandedColumn;
    gvwMasterCUST_TYPE: TcxGridDBBandedColumn;
    gvwMasterSEQNO: TcxGridDBBandedColumn;
    gvwMasterDOCTYPE: TcxGridDBBandedColumn;
    gvwMasterDOCDESC: TcxGridDBBandedColumn;
    gvwMasterDOCFILENAME: TcxGridDBBandedColumn;
    gvwMasterEXPIREDATE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExpiredDocList: TfrmExpiredDocList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmExpiredDocList.actPrintExecute(Sender: TObject);
var
  iEnttID: string;
begin
  iEnttID := gvwMaster.DataController.Controller.SelectedRecords[0].Values[gvwMasterENTTID.Index];

  ReportContainer.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  ReportContainer.Params[1].AsInteger := StrToInt(iEnttID);
  inherited;
end;

procedure TfrmExpiredDocList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsExpiredDocList.Close;
  cdsExpiredDocList.Open;
end;

Initialization
  RegisterClass(TfrmExpiredDocList);

end.
