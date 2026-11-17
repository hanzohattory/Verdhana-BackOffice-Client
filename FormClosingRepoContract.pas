unit FormClosingRepoContract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormWorkflow, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Datasnap.DBClient, NClientDataset,
  Vcl.ImgList, Vcl.ActnList, NDatasetAction, NActionPermission, Vcl.ExtCtrls,
  Vcl.DBCtrls, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC;

type
  TfrmClosingRepoContract = class(TfrmWorkflow)
    cdsCRCList: TNClientDataset;
    gvwBrowseCONTRACT_NO: TcxGridDBBandedColumn;
    gvwBrowseTRXDATE: TcxGridDBBandedColumn;
    gvwBrowseACCCODE: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSETTDATE: TcxGridDBBandedColumn;
    gvwBrowseSETTDAY: TcxGridDBBandedColumn;
    gvwBrowseMATURDATE: TcxGridDBBandedColumn;
    gvwBrowseCCY: TcxGridDBBandedColumn;
    gvwBrowseLOAN_AMT: TcxGridDBBandedColumn;
    gvwBrowseDUE_AMT: TcxGridDBBandedColumn;
    gvwBrowseINTERESTRATE: TcxGridDBBandedColumn;
    cdsCRCListCONRID: TLargeintField;
    cdsCRCListCONTRACT_NO: TStringField;
    cdsCRCListENTTNAME: TStringField;
    cdsCRCListTRXDATE: TDateTimeField;
    cdsCRCListACCCODE: TStringField;
    cdsCRCListACCNAME: TStringField;
    cdsCRCListSETTDATE: TDateTimeField;
    cdsCRCListSETTDAY: TIntegerField;
    cdsCRCListMATURDATE: TDateTimeField;
    cdsCRCListCCY: TStringField;
    cdsCRCListLOAN_AMT: TFloatField;
    cdsCRCListORG_AMT: TFloatField;
    cdsCRCListDUE_AMT: TFloatField;
    cdsCRCListINTEREST_AMT: TFloatField;
    cdsCRCListREPO_AMT: TFloatField;
    cdsCRCListINTERESTRATE: TFloatField;
    cdsCRCListNOTE: TStringField;
    cdsCRCListDUE_DATE: TDateTimeField;
    cdsCRCListCLS_DATE: TDateTimeField;
    gvwBrowseINTEREST_AMT: TcxGridDBBandedColumn;
    gvwBrowseREPO_AMT: TcxGridDBBandedColumn;
    gvwBrowseDUE_DATE: TcxGridDBBandedColumn;
    cdsCRCListCOLL_AMT: TFloatField;
    cdsRepoMaster: TNClientDataset;
    cdsRepoMaster_D: TNClientDataset;
    dsRepoMaster: TDataSource;
    cdsRepoMasterCONRID: TLargeintField;
    cdsRepoMasterCONTRACT_NO: TStringField;
    cdsRepoMasterENTTID: TIntegerField;
    cdsRepoMasterENTTCODE: TStringField;
    cdsRepoMasterENTTNAME: TStringField;
    cdsRepoMasterTRXDATE: TDateTimeField;
    cdsRepoMasterTRXTYPE: TStringField;
    cdsRepoMasterACCID: TIntegerField;
    cdsRepoMasterACCCODE: TStringField;
    cdsRepoMasterACCNAME: TStringField;
    cdsRepoMasterRACCID: TIntegerField;
    cdsRepoMasterRACCCODE: TStringField;
    cdsRepoMasterRACCNAME: TStringField;
    cdsRepoMasterSETTDATE: TDateTimeField;
    cdsRepoMasterSETTDAY: TIntegerField;
    cdsRepoMasterMATURDATE: TDateTimeField;
    cdsRepoMasterCCY: TStringField;
    cdsRepoMasterLOAN_AMT: TFloatField;
    cdsRepoMasterDUE_AMT: TFloatField;
    cdsRepoMasterDISCOUNT: TSmallintField;
    cdsRepoMasterINTERESTCODE: TStringField;
    cdsRepoMasterINTERESTDESC: TStringField;
    cdsRepoMasterINTERESTRATE: TFloatField;
    cdsRepoMasterINTERESTTABLE: TStringField;
    cdsRepoMasterINTERESTDAY: TIntegerField;
    cdsRepoMasterCALCMETHOD: TStringField;
    cdsRepoMasterCALCBASIS: TStringField;
    cdsRepoMasterAPR_COLL: TFloatField;
    cdsRepoMasterFORCESELL: TFloatField;
    cdsRepoMasterCOLL_CALL: TFloatField;
    cdsRepoMasterINTEREST_AMT: TFloatField;
    cdsRepoMasterORG_AMT: TFloatField;
    cdsRepoMasterREPO_AMT: TFloatField;
    cdsRepoMasterCOLL_AMT: TFloatField;
    cdsRepoMasterCORPACT: TSmallintField;
    cdsRepoMasterISACCRUE: TSmallintField;
    cdsRepoMasterISMONTHBASIS: TSmallintField;
    cdsRepoMasterMODDA: TDateTimeField;
    cdsRepoMasterMODUI: TStringField;
    cdsRepoMasterAPPDA: TDateTimeField;
    cdsRepoMasterAPPUI: TStringField;
    cdsRepoMasterUNDER4Y: TIntegerField;
    cdsRepoMasterUNDER4YDA: TDateTimeField;
    cdsRepoMasterNOTES4Y: TStringField;
    cdsRepoMasterISDEL: TIntegerField;
    cdsRepoMasterID: TLargeintField;
    cdsRepoMasterCON_DATE: TDateTimeField;
    cdsRepoMasterTOPUP: TFloatField;
    cdsRepoMasterDUE_DATE: TDateTimeField;
    cdsRepoMasterREPO_STATUS: TStringField;
    cdsRepoMasterqryCONTRACT_REPO_D: TDataSetField;
    cdsRepoMaster_DCONRID: TLargeintField;
    cdsRepoMaster_DSEQNO: TIntegerField;
    cdsRepoMaster_DSTOCKID: TIntegerField;
    cdsRepoMaster_DSTOCKCODE: TStringField;
    cdsRepoMaster_DSTOCKNAME: TStringField;
    cdsRepoMaster_DSHARES: TFloatField;
    cdsRepoMaster_DTODAY_VAL: TFloatField;
    cdsRepoMaster_DINSERT_DATE: TDateField;
    cdsRepoMaster_DMODDA: TDateTimeField;
    cdsRepoMaster_DMODUI: TStringField;
    cdsRepoMaster_DAPPDA: TDateTimeField;
    cdsRepoMaster_DAPPUI: TStringField;
    cdsRepoMaster_DUNDER4Y: TIntegerField;
    cdsRepoMaster_DUNDER4YDA: TDateTimeField;
    cdsRepoMaster_DNOTES4Y: TStringField;
    cdsRepoMaster_DISDEL: TIntegerField;
    cdsRepoMaster_DID: TLargeintField;
    cdsRepoMaster_DQTY: TLargeintField;
    cdsRepoMaster_DCLS_PRICE: TFloatField;
    cdsRepoMaster_DCOL_AMT: TFloatField;
    cdsRepoMaster_DACCID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure CustomOnBeforeCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
    procedure CustomOnAfterCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
    procedure CustomOnBackToPreviousActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingRepoContract: TfrmClosingRepoContract;

implementation

{$R *.dfm}

uses DataGlobal, FormClosingRepoContractEditor,
  ClassClientConst;

procedure TfrmClosingRepoContract.FormCreate(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmClosingRepoContractEditor;
  FlowID := 6;
  KeyField := cdsCRCListCONRID;

end;

procedure TfrmClosingRepoCOntract.CustomOnBackToPreviousActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
begin
//Create Custom Procedure here if Back To Previous Activity
end;

procedure TfrmClosingRepoContract.CustomOnBeforeCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
var
  dtServer: TDateTime;
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if Before Complete Activity
  if (AActivityID = 6002) then
  begin
    //Posting Stock & Cash Movement

  end;

  if (AActivityID = 6003) then
  begin
    //Flag repo status to "CLOSED"
    cdsRepoMaster.Close;
      cdsRepoMaster.Params[0].AsInteger := cdsCRCListCONRID.AsInteger;
    cdsRepoMaster.Open;
    cdsRepoMaster.Edit;
    with TfrmClosingRepoContractEditor do
    begin
       cdsRepoMasterREPO_STATUS.AsString := 'C';
    end;
  end;
end;

procedure TfrmClosingRepoContract.CustomOnAfterCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
var
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if After Complete Activity
  if (AActivityID = 6007) then
  begin

  end;
end;

Initialization
  RegisterClass(TfrmClosingRepoContract);

end.
