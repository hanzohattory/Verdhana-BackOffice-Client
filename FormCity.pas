unit FormCity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCity = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsCity: TNClientDataset;
    cdsCityCITYCODE: TStringField;
    cdsCityCITYNAME: TStringField;
    cdsCityPROVCODE: TStringField;
    cdsCityMODDA: TDateTimeField;
    cdsCityMODUI: TStringField;
    cdsCityAPPDA: TDateTimeField;
    cdsCityAPPUI: TStringField;
    cdsCityUNDER4Y: TIntegerField;
    cdsCityUNDER4YDA: TDateTimeField;
    cdsCityNOTES4Y: TStringField;
    cdsCityISDEL: TIntegerField;
    cdsCityID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCity: TfrmCity;

implementation

{$R *.dfm}

uses DataGlobal;

Initialization
  RegisterClass(TfrmCity);

end.
