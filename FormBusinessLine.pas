unit FormBusinessLine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxCurrencyEdit, cxTextEdit, Data.DB,
  Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmBusinessLine = class(TfrmEditorData)
    cdsBusinessLine: TNClientDataset;
    cdsBusinessLineBUSSLINE_ID: TIntegerField;
    cdsBusinessLineBUSSINESS_NAME: TStringField;
    cdsBusinessLineBTAX: TFloatField;
    cdsBusinessLineSTAX: TFloatField;
    cdsBusinessLineMODDA: TDateTimeField;
    cdsBusinessLineMODUI: TStringField;
    cdsBusinessLineAPPDA: TDateTimeField;
    cdsBusinessLineAPPUI: TStringField;
    cdsBusinessLineUNDER4Y: TIntegerField;
    cdsBusinessLineUNDER4YDA: TDateTimeField;
    cdsBusinessLineNOTES4Y: TStringField;
    cdsBusinessLineISDEL: TIntegerField;
    cdsBusinessLineID: TLargeintField;
    cdsBusinessLineBUSSLINE_CODE: TStringField;
    cdsBusinessLineRISK: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure cdsBusinessLineNewRecord(DataSet: TDataSet);
    procedure cdsBusinessLineBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBusinessLine: TfrmBusinessLine;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBusinessLine.cdsBusinessLineBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsBusinessLine.State in [dsInsert] then
  begin
    if (cdsBusinessLineBUSSLINE_ID.AsInteger = -1) or (cdsBusinessLineBUSSLINE_ID.IsNull) then
      cdsBusinessLineBUSSLINE_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_BUSINESS_LINE');
  end;
end;

procedure TfrmBusinessLine.cdsBusinessLineNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBusinessLineBUSSLINE_ID.AsInteger := -1;
end;

Initialization
  RegisterClass(TfrmBusinessLine);

end.
