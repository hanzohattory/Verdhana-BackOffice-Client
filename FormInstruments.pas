unit FormInstruments;

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
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxCheckBox, System.Actions, System.ImageList,
  dxDateRanges, cxSpinEdit, cxLabel, cxBarEditItem, dxScrollbarAnnotations,
  cxImageComboBox;

type
  TfrmInstruments = class(TfrmBrowseData)
    cdsInstrumentList: TNClientDataset;
    cdsInstrumentListINSTRUMENT_ID: TLargeintField;
    cdsInstrumentListLOCALCODE: TStringField;
    cdsInstrumentListSHORTNAME: TStringField;
    cdsInstrumentListINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentListINSTRUMENT_TYPE_DESC: TStringField;
    cdsInstrumentListMARKETCODE: TStringField;
    cdsInstrumentListMARGIN: TIntegerField;
    cdsInstrumentListSTATUS: TStringField;
    cdsInstrumentListLASTCLSPRICE: TFloatField;
    cdsInstrumentListLASTCPPRICEDATE: TDateField;
    cdsInstrumentListLISTINGDATE: TDateTimeField;
    cdsInstrumentListDELISTINGDATE: TDateTimeField;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_DESC: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterMARGIN: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterLASTCLSPRICE: TcxGridDBBandedColumn;
    gvwMasterLASTCPPRICEDATE: TcxGridDBBandedColumn;
    gvwMasterLISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterDELISTINGDATE: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
    TotalPages: Integer;
    Query: string;
  public
    { Public declarations }
  end;

var
  frmInstruments: TfrmInstruments;

implementation

{$R *.dfm}

uses DataGlobal, FormInstrument;

procedure TfrmInstruments.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsInstrumentList.Close;
  cdsInstrumentList.Open;
end;

procedure TfrmInstruments.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInstrument;
end;

procedure TfrmInstruments.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsInstrumentListINSTRUMENT_ID;

  cdsInstrumentList.Close;
  cdsInstrumentList.Open;
end;

Initialization
  RegisterClass(TfrmInstruments);

end.
