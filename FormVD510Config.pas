unit FormVD510Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxImageComboBox, cxCurrencyEdit;

type
  TfrmVD510Config = class(TfrmEditorData)
    cdsVD510Config: TNClientDataset;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cdsVD510ConfigCONTRACT_DATE: TDateField;
    cdsVD510ConfigEFFECTIVE_DATE: TDateField;
    cdsVD510ConfigSTART_OFFER_DATE: TDateField;
    cdsVD510ConfigEND_OFFER_DATE: TDateField;
    cdsVD510ConfigDISTRIBUTION_DATE: TDateField;
    cdsVD510ConfigLISTING_DATE: TDateField;
    cdsVD510ConfigGUARANTEE_TYPE: TStringField;
    cdsVD510ConfigGUARANTEED_PARTY: TStringField;
    cdsVD510ConfigGUARANTEE_STATUS: TStringField;
    cdsVD510ConfigCOMMITMENT_VALUE: TFloatField;
    cdsVD510ConfigHAIRCUT: TFloatField;
    cdsVD510ConfigNOT_ABSORBED_VALUE: TFloatField;
    cdsVD510ConfigBANK_GUARANTEE_CREDIT: TFloatField;
    cdsVD510ConfigLIABILITY_RANK_VALUE: TFloatField;
    cdsVD510ConfigMODDA: TDateTimeField;
    cdsVD510ConfigMODUI: TStringField;
    cdsVD510ConfigAPPDA: TDateTimeField;
    cdsVD510ConfigAPPUI: TStringField;
    cdsVD510ConfigUNDER4Y: TIntegerField;
    cdsVD510ConfigUNDER4YDA: TDateTimeField;
    cdsVD510ConfigNOTES4Y: TStringField;
    cdsVD510ConfigISDEL: TIntegerField;
    cdsVD510ConfigID: TLargeintField;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsVD510ConfigVD510_ID: TLargeintField;
    procedure cdsVD510ConfigNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVD510Config: TfrmVD510Config;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmVD510Config.cdsVD510ConfigNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsVD510ConfigVD510_ID.AsLargeInt      := dmGlobal.RemoteServer.GetSeq('TBL_B_VD510_STATIC');
  cdsVD510ConfigCONTRACT_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;

end;

Initialization
  RegisterClass(TfrmVD510Config);

end.
