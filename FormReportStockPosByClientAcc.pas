unit FormReportStockPosByClientAcc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, cxButtonEdit;

type
  TfrmReportStockPosByClientAcc = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    FAccId : integer;
    VACCID : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportStockPosByClientAcc: TfrmReportStockPosByClientAcc;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportStockPosByClientAcc.actReloadDataExecute(Sender: TObject);
begin
  //showMessage(IntToStr(FAccID));
  Report.Params[0].AsInteger := FAccID;
  Report.Params[1].AsDate    := dtReportDate.Date;

  inherited;
end;

procedure TfrmReportStockPosByClientAcc.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportStockPosByClientAcc.FormCreate(Sender: TObject);
begin
  inherited;
  FAccID := 0;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
