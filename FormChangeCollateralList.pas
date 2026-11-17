unit FormChangeCollateralList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmChangeCollateralList = class(TfrmBrowseData)
    cdsChangeColList: TNClientDataset;
    cdsChangeColM: TNClientDataset;
    cdsChangeColListCCOLID: TLargeintField;
    cdsChangeColListTRXDATE: TDateTimeField;
    cdsChangeColListACCID: TLargeintField;
    cdsChangeColListACCCODE: TStringField;
    cdsChangeColListCONRID: TLargeintField;
    cdsChangeColListCONTRACT_NO: TStringField;
    cdsChangeColListEXISTCOLLATERAL: TFloatField;
    cdsChangeColListNEWCOLLATERAL: TFloatField;
    cdsChangeColListINPUTBY: TStringField;
    cdsChangeColListINPUTDATE: TDateTimeField;
    cdsChangeColListAPPROVEBY: TStringField;
    cdsChangeColListAPPROVEDATE: TDateTimeField;
    cdsChangeColListPOSTINGBY: TStringField;
    cdsChangeColListPOSTINGDATE: TDateTimeField;
    cdsChangeColListCCOLSTATUS: TStringField;
    cdsChangeColListMODDA: TDateTimeField;
    cdsChangeColListMODUI: TStringField;
    cdsChangeColListAPPDA: TDateTimeField;
    cdsChangeColListAPPUI: TStringField;
    cdsChangeColListUNDER4Y: TIntegerField;
    cdsChangeColListUNDER4YDA: TDateTimeField;
    cdsChangeColListNOTES4Y: TStringField;
    cdsChangeColListISDEL: TIntegerField;
    cdsChangeColListID: TLargeintField;
    cdsChangeColMCCOLID: TLargeintField;
    cdsChangeColMTRXDATE: TDateTimeField;
    cdsChangeColMACCID: TLargeintField;
    cdsChangeColMACCCODE: TStringField;
    cdsChangeColMCONRID: TLargeintField;
    cdsChangeColMCONTRACT_NO: TStringField;
    cdsChangeColMEXISTCOLLATERAL: TFloatField;
    cdsChangeColMNEWCOLLATERAL: TFloatField;
    cdsChangeColMINPUTBY: TStringField;
    cdsChangeColMINPUTDATE: TDateTimeField;
    cdsChangeColMAPPROVEBY: TStringField;
    cdsChangeColMAPPROVEDATE: TDateTimeField;
    cdsChangeColMPOSTINGBY: TStringField;
    cdsChangeColMPOSTINGDATE: TDateTimeField;
    cdsChangeColMCCOLSTATUS: TStringField;
    cdsChangeColMMODDA: TDateTimeField;
    cdsChangeColMMODUI: TStringField;
    cdsChangeColMAPPDA: TDateTimeField;
    cdsChangeColMAPPUI: TStringField;
    cdsChangeColMUNDER4Y: TIntegerField;
    cdsChangeColMUNDER4YDA: TDateTimeField;
    cdsChangeColMNOTES4Y: TStringField;
    cdsChangeColMISDEL: TIntegerField;
    cdsChangeColMID: TLargeintField;
    cdsChangeColMqryChangeColD: TDataSetField;
    cdsChangeColD: TNClientDataset;
    gvwMasterCCOLID: TcxGridDBBandedColumn;
    gvwMasterTRXDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterCONRID: TcxGridDBBandedColumn;
    gvwMasterCONTRACT_NO: TcxGridDBBandedColumn;
    gvwMasterEXISTCOLLATERAL: TcxGridDBBandedColumn;
    gvwMasterNEWCOLLATERAL: TcxGridDBBandedColumn;
    gvwMasterINPUTBY: TcxGridDBBandedColumn;
    gvwMasterINPUTDATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVEBY: TcxGridDBBandedColumn;
    gvwMasterAPPROVEDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTINGBY: TcxGridDBBandedColumn;
    gvwMasterPOSTINGDATE: TcxGridDBBandedColumn;
    gvwMasterCCOLSTATUS: TcxGridDBBandedColumn;
    cdsChangeColDCCOLID: TLargeintField;
    cdsChangeColDSTOCKID: TIntegerField;
    cdsChangeColDSTOCKCODE: TStringField;
    cdsChangeColDSTOCKNAME: TStringField;
    cdsChangeColDSHARES: TFloatField;
    cdsChangeColDCLS_PRICE: TFloatField;
    cdsChangeColDCOLL_AMT: TFloatField;
    cdsChangeColDACCID: TLargeintField;
    cdsChangeColDACCCODE: TStringField;
    cdsChangeColDIN_OUT: TStringField;
    cdsChangeColDMODDA: TDateTimeField;
    cdsChangeColDMODUI: TStringField;
    cdsChangeColDAPPDA: TDateTimeField;
    cdsChangeColDAPPUI: TStringField;
    cdsChangeColDUNDER4Y: TIntegerField;
    cdsChangeColDUNDER4YDA: TDateTimeField;
    cdsChangeColDNOTES4Y: TStringField;
    cdsChangeColDISDEL: TIntegerField;
    cdsChangeColDID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangeCollateralList: TfrmChangeCollateralList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

end.
