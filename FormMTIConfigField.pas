unit FormMTIConfigField;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmMTIConfigField = class(TForm)
    dsField: TDataSource;
    dsRecord: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    grdRecord: TcxGrid;
    gvwRecord: TcxGridDBTableView;
    grdRecordLevel1: TcxGridLevel;
    gvwRecordCONFIG_RECORD_ID: TcxGridDBColumn;
    gvwRecordFIELDID: TcxGridDBColumn;
    gvwRecordSOURCEDATA: TcxGridDBColumn;
    gvwRecordSOURCEVALUE: TcxGridDBColumn;
    gvwRecordMODDA: TcxGridDBColumn;
    gvwRecordMODUI: TcxGridDBColumn;
    gvwRecordAPPDA: TcxGridDBColumn;
    gvwRecordAPPUI: TcxGridDBColumn;
    gvwRecordUNDER4Y: TcxGridDBColumn;
    gvwRecordUNDER4YDA: TcxGridDBColumn;
    gvwRecordNOTES4Y: TcxGridDBColumn;
    gvwRecordISDEL: TcxGridDBColumn;
    gvwRecordID: TcxGridDBColumn;
    procedure gvwRecordFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gvwRecordFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMTIConfigField: TfrmMTIConfigField;

implementation

{$R *.dfm}

uses FormMTIConfig, DataGlobal;

procedure TfrmMTIConfigField.gvwRecordFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  if gvwRecordSOURCEDATA.DataBinding.Field.AsString = 'D' then
    gvwRecordSOURCEVALUE.RepositoryItem := dmGlobal.luMTIDatasetField
  else
    gvwRecordSOURCEVALUE.RepositoryItem := nil;
end;

procedure TfrmMTIConfigField.gvwRecordFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if gvwRecordSOURCEDATA.DataBinding.Field.AsString = 'D' then
    gvwRecordSOURCEVALUE.RepositoryItem := dmGlobal.luMTIDatasetField
  else
    gvwRecordSOURCEVALUE.RepositoryItem := nil;
end;

end.
