unit FormTradingLimitClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxImageComboBox, cxDBEdit,
  cxCheckBox, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Data.DB, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxRadioGroup, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset;

type
  TfrmTradingLimitClass = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBRadioGroup4: TcxDBRadioGroup;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBRadioGroup5: TcxDBRadioGroup;
    dxLayoutControl4Item3: TdxLayoutItem;
    cxDBRadioGroup6: TcxDBRadioGroup;
    dxLayoutControl4Item4: TdxLayoutItem;
    cxDBRadioGroup7: TcxDBRadioGroup;
    dxLayoutControl4Item5: TdxLayoutItem;
    cxDBRadioGroup8: TcxDBRadioGroup;
    dxLayoutControl4Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl4Item7: TdxLayoutItem;
    cdsTradingLimit: TNClientDataset;
    cdsTradingLimitTLCLASSID: TIntegerField;
    cdsTradingLimitTLCLASSCODE: TStringField;
    cdsTradingLimitTLCLASSDESC: TStringField;
    cdsTradingLimitPRDCODE: TStringField;
    cdsTradingLimitPRDTYPE: TStringField;
    cdsTradingLimitTLB_CHK: TStringField;
    cdsTradingLimitTLB_CHK_MODEL: TStringField;
    cdsTradingLimitTLB_CHK_STOCK: TStringField;
    cdsTradingLimitTLB_CHK_OVERLIMIT: TStringField;
    cdsTradingLimitTLB_CHK_OVERDUE: TStringField;
    cdsTradingLimitTLB_CHK_STSNOTVALID: TStringField;
    cdsTradingLimitTLB_CHK_MRGNONMRG: TStringField;
    cdsTradingLimitTLS_CHK: TStringField;
    cdsTradingLimitTLS_CHK_MODEL: TStringField;
    cdsTradingLimitTLS_CHK_SHORTSELL: TStringField;
    cdsTradingLimitTLS_SSNONSS: TStringField;
    cdsTradingLimitTLS_CHK_OVERDUE: TStringField;
    cdsTradingLimitTLS_CHK_STSNOTVALID: TStringField;
    cdsTradingLimitCASH_VAL: TFloatField;
    cdsTradingLimitSTOCK_VAL: TFloatField;
    cdsTradingLimitMODDA: TDateTimeField;
    cdsTradingLimitMODUI: TStringField;
    cdsTradingLimitAPPDA: TDateTimeField;
    cdsTradingLimitAPPUI: TStringField;
    cdsTradingLimitUNDER4Y: TIntegerField;
    cdsTradingLimitUNDER4YDA: TDateTimeField;
    cdsTradingLimitNOTES4Y: TStringField;
    cdsTradingLimitISDEL: TIntegerField;
    cdsTradingLimitID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure cdsTradingLimitPRDTYPEChange(Sender: TField);
  private
    { Private declarations }
    FPrdType: String;
  public
    { Public declarations }
  end;

var
  frmTradingLimitClass: TfrmTradingLimitClass;

implementation

{$R *.dfm}

uses DataGlobal, FormTradingLimitClassList;

procedure TfrmTradingLimitClass.cdsTradingLimitPRDTYPEChange(Sender: TField);
begin
  inherited;

  with dmGlobal.IntDataLookup do
  begin
    if (Sender.AsString <> FPrdType) or (not cdsLuProduct.Active) then
    begin
//      cdsTradingLimitPRDCODE.Clear;

      cdsLuProduct.Close;
      cdsLuProduct.Open;
    end;
  end;

  FPrdType := Sender.AsString;
end;

procedure TfrmTradingLimitClass.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuProductType.Active then
      cdsLuProductType.Open
    else
      cdsLuProductType.Refresh;
  end;
end;

Initialization
  RegisterClass(TfrmTradingLimitClass);

end.
