unit FormGenerateContractBondsDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxPropertiesStore, dxBar, cxClasses, dxPSCore,
  dxPScxCommon, NDatasetContainer, NDatasetAction, Vcl.ActnList, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Datasnap.DBClient, NClientDataset,
  cxCalendar, cxBarEditItem, cxCheckBox;

type
  TfrmGenerateContractBonds = class(TfrmBrowseSingle)
    cdsGenerateContractBonds: TNClientDataset;
    cdsGenerateContractBondsTRADEBOND_ID: TLargeintField;
    cdsGenerateContractBondsTRADEDATE: TDateTimeField;
    cdsGenerateContractBondsINSTRUMENT_ID: TLargeintField;
    cdsGenerateContractBondsINSTRUMENT_CODE: TStringField;
    cdsGenerateContractBondsSHORTNAME: TWideStringField;
    cdsGenerateContractBondsTRADETYPE: TStringField;
    cdsGenerateContractBondsCCY: TStringField;
    cdsGenerateContractBondsFACEVALUE: TFloatField;
    cdsGenerateContractBondsINTERESTRATE: TFloatField;
    cdsGenerateContractBondsBACCID: TLargeintField;
    cdsGenerateContractBondsBPRICE: TFloatField;
    cdsGenerateContractBondsSACCID: TLargeintField;
    cdsGenerateContractBondsSPRICE: TFloatField;
    cdsGenerateContractBondsLASTCOUPONDATE: TDateTimeField;
    cdsGenerateContractBondsNEXTCOUPONDATE: TDateTimeField;
    cdsGenerateContractBondsPERIODECOUPON: TIntegerField;
    cdsGenerateContractBondsHOLD_TAX: TFloatField;
    cdsGenerateContractBondsSCAPGAINTAX: TFloatField;
    cdsGenerateContractBondsDUEDAYS: TIntegerField;
    cdsGenerateContractBondsDUEBUYSTOCK: TIntegerField;
    cdsGenerateContractBondsDUESELLSTOCK: TIntegerField;
    cdsGenerateContractBondsDUEBUYCASH: TIntegerField;
    cdsGenerateContractBondsDUESELLCASH: TIntegerField;
    cdsGenerateContractBondsSACCCODE: TStringField;
    cdsGenerateContractBondsBACCCODE: TStringField;
    cdsGenerateContractBondsSACCNAME: TStringField;
    cdsGenerateContractBondsBACCNAME: TStringField;
    cdsGenerateContractBondsACCRDAYS: TIntegerField;
    cdsGenerateContractBondsCOUPONDAY: TIntegerField;
    cdsGenerateContractBondsBONDCONID: TLargeintField;
    cdsGenerateContractBondsMARKETCODE: TStringField;
    cdsGenerateContractBondsWHTPCT: TFloatField;
    cdsGenerateContractBondsRVSDDATE: TDateField;
    cdsGenerateContractBondsRVSD_DTID: TLargeintField;
    cdsGenerateContractBondsSSALES: TLargeintField;
    cdsGenerateContractBondsBSALES: TLargeintField;
    cdsGenerateContractBondsHOLDPERIOD: TIntegerField;
    cdsGenerateContractBondsSCAPGAIN: TFloatField;
    cdsGenerateContractBondsINTEREST_AMT: TFloatField;
    cdsGenerateContractBondsSPROCEED: TFloatField;
    cdsGenerateContractBondsSNETPROCEED: TFloatField;
    cdsGenerateContractBondsBPROCEED: TFloatField;
    cdsGenerateContractBondsBNETPROCEED: TFloatField;
    cdsGenerateContractBondsBCAPGAIN: TFloatField;
    cdsGenerateContractBondsVALUEDATE: TDateTimeField;
    cdsGenerateContractBondsBCAPGAINTAX: TFloatField;
    cdsGenerateContractBondsSCOST_PRICE: TFloatField;
    cdsGenerateContractBondsSCOST_AMT: TFloatField;
    cdsGenerateContractBondsBCOST_PRICE: TFloatField;
    cdsGenerateContractBondsBCOST_AMT: TFloatField;
    cdsGenerateContractBondsMATURITY_DATE: TDateTimeField;
    cdsGenerateContractBondsHOLDING_INTEREST: TFloatField;
    cdsGenerateContractBondsHOLDING_INTEREST_TAX: TFloatField;
    cdsGenerateContractBondsWHT_TAX: TFloatField;
    cdsGenerateContractBondsSTAT: TStringField;
    cdsGenerateContractBondsMATCH_BUY: TStringField;
    cdsGenerateContractBondsMATCH_SELL: TStringField;
    cdsGenerateContractBondsMODDA: TDateTimeField;
    cdsGenerateContractBondsMODUI: TStringField;
    cdsGenerateContractBondsAPPDA: TDateTimeField;
    cdsGenerateContractBondsAPPUI: TStringField;
    cdsGenerateContractBondsISDEL: TIntegerField;
    cdsGenerateContractBondsID: TLargeintField;
    gvwBrowseTRADEBOND_ID: TcxGridDBBandedColumn;
    gvwBrowseTRADEDATE: TcxGridDBBandedColumn;
    gvwBrowseINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwBrowseINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwBrowseSHORTNAME: TcxGridDBBandedColumn;
    gvwBrowseTRADETYPE: TcxGridDBBandedColumn;
    gvwBrowseCCY: TcxGridDBBandedColumn;
    gvwBrowseFACEVALUE: TcxGridDBBandedColumn;
    gvwBrowseINTERESTRATE: TcxGridDBBandedColumn;
    gvwBrowseBCTPREFF: TcxGridDBBandedColumn;
    gvwBrowseBACCID: TcxGridDBBandedColumn;
    gvwBrowseBPRICE: TcxGridDBBandedColumn;
    gvwBrowseSCTPREFF: TcxGridDBBandedColumn;
    gvwBrowseSACCID: TcxGridDBBandedColumn;
    gvwBrowseSPRICE: TcxGridDBBandedColumn;
    gvwBrowseLASTCOUPONDATE: TcxGridDBBandedColumn;
    gvwBrowseNEXTCOUPONDATE: TcxGridDBBandedColumn;
    gvwBrowsePERIODECOUPON: TcxGridDBBandedColumn;
    gvwBrowseHOLD_TAX: TcxGridDBBandedColumn;
    gvwBrowseSCAPGAINTAX: TcxGridDBBandedColumn;
    gvwBrowseDUEDAYS: TcxGridDBBandedColumn;
    gvwBrowseDUEBUYSTOCK: TcxGridDBBandedColumn;
    gvwBrowseDUESELLSTOCK: TcxGridDBBandedColumn;
    gvwBrowseDUEBUYCASH: TcxGridDBBandedColumn;
    gvwBrowseDUESELLCASH: TcxGridDBBandedColumn;
    gvwBrowseSACCCODE: TcxGridDBBandedColumn;
    gvwBrowseBACCCODE: TcxGridDBBandedColumn;
    gvwBrowseSACCNAME: TcxGridDBBandedColumn;
    gvwBrowseBACCNAME: TcxGridDBBandedColumn;
    gvwBrowseACCRDAYS: TcxGridDBBandedColumn;
    gvwBrowseCOUPONDAY: TcxGridDBBandedColumn;
    gvwBrowseBONDCONID: TcxGridDBBandedColumn;
    gvwBrowseMARKETCODE: TcxGridDBBandedColumn;
    gvwBrowseWHTPCT: TcxGridDBBandedColumn;
    gvwBrowseRVSDDATE: TcxGridDBBandedColumn;
    gvwBrowseRVSD_DTID: TcxGridDBBandedColumn;
    gvwBrowseSSALES: TcxGridDBBandedColumn;
    gvwBrowseBSALES: TcxGridDBBandedColumn;
    gvwBrowseHOLDPERIOD: TcxGridDBBandedColumn;
    gvwBrowseSCAPGAIN: TcxGridDBBandedColumn;
    gvwBrowseINTEREST_AMT: TcxGridDBBandedColumn;
    gvwBrowseSPROCEED: TcxGridDBBandedColumn;
    gvwBrowseSNETPROCEED: TcxGridDBBandedColumn;
    gvwBrowseBPROCEED: TcxGridDBBandedColumn;
    gvwBrowseBNETPROCEED: TcxGridDBBandedColumn;
    gvwBrowseBCAPGAIN: TcxGridDBBandedColumn;
    gvwBrowseVALUEDATE: TcxGridDBBandedColumn;
    gvwBrowseBCAPGAINTAX: TcxGridDBBandedColumn;
    gvwBrowseSCOST_PRICE: TcxGridDBBandedColumn;
    gvwBrowseSCOST_AMT: TcxGridDBBandedColumn;
    gvwBrowseBCOST_PRICE: TcxGridDBBandedColumn;
    gvwBrowseBCOST_AMT: TcxGridDBBandedColumn;
    gvwBrowseMATURITY_DATE: TcxGridDBBandedColumn;
    gvwBrowseHOLDING_INTEREST: TcxGridDBBandedColumn;
    gvwBrowseHOLDING_INTEREST_TAX: TcxGridDBBandedColumn;
    gvwBrowseWHT_TAX: TcxGridDBBandedColumn;
    gvwBrowseSTAT: TcxGridDBBandedColumn;
    gvwBrowseMATCH_BUY: TcxGridDBBandedColumn;
    gvwBrowseMATCH_SELL: TcxGridDBBandedColumn;
    gvwBrowseMODDA: TcxGridDBBandedColumn;
    gvwBrowseMODUI: TcxGridDBBandedColumn;
    gvwBrowseAPPDA: TcxGridDBBandedColumn;
    gvwBrowseAPPUI: TcxGridDBBandedColumn;
    gvwBrowseISDEL: TcxGridDBBandedColumn;
    gvwBrowseID: TcxGridDBBandedColumn;
    actGenerateAll: TNAction;
    actGenerateSelected: TNAction;
    BarMBrowseBar2: TdxBar;
    txtTradeDate: TcxBarEditItem;
    N5: TMenuItem;
    GenerateContractAll1: TMenuItem;
    GenerateSelectedContract1: TMenuItem;
    cdsGenerateContractBondsCONTRACT: TStringField;
    gvwBrowseCONTRACT: TcxGridDBBandedColumn;
    cdsGenerateContractBondsCTPREFF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actGenerateAllExecute(Sender: TObject);
    procedure actGenerateSelectedExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtTradeDatePropertiesCloseUp(Sender: TObject);
  private
    procedure ShowGenerateContractBonds(ATradeDate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmGenerateContractBonds: TfrmGenerateContractBonds;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmGenerateContractBonds }

procedure TfrmGenerateContractBonds.actGenerateAllExecute(Sender: TObject);
begin
  inherited;
//  MessageDlg(dmGlobal.RemoteServer.GenerateContractBonds(txtTradeDate.EditValue), mtInformation, [mbOk], 0);
end;

procedure TfrmGenerateContractBonds.actGenerateSelectedExecute(Sender: TObject);
begin
  inherited;
//  MessageDlg(dmGlobal.RemoteServer.GenerateContractBondsByID(cdsGenerateContractBondsTRADEBOND_ID.AsInteger), mtInformation, [mbOk], 0);
end;

procedure TfrmGenerateContractBonds.FormCreate(Sender: TObject);
begin
  inherited;
  ShowGenerateContractBonds(dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmGenerateContractBonds.FormShow(Sender: TObject);
begin
  inherited;
  txtTradeDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmGenerateContractBonds.ShowGenerateContractBonds(
  ATradeDate: TDateTime);
begin
  cdsGenerateContractBonds.Close;
  cdsGenerateContractBonds.Params[0].AsDateTime := ATradeDate;
  cdsGenerateContractBonds.Open;
end;


procedure TfrmGenerateContractBonds.txtTradeDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  ShowGenerateContractBonds(txtTradeDate.EditValue);
end;

Initialization
  RegisterClass(TfrmGenerateContractBonds);

end.
