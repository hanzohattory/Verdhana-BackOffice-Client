unit FormGLType1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmGLType1 = class(TfrmEditorData)
    cdsGLTypeH: TNClientDataset;
    cdsGLTypeHGLTYPE_ID: TIntegerField;
    cdsGLTypeHGLTYPE_CODE: TStringField;
    cdsGLTypeHGLTYPE_DESC: TStringField;
    cdsGLTypeHMODDA: TDateTimeField;
    cdsGLTypeHMODUI: TStringField;
    cdsGLTypeHAPPDA: TDateTimeField;
    cdsGLTypeHAPPUI: TStringField;
    cdsGLTypeHUNDER4Y: TIntegerField;
    cdsGLTypeHUNDER4YDA: TDateTimeField;
    cdsGLTypeHNOTES4Y: TStringField;
    cdsGLTypeHISDEL: TIntegerField;
    cdsGLTypeHID: TLargeintField;
    cdsGLTypeHqryGLTypeD: TDataSetField;
    cdsGLTypeD: TNClientDataset;
    cdsGLTypeDGLTYPE_ID: TIntegerField;
    cdsGLTypeDMARKETCODE: TStringField;
    cdsGLTypeDLEDGERTYPE: TStringField;
    cdsGLTypeDGLACCOUNTID: TLargeintField;
    cdsGLTypeDMODDA: TDateTimeField;
    cdsGLTypeDMODUI: TStringField;
    cdsGLTypeDAPPDA: TDateTimeField;
    cdsGLTypeDAPPUI: TStringField;
    cdsGLTypeDUNDER4Y: TIntegerField;
    cdsGLTypeDUNDER4YDA: TDateTimeField;
    cdsGLTypeDNOTES4Y: TStringField;
    cdsGLTypeDISDEL: TIntegerField;
    cdsGLTypeDID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    grdGLType: TcxGrid;
    gvwGLType: TcxGridDBTableView;
    grdGLTypeLevel1: TcxGridLevel;
    dsGLTypeD: TDataSource;
    cdsGLTypeDLEDGERNAME: TStringField;
    gvwGLTypeGLTYPE_ID: TcxGridDBColumn;
    gvwGLTypeMARKETCODE: TcxGridDBColumn;
    gvwGLTypeLEDGERTYPE: TcxGridDBColumn;
    gvwGLTypeGLACCOUNTID: TcxGridDBColumn;
    gvwGLTypeMODDA: TcxGridDBColumn;
    gvwGLTypeMODUI: TcxGridDBColumn;
    gvwGLTypeAPPDA: TcxGridDBColumn;
    gvwGLTypeAPPUI: TcxGridDBColumn;
    gvwGLTypeUNDER4Y: TcxGridDBColumn;
    gvwGLTypeUNDER4YDA: TcxGridDBColumn;
    gvwGLTypeNOTES4Y: TcxGridDBColumn;
    gvwGLTypeISDEL: TcxGridDBColumn;
    gvwGLTypeID: TcxGridDBColumn;
    gvwGLTypeLEDGERNAME: TcxGridDBColumn;
    cdsGLTypeDCOA: TStringField;
    gvwGLTypeCOA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsGLTypeHNewRecord(DataSet: TDataSet);
    procedure cdsGLTypeHBeforePost(DataSet: TDataSet);
    procedure gvwGLTypeInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure cdsGLTypeDNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLType1: TfrmGLType1;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, cxLookupDBGrid;

procedure TfrmGLType1.cdsGLTypeDNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGLTypeDGLACCOUNTID.AsInteger := 0;
end;

procedure TfrmGLType1.cdsGLTypeHBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsGLTypeH.State = dsInsert then
  begin
    cdsGLTypeHGLTYPE_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_GLTYPE_H');
  end;
end;

procedure TfrmGLType1.cdsGLTypeHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGLTypeHGLTYPE_ID.AsInteger := -1;
end;

procedure TfrmGLType1.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuLedgerType.Active then
      cdsLuLedgerType.Open;

    if not cdsLuMarket.Active then
      cdsLuMarket.Open;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open;
  end;
end;

procedure TfrmGLType1.gvwGLTypeInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = gvwGLTypeLEDGERTYPE then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, gvwGLTypeMARKETCODE.EditValue, VarToStr(gvwGLTypeMARKETCODE.EditValue));
      Active := True;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmGLType1);

end.
