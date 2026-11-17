unit FormDailyInterestOutsList;

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
  Datasnap.DBClient, NClientDataset;

type
  TfrmDailyInterestOutsList = class(TfrmBrowseData)
    cdsDailyInterestOutsList: TNClientDataset;
    cdsDailyInterestOutsListAccountID: TIntegerField;
    cdsDailyInterestOutsListAccountCode: TStringField;
    cdsDailyInterestOutsListAccountName: TStringField;
    cdsDailyInterestOutsListAccountType: TStringField;
    cdsDailyInterestOutsListAccountTypeDesc: TStringField;
    cdsDailyInterestOutsListTransactionID: TLargeintField;
    cdsDailyInterestOutsListTransactionNo: TStringField;
    cdsDailyInterestOutsListTransType: TStringField;
    cdsDailyInterestOutsListTransTypeDesc: TStringField;
    cdsDailyInterestOutsListTransactionDate: TDateField;
    cdsDailyInterestOutsListDueDate: TDateField;
    cdsDailyInterestOutsListMaturityDate: TDateField;
    cdsDailyInterestOutsListOriginalAmount: TFloatField;
    cdsDailyInterestOutsListSettled_Amount: TFloatField;
    cdsDailyInterestOutsListUnsettle_Amount: TFloatField;
    cdsDailyInterestOutsListAccrruedInterest: TFloatField;
    cdsDailyInterestOutsListPrincipalizeInterest: TFloatField;
    cdsDailyInterestOutsListInterestDays: TIntegerField;
    cdsDailyInterestOutsListInterestRate: TFloatField;
    cdsDailyInterestOutsListPenaltyInterest: TFloatField;
    cdsDailyInterestOutsListPenaltyInterestDay: TIntegerField;
    cdsDailyInterestOutsListWaiveInterest: TFloatField;
    cdsDailyInterestOutsListAccrruedPenalty: TFloatField;
    cdsDailyInterestOutsListPrincipalizePenalty: TFloatField;
    cdsDailyInterestOutsListPenaltyDays: TIntegerField;
    cdsDailyInterestOutsListPenaltyRate: TFloatField;
    cdsDailyInterestOutsListWaivePenalty: TFloatField;
    gvwMasterAccountID: TcxGridDBBandedColumn;
    gvwMasterAccountCode: TcxGridDBBandedColumn;
    gvwMasterAccountName: TcxGridDBBandedColumn;
    gvwMasterAccountType: TcxGridDBBandedColumn;
    gvwMasterAccountTypeDesc: TcxGridDBBandedColumn;
    gvwMasterTransactionID: TcxGridDBBandedColumn;
    gvwMasterTransactionNo: TcxGridDBBandedColumn;
    gvwMasterTransType: TcxGridDBBandedColumn;
    gvwMasterTransTypeDesc: TcxGridDBBandedColumn;
    gvwMasterTransactionDate: TcxGridDBBandedColumn;
    gvwMasterDueDate: TcxGridDBBandedColumn;
    gvwMasterMaturityDate: TcxGridDBBandedColumn;
    gvwMasterOriginalAmount: TcxGridDBBandedColumn;
    gvwMasterSettled_Amount: TcxGridDBBandedColumn;
    gvwMasterUnsettle_Amount: TcxGridDBBandedColumn;
    gvwMasterAccrruedInterest: TcxGridDBBandedColumn;
    gvwMasterPrincipalizeInterest: TcxGridDBBandedColumn;
    gvwMasterInterestDays: TcxGridDBBandedColumn;
    gvwMasterInterestRate: TcxGridDBBandedColumn;
    gvwMasterPenaltyInterest: TcxGridDBBandedColumn;
    gvwMasterPenaltyInterestDay: TcxGridDBBandedColumn;
    gvwMasterWaiveInterest: TcxGridDBBandedColumn;
    gvwMasterAccrruedPenalty: TcxGridDBBandedColumn;
    gvwMasterPrincipalizePenalty: TcxGridDBBandedColumn;
    gvwMasterPenaltyDays: TcxGridDBBandedColumn;
    gvwMasterPenaltyRate: TcxGridDBBandedColumn;
    gvwMasterWaivePenalty: TcxGridDBBandedColumn;
    cdsDailyInterestOutsListAccount: TStringField;
    gvwMasterAccount: TcxGridDBBandedColumn;
    btnExpand: TdxBarButton;
    actChangeInsterestRate: TNAction;
    actPrincipalizeInterest: TNAction;
    actPrincipalizePenalty: TNAction;
    actWaveInterest: TNAction;
    actWavePenalty: TNAction;
    ChangeInterestRate1: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    PrincipalizeInterest1: TMenuItem;
    PrincipalizePenalty1: TMenuItem;
    WaveInterest1: TMenuItem;
    WavePenalty1: TMenuItem;
    procedure btnExpandClick(Sender: TObject);
    procedure actChangeInsterestRateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrincipalizeInterestExecute(Sender: TObject);
    procedure actPrincipalizePenaltyExecute(Sender: TObject);
    procedure actWaveInterestExecute(Sender: TObject);
    procedure actWavePenaltyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDailyInterestOutsList: TfrmDailyInterestOutsList;

implementation

{$R *.dfm}

uses DataGlobal, FormDailyInterestOutsChangeInteresRate,
  FormDailyInterestOutsPenaltyWave;

procedure TfrmDailyInterestOutsList.actChangeInsterestRateExecute(
  Sender: TObject);
var
  oForm: TfrmDailyInteresOutsChangeInterestRate;
  sMsg, sInterestCode: String;
  iTransactionID: Int64;
  bRes: Boolean;
begin
  inherited;
  try
    iTransactionID := cdsDailyInterestOutsListTransactionID.AsLargeInt;

    oForm := TfrmDailyInteresOutsChangeInterestRate.Create(nil);
    TfrmDailyInteresOutsChangeInterestRate(oForm).LoadData(iTransactionID);
    if oForm.ShowModal = mrOk then
    begin
      sInterestCode := TfrmDailyInteresOutsChangeInterestRate(oForm).InterestCode;
      bRes          := dmGlobal.RemoteServer.ChangeInterestRate(iTransactionID, sInterestCode, sMsg);

      if bRes then
        MessageInformation(sMsg)
      else
        MessageError(sMsg);
    end;
  finally
    oForm.Free;
  end;
end;

procedure TfrmDailyInterestOutsList.actPrincipalizeInterestExecute(
  Sender: TObject);
var
  oForm: TfrmDailyInterestOutsPenaltyWave;
  iTransactionID: Integer;
  fAmount: Double;
  sMsg: string;
  iInterestCoID: Int64;
  bRes: Boolean;
begin
  inherited;
  try
    oForm          := TfrmDailyInterestOutsPenaltyWave.Create(nil);
    iTransactionID := cdsDailyInterestOutsListTransactionID.AsInteger;

    with TfrmDailyInterestOutsPenaltyWave(oForm) do
    begin
      Caption := 'Prinsipalize Interest';
      LoadData(iTransactionID);

      cdsPenaltyWave.Edit;
      cdsPenaltyWaveprocessAmount.AsFloat := cdsPenaltyWaveinterest.AsFloat;
      cdsPenaltyWave.Post;

      gvwGeneratepenalty.Visible  := False;
      gvwGenerateinterest.Visible := True;
    end;

    if oForm.ShowModal = mrOk then
    begin
      fAmount := TfrmDailyInterestOutsPenaltyWave(oForm).Amount;
      if fAmount <> 0 then
      begin
        bRes := dmGlobal.RemoteServer.GeneratePrincipalizeInterest(iTransactionID, fAmount, sMsg, iInterestCoID);

        if bRes then
          MessageInformation(sMsg)
        else
          MessageError(sMsg);
      end;
    end;
  finally
    oForm.Free;
  end;
end;

procedure TfrmDailyInterestOutsList.actPrincipalizePenaltyExecute(
  Sender: TObject);
var
  oForm: TfrmDailyInterestOutsPenaltyWave;
  iTransactionID: Integer;
  fAmount: Double;
  sMsg: string;
  iInterestCoID: Int64;
  bRes: Boolean;
begin
  inherited;
  try
    oForm          := TfrmDailyInterestOutsPenaltyWave.Create(nil);
    iTransactionID := cdsDailyInterestOutsListTransactionID.AsInteger;

    with TfrmDailyInterestOutsPenaltyWave(oForm) do
    begin
      Caption := 'Prinsipalize Penalty';
      LoadData(iTransactionID);

      cdsPenaltyWave.Edit;
      cdsPenaltyWaveprocessAmount.AsFloat := cdsPenaltyWavepenalty.AsFloat;
      cdsPenaltyWave.Post;

      gvwGeneratepenalty.Visible  := True;
      gvwGenerateinterest.Visible := False;
    end;

    if oForm.ShowModal = mrOk then
    begin
      fAmount := TfrmDailyInterestOutsPenaltyWave(oForm).Amount;
      if fAmount <> 0 then
      begin
        bRes := dmGlobal.RemoteServer.GeneratePrincipalizeInterest(iTransactionID, fAmount, sMsg, iInterestCoID);

        if bRes then
          MessageInformation(sMsg)
        else
          MessageError(sMsg);
      end;
    end;
  finally
    oForm.Free;
  end;
end;

procedure TfrmDailyInterestOutsList.actRefreshExecute(Sender: TObject);
begin
  inherited;

  gvwMaster.ViewData.Collapse(True);
  btnExpand.Caption    := 'Expand All';
  btnExpand.ImageIndex := 1;
end;

procedure TfrmDailyInterestOutsList.actWaveInterestExecute(Sender: TObject);
var
  oForm: TfrmDailyInterestOutsPenaltyWave;
  iTransactionID: Integer;
  fAmount: Double;
  sMsg: string;
  iInterestCoID: Int64;
  bRes: Boolean;
begin
  inherited;
  try
    oForm          := TfrmDailyInterestOutsPenaltyWave.Create(nil);
    iTransactionID := cdsDailyInterestOutsListTransactionID.AsInteger;

    with TfrmDailyInterestOutsPenaltyWave(oForm) do
    begin
      Caption := 'Wave Interest';
      LoadData(iTransactionID);

      cdsPenaltyWave.Edit;
      cdsPenaltyWaveprocessAmount.AsFloat := cdsPenaltyWaveinterest.AsFloat;
      cdsPenaltyWave.Post;

      gvwGeneratepenalty.Visible  := False;
      gvwGenerateinterest.Visible := True;
    end;

    if oForm.ShowModal = mrOk then
    begin
      fAmount := TfrmDailyInterestOutsPenaltyWave(oForm).Amount;
      if fAmount <> 0 then
      begin
        bRes := dmGlobal.RemoteServer.GenerateWaveInterest(iTransactionID, fAmount, sMsg, iInterestCoID);

        if bRes then
          MessageInformation(sMsg)
        else
          MessageError(sMsg);
      end;
    end;
  finally
    oForm.Free;
  end;
end;

procedure TfrmDailyInterestOutsList.actWavePenaltyExecute(Sender: TObject);
var
  oForm: TfrmDailyInterestOutsPenaltyWave;
  iTransactionID: Integer;
  fAmount: Double;
  sMsg: string;
  iInterestCoID: Int64;
  bRes: Boolean;
begin
  inherited;
  try
    oForm          := TfrmDailyInterestOutsPenaltyWave.Create(nil);
    iTransactionID := cdsDailyInterestOutsListTransactionID.AsInteger;

    with TfrmDailyInterestOutsPenaltyWave(oForm) do
    begin
      Caption := 'Wave Penalty';
      LoadData(iTransactionID);

      cdsPenaltyWave.Edit;
      cdsPenaltyWaveprocessAmount.AsFloat := cdsPenaltyWavepenalty.AsFloat;
      cdsPenaltyWave.Post;

      gvwGeneratepenalty.Visible  := True;
      gvwGenerateinterest.Visible := False;
    end;

    if oForm.ShowModal = mrOk then
    begin
      fAmount := TfrmDailyInterestOutsPenaltyWave(oForm).Amount;
      if fAmount <> 0 then
      begin
        bRes := dmGlobal.RemoteServer.GenerateWavePenalty(iTransactionID, fAmount, sMsg, iInterestCoID);

        if bRes then
          MessageInformation(sMsg)
        else
          MessageError(sMsg);
      end;
    end;
  finally
    oForm.Free;
  end;
end;

procedure TfrmDailyInterestOutsList.btnExpandClick(Sender: TObject);
begin
  inherited;
  if btnExpand.Caption = 'Expand All' then
  begin
    gvwMaster.ViewData.Expand(True);
    btnExpand.Caption    := 'Collaps All';
    btnExpand.ImageIndex := 0;
  end
  else
  begin
    gvwMaster.ViewData.Collapse(True);
    btnExpand.Caption    := 'Expand All';
    btnExpand.ImageIndex := 1;
  end;
end;

procedure TfrmDailyInterestOutsList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsluInterest.Close;
    cdsLuInterest.Open;
  end;
end;

end.
