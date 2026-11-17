unit FormReksadana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxCurrencyEdit, cxButtonEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmReksadana = class(TfrmEditorData)
    cdsReksadana: TNClientDataset;
    cdsReksadanaREKSADANAID: TLargeintField;
    cdsReksadanaREKSADANACODE: TStringField;
    cdsReksadanaVALUEDATE: TDateField;
    cdsReksadanaACCID: TIntegerField;
    cdsReksadanaINSTRUMENT_ID: TIntegerField;
    cdsReksadanaUNIT: TFloatField;
    cdsReksadanaCLOSE_PRICE: TFloatField;
    cdsReksadanaTOTAL_NAV: TFloatField;
    cdsReksadanaSTAT: TStringField;
    cdsReksadanaCREATED_DATE: TDateTimeField;
    cdsReksadanaCREATED_SYSDATE: TDateTimeField;
    cdsReksadanaCREATED_UI: TStringField;
    cdsReksadanaAPPROVED_DATE: TDateTimeField;
    cdsReksadanaAPPROVED_SYSDATE: TDateTimeField;
    cdsReksadanaAPPROVED_UI: TStringField;
    cdsReksadanaCLOSED_DATE: TDateTimeField;
    cdsReksadanaCLOSED_SYSDATE: TDateTimeField;
    cdsReksadanaCLOSED_UI: TStringField;
    cdsReksadanaCANCELED_DATE: TDateTimeField;
    cdsReksadanaCANCELED_SYSDATE: TDateTimeField;
    cdsReksadanaCANCELED_UI: TStringField;
    cdsReksadanaCANCELED_NOTES: TStringField;
    cdsReksadanaMODDA: TDateTimeField;
    cdsReksadanaMODUI: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cdsReksadanaACCNAME: TStringField;
    cdsReksadanaSTOCKNAME: TStringField;
    dsInstrumentNoStock: TDataSource;
    procedure cdsReksadanaNewRecord(DataSet: TDataSet);
    procedure cdsReksadanaBeforePost(DataSet: TDataSet);
    procedure cdsReksadanaINSTRUMENT_IDChange(Sender: TField);
  private
    { Private declarations }
    fSystemDate: TDateTime;
  public
    { Public declarations }
  end;

var
  frmReksadana: TfrmReksadana;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuInstrument, FormLuAccountList;

procedure TfrmReksadana.cdsReksadanaBeforePost(DataSet: TDataSet);
var
  sCodeMonth: string;
begin
  inherited;
  sCodeMonth := FormatDateTime('yyyymm', fSystemDate);

  if cdsReksadanaREKSADANAID.AsInteger = -1 then
  begin
    cdsReksadanaREKSADANAID.AsInteger      := dmGlobal.RemoteServer.GetSeq('TBL_B_REKSADANA');
    cdsReksadanaREKSADANACODE.AsString     := 'RD-'+ sCodeMonth +'-'+ FormatFloat('0000000000', dmGlobal.RemoteServer.GetSeq('TBL_B_REKSADANA'+ sCodeMonth));
    cdsReksadanaCREATED_DATE.AsDateTime    := fSystemDate;
    cdsReksadanaCREATED_SYSDATE.AsDateTime := Now;
    cdsReksadanaCREATED_SYSDATE.AsString   := dmGlobal.UserID;
  end;
end;

procedure TfrmReksadana.cdsReksadanaINSTRUMENT_IDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentNotStock.Locate('INSTRUMENT_ID', cdsReksadanaINSTRUMENT_ID.AsInteger, []) then
    begin
      cdsReksadanaSTOCKNAME.AsString  := cdsLuInstrumentNotStockSHORTNAME.AsString;
      cdsReksadanaCLOSE_PRICE.AsFloat := cdsLuInstrumentNotStockLASTCLSPRICE.asfloat;
    end;
  end;
end;

procedure TfrmReksadana.cdsReksadanaNewRecord(DataSet: TDataSet);
begin
  inherited;
  fSystemDate := dmGlobal.RemoteServer.GetTransDate;

  cdsReksadanaREKSADANAID.AsInteger  := -1;
  cdsReksadanaREKSADANACODE.AsString := '<auto>';
  cdsReksadanaVALUEDATE.AsDateTime   := fSystemDate;
  cdsReksadanaSTAT.AsString          := '1';
end;

end.
