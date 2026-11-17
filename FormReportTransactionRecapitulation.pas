unit FormReportTransactionRecapitulation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxCalendar, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, cxDBExtLookupComboBox;

type
  TfrmReportTransactionRecapitulation = class(TfrmReport)
    cbMarket: TcxLookupComboBox;
    lcParameterItem1: TdxLayoutItem;
    dtStart: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    dtEnd: TcxDateEdit;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    lcParameterGroup2: TdxLayoutGroup;
    luExtMarket: TcxExtLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTransactionRecapitulation: TfrmReportTransactionRecapitulation;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportTransactionRecapitulation.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsString := VarToStr(cbMarket.EditValue);
  Report.Params[1].AsDate := dtStart.Date;
  Report.Params[2].AsDate := dtEnd.Date;

  inherited;
end;

procedure TfrmReportTransactionRecapitulation.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.Active then
      cdsLuMarket.Open;
  end;

  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  dtStart.Date := dmGlobal.RemoteServer.GetTransDate;
  dtStart.Properties.MaxDate := dtStart.Date;
  dtEnd.Date := dtStart.Date;
  dtEnd.Date := dtStart.Date;
end;

end.
