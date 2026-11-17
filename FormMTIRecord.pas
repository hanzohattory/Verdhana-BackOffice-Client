unit FormMTIRecord;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxRichEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxMemo, cxDBRichEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, dxDateRanges,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, Datasnap.DBClient,
  NClientDataset;

type
  TfrmMTIRecord = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    grdField: TcxGrid;
    gvwField: TcxGridDBTableView;
    grdFieldLevel1: TcxGridLevel;
    dsField: TDataSource;
    gvwFieldFIELDID: TcxGridDBColumn;
    gvwFieldRECORDID: TcxGridDBColumn;
    gvwFieldSEQID: TcxGridDBColumn;
    gvwFieldFIELDNAME: TcxGridDBColumn;
    gvwFieldXMLFIELDNAME: TcxGridDBColumn;
    gvwFieldSYNTAX: TcxGridDBColumn;
    gvwFieldMOC: TcxGridDBColumn;
    gvwFieldNOTES: TcxGridDBColumn;
    gvwFieldMODDA: TcxGridDBColumn;
    gvwFieldMODUI: TcxGridDBColumn;
    gvwFieldAPPDA: TcxGridDBColumn;
    gvwFieldAPPUI: TcxGridDBColumn;
    gvwFieldUNDER4Y: TcxGridDBColumn;
    gvwFieldUNDER4YDA: TcxGridDBColumn;
    gvwFieldNOTES4Y: TcxGridDBColumn;
    gvwFieldISDEL: TcxGridDBColumn;
    gvwFieldID: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsMTIRecord: TNClientDataset;
    cdsMTIRecordRECORDID: TIntegerField;
    cdsMTIRecordRECORDNAME: TStringField;
    cdsMTIRecordDECSRIPTION: TStringField;
    cdsMTIRecordMODDA: TDateTimeField;
    cdsMTIRecordMODUI: TStringField;
    cdsMTIRecordAPPDA: TDateTimeField;
    cdsMTIRecordAPPUI: TStringField;
    cdsMTIRecordUNDER4Y: TIntegerField;
    cdsMTIRecordUNDER4YDA: TDateTimeField;
    cdsMTIRecordNOTES4Y: TStringField;
    cdsMTIRecordISDEL: TIntegerField;
    cdsMTIRecordID: TLargeintField;
    cdsMTIRecordqryMTIField: TDataSetField;
    cdsMTIField: TNClientDataset;
    cdsMTIFieldFIELDID: TIntegerField;
    cdsMTIFieldRECORDID: TIntegerField;
    cdsMTIFieldSEQID: TIntegerField;
    cdsMTIFieldFIELDNAME: TStringField;
    cdsMTIFieldXMLFIELDNAME: TStringField;
    cdsMTIFieldSYNTAX: TStringField;
    cdsMTIFieldMOC: TStringField;
    cdsMTIFieldNOTES: TStringField;
    cdsMTIFieldMODDA: TDateTimeField;
    cdsMTIFieldMODUI: TStringField;
    cdsMTIFieldAPPDA: TDateTimeField;
    cdsMTIFieldAPPUI: TStringField;
    cdsMTIFieldUNDER4Y: TIntegerField;
    cdsMTIFieldUNDER4YDA: TDateTimeField;
    cdsMTIFieldNOTES4Y: TStringField;
    cdsMTIFieldISDEL: TIntegerField;
    cdsMTIFieldID: TLargeintField;
    procedure cdsMTIRecordBeforePost(DataSet: TDataSet);
    procedure cdsMTIFieldBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMTIRecord: TfrmMTIRecord;

implementation

{$R *.dfm}

uses FormMTIRecordList, DataGlobal;

procedure TfrmMTIRecord.cdsMTIFieldBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsMTIFieldFIELDID.IsNull then
    cdsMTIFieldFIELDID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_MTI_FIELD');
end;

procedure TfrmMTIRecord.cdsMTIRecordBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsMTIRecordRECORDID.IsNull then
    cdsMTIRecordRECORDID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_MTI_RECORD');
end;

end.
