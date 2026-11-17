unit FormReportType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmReportType = class(TfrmEditorData)
    cdsRptType: TNClientDataset;
    cdsRptTypeRPTTYPE: TStringField;
    cdsRptTypeRPTTYPEGRP: TStringField;
    cdsRptTypeRTPTYPEDESC: TStringField;
    cdsRptTypeUSECHECKVAL: TBooleanField;
    cdsRptTypeREPORT_ROWNO: TIntegerField;
    cdsRptTypeGENERATE_ROWNO: TIntegerField;
    cdsRptTypeDFLTCONT_FORMAT: TStringField;
    cdsRptTypeSTART_COL: TIntegerField;
    cdsRptTypeLNNUM: TIntegerField;
    cdsRptTypeMODDA: TDateTimeField;
    cdsRptTypeMODUI: TStringField;
    cdsRptTypeAPPDA: TDateTimeField;
    cdsRptTypeAPPUI: TStringField;
    cdsRptTypeUNDER4Y: TIntegerField;
    cdsRptTypeUNDER4YDA: TDateTimeField;
    cdsRptTypeNOTES4Y: TStringField;
    cdsRptTypeISDEL: TIntegerField;
    cdsRptTypeID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportType: TfrmReportType;

implementation

{$R *.dfm}

uses DataGlobal;

Initialization
  RegisterClass(TfrmReportType);

end.
