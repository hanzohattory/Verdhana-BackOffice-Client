unit FormCashMovementList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmCashPositionMovementList = class(TfrmBrowseData)
    cdsCashPositionMovementList: TNClientDataset;
    cdsCashPositionMovementListCMPOSID: TLargeintField;
    cdsCashPositionMovementListCMPOSCODE: TStringField;
    cdsCashPositionMovementListCMPOSDATE: TDateField;
    cdsCashPositionMovementListENTRYDATE: TDateField;
    cdsCashPositionMovementListCMPOSTYPE: TStringField;
    cdsCashPositionMovementListSOURCE_ACCID: TLargeintField;
    cdsCashPositionMovementListTARGET_ACCID: TLargeintField;
    cdsCashPositionMovementListSOURCE_ACTLED_SEQID: TLargeintField;
    cdsCashPositionMovementListTARGET_ACTLED_SEQID: TLargeintField;
    cdsCashPositionMovementListCCYCODE: TStringField;
    cdsCashPositionMovementListEXCHRATE: TFloatField;
    cdsCashPositionMovementListAMOUNT: TFloatField;
    cdsCashPositionMovementListFXAMOUNT: TFloatField;
    cdsCashPositionMovementListPOSTED: TStringField;
    cdsCashPositionMovementListPOSTED_DATE: TDateField;
    cdsCashPositionMovementListPOSTED_UI: TStringField;
    cdsCashPositionMovementListCANCEL: TStringField;
    cdsCashPositionMovementListCANCEL_DATE: TDateField;
    cdsCashPositionMovementListCANCEL_UI: TStringField;
    cdsCashPositionMovementListAPPROVED: TStringField;
    cdsCashPositionMovementListAPPROVED_DATE: TDateField;
    cdsCashPositionMovementListAPPROVED_UI: TStringField;
    cdsCashPositionMovementListMODDA: TDateTimeField;
    cdsCashPositionMovementListMODUI: TStringField;
    cdsCashPositionMovementListAPPDA: TDateTimeField;
    cdsCashPositionMovementListAPPUI: TStringField;
    cdsCashPositionMovementListUNDER4Y: TIntegerField;
    cdsCashPositionMovementListUNDER4YDA: TDateTimeField;
    cdsCashPositionMovementListNOTES4Y: TStringField;
    cdsCashPositionMovementListISDEL: TIntegerField;
    cdsCashPositionMovementListID: TLargeintField;
    cdsCashPositionMovementListSOURCE_ALTYPE: TStringField;
    cdsCashPositionMovementListSOURCE_ALCODE: TStringField;
    cdsCashPositionMovementListSOURCE_ALDESC: TStringField;
    cdsCashPositionMovementListTARGET_ALTYPE: TStringField;
    cdsCashPositionMovementListTARGET_ALCODE: TStringField;
    cdsCashPositionMovementListTARGET_ALDESC: TStringField;
    gvwMasterCMPOSID: TcxGridDBBandedColumn;
    gvwMasterCMPOSCODE: TcxGridDBBandedColumn;
    gvwMasterCMPOSDATE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterCMPOSTYPE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCID: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACTLED_SEQID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACTLED_SEQID: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXCHRATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXAMOUNT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ALTYPE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ALCODE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ALDESC: TcxGridDBBandedColumn;
    gvwMasterTARGET_ALTYPE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ALCODE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ALDESC: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashPositionMovementList: TfrmCashPositionMovementList;

implementation

{$R *.dfm}

uses DataGlobal;

end.
