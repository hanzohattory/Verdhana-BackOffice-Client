unit FormMarginMonitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, NClientDataset, dxLayoutControl,
  Vcl.ActnList, NDatasetAction, cxImageComboBox, System.Actions, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmMarginMonitor = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsMarginMonitor: TNClientDataset;
    cdsMarginMonitorACCNO: TStringField;
    cdsMarginMonitorACCNAME: TStringField;
    cdsMarginMonitorCASH_ONHAND: TFloatField;
    cdsMarginMonitorARAMT: TFloatField;
    cdsMarginMonitorAPAMT: TFloatField;
    cdsMarginMonitorBUY_AMT: TFloatField;
    cdsMarginMonitorSELL_AMT: TFloatField;
    cdsMarginMonitorCASH_OUTS: TFloatField;
    cdsMarginMonitorCOLLATERAL: TFloatField;
    cdsMarginMonitorMKTVALUE: TFloatField;
    cdsMarginMonitorASSETVALUE: TFloatField;
    cdsMarginMonitorPL: TFloatField;
    cdsMarginMonitorMCALLDAY: TIntegerField;
    cdsMarginMonitorRATIO_MRGCALL: TFloatField;
    cdsMarginMonitorRATIO_FORCESELL: TFloatField;
    cdsMarginMonitorRATIO_MRGWARING: TFloatField;
    cdsMarginMonitorCASHASSET: TFloatField;
    cdsMarginMonitorBUYINGPOWER: TFloatField;
    cdsMarginMonitorRATIO: TFloatField;
    cdsMarginMonitorTOPUP: TFloatField;
    cdsMarginMonitorACCRUED_INTEREST: TFloatField;
    dsMarginMonitor: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    gvwMasterBUY_AMT: TcxGridDBBandedColumn;
    gvwMasterSELL_AMT: TcxGridDBBandedColumn;
    gvwMasterCASH_OUTS: TcxGridDBBandedColumn;
    gvwMasterCOLLATERAL: TcxGridDBBandedColumn;
    gvwMasterMKTVALUE: TcxGridDBBandedColumn;
    gvwMasterASSETVALUE: TcxGridDBBandedColumn;
    gvwMasterPL: TcxGridDBBandedColumn;
    gvwMasterMCALLDAY: TcxGridDBBandedColumn;
    gvwMasterRATIO_MRGCALL: TcxGridDBBandedColumn;
    gvwMasterRATIO_FORCESELL: TcxGridDBBandedColumn;
    gvwMasterRATIO_MRGWARING: TcxGridDBBandedColumn;
    gvwMasterCASHASSET: TcxGridDBBandedColumn;
    gvwMasterBUYINGPOWER: TcxGridDBBandedColumn;
    gvwMasterRATIO: TcxGridDBBandedColumn;
    gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn;
    txtTransDate: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    aclLocal: TActionList;
    actViewDetail: TAction;
    popMargin: TPopupMenu;
    ViewDetail1: TMenuItem;
    cdsMarginMonitorSTOCK_SHORTFALL: TFloatField;
    cdsMarginMonitorCASH_SHORTFALL: TFloatField;
    cdsMarginMonitorCASH_DRAWDOWN: TFloatField;
    cdsMarginMonitorSTOCK_DRAWDOWN: TFloatField;
    cdsMarginMonitorACCTYPE: TStringField;
    cdsMarginMonitorACCTYPEDESC: TStringField;
    cdsMarginMonitorPRDCODE: TStringField;
    cdsMarginMonitorPRDDESC: TStringField;
    cdsMarginMonitorACCINIT: TStringField;
    cdsMarginMonitorACC_STS: TStringField;
    gvwMasterSTOCK_SHORTFALL: TcxGridDBBandedColumn;
    gvwMasterCASH_SHORTFALL: TcxGridDBBandedColumn;
    gvwMasterCASH_DRAWDOWN: TcxGridDBBandedColumn;
    gvwMasterSTOCK_DRAWDOWN: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    actProcessAllMarginCall: TNAction;
    actSendEmail: TNAction;
    actViewSendMail: TNAction;
    cdsMarginMonitorEMAILID: TLargeintField;
    cdsMarginMonitorSENDID: TLargeintField;
    cdsMarginMonitorLASTSENDMAIL: TDateField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterTOPUP: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterPRDDESC: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterEMAILID: TcxGridDBBandedColumn;
    gvwMasterSENDID: TcxGridDBBandedColumn;
    gvwMasterLASTSENDMAIL: TcxGridDBBandedColumn;
    ActGenerateMCalNotification: TNAction;
    N1: TMenuItem;
    CalculateMCallStatus1: TMenuItem;
    actSaveGridToExcel: TNAction;
    SaveDlg: TSaveDialog;
    N2: TMenuItem;
    SaveGridtoExcel1: TMenuItem;
    cdsMarginMonitorACCID: TLargeintField;
    cdsMarginMonitorMRG_STATUS: TStringField;
    gvwMasterMRG_STATUS: TcxGridDBBandedColumn;
    cdsMarginMonitorCASH_QQ: TFloatField;
    gvwMasterCASH_QQ: TcxGridDBBandedColumn;
    actGenerateMCall: TNAction;
    procedure FormCreate(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actViewDetailExecute(Sender: TObject);
    procedure actProcessAllMarginCallExecute(Sender: TObject);
    procedure actSendEmailExecute(Sender: TObject);
    procedure actViewSendMailExecute(Sender: TObject);
    procedure actViewSendMailUpdate(Sender: TObject);
    procedure actSendEmailUpdate(Sender: TObject);
    procedure ActGenerateMCalNotificationExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actSaveGridToExcelExecute(Sender: TObject);
    procedure cdsMarginMonitorCalcFields(DataSet: TDataSet);
    procedure actGenerateMCallExecute(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDateTime;
    procedure Reload;
  public
    { Public declarations }
  end;

var
  frmMarginMonitor: TfrmMarginMonitor;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormMarginMonitorDetail, FormSendMail, cxGridExportLink,
  FormMain;

procedure TfrmMarginMonitor.actGenerateMCallExecute(Sender: TObject);
var
  sRes: string;
begin
  inherited;
  sRes := dmGlobal.RemoteServer.GenerateMarginCall;
  if sRes = '' then
  begin

    frmMain.NewAlertMessage('Calculte Margin Call Status Completed', mtInformation);

  end
  else
  begin
    frmMain.NewAlertMessage('Fail to Generate Margin Call Alert : ' + sRes, mtError);
  end;

end;

procedure TfrmMarginMonitor.ActGenerateMCalNotificationExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateMarginNotification(dmglobal.UserID, sMsg) then
  begin
    dmGlobal.RemoteServer.MarginMCallDay;
    MessageDlg('Calculte Margin Call Status Completed', mtInformation, [mbOk], 0);
  end
  else
  begin

  end;

end;

procedure TfrmMarginMonitor.actProcessAllMarginCallExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to process all margin call letter?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsMarginMonitor.DisableControls;
    Try
      cdsMarginMonitor.First;
      while not cdsMarginMonitor.Eof do
      begin
        dmGlobal.RemoteServer.SendMarginCallWarningByMail(cdsMarginMonitorACCID.AsInteger);

        cdsMarginMonitor.Next;
      end;
    Finally
      cdsMarginMonitor.EnableControls;
    End;
  end;
end;

procedure TfrmMarginMonitor.actSaveGridToExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmMarginMonitor.actSendEmailExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to send margin call letter?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.SendMarginCallWarningByMail(cdsMarginMonitorACCID.AsInteger);
  end;
end;

procedure TfrmMarginMonitor.actSendEmailUpdate(Sender: TObject);
begin
  inherited;
  actSendEmail.Enabled := (cdsMarginMonitorRATIO.AsFloat * -1) > cdsMarginMonitorRATIO_MRGCALL.AsFloat;
end;

procedure TfrmMarginMonitor.actViewDetailExecute(Sender: TObject);
var
  oForm: TfrmMarginMonitorDetail;
begin
  inherited;
  oForm := TfrmMarginMonitorDetail.Create(nil);
  oForm.PrepareData(cdsMarginMonitorACCID.AsInteger, FTransDate);
  oForm.ShowModal;
  FreeAndNil(oForm);
end;

procedure TfrmMarginMonitor.actViewSendMailExecute(Sender: TObject);
begin
  inherited;
  if not cdsMarginMonitorSENDID.IsNull then
  begin
    frmSendMail.ViewSendMail(cdsMarginMonitorSENDID.AsInteger);
  end;
end;

procedure TfrmMarginMonitor.actViewSendMailUpdate(Sender: TObject);
begin
  inherited;
  actViewSendMail.Enabled := not cdsMarginMonitorSENDID.IsNull;
end;

procedure TfrmMarginMonitor.cdsMarginMonitorCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsMarginMonitorBUYINGPOWER.AsFloat :=
    (((cdsMarginMonitorRATIO_MRGCALL.AsFloat/100) * cdsMarginMonitorCOLLATERAL.AsFloat) + cdsMarginMonitorCASHASSET.AsFloat) /
    (1 - (cdsMarginMonitorRATIO_MRGCALL.AsFloat/100));

  if cdsMarginMonitorCOLLATERAL.AsFloat <=0 then cdsMarginMonitorRATIO.AsFloat := 0
  else  cdsMarginMonitorRATIO.AsFloat := abs((cdsMarginMonitorCASHASSET.AsFloat / cdsMarginMonitorCOLLATERAL.AsFloat) * 100);

  if (cdsMarginMonitorCASHASSET.AsFloat < 0) then
  begin
    cdsMarginMonitorTOPUP.AsFloat := ((cdsMarginMonitorRATIO_MRGCALL.AsFloat/100) * cdsMarginMonitorCOLLATERAL.AsFloat) + cdsMarginMonitorCASHASSET.AsFloat;
    if cdsMarginMonitorRATIO.AsFloat > cdsMarginMonitorRATIO_MRGCALL.AsFloat  then
    begin
      cdsMarginMonitorSTOCK_SHORTFALL.AsFloat := (abs(cdsMarginMonitorCASHASSET.AsFloat) / (cdsMarginMonitorRATIO_MRGCALL.AsFloat/100)) -
        cdsMarginMonitorCOLLATERAL.AsFloat;
      cdsMarginMonitorCASH_SHORTFALL.AsFloat := abs(cdsMarginMonitorCASHASSET.AsFloat) -
        ((cdsMarginMonitorRATIO_MRGCALL.AsFloat/100) * cdsMarginMonitorCOLLATERAL.AsFloat);
    end;
    cdsMarginMonitorCASH_DRAWDOWN.AsFloat := 0;


  end
  else
  begin
    cdsMarginMonitorCASH_DRAWDOWN.AsFloat := cdsMarginMonitorCASH_ONHAND.AsFloat;
  end;

  if cdsMarginMonitorCOLLATERAL.AsFloat <= 0 then cdsMarginMonitorSTOCK_DRAWDOWN.AsFloat := 0
  else
  begin
    if Abs(cdsMarginMonitorRATIO.AsFloat * 100) <= cdsMarginMonitorRATIO_MRGCALL.AsFloat  then
    begin
      if cdsMarginMonitorCASHASSET.AsFloat < 0 then
      begin
        cdsMarginMonitorSTOCK_DRAWDOWN.AsFloat := cdsMarginMonitorCOLLATERAL.AsFloat + cdsMarginMonitorCASHASSET.AsFloat;
      end
      else cdsMarginMonitorSTOCK_DRAWDOWN.AsFloat := cdsMarginMonitorCOLLATERAL.AsFloat;
    end;
  end;

end;

procedure TfrmMarginMonitor.cxButton1Click(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmMarginMonitor.FormCreate(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmMarginMonitor.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  if AViewInfo.Selected then
//  begin
//    if AViewInfo.Item.Focused then
//    begin
//      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
//      ACanvas.Font.Color := clWhite;
//    end;
//  end;

  ACanvas.Font.Color := clBlack;

  if AViewInfo.GridRecord.Values[gvwMasterMRG_STATUS.Index] = 'FC' then
  begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color  := clWhite;
  end
  else if AViewInfo.GridRecord.Values[gvwMasterMRG_STATUS.Index] = 'MC' then
    ACanvas.Brush.Color := clRed
  else
    ACanvas.Brush.Color := dmGlobal.BlueToggle.Color;

end;

procedure TfrmMarginMonitor.Reload;
begin
  txtTransDate.Text := FormatDateTime('dd-mmm-yyyy', dmGlobal.RemoteServer.GetTransDate);

  FTransDate := dmGlobal.RemoteServer.GetTransDate;
  cdsMarginMonitor.Close;
  cdsMarginMonitor.Params[0].Value := dmGlobal.RemoteServer.GetTransDate;
  cdsMarginMonitor.Open;
end;

initialization
  RegisterClass(TfrmMarginMonitor);


end.
