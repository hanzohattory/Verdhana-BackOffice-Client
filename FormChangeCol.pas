unit FormChangeCol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Datasnap.DBClient, NClientDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxButtonEdit, cxImageComboBox, cxCurrencyEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, cxGridBandedTableView, cxGridDBBandedTableView,
  cxSpinEdit;

type
  TfrmChangeCol = class(TfrmEditorData)
    edAccCode: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edAccName: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    popDocking: TPopupMenu;
    cdsStockCompare: TNClientDataset;
    dsCollEdit: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cdsChangeColH: TNClientDataset;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsClosePrice: TNClientDataset;
    cdsClosePriceSTK_DATE: TDateField;
    cdsClosePriceSTK_CODE: TStringField;
    cdsClosePriceSTK_NAME: TStringField;
    cdsClosePriceSTK_PREV: TFloatField;
    cdsClosePriceSTK_HIGH: TFloatField;
    cdsClosePriceSTK_LOW: TFloatField;
    cdsClosePriceSTK_CLOS: TFloatField;
    cdsClosePriceSTK_VOLM: TFloatField;
    cdsClosePriceSTK_AMNT: TFloatField;
    cdsClosePriceSTK_INDX: TFloatField;
    cdsClosePriceSTK_PIDX: TFloatField;
    cdsClosePriceSTK_ASKP: TFloatField;
    cdsClosePriceSTK_ASKV: TFloatField;
    cdsClosePriceSTK_ASKF: TStringField;
    cdsClosePriceSTK_BIDP: TFloatField;
    cdsClosePriceSTK_BIDV: TFloatField;
    cdsClosePriceSTK_BIDF: TStringField;
    cdsClosePriceSTK_FHIG: TFloatField;
    cdsClosePriceSTK_FLOW: TFloatField;
    cdsClosePriceSTK_FCLO: TFloatField;
    cdsClosePriceSTK_OPEN: TFloatField;
    cdsClosePriceMODDA: TDateTimeField;
    cdsClosePriceMODUI: TStringField;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsChangeColD: TNClientDataset;
    cdsChangeColHCCOLID: TLargeintField;
    cdsChangeColHTRXDATE: TDateTimeField;
    cdsChangeColHACCID: TLargeintField;
    cdsChangeColHACCCODE: TStringField;
    cdsChangeColHACCNAME: TStringField;
    cdsChangeColHCONRID: TLargeintField;
    cdsChangeColHCONTRACT_NO: TStringField;
    cdsChangeColHEXISTCOLLATERAL: TFloatField;
    cdsChangeColHNEWCOLLATERAL: TFloatField;
    cdsChangeColHINPUTBY: TStringField;
    cdsChangeColHINPUTDATE: TDateTimeField;
    cdsChangeColHAPPROVEBY: TStringField;
    cdsChangeColHAPPROVEDATE: TDateTimeField;
    cdsChangeColHPOSTINGBY: TStringField;
    cdsChangeColHPOSTINGDATE: TDateTimeField;
    cdsChangeColHCCOLSTATUS: TStringField;
    cdsChangeColHMODDA: TDateTimeField;
    cdsChangeColHMODUI: TStringField;
    cdsChangeColHAPPDA: TDateTimeField;
    cdsChangeColHAPPUI: TStringField;
    cdsChangeColHUNDER4Y: TIntegerField;
    cdsChangeColHUNDER4YDA: TDateTimeField;
    cdsChangeColHNOTES4Y: TStringField;
    cdsChangeColHISDEL: TIntegerField;
    cdsChangeColHID: TLargeintField;
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
    cdsChangeColHqryChangeColD: TDataSetField;
    edExtCol: TcxDBCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edNewCol: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edContractNo: TcxDBButtonEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dtColDate: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsStockCompareENTTID: TIntegerField;
    cdsStockCompareENTTCODE: TStringField;
    cdsStockCompareACCCODE: TStringField;
    cdsStockCompareACCNAME: TStringField;
    cdsStockCompareHAIRCUT: TFloatField;
    cdsStockCompareLASTCLSPRICE: TFloatField;
    cdsStockCompareLASTCPPRICEDATE: TDateField;
    cdsStockCompareVALUEDATE: TDateField;
    cdsStockCompareACQDATE: TDateField;
    cdsStockCompareACCID: TLargeintField;
    cdsStockCompareACCSOPID: TLargeintField;
    cdsStockCompareACCNO: TStringField;
    cdsStockCompareSTOCKID: TIntegerField;
    cdsStockCompareSTOCKCODE: TStringField;
    cdsStockCompareAVGPRICE: TFloatField;
    cdsStockCompareQTY_CORPACT: TFloatField;
    cdsStockCompareQTY_ONHAND: TFloatField;
    cdsStockCompareQTY_OUTS: TFloatField;
    cdsStockCompareQTY_ONHOLD: TFloatField;
    cdsStockCompareQTY_BAL: TFloatField;
    cdsStockCompareQTY_OVERDUE: TFloatField;
    cdsStockCompareQTY_DLV: TFloatField;
    cdsStockCompareQTY_RCV: TFloatField;
    cdsStockComparePROFIT_LOSS: TFloatField;
    cdsStockCompareBUY_VAL: TFloatField;
    cdsStockCompareSELL_VAL: TFloatField;
    cdsStockCompareQTY_WARKAT: TFloatField;
    cdsStockCompareSTK_WDR: TFloatField;
    cdsStockCompareQTY: TLargeintField;
    cdsEditChangeCol: TClientDataSet;
    cdsEditChangeColSTOCKID: TIntegerField;
    cdsEditChangeColSTOCKCODE: TStringField;
    cdsEditChangeColSTOCKNAME: TStringField;
    cdsEditChangeColQTYREG: TLargeintField;
    cdsEditChangeColQTYREPO: TIntegerField;
    cdsEditChangeColHAIRCUT: TFloatField;
    cdsEditChangeColCLSPRC: TFloatField;
    cdsEditChangeColCOLLATERAL: TFloatField;
    cdsEditChangeColNEWQTY: TFloatField;
    cdsEditChangeColQTYTYPE: TStringField;
    gvwChangeColl: TcxGridDBBandedTableView;
    gvwChangeCollSTOCKID: TcxGridDBBandedColumn;
    gvwChangeCollSTOCKCODE: TcxGridDBBandedColumn;
    gvwChangeCollSTOCKNAME: TcxGridDBBandedColumn;
    gvwChangeCollQTYREG: TcxGridDBBandedColumn;
    gvwChangeCollQTYREPO: TcxGridDBBandedColumn;
    gvwChangeCollHAIRCUT: TcxGridDBBandedColumn;
    gvwChangeCollCLSPRC: TcxGridDBBandedColumn;
    gvwChangeCollCOLLATERAL: TcxGridDBBandedColumn;
    gvwChangeCollNEWQTY: TcxGridDBBandedColumn;
    gvwChangeCollQTYTYPE: TcxGridDBBandedColumn;
    cdsEditChangeColMOVEQTY: TFloatField;
    gvwChangeCollMOVEQTY: TcxGridDBBandedColumn;
    cdsEditChangeColCURCOLLATERAL: TFloatField;
    cdsSum: TClientDataSet;
    cdsSumNEWCOL: TFloatField;
    cdsSumOLDCOL: TFloatField;
    cdsSumCURRATIO: TFloatField;
    cdsSumEXPRATIO: TFloatField;
    cdsOCRTRXDATE: TDateTimeField;
    cdsSumSETTLDATE: TDateTimeField;
    cdsSumDUEDATE: TDateTimeField;
    cdsSumORIG_AMOUNT: TFloatField;
    cdsSumINTR_AMOUNT: TFloatField;
    cdsSumDUE_AMOUNT: TFloatField;
    cdsSumINITRATIO: TFloatField;
    cdsSumCALLRATIO: TFloatField;
    cdsSumFSELLRATIO: TFloatField;
    cdsSumINTEREST: TFloatField;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dsSum: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsStockCompareSHORTNAME: TStringField;
    cdsChangeColHAPPROVE: TStringField;
    cdsChangeColHPOSTED: TStringField;
    cdsSumREPO_AMT: TFloatField;
    cdsChangeColHCOLLATERAL: TAggregateField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edContractNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsStockCompareQTYChange(Sender: TField);
    procedure cdsStockCompareBeforePost(DataSet: TDataSet);
    procedure cdsStockCompareBeforeEdit(DataSet: TDataSet);
    procedure cdsStockCompareNewRecord(DataSet: TDataSet);
    procedure cdsChangeColHAfterOpen(DataSet: TDataSet);
    procedure cdsEditChangeColQTYREPOChange(Sender: TField);
    procedure cdsEditChangeColMOVEQTYChange(Sender: TField);
    procedure cdsEditChangeColBeforePost(DataSet: TDataSet);
    procedure cdsEditChangeColBeforeEdit(DataSet: TDataSet);
    procedure cdsEditChangeColNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsChangeColHNewRecord(DataSet: TDataSet);
    procedure cdsSumOLDCOLChange(Sender: TField);
    procedure cdsSumNEWCOLChange(Sender: TField);
  private
    { Private declarations }
    FOldQTYTYPE: String;
    FOldQTY: Double;
    CONRID: Integer;
    ACCID: Integer;
    CCOLID : Integer;
    Count : integer;

    FBefNewCol: Double;
    FBefOldCol: Double;
  public
    { Public declarations }
    procedure refreshdata;
  end;

var
  frmChangeCol: TfrmChangeCol;

implementation

{$R *.dfm}

uses DataGlobal, FormChangeColList, DataLookup, FormLuContRepo,
  ClassClientConst;

procedure TfrmChangeCol.cdsChangeColHAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSum.Close;
  cdsSum.CreateDataSet;

  cdsEditChangeCol.Close;
  cdsEditChangeCol.CreateDataSet;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuContRepo.Close;
    cdsLuContRepo.Open;

    if not cdsChangeColH.IsEmpty then
    begin

      if cdsLuContRepo.Locate('CONRID', VarArrayOf([cdsChangeColHCONRID.AsInteger]), []) then
      begin
        if cdsSum.IsEmpty then cdsSum.Append
        else
        begin
          if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
        end;

        cdsSumREPO_AMT.AsFloat := cdsLuContRepoREPO_AMT.AsFloat;
        cdsSumSETTLDATE.AsDateTime := cdsLuContRepoSETTDATE.AsDateTime;
        cdsSumDUEDATE.AsDateTime := cdsLuContRepoDUE_DATE.AsDateTime;
        cdsSumORIG_AMOUNT.AsFloat := cdsLuContRepoORG_AMT.AsFloat;
        cdsSumINTR_AMOUNT.AsFloat := cdsLuContRepoINTEREST_AMT.AsFloat;
        cdsSumDUE_AMOUNT.AsFloat := cdsLuContRepoDUE_AMT.AsFloat;
        cdsSumINTEREST.AsFloat := cdsLuContRepoINTERESTRATE.AsFloat;
        cdsSumINITRATIO.AsFloat := cdsLuContRepoAPR_COLL.AsFloat;
        cdsSumCALLRATIO.AsFloat := cdsLuContRepoCOLL_CALL.AsFloat;
        cdsSumFSELLRATIO.AsFloat := cdsLuContRepoFORCESELL.AsFloat;


        cdsStockCompare.Close;
        cdsStockCompare.Params[0].AsInteger := cdsLuContRepoENTTID.AsInteger;
        cdsStockCompare.Params[1].AsInteger := cdsLuContRepoCONRID.AsInteger;
        cdsStockCompare.Open;

        if not cdsStockCompare.IsEmpty then
        begin
          while not cdsStockCompare.Eof do
          begin
            cdsEditChangeCol.Append;
            cdsEditChangeColSTOCKID.AsInteger := cdsStockCompareSTOCKID.AsInteger;
            cdsEditChangeColSTOCKCODE.AsString := cdsStockCompareSTOCKCODE.AsString;
            cdsEditChangeColHAIRCUT.AsFloat := cdsStockCompareHAIRCUT.AsFloat;
            cdsEditChangeColCLSPRC.AsFloat := cdsStockCompareLASTCLSPRICE.AsFloat;
            cdsEditChangeColQTYREG.AsFloat := cdsStockCompareQTY_BAL.AsFloat;
            cdsEditChangeColQTYREPO.AsFloat := cdsStockCompareQTY.AsFloat;
            cdsEditChangeColSTOCKNAME.AsString := cdsStockCompareSHORTNAME.AsString;

            if cdsChangeColD.Locate('STOCKID;ACCID', VarArrayOf([cdsEditChangeColSTOCKID.Value, cdsChangeColHACCID.Value]), []) then
            begin
              cdsEditChangeColQTYTYPE.AsString := cdsChangeColDIN_OUT.AsString;
              cdsEditChangeColMOVEQTY.AsFloat := cdsChangeColDSHARES.AsFloat;
            end;

            cdsEditChangeCol.Post;

            cdsStockCompare.Next;
          end;

        end;

      end;

    end;
  end;

end;

procedure TfrmChangeCol.cdsChangeColHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsChangeColHCCOLID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_REPO_CHANGE_COL');
  cdsChangeColHAPPROVE.AsString := '0';
  cdsChangeColHPOSTED.AsString := '0';
  cdsChangeColHTRXDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmChangeCol.cdsEditChangeColBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBefNewCol := cdsEditChangeColCOLLATERAL.AsFloat;
  FBefOldCol := cdsEditChangeColCURCOLLATERAL.AsFloat;
end;

procedure TfrmChangeCol.cdsEditChangeColBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsSum.IsEmpty then cdsSum.Append
  else
  begin
    if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
  end;
  cdsSumNEWCOL.AsFloat := cdsSumNEWCOL.AsFloat + (cdsEditChangeColCOLLATERAL.AsFloat - FBefNewCol);
  cdsSumOLDCOL.AsFloat := cdsSumOLDCOL.AsFloat + (cdsEditChangeColCURCOLLATERAL.AsFloat - FBefOldCol);
  cdsSum.Post;

  if Not ((cdsEditChangeColQTYTYPE.AsString = 'I') or (cdsEditChangeColQTYTYPE.AsString = 'O')) then
  begin
    cdsEditChangeColQTYTYPE.Clear;
  end;
end;

procedure TfrmChangeCol.cdsEditChangeColMOVEQTYChange(Sender: TField);
begin
  inherited;
  if (cdsEditChangeCol.State in [dsEdit, dsInsert]) then
  begin
    if cdsEditChangeColQTYTYPE.AsString = 'I' then
    begin
      cdsEditChangeColNEWQTY.AsFloat := cdsEditChangeColQTYREPO.AsInteger +
        cdsEditChangeColMOVEQTY.AsInteger;
      cdsEditChangeColCOLLATERAL.AsFloat := (cdsEditChangeColNEWQTY.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));
    end
    else if cdsEditChangeColQTYTYPE.AsString = 'O' then
    begin
      cdsEditChangeColNEWQTY.AsFloat := cdsEditChangeColQTYREPO.AsInteger -
        cdsEditChangeColMOVEQTY.AsInteger;
      cdsEditChangeColCOLLATERAL.AsFloat := (cdsEditChangeColNEWQTY.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));
    end
    else
    begin
      cdsEditChangeColNEWQTY.AsFloat := cdsEditChangeColQTYREPO.AsInteger;
      cdsEditChangeColCOLLATERAL.AsFloat := (cdsEditChangeColNEWQTY.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));

    end;
  end;
end;

procedure TfrmChangeCol.cdsEditChangeColNewRecord(DataSet: TDataSet);
begin
  inherited;
  FBefNewCol := 0;
  FBefOldCol := 0;
end;

procedure TfrmChangeCol.cdsEditChangeColQTYREPOChange(Sender: TField);
begin
  inherited;
  if (cdsEditChangeCol.State in [dsEdit, dsInsert]) then
  begin
    if cdsEditChangeColQTYTYPE.AsString = 'I' then
    begin
      cdsEditChangeColNEWQTY.AsFloat := cdsEditChangeColQTYREPO.AsInteger +
        cdsEditChangeColMOVEQTY.AsInteger;
      cdsEditChangeColCOLLATERAL.AsFloat := (cdsEditChangeColNEWQTY.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));
    end
    else if cdsEditChangeColQTYTYPE.AsString = 'O' then
    begin
      cdsEditChangeColNEWQTY.AsFloat := cdsEditChangeColQTYREPO.AsInteger -
        cdsEditChangeColMOVEQTY.AsInteger;
      cdsEditChangeColCOLLATERAL.AsFloat := (cdsEditChangeColNEWQTY.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));
    end
    else
    begin
      cdsEditChangeColNEWQTY.AsFloat := cdsEditChangeColQTYREPO.AsInteger;
      cdsEditChangeColCOLLATERAL.AsFloat := (cdsEditChangeColNEWQTY.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));

    end;

    cdsEditChangeColCURCOLLATERAL.AsFloat := (cdsEditChangeColQTYREPO.AsInteger * cdsEditChangeColCLSPRC.AsFloat * (cdsEditChangeColHAIRCUT.AsFloat/100));

  end;

end;

procedure TfrmChangeCol.cdsStockCompareBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  FOldQTYTYPE := cdsStockCompareQTYTYPE.AsString;
//  FOldQTY := cdsStockCompareQTY.AsFloat;
end;

procedure TfrmChangeCol.cdsStockCompareBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if not (dsSubject.DataSet.State in [dsBrowse]) then
//  begin
//    inc(Count);
//    if (cdsStockCompareQTYTYPE.AsString = 'O') and (cdsStockCompareQTYRP.AsFloat < cdsStockCompareQTY.AsFloat) then
//      cdsStockCompareQTY.AsFloat := 0
//    else if (cdsStockCompareQTYTYPE.AsString = 'I') and (cdsStockCompareQTYREG.AsFloat < cdsStockCompareQTY.AsFloat) then
//      cdsStockCompareQTY.AsFloat := 0;
//
//    if not (cdsChangeColH.State in dsEditModes) then
//    begin
//      if not cdsChangeColH.IsEmpty then
//        cdsChangeColH.Edit
//      else
//        cdsChangeColH.Insert;
//    end;
//
//    cdsClosePrice.close;
//    cdsClosePrice.Params[0].AsDate := dtColDate.Date;
//    cdsClosePrice.Params[1].AsString := cdsStockComparestockcode.AsString;
//    cdsClosePrice.open;
//
//    if (cdsStockCompareQTYTYPE.AsString = 'O') then
//    begin
//      if (cdsStockCompare.State in [dsInsert]) or (FOldQTYTYPE = '') then
//        cdsChangeColHNEWCOLLATERAL.AsFloat := cdsChangeColHNEWCOLLATERAL.AsFloat - (cdsStockCompareQTY.AsFloat * cdsClosePriceSTK_CLOS.AsFloat)
//      else if (cdsStockCompare.State in [dsEdit]) and (Count > cdsStockCompare.RecordCount) then
//      begin
//        if cdsStockCompareQTYTYPE.AsString = FOldQTYTYPE then
//          cdsChangeColHNEWCOLLATERAL.AsFloat := cdsChangeColHNEWCOLLATERAL.AsFloat + (FOldQTY * cdsClosePriceSTK_CLOS.AsFloat) - (cdsStockCompareQTY.AsFloat * cdsClosePriceSTK_CLOS.AsFloat)
//        else
//          cdsChangeColHNEWCOLLATERAL.AsFloat := cdsChangeColHNEWCOLLATERAL.AsFloat - (FOldQTY * cdsClosePriceSTK_CLOS.AsFloat) - (cdsStockCompareQTY.AsFloat * cdsClosePriceSTK_CLOS.AsFloat)
//      end
//    end
//    else if (cdsStockCompareQTYTYPE.AsString = 'I') then
//    begin
//      if (cdsStockCompare.State in [dsInsert]) or (FOldQTYTYPE = '') then
//        cdsChangeColHNEWCOLLATERAL.AsFloat := cdsChangeColHNEWCOLLATERAL.AsFloat + (cdsStockCompareQTY.AsFloat * cdsClosePriceSTK_CLOS.AsFloat)
//      else if (cdsStockCompare.State in [dsEdit]) and (Count > cdsStockCompare.RecordCount) then
//      begin
//        if cdsStockCompareQTYTYPE.AsString = FOldQTYTYPE then
//          cdsChangeColHNEWCOLLATERAL.AsFloat := cdsChangeColHNEWCOLLATERAL.AsFloat - (FOldQTY * cdsClosePriceSTK_CLOS.AsFloat) + (cdsStockCompareQTY.AsFloat * cdsClosePriceSTK_CLOS.AsFloat)
//        else
//          cdsChangeColHNEWCOLLATERAL.AsFloat := cdsChangeColHNEWCOLLATERAL.AsFloat + (FOldQTY * cdsClosePriceSTK_CLOS.AsFloat) + (cdsStockCompareQTY.AsFloat * cdsClosePriceSTK_CLOS.AsFloat)
//      end;
//    end;
//    dsSubject.DataSet.FieldByName('NEWCOLLATERAL').AsFloat := cdsChangeColHNewCollateral.AsFloat;
//  end;

end;

procedure TfrmChangeCol.cdsStockCompareNewRecord(DataSet: TDataSet);
begin
  inherited;
//  cdsStockCompareQTYTYPE.AsString := 'I';
end;

procedure TfrmChangeCol.cdsStockCompareQTYChange(Sender: TField);
begin
  inherited;
//  if (cdsStockCompareQTYTYPE.AsString = 'O') and (cdsStockCompareQTYRP.AsFloat < cdsStockCompareQTY.AsFloat) then
//  cdsStockCompareQTY.AsFloat := 0;
//  sumNewCol;

end;

procedure TfrmChangeCol.cdsSumNEWCOLChange(Sender: TField);
begin
  inherited;
  if cdsSumREPO_AMT.AsFloat > 0 then
  begin
    cdsSumEXPRATIO.AsFloat := cdsSumNEWCOL.AsFloat / cdsSumREPO_AMT.AsFloat * 100;
  end;
end;

procedure TfrmChangeCol.cdsSumOLDCOLChange(Sender: TField);
begin
  inherited;
  if cdsSumREPO_AMT.AsFloat > 0 then
  begin
    cdsSumCURRATIO.AsFloat := cdsSumOLDCOL.AsFloat / cdsSumREPO_AMT.AsFloat * 100;
  end;
end;

procedure TfrmChangeCol.edContractNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oFrmLU: TfrmLuContRepo;
begin
  inherited;
//  if (dsSubject.DataSet.State in [dsInsert]) then

  with dmGlobal.IntDataLookup do
  begin
    oFrmLU := TfrmLuContRepo.Create(nil);
    if oFrmLU.ShowModal = mrOk then
    begin
      cdsChangeColHCONRID.Value := cdsLuContRepoCONRID.Value;
      cdsChangeColHCONTRACT_NO.Value := cdsLuContRepoCONTRACT_NO.Value;
      cdsChangeColHTRXDATE.Value := cdsLuContRepoTRXDATE.Value;
      cdsChangeColHACCID.Value := cdsLuContRepoRACCID.Value;
      cdsChangeColHACCCODE.Value := cdsLuContRepoACCCODE.Value;
      cdsChangeColHACCNAME.Value := cdsLuContRepoACCNAME.Value;

      if cdsSum.IsEmpty then cdsSum.Append
      else
      begin
        if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
      end;

      cdsSumREPO_AMT.AsFloat := cdsLuContRepoREPO_AMT.AsFloat;
      cdsSumSETTLDATE.AsDateTime := cdsLuContRepoSETTDATE.AsDateTime;
      cdsSumDUEDATE.AsDateTime := cdsLuContRepoDUE_DATE.AsDateTime;
      cdsSumORIG_AMOUNT.AsFloat := cdsLuContRepoORG_AMT.AsFloat;
      cdsSumINTR_AMOUNT.AsFloat := cdsLuContRepoINTEREST_AMT.AsFloat;
      cdsSumDUE_AMOUNT.AsFloat := cdsLuContRepoDUE_AMT.AsFloat;
      cdsSumINTEREST.AsFloat := cdsLuContRepoINTERESTRATE.AsFloat;
      cdsSumINITRATIO.AsFloat := cdsLuContRepoAPR_COLL.AsFloat;
      cdsSumCALLRATIO.AsFloat := cdsLuContRepoCOLL_CALL.AsFloat;
      cdsSumFSELLRATIO.AsFloat := cdsLuContRepoFORCESELL.AsFloat;


      cdsStockCompare.Close;
      cdsStockCompare.Params[0].AsInteger := cdsLuContRepoENTTID.AsInteger;
      cdsStockCompare.Params[1].AsInteger := cdsLuContRepoCONRID.AsInteger;
      cdsStockCompare.Open;

      if not cdsStockCompare.IsEmpty then
      begin
        while not cdsStockCompare.Eof do
        begin
          cdsEditChangeCol.Append;
          cdsEditChangeColSTOCKID.AsInteger := cdsStockCompareSTOCKID.AsInteger;
          cdsEditChangeColSTOCKCODE.AsString := cdsStockCompareSTOCKCODE.AsString;
          cdsEditChangeColSTOCKCODE.AsString := cdsStockCompareSTOCKCODE.AsString;
          cdsEditChangeColHAIRCUT.AsFloat := cdsStockCompareHAIRCUT.AsFloat;
          cdsEditChangeColCLSPRC.AsFloat := cdsStockCompareLASTCLSPRICE.AsFloat;
          cdsEditChangeColQTYREG.AsFloat := cdsStockCompareQTY_BAL.AsFloat;
          cdsEditChangeColQTYREPO.AsFloat := cdsStockCompareQTY.AsFloat;
          cdsEditChangeColSTOCKNAME.AsString := cdsStockCompareSHORTNAME.AsString;
          cdsEditChangeCol.Post;

          cdsStockCompare.Next;
        end;

      end;
    end;

    oFrmLU.Free;

  end;
end;

procedure TfrmChangeCol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (ModalResult=mrOk) then
  begin
    if (self.State in [pkCreate, pkUpdate]) then
    begin
      if not (cdsChangeColH.State in dsEditModes) then
        cdsChangeColH.Edit;

      cdsChangeColHEXISTCOLLATERAL.AsFloat := cdsSumOLDCOL.AsFloat;
      cdsChangeColHNEWCOLLATERAL.AsFloat := cdsSumNEWCOL.AsFloat;

      cdsEditChangeCol.DisableControls;
      cdsEditChangeCol.First;

      while not cdsEditChangeCol.Eof do
      begin

        if cdsChangeColD.Locate('STOCKID;ACCID', VarArrayOf([cdsEditChangeColSTOCKID.Value, cdsChangeColHACCID.Value]), []) then
        begin
          if (cdsEditChangeColMOVEQTY.AsFloat > 0) and
            ((cdsEditChangeColQTYTYPE.AsString = 'I') or (cdsEditChangeColQTYTYPE.AsString = 'O')) then
          begin
            cdsChangeColD.Edit;
            cdsChangeColDSHARES.AsFloat := cdsEditChangeColMOVEQTY.AsFloat;
            cdsChangeColDCLS_PRICE.AsFloat := cdsEditChangeColCLSPRC.AsFloat;
            cdsChangeColDCOLL_AMT.AsFloat := cdsEditChangeColCOLLATERAL.AsFloat;
            cdsChangeColDACCID.AsInteger := cdsChangeColHACCID.AsInteger;
            cdsChangeColDACCCODE.AsString := cdsChangeColHACCCODE.AsString;
            cdsChangeColDIN_OUT.AsString := cdsEditChangeColQTYTYPE.AsString;
            cdsChangeColD.Post;
          end
          else
          begin
            cdsChangeColD.Delete;
          end;
        end
        else
        begin
          if (cdsEditChangeColMOVEQTY.AsFloat > 0) and
            ((cdsEditChangeColQTYTYPE.AsString = 'I') or (cdsEditChangeColQTYTYPE.AsString = 'O')) then
          begin
            cdsChangeColD.Append;
            cdsChangeColDCCOLID.Value := cdsChangeColHCCOLID.Value;
            cdsChangeColDSTOCKID.AsInteger := cdsEditChangeColSTOCKID.AsInteger;
            cdsChangeColDSTOCKCODE.AsString := cdsEditChangeColSTOCKCODE.AsString;
            cdsChangeColDSTOCKNAME.AsString := cdsEditChangeColSTOCKNAME.AsString;
            cdsChangeColDSHARES.AsFloat := cdsEditChangeColMOVEQTY.AsFloat;
            cdsChangeColDCLS_PRICE.AsFloat := cdsEditChangeColCLSPRC.AsFloat;
            cdsChangeColDCOLL_AMT.AsFloat := cdsEditChangeColCOLLATERAL.AsFloat;
            cdsChangeColDACCID.AsInteger := cdsChangeColHACCID.AsInteger;
            cdsChangeColDACCCODE.AsString := cdsChangeColHACCCODE.AsString;
            cdsChangeColDIN_OUT.AsString := cdsEditChangeColQTYTYPE.AsString;
            cdsChangeColD.Post;
          end;

        end;

        cdsEditChangeCol.Next;

      end;

      cdsEditChangeCol.EnableControls;

    end;


  end;

end;

procedure TfrmChangeCol.FormCreate(Sender: TObject);
begin
  inherited;
  CONRID := 0;
  ACCID := 0;
  Count := 0;
end;

procedure TfrmChangeCol.FormShow(Sender: TObject);
begin
    inherited;
    CONRID := dsSubject.DataSet.FieldByName('CONRID').AsInteger;
    if not (dsSubject.DataSet.State in [dsInsert]) then
    begin
//      edContractNo.EditValue := dsSubject.DataSet.FieldByName('CONTRACT_NO').AsString;
//      dtColDate.Date := dsSubject.DataSet.FieldByName('TRXDATE').AsDateTime;
      dtColDate.Properties.ReadOnly := True;

      refreshdata;
    end
    else
    begin
//      CCOLID := dmglobal.RemoteServer.GetSeq('TBL_B_REPO_CHANGE_COL');
//      dsSubject.Dataset.FieldByName('CCOLID').AsInteger := CCOLID;
//      dsSubject.DataSet.FieldByName('TRXDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
      refreshdata;
      dtColDate.Properties.ReadOnly := False;

    end;


end;

procedure TfrmChangeCol.refreshdata;
var
  status : boolean;
begin

  with dmGlobal.IntDataLookup do
  begin
    cdsStockCompare.Close;
    cdsStockCompare.Params[0].AsInteger :=  cdsLuContRepoENTTID.AsInteger;
    cdsStockCompare.Params[1].AsInteger := cdsLuContRepoCONRID.AsInteger;
    cdsStockCompare.Open;


//    cdsChangeColH.Close;
//    if not (dsSubject.DataSet.State in [dsInsert]) then
//      cdsChangeColH.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CCOLID').AsInteger
//    else
//      cdsChangeColH.Params[0].AsInteger := -1;
//    cdsChangeColH.Open;
//
//    cdsChangeColD.Close;
//    if not (dsSubject.DataSet.State in [dsInsert]) then
//      cdsChangeColD.Params[0].AsInteger := cdsChangeColHCCOLID.AsInteger
//    else
//      cdsChangeColD.Params[0].AsInteger := -1;
//    cdsChangeColD.Open;


//    cdsStockCompare.DisableControls;
//    cdsStockCompare.First;
//    while not cdsStockCompare.Eof do
//    begin
//      if cdsChangeColD.Locate('STOCKID',cdsStockComparestockid.AsInteger,[]) then
//      begin
//        cdsStockCompare.Edit;
//        cdsStockCompareQTY.AsFloat := cdsChangeColDSHARES.AsFloat;
//        cdsStockCompareQTYTYPE.AsString := cdsChangeColDIN_OUT.asString;
//        cdsStockCompare.Post;
//      end;
//
//      cdsClosePrice.close;
//      if dsSubject.DataSet.State in [dsInsert] then
//      cdsClosePrice.Params[0].AsDate := dmglobal.RemoteServer.GetTransDate
//      else
//      cdsClosePrice.Params[0].AsDate := cdsChangeColHTRXDATE.AsDateTime;
//
//      cdsClosePrice.Params[1].AsString := cdsStockComparestockcode.AsString;
//      cdsClosePrice.open;
//
//      if dsSubject.dataset.State in [dsinsert] then
//      dsSubject.DataSet.FieldByName('EXISTCOLLATERAL').AsFloat := dsSubject.DataSet.FieldByName('EXISTCOLLATERAL').AsFloat + (cdsClosepriceSTK_CLOS.AsFloat * cdsStockCompareQTYRP.AsFloat);
//
//      cdsStockCompare.Next
//    end;
//    cdsStockCompare.EnableControls;
  end;
end;

end.
