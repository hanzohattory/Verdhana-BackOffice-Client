unit FormCompareRDNKSEI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCompareRDNKSEI = class(TfrmEditor)
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    LayoutControlItem5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    LayoutControlItem6: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    LayoutControlItem7: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    LayoutControlItem8: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    LayoutControlItem9: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    LayoutControlItem10: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    LayoutControlGroup2: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    LayoutControlItem11: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    LayoutControlItem12: TdxLayoutItem;
    LayoutControlGroup3: TdxLayoutGroup;
    LayoutControlGroup4: TdxLayoutGroup;
    dsKSEI: TDataSource;
    dsRDN: TDataSource;
    dsKSEIUpload: TDataSource;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompareRDNKSEI: TfrmCompareRDNKSEI;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal;

procedure TfrmCompareRDNKSEI.btnOKClick(Sender: TObject);
var
  sSID, sSubRek01, sSubRek04, sRDN, sBank: String;
  vSID, vSubRek01, vSubRek04, vRDN, vBank: String;
begin
  sSID := dsKSEI.DataSet.FieldByName('SID').AsString;
  sSubRek01 := dsKSEI.DataSet.FieldByName('SUBREK01').AsString;
  sSubRek04 := dsKSEI.DataSet.FieldByName('SUBREK04').AsString;
  sRDN := dsRDN.DataSet.FieldByName('RDNACCNO').AsString;
  sBank := dsRDN.DataSet.FieldByName('BANKNAME').AsString;

  vSID := dsKSEIUpload.DataSet.FieldByName('SID').AsString;
  vSubRek01 := dsKSEIUpload.DataSet.FieldByName('SUBREK01').AsString;
  vSubRek04 := dsKSEIUpload.DataSet.FieldByName('SUBREK04').AsString;
  vRDN := dsKSEIUpload.DataSet.FieldByName('RDN').AsString;
  vBank := dsKSEIUpload.DataSet.FieldByName('BANK').AsString;

  if (sSID <> vSID) or (sSubRek01 <> vSubRek01) or (sSubRek04 <> vSubRek04) or (sRDN <> vRDN) or (sBank <> vBank) then
  begin
    dmGlobal.ErrorMessage('All KSEI and RDN Data must be same!' + #13 +
      'Please Update your KSEI and RDN Account and Back to Previous Process');
    Abort;
  end;

  inherited;
end;

end.
