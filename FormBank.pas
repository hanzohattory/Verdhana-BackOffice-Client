unit FormBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxDBEdit, Data.DB,
  dxStatusBar, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.Tabs,
  cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset,
  cxClasses, dxLayoutLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox;

type
  TfrmBank = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsBank: TNClientDataset;
    cdsBankBNCODE: TStringField;
    cdsBankBNNAME: TStringField;
    cdsBankBICODE: TStringField;
    cdsBankMODDA: TDateTimeField;
    cdsBankMODUI: TStringField;
    cdsBankAPPDA: TDateTimeField;
    cdsBankAPPUI: TStringField;
    cdsBankISDEL: TIntegerField;
    cdsBankID: TLargeintField;
    cdsBankSWIFT_CODE: TStringField;
    cdsBankISRDN: TStringField;
    cdsBankINITIAL_NAME: TStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    grdBankCharges: TcxGrid;
    gvwBankCharges: TcxGridDBTableView;
    grdBankChargesLevel1: TcxGridLevel;
    cdsBankqryBankCharges: TDataSetField;
    cdsBankCharges: TNClientDataset;
    cdsBankChargesTRANSFER_MODE: TStringField;
    cdsBankChargesCCYCODE: TStringField;
    cdsBankChargesCHARGE_AMT: TFloatField;
    cdsBankChargesCHARGE_MINTRANS: TFloatField;
    cdsBankChargesCHARGE_MAXTRANS: TFloatField;
    cdsBankChargesFTSERVICE: TStringField;
    dsBankCharges: TDataSource;
    gvwBankChargesTRANSFER_MODE: TcxGridDBColumn;
    gvwBankChargesCCYCODE: TcxGridDBColumn;
    gvwBankChargesCHARGE_AMT: TcxGridDBColumn;
    gvwBankChargesCHARGE_MINTRANS: TcxGridDBColumn;
    gvwBankChargesCHARGE_MAXTRANS: TcxGridDBColumn;
    gvwBankChargesFTSERVICE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBank: TfrmBank;

implementation

{$R *.dfm}

uses FormBanks, DataGlobal;

Initialization
  RegisterClass(TfrmBank);

end.
