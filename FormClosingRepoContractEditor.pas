unit FormClosingRepoContractEditor;

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
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  cxMemo, cxDBEdit, Vcl.StdCtrls, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, cxButtons, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient, NClientDataset;

type
  TfrmClosingRepoContractEditor = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    Button1: TButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item14: TdxLayoutItem;
    cdsCCR: TNClientDataset;
    cdsCollateral: TNClientDataset;
    dsCollateral: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cdsCCRCONRID: TLargeintField;
    cdsCCRCONTRACT_NO: TStringField;
    cdsCCRID: TLargeintField;
    cdsCCRENTTNAME: TStringField;
    cdsCCRTRXDATE: TDateTimeField;
    cdsCCRDUE_DATE: TDateTimeField;
    cdsCCRCON_DATE: TDateTimeField;
    cdsCCRCLS_DATE: TDateTimeField;
    cdsCCRACCCODE: TStringField;
    cdsCCRACCNAME: TStringField;
    cdsCCRSETTDATE: TDateTimeField;
    cdsCCRSETTDAY: TIntegerField;
    cdsCCRMATURDATE: TDateTimeField;
    cdsCCRCCY: TStringField;
    cdsCCRLOAN_AMT: TFloatField;
    cdsCCRORG_AMT: TFloatField;
    cdsCCRREPO_AMT: TFloatField;
    cdsCCRDUE_AMT: TFloatField;
    cdsCCRINTEREST_AMT: TFloatField;
    cdsCCRINTERESTRATE: TFloatField;
    cdsCCRNOTE: TStringField;
    cdsCCRMODDA: TDateTimeField;
    cdsCCRMODUI: TStringField;
    cdsCCRAPPDA: TDateTimeField;
    cdsCCRAPPUI: TStringField;
    cdsCCRUNDER4Y: TIntegerField;
    cdsCCRUNDER4YDA: TDateTimeField;
    cdsCCRNOTES4Y: TStringField;
    cdsCCRISDEL: TIntegerField;
    cdsCCRTOPUP: TFloatField;
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
    cxGrid1DBTableView1SEQNO: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKCODE: TcxGridDBColumn;
    cxGrid1DBTableView1TODAY_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1ACCCODE: TcxGridDBColumn;
    cxGrid1DBTableView1CLS_PRICE: TcxGridDBColumn;
    cdsRepoContractList: TNClientDataset;
    cdsRepoContractListCONRID: TLargeintField;
    cdsRepoContractListCONTRACT_NO: TStringField;
    cdsRepoContractListENTTID: TIntegerField;
    cdsRepoContractListENTTCODE: TStringField;
    cdsRepoContractListENTTNAME: TStringField;
    cdsRepoContractListTRXDATE: TDateTimeField;
    cdsRepoContractListTRXTYPE: TStringField;
    cdsRepoContractListACCID: TIntegerField;
    cdsRepoContractListACCCODE: TStringField;
    cdsRepoContractListACCNAME: TStringField;
    cdsRepoContractListRACCID: TIntegerField;
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
    Label1: TLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cdsCCRCOLL_AMT: TFloatField;
    cdsCollateralCOLL_AMT: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCCRReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingRepoContractEditor: TfrmClosingRepoContractEditor;

implementation
uses DataGlobal, DataLookup, FormRepoContractList, cxLookupDBGrid, DateUtils;
{$R *.dfm}

procedure TfrmClosingRepoContractEditor.Button1Click(Sender: TObject);
var oForm : TfrmRepoContractList;
begin
  inherited;
  if cdsCCR.ReadOnly then
    Exit;

  oForm := TfrmRepoContractList.Create(Nil);
  Try
    oForm.dsSubject.DataSet := cdsRepoContractList;
    if oForm.ShowModal = mrOK then
    begin
      if not (cdsCCR.State in dsEditModes) then
      begin
        if not cdsCCR.IsEmpty then
          cdsCCR.Edit
        else
          cdsCCR.Append;
      end;

      cdsCCRCONRID.AsLargeInt := cdsRepoContractListCONRID.AsLargeInt;
      cdsCCRCONTRACT_NO.AsString := cdsRepoContractListCONTRACT_NO.AsString;
      cdsCCRACCCODE.AsString := cdsRepoContractListACCCODE.AsString;
      cdsCCRACCNAME.AsString := cdsRepoContractListACCNAME.AsString;
      cdsCCRTRXDATE.AsDateTime := cdsRepoContractListTRXDATE.AsDateTime;
      cdsCCRSETTDATE.AsDateTime := cdsRepoContractListSETTDATE.AsDateTime;
      cdsCCRMATURDATE.AsDateTime := cdsRepoContractListMATURDATE.AsDateTime;
      cdsCCRSETTDAY.AsInteger := cdsRepoContractListSETTDAY.AsInteger;
      cdsCCRCCY.AsString := cdsRepoContractListCCY.AsString;
      cdsCCRREPO_AMT.AsFloat := cdsRepoContractListREPO_AMT.AsFloat;
      cdsCCRINTEREST_AMT.AsFloat := cdsRepoContractListINTEREST_AMT.AsFloat;
      cdsCCRDUE_AMT.AsFloat := cdsRepoContractListDUE_AMT.AsFloat;
      cdsCCRCOLL_AMT.AsFloat := cdsRepoContractListCOLL_AMT.AsFloat;
      cdsCCRINTERESTRATE.AsFloat := cdsRepoContractListINTERESTRATE.AsFloat;

      cdsCollateral.Close;
      cdsCollateral.Params[0].AsInteger := cdsCCRCONRID.AsInteger;
      cdsCollateral.Open;
  //    dsCollateral.DataSet.Refresh;

      btnOK.Enabled := true;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmClosingRepoContractEditor.cdsCCRReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmClosingRepoContractEditor.FormCreate(Sender: TObject);
begin
  inherited;
  cdsRepoContractList.Close;
  cdsRepoContractList.Open;
  btnOK.Enabled := false;
end;


procedure TfrmClosingRepoContractEditor.FormShow(Sender: TObject);
begin
  inherited;
  if cdsCCRCONRID.Value <> null  then
  begin
    cdsCollateral.Close;
    cdsCollateral.Params[0].AsInteger := cdsCCRCONRID.AsInteger;
    cdsCollateral.Open;
  end;
end;

Initialization
  RegisterClass(TfrmClosingRepoContractEditor);

end.
