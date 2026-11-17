unit FormEBlastCustomers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  Vcl.Menus, dxLayoutControlAdapters, dxSkinsdxStatusBarPainter,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxButtonEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Datasnap.DBClient, NClientDataset;

type
  TfrmEBlastCustomers = class(TfrmEditorData)
    cdsEBCustomers: TNClientDataset;
    cdsEBCustomersEBACCID: TLargeintField;
    cdsEBCustomersEBLAST_ID: TLargeintField;
    cdsEBCustomersACCID: TLargeintField;
    cdsEBCustomersMODDA: TDateField;
    cdsEBCustomersMODUI: TStringField;
    cdsEBCustomersUPPDA: TDateField;
    cdsEBCustomersUPPUI: TStringField;
    cdsEBCustomersID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsEBCustomersACCCODE: TStringField;
    cdsEBCustomersACCNAME: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cdsEBCustomersACCTYPE: TStringField;
    cdsEBCustomersSIDNO: TStringField;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEBlastCustomers: TfrmEBlastCustomers;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmEBlastCustomers.btnOKClick(Sender: TObject);
begin
  if cdsEBCustomers.State in [dsInsert] then
    cdsEBCustomersEBACCID.AsInteger := dmGlobal.RemoteServer.GetSeq('main.B_EBLAST_ACC');

  inherited;
end;

end.
