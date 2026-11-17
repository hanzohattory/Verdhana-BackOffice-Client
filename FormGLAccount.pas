unit FormGLAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxGroupBox,
  cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ExtCtrls,
  Vcl.DBCtrls, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels,
  cxCurrencyEdit, cxImageComboBox, cxClasses;

type
  TfrmGLAccount = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBRadioGroup2: TcxDBRadioGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lcGroupAccount: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsGLAccount: TNClientDataset;
    cdsGLAccountGLACCOUNTID: TIntegerField;
    cdsGLAccountGLACCOUNTCODE: TStringField;
    cdsGLAccountGLACCOUNTNAME: TStringField;
    cdsGLAccountCCY: TStringField;
    cdsGLAccountPLBS: TStringField;
    cdsGLAccountTRXSTATUS: TStringField;
    cdsGLAccountGLACCOUNTSTATUS: TStringField;
    cdsGLAccountGROUPID: TIntegerField;
    cdsGLAccountMODDA: TDateTimeField;
    cdsGLAccountMODUI: TStringField;
    cdsGLAccountAPPDA: TDateTimeField;
    cdsGLAccountAPPUI: TStringField;
    cdsGLAccountUNDER4Y: TIntegerField;
    cdsGLAccountUNDER4YDA: TDateTimeField;
    cdsGLAccountNOTES4Y: TStringField;
    cdsGLAccountISDEL: TIntegerField;
    cdsGLAccountID: TLargeintField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsGLAccountDC: TStringField;
    cdsGLAccountCATEGORY: TStringField;
    cdsGLAccountVD512_LINE: TLargeintField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure cdsGLAccountNewRecord(DataSet: TDataSet);
    procedure cdsGLAccountBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLAccount: TfrmGLAccount;

implementation

{$R *.dfm}

uses DataGlobal, FormCOAList;

procedure TfrmGLAccount.cdsGLAccountBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsGLAccount.State = dsInsert then
    cdsGLAccountGLACCOUNTID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_GL_ACCOUNT');
end;

procedure TfrmGLAccount.cdsGLAccountNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsGLAccountGLACCOUNTID.AsInteger := -1;
  cdsGLAccountGROUPID.AsInteger := 0;
end;

procedure TfrmGLAccount.FormShow(Sender: TObject);
begin
  inherited;
  lcGroupAccount.Visible := dmGlobal.RemoteServer.GetBrokerCode <> 'YU';
end;

Initialization
  RegisterClass(TfrmGLAccount);

end.
