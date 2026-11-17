unit FormVD510Static;

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
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmVD510Static = class(TfrmBrowseData)
    cdsVD510Static: TNClientDataset;
    cdsVD510StaticCONTRACT_DATE: TDateField;
    cdsVD510StaticEFFECTIVE_DATE: TDateField;
    cdsVD510StaticGUARANTEE_TYPE: TStringField;
    cdsVD510StaticSTART_OFFER_DATE: TDateField;
    cdsVD510StaticEND_OFFER_DATE: TDateField;
    cdsVD510StaticDISTRIBUTION_DATE: TDateField;
    cdsVD510StaticLISTING_DATE: TDateField;
    cdsVD510StaticGUARANTEED_PARTY: TStringField;
    cdsVD510StaticGUARANTEE_STATUS: TStringField;
    cdsVD510StaticCOMMITMENT_VALUE: TFloatField;
    cdsVD510StaticHAIRCUT: TFloatField;
    cdsVD510StaticNOT_ABSORBED_VALUE: TFloatField;
    cdsVD510StaticBANK_GUARANTEE_CREDIT: TFloatField;
    cdsVD510StaticLIABILITY_RANK_VALUE: TFloatField;
    cdsVD510StaticMODDA: TDateTimeField;
    cdsVD510StaticMODUI: TStringField;
    cdsVD510StaticAPPDA: TDateTimeField;
    cdsVD510StaticAPPUI: TStringField;
    cdsVD510StaticUNDER4Y: TIntegerField;
    cdsVD510StaticUNDER4YDA: TDateTimeField;
    cdsVD510StaticNOTES4Y: TStringField;
    cdsVD510StaticISDEL: TIntegerField;
    cdsVD510StaticID: TLargeintField;
    gvwMasterVD510_ID: TcxGridDBBandedColumn;
    gvwMasterCONTRACT_DATE: TcxGridDBBandedColumn;
    gvwMasterEFFECTIVE_DATE: TcxGridDBBandedColumn;
    gvwMasterSTART_OFFER_DATE: TcxGridDBBandedColumn;
    gvwMasterEND_OFFER_DATE: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTION_DATE: TcxGridDBBandedColumn;
    gvwMasterLISTING_DATE: TcxGridDBBandedColumn;
    gvwMasterGUARANTEE_TYPE: TcxGridDBBandedColumn;
    gvwMasterGUARANTEED_PARTY: TcxGridDBBandedColumn;
    gvwMasterGUARANTEE_STATUS: TcxGridDBBandedColumn;
    gvwMasterCOMMITMENT_VALUE: TcxGridDBBandedColumn;
    gvwMasterHAIRCUT: TcxGridDBBandedColumn;
    gvwMasterNOT_ABSORBED_VALUE: TcxGridDBBandedColumn;
    gvwMasterBANK_GUARANTEE_CREDIT: TcxGridDBBandedColumn;
    gvwMasterLIABILITY_RANK_VALUE: TcxGridDBBandedColumn;
    cdsVD510Config: TNClientDataset;
    cdsVD510ConfigCONTRACT_DATE: TDateField;
    cdsVD510ConfigEFFECTIVE_DATE: TDateField;
    cdsVD510ConfigSTART_OFFER_DATE: TDateField;
    cdsVD510ConfigEND_OFFER_DATE: TDateField;
    cdsVD510ConfigDISTRIBUTION_DATE: TDateField;
    cdsVD510ConfigLISTING_DATE: TDateField;
    cdsVD510ConfigGUARANTEE_TYPE: TStringField;
    cdsVD510ConfigGUARANTEED_PARTY: TStringField;
    cdsVD510ConfigGUARANTEE_STATUS: TStringField;
    cdsVD510ConfigCOMMITMENT_VALUE: TFloatField;
    cdsVD510ConfigHAIRCUT: TFloatField;
    cdsVD510ConfigNOT_ABSORBED_VALUE: TFloatField;
    cdsVD510ConfigBANK_GUARANTEE_CREDIT: TFloatField;
    cdsVD510ConfigLIABILITY_RANK_VALUE: TFloatField;
    cdsVD510ConfigMODDA: TDateTimeField;
    cdsVD510ConfigMODUI: TStringField;
    cdsVD510ConfigAPPDA: TDateTimeField;
    cdsVD510ConfigAPPUI: TStringField;
    cdsVD510ConfigUNDER4Y: TIntegerField;
    cdsVD510ConfigUNDER4YDA: TDateTimeField;
    cdsVD510ConfigNOTES4Y: TStringField;
    cdsVD510ConfigISDEL: TIntegerField;
    cdsVD510ConfigID: TLargeintField;
    cdsVD510StaticVD510_ID: TLargeintField;
    cdsVD510ConfigVD510_ID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVD510Static: TfrmVD510Static;

implementation

{$R *.dfm}

uses DataGlobal, FormVD510Config;

procedure TfrmVD510Static.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmVD510Config;
end;

procedure TfrmVD510Static.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsVD510StaticVD510_ID;

  cdsVD510Static.Close;
  cdsVD510Static.Open;
end;

Initialization
  RegisterClass(TfrmVD510Static);

end.
