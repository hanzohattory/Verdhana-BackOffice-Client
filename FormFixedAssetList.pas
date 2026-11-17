unit FormFixedAssetList;

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
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, Math, NReportClient;

type
  TfrmFixedAssetList = class(TfrmBrowseData)
    cdsAssetList: TNClientDataset;
    cdsAsset: TNClientDataset;
    cdsAssetListASSET_ID: TIntegerField;
    cdsAssetListASSET_CODE: TStringField;
    cdsAssetListASSET_NAME: TStringField;
    cdsAssetListASSET_GROUP: TIntegerField;
    cdsAssetListDEPRECIATION_METHOD: TIntegerField;
    cdsAssetListDEPRECIATION_TABLE: TIntegerField;
    cdsAssetListPURCHASE_DATE: TDateField;
    cdsAssetListBUY_PRICE: TFloatField;
    cdsAssetListSALVAGE: TFloatField;
    cdsAssetListECONOMIC_LIFE: TIntegerField;
    cdsAssetListLOCATION: TStringField;
    cdsAssetListCALC_DATE: TDateField;
    cdsAssetListACCUM_DEPRECIATION: TFloatField;
    cdsAssetListACCUM_DEPRECIATION_YTD: TFloatField;
    cdsAssetListBOOK_VALUE: TFloatField;
    cdsAssetListMONTHLY_DEPRECIATION: TFloatField;
    cdsAssetListDISPOSED_DATE: TDateField;
    cdsAssetListASSET_GLACC: TIntegerField;
    cdsAssetListACCUM_DEPREC_GLACC: TIntegerField;
    cdsAssetListDEPREC_GLACC: TIntegerField;
    cdsAssetListMODDA: TDateTimeField;
    cdsAssetListMODUI: TStringField;
    cdsAssetListAPPDA: TDateTimeField;
    cdsAssetListAPPUI: TStringField;
    cdsAssetListUNDER4Y: TIntegerField;
    cdsAssetListUNDER4YDA: TDateTimeField;
    cdsAssetListNOTES4Y: TStringField;
    cdsAssetListISDEL: TIntegerField;
    cdsAssetListID: TLargeintField;
    cdsAssetASSET_ID: TIntegerField;
    cdsAssetASSET_CODE: TStringField;
    cdsAssetASSET_NAME: TStringField;
    cdsAssetASSET_GROUP: TIntegerField;
    cdsAssetDEPRECIATION_METHOD: TIntegerField;
    cdsAssetDEPRECIATION_TABLE: TIntegerField;
    cdsAssetPURCHASE_DATE: TDateField;
    cdsAssetBUY_PRICE: TFloatField;
    cdsAssetSALVAGE: TFloatField;
    cdsAssetECONOMIC_LIFE: TIntegerField;
    cdsAssetLOCATION: TStringField;
    cdsAssetCALC_DATE: TDateField;
    cdsAssetACCUM_DEPRECIATION: TFloatField;
    cdsAssetACCUM_DEPRECIATION_YTD: TFloatField;
    cdsAssetBOOK_VALUE: TFloatField;
    cdsAssetMONTHLY_DEPRECIATION: TFloatField;
    cdsAssetDISPOSED_DATE: TDateField;
    cdsAssetASSET_GLACC: TIntegerField;
    cdsAssetACCUM_DEPREC_GLACC: TIntegerField;
    cdsAssetDEPREC_GLACC: TIntegerField;
    cdsAssetMODDA: TDateTimeField;
    cdsAssetMODUI: TStringField;
    cdsAssetAPPDA: TDateTimeField;
    cdsAssetAPPUI: TStringField;
    cdsAssetUNDER4Y: TIntegerField;
    cdsAssetUNDER4YDA: TDateTimeField;
    cdsAssetNOTES4Y: TStringField;
    cdsAssetISDEL: TIntegerField;
    cdsAssetID: TLargeintField;
    gvwMasterASSET_CODE: TcxGridDBBandedColumn;
    gvwMasterASSET_NAME: TcxGridDBBandedColumn;
    gvwMasterASSET_GROUP: TcxGridDBBandedColumn;
    gvwMasterDEPRECIATION_METHOD: TcxGridDBBandedColumn;
    gvwMasterDEPRECIATION_TABLE: TcxGridDBBandedColumn;
    gvwMasterPURCHASE_DATE: TcxGridDBBandedColumn;
    gvwMasterBUY_PRICE: TcxGridDBBandedColumn;
    gvwMasterSALVAGE: TcxGridDBBandedColumn;
    gvwMasterECONOMIC_LIFE: TcxGridDBBandedColumn;
    gvwMasterLOCATION: TcxGridDBBandedColumn;
    gvwMasterCALC_DATE: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPRECIATION: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPRECIATION_YTD: TcxGridDBBandedColumn;
    gvwMasterBOOK_VALUE: TcxGridDBBandedColumn;
    gvwMasterMONTHLY_DEPRECIATION: TcxGridDBBandedColumn;
    gvwMasterDISPOSED_DATE: TcxGridDBBandedColumn;
    gvwMasterASSET_GLACC: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPREC_GLACC: TcxGridDBBandedColumn;
    gvwMasterDEPREC_GLACC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsAssetHist: TNClientDataset;
    cdsAssetHistASSET_ID: TIntegerField;
    cdsAssetHistBYMONTH: TIntegerField;
    cdsAssetHistCALC_DATE: TDateField;
    cdsAssetHistASSET_GLACC: TIntegerField;
    cdsAssetHistACCUM_DEPREC_GLACC: TIntegerField;
    cdsAssetHistDEPREC_GLACC: TIntegerField;
    cdsAssetHistBUY_PRICE: TFloatField;
    cdsAssetHistSALVAGE: TFloatField;
    cdsAssetHistECONOMIC_LIFE: TIntegerField;
    cdsAssetHistMONTHLY_DEPREC: TFloatField;
    cdsAssetHistACCUM_DEPREC_YTD: TFloatField;
    cdsAssetHistACCUM_DEPREC: TFloatField;
    cdsAssetHistBOOK_VALUE: TFloatField;
    cdsAssetHistSTATUS: TStringField;
    cdsAssetHistMODDA: TDateTimeField;
    cdsAssetHistMODUI: TStringField;
    cdsAssetHistAPPDA: TDateTimeField;
    cdsAssetHistAPPUI: TStringField;
    cdsAssetHistUNDER4Y: TIntegerField;
    cdsAssetHistUNDER4YDA: TDateTimeField;
    cdsAssetHistNOTES4Y: TStringField;
    cdsAssetHistISDEL: TIntegerField;
    cdsAssetHistID: TLargeintField;
    cdsAssetSTATUS: TStringField;
    cdsAssetListSTATUS: TStringField;
    actViewDepreciationTable: TNAction;
    ViewDepreciationTable1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsAssetAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actViewDepreciationTableExecute(Sender: TObject);
    procedure cdsAssetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalcAssetHistory;
  public
    { Public declarations }
  end;

var
  frmFixedAssetList: TfrmFixedAssetList;

implementation

{$R *.dfm}

uses DataGlobal, FormFixedAsset, FormFixedAssetDepreciation;

procedure TfrmFixedAssetList.actViewDepreciationTableExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  cdsAssetHist.Close;
  cdsAssetHist.Params[0].AsInteger := cdsAssetListASSET_ID.AsInteger;
  cdsAssetHist.Open;

  oForm := TfrmFixedAssetDepreciation.Create(nil);
  Try
    oForm.ShowModal;
  Finally
    oForm.Free;
  End;
end;

procedure TfrmFixedAssetList.CalcAssetHistory;
var
  i, j, nMonth, nYear, byMonth, byYear: Integer;
  MonthlyDeprec, YearlyDeprec, AccumDeprec, AccumDeprecYTD, Cost, Salvage, DeprecRate, BookValue: Extended;
  ytdYear, ytdMonth, ytdDay: Word;
begin
  cdsAssetHist.Close;
  cdsAssetHist.Params[0].AsInteger := cdsAssetASSET_ID.AsInteger;
  cdsAssetHist.Open;

  if not cdsAssetHist.IsEmpty then
  begin
    while not cdsAssetHist.IsEmpty do
    begin
      cdsAssetHist.Delete;
    end;
  end;

  nMonth := cdsAssetECONOMIC_LIFE.AsInteger * 12;
  nYear := cdsAssetECONOMIC_LIFE.AsInteger;
  Cost := cdsAssetBUY_PRICE.AsFloat;
  Salvage := cdsAssetSALVAGE.AsFloat;
  AccumDeprec := 0;
  AccumDeprecYTD := 0;

  if cdsAssetDEPRECIATION_METHOD.AsInteger = 2 then //Straight Line Method
  begin
    MonthlyDeprec := (cdsAssetBUY_PRICE.AsFloat - cdsAssetSALVAGE.AsFloat) / nMonth;
    for i := 1 to nMonth do
    begin
      cdsAssetHist.Append;
      cdsAssetHistASSET_ID.AsInteger := cdsAssetASSET_ID.AsInteger;
      cdsAssetHistBYMONTH.AsInteger := i;
      cdsAssetHistCALC_DATE.AsDateTime := IncMonth(cdsAssetCALC_DATE.AsDateTime, i);
      cdsAssetHistASSET_GLACC.AsInteger := cdsAssetASSET_GLACC.AsInteger;
      cdsAssetHistACCUM_DEPREC_GLACC.AsInteger := cdsAssetACCUM_DEPREC_GLACC.AsInteger;
      cdsAssetHistDEPREC_GLACC.AsInteger := cdsAssetDEPREC_GLACC.AsInteger;
      cdsAssetHistBUY_PRICE.AsFloat := cdsAssetBUY_PRICE.AsFloat;
      cdsAssetHistSALVAGE.AsFloat := cdsAssetSALVAGE.AsFloat;
      cdsAssetHistECONOMIC_LIFE.AsInteger := cdsAssetECONOMIC_LIFE.AsInteger;
      cdsAssetHistMONTHLY_DEPREC.AsFloat := MonthlyDeprec;

      DecodeDate(cdsAssetHistCALC_DATE.AsDateTime, ytdYear, ytdMonth, ytdDay);
      if ytdMonth = 1 then
      begin
        AccumDeprecYTD := 0;
      end;

      AccumDeprecYTD := AccumDeprecYTD + MonthlyDeprec;
      AccumDeprec := AccumDeprec + MonthlyDeprec;
      cdsAssetHistACCUM_DEPREC_YTD.AsFloat := AccumDeprecYTD;
      cdsAssetHistACCUM_DEPREC.AsFloat := AccumDeprec;
      cdsAssetHistBOOK_VALUE.AsFloat := cdsAssetHistBUY_PRICE.AsFloat - cdsAssetHistACCUM_DEPREC.AsFloat;
      cdsAssetHistSTATUS.AsString := 'O';
      cdsAssetHistMODDA.AsDateTime := cdsAssetMODDA.AsDateTime;
      cdsAssetHistMODUI.AsString := cdsAssetMODUI.AsString;
      cdsAssetHist.Post;
    end;

    cdsAssetHist.ApplyUpdates(-1);
  end

  else if cdsAssetDEPRECIATION_METHOD.AsInteger = 3 then //Sum of the Years Digits Method
  begin
    byMonth := 0;
    for i := 1 to nYear do
    begin
      byYear := i;
      YearlyDeprec := SYDDepreciation(Cost, Salvage, nYear, byYear);
      MonthlyDeprec := YearlyDeprec / 12;

      for j := 1 to 12 do
      begin
        byMonth := byMonth + 1;
        cdsAssetHist.Append;
        cdsAssetHistASSET_ID.AsInteger := cdsAssetASSET_ID.AsInteger;
        cdsAssetHistBYMONTH.AsInteger := byMonth;
        cdsAssetHistCALC_DATE.AsDateTime := IncMonth(cdsAssetCALC_DATE.AsDateTime, byMonth);
        cdsAssetHistASSET_GLACC.AsInteger := cdsAssetASSET_GLACC.AsInteger;
        cdsAssetHistACCUM_DEPREC_GLACC.AsInteger := cdsAssetACCUM_DEPREC_GLACC.AsInteger;
        cdsAssetHistDEPREC_GLACC.AsInteger := cdsAssetDEPREC_GLACC.AsInteger;
        cdsAssetHistBUY_PRICE.AsFloat := cdsAssetBUY_PRICE.AsFloat;
        cdsAssetHistSALVAGE.AsFloat := cdsAssetSALVAGE.AsFloat;
        cdsAssetHistECONOMIC_LIFE.AsInteger := cdsAssetECONOMIC_LIFE.AsInteger;
        cdsAssetHistMONTHLY_DEPREC.AsFloat := MonthlyDeprec;

        DecodeDate(cdsAssetHistCALC_DATE.AsDateTime, ytdYear, ytdMonth, ytdDay);
        if ytdMonth = 1 then
        begin
          AccumDeprecYTD := 0;
        end;

        AccumDeprecYTD := AccumDeprecYTD + MonthlyDeprec;
        AccumDeprec := AccumDeprec + MonthlyDeprec;
        cdsAssetHistACCUM_DEPREC_YTD.AsFloat := AccumDeprecYTD;
        cdsAssetHistACCUM_DEPREC.AsFloat := AccumDeprec;
        cdsAssetHistBOOK_VALUE.AsFloat := cdsAssetHistBUY_PRICE.AsFloat - cdsAssetHistACCUM_DEPREC.AsFloat;
        cdsAssetHistSTATUS.AsString := 'O';
        cdsAssetHistMODDA.AsDateTime := cdsAssetMODDA.AsDateTime;
        cdsAssetHistMODUI.AsString := cdsAssetMODUI.AsString;
        cdsAssetHist.Post;
      end;
    end;

    cdsAssetHist.ApplyUpdates(-1);
  end

  else if cdsAssetDEPRECIATION_METHOD.AsInteger = 4 then //Declining Balance Method
  begin
    DeprecRate := 1 - Power(Salvage / Cost, 1 / nYear);
    BookValue := Cost;
    byMonth := 0;
    for i := 1 to nYear do
    begin
      byYear := i;
      YearlyDeprec := DeprecRate * BookValue;
      MonthlyDeprec := YearlyDeprec / 12;
      BookValue := BookValue - YearlyDeprec;

      for j := 1 to 12 do
      begin
        byMonth := byMonth + 1;
        cdsAssetHist.Append;
        cdsAssetHistASSET_ID.AsInteger := cdsAssetASSET_ID.AsInteger;
        cdsAssetHistBYMONTH.AsInteger := byMonth;
        cdsAssetHistCALC_DATE.AsDateTime := IncMonth(cdsAssetCALC_DATE.AsDateTime, byMonth);
        cdsAssetHistASSET_GLACC.AsInteger := cdsAssetASSET_GLACC.AsInteger;
        cdsAssetHistACCUM_DEPREC_GLACC.AsInteger := cdsAssetACCUM_DEPREC_GLACC.AsInteger;
        cdsAssetHistDEPREC_GLACC.AsInteger := cdsAssetDEPREC_GLACC.AsInteger;
        cdsAssetHistBUY_PRICE.AsFloat := cdsAssetBUY_PRICE.AsFloat;
        cdsAssetHistSALVAGE.AsFloat := cdsAssetSALVAGE.AsFloat;
        cdsAssetHistECONOMIC_LIFE.AsInteger := cdsAssetECONOMIC_LIFE.AsInteger;
        cdsAssetHistMONTHLY_DEPREC.AsFloat := MonthlyDeprec;

        DecodeDate(cdsAssetHistCALC_DATE.AsDateTime, ytdYear, ytdMonth, ytdDay);
        if ytdMonth = 1 then
        begin
          AccumDeprecYTD := 0;
        end;

        AccumDeprecYTD := AccumDeprecYTD + MonthlyDeprec;
        AccumDeprec := AccumDeprec + MonthlyDeprec;
        cdsAssetHistACCUM_DEPREC_YTD.AsFloat := AccumDeprecYTD;
        cdsAssetHistACCUM_DEPREC.AsFloat := AccumDeprec;
        cdsAssetHistBOOK_VALUE.AsFloat := cdsAssetHistBUY_PRICE.AsFloat - cdsAssetHistACCUM_DEPREC.AsFloat;
        cdsAssetHistSTATUS.AsString := 'O';
        cdsAssetHistMODDA.AsDateTime := cdsAssetMODDA.AsDateTime;
        cdsAssetHistMODUI.AsString := cdsAssetMODUI.AsString;
        cdsAssetHist.Post;
      end;
    end;

    cdsAssetHist.ApplyUpdates(-1);
  end

  else if cdsAssetDEPRECIATION_METHOD.AsInteger = 5 then //Double Declining Balance Method
  begin
    byMonth := 0;
    for i := 1 to nYear do
    begin
      byYear := i;
      YearlyDeprec := DoubleDecliningBalance(Cost, Salvage, nYear, byYear);
      MonthlyDeprec := YearlyDeprec / 12;

      for j := 1 to 12 do
      begin
        byMonth := byMonth + 1;
        cdsAssetHist.Append;
        cdsAssetHistASSET_ID.AsInteger := cdsAssetASSET_ID.AsInteger;
        cdsAssetHistBYMONTH.AsInteger := byMonth;
        cdsAssetHistCALC_DATE.AsDateTime := IncMonth(cdsAssetCALC_DATE.AsDateTime, byMonth);
        cdsAssetHistASSET_GLACC.AsInteger := cdsAssetASSET_GLACC.AsInteger;
        cdsAssetHistACCUM_DEPREC_GLACC.AsInteger := cdsAssetACCUM_DEPREC_GLACC.AsInteger;
        cdsAssetHistDEPREC_GLACC.AsInteger := cdsAssetDEPREC_GLACC.AsInteger;
        cdsAssetHistBUY_PRICE.AsFloat := cdsAssetBUY_PRICE.AsFloat;
        cdsAssetHistSALVAGE.AsFloat := cdsAssetSALVAGE.AsFloat;
        cdsAssetHistECONOMIC_LIFE.AsInteger := cdsAssetECONOMIC_LIFE.AsInteger;
        cdsAssetHistMONTHLY_DEPREC.AsFloat := MonthlyDeprec;

        DecodeDate(cdsAssetHistCALC_DATE.AsDateTime, ytdYear, ytdMonth, ytdDay);
        if ytdMonth = 1 then
        begin
          AccumDeprecYTD := 0;
        end;

        AccumDeprecYTD := AccumDeprecYTD + MonthlyDeprec;
        AccumDeprec := AccumDeprec + MonthlyDeprec;
        cdsAssetHistACCUM_DEPREC_YTD.AsFloat := AccumDeprecYTD;
        cdsAssetHistACCUM_DEPREC.AsFloat := AccumDeprec;
        cdsAssetHistBOOK_VALUE.AsFloat := cdsAssetHistBUY_PRICE.AsFloat - cdsAssetHistACCUM_DEPREC.AsFloat;
        cdsAssetHistSTATUS.AsString := 'O';
        cdsAssetHistMODDA.AsDateTime := cdsAssetMODDA.AsDateTime;
        cdsAssetHistMODUI.AsString := cdsAssetMODUI.AsString;
        cdsAssetHist.Post;
      end;
    end;

    cdsAssetHist.ApplyUpdates(-1);
  end

  else if cdsAssetDEPRECIATION_METHOD.AsInteger = 6 then //From Depreciation Table
  begin
    byMonth := 0;
    with dmGlobal.IntDataLookup do
    begin
      cdsLuAssetDeprecTableValue.Close;
      cdsLuAssetDeprecTableValue.Params[0].AsInteger := cdsAssetDEPRECIATION_TABLE.AsInteger;
      cdsLuAssetDeprecTableValue.Open;

      if cdsLuAssetDeprecTableValue.RecordCount <> nYear then
      begin
        Exit;
      end;

      for i := 1 to nYear do
      begin
        byYear := i;
        if cdsLuAssetDeprecTableValue.Locate('BYYEAR', byYear, []) then
        begin
          YearlyDeprec := cdsLuAssetDeprecTableValueDEPRECIATION_PCT.AsFloat * (Cost - Salvage) / 100;
          MonthlyDeprec := YearlyDeprec / 12;
        end
        else
          Continue;

        for j := 1 to 12 do
        begin
          byMonth := ((byYear - 1) * 12) + j;
          cdsAssetHist.Append;
          cdsAssetHistASSET_ID.AsInteger := cdsAssetASSET_ID.AsInteger;
          cdsAssetHistBYMONTH.AsInteger := byMonth;
          cdsAssetHistCALC_DATE.AsDateTime := IncMonth(cdsAssetCALC_DATE.AsDateTime, byMonth);
          cdsAssetHistASSET_GLACC.AsInteger := cdsAssetASSET_GLACC.AsInteger;
          cdsAssetHistACCUM_DEPREC_GLACC.AsInteger := cdsAssetACCUM_DEPREC_GLACC.AsInteger;
          cdsAssetHistDEPREC_GLACC.AsInteger := cdsAssetDEPREC_GLACC.AsInteger;
          cdsAssetHistBUY_PRICE.AsFloat := cdsAssetBUY_PRICE.AsFloat;
          cdsAssetHistSALVAGE.AsFloat := cdsAssetSALVAGE.AsFloat;
          cdsAssetHistECONOMIC_LIFE.AsInteger := cdsAssetECONOMIC_LIFE.AsInteger;
          cdsAssetHistMONTHLY_DEPREC.AsFloat := MonthlyDeprec;

          DecodeDate(cdsAssetHistCALC_DATE.AsDateTime, ytdYear, ytdMonth, ytdDay);
          if ytdMonth = 1 then
          begin
            AccumDeprecYTD := 0;
          end;

          AccumDeprecYTD := AccumDeprecYTD + MonthlyDeprec;
          AccumDeprec := AccumDeprec + MonthlyDeprec;
          cdsAssetHistACCUM_DEPREC_YTD.AsFloat := AccumDeprecYTD;
          cdsAssetHistACCUM_DEPREC.AsFloat := AccumDeprec;
          cdsAssetHistBOOK_VALUE.AsFloat := cdsAssetHistBUY_PRICE.AsFloat - cdsAssetHistACCUM_DEPREC.AsFloat;
          cdsAssetHistSTATUS.AsString := 'O';
          cdsAssetHistMODDA.AsDateTime := cdsAssetMODDA.AsDateTime;
          cdsAssetHistMODUI.AsString := cdsAssetMODUI.AsString;
          cdsAssetHist.Post;
        end;
      end;
    end;

    cdsAssetHist.ApplyUpdates(-1);
  end;
end;

procedure TfrmFixedAssetList.cdsAssetAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  CalcAssetHistory;
end;

procedure TfrmFixedAssetList.cdsAssetNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAssetASSET_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ASSET');
end;

procedure TfrmFixedAssetList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmFixedAsset;
end;

procedure TfrmFixedAssetList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuGLAccount.Close;
    cdsLuGLAccount.Open;

    cdsLuAssetGroup.Close;
    cdsLuAssetGroup.Open;

    cdsLuAssetDeprecTable.Close;
    cdsLuAssetDeprecTable.Open;
  end;

  cdsAssetList.Close;
  cdsAssetList.Open;
end;

Initialization
  RegisterClass(TfrmFixedAssetList);

end.
