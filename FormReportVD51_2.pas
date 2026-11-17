unit FormReportVD51_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxImageComboBox,
  System.Actions;

type
  TfrmReportVD51_2 = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cmbVD5Report: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportVD51_2: TfrmReportVD51_2;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmReportVD51_2 }

procedure TfrmReportVD51_2.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate   := dtReportDate.Date;
  Report.Params[1].AsString := cmbVD5Report.EditValue;
  inherited;
end;

procedure TfrmReportVD51_2.FormShow(Sender: TObject);
begin
  inherited;
  dtReportDate.Date  := dmGlobal.RemoteServer.GetTransDate;
  cmbVD5Report.ItemIndex := 0; // default VD5-1
end;

Initialization
  RegisterClass(TfrmReportVD51_2);

end.
