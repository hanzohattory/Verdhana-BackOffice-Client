unit FormCOAConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit;

type
  TfrmCOAConfig = class(TfrmEditorData)
    cdsCOAConfig: TNClientDataset;
    cdsCOAConfigparamID: TStringField;
    cdsCOAConfigparamName: TStringField;
    cdsCOAConfigcoa_id: TIntegerField;
    cdsCOAConfigentrySystemDate: TDateField;
    cdsCOAConfigentryDate: TDateTimeField;
    cdsCOAConfigentryUser: TStringField;
    cdsCOAConfigmodSystemDate: TDateField;
    cdsCOAConfigmodDate: TDateTimeField;
    cdsCOAConfigmodUser: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cdsCOAConfigGLCode: TStringField;
    cdsCOAConfigGLName: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOAConfig: TfrmCOAConfig;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

end.
