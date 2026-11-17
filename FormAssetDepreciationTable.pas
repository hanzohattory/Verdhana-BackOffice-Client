unit FormAssetDepreciationTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox, cxDBEdit,
  cxTextEdit, Vcl.Tabs, dxStatusBar, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset;

type
  TfrmAssetDepreciationTable = class(TfrmEditorData)
    dsDetail: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    gvwDeprecTableValue: TcxGridDBTableView;
    grdDeprecTableValueLevel1: TcxGridLevel;
    grdDeprecTableValue: TcxGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    gvwDeprecTableValueBYYEAR: TcxGridDBColumn;
    gvwDeprecTableValueDEPRECIATION_PCT: TcxGridDBColumn;
    btnCalc: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    cdsAssetDeprecTableH: TNClientDataset;
    cdsAssetDeprecTableHASSET_DEPRECIATION_TABLE_ID: TIntegerField;
    cdsAssetDeprecTableHASSET_DEPRECIATION_TABLE_DESC: TStringField;
    cdsAssetDeprecTableHECONOMIC_LIFE: TIntegerField;
    cdsAssetDeprecTableHIS_RECALC_ONJANUARY: TStringField;
    cdsAssetDeprecTableHIS_BASEDON_BOOKVALUE: TStringField;
    cdsAssetDeprecTableHIS_WRITEOFF_ENDVALUE: TStringField;
    cdsAssetDeprecTableHMODDA: TDateTimeField;
    cdsAssetDeprecTableHMODUI: TStringField;
    cdsAssetDeprecTableHAPPDA: TDateTimeField;
    cdsAssetDeprecTableHAPPUI: TStringField;
    cdsAssetDeprecTableHUNDER4Y: TIntegerField;
    cdsAssetDeprecTableHUNDER4YDA: TDateTimeField;
    cdsAssetDeprecTableHNOTES4Y: TStringField;
    cdsAssetDeprecTableHISDEL: TIntegerField;
    cdsAssetDeprecTableHID: TLargeintField;
    cdsAssetDeprecTableHqryAssetDeprecTableD: TDataSetField;
    cdsAssetDeprecTableD: TNClientDataset;
    cdsAssetDeprecTableDASSET_DEPRECIATION_TABLE_ID: TIntegerField;
    cdsAssetDeprecTableDBYYEAR: TIntegerField;
    cdsAssetDeprecTableDDEPRECIATION_PCT: TFloatField;
    cdsAssetDeprecTableDMODDA: TDateTimeField;
    cdsAssetDeprecTableDMODUI: TStringField;
    cdsAssetDeprecTableDAPPDA: TDateTimeField;
    cdsAssetDeprecTableDAPPUI: TStringField;
    cdsAssetDeprecTableDUNDER4Y: TIntegerField;
    cdsAssetDeprecTableDUNDER4YDA: TDateTimeField;
    cdsAssetDeprecTableDNOTES4Y: TStringField;
    cdsAssetDeprecTableDISDEL: TIntegerField;
    cdsAssetDeprecTableDID: TLargeintField;
    procedure btnOKClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure cdsAssetDeprecTableHNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAssetDepreciationTable: TfrmAssetDepreciationTable;

implementation

{$R *.dfm}

uses FormAssetDepreciationTableList, DataGlobal;

procedure TfrmAssetDepreciationTable.btnCalcClick(Sender: TObject);
var
  oDataset: TDataset;
  byYearPct: Double;
  i: Integer;
begin
  inherited;
  if (dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').IsNull) or (dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').AsInteger <= 0) then
  begin
    dmGlobal.ErrorMessage('Life must have value more than 0 year.');
    Abort;
  end;

  oDataset := dsDetail.DataSet;
  oDataset.DisableControls;
  Try
    while not oDataset.IsEmpty do
    begin
      oDataset.Delete;
    end;

    byYearPct := 100 / dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').AsInteger;

    for i := 1 to dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').AsInteger do
    begin
      oDataset.Append;
      oDataset.FieldByName('BYYEAR').AsInteger := i;
      oDataset.FieldByName('DEPRECIATION_PCT').AsFloat := byYearPct;
      oDataset.Post;
    end;

  Finally
    oDataset.EnableControls;
  End;
end;

procedure TfrmAssetDepreciationTable.btnOKClick(Sender: TObject);
begin
  if (dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').IsNull) or (dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').AsInteger <= 0) then
  begin
    dmGlobal.ErrorMessage('Life must have value more than 0 year.');
    Abort;
  end;

  if (dsSubject.DataSet.FieldByName('ECONOMIC_LIFE').AsInteger <> dsDetail.DataSet.RecordCount) then
  begin
    dmGlobal.ErrorMessage('Detail year depreciation record must same with life year value.' + #13 +
      'Please Recalculate Depreciation Value!');
    Abort;
  end;

  if gvwDeprecTableValue.DataController.Summary.FooterSummaryValues[0] <> 100 then
  begin
    dmGlobal.ErrorMessage('Total year depreciation value must be 100%!');
    Abort;
  end;

  inherited;
end;

procedure TfrmAssetDepreciationTable.cdsAssetDeprecTableHNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsAssetDeprecTableHASSET_DEPRECIATION_TABLE_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ASSETDEPRECIATIONTABLE_H');
end;

Initialization
  RegisterClass(TfrmAssetDepreciationTable);

end.
