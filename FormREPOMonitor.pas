unit FormREPOMonitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Data.DB, Datasnap.DBClient,
  Vcl.ActnList, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, NActionPermission, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, NDatasetAction;

type
  TfrmREPOMonitor = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    txtTransDate: TcxTextEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    aclLocal: TActionList;
    actViewDetail: TAction;
    cdsREPOMonitor: TClientDataSet;
    cdsREPOMonitorCONTRACT_NO: TStringField;
    cdsREPOMonitorTRXDATE: TDateTimeField;
    cdsREPOMonitorMATURDATE: TDateTimeField;
    cdsREPOMonitorRACCID: TIntegerField;
    cdsREPOMonitorRACCCODE: TStringField;
    cdsREPOMonitorREPO_AMT: TFloatField;
    cdsREPOMonitorACCNAME: TStringField;
    cdsREPOMonitorCOLLATERAL: TFloatField;
    cdsREPOMonitorCOLL_CALL: TFloatField;
    cdsREPOMonitorFORCESELL: TFloatField;
    cdsREPOMonitorACCRUED_INTEREST: TFloatField;
    cdsREPOMonitorRATIO: TFloatField;
    grdMasterLevel1: TcxGridLevel;
    grdMaster: TcxGrid;
    gvwREPOMOnitor: TcxGridDBBandedTableView;
    dsREPOMonitor: TDataSource;
    gvwREPOMOnitorCONTRACT_NO: TcxGridDBBandedColumn;
    gvwREPOMOnitorTRXDATE: TcxGridDBBandedColumn;
    gvwREPOMOnitorMATURDATE: TcxGridDBBandedColumn;
    gvwREPOMOnitorRACCCODE: TcxGridDBBandedColumn;
    gvwREPOMOnitorREPO_AMT: TcxGridDBBandedColumn;
    gvwREPOMOnitorACCNAME: TcxGridDBBandedColumn;
    gvwREPOMOnitorCOLLATERAL: TcxGridDBBandedColumn;
    gvwREPOMOnitorCOLL_CALL: TcxGridDBBandedColumn;
    gvwREPOMOnitorFORCESELL: TcxGridDBBandedColumn;
    gvwREPOMOnitorACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwREPOMOnitorRATIO: TcxGridDBBandedColumn;
    cdsREPOMonitorAPR_COLL: TFloatField;
    gvwREPOMOnitorRACCID: TcxGridDBBandedColumn;
    gvwREPOMOnitorAPR_COLL: TcxGridDBBandedColumn;
    popGrid: TPopupMenu;
    ViewDetail1: TMenuItem;
    cdsREPOMonitorCONRID: TLargeintField;
    actSaveGridToExcel: TNAction;
    SaveDlg: TSaveDialog;
    N1: TMenuItem;
    SaveGridtoExcel1: TMenuItem;
    actCloseContract: TNAction;
    CloseContract1: TMenuItem;
    cdsREPOMonitorCCY: TStringField;
    cdsREPOMonitorCASH_QQ: TFloatField;
    gvwREPOMOnitorCONRID: TcxGridDBBandedColumn;
    gvwREPOMOnitorCCY: TcxGridDBBandedColumn;
    gvwREPOMOnitorCASH_QQ: TcxGridDBBandedColumn;
    actRenewalContract: TNAction;
    RenewalContract1: TMenuItem;
    cdsREPOMonitorORG_AMT: TFloatField;
    cdsREPOMonitorINTEREST_AMT: TFloatField;
    cdsREPOMonitorDUE_AMT: TFloatField;
    gvwREPOMOnitorORG_AMT: TcxGridDBBandedColumn;
    gvwREPOMOnitorINTEREST_AMT: TcxGridDBBandedColumn;
    gvwREPOMOnitorDUE_AMT: TcxGridDBBandedColumn;
    procedure cdsREPOMonitorCalcFields(DataSet: TDataSet);
    procedure gvwREPOMOnitorCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actViewDetailExecute(Sender: TObject);
    procedure actSaveGridToExcelExecute(Sender: TObject);
    procedure actCloseContractExecute(Sender: TObject);
    procedure actRenewalContractExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Reload;
  end;

var
  frmREPOMonitor: TfrmREPOMonitor;

implementation

{$R *.dfm}

uses DataGlobal, FormContractRepo, ClassClientConst, cxGridExportLink,
  FormOpeningRepoContractEditor;

procedure TfrmREPOMonitor.actCloseContractExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to close this Repo Contract ' +
    QuotedStr(cdsREPOMonitorCONTRACT_NO.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.CloseContractRepo(cdsREPOMonitorCONRID.AsLargeInt, sMsg);
    Reload;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmREPOMonitor.actRenewalContractExecute(Sender: TObject);
var
  sKey, sMsg: String;
  DataID: Int64;
begin
  inherited;
  dmGlobal.OldRepoContractID := cdsREPOMonitorCONRID.AsLargeInt;
  sKey := cdsREPOMonitorCONRID.AsString;
  if dmGlobal.ShowEditorForm(TfrmOpeningRepoContractEditor, sKey, pkCreate) = mrOk then
  begin
    DataID := StrToInt64Def(sKey, -1);
    if DataID <> -1 then
      dmGlobal.RemoteServer.CreateDataActivity(4, DataID, sMsg);
    ShowMessage('Renewal Repo Contract Have Been Created Succesfully.');
  end;
end;

procedure TfrmREPOMonitor.actSaveGridToExcelExecute(Sender: TObject);
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

procedure TfrmREPOMonitor.actViewDetailExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsREPOMonitorCONRID.AsString;
  dmGlobal.ShowEditorForm(TfrmContractRepo, sKey, pkRead);
end;

procedure TfrmREPOMonitor.cdsREPOMonitorCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsREPOMonitorRATIO.AsFloat := (cdsREPOMonitorCOLLATERAL.AsFloat/cdsREPOMonitorREPO_AMT.AsFloat) * 100;
end;

procedure TfrmREPOMonitor.cxButton1Click(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmREPOMonitor.FormCreate(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmREPOMonitor.gvwREPOMOnitorCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmREPOMonitor.Reload;
begin
  txtTransDate.Text := FormatDateTime('dd-mmm-yyyy', dmGlobal.RemoteServer.GetTransDate);
  cdsREPOMonitor.Close;
  cdsREPOMonitor.Open;

end;

end.
