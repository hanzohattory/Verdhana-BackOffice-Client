unit FormSInvestRecon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem, cxButtonEdit, dxScrollbarAnnotations, cxCheckGroup,
  cxCheckBox;

type
  TfrmSInvestRecon = class(TfrmBrowseData)
    cdsSInvestRecon: TNClientDataset;
    dtTrade: TcxBarEditItem;
    BarMBrowseBar2: TdxBar;
    gvwMasterDealDate: TcxGridDBBandedColumn;
    gvwMasterNayagaAccountCode: TcxGridDBBandedColumn;
    gvwMasterNayagaAccountName: TcxGridDBBandedColumn;
    gvwMasterNayagaBuySell: TcxGridDBBandedColumn;
    gvwMasterNayagaStockCode: TcxGridDBBandedColumn;
    gvwMasterNayagaStockName: TcxGridDBBandedColumn;
    gvwMasterNayagaDealQty: TcxGridDBBandedColumn;
    gvwMasterNayagaCurrency: TcxGridDBBandedColumn;
    gvwMasterNayagaDealPrice: TcxGridDBBandedColumn;
    gvwMasterSInvestIMCode: TcxGridDBBandedColumn;
    gvwMasterSInvestIMName: TcxGridDBBandedColumn;
    gvwMasterSInvestStockCode: TcxGridDBBandedColumn;
    gvwMasterSInvestStockName: TcxGridDBBandedColumn;
    gvwMasterSInvestBuySell: TcxGridDBBandedColumn;
    gvwMasterSInvestQty: TcxGridDBBandedColumn;
    gvwMasterSInvestCurrency: TcxGridDBBandedColumn;
    gvwMasterSInvestPrice: TcxGridDBBandedColumn;
    edSInvestFileName: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    OpenDialog: TOpenDialog;
    cdsSInvest: TNClientDataset;
    cdsSInvestTRAN_STATUS: TStringField;
    cdsSInvestTA_REF_NO: TStringField;
    cdsSInvestTRADE_DATE: TDateTimeField;
    cdsSInvestSETTLEMENT_DATE: TDateTimeField;
    cdsSInvestIM_CODE: TStringField;
    cdsSInvestIM_NAME: TStringField;
    cdsSInvestBR_CODE: TStringField;
    cdsSInvestBR_NAME: TStringField;
    cdsSInvestFUND_CODE: TStringField;
    cdsSInvestFUND_NAME: TStringField;
    cdsSInvestSTOCK_CODE: TStringField;
    cdsSInvestSTOCK_NAME: TStringField;
    cdsSInvestBUY_SELL: TStringField;
    cdsSInvestCCY: TStringField;
    cdsSInvestPRICE: TFloatField;
    cdsSInvestQTY: TFloatField;
    cdsSInvestTRADE_AMT: TFloatField;
    cdsSInvestCOMMISSION: TFloatField;
    cdsSInvestSALES_TAX: TFloatField;
    cdsSInvestLEVY: TFloatField;
    cdsSInvestVAT: TFloatField;
    cdsSInvestOTHER_CHARGES: TFloatField;
    cdsSInvestGROSS_SETTLEMET_AMT: TFloatField;
    cdsSInvestWHT_ON_COMMISSION: TFloatField;
    cdsSInvestNET_SETTLEMENT_AMT: TFloatField;
    cdsSInvestSETTLEMENT_TYPE: TStringField;
    cdsSInvestREMARK: TStringField;
    cdsSInvestReconDealDate: TDateField;
    cdsSInvestReconNayagaAccountCode: TStringField;
    cdsSInvestReconNayagaAccountName: TStringField;
    cdsSInvestReconNayagaBuySell: TStringField;
    cdsSInvestReconNayagaStockCode: TStringField;
    cdsSInvestReconNayagaStockName: TStringField;
    cdsSInvestReconNayagaDealQty: TFloatField;
    cdsSInvestReconNayagaCurrency: TStringField;
    cdsSInvestReconNayagaDealPrice: TFloatField;
    cdsSInvestReconSInvestIMCode: TStringField;
    cdsSInvestReconSInvestIMName: TStringField;
    cdsSInvestReconSInvestStockCode: TStringField;
    cdsSInvestReconSInvestStockName: TStringField;
    cdsSInvestReconSInvestBuySell: TStringField;
    cdsSInvestReconSInvestQty: TFloatField;
    cdsSInvestReconSInvestCurrency: TStringField;
    cdsSInvestReconSInvestPrice: TFloatField;
    chkDifferentOnly: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure edSInvestFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkDifferentOnlyPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure Reload;
  public
    { Public declarations }
  end;

var
  frmSInvestRecon: TfrmSInvestRecon;

implementation

uses DataGlobal, DataLookup, FormProgressBar, FormPleaseWait;

{$R *.dfm}

procedure TfrmSInvestRecon.chkDifferentOnlyPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cdsSInvestRecon.Filtered := chkDifferentOnly.EditValue = True;
end;

procedure TfrmSInvestRecon.dxBarButton1Click(Sender: TObject);
var
  oDataList, oDataSInvest: TStringList;
  sExt: string;
  sFileName: string;
  i, n, iDone, iFail: Integer;
  sMsg: string;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
  oPleaseWait: TfrmPlaseWait;
begin
  inherited;
  try
    bRes := False;

    oDataList := TStringList.Create;
    sFileName := Trim(varTostr(edSInvestFileName.EditValue));
    if sFileName = '' then
    begin
      MessageDlg('There is no file can be imported...', mtWarning, [mbOK], 0);
      Abort;
    end
    else
    begin
      if MessageDlg('Upload S-Invest from file ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dmGlobal.RemoteServer.EmptyTable('main.S_INVEST', sMsg);

        cdsSInvest.Close;
        cdsSInvest.Open;

//        oProgress := TfrmProgressBar.Create(Nil);
        oPleaseWait := TfrmPlaseWait.Create(nil);
        sExt        := ExtractFileExt(sFileName);
        oPleaseWait.Show;
        Application.ProcessMessages;
        if (sExt = '.csv') or (sExt = '.txt') then
        begin
          iDone := 0;
          iFail := 0;

//          oProgress.Show;
          oDataList.LoadFromFile(sFileName);
          n  := oDataList.Count;
          for i := 1 to oDataList.Count -1 do
          begin
            try
//              oProgress.ChangeBar(trunc((i) / n * 100), 'Uploading S-Invest Data ' +
//                QuotedStr(oDataSInvest.Strings[1]));

              oDataSInvest := TStringList.Create;
              oDataSInvest.StrictDelimiter := True;
              oDataSInvest.DelimitedText   := oDataList.Strings[i];
              if sExt = '.csv' then
                oDataSInvest.Delimiter := ','
              else
                oDataSInvest.Delimiter := '|';

              cdsSInvest.Append;
              cdsSInvestTRAN_STATUS.AsString        := oDataSInvest.Strings[0];
              cdsSInvestTA_REF_NO.AsString          := oDataSInvest.Strings[1];
              cdsSInvestTRADE_DATE.AsDateTime       := EncodeDate(StrToInt(copy(oDataSInvest.Strings[2], 1, 4)),
                StrToInt(copy(oDataSInvest.Strings[2], 5, 2)), StrToInt(copy(oDataSInvest.Strings[2], 7, 2)));
              cdsSInvestSETTLEMENT_DATE.AsDateTime := EncodeDate(StrToInt(copy(oDataSInvest.Strings[3], 1, 4)),
                StrToInt(copy(oDataSInvest.Strings[3], 5, 2)), StrToInt(copy(oDataSInvest.Strings[3], 7, 2)));
              cdsSInvestIM_CODE.AsString            := oDataSInvest.Strings[4];
              cdsSInvestIM_NAME.AsString            := oDataSInvest.Strings[5];
              cdsSInvestBR_CODE.AsString            := oDataSInvest.Strings[6];
              cdsSInvestBR_NAME.AsString            := oDataSInvest.Strings[7];
              cdsSInvestFUND_CODE.AsString          := oDataSInvest.Strings[8];
              cdsSInvestFUND_NAME.AsString          := oDataSInvest.Strings[9];
              cdsSInvestSTOCK_CODE.AsString         := oDataSInvest.Strings[10];
              cdsSInvestSTOCK_NAME.AsString         := oDataSInvest.Strings[11];
              cdsSInvestBUY_SELL.AsString           := oDataSInvest.Strings[12];
              cdsSInvestCCY.AsString                := oDataSInvest.Strings[13];
              cdsSInvestPRICE.AsFloat               := StrToFloatDef(oDataSInvest.Strings[14], 0);
              cdsSInvestQTY.AsFloat                 := StrToFloatDef(oDataSInvest.Strings[15], 0);
              cdsSInvestTRADE_AMT.AsFloat           := StrToFloatDef(oDataSInvest.Strings[16], 0);
              cdsSInvestCOMMISSION.AsFloat          := StrToFloatDef(oDataSInvest.Strings[17], 0);
              cdsSInvestSALES_TAX.AsFloat           := StrToFloatDef(oDataSInvest.Strings[18], 0);
              cdsSInvestLEVY.AsFloat                := StrToFloatDef(oDataSInvest.Strings[19], 0);
              cdsSInvestVAT.AsFloat                 := StrToFloatDef(oDataSInvest.Strings[20], 0);
              cdsSInvestOTHER_CHARGES.AsFloat       := StrToFloatDef(oDataSInvest.Strings[21], 0);
              cdsSInvestGROSS_SETTLEMET_AMT.AsFloat := StrToFloatDef(oDataSInvest.Strings[22], 0);
              cdsSInvestWHT_ON_COMMISSION.AsFloat   := StrToFloatDef(oDataSInvest.Strings[23], 0);
              cdsSInvestNET_SETTLEMENT_AMT.AsFloat  := StrToFloatDef(oDataSInvest.Strings[24], 0);
              cdsSInvestSETTLEMENT_TYPE.AsString    := oDataSInvest.Strings[25];
              cdsSInvestREMARK.AsString             := oDataSInvest.Strings[26];
              cdsSInvest.Post;

            finally
              FreeAndNil(oDataSInvest);
              bRes := True;
            end;
          end;
          cdsSInvest.ApplyUpdates(-1);
        end;
      end;
    end;
  finally

    FreeAndNil(oDataList);
    FreeAndNil(oPleaseWait);
//    FreeAndNil(oProgress);
    if (FileExists(sFileName))and (sFileName <>'') then
     begin
      MessageDlg('Data S-Invest has been uploaded !', mtInformation, [mbOK], 0);
     end;
    if bRes then
      Reload;

  end;
end;

procedure TfrmSInvestRecon.edSInvestFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
  sExt: string;
begin
  inherited;
  sFileName := '';

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if sFileName <> '' then
    edSInvestFileName.EditValue := sFileName;
end;

procedure TfrmSInvestRecon.FormCreate(Sender: TObject);
begin
  inherited;
  dtTrade.EditValue := dmGlobal.RemoteServer.GetTransDate;
  chkDifferentOnly.EditValue := False;
end;

procedure TfrmSInvestRecon.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  Reload;
end;

{ TfrmBrowseData1 }

procedure TfrmSInvestRecon.Reload;
begin
  cdsSInvestRecon.Close;
  cdsSInvestRecon.Params[0].AsDate := VarToDateTime(dtTrade.EditValue) ;
  cdsSInvestRecon.Open;
end;

end.
