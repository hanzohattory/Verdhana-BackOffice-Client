unit FormRepoChangeCollateral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC, cxDropDownEdit,
  cxImageComboBox, cxMaskEdit, cxCalendar, Datasnap.DBClient, NClientDataset;

type
  TfrmRepoChangeCollateral = class(TfrmEditorData)
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl3: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    Button1: TButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;

    cdsRepoContract: TNClientDataset;
    cdsRepoContractCONRID: TLargeintField;
    cdsRepoContractCONTRACT_NO: TStringField;
    cdsRepoContractENTTID: TIntegerField;
    cdsRepoContractENTTCODE: TStringField;
    cdsRepoContractENTTNAME: TStringField;
    cdsRepoContractTRXDATE: TDateTimeField;
    cdsRepoContractTRXTYPE: TStringField;
    cdsRepoContractACCID: TIntegerField;
    cdsRepoContractACCCODE: TStringField;
    cdsRepoContractACCNAME: TStringField;
    cdsRepoContractRACCID: TIntegerField;
    cdsRepoContractRACCCODE: TStringField;
    cdsRepoContractRACCNAME: TStringField;
    cdsRepoContractSETTDATE: TDateTimeField;
    cdsRepoContractSETTDAY: TIntegerField;
    cdsRepoContractMATURDATE: TDateTimeField;
    cdsRepoContractCCY: TStringField;
    cdsRepoContractLOAN_AMT: TFloatField;
    cdsRepoContractDUE_AMT: TFloatField;
    cdsRepoContractINTERESTCODE: TStringField;
    cdsRepoContractINTERESTDESC: TStringField;
    cdsRepoContractINTERESTRATE: TFloatField;
    cdsRepoContractINTERESTTABLE: TStringField;
    cdsRepoContractINTERESTDAY: TIntegerField;
    cdsRepoContractCALCMETHOD: TStringField;
    cdsRepoContractCALCBASIS: TStringField;
    cdsRepoContractAPR_COLL: TFloatField;
    cdsRepoContractFORCESELL: TFloatField;
    cdsRepoContractCOLL_CALL: TFloatField;
    cdsRepoContractISACCRUE: TSmallintField;
    cdsRepoContractISMONTHBASIS: TSmallintField;
    cdsRepoContractMODDA: TDateTimeField;
    cdsRepoContractMODUI: TStringField;
    cdsRepoContractAPPDA: TDateTimeField;
    cdsRepoContractAPPUI: TStringField;
    cdsRepoContractUNDER4Y: TIntegerField;
    cdsRepoContractUNDER4YDA: TDateTimeField;
    cdsRepoContractNOTES4Y: TStringField;
    cdsRepoContractISDEL: TIntegerField;
    cdsRepoContractID: TLargeintField;
    cdsRepoContractCON_DATE: TDateTimeField;
    cdsRepoContractTOPUP: TFloatField;
    cdsRepoContractDUE_DATE: TDateTimeField;
    cdsRepoContractORG_AMT: TFloatField;
    cdsRepoContractINTEREST_AMT: TFloatField;
    cdsRepoContractREPO_AMT: TFloatField;
    cdsRepoContractCOLL_AMT: TFloatField;
    cdsRepoContract_D: TNClientDataset;
    cdsRepoContract_DCONRID: TLargeintField;
    cdsRepoContract_DSEQNO: TIntegerField;
    cdsRepoContract_DSTOCKID: TIntegerField;
    cdsRepoContract_DSTOCKCODE: TStringField;
    cdsRepoContract_DSTOCKNAME: TStringField;
    cdsRepoContract_DSHARES: TFloatField;
    cdsRepoContract_DTODAY_VAL: TFloatField;
    cdsRepoContract_DINSERT_DATE: TDateField;
    cdsRepoContract_DMODDA: TDateTimeField;
    cdsRepoContract_DMODUI: TStringField;
    cdsRepoContract_DAPPDA: TDateTimeField;
    cdsRepoContract_DAPPUI: TStringField;
    cdsRepoContract_DUNDER4Y: TIntegerField;
    cdsRepoContract_DUNDER4YDA: TDateTimeField;
    cdsRepoContract_DNOTES4Y: TStringField;
    cdsRepoContract_DISDEL: TIntegerField;
    cdsRepoContract_DID: TLargeintField;
    cdsRepoContract_DQTY: TLargeintField;
    cdsRepoContract_DCLS_PRICE: TFloatField;
    cdsRepoContract_DACCID: TLargeintField;
    cdsRepoContract_DACCCODE: TStringField;
    cdsRepoContractqryORC_D: TDataSetField;
    cdsRepoContract_DCOLL_AMT: TFloatField;

    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl4Item11: TdxLayoutItem;
    dxLayoutControl4Item13: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ACCCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ACCNAME: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKCODE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY_ONHAND: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Button4: TButton;
    Button5: TButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1CONRID: TcxGridDBColumn;
    cxGrid2DBTableView1STOCKID: TcxGridDBColumn;
    cxGrid2DBTableView1SEQNO: TcxGridDBColumn;
    cxGrid2DBTableView1STOCKCODE: TcxGridDBColumn;
    cxGrid2DBTableView1QTY: TcxGridDBColumn;
    cxGrid2DBTableView1CLS_PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1TODAY_VAL: TcxGridDBColumn;
    cxGrid2DBTableView1COL_AMT: TcxGridDBColumn;
    cxGrid2DBTableView1ACCID: TcxGridDBColumn;
    cxGrid2DBTableView1ACCCODE: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl6Group1: TdxLayoutGroup;
    dxLayoutControl6Group2: TdxLayoutGroup;
    dxLayoutControl6Group3: TdxLayoutGroup;
    dxLayoutControl6Group4: TdxLayoutGroup;
    dxLayoutControl6Group5: TdxLayoutGroup;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl7Group1: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;

    cdsSTOCKONHAND_Edit: TNClientDataset;
    cdsSTOCKONHAND_EditENTTID: TIntegerField;
    cdsSTOCKONHAND_EditENTTCODE: TStringField;
    cdsSTOCKONHAND_EditACCCODE: TStringField;
    cdsSTOCKONHAND_EditACCNAME: TStringField;
    cdsSTOCKONHAND_EditSTOCKCODE: TStringField;
    cdsSTOCKONHAND_EditQTY_ONHAND: TFloatField;
    cdsSTOCKONHAND_EditACCID: TIntegerField;
    cdsSTOCKONHAND_EditSTOCKID: TIntegerField;
    cdsSTOCKONHAND_EditEDIT: TStringField;

    dsSTOCKONHAND: TDataSource;
    cdsSTOCKONHAND: TNClientDataset;
    cdsSTOCKONHANDENTTID: TIntegerField;
    cdsSTOCKONHANDENTTCODE: TStringField;
    cdsSTOCKONHANDACCCODE: TStringField;
    cdsSTOCKONHANDACCNAME: TStringField;
    cdsSTOCKONHANDSTOCKCODE: TStringField;
    cdsSTOCKONHANDQTY_ONHAND: TFloatField;
    cdsSTOCKONHANDACCID: TIntegerField;
    cdsSTOCKONHANDSTOCKID: TIntegerField;

    cdsSTOCK_POS: TNClientDataset;
    cdsSTOCK_POSACCID: TLargeintField;
    cdsSTOCK_POSACCNO: TStringField;
    cdsSTOCK_POSSTOCKID: TIntegerField;
    cdsSTOCK_POSSTOCKCODE: TStringField;
    cdsSTOCK_POSQTY_ONHAND: TFloatField;
    cdsSTOCK_POSQTY_ONHOLD: TFloatField;

    cdsRepoContractList: TNClientDataset;
    cdsRepoContractListCONRID: TLargeintField;
    cdsRepoContractListENTTID: TIntegerField;
    cdsRepoContractListACCID: TIntegerField;
    cdsRepoContractListRACCID: TIntegerField;
    cdsRepoContractListCONTRACT_NO: TStringField;
    cdsRepoContractListENTTCODE: TStringField;
    cdsRepoContractListENTTNAME: TStringField;
    cdsRepoContractListTRXDATE: TDateTimeField;
    cdsRepoContractListTRXTYPE: TStringField;
    cdsRepoContractListACCCODE: TStringField;
    cdsRepoContractListACCNAME: TStringField;
    cdsRepoContractListRACCCODE: TStringField;
    cdsRepoContractListRACCNAME: TStringField;
    cdsRepoContractListSETTDATE: TDateTimeField;
    cdsRepoContractListSETTDAY: TIntegerField;
    cdsRepoContractListMATURDATE: TDateTimeField;
    cdsRepoContractListCCY: TStringField;
    cdsRepoContractListLOAN_AMT: TFloatField;
    cdsRepoContractListORG_AMT: TFloatField;
    cdsRepoContractListINTEREST_AMT: TFloatField;
    cdsRepoContractListREPO_AMT: TFloatField;
    cdsRepoContractListDUE_AMT: TFloatField;
    cdsRepoContractListINTERESTCODE: TStringField;
    cdsRepoContractListINTERESTDESC: TStringField;
    cdsRepoContractListINTERESTRATE: TFloatField;
    cdsRepoContractListINTERESTTABLE: TStringField;
    cdsRepoContractListINTERESTDAY: TIntegerField;
    cdsRepoContractListCALCMETHOD: TStringField;
    cdsRepoContractListCALCBASIS: TStringField;
    cdsRepoContractListAPR_COLL: TFloatField;
    cdsRepoContractListFORCESELL: TFloatField;
    cdsRepoContractListCOLL_CALL: TFloatField;
    cdsRepoContractListCOLL_AMT: TFloatField;
    cdsRepoContractListISACCRUE: TSmallintField;
    cdsRepoContractListISMONTHBASIS: TSmallintField;
    cdsRepoContractListMODDA: TDateTimeField;
    cdsRepoContractListMODUI: TStringField;
    cdsRepoContractListAPPDA: TDateTimeField;
    cdsRepoContractListAPPUI: TStringField;
    cdsRepoContractListUNDER4Y: TIntegerField;
    cdsRepoContractListUNDER4YDA: TDateTimeField;
    cdsRepoContractListNOTES4Y: TStringField;
    cdsRepoContractListISDEL: TIntegerField;
    cdsRepoContractListID: TLargeintField;
    cdsRepoContractListCON_DATE: TDateTimeField;
    cdsRepoContractListTOPUP: TFloatField;

    cdsRepoContractListDUE_DATE: TDateTimeField;
    cdsCollateral: TNClientDataset;
    cdsCollateralCONRID: TLargeintField;
    cdsCollateralSEQNO: TIntegerField;
    cdsCollateralSTOCKID: TIntegerField;
    cdsCollateralSTOCKCODE: TStringField;
    cdsCollateralSTOCKNAME: TStringField;
    cdsCollateralSHARES: TFloatField;
    cdsCollateralTODAY_VAL: TFloatField;
    cdsCollateralINSERT_DATE: TDateField;
    cdsCollateralMODDA: TDateTimeField;
    cdsCollateralMODUI: TStringField;
    cdsCollateralAPPDA: TDateTimeField;
    cdsCollateralAPPUI: TStringField;
    cdsCollateralUNDER4Y: TIntegerField;
    cdsCollateralUNDER4YDA: TDateTimeField;
    cdsCollateralNOTES4Y: TStringField;
    cdsCollateralISDEL: TIntegerField;
    cdsCollateralID: TLargeintField;
    cdsCollateralQTY: TLargeintField;
    cdsCollateralCLS_PRICE: TFloatField;
    cdsCollateralACCID: TLargeintField;
    cdsCollateralACCCODE: TStringField;
    cdsCollateralCOLL_AMT: TFloatField;

    cdsLuInstrument: TNClientDataset;
    cdsLuInstrumentINSTRUMENT_ID: TLargeintField;
    cdsLuInstrumentINSTRUMENT_CODE: TStringField;
    cdsLuInstrumentLOCALCODE: TStringField;
    cdsLuInstrumentMARKETCODE: TStringField;
    cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsLuInstrumentSHORTNAME: TStringField;
    cdsLuInstrumentISINCODE: TStringField;
    cdsLuInstrumentLASTCLSPRICE: TFloatField;
    dsRepoCollateral: TDataSource;

    dxLayoutControl7Group2: TdxLayoutGroup;
    cdsRepoContractDISCOUNT: TSmallintField;
    cdsRepoContractCORPACT: TSmallintField;
    cdsRepoContractListDISCOUNT: TSmallintField;
    cdsRepoContractListCORPACT: TSmallintField;

    procedure cdsRepoContract_DBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure cdsRepoContract_DBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsRepoContractINTERESTCODEChange(Sender: TField);
    procedure cdsRepoContract_DQTYChange(Sender: TField);
  private
    { Private declarations }
    clsPRICE : Double;
    collQTY_BE : Integer;

  public
    { Public declarations }
  end;

var
  frmRepoChangeCollateral: TfrmRepoChangeCollateral;

implementation

{$R *.dfm}
uses DataGlobal, DataLookup, FormRepoContractList, FormLuAccount, cxLookupDBGrid, DateUtils;

procedure TfrmRepoChangeCollateral.Button1Click(Sender: TObject);
var oForm : TfrmRepoContractList;
begin
  inherited;
  oForm := TfrmRepoContractList.Create(Nil);
  oForm.dsSubject.DataSet := cdsRepoContractList;
  if oForm.ShowModal = mrOK then
  begin
    cdsRepoContract.Close;
    cdsRepoContract.Params[0].AsInteger := cdsRepoContractListCONRID.AsInteger;
    cdsRepoContract.Open;

    cdsRepoContract_D.Close;
    cdsRepoContract_D.Open;

    cdsSTOCKONHAND.Close;
    cdsSTOCKONHAND.Params[0].Value := cdsRepoContractENTTID.AsInteger;
    cdsSTOCKONHAND.Open;

    cdsSTOCKONHAND_Edit.Close;
    cdsSTOCKONHAND_Edit.CreateDataSet;

      while not cdsSTOCKONHAND.Eof do
      begin
        cdsSTOCKONHAND_Edit.Append;
        cdsSTOCKONHAND_EditENTTID.AsLargeInt := cdsSTOCKONHANDENTTID.AsLargeInt;
        cdsSTOCKONHAND_EditACCID.AsLargeInt := cdsSTOCKONHANDACCID.AsLargeInt;
        cdsSTOCKONHAND_EditACCCODE.AsString := cdsSTOCKONHANDACCCODE.AsString;
        cdsSTOCKONHAND_EditSTOCKID.AsLargeInt := cdsSTOCKONHANDSTOCKID.AsLargeInt;
        cdsSTOCKONHAND_EditSTOCKCODE.AsString := cdsSTOCKONHANDSTOCKCODE.AsString;
        cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt := cdsSTOCKONHANDQTY_ONHAND.AsLargeInt;
        cdsSTOCKONHAND_EditEDIT.AsString := '0';
        cdsSTOCKONHAND_Edit.Post;

        cdsSTOCKONHAND.Next;
      end;

    cdsCollateral.Close;
    cdsCollateral.Params[0].Value := cdsRepoContractListCONRID.AsInteger;
    cdsCollateral.Open;

    btnOK.Enabled := true;
    cdsRepoContract.Edit;
    cdsRepoContract_D.Edit;
  end;
end;


procedure TfrmRepoChangeCollateral.Button4Click(Sender: TObject);
begin
  inherited;
    //if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHANDSTOCKID.AsInteger,[]) then
    if cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHAND_EditSTOCKID.AsInteger,[]) then
    begin
      clsPRICE := cdsLuInstrumentLASTCLSPRICE.AsFloat;
      cdsRepoContract_D.Append;
        cdsRepoContract_DCONRID.AsLargeInt := cdsRepoContractCONRID.AsLargeInt;
        cdsRepoContract_DSTOCKID.AsLargeInt := cdsSTOCKONHAND_EditSTOCKID.AsLargeInt;
        cdsRepoContract_DSTOCKCODE.AsString := cdsSTOCKONHAND_EditSTOCKCODE.AsString;
        cdsRepoContract_DQTY.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger;
        cdsRepoContract_DCLS_PRICE.AsFloat := clsPRICE;
        cdsRepoContract_DACCID.AsLargeInt := cdsSTOCKONHAND_EditACCID.AsLargeInt;
        cdsRepoContract_DACCCODE.AsString := cdsSTOCKONHAND_EditACCCODE.AsString;
      cdsRepoContract_D.Post;

      cdsRepoContract.Edit;
      cdsRepoContractCOLL_AMT.AsFloat := cdsRepoContractCOLL_AMT.AsFloat + (cdsRepoContract_DQTY.AsLargeInt * cdsRepoContract_DCLS_PRICE.AsFloat);
      cdsRepoContract.Post;

      cdsSTOCKONHAND_Edit.Edit;
      cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := 0;
      cdsSTOCKONHAND_Edit.Post;

      end
    else
      begin
        dmGlobal.ErrorMessage('Stock invalid, please check table instrument!');
        Abort;
      end;

end;

Procedure TfrmRepoChangeCollateral.Button5Click(Sender: TObject);
begin
  inherited;
  cdsSTOCKONHAND_Edit.Locate('STOCKID',cdsRepoContract_DSTOCKID.AsLargeInt,[]);
  cdsSTOCKONHAND_Edit.Edit;
    cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger + cdsRepoContract_DQTY.AsInteger;
  cdsSTOCKONHAND_Edit.Post;

  cdsRepoContract.Edit;
  cdsRepoContractCOLL_AMT.AsFloat := cdsRepoContractCOLL_AMT.AsFloat - (cdsRepoContract_DQTY.AsInteger * cdsRepoContract_DCLS_PRICE.AsFloat);
  cdsRepoContract.Post;

  cdsRepoContract_D.Delete;
end;

procedure TfrmRepoChangeCollateral.cdsRepoContract_DBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  collQTY_BE := cdsRepoContract_DQTY.AsInteger;
end;

procedure TfrmRepoChangeCollateral.cdsRepoContract_DBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsRepoContract_D.State in [dsEdit] then
  begin
     cdsRepoContractCOLL_AMT.AsFloat := cdsRepoContractCOLL_AMT.AsFloat + ((cdsRepoContract_DQTY.AsLargeInt - collQTY_BE) * cdsRepoContract_DCLS_PRICE.AsFloat);
  end;
end;

procedure TfrmRepoChangeCollateral.cdsRepoContract_DQTYChange(Sender: TField);
begin
  inherited;
     cdsSTOCKONHAND_Edit.Edit;
     cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger + (collQTY_BE - cdsCOLLATERALQTY.AsLargeInt);
     cdsSTOCKONHAND_Edit.Post;
end;

procedure TfrmRepoChangeCollateral.cdsRepoContractINTERESTCODEChange(
  Sender: TField);
begin
  inherited;
  cdsRepoContractINTERESTRATE.AsFloat := dmGlobal.IntDataLookup.cdsLuInterestINTERESTRATE.AsFloat/100;
  cdsRepoContractINTEREST_AMT.AsFloat := (cdsRepoContractINTERESTRATE.AsFloat / 100) * cdsRepoContractORG_AMT.AsFloat;
  cdsRepoContractREPO_AMT.AsFloat := cdsRepoContractINTEREST_AMT.AsFloat + cdsRepoContractORG_AMT.AsFloat;
  cdsRepoContractDUE_AMT.AsFloat := cdsRepoContractREPO_AMT.AsFloat;
end;

procedure TfrmRepoChangeCollateral.FormCreate(Sender: TObject);
begin
  inherited;
  cdsRepoContract.Close;
  cdsRepoContract.Open;
  cdsRepoContract.Active := true;

  cdsSTOCKONHAND.Close;
  cdsSTOCKONHAND.Open;

  cdsRepoContract_D.Close;
  cdsRepoContract_D.Open;

  cdsSTOCK_POS.Close;
  cdsSTOCK_POS.Open;

  cdsLuInstrument.Close;
  cdsLuInstrument.Open;

  cdsRepoContractList.Close;
  cdsRepoContractList.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuInterest.Close;
    cdsLuInterest.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;
end;

Initialization
  RegisterClass(TfrmRepoChangeCollateral);

end.
