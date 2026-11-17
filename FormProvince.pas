unit FormProvince;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmProvince = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsProvince: TNClientDataset;
    cdsProvincePROVCODE: TStringField;
    cdsProvincePROVNAME: TStringField;
    cdsProvinceCOUNTCODE: TStringField;
    cdsProvinceMODDA: TDateTimeField;
    cdsProvinceMODUI: TStringField;
    cdsProvinceAPPDA: TDateTimeField;
    cdsProvinceAPPUI: TStringField;
    cdsProvinceUNDER4Y: TIntegerField;
    cdsProvinceUNDER4YDA: TDateTimeField;
    cdsProvinceNOTES4Y: TStringField;
    cdsProvinceISDEL: TIntegerField;
    cdsProvinceID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProvince: TfrmProvince;

implementation

{$R *.dfm}

uses DataGlobal;

Initialization
  RegisterClass(TfrmProvince);

end.
