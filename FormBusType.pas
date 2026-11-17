unit FormBusType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxTextEdit, cxDBEdit, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxGroupBox, cxLabel, cxImageComboBox, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmBusType = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    tabCommission: TcxTabSheet;
    tabCharge: TcxTabSheet;
    grdComm: TcxGrid;
    gvwComm: TcxGridDBTableView;
    grdCommLevel1: TcxGridLevel;
    dsCharge: TDataSource;
    dsComm: TDataSource;
    gvwCommMARKETCODE: TcxGridDBColumn;
    gvwCommCHANNELCODE: TcxGridDBColumn;
    gvwCommCOMM_ID: TcxGridDBColumn;
    gvwCommCALC_METHOD: TcxGridDBColumn;
    gvwCommUSE_DAYTRADE: TcxGridDBColumn;
    gvwCommUSE_MINCOMM: TcxGridDBColumn;
    gvwCommWITH_SELLTAX: TcxGridDBColumn;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBTableView;
    grdChargeLevel1: TcxGridLevel;
    gvwChargeMARKETCODE: TcxGridDBColumn;
    gvwChargeCHARGE_ID: TcxGridDBColumn;
    gvwChargeISUSED: TcxGridDBColumn;
    gvwCommDESCRIPTION: TcxGridDBColumn;
    gvwChargeDESCRIPTION: TcxGridDBColumn;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl5: TdxLayoutControl;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl5Item7: TdxLayoutItem;
    dxLayoutControl5Group4: TdxLayoutGroup;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutControl5Item8: TdxLayoutItem;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Item9: TdxLayoutItem;
    dxLayoutControl5Group3: TdxLayoutGroup;
    dxLayoutControl5Item10: TdxLayoutItem;
    dxLayoutControl5Item14: TdxLayoutItem;
    dxLayoutControl5Item15: TdxLayoutItem;
    dxLayoutControl5Item16: TdxLayoutItem;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxLayoutControl5Item6: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group1: TdxLayoutGroup;
    tabSettlement: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBImageComboBox4: TcxDBImageComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    cxDBLookupComboBox18: TcxDBLookupComboBox;
    cxDBLookupComboBox19: TcxDBLookupComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    cxDBLookupComboBox20: TcxDBLookupComboBox;
    cxDBLookupComboBox21: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl4Item11: TdxLayoutItem;
    dxLayoutControl4Item12: TdxLayoutItem;
    dxLayoutControl4Item13: TdxLayoutItem;
    dxLayoutControl4Group6: TdxLayoutGroup;
    dxLayoutControl4Group7: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Item18: TdxLayoutItem;
    dxLayoutControl4Item19: TdxLayoutItem;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Item20: TdxLayoutItem;
    dxLayoutControl4Item21: TdxLayoutItem;
    dxLayoutControl4Item22: TdxLayoutItem;
    dxLayoutControl4Item25: TdxLayoutItem;
    dxLayoutControl4Item26: TdxLayoutItem;
    dxLayoutControl4Group8: TdxLayoutGroup;
    dxLayoutControl4Item23: TdxLayoutItem;
    dxLayoutControl4Group9: TdxLayoutGroup;
    dxLayoutControl4Group10: TdxLayoutGroup;
    dxLayoutControl4Item24: TdxLayoutItem;
    dxLayoutControl4Item27: TdxLayoutItem;
    dxLayoutControl4Item28: TdxLayoutItem;
    dxLayoutControl4Item29: TdxLayoutItem;
    dxLayoutControl4Group11: TdxLayoutGroup;
    dxLayoutControl4Group12: TdxLayoutGroup;
    dxLayoutControl4Item30: TdxLayoutItem;
    dxLayoutControl4Item31: TdxLayoutItem;
    dxLayoutControl4Item32: TdxLayoutItem;
    dxLayoutControl4Item33: TdxLayoutItem;
    dxLayoutControl4Group15: TdxLayoutGroup;
    dxLayoutControl4Item34: TdxLayoutItem;
    dxLayoutControl4Group13: TdxLayoutGroup;
    dxLayoutControl4Item35: TdxLayoutItem;
    procedure gvwCommFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure gvwChargeFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBusType: TfrmBusType;

implementation

{$R *.dfm}

uses DataGlobal, FormBusTypes;

procedure TfrmBusType.gvwChargeFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if (AFocusedItem = gvwChargeCHARGE_ID) then
  begin
    gvwChargeCHARGE_ID.RepositoryItem := dmGlobal.luChargeByMarket;
    with dmGlobal.IntDataLookup do
    begin
      if (cdsLuChargeByMarket.Params[0].AsString <> gvwChargeMARKETCODE.DataBinding.Field.AsString) or
        (not cdsLuChargeByMarket.Active) then
      begin
        cdsLuChargeByMarket.Close;
        cdsLuChargeByMarket.Params[0].AsString := gvwChargeMARKETCODE.DataBinding.Field.AsString;
        cdsLuChargeByMarket.Open;
      end;
    end;
  end;

  if (APrevFocusedItem = gvwChargeCHARGE_ID) then
  begin
    gvwChargeCHARGE_ID.RepositoryItem := dmGlobal.luCharge;
  end;
end;

procedure TfrmBusType.gvwCommFocusedItemChanged(Sender: TcxCustomGridTableView;
  APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  if (AFocusedItem = gvwCommCOMM_ID) then
  begin
    gvwCommCOMM_ID.RepositoryItem := dmGlobal.luCommissionByMarket;
    with dmGlobal.IntDataLookup do
    begin
      if (cdsLuCommByMarket.Params[0].AsString <> gvwCommMARKETCODE.DataBinding.Field.AsString) or
        (not cdsLuCommByMarket.Active) then
      begin
        cdsLuCommByMarket.Close;
        cdsLuCommByMarket.Params[0].AsString := gvwCommMARKETCODE.DataBinding.Field.AsString;
        cdsLuCommByMarket.Open;
      end;
    end;
  end;

  if (APrevFocusedItem = gvwCommCOMM_ID) then
  begin
    gvwCommCOMM_ID.RepositoryItem := dmGlobal.luCommission;
  end;
end;

end.
