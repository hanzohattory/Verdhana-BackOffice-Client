unit FormReportDailyInterestActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutContainer, dxLayoutControl, frxClass, frxPreview,
  cxCalendar, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  cxGridCustomView, cxGridLevel, cxGrid, cxBarEditItem, cxCheckGroup,
  cxImageComboBox;

type
  TfrmReportDailyInterestActivity = class(TfrmReport)
    startDate: TcxBarEditItem;
    endDate: TcxBarEditItem;
    barMReportBar1: TdxBar;
    edAccountID: TcxBarEditItem;
    glvAccounts: TcxGridLevel;
    grdAccounts: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    gvwAccounts: TcxGridDBBandedTableView;
    cdsAccounts: TClientDataSet;
    dsAccounts: TDataSource;
    cdsAccountsACCID: TIntegerField;
    cdsAccountsACCCODE: TStringField;
    cdsAccountsACCNAME: TStringField;
    cdsAccountsACCTYPE: TStringField;
    cdsAccountsPRDCODE: TStringField;
    gvwAccountsACCID: TcxGridDBBandedColumn;
    gvwAccountsACCCODE: TcxGridDBBandedColumn;
    gvwAccountsACCNAME: TcxGridDBBandedColumn;
    gvwAccountsACCTYPE: TcxGridDBBandedColumn;
    gvwAccountsPRDCODE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBarEditItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
    fAccountsID: TArray<Integer>;

    function ConvertToArray(AID: string): TArray<Integer>;
    function ConvertToString(AID: TArray<Integer>): string;
  public
    { Public declarations }
  end;

var
  frmReportDailyInterestActivity: TfrmReportDailyInterestActivity;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccountList;

procedure TfrmReportDailyInterestActivity.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate   := VarToDateTime(startDate.EditValue);
  Report.Params[1].AsDate   := VarToDateTime(endDate.EditValue);
  Report.Params[2].AsString := edAccountID.EditValue;

  UseParameterTable := True;
  inherited;
end;

function TfrmReportDailyInterestActivity.ConvertToArray(
  AID: string): TArray<Integer>;
var
  oID: TArray<Integer>;
  i, iIndex: Integer;
  oList: TStringList;
begin
  iIndex := 0;

  if AID <> '' then
  begin
   oList                 := TStringList.Create;
   oList.DelimitedText   := AID;
   oList.Delimiter       := ',';
   oList.StrictDelimiter := True;

    for i := 0 to oList.Count -1 do
    begin
      SetLength(oID, i+1);
      oID[i] := StrToInt(oList.Strings[i]);
    end;

    FreeAndNil(oList);
  end;

  if iIndex = 0 then
    oID := TArray<Integer>.Create(0);

  Result := oID;
end;

function TfrmReportDailyInterestActivity.ConvertToString(
  AID: TArray<Integer>): string;
var
  sID: string;
  i: Integer;
begin
  sID := '';

  for i := Low(AID) to High(AID) do
  begin
    if i = High(AID) then
      sID := sID + IntToStr(AID[i])
    else
      sID := sID + IntToStr(AID[i]) + ',';
  end;

  Result := sID;
end;

procedure TfrmReportDailyInterestActivity.cxBarEditItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if frmLuAccountList.RunSelected(fAccountsID) = mrOk then
  begin
    edAccountID.EditValue := ConvertToString(fAccountsID);
    dmGlobal.CreateSelecctedAccountID(cdsAccounts, fAccountsID);
  end;
end;

procedure TfrmReportDailyInterestActivity.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  startDate.EditValue := dtSystem;
  endDate.EditValue   := dtSystem;

  cdsAccounts.Close;
  cdsAccounts.CreateDataSet;
end;

end.
