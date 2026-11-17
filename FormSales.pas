unit FormSales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxCurrencyEdit, Datasnap.DBClient, NClientDataset,
  dxLayoutLookAndFeels, cxClasses, cxMemo;

type
  TfrmSales = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    luIDTYpe: TcxDBComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cdsSales: TNClientDataset;
    cdsSalesSALESID: TLargeintField;
    cdsSalesSALESCODE: TStringField;
    cdsSalesEMPID: TLargeintField;
    cdsSalesAGENT_ID: TLargeintField;
    cdsSalesSALESNAME: TStringField;
    cdsSalesEXT: TStringField;
    cdsSalesDEALERID: TLargeintField;
    cdsSalesBRANCHID: TLargeintField;
    cdsSalesADDRESS1: TStringField;
    cdsSalesADDRESS2: TStringField;
    cdsSalesADDRESS3: TStringField;
    cdsSalesPHONE: TStringField;
    cdsSalesMOBILEPHONE: TStringField;
    cdsSalesFAX: TStringField;
    cdsSalesIDNUMBER: TStringField;
    cdsSalesIDTYPE: TStringField;
    cdsSalesEMAIL: TStringField;
    cdsSalesSHRCOMM: TFloatField;
    cdsSalesSALESTYPE: TStringField;
    cdsSalesUSERID: TStringField;
    cdsSalesHARDLIMIT: TFloatField;
    cdsSalesSOFTLIMIT: TFloatField;
    cdsSalesTEMPLIMIT: TFloatField;
    cdsSalesMODDA: TDateTimeField;
    cdsSalesMODUI: TStringField;
    cdsSalesAPPDA: TDateTimeField;
    cdsSalesAPPUI: TStringField;
    cdsSalesUNDER4Y: TIntegerField;
    cdsSalesUNDER4YDA: TDateTimeField;
    cdsSalesNOTES4Y: TStringField;
    cdsSalesISDEL: TIntegerField;
    cdsSalesID: TLargeintField;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutControl1Item22: TdxLayoutItem;
    cdsSalesCOMM_SHARE_ID_N: TIntegerField;
    cdsSalesCOMM_SHARE_ID_I: TIntegerField;
    cdsSalesCOMM_SHARE_ID_E: TIntegerField;
    cdsSalesCOMM_SHARE_ID_B: TIntegerField;
    btnRefN: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Item23: TdxLayoutItem;
    btnRefI: TcxButton;
    dxLayoutControl1Item24: TdxLayoutItem;
    btnRefE: TcxButton;
    dxLayoutControl1Item25: TdxLayoutItem;
    btnRefB: TcxButton;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    procedure cdsSalesNewRecord(DataSet: TDataSet);
    procedure cdsSalesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnRefNClick(Sender: TObject);
    procedure btnRefIClick(Sender: TObject);
    procedure btnRefEClick(Sender: TObject);
    procedure btnRefBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSales: TfrmSales;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormSalesList, FormCommShare, ClassClientConst;

procedure TfrmSales.btnRefBClick(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if cdsSalesCOMM_SHARE_ID_B.IsNull then
    Exit;

  sKey := cdsSalesCOMM_SHARE_ID_B.AsString;
  dmGlobal.ShowEditorForm(TfrmCommShare, sKey, pkRead);
end;

procedure TfrmSales.btnRefEClick(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if cdsSalesCOMM_SHARE_ID_E.IsNull then
    Exit;

  sKey := cdsSalesCOMM_SHARE_ID_E.AsString;
  dmGlobal.ShowEditorForm(TfrmCommShare, sKey, pkRead);
end;

procedure TfrmSales.btnRefIClick(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if cdsSalesCOMM_SHARE_ID_I.IsNull then
    Exit;

  sKey := cdsSalesCOMM_SHARE_ID_I.AsString;
  dmGlobal.ShowEditorForm(TfrmCommShare, sKey, pkRead);
end;

procedure TfrmSales.btnRefNClick(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if cdsSalesCOMM_SHARE_ID_N.IsNull then
    Exit;

  sKey := cdsSalesCOMM_SHARE_ID_N.AsString;
  dmGlobal.ShowEditorForm(TfrmCommShare, sKey, pkRead);
end;

procedure TfrmSales.cdsSalesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsSales.State in [dsInsert] then
  begin
    if (cdsSalesSALESID.AsLargeInt = -1) or (cdsSalesSALESID.IsNull) then
      cdsSalesSALESID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_SALES');
  end;
end;

procedure TfrmSales.cdsSalesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSalesSALESID.AsLargeInt := -1;
end;

procedure TfrmSales.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCommShare.Active then
      cdsLuCommShare.Open
    else
      cdsLuCommShare.Refresh;
  end;
end;

Initialization
  RegisterClass(TfrmSales);

end.
