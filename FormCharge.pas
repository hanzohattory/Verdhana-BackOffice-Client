unit FormCharge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  Datasnap.DBClient, cxButtonEdit, cxDBEdit, cxGroupBox, cxRadioGroup,
  cxCheckBox, cxImageComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Vcl.ExtCtrls, Vcl.DBCtrls,
  NClientDataset;

type
  TfrmCharge = class(TfrmEditorData)
    cbMarket: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    rgBasis: TcxDBRadioGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    edRate: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edAmount: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edTable: TcxDBButtonEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsValidBoard: TDataSource;
    dsValidInstr: TDataSource;
    dsSourceBoard: TDataSource;
    cdsSourceBoard: TClientDataSet;
    cdsSourceBoardDESC: TStringField;
    cdsSourceInstr: TClientDataSet;
    cdsSourceInstrINSTYPECODE: TStringField;
    cdsSourceInstrINSTYPEDESC: TStringField;
    dsSourceInstr: TDataSource;
    cxPageControl1: TcxPageControl;
    tabBoard: TcxTabSheet;
    grdSource: TcxGrid;
    gvwSourceBoard: TcxGridDBTableView;
    gvwSourceBoardDESC: TcxGridDBColumn;
    grdSourceLevel1: TcxGridLevel;
    dxLayoutControl3: TdxLayoutControl;
    btnAddBoard: TcxButton;
    btnRemoveBoard: TcxButton;
    btnRemoveAllBoard: TcxButton;
    btnAddAllBoard: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    grdTarget: TcxGrid;
    gvwTargetBoard: TcxGridDBTableView;
    grdTargetLevel1: TcxGridLevel;
    tabInstrument: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwSourceInstr: TcxGridDBTableView;
    gvwSourceInstrINSTYPEDESC: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl4: TdxLayoutControl;
    btnAddInstrument: TcxButton;
    btnRemoveInstrument: TcxButton;
    btnRemoveAllInstrument: TcxButton;
    btnAddAllInstrument: TcxButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid2: TcxGrid;
    gvwTargetInstr: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    gvwTargetInstrINSTRUMENT_TYPE_CODE: TcxGridDBColumn;
    cdsSourceBoardBOARD: TLargeintField;
    gvwTargetBoardBOARDDESC: TcxGridDBColumn;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsCharge: TNClientDataset;
    cdsChargeCHARGE_ID: TLargeintField;
    cdsChargeCHARGE_CODE: TStringField;
    cdsChargeMARKETCODE: TStringField;
    cdsChargeCHARGE_TYPE: TStringField;
    cdsChargeCHARGE_DESC: TStringField;
    cdsChargeBASIS: TStringField;
    cdsChargeRATE: TFloatField;
    cdsChargeRATE_SOURCE: TStringField;
    cdsChargeAMOUNT: TFloatField;
    cdsChargeCHARGE_TABLE_ID: TLargeintField;
    cdsChargeVALIDBUY: TIntegerField;
    cdsChargeVALIDSELL: TIntegerField;
    cdsChargeDC: TStringField;
    cdsChargeGLCD: TStringField;
    cdsChargeMODDA: TDateTimeField;
    cdsChargeMODUI: TStringField;
    cdsChargeAPPDA: TDateTimeField;
    cdsChargeAPPUI: TStringField;
    cdsChargeISDEL: TIntegerField;
    cdsChargeID: TLargeintField;
    cdsChargeqryChargeIntrument: TDataSetField;
    cdsChargeqryChargeBoard: TDataSetField;
    cdsChargeCCY: TStringField;
    cdsChargeUNDER4Y: TIntegerField;
    cdsChargeUNDER4YDA: TDateTimeField;
    cdsChargeNOTES4Y: TStringField;
    cdsChargeCHARGE_TABLE_CODE: TStringField;
    cdsChargeACCID: TIntegerField;
    cdsChargeALTYPE: TStringField;
    cdsChargeBoard: TNClientDataset;
    cdsChargeBoardCHARGE_ID: TLargeintField;
    cdsChargeBoardBOARDID: TLargeintField;
    cdsChargeBoardMODDA: TDateTimeField;
    cdsChargeBoardMODUI: TStringField;
    cdsChargeBoardAPPDA: TDateTimeField;
    cdsChargeBoardAPPUI: TStringField;
    cdsChargeBoardISDEL: TIntegerField;
    cdsChargeBoardID: TLargeintField;
    cdsChargeBoardBOARDDESC: TStringField;
    cdsChargeInstrument: TNClientDataset;
    cdsChargeInstrumentCHARGE_ID: TLargeintField;
    cdsChargeInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsChargeInstrumentMODDA: TDateTimeField;
    cdsChargeInstrumentMODUI: TStringField;
    cdsChargeInstrumentAPPDA: TDateTimeField;
    cdsChargeInstrumentAPPUI: TStringField;
    cdsChargeInstrumentISDEL: TIntegerField;
    cdsChargeInstrumentID: TLargeintField;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cbChargeCode: TcxDBLookupComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btnAddAllBoardClick(Sender: TObject);
    procedure btnRemoveAllBoardClick(Sender: TObject);
    procedure btnAddBoardClick(Sender: TObject);
    procedure btnRemoveBoardClick(Sender: TObject);
    procedure btnAddAllInstrumentClick(Sender: TObject);
    procedure btnRemoveAllInstrumentClick(Sender: TObject);
    procedure btnAddInstrumentClick(Sender: TObject);
    procedure btnRemoveInstrumentClick(Sender: TObject);
    procedure rgBasisPropertiesEditValueChanged(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure edTablePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tabEditorDataChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cdsChargeNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbChargeCodeEnter(Sender: TObject);
    procedure cbChargeCodeExit(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareData;
  public
    { Public declarations }
  end;

var
  frmCharge: TfrmCharge;

implementation

{$R *.dfm}

uses DataGlobal, FormCharges, FormLuChargeTable, cxLookupDBGrid;

{ TfrmCharge }

procedure TfrmCharge.btnAddAllBoardClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidBoard.DataSet;
  if oDataset <> nil then
  begin
    cdsSourceBoard.DisableControls;
    oDataset.DisableControls;

    cdsSourceBoard.First;

    while not cdsSourceBoard.IsEmpty do
    begin
      if not oDataset.Locate('BOARDID', cdsSourceBoardBOARD.AsString, []) then
      begin
        oDataset.Append;
        oDataset.FieldByName('BOARDID').AsString := cdsSourceBoardBOARD.AsString;
        oDataset.Post;
      end;

      cdsSourceBoard.Delete;
    end;

    oDataset.EnableControls;
    cdsSourceBoard.EnableControls;
  end;
end;

procedure TfrmCharge.btnAddAllInstrumentClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidInstr.DataSet;
  if oDataset <> nil then
  begin
    cdsSourceInstr.DisableControls;
    oDataset.DisableControls;

    cdsSourceInstr.First;

    while not cdsSourceInstr.IsEmpty do
    begin
      oDataset.Append;
      oDataset.FieldByName('INSTRUMENT_TYPE_CODE').AsString := cdsSourceInstrINSTYPECODE.AsString;
      oDataset.Post;
      cdsSourceInstr.Delete;
    end;

    oDataset.EnableControls;
    cdsSourceInstr.EnableControls;
  end;
end;

procedure TfrmCharge.btnAddBoardClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidBoard.DataSet;
  if oDataset <> nil then
  begin
    cdsSourceBoard.DisableControls;
    oDataset.DisableControls;

    if not cdsSourceBoard.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('BOARDID').AsString := cdsSourceBoardBOARD.AsString;
      oDataset.Post;

      cdsSourceBoard.Delete;
    end;

    oDataset.EnableControls;
    cdsSourceBoard.EnableControls;
  end;
end;

procedure TfrmCharge.btnAddInstrumentClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidInstr.DataSet;
  if oDataset <> nil then
  begin
    cdsSourceInstr.DisableControls;
    oDataset.DisableControls;

    if not cdsSourceInstr.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('INSTRUMENT_TYPE_CODE').AsString := cdsSourceInstrINSTYPECODE.AsString;
      oDataset.Post;
      cdsSourceInstr.Delete;
    end;

    oDataset.EnableControls;
    cdsSourceInstr.EnableControls;
  end;
end;

procedure TfrmCharge.btnRemoveAllBoardClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidBoard.DataSet;
  with dmGlobal.IntDataLookup do
  begin
    cdsSourceBoard.DisableControls;
    oDataset.DisableControls;
    cdsLuBoard.DisableControls;

    oDataset.First;

    while not oDataset.IsEmpty do
    begin
      cdsSourceBoard.Append;
      cdsSourceBoardBOARD.AsString := oDataset.FieldByName('BOARDID').AsString;
      if cdsLuBoard.Locate('BOARDID', cdsSourceBoardBOARD.AsString, []) then
        cdsSourceBoardDESC.AsString := cdsLuBoardBOARDDESC.AsString;
      cdsSourceBoard.Post;

      oDataset.Delete;
    end;

    cdsLuBoard.EnableControls;
    oDataset.EnableControls;
    cdsSourceBoard.EnableControls;
  end;
end;

procedure TfrmCharge.btnRemoveAllInstrumentClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidInstr.DataSet;
  with dmGlobal.IntDataLookup do
  begin
    cdsSourceInstr.DisableControls;
    oDataset.DisableControls;
    cdsLuInstrumentType.DisableControls;

    oDataset.First;

    while not oDataset.IsEmpty do
    begin
      cdsSourceInstr.Append;
      cdsSourceInstrINSTYPECODE.AsString := oDataset.FieldByName('INSTRUMENT_TYPE_CODE').AsString;
      if cdsLuInstrumentType.Locate('INSTRUMENT_TYPE_CODE', cdsSourceInstrINSTYPECODE.AsString, []) then
        cdsSourceInstrINSTYPEDESC.AsString := cdsLuInstrumentTypeINSTRUMENT_TYPE_DESC.AsString;
      cdsSourceInstr.Post;

      oDataset.Delete;
    end;

    cdsLuInstrumentType.EnableControls;
    oDataset.EnableControls;
    cdsSourceInstr.EnableControls;
  end;
end;

procedure TfrmCharge.btnRemoveBoardClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidBoard.DataSet;
  with dmGlobal.IntDataLookup do
  begin
    cdsSourceBoard.DisableControls;
    oDataset.DisableControls;
    cdsLuBoard.DisableControls;

    if not oDataset.IsEmpty then
    begin
      cdsSourceBoard.Append;
      cdsSourceBoardBOARD.AsString := oDataset.FieldByName('BOARDID').AsString;
      if cdsLuBoard.Locate('BOARDID', cdsSourceBoardBOARD.AsString, []) then
        cdsSourceBoardDESC.AsString := cdsLuBoardBOARDDESC.AsString;
      cdsSourceBoard.Post;

      oDataset.Delete;
    end;

    cdsLuBoard.EnableControls;
    oDataset.EnableControls;
    cdsSourceBoard.EnableControls;
  end;
end;

procedure TfrmCharge.btnRemoveInstrumentClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsValidInstr.DataSet;
  with dmGlobal.IntDataLookup do
  begin
    cdsSourceInstr.DisableControls;
    oDataset.DisableControls;
    cdsLuInstrumentType.DisableControls;

    if not oDataset.IsEmpty then
    begin
      cdsSourceInstr.Append;
      cdsSourceInstrINSTYPECODE.AsString := oDataset.FieldByName('INSTRUMENT_TYPE_CODE').AsString;
      if cdsLuInstrumentType.Locate('INSTRUMENT_TYPE_CODE', cdsSourceInstrINSTYPECODE.AsString, []) then
        cdsSourceInstrINSTYPEDESC.AsString := cdsLuInstrumentTypeINSTRUMENT_TYPE_DESC.AsString;
      cdsSourceInstr.Post;

      oDataset.Delete;
    end;

    cdsLuInstrumentType.EnableControls;
    oDataset.EnableControls;
    cdsSourceInstr.EnableControls;
  end;
end;

procedure TfrmCharge.cbChargeCodeEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbChargeCode.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[1], foEqual, cbMarket.EditValue, VarToStr(cbMarket.EditValue));
    Active := True;
  end;
end;

procedure TfrmCharge.cbChargeCodeExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbChargeCode.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmCharge.cdsChargeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsChargeCHARGE_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CHARGE');
  cdsChargeMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
end;

procedure TfrmCharge.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
//  PrepareData;
end;

procedure TfrmCharge.edTablePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsSubject.DataSet;

  if oDataset <> nil then
  begin
    with frmCharges, dmGlobal.IntDataLookup do
    begin
      if frmLuChargeTable.Run(oDataset.FieldByName('MARKETCODE').AsString, oDataset.FieldByName('CHARGE_TABLE_ID').AsString) = mrOK then
        oDataset.FieldByName('CHARGE_TABLE_ID').AsString := cdsLuChargeTableHCHARGE_TABLE_ID.AsString;
    end;
  end;
end;

procedure TfrmCharge.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuChargeConfig.Active then
      cdsLuChargeConfig.Open;
  end;
end;

procedure TfrmCharge.FormShow(Sender: TObject);
begin
  inherited;
  PrepareData;
end;

procedure TfrmCharge.PrepareData;
var
  oDataset, oDatasetValidBoard, oDatasetValidInstrument: TDataset;
begin
  cdsSourceBoard.Close;
  cdsSourceBoard.CreateDataSet;

  cdsSourceInstr.Close;
  cdsSourceInstr.CreateDataSet;

  oDataset := dsSubject.DataSet;
  oDatasetValidBoard := dsValidBoard.DataSet;
  oDatasetValidInstrument := dsValidInstr.DataSet;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBoardByMarket.Close;
    cdsLuBoardByMarket.Params[0].AsString := oDataset.FieldByName('MARKETCODE').AsString;
    cdsLuBoardByMarket.Open;

    cdsSourceBoard.DisableControls;
    cdsLuBoardByMarket.DisableControls;
    cdsLuBoardByMarket.First;

    while not cdsLuBoardByMarket.Eof do
    begin
      if not oDatasetValidBoard.Locate('BOARDID', cdsLuBoardByMarketBOARDID.Value, []) then
      begin
        cdsSourceBoard.Append;
        cdsSourceBoardBOARD.AsString := cdsLuBoardByMarketBOARDID.AsString;
        cdsSourceBoardDESC.AsString := cdsLuBoardByMarketBOARDDESC.AsString;
        cdsSourceBoard.Post;
      end;
      cdsLuBoardByMarket.Next;
    end;

    cdsLuBoardByMarket.EnableControls;
    cdsSourceBoard.EnableControls;

    cdsLuInstrumentType.Close;
    cdsLuInstrumentType.Open;

    cdsSourceInstr.DisableControls;
    cdsLuInstrumentType.DisableControls;
    cdsLuInstrumentType.First;

    while not cdsLuInstrumentType.Eof do
    begin
      if not oDatasetValidInstrument.Locate('INSTRUMENT_TYPE_CODE', cdsLuInstrumentTypeINSTRUMENT_TYPE_CODE.AsString, []) then
      begin
        cdsSourceInstr.Append;
        cdsSourceInstrINSTYPECODE.AsString := cdsLuInstrumentTypeINSTRUMENT_TYPE_CODE.AsString;
        cdsSourceInstrINSTYPEDESC.AsString := cdsLuInstrumentTypeINSTRUMENT_TYPE_DESC.AsString;
        cdsSourceInstr.Post;
      end;
      cdsLuInstrumentType.Next;
    end;

    cdsLuInstrumentType.EnableControls;
    cdsSourceInstr.EnableControls;
  end;
end;

procedure TfrmCharge.rgBasisPropertiesEditValueChanged(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsSubject.DataSet;
  if oDataset <> nil then
  begin
    edRate.Enabled := (rgBasis.EditValue = 'R');
    edAmount.Enabled := (rgBasis.EditValue = 'A');
    edTable.Enabled := (rgBasis.EditValue = 'T');

    if (oDataset.State in [dsInsert, dsEdit]) then
    begin
      if rgBasis.EditValue = 'R' then
      begin
        oDataset.FieldByName('AMOUNT').AsFloat := 0;
        oDataset.FieldByName('CHARGE_TABLE_ID').Clear;
      end;

      if rgBasis.EditValue = 'A' then
      begin
        oDataset.FieldByName('RATE').AsFloat := 0;
        oDataset.FieldByName('RATE_SOURCE').Clear;
        oDataset.FieldByName('CHARGE_TABLE_ID').Clear;
      end;

      if rgBasis.EditValue = 'T' then
      begin
        oDataset.FieldByName('RATE').AsFloat := 0;
        oDataset.FieldByName('RATE_SOURCE').Clear;
        oDataset.FieldByName('CHARGE_TABLE_ID').AsFloat := 0;
      end;
    end;
  end;
end;

procedure TfrmCharge.tabEditorDataChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsSubject.DataSet;

  if oDataset is TClientDataset then
  begin
    edTable.Enabled := not TClientDataset(oDataset).ReadOnly;
    btnAddBoard.Enabled := edTable.Enabled;
    btnRemoveBoard.Enabled := edTable.Enabled;
    btnRemoveAllBoard.Enabled := edTable.Enabled;
    btnAddAllBoard.Enabled := edTable.Enabled;
    btnAddInstrument.Enabled := edTable.Enabled;
    btnRemoveInstrument.Enabled := edTable.Enabled;
    btnRemoveAllInstrument.Enabled := edTable.Enabled;
    btnAddAllInstrument.Enabled := edTable.Enabled;
  end;
end;

Initialization
  RegisterClass(TfrmCharge);

end.
