unit FormBondsDealTicketContract;

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
  dxSkinsdxRibbonPainter, cxCalendar, dxBar, cxBarEditItem, Datasnap.DBClient,
  NClientDataset, cxPropertiesStore, cxClasses, dxPSCore, dxPScxCommon,
  NDatasetContainer, NDatasetAction, Vcl.ActnList, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid;

type
  TfrmBondsDealTicketContract = class(TfrmBrowseSingle)
    cdsBondsDealTicket: TNClientDataset;
    BarMBrowseBar2: TdxBar;
    txtTradeDate: TcxBarEditItem;
    cdsBondsDealTicketTRADEBOND_ID: TLargeintField;
    cdsBondsDealTicketTRADEDATE: TDateTimeField;
    cdsBondsDealTicketINSTRUMENT_ID: TLargeintField;
    cdsBondsDealTicketINSTRUMENT_CODE: TStringField;
    cdsBondsDealTicketSHORTNAME: TWideStringField;
    cdsBondsDealTicketTRADETYPE: TStringField;
    cdsBondsDealTicketCCY: TStringField;
    cdsBondsDealTicketFACEVALUE: TFloatField;
    cdsBondsDealTicketINTERESTRATE: TFloatField;
    cdsBondsDealTicketBCTPREFF: TStringField;
    cdsBondsDealTicketBACCID: TLargeintField;
    cdsBondsDealTicketBPRICE: TFloatField;
    cdsBondsDealTicketSCTPREFF: TStringField;
    cdsBondsDealTicketSACCID: TLargeintField;
    cdsBondsDealTicketSPRICE: TFloatField;
    cdsBondsDealTicketLASTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketPERIODECOUPON: TIntegerField;
    cdsBondsDealTicketHOLD_TAX: TFloatField;
    cdsBondsDealTicketSCAPGAINTAX: TFloatField;
    cdsBondsDealTicketDUEDAYS: TIntegerField;
    cdsBondsDealTicketDUEBUYSTOCK: TIntegerField;
    cdsBondsDealTicketDUESELLSTOCK: TIntegerField;
    cdsBondsDealTicketDUEBUYCASH: TIntegerField;
    cdsBondsDealTicketDUESELLCASH: TIntegerField;
    cdsBondsDealTicketSACCCODE: TStringField;
    cdsBondsDealTicketBACCCODE: TStringField;
    cdsBondsDealTicketSACCNAME: TStringField;
    cdsBondsDealTicketBACCNAME: TStringField;
    cdsBondsDealTicketACCRDAYS: TIntegerField;
    cdsBondsDealTicketCOUPONDAY: TIntegerField;
    cdsBondsDealTicketBONDCONID: TLargeintField;
    cdsBondsDealTicketMARKETCODE: TStringField;
    cdsBondsDealTicketWHTPCT: TFloatField;
    cdsBondsDealTicketRVSDDATE: TDateField;
    cdsBondsDealTicketRVSD_DTID: TLargeintField;
    cdsBondsDealTicketSSALES: TLargeintField;
    cdsBondsDealTicketBSALES: TLargeintField;
    cdsBondsDealTicketHOLDPERIOD: TIntegerField;
    cdsBondsDealTicketSCAPGAIN: TFloatField;
    cdsBondsDealTicketINTEREST_AMT: TFloatField;
    cdsBondsDealTicketSPROCEED: TFloatField;
    cdsBondsDealTicketSNETPROCEED: TFloatField;
    cdsBondsDealTicketBPROCEED: TFloatField;
    cdsBondsDealTicketBNETPROCEED: TFloatField;
    cdsBondsDealTicketBCAPGAIN: TFloatField;
    cdsBondsDealTicketVALUEDATE: TDateTimeField;
    cdsBondsDealTicketBCAPGAINTAX: TFloatField;
    cdsBondsDealTicketSCOST_PRICE: TFloatField;
    cdsBondsDealTicketSCOST_AMT: TFloatField;
    cdsBondsDealTicketBCOST_PRICE: TFloatField;
    cdsBondsDealTicketBCOST_AMT: TFloatField;
    cdsBondsDealTicketMATURITY_DATE: TDateTimeField;
    cdsBondsDealTicketHOLDING_INTEREST: TFloatField;
    cdsBondsDealTicketHOLDING_INTEREST_TAX: TFloatField;
    cdsBondsDealTicketWHT_TAX: TFloatField;
    cdsBondsDealTicketSTAT: TStringField;
    cdsBondsDealTicketMATCH_BUY: TStringField;
    cdsBondsDealTicketMATCH_SELL: TStringField;
    cdsBondsDealTicketMODDA: TDateTimeField;
    cdsBondsDealTicketMODUI: TStringField;
    cdsBondsDealTicketAPPDA: TDateTimeField;
    cdsBondsDealTicketAPPUI: TStringField;
    cdsBondsDealTicketISDEL: TIntegerField;
    cdsBondsDealTicketID: TLargeintField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtTradeDatePropertiesCloseUp(Sender: TObject);
  private
    procedure ShowBondsDealTicket(ATradeDate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmBrowseSingle1: TfrmBondsDealTicketContract;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmBrowseSingle1 }

procedure TfrmBondsDealTicketContract.FormCreate(Sender: TObject);
begin
  inherited;
  ShowBondsDealTicket(dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmBondsDealTicketContract.FormShow(Sender: TObject);
begin
  inherited;
  txtTradeDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmBondsDealTicketContract.ShowBondsDealTicket(ATradeDate: TDateTime);
begin
  cdsBondsDealTicket.Close;
  cdsBondsDealTicket.Params[0].AsDateTime := ATradeDate;
  cdsBondsDealTicket.Open;
end;

procedure TfrmBondsDealTicketContract.txtTradeDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  ShowBondsDealTicket(txtTradeDate.EditValue);
end;

initialization
  RegisterClass(TfrmBondsDealTicketContract);

end.
