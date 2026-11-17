unit FormDeposito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxCurrencyEdit;

type
  TfrmDeposito = class(TfrmEditorData)
    cdsDeposito: TNClientDataset;
    cdsDepositoDEPOSITO_ID: TLargeintField;
    cdsDepositoDEPOSITO_CODE: TStringField;
    cdsDepositoBNCODE: TStringField;
    cdsDepositoREFERENCE_NO: TStringField;
    cdsDepositoDEPOSITO_OPENDATE: TDateField;
    cdsDepositoDEPOSITO_MATURITYDATE: TDateField;
    cdsDepositoCCYCODE: TStringField;
    cdsDepositoEXCHRATE: TFloatField;
    cdsDepositoDEPOSITO_AMOUNT: TFloatField;
    cdsDepositoDEPOSITO_EXCHAMOUNT: TFloatField;
    cdsDepositoSTAT: TStringField;
    cdsDepositoCREATED_DATE: TDateTimeField;
    cdsDepositoCREATED_SYSDATE: TDateTimeField;
    cdsDepositoCREATED_UI: TStringField;
    cdsDepositoAPPROVED_DATE: TDateTimeField;
    cdsDepositoAPPROVED_SYSDATE: TDateTimeField;
    cdsDepositoAPPROVED_UI: TStringField;
    cdsDepositoCLOSED_DATE: TDateTimeField;
    cdsDepositoCLOSED_SYSDATE: TDateTimeField;
    cdsDepositoCLOSED_UI: TStringField;
    cdsDepositoCANCELED_DATE: TDateTimeField;
    cdsDepositoCANCELED_SYSDATE: TDateTimeField;
    cdsDepositoCANCELED_UI: TStringField;
    cdsDepositoCANCELED_NOTES: TStringField;
    cdsDepositoMODDA: TDateTimeField;
    cdsDepositoMODUI: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsDepositoBNNAME: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure cdsDepositoNewRecord(DataSet: TDataSet);
    procedure cdsDepositoBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDepositoDEPOSITO_AMOUNTChange(Sender: TField);
  private
    { Private declarations }
    fSystemDate : TDateTime;
  public
    { Public declarations }
  end;

var
  frmDeposito: TfrmDeposito;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmDeposito.cdsDepositoBeforePost(DataSet: TDataSet);
var
  iSeq: Int64;
  sCode: string;
  dtServerTimeStamp: TDateTime;
begin
  if cdsDepositoDEPOSITO_ID.AsInteger = -1 then
  begin
    iSeq  := dmGlobal.RemoteServer.GetSeq('main.B_DEPOSITO');
    sCode := FormatDateTime('yyyymmdd', fSystemDate);
    dtServerTimeStamp := dmGlobal.RemoteServer.GetServerTimeStamp;

    cdsDepositoDEPOSITO_ID.AsLargeInt     := iSeq;
    cdsDepositoDEPOSITO_CODE.AsString     := dmGlobal.RemoteServer.GetVoucherNo(fSystemDate, 'DP', 'TBL_B_DEPOSITO');
    cdsDepositoCREATED_DATE.AsDateTime    := dtServerTimeStamp;
    cdsDepositoCREATED_SYSDATE.AsDateTime := fSystemDate;
    cdsDepositoCREATED_UI.AsString        := dmGlobal.UserID;
  end;

  cdsDepositoMODDA.AsDateTime := dtServerTimeStamp;
  cdsDepositoMODUI.AsString   := dmGlobal.UserID;

  inherited;
end;

procedure TfrmDeposito.cdsDepositoDEPOSITO_AMOUNTChange(Sender: TField);
begin
  inherited;
  if cdsDeposito.State in dsEditModes then
    cdsDepositoDEPOSITO_EXCHAMOUNT.AsFloat := cdsDepositoDEPOSITO_AMOUNT.AsFloat * cdsDepositoEXCHRATE.AsFloat;
end;

procedure TfrmDeposito.cdsDepositoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDepositoDEPOSITO_ID.AsInteger            := -1;
  cdsDepositoDEPOSITO_CODE.AsString           := '<AUTO>';
  cdsDepositoCCYCODE.AsString                 := dmGlobal.RemoteServer.GetLocalCCY;
  cdsDepositoEXCHRATE.AsFloat                 := dmGlobal.RemoteServer.GetCCYRate(fSystemDate, cdsDepositoCCYCODE.AsString);
  cdsDepositoSTAT.AsString                    := '1';
  cdsDepositoDEPOSITO_OPENDATE.AsDateTime     := fSystemDate;
  cdsDepositoDEPOSITO_MATURITYDATE.AsDateTime := fSystemDate;
end;

procedure TfrmDeposito.FormCreate(Sender: TObject);
begin
  inherited;
  fSystemDate := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBank.Close;
    cdsLuBank.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Close;
  end;
end;

end.
