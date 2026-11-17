unit FormCompAccountBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxImageComboBox, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxRadioGroup, cxCheckBox;

type
  TfrmCompAccountBank = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    pageAccount: TcxPageControl;
    tabGeneral: TcxTabSheet;
    dsCharge: TDataSource;
    dsComm: TDataSource;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsBank: TDataSource;
    dxLayoutControl1Group3: TdxLayoutGroup;
    tabLedgerAcc: TcxTabSheet;
    cxGrid2: TcxGrid;
    gvwLedgerAcc: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsLedgerAcc: TDataSource;
    gvwLedgerAccALTYPE: TcxGridDBColumn;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    luAccType: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    gvwLedgerAccALCODE: TcxGridDBColumn;
    gvwLedgerAccBANKCODE: TcxGridDBColumn;
    gvwLedgerAccBANKACCNO: TcxGridDBColumn;
    gvwLedgerAccBANKACCNAME: TcxGridDBColumn;
    gvwLedgerAccBANKBRANCH: TcxGridDBColumn;
    gvwLedgerAccCALCINTEREST: TcxGridDBColumn;
    gvwLedgerAccINTERESTCODE: TcxGridDBColumn;
    gvwLedgerAccINSTRUCTIONTYPE: TcxGridDBColumn;
    tabTransSetting: TcxTabSheet;
    dsTransLedger: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1TRANSTYPE_CODE: TcxGridDBColumn;
    cxGridDBTableView1ACTLED_SEQID: TcxGridDBColumn;
    cxGridDBTableView1DC: TcxGridDBColumn;
    cxGridDBTableView1INSTRUCTION_TYPE: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompAccountBank: TfrmCompAccountBank;

implementation

{$R *.dfm}

uses DataGlobal, FormAccountList, FormCompanyAccountList;

end.
