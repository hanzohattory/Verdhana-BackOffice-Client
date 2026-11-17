unit FormReportSupportingDataMKBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxImageComboBox, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, cxCheckBox;

type
  TfrmReportSupportingDataMKBD = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbRowNoFrom: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    cbReportType: TcxLookupComboBox;
    lcParameterItem2: TdxLayoutItem;
    ckBackDate: TcxCheckBox;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cbRowNoTo: TcxLookupComboBox;
    lcParameterItem5: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure cbReportTypePropertiesEditValueChanged(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSupportingDataMKBD: TfrmReportSupportingDataMKBD;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportSupportingDataMKBD.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].asString := cbReportType.EditValue;
  Report.Params[1].AsInteger := cbRowNoFrom.EditValue;
  Report.Params[2].AsInteger := cbRowNoTo.EditValue;
  Report.Params[3].AsString := ckBackDate.EditValue;
  Report.Params[4].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmReportSupportingDataMKBD.cbReportTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuSelectDataReport.Close;
    cdsLuSelectDataReport.Params[0].AsString := cbReportType.EditValue;
    cdsLuSelectDataReport.Open;
  end;
end;

procedure TfrmReportSupportingDataMKBD.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuRptType.Close;
    cdsLuRptType.Params[0].AsString := 'VD5';
    cdsLuRptType.Open;
  end;
end;

end.
