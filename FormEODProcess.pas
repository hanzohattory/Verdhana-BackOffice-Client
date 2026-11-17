unit FormEODProcess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCalendar, cxTextEdit, cxBarEditItem;

type
  TfrmEODProcess = class(TfrmBrowseData)
    grdMasterLevel2: TcxGridLevel;
    gvwHist: TcxGridDBBandedTableView;
    cdsBatchConfig: TNClientDataset;
    cdsBatchConfigHist: TNClientDataset;
    dsBatchConfigHist: TDataSource;
    cdsBatchConfigHistPROCESSDATE: TDateField;
    cdsBatchConfigHistCODE: TStringField;
    cdsBatchConfigHistSEQNO: TIntegerField;
    cdsBatchConfigHistSTARTTIME: TDateTimeField;
    cdsBatchConfigHistENDTIME: TDateTimeField;
    cdsBatchConfigHistSTAT: TStringField;
    cdsBatchConfigHistOUTPUT_MESSAGE: TStringField;
    cdsBatchConfigHistPROCESSUI: TStringField;
    cdsBatchConfigCODE: TStringField;
    cdsBatchConfigDESCRIPTION: TStringField;
    cdsBatchConfigGROUP_CODE: TStringField;
    cdsBatchConfigSEQNO: TIntegerField;
    gvwMasterCODE: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterGROUP_CODE: TcxGridDBBandedColumn;
    gvwMasterSEQNO: TcxGridDBBandedColumn;
    gvwHistPROCESSDATE: TcxGridDBBandedColumn;
    gvwHistCODE: TcxGridDBBandedColumn;
    gvwHistSEQNO: TcxGridDBBandedColumn;
    gvwHistSTARTTIME: TcxGridDBBandedColumn;
    gvwHistENDTIME: TcxGridDBBandedColumn;
    gvwHistSTAT: TcxGridDBBandedColumn;
    gvwHistOUTPUT_MESSAGE: TcxGridDBBandedColumn;
    gvwHistPROCESSUI: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    actEODProcess: TNAction;
    dtTrans: TcxBarEditItem;
    dtNextTrans: TcxBarEditItem;
    procedure actEODProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
    FNextTransDate: TDate;
  public
    { Public declarations }
  end;

var
  frmEODProcess: TfrmEODProcess;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmEODProcess.actEODProcessExecute(Sender: TObject);
var
  bRes : Boolean;
  sMsg: string;
  dtSysDate: TDate;
begin
  inherited;
  try
    bRes := dmGlobal.RemoteServer.EODProcess(FNextTransDate, sMsg);
    if bRes then
    begin
      dtSysDate      := dmGlobal.RemoteServer.GetTransDate;
      FNextTransDate := dmGlobal.RemoteServer.GetNextTradingDate(dtSysDate, 1);

      dtTrans.EditValue     := dtSysDate;
      dtNextTrans.EditValue := FormatDateTime('dd mmm yyyy', FNextTransDate);
    end;
  finally
    if sMsg <> '' then
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

    dmGlobal.UpdateTradingDate;
  end;
end;

procedure TfrmEODProcess.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsBatchConfigHist.Close;
  cdsBatchConfigHist.Params[0].AsDate := dtTrans.EditValue;
  cdsBatchConfigHist.Open;
end;

procedure TfrmEODProcess.FormCreate(Sender: TObject);
var
  dtSysDate: TDate;
begin
  inherited;
  dtSysDate      := dmGlobal.RemoteServer.GetTransDate;
  FNextTransDate := dmGlobal.RemoteServer.GetNextTradingDate(dtSysDate, 1);

  dtTrans.EditValue     := dtSysDate;
  dtNextTrans.EditValue := FormatDateTime('dd mmm yyyy', FNextTransDate);

  cdsBatchConfig.Close;
  cdsBatchConfig.Open;

  cdsBatchConfigHist.Close;
  cdsBatchConfigHist.Params[0].AsDate := dtSysDate;
  cdsBatchConfigHist.Open;
end;

end.
