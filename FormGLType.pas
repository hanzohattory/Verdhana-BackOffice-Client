unit FormGLType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Data.DB, Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmGLType = class(TfrmEditorData)
    cdsGLType: TNClientDataset;
    cdsGLTypePRODUCTCODE: TStringField;
    cdsGLTypeACCOUNTTYPE: TStringField;
    cdsGLTypeAFFILIASI: TStringField;
    cdsGLTypeALTYPE: TStringField;
    cdsGLTypeGLACCOUNTID: TLargeintField;
    cdsGLTypeUSEGL_ANALIZE: TStringField;
    cdsGLTypeID: TLargeintField;
    cdsGLTypeMODDA: TDateTimeField;
    cdsGLTypeMODUI: TStringField;
    cdsGLTypeCCYCODE: TStringField;
    cdsGLTypeGLTYPEDESC: TStringField;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure cdsGLTypeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLType: TfrmGLType;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGLType.cdsGLTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGLTypeAFFILIASI.AsString := '0';
  cdsGLTypeUSEGL_ANALIZE.AsString := '0';
  cdsGLTypeCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmGLType.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuProduct.Active then
      cdsLuProduct.Open;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open;

    if not cdsLuActLedgerType.Active then
      cdsLuActLedgerType.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmGLType);

end.
