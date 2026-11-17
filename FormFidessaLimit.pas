unit FormFidessaLimit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, JvCsvData;

type
  TfrmFidessaLimit = class(TfrmBrowseData)
    cdsFidessaLimit: TNClientDataset;
    cdsFidessaLimitACCID: TIntegerField;
    cdsFidessaLimitACCCODE: TStringField;
    cdsFidessaLimitACCNAME: TStringField;
    cdsFidessaLimitEXTREF_CODE: TStringField;
    cdsFidessaLimitBUY_LIMIT: TFloatField;
    cdsFidessaLimitSELL_LIMIT: TFloatField;
    cdsFidessaLimitARAMT: TFloatField;
    cdsFidessaLimitAPAMT: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterEXTREF_CODE: TcxGridDBBandedColumn;
    gvwMasterBUY_LIMIT: TcxGridDBBandedColumn;
    gvwMasterSELL_LIMIT: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    actGenerateFile: TNAction;
    cdsResult: TJvCsvDataSet;
    cdsResultCOUNTERPARTY: TStringField;
    cdsResultCOUNTERPARTY_GROUP_ID: TStringField;
    cdsResultMARKET: TStringField;
    cdsResultEXPRESS_DESTINATION_ID: TStringField;
    cdsResultCURRENCY: TStringField;
    cdsResultCOMBINED_FLOW: TStringField;
    cdsResultSEPARATE_LIMITS: TStringField;
    cdsResultDF_BUY_ORDER_LIMIT: TIntegerField;
    cdsResultDF_BUY_DAILY_LIMIT: TIntegerField;
    cdsResultDF_SELL_ORDER_LIMIT: TIntegerField;
    cdsResultDF_SELL_DAILY_LIMIT: TIntegerField;
    cdsResultDF_ORDER_LIMIT: TIntegerField;
    cdsResultDF_DAILY_LIMIT: TIntegerField;
    cdsResultCF_BUY_ORDER_LIMIT: TIntegerField;
    cdsResultCF_BUY_DAILY_LIMIT: TIntegerField;
    cdsResultCF_SELL_ORDER_LIMIT: TIntegerField;
    cdsResultCF_SELL_DAILY_LIMIT: TIntegerField;
    cdsResultCF_ORDER_LIMIT: TIntegerField;
    cdsResultCF_DAILY_LIMIT: TIntegerField;
    cdsResultMF_BUY_ORDER_LIMIT: TIntegerField;
    cdsResultMF_BUY_DAILY_LIMIT: TIntegerField;
    cdsResultMF_SELL_ORDER_LIMIT: TIntegerField;
    cdsResultMF_SELL_DAILY_LIMIT: TIntegerField;
    cdsResultMF_ORDER_LIMIT: TIntegerField;
    cdsResultMF_DAILY_LIMIT: TIntegerField;
    cdsResultAF_ORDER_LIMIT: TIntegerField;
    cdsResultAF_DAILY_LIMIT: TIntegerField;
    cdsResultOPENING_CONSIDERATION: TIntegerField;
    cdsRMC: TJvCsvDataSet;
    cdsRMCCLIENT_CODE: TStringField;
    cdsRMCCOUNTER_PARTY: TStringField;
    cdsRMCCOUNTRY: TStringField;
    cdsRMCAPPR_BUY_LIM: TIntegerField;
    cdsRMCAPPR_SELL: TIntegerField;
    cdsRMCOPENING_BUY: TIntegerField;
    cdsRMCOPENING_SELL: TIntegerField;
    cdsRMCAVAIL_BUY: TIntegerField;
    cdsRMCAVAIL_SELL: TIntegerField;
    cdsRMCUPLOADED_BUY: TIntegerField;
    cdsRMCUPLOADED_SELL: TIntegerField;
    GenerateFile1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actGenerateFileExecute(Sender: TObject);
    procedure actGenerateFileUpdate(Sender: TObject);
  private
    { Private declarations }
    function CreateHeaderFile(ARecCount: integer): string;
    function CreateHeaderFileRMC: string;
  public
    { Public declarations }
  end;

var
  frmFidessaLimit: TfrmFidessaLimit;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmFidessaLimit.actGenerateFileExecute(Sender: TObject);
var
  oList, oListRMC: TStringList;
  sHeader, sHeaderRMC: string;
  sPath, sFileName, sPathRMC, sFileNameRMC: string;
  iRecCount: Integer;
  sCcy, sFxCcy: String;
  fValue, fInverseValue: Double;
begin
  inherited;
  sCcy := dmGlobal.RemoteServer.GetLocalCCY;
  sFxCcy := 'USD';
  dmGlobal.RemoteServer.GetCurrentCcyRate(sFxCcy, sCcy, fValue, fInverseValue);

  cdsFidessaLimit.DisableControls;
  cdsFidessaLimit.First;
  iRecCount:= cdsFidessaLimit.RecordCount;

  {Construct Path & File Name}
  sPath := IncludeTrailingBackslash(dmGlobal.MKBDOutPath);
  sFileName := 'COUNTERPARTY_LIMITS_JK.CSV';
  sFileName := sPath + sFileName;

  sPathRMC := IncludeTrailingBackslash(dmGlobal.MKBDOutPath);
  sFileNameRMC := 'RMC_JK.CSV';
  sFileNameRMC := sPathRMC + sFileNameRMC;

  {Prepare CSV DataSet}
  cdsResult.FileName := sFileName;
  cdsRMC.FileName := sFileNameRMC;
  if not cdsResult.Active then cdsResult.Active:= True;
  if not cdsRMC.Active then cdsRMC.Active:= True;
  cdsResult.EmptyTable;
  cdsRMC.EmptyTable;

  while not cdsFidessaLimit.Eof do
  begin
    cdsResult.Append;
    cdsResultCOUNTERPARTY.Value := cdsFidessaLimitEXTREF_CODE.Value;
    cdsResultCOUNTERPARTY_GROUP_ID.Value := 'N';
    cdsResultMARKET.Value := '';
    cdsResultEXPRESS_DESTINATION_ID.Value := '';
    cdsResultCURRENCY.Value := 'USD';
    cdsResultCOMBINED_FLOW.Value := 'Y';
    cdsResultSEPARATE_LIMITS.Value := 'Y';
    cdsResultOPENING_CONSIDERATION.Value := 0;
    cdsResultDF_BUY_ORDER_LIMIT.Value := 0;
    cdsResultDF_BUY_DAILY_LIMIT.Value := 0;
    cdsResultDF_SELL_ORDER_LIMIT.Value := 0;
    cdsResultDF_SELL_DAILY_LIMIT.Value := 0;
    cdsResultDF_ORDER_LIMIT.Value := 0;
    cdsResultDF_DAILY_LIMIT.Value := 0;
    cdsResultCF_BUY_ORDER_LIMIT.Value := 0;
    cdsResultCF_BUY_DAILY_LIMIT.Value := 0;
    cdsResultCF_SELL_ORDER_LIMIT.Value := 0;
    cdsResultCF_SELL_DAILY_LIMIT.Value := 0;
    cdsResultCF_ORDER_LIMIT.Value := 0;
    cdsResultCF_DAILY_LIMIT.Value := 0;
    cdsResultMF_BUY_ORDER_LIMIT.Value := 0;
    cdsResultMF_BUY_DAILY_LIMIT.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitBUY_LIMIT.AsFloat/fValue, 0);
    cdsResultMF_SELL_ORDER_LIMIT.Value := 0;
    cdsResultMF_SELL_DAILY_LIMIT.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitBUY_LIMIT.AsFloat/fValue, 0);
    cdsResultMF_ORDER_LIMIT.Value := 0;
    cdsResultMF_DAILY_LIMIT.Value := 0;
    cdsResultAF_ORDER_LIMIT.Value := 0;
    cdsResultAF_DAILY_LIMIT.Value := 0;
    cdsResult.Post;

    cdsRMC.Append;
    cdsRMCCLIENT_CODE.AsString := cdsFidessaLimitEXTREF_CODE.AsString;
    cdsRMCCOUNTER_PARTY.AsString := cdsFidessaLimitACCNAME.AsString;
    cdsRMCCOUNTRY.AsString := 'ID';
    cdsRMCAPPR_BUY_LIM.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitBUY_LIMIT.AsFloat/fValue, 0);
    cdsRMCAPPR_SELL.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitSELL_LIMIT.AsFloat/fValue, 0);
    cdsRMCOPENING_BUY.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitARAMT.AsFloat/fValue, 0);
    cdsRMCOPENING_SELL.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitAPAMT.AsFloat/fValue, 0);
    cdsRMCAVAIL_BUY.AsFloat := dmGlobal.RoundFloatNumber((cdsFidessaLimitBUY_LIMIT.AsFloat-cdsFidessaLimitAPAMT.AsFloat)/fValue, 0);
    cdsRMCAVAIL_SELL.AsFloat := dmGlobal.RoundFloatNumber(cdsFidessaLimitSELL_LIMIT.AsFloat- cdsFidessaLimitAPAMT.AsFloat/fValue, 0);

    if cdsRMCAVAIL_BUY.AsFloat < 0 then cdsRMCUPLOADED_BUY.AsFloat := 1
    else cdsRMCUPLOADED_BUY.AsFloat := cdsRMCAVAIL_BUY.AsFloat;

    if cdsRMCAVAIL_SELL.AsFloat < 0 then cdsRMCUPLOADED_SELL.AsFloat := 1
    else cdsRMCUPLOADED_SELL.AsFloat := cdsRMCAVAIL_SELL.AsFloat;

    cdsRMC.Post;

    cdsFidessaLimit.Next;
  end;

  {Export to StringList, Prepared for add header file}
  oList := TStringList.Create;
  cdsResult.AssignToStrings(oList);
  {Add Header into StringList}
  sHeader := CreateHeaderFile(iRecCount);
  oList.Insert(0, sHeader);
  {Save to File}
  oList.SaveToFile(sFileName);

  oListRMC := TStringList.Create;
  cdsRMC.AssignToStrings(oListRMC);
  {Add Header into StringList}
//  sHeaderRMC := CreateHeaderFileRMC;
//  oListRMC.Insert(0, sHeaderRMC);
  {Save to File}
  oListRMC.SaveToFile(sFileNameRMC);


  cdsFidessaLimit.EnableControls;
  ShowMessage(IntToStr(iRecCount)+ ' row(s) have been exported successfully');
end;

procedure TfrmFidessaLimit.actGenerateFileUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not cdsFidessaLimit.IsEmpty;
end;

function TfrmFidessaLimit.CreateHeaderFile(ARecCount: integer): string;
var
  oStrings: TStringList;
begin
  oStrings := TStringList.Create;
  oStrings.QuoteChar := #0;
  oStrings.Delimiter := ',';
  oStrings.Append('COUNTERPARTY_LIMITS');
  oStrings.Append('1.2');
  oStrings.Append(FormatDateTime('YYYYMMDDHHNNSS', now));
  oStrings.Append('CIMB_JK');
  oStrings.Append(IntToStr(ARecCount));
  oStrings.Append('CIMB Counter Party Limits Upload_Jkt');

  Result := oStrings.CommaText;
end;

function TfrmFidessaLimit.CreateHeaderFileRMC: string;
begin
  Result := 'Fidessa Credit Code,Counterparty_Name,Country of Domicile,Approved Buy Limit,Approved Sell Limit,' +
    'Opening Gross Buy Exposure,Opening Gross Sell Exposure,Opening Available Buy Limit,Opening Available Sell Limit,'+
    'Uploaded Buy Limit to Fidessa,Uploaded Sell Limit to Fidessa';

end;

procedure TfrmFidessaLimit.FormCreate(Sender: TObject);
begin
  inherited;
  cdsFidessaLimit.Close;
  cdsFidessaLimit.Open;
end;

Initialization
  RegisterClass(TfrmFidessaLimit);

end.
