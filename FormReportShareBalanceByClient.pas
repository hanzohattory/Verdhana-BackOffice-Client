unit FormReportShareBalanceByClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, System.Actions;

type
  TfrmReportShareBalanceByClient = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    lcParameterGroup3: TdxLayoutGroup;
    lcParameterItem4: TdxLayoutItem;
    edAccCodeTo: TcxButtonEdit;
    lcParameterItem5: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterGroup2: TdxLayoutGroup;
    lcParameterItem6: TdxLayoutItem;
    cbSales: TcxLookupComboBox;
    lcParameterItem7: TdxLayoutItem;
    cbSalesTo: TcxLookupComboBox;
    lcParameterGroup4: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    FAccID, FAccIDTo: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportShareBalanceByClient: TfrmReportShareBalanceByClient;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportShareBalanceByClient.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDate.Date;
  Report.Params[1].AsInteger := FAccID;
  Report.Params[2].AsInteger := FAccIDTo;
  Report.Params[3].AsInteger := StrToIntDef(VarToStr(cbSales.EditValue), 0);
  Report.Params[4].AsInteger := StrToIntDef(VarToStr(cbSalesTo.EditValue), MaxInt);
  inherited;

end;

procedure TfrmReportShareBalanceByClient.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := FAccID;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportShareBalanceByClient.edAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.EditValue := FAccIDTo;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportShareBalanceByClient.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.Remoteserver.gettransdate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuSales.Close;
    cdsLuSales.Open;
  end;
end;

end.
