unit FormAccountInterest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxImageComboBox, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxRadioGroup, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxBlobEdit, cxLabel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, Vcl.ExtCtrls, Vcl.DBCtrls, cxDBEditRepository,
  cxEditRepositoryItems, Datasnap.DBClient, NClientDataset, cxCurrencyEdit,
  cxButtonEdit, cxCalendar;

type
  TfrmAccountInterest = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    Repository: TcxEditRepository;
    luCashInstr: TcxEditRepositoryImageComboBoxItem;
    luStockDelInstr: TcxEditRepositoryImageComboBoxItem;
    luStockRecInstr: TcxEditRepositoryImageComboBoxItem;
    luCustBank: TcxEditRepositoryLookupComboBoxItem;
    luCustCustody: TcxEditRepositoryLookupComboBoxItem;
    cdsLuCustBank: TNClientDataset;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustCustody: TNClientDataset;
    cdsLuCustCustodyACCCUSTODYID: TIntegerField;
    cdsLuCustCustodyACCID: TIntegerField;
    cdsLuCustCustodyCUSTODYCODE: TStringField;
    cdsLuCustCustodyCUSTODYACCNO: TStringField;
    cdsLuCustCustodyCUSTODYACCNAME: TStringField;
    cdsLuCustCustodyCUSTODYBRANCH: TStringField;
    dsLuCustBank: TDataSource;
    dsLuCustCustody: TDataSource;
    dsInterest: TDataSource;
    cxGrid9: TcxGrid;
    gvwInterest: TcxGridDBBandedTableView;
    gvwInterestINTERESTTYPE: TcxGridDBBandedColumn;
    gvwInterestINTERESTCODE: TcxGridDBBandedColumn;
    gvwInterestCCY: TcxGridDBBandedColumn;
    gvwInterestCALCMETHOD: TcxGridDBBandedColumn;
    gvwInterestINTERESTRATE: TcxGridDBBandedColumn;
    gvwInterestINTERESTTABLE: TcxGridDBBandedColumn;
    gvwInterestCALCBASIS: TcxGridDBBandedColumn;
    gvwInterestINTERESTDAY: TcxGridDBBandedColumn;
    cxGridLevel9: TcxGridLevel;
    gvwInterestACCID: TcxGridDBBandedColumn;
    gvwInterestSTARTDATE_CALC: TcxGridDBBandedColumn;
    gvwInterestSAVE_INTERESTTAX: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure gvwInterestINTERESTTABLEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gvwInterestFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure gvwInterestFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    procedure PrepareLookupData;
    procedure PrepareLookupBank;
  public
    { Public declarations }
  end;

var
  frmAccountInterest: TfrmAccountInterest;

implementation

{$R *.dfm}

uses DataGlobal, FormAccountInterestList, FormLuAccBankGroupByEntity,
  FormLuAccCustodyGroupByEntity, FormLuInterestTable;

procedure TfrmAccountInterest.FormShow(Sender: TObject);
begin
  inherited;
  PrepareLookupData;
end;

procedure TfrmAccountInterest.gvwInterestFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if AFocusedItem = gvwInterestINTERESTCODE then
    begin
      if (not cdsLuInterestByType.Active) or
        (cdsLuInterestByType.Params[0].AsString <> gvwInterestINTERESTTYPE.DataBinding.Field.AsString) then
      begin
        cdsLuInterestByType.Close;
        cdsLuInterestByType.Params[0].AsString := gvwInterestINTERESTTYPE.DataBinding.Field.AsString;
        cdsLuInterestByType.Open;
      end;
    end;
  end;
end;

procedure TfrmAccountInterest.gvwInterestFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    begin
      if (not cdsLuInterestByType.Active) or
        (cdsLuInterestByType.Params[0].AsString <> gvwInterestINTERESTTYPE.DataBinding.Field.AsString) then
      begin
        cdsLuInterestByType.Close;
        cdsLuInterestByType.Params[0].AsString := gvwInterestINTERESTTYPE.DataBinding.Field.AsString;
        cdsLuInterestByType.Open;
      end;
    end;
  end;
end;

procedure TfrmAccountInterest.gvwInterestINTERESTTABLEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsInterest.DataSet).ReadOnly then
  begin
    if frmLuInterestTable.Run(dsInterest.DataSet.FieldByName('INTERESTTABLE').AsString) = mrOK then
    begin
      if not (dsInterest.DataSet.State in dsEditModes) then
        dsInterest.DataSet.Edit;

      dsInterest.DataSet.FieldByName('INTERESTTABLE').AsString := dmGlobal.IntDataLookup.cdsLuInterestTableHINTERESTTABLECODE.AsString;
    end;
  end;
end;

procedure TfrmAccountInterest.PrepareLookupBank;
begin
  cdsLuCustBank.Close;
  cdsLuCustBank.CreateDataSet;
end;

procedure TfrmAccountInterest.PrepareLookupData;
begin
  PrepareLookupBank;
end;

end.
