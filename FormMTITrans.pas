unit FormMTITrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMemo, cxRichEdit, cxDBRichEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxTextEdit, dxLayoutLookAndFeels, cxClasses,
  Datasnap.DBClient, NClientDataset;

type
  TfrmMTITrans = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsMTITrans: TNClientDataset;
    cdsMTITransTRANSID: TIntegerField;
    cdsMTITransTRANSCODE: TStringField;
    cdsMTITransDESCRIPTION: TStringField;
    cdsMTITransTRANSTYPE: TStringField;
    cdsMTITransSOURCEDATA: TMemoField;
    cdsMTITransMODDA: TDateTimeField;
    cdsMTITransMODUI: TStringField;
    cdsMTITransAPPDA: TDateTimeField;
    cdsMTITransAPPUI: TStringField;
    cdsMTITransUNDER4Y: TIntegerField;
    cdsMTITransUNDER4YDA: TDateTimeField;
    cdsMTITransNOTES4Y: TStringField;
    cdsMTITransISDEL: TIntegerField;
    cdsMTITransID: TLargeintField;
    cdsMTITransRecord: TNClientDataset;
    cdsMTITransRecordTRANS_RECORD_ID: TIntegerField;
    cdsMTITransRecordTRANSID: TIntegerField;
    cdsMTITransRecordRECORDID: TIntegerField;
    cdsMTITransRecordSEQID: TIntegerField;
    cdsMTITransRecordMINREC: TIntegerField;
    cdsMTITransRecordMAXREC: TIntegerField;
    cdsMTITransRecordNUM_FIELDS: TIntegerField;
    cdsMTITransRecordREQ_FIELDS: TIntegerField;
    cdsMTITransRecordMODDA: TDateTimeField;
    cdsMTITransRecordMODUI: TStringField;
    cdsMTITransRecordAPPDA: TDateTimeField;
    cdsMTITransRecordAPPUI: TStringField;
    cdsMTITransRecordUNDER4Y: TIntegerField;
    cdsMTITransRecordUNDER4YDA: TDateTimeField;
    cdsMTITransRecordNOTES4Y: TStringField;
    cdsMTITransRecordISDEL: TIntegerField;
    cdsMTITransRecordID: TLargeintField;
    procedure cdsMTITransBeforePost(DataSet: TDataSet);
    procedure cdsMTITransNewRecord(DataSet: TDataSet);
    procedure cdsMTITransRecordBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FTransID: Int64;
  public
    { Public declarations }
  end;

var
  frmMTITrans: TfrmMTITrans;

implementation

{$R *.dfm}

uses FormMTITransList, DataGlobal;

procedure TfrmMTITrans.cdsMTITransBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsMTITransTRANSID.IsNull) or (cdsMTITransTRANSID.AsInteger = -1) then
  begin
    FTransID := dmGlobal.RemoteServer.GetSeq('TBL_B_MTI_TRANS');
    cdsMTITransTRANSID.AsInteger := FTransID;
  end
  else
    FTransID := cdsMTITransTRANSID.AsInteger;
end;

procedure TfrmMTITrans.cdsMTITransNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsMTITransTRANSID.AsInteger := -1;

  cdsMTITransRecord.Close;
  cdsMTITransRecord.Params[0].AsInteger := -1;
  cdsMTITransRecord.Open;

  cdsMTITransRecord.Append;
end;

procedure TfrmMTITrans.cdsMTITransRecordBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsMTITransRecordTRANSID.AsInteger := FTransID;
end;

end.
