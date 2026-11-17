unit FormGetAccSetOff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, NClientDataset,
  dxLayoutContainer, dxLayoutControl, cxCheckBox, cxContainer,
  dxLayoutcxEditAdapters, cxTextEdit, cxCurrencyEdit, cxDBEdit,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxRadioGroup, cxMaskEdit, cxButtonEdit, cxPropertiesStore, frxClass, frxDBSet,
  Vcl.ActnList, NDatasetAction, Vcl.ImgList, NReportClient, frxExportPDF,
  frxPreview, frxServerClient;

type
  TfrmGetAccSetOff = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsSetOffList: TNClientDataset;
    dsSetOffList: TDataSource;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnOK: TcxButton;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsSetOffListSIID: TLargeintField;
    cdsSetOffListSINO: TStringField;
    cdsSetOffListENTRYDATE: TDateField;
    cdsSetOffListVALUEDATE: TDateField;
    cdsSetOffListSITYPE: TStringField;
    cdsSetOffListSETTLE_SIDE: TStringField;
    cdsSetOffListSETTLESIDE: TStringField;
    cdsSetOffListACCID: TLargeintField;
    cdsSetOffListACCNO: TStringField;
    cdsSetOffListACCNAME: TStringField;
    cdsSetOffListSETTLE_CCYCODE: TStringField;
    cdsSetOffListSETTLE_EXRATE: TFloatField;
    cdsSetOffListSETOFF_AMT: TFloatField;
    cdsSetOffListSI_DESC: TStringField;
    cdsSetOffListSTAT: TStringField;
    cxGrid1: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    gvwBrowseSIID: TcxGridDBBandedColumn;
    gvwBrowseSINO: TcxGridDBBandedColumn;
    gvwBrowseENTRYDATE: TcxGridDBBandedColumn;
    gvwBrowseVALUEDATE: TcxGridDBBandedColumn;
    gvwBrowseSITYPE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwBrowseSETTLESIDE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwBrowseSETOFF_AMT: TcxGridDBBandedColumn;
    gvwBrowseSI_DESC: TcxGridDBBandedColumn;
    gvwBrowseSTAT: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsSetOffListDIFF: TFloatField;
    gvwBrowseDIFF: TcxGridDBBandedColumn;
    cdsViewSetOff: TNClientDataset;
    cdsViewSetOffSIID: TLargeintField;
    cdsViewSetOffSINO: TStringField;
    cdsViewSetOffENTRYDATE: TDateField;
    cdsViewSetOffVALUEDATE: TDateField;
    cdsViewSetOffSITYPE: TStringField;
    cdsViewSetOffSETTLE_SIDE: TStringField;
    cdsViewSetOffSETTLESIDE: TStringField;
    cdsViewSetOffACCID: TLargeintField;
    cdsViewSetOffACCNO: TStringField;
    cdsViewSetOffACCNAME: TStringField;
    cdsViewSetOffSETTLE_CCYCODE: TStringField;
    cdsViewSetOffSETTLE_EXRATE: TFloatField;
    cdsViewSetOffSETOFF_AMT: TFloatField;
    cdsViewSetOffSI_DESC: TStringField;
    cdsViewSetOffSTAT: TStringField;
    cdsViewSetOffLINKID: TLargeintField;
    cdsViewSetOffLINKNO: TStringField;
    cdsSetOffListLINKID: TLargeintField;
    cdsSetOffListLINKNO: TStringField;
    cdsSetOffListDUEDATE: TDateField;
    cdsViewSetOffDUEDATE: TDateField;
    cdsViewSetOffDIFF: TFloatField;
    gvwBrowseLINKID: TcxGridDBBandedColumn;
    gvwBrowseLINKNO: TcxGridDBBandedColumn;
    gvwBrowseDUEDATE: TcxGridDBBandedColumn;
    cdsSetOffListTRDDATE: TDateField;
    cdsViewSetOffTRDDATE: TDateField;
    gvwBrowseTRDDATE: TcxGridDBBandedColumn;
    btnPrint: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    imlBrowse: TImageList;
    ActionList1: TActionList;
    actPrint: TNAction;
    ReportClient: TfrxReportClient;
    Report: TNClientReportContainer;
    procedure FormShow(Sender: TObject);
    procedure cdsSetOffListCalcFields(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsViewSetOffCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
  private
    FDueDate: TDate;
    iBuyIDXTradeID, iSellIDXTradeID: Integer;
    FBuyAcc, FSellAcc: string;
    FSetOffList,
    FSetOffTradeID: TStringList;
    FSIID: string;
    FSetOffType: Integer;

  public
    property DueDate: TDate read FDueDate write FDueDate;
    property SIID: string read FSIID write FSIID;
    property SetOffType: Integer read FSetOffType write FSetOffType;

    function OK_SetOff: Boolean;
  end;

var
  frmGetAccSetOff: TfrmGetAccSetOff;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmGetAccSetOff.actPrintExecute(Sender: TObject);
var
  sFileName: string;
  i: Integer;
begin
  Report.Params[0].AsInteger := StrToInt(SIID);
  ReportClient.LoadFromFile(Report.ReportName);
  ReportClient.Variables.Clear;
  for i := 0 to Report.Params.Count - 1 do
  begin
    if Report.Params[i].DataType in [ftDate, ftDateTime, ftTimeStamp] then
      ReportClient.Variables.Variables[Report.Params[i].Name] := FormatDateTime('yyyymmdd', Report.Params[i].AsDate)
    else
      ReportClient.Variables.Variables[Report.Params[i].Name] := Report.Params[i].AsString;
  end;

  if ReportClient.PrepareReport then
    ReportClient.ShowPreparedReport;

//  sFileName := GetCurrentDir+'\Report\ViewDataSetOffList.fr3';
//
//  if FileExists(sFileName) then
//  begin
//    rptSetOff.LoadFromFile(sFileName);
//    rptSetOff.PrepareReport(True);
//    rptSetOff.ShowPreparedReport;
//  end;
end;

procedure TfrmGetAccSetOff.btnOKClick(Sender: TObject);
var
  bOK: Boolean;
begin
  bOk := False;
  if SetOffType = 1 then
    bOK := OK_SetOff
  else if SetOffType = 2 then
    bOK := True
  else if SetOffType = 3 then
  begin
    if MessageDlg('Reverse set off data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      bOK := True;
  end;

  if bOK then
    ModalResult := mrOk
  else
    ModalResult := mrNone;
end;

procedure TfrmGetAccSetOff.cdsSetOffListCalcFields(DataSet: TDataSet);
begin
  if cdsSetOffListSETTLE_SIDE.AsString = 'P' then
    cdsSetOffListDIFF.AsFloat := - cdsSetOffListSETOFF_AMT.AsFloat
  else
    cdsSetOffListDIFF.AsFloat := cdsSetOffListSETOFF_AMT.AsFloat;
end;

procedure TfrmGetAccSetOff.cdsViewSetOffCalcFields(DataSet: TDataSet);
begin
  if cdsViewSetOffSETTLE_SIDE.AsString = 'P' then
    cdsViewSetOffDIFF.AsFloat := - cdsViewSetOffSETOFF_AMT.AsFloat
  else
    cdsViewSetOffDIFF.AsFloat := cdsViewSetOffSETOFF_AMT.AsFloat;
end;

procedure TfrmGetAccSetOff.FormShow(Sender: TObject);
begin
  if SetOffType = 1 then
  begin
    cdsSetOffList.Close;
    cdsSetOffList.Params[0].AsString := SIID;
    cdsSetOffList.Open;

    dsSetOffList.DataSet := cdsSetOffList;
    btnPrint.Visible     := False;
  end
  else
  begin
    cdsViewSetOff.Close;
    cdsViewSetOff.Params[0].AsInteger := StrToInt(SIID);
    cdsViewSetOff.Open;

    dsSetOffList.DataSet := cdsViewSetOff;
    if SetOffType = 2 then
      btnPrint.Visible   := True;
  end;
  gvwBrowse.ApplyBestFit();
end;

function TfrmGetAccSetOff.OK_SetOff: Boolean;
var
  dSumSetOff: Double;
  sSettleSide: string;
  bAR, bAP : Boolean;
  sMessage: string;
  bResult: Boolean;
  dTradeDate: TDateTime;
  bCon: Boolean;
begin
  bAR := False;
  bAP := False;

  bCon       := True;
  dTradeDate := dmGlobal.RemoteServer.GetTransDate;

  cdsSetOffList.DisableControls;
  cdsSetOffList.First;

  cdsSetOffList.Filter   := 'DUEDATE > '+ QuotedStr(DateToStr(dTradeDate));
  cdsSetOffList.Filtered := True;

  if not cdsSetOffList.IsEmpty then
    bCon := False;

  cdsSetOffList.Filtered := False;
  if bCon then
  begin
    while not cdsSetOffList.Eof do
    begin
      if cdsSetOffListSETTLE_SIDE.AsString = 'P' then bAP := True
      else if cdsSetOffListSETTLE_SIDE.AsString = 'R' then bAR := True;

      cdsSetOffList.Next;
    end;

    if bAR and bAP then
    begin
      bResult := dmGlobal.RemoteServer.GenerateSetOffSelected(cdsSetOffListACCID.AsLargeInt, FSIID, cdsSetOffListSETTLE_CCYCODE.AsString,
        cdsSetOffListSETTLE_EXRATE.AsFloat, dTradeDate, sMessage);
      MessageDlg(sMessage, mtInformation, [mbOk], 0);
    end
    else
      MessageDlg('There must have Payment and Receive', mtError, [mbOk], 0);
  end
  else
    MessageDlg('Can not setoff next due date', mtError, [mbOk], 0);

  cdsSetOffList.EnableControls;
  Result := bCon;
end;

end.
