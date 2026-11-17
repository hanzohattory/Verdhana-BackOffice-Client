unit FormActLedgerType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls,
  Datasnap.DBClient, NClientDataset;

type
  TfrmActLedgerType = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    luCategory: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    luInterest: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cdsActLedgerType: TNClientDataset;
    cdsActLedgerTypeALTYPE: TStringField;
    cdsActLedgerTypeALDESCRIPTION: TStringField;
    cdsActLedgerTypeALSYSTEM: TStringField;
    cdsActLedgerTypeGL_SUBGL: TStringField;
    cdsActLedgerTypeCASH_STOCK: TStringField;
    cdsActLedgerTypeMODDA: TDateTimeField;
    cdsActLedgerTypeMODUI: TStringField;
    cdsActLedgerTypeAPPDA: TDateTimeField;
    cdsActLedgerTypeAPPUI: TStringField;
    cdsActLedgerTypeUNDER4Y: TIntegerField;
    cdsActLedgerTypeUNDER4YDA: TDateTimeField;
    cdsActLedgerTypeNOTES4Y: TStringField;
    cdsActLedgerTypeISDEL: TIntegerField;
    cdsActLedgerTypeID: TLargeintField;
    cdsActLedgerTypeSETTLE: TStringField;
    cdsActLedgerTypeBAL: TStringField;
    cdsActLedgerTypeCATCODE: TStringField;
    cdsActLedgerTypeCALCINTEREST: TStringField;
    cdsActLedgerTypeALINSTBASKET: TStringField;
    cdsActLedgerTypeINITIAL_CODE: TStringField;
    cdsActLedgerTypeCOMPANY_SETUP: TStringField;
    cdsActLedgerTypeCHANGES: TStringField;
    cdsActLedgerTypeAL_OWNER: TStringField;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActLedgerType: TfrmActLedgerType;

implementation

{$R *.dfm}

uses DataGlobal, FormActLedgerTypeList;

Initialization
  RegisterClass(TfrmActLedgerType);

end.
