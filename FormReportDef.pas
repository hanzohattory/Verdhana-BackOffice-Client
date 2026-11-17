unit FormReportDef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit,
  cxImageComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB, Datasnap.DBClient,
  NClientDataset, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid;

type
  TfrmReportDef = class(TfrmEditorData)
    cdsRptDef: TNClientDataset;
    cdsRptDefDtl: TNClientDataset;
    cdsRptDefRPTTYPE: TStringField;
    cdsRptDefROWNO: TIntegerField;
    cdsRptDefCOLNO: TIntegerField;
    cdsRptDefDATATYPE: TStringField;
    cdsRptDefROWTEXT: TStringField;
    cdsRptDefCOLTEXT: TStringField;
    cdsRptDefUSEFORML: TBooleanField;
    cdsRptDefVALTYPE: TStringField;
    cdsRptDefFORMULAMODE: TStringField;
    cdsRptDefTEXTITEM: TStringField;
    cdsRptDefDATAUPLD: TBooleanField;
    cdsRptDefUSE_NODTL: TBooleanField;
    cdsRptDefONLYSHOWRPT: TBooleanField;
    cdsRptDefKEYRPTTYPECOL: TBooleanField;
    cdsRptDefKEYROWCOL: TBooleanField;
    cdsRptDefSET_DATAFORMAT: TBooleanField;
    cdsRptDefDATAFORMATKEY: TStringField;
    cdsRptDefDATAFORMATVAL: TStringField;
    cdsRptDefSTRRPTHDR: TStringField;
    cdsRptDefSTRRPTHVAL: TStringField;
    cdsRptDefSTRHVALCOL: TIntegerField;
    cdsRptDefHDR_VAL_UPLD: TStringField;
    cdsRptDefHDR_COL_UPLD: TIntegerField;
    cdsRptDefCAN_EDIT: TStringField;
    cdsRptDefMODDA: TDateTimeField;
    cdsRptDefMODUI: TStringField;
    cdsRptDefAPPDA: TDateTimeField;
    cdsRptDefAPPUI: TStringField;
    cdsRptDefUNDER4Y: TIntegerField;
    cdsRptDefUNDER4YDA: TDateTimeField;
    cdsRptDefNOTES4Y: TStringField;
    cdsRptDefISDEL: TIntegerField;
    cdsRptDefID: TLargeintField;
    cdsRptDefqryRptDefDtl: TDataSetField;
    cdsRptDefDtlRPTTYPE: TStringField;
    cdsRptDefDtlROWNO: TIntegerField;
    cdsRptDefDtlCOLNO: TIntegerField;
    cdsRptDefDtlLNNUM: TLargeintField;
    cdsRptDefDtlROW_FORMULA: TStringField;
    cdsRptDefDtlITEM: TStringField;
    cdsRptDefDtlCATEGORY: TStringField;
    cdsRptDefDtlUSE_COL_FORM: TBooleanField;
    cdsRptDefDtlCOL_FORM: TStringField;
    cdsRptDefDtlCOL_FORM_VAL: TFloatField;
    cdsRptDefDtlUSE_CONTRA: TBooleanField;
    cdsRptDefDtlCONTRA_VAL: TStringField;
    cdsRptDefDtlCONTRA_ITEM_FROM: TStringField;
    cdsRptDefDtlCONTRA_ITEM_TO: TStringField;
    cdsRptDefDtlCONTRA_CAT_FROM: TStringField;
    cdsRptDefDtlCONTRA_CAT_TO: TStringField;
    cdsRptDefDtlCONTRA_SIDE: TStringField;
    cdsRptDefDtlMODDA: TDateTimeField;
    cdsRptDefDtlMODUI: TStringField;
    cdsRptDefDtlAPPDA: TDateTimeField;
    cdsRptDefDtlAPPUI: TStringField;
    cdsRptDefDtlUNDER4Y: TIntegerField;
    cdsRptDefDtlUNDER4YDA: TDateTimeField;
    cdsRptDefDtlNOTES4Y: TStringField;
    cdsRptDefDtlISDEL: TIntegerField;
    cdsRptDefDtlID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Item21: TdxLayoutItem;
    grdDetail: TcxGrid;
    grdDetailLevel1: TcxGridLevel;
    dsDetail: TDataSource;
    gvwDetail: TcxGridDBBandedTableView;
    gvwDetailRPTTYPE: TcxGridDBBandedColumn;
    gvwDetailROWNO: TcxGridDBBandedColumn;
    gvwDetailCOLNO: TcxGridDBBandedColumn;
    gvwDetailLNNUM: TcxGridDBBandedColumn;
    gvwDetailROW_FORMULA: TcxGridDBBandedColumn;
    gvwDetailITEM: TcxGridDBBandedColumn;
    gvwDetailCATEGORY: TcxGridDBBandedColumn;
    gvwDetailUSE_COL_FORM: TcxGridDBBandedColumn;
    gvwDetailCOL_FORM: TcxGridDBBandedColumn;
    gvwDetailCOL_FORM_VAL: TcxGridDBBandedColumn;
    gvwDetailUSE_CONTRA: TcxGridDBBandedColumn;
    gvwDetailCONTRA_VAL: TcxGridDBBandedColumn;
    gvwDetailCONTRA_ITEM_FROM: TcxGridDBBandedColumn;
    gvwDetailCONTRA_ITEM_TO: TcxGridDBBandedColumn;
    gvwDetailCONTRA_CAT_FROM: TcxGridDBBandedColumn;
    gvwDetailCONTRA_CAT_TO: TcxGridDBBandedColumn;
    gvwDetailCONTRA_SIDE: TcxGridDBBandedColumn;
    gvwDetailMODDA: TcxGridDBBandedColumn;
    gvwDetailMODUI: TcxGridDBBandedColumn;
    gvwDetailAPPDA: TcxGridDBBandedColumn;
    gvwDetailAPPUI: TcxGridDBBandedColumn;
    gvwDetailUNDER4Y: TcxGridDBBandedColumn;
    gvwDetailUNDER4YDA: TcxGridDBBandedColumn;
    gvwDetailNOTES4Y: TcxGridDBBandedColumn;
    gvwDetailISDEL: TcxGridDBBandedColumn;
    gvwDetailID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDef: TfrmReportDef;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDef.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuRptTypeAll.Active then
      cdsLuRptTypeAll.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportDef);

end.
