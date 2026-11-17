unit FormAccCreditLimitList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Vcl.Menus, cxContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter;

const
  CCTYPE_CASH = 'CS';
  CCTYPE_REG = 'RV';
  CCTYPE_RATIO = 'TV';
  CCTYPE_APPRLIMIT = 'AL';

type
  TfrmAccCreditLimitList = class(TfrmBrowseData)
    cdsAccCreditLimitList: TNClientDataset;
    cdsAccCreditLimitListACCID: TIntegerField;
    cdsAccCreditLimitListACCCODE: TStringField;
    cdsAccCreditLimitListACCNAME: TStringField;
    cdsAccCreditLimitListACCINIT: TStringField;
    cdsAccCreditLimitListACC_STS: TStringField;
    cdsAccCreditLimitListENTTCODE: TStringField;
    cdsAccCreditLimitListENTNAME: TStringField;
    cdsAccCreditLimitListENTTDESC: TStringField;
    cdsAccCreditLimitListACCID_1: TLargeintField;
    cdsAccCreditLimitListCCCLS_ID: TLargeintField;
    cdsAccCreditLimitListCCLSSNAME: TStringField;
    cdsAccCreditLimitListCC_TYPE: TStringField;
    cdsAccCreditLimitListTL_CASHVALUATE: TFloatField;
    cdsAccCreditLimitListTL_STOCKVALUATE: TFloatField;
    cdsAccCreditLimitListTLB_OVERLIMIT: TStringField;
    cdsAccCreditLimitListTLB_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitListTLB_MRG_NONVALSTOCK: TStringField;
    cdsAccCreditLimitListTLB_OVERDUE: TStringField;
    cdsAccCreditLimitListTLS_SHORTSELL: TStringField;
    cdsAccCreditLimitListTLS_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitListTLS_OVERDUE: TStringField;
    cdsAccCreditLimitListRATIO_MRGCALL: TFloatField;
    cdsAccCreditLimitListRATIO_MRGWARING: TFloatField;
    cdsAccCreditLimitListRATIO_FORCESELL: TFloatField;
    cdsAccCreditLimitListFORCESELL_DAY: TIntegerField;
    cdsAccCreditLimitListCR_VAL: TFloatField;
    cdsAccCreditLimitListBUY_LIMIT: TFloatField;
    cdsAccCreditLimitListSELL_LIMIT: TFloatField;
    cdsAccCreditLimitListMODDA: TDateTimeField;
    cdsAccCreditLimitListMODUI: TStringField;
    cdsAccCreditLimitListAPPDA: TDateTimeField;
    cdsAccCreditLimitListAPPUI: TStringField;
    cdsAccCreditLimitListUNDER4Y: TIntegerField;
    cdsAccCreditLimitListUNDER4YDA: TDateTimeField;
    cdsAccCreditLimitListNOTES4Y: TStringField;
    cdsAccCreditLimitListISDEL: TIntegerField;
    cdsAccCreditLimitListID: TLargeintField;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    cbEntity: TcxLookupComboBox;
    checkEntity: TcxCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTTDESC: TcxGridDBBandedColumn;
    gvwMasterBUY_LIMIT: TcxGridDBBandedColumn;
    gvwMasterSELL_LIMIT: TcxGridDBBandedColumn;
    actSetCreditLimit: TNAction;
    dxBarButton1: TdxBarButton;
    cdsAccCreditLimitListPRDCODE: TStringField;
    cdsAccCreditLimitListACCTYPE: TStringField;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    cdsAccCreditLimitListCREDIT_LIMIT: TFloatField;
    cdsAccCreditLimitListBUYAPPROVEMETHODE: TIntegerField;
    cdsAccCreditLimitListSELLAPPROVEMETHODE: TIntegerField;
    gvwMasterCREDIT_LIMIT: TcxGridDBBandedColumn;
    gvwMasterBUYAPPROVEMETHODE: TcxGridDBBandedColumn;
    gvwMasterSELLAPPROVEMETHODE: TcxGridDBBandedColumn;
    SetAccountCreditLimit1: TMenuItem;
    cdsAccCreditLimit: TNClientDataset;
    cdsAccCreditLimitACCID: TLargeintField;
    cdsAccCreditLimitCCCLS_ID: TLargeintField;
    cdsAccCreditLimitCCLSSNAME: TStringField;
    cdsAccCreditLimitCC_TYPE: TStringField;
    cdsAccCreditLimitTL_CASHVALUATE: TFloatField;
    cdsAccCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsAccCreditLimitTLB_OVERLIMIT: TStringField;
    cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsAccCreditLimitTLB_OVERDUE: TStringField;
    cdsAccCreditLimitTLS_SHORTSELL: TStringField;
    cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLS_OVERDUE: TStringField;
    cdsAccCreditLimitRATIO_MRGCALL: TFloatField;
    cdsAccCreditLimitRATIO_MRGWARING: TFloatField;
    cdsAccCreditLimitRATIO_FORCESELL: TFloatField;
    cdsAccCreditLimitFORCESELL_DAY: TIntegerField;
    cdsAccCreditLimitCR_VAL: TFloatField;
    cdsAccCreditLimitBUY_LIMIT: TFloatField;
    cdsAccCreditLimitSELL_LIMIT: TFloatField;
    cdsAccCreditLimitMODDA: TDateTimeField;
    cdsAccCreditLimitMODUI: TStringField;
    cdsAccCreditLimitAPPDA: TDateTimeField;
    cdsAccCreditLimitAPPUI: TStringField;
    cdsAccCreditLimitUNDER4Y: TIntegerField;
    cdsAccCreditLimitUNDER4YDA: TDateTimeField;
    cdsAccCreditLimitNOTES4Y: TStringField;
    cdsAccCreditLimitISDEL: TIntegerField;
    cdsAccCreditLimitID: TLargeintField;
    cdsAccCreditLimitACCCODE: TStringField;
    cdsAccCreditLimitACCNAME: TStringField;
    cdsAccCreditLimitCREDIT_LIMIT: TFloatField;
    cdsAccCreditLimitBUYAPPROVEMETHODE: TIntegerField;
    cdsAccCreditLimitSELLAPPROVEMETHODE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure checkEntityPropertiesChange(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actSetCreditLimitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccCreditLimitList: TfrmAccCreditLimitList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccCreditLimit, ClassClientConst;

procedure TfrmAccCreditLimitList.actSetCreditLimitExecute(Sender: TObject);
var
  sKey: string;
begin
  inherited;

  sKey := cdsAccCreditLimitListACCID.AsString;
  dmGlobal.AccountCreditLimit := cdsAccCreditLimitListACCID.AsInteger;
  if dmGlobal.ShowEditorForm(TfrmAccCreditLimit, sKey, pkUpdate) = mrOk then
  begin
    if dsBrowseMaster.DataSet.Active then
    begin
      dsBrowseMaster.DataSet.Close;
      dsBrowseMaster.DataSet.Open;
    end;
  end;

end;

procedure TfrmAccCreditLimitList.actViewDataExecute(Sender: TObject);
begin
  inherited;

  cdsAccCreditLimitList.Close;
  if checkEntity.Checked then
    cdsAccCreditLimitList.Params[0].AsInteger := 0
  else
    cdsAccCreditLimitList.Params[0].AsInteger := 1;

  if (cbEntity.EditValue = Null) then
    cdsAccCreditLimitList.Params[1].AsInteger := 0
  else
    cdsAccCreditLimitList.Params[1].AsInteger := cbEntity.EditValue;

  cdsAccCreditLimitList.Params[2].AsString := dmGlobal.UserID;
  cdsAccCreditLimitList.Open;

end;

procedure TfrmAccCreditLimitList.checkEntityPropertiesChange(Sender: TObject);
begin
  inherited;
  cbEntity.Enabled := checkEntity.Checked;
  if not checkEntity.Checked then
    cbEntity.Clear;
end;

procedure TfrmAccCreditLimitList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccCreditLimit;
end;

procedure TfrmAccCreditLimitList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAccCreditLimitListACCID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCCType.Close;
    cdsLuCCType.Open;

    cdsLuEntity.Close;
    cdsLuEntity.Open;

    cdsLuCrdConClass.Close;
    cdsLuCrdConClass.Open;

    cdsLuProduct.Close;
    cdsLuProduct.Open;

    cdsLuAccType.Close;
    cdsLuAccType.Open;
  end;

  actViewData.Execute;

end;

Initialization
  RegisterClass(TfrmAccCreditLimitList);

end.
