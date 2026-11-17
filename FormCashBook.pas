unit FormCashBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxClasses;

type
  TfrmCashBook = class(TfrmEditorData)
    cdsCashBook: TNClientDataset;
    cdsCashBookCBID: TIntegerField;
    cdsCashBookCBCODE: TStringField;
    cdsCashBookCBDESC: TStringField;
    cdsCashBookCCYCODE: TStringField;
    cdsCashBookGLACCOUNTID: TLargeintField;
    cdsCashBookSTAT: TStringField;
    cdsCashBookMODDA: TDateTimeField;
    cdsCashBookMODUI: TStringField;
    cdsCashBookAPPDA: TDateTimeField;
    cdsCashBookAPPUI: TStringField;
    cdsCashBookUNDER4Y: TIntegerField;
    cdsCashBookUNDER4YDA: TDateTimeField;
    cdsCashBookNOTES4Y: TStringField;
    cdsCashBookISDEL: TIntegerField;
    cdsCashBookID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsCashBookCOA: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    procedure cdsCashBookNewRecord(DataSet: TDataSet);
    procedure cdsCashBookBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashBook: TfrmCashBook;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashBook.cdsCashBookBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCashBook.State = dsInsert then
    cdsCashBookCBID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHBOOK');
end;

procedure TfrmCashBook.cdsCashBookNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCashBookCBID.AsInteger        := -1;
  cdsCashBookSTAT.AsString         := '1';
  cdsCashBookCCYCODE.AsString      := dmGlobal.RemoteServer.GetLocalCCY;
  cdsCashBookGLACCOUNTID.AsInteger := -1;
end;

procedure TfrmCashBook.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open;
  end;
end;

Initialization
  RegisterClass(TfrmCashBook);

end.
