unit FormInstrumentBondList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxImageComboBox, cxProgressBar, cxBarEditItem, cxContainer,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, NReportRPC, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, NReportClient, DateUtils,
  System.Actions, System.ImageList;

type
  TfrmInstrumentBondsList = class(TfrmBrowseData)
    cdsInstrumentBondList: TNClientDataset;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterLONGNAME: TcxGridDBBandedColumn;
    gvwMasterISSUERNAME: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMasterISINDATE: TcxGridDBBandedColumn;
    gvwMasterMARGIN: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterCATEGORY: TcxGridDBBandedColumn;
    gvwMasterMATURITYDATE: TcxGridDBBandedColumn;
    gvwMasterRATING: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterEFFECTIVEDATE: TcxGridDBBandedColumn;
    gvwMasterOFFERING_PERIODBEG: TcxGridDBBandedColumn;
    gvwMasterOFFERING_PERIODEND: TcxGridDBBandedColumn;
    gvwMasterISSUEDATE: TcxGridDBBandedColumn;
    gvwMasterNO_OFCERTIFICATES: TcxGridDBBandedColumn;
    gvwMasterLEAD_UNDERWRITER: TcxGridDBBandedColumn;
    gvwMasterSELLING_AGENT: TcxGridDBBandedColumn;
    gvwMasterTRUSTEE: TcxGridDBBandedColumn;
    gvwMasterCALCULATE_DAYS_METHOD: TcxGridDBBandedColumn;
    gvwMasterCOUPON_IN_YEAR: TcxGridDBBandedColumn;
    gvwMasterCOMMONCODE: TcxGridDBBandedColumn;
    gvwMasterDAYSOFYEAR: TcxGridDBBandedColumn;
    gvwMasterREGIONALBONDS: TcxGridDBBandedColumn;
    gvwMasterCOUNTINGDAYS_METHOD: TcxGridDBBandedColumn;
    gvwMasterACCRUEDDAYS_METHOD: TcxGridDBBandedColumn;
    gvwMasterDAYSPERYEAR_METHOD: TcxGridDBBandedColumn;
    gvwMasterACCRUEDTYPE: TcxGridDBBandedColumn;
    gvwMasterDECDIGIT: TcxGridDBBandedColumn;
    cdsInstrumentBond: TNClientDataset;
    cdsInstrumentBondINSTRUMENT_ID: TLargeintField;
    cdsInstrumentBondINSTRUMENT_CODE: TStringField;
    cdsInstrumentBondLOCALCODE: TStringField;
    cdsInstrumentBondMARKETCODE: TStringField;
    cdsInstrumentBondINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentBondSHORTNAME: TStringField;
    cdsInstrumentBondLONGNAME: TStringField;
    cdsInstrumentBondISSUERNAME: TStringField;
    cdsInstrumentBondCCY: TStringField;
    cdsInstrumentBondISINCODE: TStringField;
    cdsInstrumentBondISINDATE: TDateTimeField;
    cdsInstrumentBondMARGIN: TIntegerField;
    cdsInstrumentBondSTATUS: TStringField;
    cdsInstrumentBondDELISTINGDATE: TDateTimeField;
    cdsInstrumentBondLISTINGDATE: TDateTimeField;
    cdsInstrumentBondLASTCLSPRICE: TFloatField;
    cdsInstrumentBondLASTCPPRICEDATE: TDateField;
    cdsInstrumentBondSECTOR: TStringField;
    cdsInstrumentBondMODDA: TDateTimeField;
    cdsInstrumentBondMODUI: TStringField;
    cdsInstrumentBondAPPDA: TDateTimeField;
    cdsInstrumentBondAPPUI: TStringField;
    cdsInstrumentBondISDEL: TIntegerField;
    cdsInstrumentBondID: TLargeintField;
    cdsInstrumentBondCATEGORY: TStringField;
    cdsInstrumentBondMATURITYDATE: TDateTimeField;
    cdsInstrumentBondRATING: TStringField;
    cdsInstrumentBondREMARKS: TStringField;
    cdsInstrumentBondEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentBondOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentBondOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentBondISSUEDATE: TDateTimeField;
    cdsInstrumentBondNO_OFCERTIFICATES: TStringField;
    cdsInstrumentBondLEAD_UNDERWRITER: TStringField;
    cdsInstrumentBondSELLING_AGENT: TStringField;
    cdsInstrumentBondTRUSTEE: TStringField;
    cdsInstrumentBondCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentBondCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentBondCOMMONCODE: TStringField;
    cdsInstrumentBondDAYSOFYEAR: TIntegerField;
    cdsInstrumentBondREGIONALBONDS: TIntegerField;
    cdsInstrumentBondCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentBondACCRUEDDAYS_METHOD: TIntegerField;
    cdsInstrumentBondDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentBondACCRUEDTYPE: TStringField;
    cdsInstrumentBondDECDIGIT: TIntegerField;
    cdsCouponPayment: TNClientDataset;
    cdsInstrumentBondqryCouponPayment: TDataSetField;
    cdsCouponPaymentINSTRUMENT_ID: TLargeintField;
    cdsCouponPaymentCOUPONPAYMENTID: TIntegerField;
    cdsCouponPaymentCOUPONDATE: TDateTimeField;
    cdsCouponPaymentINTERESTRATE: TFloatField;
    cdsCouponPaymentRECORDINGDATE: TDateTimeField;
    cdsCouponPaymentMODDA: TDateTimeField;
    cdsCouponPaymentMODUI: TStringField;
    cdsCouponPaymentAPPDA: TDateTimeField;
    cdsCouponPaymentAPPUI: TStringField;
    cdsCouponPaymentISDEL: TIntegerField;
    cdsCouponPaymentID: TLargeintField;
    cdsInstrumentBondListINSTRUMENT_ID: TLargeintField;
    cdsInstrumentBondListINSTRUMENT_CODE: TStringField;
    cdsInstrumentBondListLOCALCODE: TStringField;
    cdsInstrumentBondListMARKETCODE: TStringField;
    cdsInstrumentBondListINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentBondListSHORTNAME: TStringField;
    cdsInstrumentBondListLONGNAME: TStringField;
    cdsInstrumentBondListISSUERNAME: TStringField;
    cdsInstrumentBondListCCY: TStringField;
    cdsInstrumentBondListISINCODE: TStringField;
    cdsInstrumentBondListISINDATE: TDateTimeField;
    cdsInstrumentBondListMARGIN: TIntegerField;
    cdsInstrumentBondListSTATUS: TStringField;
    cdsInstrumentBondListDELISTINGDATE: TDateTimeField;
    cdsInstrumentBondListLISTINGDATE: TDateTimeField;
    cdsInstrumentBondListLASTCLSPRICE: TFloatField;
    cdsInstrumentBondListLASTCPPRICEDATE: TDateField;
    cdsInstrumentBondListSECTOR: TStringField;
    cdsInstrumentBondListMODDA: TDateTimeField;
    cdsInstrumentBondListMODUI: TStringField;
    cdsInstrumentBondListAPPDA: TDateTimeField;
    cdsInstrumentBondListAPPUI: TStringField;
    cdsInstrumentBondListISDEL: TIntegerField;
    cdsInstrumentBondListID: TLargeintField;
    cdsInstrumentBondListCATEGORY: TStringField;
    cdsInstrumentBondListMATURITYDATE: TDateTimeField;
    cdsInstrumentBondListRATING: TStringField;
    cdsInstrumentBondListREMARKS: TStringField;
    cdsInstrumentBondListEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentBondListOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentBondListOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentBondListISSUEDATE: TDateTimeField;
    cdsInstrumentBondListNO_OFCERTIFICATES: TStringField;
    cdsInstrumentBondListLEAD_UNDERWRITER: TStringField;
    cdsInstrumentBondListSELLING_AGENT: TStringField;
    cdsInstrumentBondListTRUSTEE: TStringField;
    cdsInstrumentBondListCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentBondListCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentBondListCOMMONCODE: TStringField;
    cdsInstrumentBondListDAYSOFYEAR: TIntegerField;
    cdsInstrumentBondListREGIONALBONDS: TIntegerField;
    cdsInstrumentBondListCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentBondListACCRUEDDAYS_METHOD: TIntegerField;
    cdsInstrumentBondListDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentBondListACCRUEDTYPE: TStringField;
    cdsInstrumentBondListDECDIGIT: TIntegerField;
    actImportData: TNAction;
    dxBarButton2: TdxBarButton;
    odFileImport: TOpenDialog;
    cdsImportDataInstrument: TNClientDataset;
    cdsImportDataCoupon: TNClientDataset;
    cdsImportDataCouponINSTRUMENT_ID: TLargeintField;
    cdsImportDataCouponCOUPONDATE: TDateTimeField;
    cdsImportDataCouponINTERESTRATE: TFloatField;
    cdsImportDataCouponRECORDINGDATE: TDateTimeField;
    cdsImportDataCouponMODDA: TDateTimeField;
    cdsImportDataCouponMODUI: TStringField;
    cdsImportDataCouponAPPDA: TDateTimeField;
    cdsImportDataCouponAPPUI: TStringField;
    cdsImportDataCouponISDEL: TIntegerField;
    cdsImportDataCouponID: TLargeintField;
    cdsImportDataInstrumentINSTRUMENT_ID: TLargeintField;
    cdsImportDataInstrumentINSTRUMENT_CODE: TStringField;
    cdsImportDataInstrumentLOCALCODE: TStringField;
    cdsImportDataInstrumentMARKETCODE: TStringField;
    cdsImportDataInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsImportDataInstrumentSHORTNAME: TStringField;
    cdsImportDataInstrumentLONGNAME: TStringField;
    cdsImportDataInstrumentISSUERNAME: TStringField;
    cdsImportDataInstrumentCCY: TStringField;
    cdsImportDataInstrumentISINCODE: TStringField;
    cdsImportDataInstrumentISINDATE: TDateTimeField;
    cdsImportDataInstrumentMARGIN: TIntegerField;
    cdsImportDataInstrumentSTATUS: TStringField;
    cdsImportDataInstrumentDELISTINGDATE: TDateTimeField;
    cdsImportDataInstrumentLISTINGDATE: TDateTimeField;
    cdsImportDataInstrumentLASTCLSPRICE: TFloatField;
    cdsImportDataInstrumentLASTCPPRICEDATE: TDateField;
    cdsImportDataInstrumentSECTOR: TStringField;
    cdsImportDataInstrumentMODDA: TDateTimeField;
    cdsImportDataInstrumentMODUI: TStringField;
    cdsImportDataInstrumentAPPDA: TDateTimeField;
    cdsImportDataInstrumentAPPUI: TStringField;
    cdsImportDataInstrumentISDEL: TIntegerField;
    cdsImportDataInstrumentID: TLargeintField;
    cdsImportDataInstrumentCATEGORY: TStringField;
    cdsImportDataInstrumentMATURITYDATE: TDateTimeField;
    cdsImportDataInstrumentRATING: TStringField;
    cdsImportDataInstrumentREMARKS: TStringField;
    cdsImportDataInstrumentEFFECTIVEDATE: TDateTimeField;
    cdsImportDataInstrumentOFFERING_PERIODBEG: TDateTimeField;
    cdsImportDataInstrumentOFFERING_PERIODEND: TDateTimeField;
    cdsImportDataInstrumentISSUEDATE: TDateTimeField;
    cdsImportDataInstrumentNO_OFCERTIFICATES: TStringField;
    cdsImportDataInstrumentLEAD_UNDERWRITER: TStringField;
    cdsImportDataInstrumentSELLING_AGENT: TStringField;
    cdsImportDataInstrumentTRUSTEE: TStringField;
    cdsImportDataInstrumentCALCULATE_DAYS_METHOD: TIntegerField;
    cdsImportDataInstrumentCOUPON_IN_YEAR: TIntegerField;
    cdsImportDataInstrumentCOMMONCODE: TStringField;
    cdsImportDataInstrumentDAYSOFYEAR: TIntegerField;
    cdsImportDataInstrumentREGIONALBONDS: TIntegerField;
    cdsImportDataInstrumentCOUNTINGDAYS_METHOD: TIntegerField;
    cdsImportDataInstrumentACCRUEDDAYS_METHOD: TIntegerField;
    cdsImportDataInstrumentDAYSPERYEAR_METHOD: TIntegerField;
    cdsImportDataInstrumentACCRUEDTYPE: TStringField;
    cdsImportDataInstrumentDECDIGIT: TIntegerField;
    pbImportData: TPanel;
    pgInstrument: TcxProgressBar;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterDELISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterLISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterLASTCLSPRICE: TcxGridDBBandedColumn;
    gvwMasterLASTCPPRICEDATE: TcxGridDBBandedColumn;
    gvwMasterSECTOR: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsInstrumentBondBeforePost(DataSet: TDataSet);
    procedure actImportDataExecute(Sender: TObject);
    procedure cdsImportDataInstrumentBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstrumentBondsList: TfrmInstrumentBondsList;

implementation

{$R *.dfm}

uses DataGlobal, FormInstrumentBond, DataLookup;

procedure TfrmInstrumentBondsList.actImportDataExecute(Sender: TObject);
  function GetCalcDaysMethod(ACalcMethod: string): Integer;
  begin
    if ACalcMethod = '30/360' then
      Result := 0
    else if LowerCase(ACalcMethod) = 'actual/actual' then
      Result := 1
    else if LowerCase(ACalcMethod) = 'actual/360' then
      Result := 2
    else if LowerCase(ACalcMethod) = 'actual/365' then
      Result := 3
  end;

var
  sFileName: string;
  oFileList,
  oBonds,
  oFailList: TStringList;
  i, j, x: Integer;
  iSeq: Largeint;
  sFreq,
  sDayCount,
  sDayMethod,
  sYearsMethod,
  sCouponInYears,
  MarketCode: string;
  iCalcDaysMethod,
  iCountDaysMethod: Integer;
  dCouponDate,
  dXCouponDate: TDateTime;
  sDate, sMonth, sYear,
  sDate1, sMonth1, sYear1,
  sDate2, sMonth2, sYear2,
  sDate3, sMonth3, sYear3,
  sDate4, sMonth4, sYear4: word;
  iIncMonth: integer;
  sTmpDate: word;
  dGetLastDate: TDateTime;
begin
  inherited;
  if odFileImport.Execute then
    sFileName := odFileImport.FileName;

  if sFileName <> '' then
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    oFailList := TStringList.Create;

    pgInstrument.Visible        := True;
    pgInstrument.Properties.Max := oFileList.Count;
    pgInstrument.Position       := 0;

    if not cdsInstrumentBond.Active then
    begin
      cdsImportDataInstrument.Close;
      cdsImportDataInstrument.Open;
    end;

    cdsImportDataCoupon.Close;
    cdsImportDataCoupon.Params[0].AsInteger := 0;
    cdsImportDataCoupon.Open;

    pbImportData.Visible := True;
    pgInstrument.Properties.Text := 'Please wait while reading data from the source...';
    Application.ProcessMessages;

    j := 0;
    for i := 1 to oFileList.Count -1 do
    begin
      try
        oBonds := TStringList.Create;
        oBonds.StrictDelimiter := True;
        oBonds.Delimiter       := '|';
        oBonds.DelimitedText   := oFileList.Strings[i];

        iSeq      := dmGlobal.RemoteServer.GetSeq('TBL_B_INSTRUMENT');
        sFreq     := oBonds.Strings[11];
        sDayCount := oBonds.Strings[12];

        if sFreq = 'SEMI-ANNUAL' then
          sCouponInYears := '6'
        else if sFreq = 'MONTHLY' then
          sCouponInYears := '1'
        else
          sCouponInYears := dmGlobal.GetStringDelimiter(sFreq, ' MONTHS');
        iIncMonth := StrToIntDef(sCouponInYears, 0);

        iCalcDaysMethod := GetCalcDaysMethod(sDayCount);

        sDayMethod   := dmGlobal.GetStringDelimiter(sDayCount, '/');
        sYearsMethod := sDayCount;

  //      if sDayMethod = '30' then
  //        iCalcDaysMethod := 0
  //      else
  //        iCalcDaysMethod := 1;

        if sYearsMethod = '360' then
          iCountDaysMethod := 1
        else
          iCountDaysMethod := 2;

        if oBonds.Strings[6] = '' then
          MarketCode := 'IDX'
        else
          MarketCode := oBonds.Strings[6];

        if (oBonds.Strings[0] <> '') and (oBonds.Strings[16] <> '') and (oBonds.Strings[5] <> '') then
        begin
          if oBonds.Strings[0] = 'BNGA02SB' then
            pgInstrument.Properties.Text := 'Please wait, Uploading data is in progress...';

          cdsImportDataInstrument.Append;
          cdsImportDataInstrumentINSTRUMENT_ID.AsLargeInt        := iSeq;
          cdsImportDataInstrumentLOCALCODE.AsString              := oBonds.Strings[0];
          cdsImportDataInstrumentSHORTNAME.AsString              := oBonds.Strings[1];
          cdsImportDataInstrumentLONGNAME.AsString               := oBonds.Strings[1];
          cdsImportDataInstrumentISSUERNAME.AsString             := oBonds.Strings[3];
          cdsImportDataInstrumentISINCODE.AsString               := oBonds.Strings[4];
          cdsImportDataInstrumentLISTINGDATE.AsDateTime          := VarToDateTime(oBonds.Strings[5]);
          cdsImportDataInstrumentISSUEDATE.AsDateTime            := VarToDateTime(oBonds.Strings[5]);
          cdsImportDataInstrumentINSTRUMENT_TYPE_CODE.AsString   := 'B';
          cdsImportDataInstrumentMARKETCODE.AsString             := MarketCode;
          cdsImportDataInstrumentSTATUS.AsString                 := Copy(oBonds.Strings[7], 1, 1);
          cdsImportDataInstrumentCOUPON_IN_YEAR.AsInteger        := 12 div iIncMonth; //-> 12 menyatakan bulan dalam setahun, ByHeCoLS
          cdsImportDataInstrumentCALCULATE_DAYS_METHOD.AsInteger := iCalcDaysMethod;
          cdsImportDataInstrumentCOUNTINGDAYS_METHOD.AsInteger   := iCountDaysMethod;
          cdsImportDataInstrumentCCY.AsString                    := oBonds.Strings[13];
          cdsImportDataInstrumentMATURITYDATE.AsDateTime         := VarToDateTime(oBonds.Strings[16]);
          cdsImportDataInstrumentINSTRUMENT_CODE.AsString        := oBonds.Strings[0]+'.'+MarketCode;
          cdsImportDataInstrument.Post;

          if cdsImportDataInstrumentLOCALCODE.AsString = 'BNII01ACN2' then
            sTmpDate := MonthDays[IsLeapYear(2000)][2];

          DecodeDate(cdsImportDataInstrumentMATURITYDATE.AsDateTime, sYear, sMonth, sDate);
          DecodeDate(cdsImportDataInstrumentLISTINGDATE.AsDateTime, sYear1, sMonth1, sDate1);

          if sMonth < 12 then Inc(sMonth);
          if sMonth1 < 12 then Inc(sMonth1);

          sTmpDate := MonthDays[IsLeapYear(sYear1)][sMonth1];
          if sTmpDate < sDate then
            dCouponDate := EncodeDate(sYear1, sMonth1, sTmpDate)
          else
            dCouponDate := EncodeDate(sYear1, sMonth1, sDate);

//          dCouponDate  := IncMonth(dCouponDate, StrToIntDef(sCouponInYears, 0));
          repeat
            cdsImportDataCoupon.Append;
            cdsImportDataCouponINSTRUMENT_ID.AsLargeInt := cdsImportDataInstrumentINSTRUMENT_ID.AsLargeInt;
            cdsImportDataCouponCOUPONDATE.AsDateTime    := dCouponDate;
            cdsImportDataCouponINTERESTRATE.AsFloat     := StrToFloat(oBonds.Strings[9]);
            cdsImportDataCouponRECORDINGDATE.AsDateTime := dCouponDate - 5;
            cdsImportDataCoupon.Post;

            dXCouponDate := dCouponDate;
            dCouponDate  := IncMonth(dCouponDate, StrToIntDef(sCouponInYears, 0));

            DecodeDate(dXCouponDate, sYear2, sMonth2, sDate2);
            if sDate > sDate2 then
            begin
              DecodeDate(dCouponDate, sYear3, sMonth3, sDate3);

              dGetLastDate := EndOfAMonth(sYear3, sMonth3);
              DecodeDate(dGetLastDate, sYear4, sMonth4, sDate4);

              if sMonth3 <> 2 then
              begin
                if sDate3 < sDate4 then
                begin
                  DecodeDate(dCouponDate, sYear2, sMonth2, sDate2);
                  dCouponDate := EncodeDate(sYear2, sMonth2, sDate);
                end;
              end;

            end;

          until dXCouponDate >= cdsImportDataInstrumentMATURITYDATE.AsDateTime;

        end
        else
        begin
          inc(j);
          oFailList.Add(oFileList.Strings[i]);
        end;

        pgInstrument.Position := i;
        Application.ProcessMessages;
        oBonds.Free;
      except

      end;
    end;

    pgInstrument.Properties.Text := 'Please wait, Uploading data is in progress...';
    Application.ProcessMessages;

    oFileList.Free;
    dmGlobal.RemoteServer.StartTransaction;
    cdsImportDataInstrument.ApplyUpdates(-1);
    cdsImportDataCoupon.ApplyUpdates(-1);
    dmGlobal.RemoteServer.CommitTransaction;

    if MessageDlg(IntToStr(i -1 - j)+' datas bonds has been successfully imported and  '+#13+IntToStr(j)+' datas bonds has been failed'+
          'Save fail list ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      if SaveDlg.Execute then
        oFailList.SaveToFile(SaveDlg.FileName);
    end;

    FreeAndNil(oFailList);
    pbImportData.Visible := False;
    pgInstrument.Visible := False;

    actRefresh.Execute;
  end;
end;

procedure TfrmInstrumentBondsList.cdsImportDataInstrumentBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsImportDataInstrumentMODUI.AsString   := dmGlobal.UserID;
  cdsImportDataInstrumentMODDA.AsDateTime := Now;
end;

procedure TfrmInstrumentBondsList.cdsInstrumentBondBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsInstrumentBondINSTRUMENT_TYPE_CODE.AsString := 'B';
  cdsInstrumentBondMODUI.AsString                := dmGlobal.UserID;
  cdsInstrumentBondMODDA.AsDateTime              := Now;
end;

procedure TfrmInstrumentBondsList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInstrumentBond;
end;

procedure TfrmInstrumentBondsList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsInstrumentBondList.Close;
  cdsInstrumentBondList.Open;

  dmGlobal.IntDataLookup.luCCYOn;
  dmGlobal.IntDataLookup.luMarketOn;
end;

Initialization
  RegisterClass(TfrmInstrumentBondsList);

end.
