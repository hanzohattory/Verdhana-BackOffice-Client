unit FormAlternateCashSettlement;

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
  cxDBLookupComboBox, cxImageComboBox;

type
  TfrmAlternateCashSettlement = class(TfrmEditorData)
    cdsAlternateCashSettlement: TNClientDataset;
    cdsAlternateCashSettlementACSID: TLargeintField;
    cdsAlternateCashSettlementACSCODE: TStringField;
    cdsAlternateCashSettlementACSDATE: TDateField;
    cdsAlternateCashSettlementDUEDATE: TDateField;
    cdsAlternateCashSettlementACCID: TIntegerField;
    cdsAlternateCashSettlementKPEI_ACCID: TIntegerField;
    cdsAlternateCashSettlementSTOCKID: TIntegerField;
    cdsAlternateCashSettlementPRICE: TFloatField;
    cdsAlternateCashSettlementQUANTITY: TFloatField;
    cdsAlternateCashSettlementAMOUNT: TFloatField;
    cdsAlternateCashSettlementRATE: TFloatField;
    cdsAlternateCashSettlementFEEAMOUNT: TFloatField;
    cdsAlternateCashSettlementCCYCODE: TStringField;
    cdsAlternateCashSettlementNETAMOUNT: TFloatField;
    cdsAlternateCashSettlementKPEI_COID: TLargeintField;
    cdsAlternateCashSettlementKPEI_SOID: TLargeintField;
    cdsAlternateCashSettlementCOID: TLargeintField;
    cdsAlternateCashSettlementSOID: TLargeintField;
    cdsAlternateCashSettlementLEDGERTRANSID: TLargeintField;
    cdsAlternateCashSettlementLEDGERTRANSID_REVERSED: TLargeintField;
    cdsAlternateCashSettlementSTOCKTRANSID: TLargeintField;
    cdsAlternateCashSettlementSTOCKTRANSID_REVERSED: TLargeintField;
    cdsAlternateCashSettlementSTAT: TStringField;
    cdsAlternateCashSettlementCREATED_DATE: TDateTimeField;
    cdsAlternateCashSettlementCREATED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlementCREATED_UI: TStringField;
    cdsAlternateCashSettlementCANCELED_DATE: TDateTimeField;
    cdsAlternateCashSettlementCANCELED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlementCANCELED_NOTES: TStringField;
    cdsAlternateCashSettlementCANCELED_UI: TStringField;
    cdsAlternateCashSettlementPOSTED_DATE: TDateTimeField;
    cdsAlternateCashSettlementPOSTED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlementPOSTED_UI: TStringField;
    cdsAlternateCashSettlementREVERSED_DATE: TDateTimeField;
    cdsAlternateCashSettlementREVERSED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlementREVERSED_UI: TStringField;
    cdsAlternateCashSettlementMODDA: TDateTimeField;
    cdsAlternateCashSettlementMODUI: TStringField;
    cdsAlternateCashSettlementAPPDA: TDateTimeField;
    cdsAlternateCashSettlementAPPUI: TStringField;
    cdsAlternateCashSettlementUNDER4Y: TIntegerField;
    cdsAlternateCashSettlementUNDER4YDA: TDateTimeField;
    cdsAlternateCashSettlementNOTES4Y: TStringField;
    cdsAlternateCashSettlementISDEL: TIntegerField;
    cdsAlternateCashSettlementID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cdsAlternateCashSettlementACCCODE: TStringField;
    cdsAlternateCashSettlementACCNAME: TStringField;
    cdsAlternateCashSettlementSTOCKCODE: TStringField;
    cdsAlternateCashSettlementSTOCKNAME: TStringField;
    cdsAlternateCashSettlementKPEICODE: TStringField;
    cdsAlternateCashSettlementKPEINAME: TStringField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cdsAlternateCashSettlementACS_TYPE: TStringField;
    procedure cdsAlternateCashSettlementNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsAlternateCashSettlementSTOCKIDChange(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsAlternateCashSettlementPRICEChange(Sender: TField);
    procedure cdsAlternateCashSettlementQUANTITYChange(Sender: TField);
    procedure cdsAlternateCashSettlementAMOUNTChange(Sender: TField);
    procedure cdsAlternateCashSettlementRATEChange(Sender: TField);
    procedure cdsAlternateCashSettlementBeforePost(DataSet: TDataSet);
    procedure cdsAlternateCashSettlementKPEI_ACCIDChange(Sender: TField);
    procedure cdsAlternateCashSettlementAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RecalculateAmount;
    procedure RecalculateNetAmount;
  public
    { Public declarations }
  end;

var
  frmAlternateCashSettlement: TfrmAlternateCashSettlement;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementAfterOpen(
  DataSet: TDataSet);
begin
//  inherited;
  cdsAlternateCashSettlement.edit;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccountKSEI.Locate('ACCID', cdsAlternateCashSettlementKPEI_ACCID.AsInteger, []) then
    begin
      cdsAlternateCashSettlementKPEICODE.AsString := cdsLuAccountKSEIACCCODE.AsString;
      cdsAlternateCashSettlementKPEINAME.AsString := cdsluaccountKSEIACCNAME.asString;
    end;

    if cdsLuInstrumentStock.Locate('INSTRUMENT_ID', cdsAlternateCashSettlementSTOCKID.AsInteger, []) then
    begin
      cdsAlternateCashSettlementSTOCKCODE.AsString := cdsLuInstrumentStockLOCALCODE.AsString;
      cdsAlternateCashSettlementSTOCKNAME.AsString := cdsLuInstrumentStockSHORTNAME.AsString;
    end;

    if not cdsLuAccount.Active then
      cdsLuAccount.open;
    if cdsLuAccount.Locate('ACCID', cdsAlternateCashSettlementACCID.AsInteger, []) then
    begin
      cdsAlternateCashSettlementACCCODE.AsString := cdsLuAccountACCCODE.AsString;
      cdsAlternateCashSettlementACCNAME.AsString := cdsLuAccountACCNAME.AsString;
    end;
  end;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementAMOUNTChange(
  Sender: TField);
begin
  inherited;
  RecalculateNetAmount;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsAlternateCashSettlementACSID.AsLargeInt = -1 then
  begin
    cdsAlternateCashSettlementACSID.AsInteger  := dmGlobal.RemoteServer.GetSeq('TBL_B_ACS');
    cdsAlternateCashSettlementACSCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsAlternateCashSettlementACSDATE.AsDateTime, 'ACS', 'TBL_ACS');
  end;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementKPEI_ACCIDChange(
  Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccountKSEI.Locate('ACCID', cdsAlternateCashSettlementKPEI_ACCID.AsInteger, []) then
    begin
      cdsAlternateCashSettlementKPEICODE.AsString := cdsLuAccountKSEIACCCODE.AsString;
      cdsAlternateCashSettlementKPEINAME.AsString := cdsluaccountKSEIACCNAME.asString;
    end;
  end;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementNewRecord(
  DataSet: TDataSet);
var
  dtSystem: TDateTime;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  cdsAlternateCashSettlementACSID.AsLargeInt   := -1;
  cdsAlternateCashSettlementACSCODE.AsString   := '<AUTO>';
  cdsAlternateCashSettlementACSDATE.AsDateTime := dtSystem;
  cdsAlternateCashSettlementDUEDATE.AsDateTime := dtSystem;
  cdsAlternateCashSettlementRATE.AsFloat       := dmGlobal.RemoteServer.GetGlobalParamFloat('214');
  cdsAlternateCashSettlementCCYCODE.AsString   := dmGlobal.RemoteServer.GetLocalCCY;
  cdsAlternateCashSettlementSTAT.AsString      := '1';
  cdsAlternateCashSettlementACS_TYPE.AsString  := 'FR';
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementPRICEChange(
  Sender: TField);
begin
  inherited;
  RecalculateAmount;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementQUANTITYChange(
  Sender: TField);
begin
  inherited;
  RecalculateAmount;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementRATEChange(
  Sender: TField);
begin
  inherited;
  RecalculateNetAmount;
end;

procedure TfrmAlternateCashSettlement.cdsAlternateCashSettlementSTOCKIDChange(
  Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentStock.Locate('INSTRUMENT_ID', cdsAlternateCashSettlementSTOCKID.AsInteger, []) then
    begin
      cdsAlternateCashSettlementSTOCKCODE.AsString := cdsLuInstrumentStockLOCALCODE.AsString;
      cdsAlternateCashSettlementSTOCKNAME.AsString := cdsLuInstrumentStockSHORTNAME.AsString;

      cdsalternateCashSettlementPRICE.asFloat := dmGlobal.RemoteServer.GetClosingPriceForACS(cdsAlternateCashSettlementSTOCKCODE.AsString, cdsAlternateCashSettlementACSDATE.AsDateTime);
    end;
  end;
end;

procedure TfrmAlternateCashSettlement.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        cdsAlternateCashSettlementACCID.AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
        cdsAlternateCashSettlementACCCODE.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        cdsAlternateCashSettlementACCNAME.AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmAlternateCashSettlement.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuInstrumentStock.Active then
      cdsLuInstrumentStock.Open;

    if not cdsLuAccountKSEI.Active then
      cdsLuAccountKSEI.Open;
  end;
end;

procedure TfrmAlternateCashSettlement.RecalculateAmount;
begin
  if cdsAlternateCashSettlement.State in dsEditModes then
    cdsAlternateCashSettlementAMOUNT.AsFloat := cdsAlternateCashSettlementPRICE.AsFloat * cdsAlternateCashSettlementQUANTITY.AsFloat;
end;

procedure TfrmAlternateCashSettlement.RecalculateNetAmount;
begin
  if cdsAlternateCashSettlement.State in dsEditModes then
  begin
    cdsAlternateCashSettlementNETAMOUNT.AsFloat := cdsAlternateCashSettlementAMOUNT.AsFloat * (cdsAlternateCashSettlementRATE.AsFloat / 100);
    cdsAlternateCashSettlementFEEAMOUNT.AsFloat := cdsAlternateCashSettlementNETAMOUNT.AsFloat - cdsAlternateCashSettlementAMOUNT.AsFloat;
  end;
end;

end.
