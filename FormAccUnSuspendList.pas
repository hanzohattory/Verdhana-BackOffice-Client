unit FormAccUnSuspendList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, NReportClient, cxCalendar,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.Actions, System.ImageList, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmAccUnSuspendList = class(TfrmBrowseData)
    cdsAccSuspendList: TNClientDataset;
    cdsAccountByParam: TNClientDataset;
    cdsAccountByParamACCID: TIntegerField;
    cdsAccountByParamACC_STS: TStringField;
    actOpenSuspend: TNAction;
    OpenSuspend1: TMenuItem;
    N5: TMenuItem;
    actApproveUnSuspend: TNAction;
    actRejectUnSuspend: TNAction;
    actCancelUnSuspend: TNAction;
    cdsAccSuspendListACCID: TIntegerField;
    cdsAccSuspendListACCCODE: TStringField;
    cdsAccSuspendListACCNAME: TStringField;
    cdsAccSuspendListACC_STS: TStringField;
    cdsAccSuspendListSPRESID: TLargeintField;
    cdsAccSuspendListUNSPDATE: TDateField;
    cdsAccSuspendListUNSPBY: TStringField;
    cdsAccSuspendListUNSPNOTES: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterSPRESID: TcxGridDBBandedColumn;
    gvwMasterUNSPDATE: TcxGridDBBandedColumn;
    gvwMasterUNSPBY: TcxGridDBBandedColumn;
    gvwMasterUNSPNOTES: TcxGridDBBandedColumn;
    cdsAccSuspendListNEEDAPPROVAL: TBooleanField;
    gvwMasterNEEDAPPROVAL: TcxGridDBBandedColumn;
    N6: TMenuItem;
    Approve2: TMenuItem;
    Reject2: TMenuItem;
    Cancel2: TMenuItem;
    cdsAccUnSuspend: TNClientDataset;
    cdsAccUnSuspendACCID: TIntegerField;
    cdsAccUnSuspendUNSPDATE: TDateField;
    cdsAccUnSuspendUNSPBY: TStringField;
    cdsAccUnSuspendUNSPNOTES: TStringField;
    cdsAccUnSuspendMODDA: TDateTimeField;
    cdsAccUnSuspendMODUI: TStringField;
    cdsAccUnSuspendAPPDA: TDateTimeField;
    cdsAccUnSuspendAPPUI: TStringField;
    cdsAccUnSuspendUNDER4Y: TIntegerField;
    cdsAccUnSuspendUNDER4YDA: TDateTimeField;
    cdsAccUnSuspendNOTES4Y: TStringField;
    cdsAccUnSuspendISDEL: TIntegerField;
    cdsAccUnSuspendID: TLargeintField;
    cdsAccUnSuspendACCCODE: TStringField;
    cdsAccUnSuspendACCNAME: TStringField;
    cdsAccUnSuspendACC_STS: TStringField;
    cdsAccUnSuspendSPRESID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actOpenSuspendExecute(Sender: TObject);
    procedure cdsAccSuspendListCalcFields(DataSet: TDataSet);
    procedure actApproveUnSuspendExecute(Sender: TObject);
    procedure actCancelUnSuspendExecute(Sender: TObject);
    procedure actRejectUnSuspendExecute(Sender: TObject);
    procedure actApproveUnSuspendUpdate(Sender: TObject);
    procedure actCancelUnSuspendUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccUnSuspendList: TfrmAccUnSuspendList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccUnSuspend, DataLookup;

procedure TfrmAccUnSuspendList.actApproveUnSuspendExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to approve this activing account suspend request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if dmGlobal.RemoteServer.ApproveOpenSuspendAccount(cdsAccSuspendListACCID.AsInteger, sMsg) then
    begin
      cdsAccSuspendList.Close;
      cdsAccSuspendList.Open;
    end;

    ShowMessage(sMsg);
  end;
end;

procedure TfrmAccUnSuspendList.actApproveUnSuspendUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsAccSuspendListNEEDAPPROVAL.AsBoolean
    And (UpperCase(cdsAccSuspendListUNSPBY.AsString) <> UpperCase(dmGlobal.UserID));
end;

procedure TfrmAccUnSuspendList.actCancelUnSuspendExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to cancel this activing account suspend request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsAccUnSuspend.Close;
    cdsAccUnSuspend.Params[0].AsInteger := cdsAccSuspendListACCID.AsInteger;
    cdsAccUnSuspend.Open;

    if not cdsAccUnSuspend.IsEmpty then
    begin
      cdsAccUnSuspend.Delete;
      cdsAccUnSuspend.ApplyUpdates(0);
      sMsg := 'Activing account suspend request cancelled succesfullly';
    end
    else
    begin
      sMsg := 'This activing account suspend request not found!'
    end;

    cdsAccSuspendList.Close;
    cdsAccSuspendList.Open;

    ShowMessage(sMsg);
  end;
end;

procedure TfrmAccUnSuspendList.actCancelUnSuspendUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsAccSuspendListNEEDAPPROVAL.AsBoolean
    And (UpperCase(cdsAccSuspendListUNSPBY.AsString) = UpperCase(dmGlobal.UserID));
end;

procedure TfrmAccUnSuspendList.actOpenSuspendExecute(Sender: TObject);
begin
  inherited;
  actEdit.Execute;
end;

procedure TfrmAccUnSuspendList.actRejectUnSuspendExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to reject this activing account suspend request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsAccUnSuspend.Close;
    cdsAccUnSuspend.Params[0].AsInteger := cdsAccSuspendListACCID.AsInteger;
    cdsAccUnSuspend.Open;

    if not cdsAccUnSuspend.IsEmpty then
    begin
      cdsAccUnSuspend.Delete;
      cdsAccUnSuspend.ApplyUpdates(0);
      sMsg := 'Activing account suspend request rejected succesfullly';
    end
    else
    begin
      sMsg := 'This activing account suspend request not found!'
    end;

    cdsAccSuspendList.Close;
    cdsAccSuspendList.Open;

    ShowMessage(sMsg);
  end;
end;

procedure TfrmAccUnSuspendList.cdsAccSuspendListCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsAccSuspendListNEEDAPPROVAL.AsBoolean := not cdsAccSuspendListUNSPDATE.IsNull;
end;

procedure TfrmAccUnSuspendList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccUnSuspend;
end;

procedure TfrmAccUnSuspendList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAccSuspendListACCID;

  cdsAccSuspendList.Close;
  cdsAccSuspendList.Open;

  dmGlobal.IntDataLookUp.cdsLuAccount.Close;
  dmGlobal.IntDataLookUp.cdsLuAccount.Open;

  dmGlobal.IntDataLookUp.cdsLuSuspendList.Close;
  dmGlobal.IntDataLookUp.cdsLuSuspendList.Open;
end;

procedure TfrmAccUnSuspendList.FormShow(Sender: TObject);
begin
  inherited;
  if Self.Tag = 0 then
  begin
    CopyFromSelectedData1.Clear;
    Insert1.Clear;
    Insert2.Clear;
    Edit1.Clear;
    Delete1.Clear;
    Self.Tag := Self.Tag + 1;

    Insert2.Visible := False;
    Edit1.Visible := False;
    Delete1.Visible := False;
    N4.Visible := False;
  end;
end;

Initialization
  RegisterClass(TfrmAccUnSuspendList);

end.
