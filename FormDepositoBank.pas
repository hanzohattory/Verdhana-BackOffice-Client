unit FormDepositoBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit;

type
  TfrmDepositoBank = class(TfrmEditorData)
    cdsSubject: TNClientDataset;
    cdsSubjectBNCODE: TStringField;
    cdsSubjectBNNAME: TStringField;
    cdsSubjectDESCRIPTION: TStringField;
    cdsSubjectCOACODE: TStringField;
    cdsSubjectMAX_LPS: TFloatField;
    cdsSubjectMODDA: TDateTimeField;
    cdsSubjectMODUI: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure cdsSubjectBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepositoBank: TfrmDepositoBank;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmDepositoBank.cdsSubjectBeforePost(DataSet: TDataSet);
begin
  cdsSubjectMODDA.asDateTime := Now;
  cdsSubjectMODUI.asString   := dmGlobal.UserID;
  inherited;
end;

end.
