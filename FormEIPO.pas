unit FormEIPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmEIPO = class(TfrmEditorData)
    cdsEIPO: TNClientDataset;
    cdsEIPOID: TLargeintField;
    cdsEIPOTICKER_ID: TLargeintField;
    cdsEIPOTICKER_CODE: TStringField;
    cdsEIPOCOMPANY: TStringField;
    cdsEIPOSECTOR: TStringField;
    cdsEIPOSUBSECTOR: TStringField;
    cdsEIPOLINE_OF_BUSINESS: TStringField;
    cdsEIPOBOOKBUILDING_SDATE: TDateField;
    cdsEIPOBOOKBUILDING_EDATE: TDateField;
    cdsEIPOOFFERING_SDATE: TDateField;
    cdsEIPOOFFERING_EDATE: TDateField;
    cdsEIPOALLOTMENT_DATE: TDateField;
    cdsEIPODISTRIBUTION_DATE: TDateField;
    cdsEIPOLISTING_DATE: TDateField;
    cdsEIPOSHARED_OFFERED: TFloatField;
    cdsEIPOSTAT: TStringField;
    cdsEIPOMODDA: TDateTimeField;
    cdsEIPOMODUI: TStringField;
    cdsEIPOAPPDA: TDateTimeField;
    cdsEIPOAPPUI: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutItem15: TdxLayoutItem;
    cdsEIPOTICKERNAME: TStringField;
    procedure cdsEIPONewRecord(DataSet: TDataSet);
    procedure cdsEIPOTICKER_IDChange(Sender: TField);
    procedure cdsEIPOBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEIPO: TfrmEIPO;

implementation

uses DataGLobal, DataLookUp;

{$R *.dfm}

procedure TfrmEIPO.cdsEIPOBeforePost(DataSet: TDataSet);
var
  fSysdate: TDate;
begin
  fSysdate := dmGlobal.RemoteServer.GetTransDate;

  if cdsEIPOID.AsInteger = -1 then
    cdsEIPOID.AsInteger := dmGlobal.RemoteServer.GetSeq('EIPO');

  inherited;
end;

procedure TfrmEIPO.cdsEIPONewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEIPOID.AsInteger  := -1;
  cdsEIPOSTAT.AsString := '1';
end;

procedure TfrmEIPO.cdsEIPOTICKER_IDChange(Sender: TField);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuIPOInstrument.Locate('INSTRUMENT_ID', cdsEIPOTICKER_ID.AsInteger, []) then
  begin
    cdsEIPOTICKER_CODE.AsString := dmGlobal.IntDataLookup.cdsLuIPOInstrumentLOCALCODE.AsString;
    cdsEIPOTICKERNAME.AsString  := dmGlobal.IntDataLookup.cdsLuIPOInstrumentSHORTNAME.AsString;
  end;

end;

end.
