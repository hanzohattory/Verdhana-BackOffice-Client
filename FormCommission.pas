unit FormCommission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Data.DB, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls, NClientDataset;

type
  TfrmCommission = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    rgCalcMethod: TcxDBRadioGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    edCommRate: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edNetRate: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    edCommTable: TcxDBButtonEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edNewCommRate: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    edNewNetRate: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edNewCommTable: TcxDBButtonEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsCommission: TNClientDataset;
    cdsCommissionCOMM_ID: TLargeintField;
    cdsCommissionCOMM_CODE: TStringField;
    cdsCommissionMARKETCODE: TStringField;
    cdsCommissionCOMM_DESC: TStringField;
    cdsCommissionMIN_COMM: TFloatField;
    cdsCommissionCALC_METHOD: TStringField;
    cdsCommissionCOMM_RATE: TFloatField;
    cdsCommissionNET_RATE: TFloatField;
    cdsCommissionCOMM_TABLE: TStringField;
    cdsCommissionNEW_COMM_RATE: TFloatField;
    cdsCommissionNEW_NET_RATE: TFloatField;
    cdsCommissionNEW_COMM_TABLE: TStringField;
    cdsCommissionNEW_COMM_EFFECTIVE_DATE: TDateField;
    cdsCommissionMODDA: TDateTimeField;
    cdsCommissionMODUI: TStringField;
    cdsCommissionAPPDA: TDateTimeField;
    cdsCommissionAPPUI: TStringField;
    cdsCommissionUNDER4Y: TIntegerField;
    cdsCommissionUNDER4YDA: TDateTimeField;
    cdsCommissionNOTES4Y: TStringField;
    cdsCommissionISDEL: TIntegerField;
    cdsCommissionID: TLargeintField;
    cdsCommissionCCYCODE: TStringField;
    procedure rgCalcMethodPropertiesEditValueChanged(Sender: TObject);
    procedure edCommTablePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edNewCommTablePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tabEditorDataChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cdsCommissionNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommission: TfrmCommission;

implementation

{$R *.dfm}

uses DataGlobal, FormCommissionList, FormLuCommTable;

procedure TfrmCommission.cdsCommissionNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCommissionCOMM_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_COMMISSION');
  cdsCommissionMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
end;

procedure TfrmCommission.edCommTablePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsSubject.DataSet;

  if oDataset <> nil then
  begin
    with frmCommissionList, dmGlobal.IntDataLookup do
    begin
      if frmLuCommTable.Run(oDataset.FieldByName('MARKETCODE').AsString, oDataset.FieldByName('COMM_TABLE').AsString) = mrOK then
        oDataset.FieldByName('COMM_TABLE').AsString := cdsLuCommTableHCOMM_TABLE_CODE.AsString;
    end;
  end;
end;

procedure TfrmCommission.edNewCommTablePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsSubject.DataSet;

  if oDataset <> nil then
  begin
    with frmCommissionList, dmGlobal.IntDataLookup do
    begin
      if frmLuCommTable.Run(oDataset.FieldByName('MARKETCODE').AsString, oDataset.FieldByName('NEW_COMM_TABLE').AsString) = mrOK then
        oDataset.FieldByName('NEW_COMM_TABLE').AsString := cdsLuCommTableHCOMM_TABLE_CODE.AsString;
    end;
  end;
end;

procedure TfrmCommission.rgCalcMethodPropertiesEditValueChanged(
  Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  edCommRate.Enabled := rgCalcMethod.EditValue = 'R';
  edNetRate.Enabled := edCommRate.Enabled;
  edCommTable.Enabled := not edCommRate.Enabled;
  edNewCommRate.Enabled := edCommRate.Enabled;
  edNewNetRate.Enabled := edCommRate.Enabled;
  edNewCommTable.Enabled := not edCommRate.Enabled;

  oDataset := dsSubject.DataSet;

  if oDataset <> nil then
  begin
    if oDataset.State in [dsInsert, dsEdit] then
    begin
      if edCommRate.Enabled then
      begin
        oDataset.FieldByName('COMM_TABLE').Clear;
        oDataset.FieldByName('NEW_COMM_TABLE').Clear;
      end
      else
      begin
        oDataset.FieldByName('COMM_RATE').AsFloat := 0;
        oDataset.FieldByName('NET_RATE').AsFloat := 0;
        oDataset.FieldByName('NEW_COMM_RATE').AsFloat := 0;
        oDataset.FieldByName('NEW_NET_RATE').AsFloat := 0;
      end;
    end;
  end;
end;

procedure TfrmCommission.tabEditorDataChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsSubject.DataSet;

  if oDataset is TClientDataset then
  begin
    edCommTable.Enabled := not TClientDataset(oDataset).ReadOnly;
    edNewCommTable.Enabled := edCommTable.Enabled;
  end;
end;

Initialization
  RegisterClass(TfrmCommission);

end.
