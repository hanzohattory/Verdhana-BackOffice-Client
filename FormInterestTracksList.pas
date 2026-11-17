unit FormInterestTracksList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  NActionPermission, Vcl.ActnList, NDatasetAction, Data.DB,
  Datasnap.DBClient, NClientDataset, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, System.Actions,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmSelectDataInterest = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cmbGLPeriod: TcxLookupComboBox;
    cmbPeriod: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ActionList1: TActionList;
    actViewData: TNAction;
    cdsSelectDataInterest: TNClientDataset;
    grdMasterLevel1: TcxGridLevel;
    grdMaster: TcxGrid;
    gvwSelectDataInterest: TcxGridDBBandedTableView;
    dsSelectDataInterest: TDataSource;
    actViewDetail: TNAction;
    ViewDetail1: TMenuItem;
    actPosting: TNAction;
    Posting1: TMenuItem;
    cdsSelectDataInterestDetail: TNClientDataset;
    cdsSelectDataInterestDetailACCID: TLargeintField;
    cdsSelectDataInterestDetailINTEREST_NO: TStringField;
    cdsSelectDataInterestDetailINTERESTDATE: TDateField;
    cdsSelectDataInterestDetailPRINCIPLE_METHOD: TStringField;
    cdsSelectDataInterestDetailCCYCODE: TStringField;
    cdsSelectDataInterestDetailBASE_INTEREST_AMT: TFloatField;
    cdsSelectDataInterestDetailRATE: TIntegerField;
    cdsSelectDataInterestDetailYEAROFDAYS: TIntegerField;
    cdsSelectDataInterestDetailINTEREST_AMT: TFloatField;
    cdsSelectDataInterestDetailPAID: TStringField;
    cdsSelectDataInterestDetailPAYMENT_DATE: TDateField;
    cdsSelectDataInterestDetailPAYMENTBY: TStringField;
    cdsSelectDataInterestDetailPAYMENT_NO: TStringField;
    cdsSelectDataInterestDetailPAYMENT_POSTED: TStringField;
    cdsSelectDataInterestDetailPAID_JOURNAL_NO: TStringField;
    cdsSelectDataInterestDetailRESERVED: TStringField;
    cdsSelectDataInterestDetailRESERVED_DATE: TDateField;
    cdsSelectDataInterestDetailRESERVED_POSTED: TStringField;
    cdsSelectDataInterestDetailRESERVED_JOURNAL_NO: TStringField;
    dsSelectDataInterestDetail: TDataSource;
    cdsSelectDataInterestACCID: TLargeintField;
    cdsSelectDataInterestACCNO: TStringField;
    cdsSelectDataInterestACCNAME: TStringField;
    cdsSelectDataInterestCCYCODE: TStringField;
    cdsSelectDataInterestOUTSTANDING: TFloatField;
    cdsSelectDataInterestINTEREST_AMT: TFloatField;
    cdsSelectDataInterestTAX_AMT: TFloatField;
    cdsSelectDataInterestNET_INTEREST: TFloatField;
    gvwSelectDataInterestACCID: TcxGridDBBandedColumn;
    gvwSelectDataInterestACCNO: TcxGridDBBandedColumn;
    gvwSelectDataInterestACCNAME: TcxGridDBBandedColumn;
    gvwSelectDataInterestCCYCODE: TcxGridDBBandedColumn;
    gvwSelectDataInterestOUTSTANDING: TcxGridDBBandedColumn;
    gvwSelectDataInterestINTEREST_AMT: TcxGridDBBandedColumn;
    gvwSelectDataInterestTAX_AMT: TcxGridDBBandedColumn;
    gvwSelectDataInterestNET_INTEREST: TcxGridDBBandedColumn;
    SaveDialog: TSaveDialog;
    actSaveToExcel: TNAction;
    N1: TMenuItem;
    SaveGridtoExcel1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actViewDetailExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbGLPeriodPropertiesCloseUp(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actSaveToExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectDataInterest: TfrmSelectDataInterest;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal, SelectDataInterestByAccID, cxGridExportLink;

procedure TfrmSelectDataInterest.actPostingExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if (not cdsSelectDataInterest.Active) or (cdsSelectDataInterest.IsEmpty) then
    Exit;

  if MessageDlg('Posting This Account Interest ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dmGlobal.RemoteServer.GenerateInterest(cmbGLPeriod.EditValue, cdsSelectDataInterestACCID.AsInteger,
      cdsSelectDataInterestCCYCODE.AsString ,sMsg) then
    begin
      cdsSelectDataInterest.Refresh;
    end;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmSelectDataInterest.actSaveToExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDialog.Execute then
  begin
    sFileName := SaveDialog.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

//    if FileExists(sFileName) then
//    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
//    end;
  end;
end;

procedure TfrmSelectDataInterest.actViewDetailExecute(Sender: TObject);
var
  oForm: TfrmSelectDataInterestByAccID;
begin
  inherited;
  if (not cdsSelectDataInterest.Active) or (cdsSelectDataInterest.IsEmpty) then
    Exit;

  oForm := TfrmSelectDataInterestByAccID.Create(nil);
  Try
    TfrmSelectDataInterestByAccID(oForm).PeriodID := cmbGLPeriod.EditValue;
    TfrmSelectDataInterestByAccID(oForm).AccID    := StrToInt(gvwSelectDataInterest.Controller.SelectedRecords[0].Values[gvwSelectDataInterestACCID.Index]);
    oForm.ShowModal;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmSelectDataInterest.cmbGLPeriodPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cdsSelectDataInterest.Close;
  cdsSelectDataInterest.Params[0].AsInteger := cmbGLPeriod.EditValue;
  cdsSelectDataInterest.Open;
end;

procedure TfrmSelectDataInterest.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsSelectDataInterest.Close;
  cdsSelectDataInterest.Params[0].AsInteger := cmbGLPeriod.EditValue;
  cdsSelectDataInterest.Open;
end;

procedure TfrmSelectDataInterest.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsluGLPeriod.Close;
    cdsluGLPeriod.Params[0].AsInteger := 1;
    cdsluGLPeriod.Params[1].AsInteger := 1;
    cdsluGLPeriod.Params[2].AsInteger := 2;
    cdsluGLPeriod.Open;

    cdsluGLPeriod.Filter   := 'SPECIAL = '+QuotedStr('0');
    cdsluGLPeriod.Filtered := True;

    cdsLuInterestType.Close;
    cdsLuInterestType.Open;
  end;
end;

procedure TfrmSelectDataInterest.FormShow(Sender: TObject);
var
  sPeriod: string;
begin
  inherited;
  sPeriod := FormatDateTime('mm/yyyy', dmGlobal.RemoteServer.GetTransDate);
  if dmGlobal.IntDataLookup.cdsluGLPeriod.Locate('PERIODCODE', sPeriod, []) then
    cmbGLPeriod.EditValue := dmGlobal.IntDataLookup.cdsluGLPeriodPERIODID.AsVariant
  else
    cmbGLPeriod.EditValue := -1;

  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmSelectDataInterest);

end.
