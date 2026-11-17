unit FormReportAccountStatusList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxImageComboBox, cxCurrencyEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, System.Actions;

type
  TfrmReportAccountStatusList = class(TfrmReport)
    lcParameterGroup1: TdxLayoutGroup;
    cmbAccStatus: TcxImageComboBox;
    lcParameterItem3: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportAccountStatusList: TfrmReportAccountStatusList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportAccountStatusList.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsString  := cmbAccStatus.EditValue;

  inherited;
end;

Initialization
  RegisterClass(TfrmReportAccountStatusList);

end.
