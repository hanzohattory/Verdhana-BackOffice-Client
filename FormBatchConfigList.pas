unit FormBatchConfigList;

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
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportClient, System.Actions, System.ImageList, dxDateRanges;

type
  TfrmBatchConfigList = class(TfrmBrowseData)
    cdsBatchConfigList: TNClientDataset;
    cdsBatchConfigListCAT_CODE: TStringField;
    cdsBatchConfigListCAT_DESC: TStringField;
    cdsBatchConfigListPROCTIME: TDateTimeField;
    cdsBatchConfigListPERIODIC: TStringField;
    cdsBatchConfigListPROCDATE: TStringField;
    cdsBatchConfigListMODDA: TDateTimeField;
    cdsBatchConfigListMODUI: TStringField;
    cdsBatchConfigListAPPDA: TDateTimeField;
    cdsBatchConfigListAPPUI: TStringField;
    cdsBatchConfigListUNDER4Y: TIntegerField;
    cdsBatchConfigListUNDER4YDA: TDateTimeField;
    cdsBatchConfigListNOTES4Y: TStringField;
    cdsBatchConfigListISDEL: TIntegerField;
    cdsBatchConfigListID: TLargeintField;
    cdsBatchConfigListAUTO: TStringField;
    cdsBatchConfig: TNClientDataset;
    cdsBatchConfigBATCHID: TLargeintField;
    cdsBatchConfigCAT_CODE: TStringField;
    cdsBatchConfigCAT_DESC: TStringField;
    cdsBatchConfigPROCTIME: TDateTimeField;
    cdsBatchConfigPERIODIC: TStringField;
    cdsBatchConfigPROCDATE: TStringField;
    cdsBatchConfigMODDA: TDateTimeField;
    cdsBatchConfigMODUI: TStringField;
    cdsBatchConfigAPPDA: TDateTimeField;
    cdsBatchConfigAPPUI: TStringField;
    cdsBatchConfigUNDER4Y: TIntegerField;
    cdsBatchConfigUNDER4YDA: TDateTimeField;
    cdsBatchConfigNOTES4Y: TStringField;
    cdsBatchConfigISDEL: TIntegerField;
    cdsBatchConfigID: TLargeintField;
    cdsBatchConfigAUTO: TStringField;
    gvwMasterCAT_CODE: TcxGridDBBandedColumn;
    gvwMasterCAT_DESC: TcxGridDBBandedColumn;
    gvwMasterPROCTIME: TcxGridDBBandedColumn;
    gvwMasterPERIODIC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAUTO: TcxGridDBBandedColumn;
    cdsBatchConfigDAYPROCTYPE: TStringField;
    cdsBatchConfigListDAYPROCTYPE: TStringField;
    cdsBatchConfigListREPEAT: TStringField;
    cdsBatchConfigREPEAT: TStringField;
    cdsBatchConfigSEQNO: TIntegerField;
    cdsBatchConfigListSEQNO: TIntegerField;
    gvwMasterSEQNO: TcxGridDBBandedColumn;
    gvwMasterDAYPROCTYPE: TcxGridDBBandedColumn;
    cdsBatchConfigListBATCHID: TIntegerField;
    cdsBatchConfigListNOTI_TIME: TDateTimeField;
    cdsBatchConfigListEMAILTYPE: TStringField;
    cdsBatchConfigNOTI_TIME: TDateTimeField;
    cdsBatchConfigEMAILTYPE: TStringField;
    gvwMasterNOTI_TIME: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormShow(Sender: TObject);
    procedure cdsBatchConfigNewRecord(DataSet: TDataSet);
    procedure cdsBatchConfigCAT_CODEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBatchConfigList: TfrmBatchConfigList;

implementation

{$R *.dfm}

uses DataGlobal, FormBatchConfig;

procedure TfrmBatchConfigList.cdsBatchConfigCAT_CODEChange(Sender: TField);
begin
  inherited;
  if Sender.DataSet.State in [dsInsert, dsEdit] then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuBatchCategory.Locate('CAT_CODE', VarArrayOf([cdsBatchConfigCAT_CODE.AsString]), []) then
      begin
        cdsBatchConfigCAT_DESC.AsString := cdsLuBatchCategoryCAT_DESC.AsString;
        cdsBatchConfigPERIODIC.AsString := cdsLuBatchCategoryCAT_PERIOD.AsString;
        cdsBatchConfigREPEAT.AsString := cdsLuBatchCategoryCAT_REPEAT.AsString;
      end;
    end;

  end;

end;

procedure TfrmBatchConfigList.cdsBatchConfigNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBatchConfigAUTO.AsString := '0';
  cdsBatchConfigREPEAT.AsString := '0';
end;

procedure TfrmBatchConfigList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBatchConfig;
end;

procedure TfrmBatchConfigList.FormShow(Sender: TObject);
begin
  inherited;
  cdsBatchConfigList.Close;
  cdsBatchConfigList.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBatchCategory.Close;
    cdsLuBatchCategory.Open;
  end;
end;

initialization
RegisterClass(TfrmBatchConfigList);

end.
