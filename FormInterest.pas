unit FormInterest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxButtonEdit, cxDBEdit,
  cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Data.DB, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset, cxClasses,
  dxLayoutLookAndFeels, cxCurrencyEdit;

type
  TfrmInterest = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    rgCalcMethod: TcxDBRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    edInterestRate: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edInterestTable: TcxDBButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsInterest: TNClientDataset;
    cdsInterestINTERESTCODE: TStringField;
    cdsInterestCCY: TStringField;
    cdsInterestINTERESTDESC: TStringField;
    cdsInterestCALCMETHOD: TStringField;
    cdsInterestINTERESTRATE: TFloatField;
    cdsInterestINTERESTTABLE: TStringField;
    cdsInterestCALCBASIS: TStringField;
    cdsInterestINTERESTDAY: TIntegerField;
    cdsInterestISACCRUE: TSmallintField;
    cdsInterestMODDA: TDateTimeField;
    cdsInterestMODUI: TStringField;
    cdsInterestAPPDA: TDateTimeField;
    cdsInterestAPPUI: TStringField;
    cdsInterestISDEL: TIntegerField;
    cdsInterestID: TLargeintField;
    cdsInterestUNDER4Y: TIntegerField;
    cdsInterestUNDER4YDA: TDateTimeField;
    cdsInterestNOTES4Y: TStringField;
    cdsInterestPENALTYRATE: TFloatField;
    cdsInterestPENALTYDAY: TIntegerField;
    cdsInterestPENALTYCALC_DAY: TIntegerField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cxDBRadioGroup1PropertiesChange(Sender: TObject);
    procedure edInterestTablePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterest: TfrmInterest;

implementation

{$R *.dfm}

uses FormInterestList, DataGlobal, FormLuInterestTable;

procedure TfrmInterest.cxDBRadioGroup1PropertiesChange(Sender: TObject);
begin
  inherited;
  edInterestRate.Enabled := rgCalcMethod.EditValue = 'R';
  edInterestTable.Enabled := rgCalcMethod.EditValue = 'T';
end;

procedure TfrmInterest.edInterestTablePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if frmLuInterestTable.Run(edInterestTable.EditText) = mrOK then
  begin
    edInterestTable.DataBinding.Field.AsString := dmGlobal.IntDataLookup.cdsLuInterestTableHINTERESTTABLECODE.AsString;
  end;
end;

Initialization
  RegisterClass(TfrmInterest);

end.
