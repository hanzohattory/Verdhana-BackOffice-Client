unit FormAccOmgeoConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxBlobEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  cxTextEdit, dxLayoutControl, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAccOmgeoConfig = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxGrid5: TcxGrid;
    gvwConfig: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    dsConfig: TDataSource;
    gvwConfigACCID: TcxGridDBBandedColumn;
    gvwConfigTRANSID: TcxGridDBBandedColumn;
    gvwConfigCONFIGID: TcxGridDBBandedColumn;
    gvwConfigMODDA: TcxGridDBBandedColumn;
    gvwConfigMODUI: TcxGridDBBandedColumn;
    gvwConfigAPPDA: TcxGridDBBandedColumn;
    gvwConfigAPPUI: TcxGridDBBandedColumn;
    gvwConfigUNDER4Y: TcxGridDBBandedColumn;
    gvwConfigUNDER4YDA: TcxGridDBBandedColumn;
    gvwConfigNOTES4Y: TcxGridDBBandedColumn;
    gvwConfigISDEL: TcxGridDBBandedColumn;
    gvwConfigID: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccOmgeoConfig: TfrmAccOmgeoConfig;

implementation

{$R *.dfm}

uses FormAccountOmgeoList, DataGlobal;

end.
