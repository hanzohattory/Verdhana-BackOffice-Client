unit FormCurrency;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutLookAndFeels, cxClasses;

type
  TfrmCurrency = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsCcy: TNClientDataset;
    cdsCcyCCYCODE: TStringField;
    cdsCcyCCYNAME: TStringField;
    cdsCcySPCONACC: TStringField;
    cdsCcySPPOSACC: TStringField;
    cdsCcyMODDA: TDateTimeField;
    cdsCcyMODUI: TStringField;
    cdsCcyAPPDA: TDateTimeField;
    cdsCcyAPPUI: TStringField;
    cdsCcyISDEL: TIntegerField;
    cdsCcyID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsCcySPCONACCID: TLargeintField;
    cdsCcySPPOSACCID: TLargeintField;
    cdsCcyCCY_REVALGLID: TLargeintField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cdsCcySPCONNAME: TStringField;
    cdsCcySPPOSNAME: TStringField;
    cdsCcyCCY_REVALNAME: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCurrency: TfrmCurrency;

implementation

{$R *.dfm}

uses FormCurrencyList, DataGlobal, DataLookUp;

procedure TfrmCurrency.btnOKClick(Sender: TObject);
begin
  cdsCcySPCONACC.AsInteger := cdsCcySPCONACCID.AsInteger;
  cdsCcySPPOSACC.AsInteger := cdsCcySPPOSACCID.AsInteger;

  inherited;
end;

procedure TfrmCurrency.FormShow(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuGLAccountTrx.Close;
    cdsLuGLAccountTrx.Open;
  end;
end;

Initialization
  RegisterClass(TfrmCurrency);

end.
