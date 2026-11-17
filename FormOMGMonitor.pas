unit FormOMGMonitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics, cxControls,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  Data.DB, cxDBData, NDatasetContainer, NDatasetAction, Vcl.ActnList, Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxPCdxBarPopupMenu,
  cxGridDBTableView, cxPC, cxSplitter, dxLayoutContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  NReportRPC, frxClass, frxDBSet, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxPropertiesStore, dxBar, cxClasses, dxPSCore, dxPScxCommon, dxBarBuiltInMenu,
  System.Actions, System.ImageList, System.DateUtils, dxDateRanges,
  dxScrollbarAnnotations
  {$IFDEF VER280}
  , System.Actions, dxBarBuiltInMenu, AdvMemo
  {$ENDIF}
  ;

type
  TfrmOMGMonitor = class(TfrmBrowseSingle)
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    dtTransFrom: TcxDateEdit;
    cxButton4: TcxButton;
    dtTransTo: TcxDateEdit;
    lblPendingAllocation: TcxLabel;
    lblLastUpdate: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    LayoutlblPendingAllocation: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    gvwAlloc: TcxGridDBBandedTableView;
    gvwAllocCTMTRADEDETID: TcxGridDBBandedColumn;
    gvwAllocACCNO: TcxGridDBBandedColumn;
    gvwAllocACCNAME: TcxGridDBBandedColumn;
    gvwAllocAQTY: TcxGridDBBandedColumn;
    gvwAllocAPRICE: TcxGridDBBandedColumn;
    gvwAllocAVALUE: TcxGridDBBandedColumn;
    gvwAllocCOMMVALUE: TcxGridDBBandedColumn;
    gvwAllocALLOCAMT: TcxGridDBBandedColumn;
    gvwAllocEXREFFCODE: TcxGridDBBandedColumn;
    gvwAllocLOCALCODE: TcxGridDBBandedColumn;
    gvwAllocMOORDID: TcxGridDBBandedColumn;
    gvwDetailFee: TcxGridDBBandedTableView;
    gvwDetailFeeOMGFEETYPE: TcxGridDBBandedColumn;
    gvwDetailFeeLOCFEETYPE: TcxGridDBBandedColumn;
    gvwDetailFeeOMGFEEAMT: TcxGridDBBandedColumn;
    gvwDetailFeeLOCFEEAMT: TcxGridDBBandedColumn;
    gvwAllocDet: TcxGridDBTableView;
    gvwAllocDetCTMTRADEDETID: TcxGridDBColumn;
    gvwAllocDetOMGFEETYPE: TcxGridDBColumn;
    gvwAllocDetOMGFEEAMT: TcxGridDBColumn;
    gvwAllocDetLOCFEETYPE: TcxGridDBColumn;
    gvwAllocDetLOCFEEAMT: TcxGridDBColumn;
    gvwAllocDetDIFF: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    cdsOMGListProcess: TNClientDataset;
    actRefreshData: TNAction;
    cdsOMGListProcessTRDID: TLargeintField;
    cdsOMGListProcessTRDDATE: TDateField;
    cdsOMGListProcessSETTDATE: TDateField;
    cdsOMGListProcessACCNO: TStringField;
    cdsOMGListProcessENTNAME: TStringField;
    cdsOMGListProcessOMNIBUSTRADE: TStringField;
    cdsOMGListProcessOMGE_CONFIRM: TStringField;
    cdsOMGListProcessENTTCODE: TStringField;
    cdsOMGListProcessTRDVALUE: TFloatField;
    cdsOMGListProcessNETAMOUNT: TFloatField;
    cdsOMGListProcessOMGSTATUS: TStringField;
    cdsOMGListProcessBS: TStringField;
    cdsOMGListProcessEXREFFCODE: TStringField;
    cdsOMGListProcessALERT: TStringField;
    cdsOMGListProcessISINCODE: TStringField;
    cdsOMGListProcessLONGNAME: TStringField;
    cdsOMGListProcessLOCALCODE: TStringField;
    cdsOMGListProcessOMGVERSION: TIntegerField;
    cdsOMGListProcessMODUI: TStringField;
    cdsOMGListProcessREMARKS: TStringField;
    gvwBrowseTRDID: TcxGridDBBandedColumn;
    gvwBrowseTRDDATE: TcxGridDBBandedColumn;
    gvwBrowseSETTDATE: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseENTNAME: TcxGridDBBandedColumn;
    gvwBrowseENTTCODE: TcxGridDBBandedColumn;
    gvwBrowseTRDVALUE: TcxGridDBBandedColumn;
    gvwBrowseNETAMOUNT: TcxGridDBBandedColumn;
    gvwBrowseOMGSTATUS: TcxGridDBBandedColumn;
    gvwBrowseSTATUS: TcxGridDBBandedColumn;
    gvwBrowseBS: TcxGridDBBandedColumn;
    gvwBrowseEXREFFCODE: TcxGridDBBandedColumn;
    gvwBrowseLONGNAME: TcxGridDBBandedColumn;
    gvwBrowseLOCALCODE: TcxGridDBBandedColumn;
    gvwBrowseOMGVERSION: TcxGridDBBandedColumn;
    gvwBrowseMODUI: TcxGridDBBandedColumn;
    gvwBrowseREMARKS: TcxGridDBBandedColumn;
    cdsOMGListProcessCOMMAMOUNT: TFloatField;
    gvwBrowseCOMMAMOUNT: TcxGridDBBandedColumn;
    cdsOMGAllocTemp: TNClientDataset;
    cdsOMGAllocTempCTMTRADEDETID: TStringField;
    cdsOMGAllocTempACCNO: TStringField;
    cdsOMGAllocTempQTY: TFloatField;
    dsAlloc: TDataSource;
    cdsOMGAlloc: TNClientDataset;
    cdsOMGListProcessqryOMGAlloc: TDataSetField;
    cdsOMGAllocSEQID: TIntegerField;
    cdsOMGAllocACCNO: TStringField;
    cdsOMGAllocACCNAME: TStringField;
    cdsOMGAllocAQTY: TFloatField;
    cdsOMGAllocAPRICE: TFloatField;
    cdsOMGAllocAVALUE: TFloatField;
    cdsOMGAllocALLOCAMT: TFloatField;
    cdsOMGAllocOMGEXREFFCODE: TStringField;
    cdsOMGAllocLOCALCODE: TStringField;
    cdsOMGAllocLONGNAME: TStringField;
    cdsOMGAllocCTMTRADEDETID: TStringField;
    cdsOMGAllocALLOCONID: TLargeintField;
    dsAllocCompare: TDataSource;
    cdsOMGAllocComp: TNClientDataset;
    cdsOMGAllocCompCONID: TStringField;
    cdsOMGAllocCompCTMTRADEDETID: TStringField;
    cdsOMGAllocCompSEQID: TFloatField;
    cdsOMGAllocCompOMGFEETYPE: TStringField;
    cdsOMGAllocCompOMGFEEAMT: TFloatField;
    cdsOMGAllocCompLOCFEETYPE: TStringField;
    cdsOMGAllocCompLOCFEEAMT: TFloatField;
    cdsOMGAllocCompDIFF: TBooleanField;
    ReportContainer: TNReportContainer;
    cdsROrder: TNClientDataset;
    cdsROrderAlloc: TNClientDataset;
    cdsROrderFee: TNClientDataset;
    dbOrder: TfrxDBDataset;
    dbOrderAlloc: TfrxDBDataset;
    dbOrderFee: TfrxDBDataset;
    cdsROrderqryROrderAlloc: TDataSetField;
    cdsROrderqryROrderFee: TDataSetField;
    cdsROrderAllocID: TLargeintField;
    frxReport1: TfrxReport;
    actGenerateBlock: TNAction;
    actGenerateContract: TNAction;
    cdsOMGSSI: TNClientDataset;
    cdsOMGListProcessTRDQTY: TFloatField;
    cdsOMGListProcessTRDPRICE: TFloatField;
    cdsOMGSSISourceIndicator: TStringField;
    cdsOMGSSIAlertCountryCode: TStringField;
    cdsOMGSSIAlertMethodType: TStringField;
    cdsOMGSSIAlertSecurityType: TStringField;
    cdsOMGSSIAlertSettModelName: TStringField;
    cdsOMGSSISettInstProcNarrative: TStringField;
    cdsOMGOrdFee: TNClientDataset;
    cdsOMGOrdFeeCONID: TLargeintField;
    cdsOMGOrdFeeSTOCKCODE: TStringField;
    cdsOMGOrdFeeBS: TStringField;
    cdsOMGOrdFeeCHGR: TFloatField;
    cdsOMGOrdFeeBFEE: TFloatField;
    cdsOMGOrdFeeVAT: TFloatField;
    cdsOMGOrdFeeWHT: TFloatField;
    cdsOMGOrdFeeSELLTAX: TFloatField;
    cdsOMGAllocTOTAL_CHARGES: TFloatField;
    cdsOMGListProcessSTATUS: TStringField;
    cdsOMGListProcessSENDFEE: TStringField;
    cdsOMGListProcessSENDSSI: TStringField;
    cdsOMGAllocTempCONID: TLargeintField;
    cdsOMGContract: TNClientDataset;
    cdsROrderAllocCONID: TLargeintField;
    cdsROrderAllocSEQID: TIntegerField;
    cdsROrderAllocACCID: TIntegerField;
    cdsROrderAllocACCNO: TStringField;
    cdsROrderAllocACCNAME: TStringField;
    cdsROrderAllocCOMM_ID: TLargeintField;
    cdsROrderAllocCALC_METHOD: TStringField;
    cdsROrderAllocCOMM_RATE: TFloatField;
    cdsROrderAllocVALID_COMM_RATE: TFloatField;
    cdsROrderAllocAPRICE: TFloatField;
    cdsROrderAllocAQTY: TFloatField;
    cdsROrderAllocAVALUE: TFloatField;
    cdsROrderAllocCHARGES: TFloatField;
    cdsROrderAllocBROKERFEE: TFloatField;
    cdsROrderAllocVAT: TFloatField;
    cdsROrderAllocWHT: TFloatField;
    cdsROrderAllocSELLTAX: TFloatField;
    cdsROrderAllocTOTAL_CHARGES: TFloatField;
    cdsROrderAllocALLOCAMT: TFloatField;
    cdsROrderAllocMODDA: TDateTimeField;
    cdsROrderAllocMODUI: TStringField;
    cdsROrderAllocAPPDA: TDateTimeField;
    cdsROrderAllocAPPUI: TStringField;
    cdsROrderAllocUNDER4Y: TIntegerField;
    cdsROrderAllocUNDER4YDA: TDateTimeField;
    cdsROrderAllocNOTES4Y: TStringField;
    cdsROrderAllocISDEL: TIntegerField;
    cdsROrderFeeCONID: TLargeintField;
    cdsROrderFeeSEQID: TIntegerField;
    cdsROrderFeeCHARGE_ID: TLargeintField;
    cdsROrderFeeCHARGE_CODE: TStringField;
    cdsROrderFeeCHARGE_DESC: TStringField;
    cdsROrderFeeBASIS: TStringField;
    cdsROrderFeeRATE: TFloatField;
    cdsROrderFeeRATE_SOURCE: TStringField;
    cdsROrderFeeAMOUNT: TFloatField;
    cdsROrderFeeCHARGE_TABLE_ID: TLargeintField;
    cdsROrderFeeCHARGE_VAL: TFloatField;
    cdsROrderFeeMODDA: TDateTimeField;
    cdsROrderFeeMODUI: TStringField;
    cdsROrderFeeAPPDA: TDateTimeField;
    cdsROrderFeeAPPUI: TStringField;
    cdsROrderFeeUNDER4Y: TIntegerField;
    cdsROrderFeeUNDER4YDA: TDateTimeField;
    cdsROrderFeeNOTES4Y: TStringField;
    cdsROrderFeeISDEL: TIntegerField;
    cdsROrderFeeID: TLargeintField;
    cdsROrderCONID: TLargeintField;
    cdsROrderCONCODE: TStringField;
    cdsROrderCONDATE: TDateField;
    cdsROrderCASHSETTLEDATE: TDateField;
    cdsROrderSTOCKSETTLEDATE: TDateField;
    cdsROrderMARKETCODE: TStringField;
    cdsROrderAGCTYPE: TStringField;
    cdsROrderACCID: TLargeintField;
    cdsROrderACCNO: TStringField;
    cdsROrderACCNAME: TStringField;
    cdsROrderCON_ADDR: TStringField;
    cdsROrderCITY: TStringField;
    cdsROrderZIPCODE: TStringField;
    cdsROrderSTOCKID: TLargeintField;
    cdsROrderSTOCKCODE: TStringField;
    cdsROrderSTOCKNAME: TStringField;
    cdsROrderTC_MODEL: TStringField;
    cdsROrderTC_SENDBY: TStringField;
    cdsROrderSALESID: TLargeintField;
    cdsROrderDEALERID: TLargeintField;
    cdsROrderCCYCODE: TStringField;
    cdsROrderNETTYPE: TStringField;
    cdsROrderVALUEAMT: TFloatField;
    cdsROrderNETVALUE: TFloatField;
    cdsROrderCHARGEAMT: TFloatField;
    cdsROrderCOMMAMT: TFloatField;
    cdsROrderOTC: TFloatField;
    cdsROrderNETAMT: TFloatField;
    cdsROrderCUSTODYCODE: TStringField;
    cdsROrderSIDNO: TStringField;
    cdsROrderBNCODE: TStringField;
    cdsROrderBANKACCNO: TStringField;
    cdsROrderBANKACCNAME: TStringField;
    cdsROrderSETT_CLEARACC: TStringField;
    cdsROrderSETT_CLEARSUBACC: TStringField;
    cdsROrderFINALSTS: TStringField;
    cdsROrderCONSTS: TStringField;
    cdsROrderISOMG: TStringField;
    cdsROrderMODDA: TDateTimeField;
    cdsROrderMODUI: TStringField;
    cdsROrderAPPDA: TDateTimeField;
    cdsROrderAPPUI: TStringField;
    cdsROrderUNDER4Y: TIntegerField;
    cdsROrderUNDER4YDA: TDateTimeField;
    cdsROrderNOTES4Y: TStringField;
    cdsROrderISDEL: TIntegerField;
    cdsROrderID: TLargeintField;
    cdsOMGContractTRDID: TLargeintField;
    cdsOMGContractTRDDATE: TDateField;
    cdsOMGContractSETTDATE: TDateField;
    cdsOMGContractACCNO: TStringField;
    cdsOMGContractEXREFFCODE: TStringField;
    cdsOMGContractALERT: TStringField;
    cdsOMGContractENTNAME: TStringField;
    cdsOMGContractOMNIBUSTRADE: TIntegerField;
    cdsOMGContractOMGUSE: TStringField;
    cdsOMGContractENTTCODE: TStringField;
    cdsOMGContractTRDQTY: TFloatField;
    cdsOMGContractTRDPRICE: TFloatField;
    cdsOMGContractTRDVALUE: TFloatField;
    cdsOMGContractTOTALFEEVALUE: TFloatField;
    cdsOMGContractNETAMOUNT: TFloatField;
    cdsOMGContractOMGSTATUS: TStringField;
    cdsOMGContractPROCSTATUS: TStringField;
    cdsOMGContractCONTRACTVERSION: TIntegerField;
    cdsOMGContractBLOCKVERSION: TIntegerField;
    cdsOMGContractAQTY: TFloatField;
    cdsOMGContractAVALUE: TFloatField;
    cdsOMGContractSELLTAX: TFloatField;
    cdsOMGContractVAT: TFloatField;
    cdsOMGContractCHARGES: TFloatField;
    cdsOMGContractBRKFEE: TFloatField;
    cdsOMGContractWHT: TFloatField;
    cdsOMGContractBS: TStringField;
    cdsOMGContractNETAMT: TFloatField;
    cdsOMGContractOMGEXREFFCODE: TStringField;
    cdsOMGContractOMGALERT: TStringField;
    cdsOMGContractISINCODE: TStringField;
    cdsOMGContractLONGNAME: TStringField;
    cdsOMGContractACCALLOC: TStringField;
    cdsOMGContractCONID: TLargeintField;
    cdsOMGContractSEQID: TIntegerField;
    cdsOMGContractACCID: TIntegerField;
    cdsOMGContractACCNO_1: TStringField;
    cdsOMGContractACCNAME: TStringField;
    cdsOMGContractCOMM_ID: TLargeintField;
    cdsOMGContractCALC_METHOD: TStringField;
    cdsOMGContractCOMM_RATE: TFloatField;
    cdsOMGContractVALID_COMM_RATE: TFloatField;
    cdsOMGContractAPRICE: TFloatField;
    cdsOMGContractAQTY_1: TFloatField;
    cdsOMGContractAVALUE_1: TFloatField;
    cdsOMGContractCHARGES_1: TFloatField;
    cdsOMGContractBROKERFEE: TFloatField;
    cdsOMGContractVAT_1: TFloatField;
    cdsOMGContractWHT_1: TFloatField;
    cdsOMGContractSELLTAX_1: TFloatField;
    cdsOMGContractTOTAL_CHARGES: TFloatField;
    cdsOMGContractCCYCODE: TStringField;
    cdsOMGContractALLOCAMT: TFloatField;
    cdsOMGContractISMULTICCY: TStringField;
    cdsOMGContractFOREIGN_CCYCODE: TStringField;
    cdsOMGContractFOREIGN_EXRATE: TFloatField;
    cdsOMGContractFOREIGN_ALLOCAMT: TFloatField;
    cdsOMGContractC_SETTLEMODE: TStringField;
    cdsOMGContractS_SETTLEMODE: TStringField;
    cdsOMGContractCASHKEEP: TStringField;
    cdsOMGContractSTOCKKEEP: TStringField;
    cdsOMGContractDUECASH: TDateField;
    cdsOMGContractDUESTOCK: TDateField;
    cdsOMGContractMODDA: TDateTimeField;
    cdsOMGContractMODUI: TStringField;
    cdsOMGContractAPPDA: TDateTimeField;
    cdsOMGContractAPPUI: TStringField;
    cdsOMGContractUNDER4Y: TIntegerField;
    cdsOMGContractUNDER4YDA: TDateTimeField;
    cdsOMGContractNOTES4Y: TStringField;
    cdsOMGContractISDEL: TIntegerField;
    cdsOMGContractID: TLargeintField;
    cdsOMGContractNETCASHAMT: TFloatField;
    cdsOMGContractSENDSSI: TStringField;
    cdsDealticketAlloc: TNClientDataset;
    dsDealticketAlloc: TDataSource;
    cdsDealticketAllocACCID: TIntegerField;
    cdsDealticketAllocACCCODE: TStringField;
    cdsDealticketAllocACCNAME: TStringField;
    cdsDealticketAllocAQTY: TLargeintField;
    cdsDealticketAllocAPRICE: TFloatField;
    cdsDealticketAllocAVALUE: TFloatField;
    cdsDealticketAllocCOMM_CODE: TStringField;
    cdsDealticketAllocCOMM_RATE: TFloatField;
    cdsDealticketAllocDEALTICKETID: TLargeintField;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshDataExecute(Sender: TObject);
    procedure cdsOMGAllocTempAfterOpen(DataSet: TDataSet);
    procedure gvwAllocDetCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gvwBrowseTRDIDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gvwAllocCTMTRADEDETIDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure actGenerateBlockExecute(Sender: TObject);
    procedure actGenerateContractExecute(Sender: TObject);
  private
    { Private declarations }
    ListIDDiffFee, ListDetIDDiffFee: TStringList;
    procedure ErrorSign(AView:Boolean);
    procedure OpenListTrade;
    procedure OpenSSI;
  public
    { Public declarations }
  end;

var
  frmOMGMonitor: TfrmOMGMonitor;

implementation

{$R *.dfm}

uses DataGlobal, MTIGlobalConst, MTIObjects;

function IsFileCreated(const FileName: string): boolean;
      function SearchFile(const PathName: string): boolean;
      var
        i: integer;
        Rec: TSearchRec;
        FileList: array of string;
        DateList: array of TDateTime;
        Done: Boolean;
        TempName: string;
        TempDate: TDateTime;
      begin
        Result := False;
        { Get files list }
        if FindFirst(PathName + '*.txt', faAnyFile, Rec) = 0 then
        repeat
          Setlength(FileList, Length(FileList) + 1);
          Setlength(DateList, Length(DateList) + 1);
          FileList[High(FileList)]:= Rec.Name;
          DateList[High(DateList)]:= FileDateToDateTime(Rec.Time);
        until FindNext(Rec) <> 0;
        FindClose(Rec);

        if High(FileList) > 0 then
        begin
          result := true;
        end;
      end;
var
  sBakDir, sBakFilename: string;
  sWldFileName : string;
begin
  Result := False;
  sWldFileName := ExtractFileName(FileName);
  sWldFileName := Copy(sWldFileName,1,Length(sWldFileName) - 4);
  sBakDir := IncludeTrailingBackslash(dmGlobal.OMGOutboundDir+'\sent');
  sBakFileName := sBakDir + sWldFileName;

  if FileExists(FileName) then
  begin
    Result := True;
//    dmGlobal.Log(ltDebug,'File '+FileName+' has been found');
  end
  else if SearchFile(sWldFileName) then
  begin
    Result := True;
//    dmGlobal.Log(ltDebug,'File '+sWldFileName+'~.txt has been found');
  end
end;

procedure TfrmOMGMonitor.actGenerateBlockExecute(Sender: TObject);
var
  sDir,sFileName,sExtFile,sBakDir: string;
  TRDDate, SETTDate : string;
  AStatus: string;
  oMTIImport_eb_block: TMTIimport_eb_block;
  oMTIImport_cancel: TMTIImport_cancel;
  oGroupRecord: TMTIGroupRecord;
  IDXLevy: Double;
  OMGChargeType, IntChargeType: string;
  OMGCommType: string;
  iFact : integer;
  bFileExists: boolean;
  bakFileName: string;
begin
  inherited;
  {Temporary}
  sExtFile := '.txt';
  sDir := IncludeTrailingBackslash(dmGlobal.OMGOutboundDir);
  sBakDir := IncludeTrailingBackslash(dmGlobal.OMGOutboundDir);
  if not DirectoryExists(sDir) then CreateDir(sDir);

  OpenListTrade;

  cdsOMGListProcess.Filtered := True;
  cdsOMGListProcess.Filter := 'Status in ' + '('''', ''Pending New'',''Pending Amend'', ''Pending Cancel'')';

  if cdsOMGListProcess.IsEmpty then
  begin
    cdsOMGListProcess.Filtered := False;
    OpenListTrade;
    ShowMessage('There isn''t data can be processed');
    Exit;
  end;

  cdsOMGListProcess.First;
  cdsOMGListProcess.DisableControls;
  while not cdsOMGListProcess.Eof do
  begin
    if cdsOMGListProcessStatus.AsString = STATUS_PENDING_CANCEL then
    begin
      oMTIImport_cancel := TMTIImport_cancel.Create;
      oMTIImport_cancel.Records.ByName(cancel_keys).Fields.ByName(InstructingParty).Value := cdsOMGListProcessEXREFFCODE.AsString;
      oMTIImport_cancel.Records.ByName(cancel_keys).Fields.ByName(ExecutingBroker).Value := dmGlobal.OMGBIC;
      oMTIImport_cancel.Records.ByName(cancel_keys).Fields.ByName(MasterReference).Value := cdsOMGListProcessTRDID.AsString;
      oMTIImport_cancel.Records.ByName(cancel_keys).Fields.ByName(CancelText).Value := '"' + cdsOMGListProcessREMARKS.AsString + '"';

      sFileName := sDir+'Trade_'+dmGlobal.OMGBIC+'_'+dmGlobal.OMGMachineID+'_'+FormatDateTime('yyyymmddhhnnsszzz',now)+sExtFile;
      try
        oMTIImport_cancel.CreateFile(sFileName);
      finally
        dmGlobal.RemoteServer.UpdateOMGStatus(PROC_BLOCK_TRADE, cdsOMGListProcessTRDID.AsString, STATUS_PENDING_CANCEL, STATUS_OMG_SENT, '');
        oMTIImport_cancel.Free;
      end;
    end else
    begin
      TRDDate := FormatDateTime('YYYYMMDD',cdsOMGListProcessTRDDate.AsDateTime);
      SETTDate := FormatDateTime('YYYYMMDD',cdsOMGListProcessSettDate.AsDateTime);

      oMTIImport_eb_block := TMTIImport_eb_block.Create;
      oMTIImport_eb_block.Records.ByName(block_keys).Fields.ByName(BlockVersionOFTradeComponent).Value := IntToStr(cdsOMGListProcessOMGVersion.AsInteger + 1);
      oMTIImport_eb_block.Records.ByName(block_keys).Fields.ByName(InstructingParty).Value := cdsOMGListProcessEXREFFCODE.AsString;
      oMTIImport_eb_block.Records.ByName(block_keys).Fields.ByName(ExecutingBroker).Value := dmGlobal.OMGBIC;
      oMTIImport_eb_block.Records.ByName(block_keys).Fields.ByName(MasterReference).Value :=cdsOMGListProcessTRDID.AsString;

      oMTIImport_eb_block.Records.ByName(trade_security_id).Fields.ByName(SecurityCodeTypeCountryCode).Value := '';
      oMTIImport_eb_block.Records.ByName(trade_security_id).Fields.ByName(SecurityCodeTypeNumberingAgencyCode).Value := 'ISIN';
      oMTIImport_eb_block.Records.ByName(trade_security_id).Fields.ByName(SecurityCode).Value := cdsOMGListProcessISINCODE.AsString;
      oMTIImport_eb_block.Records.ByName(trade_security_id).Fields.ByName(DescriptionOfTheSecurity).Value := cdsOMGListProcessLONGNAME.AsString;
      oMTIImport_eb_block.Records.ByName(trade_security_id).Fields.ByName(SecurityType).Value := 'EQT';

      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(BuySellIndicator).Value := cdsOMGListProcessBS.AsString;
      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(TradedCurrencyCode).Value := 'IDR';
      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(DealPrice).Value := cdsOMGListProcessTRDPRICE.AsString;
      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(QuantityOfTheBlock).Value := cdsOMGListProcessTRDQTY.AsString;
      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(TotalTradeAmount).Value := FormatFloat('#0.00',cdsOMGListProcessTRDVALUE.AsFloat);
      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(SettlementDate).Value := SETTDate;
      oMTIImport_eb_block.Records.ByName(trade_info).Fields.ByName(TradeDate).Value := TRDDATE;

      if cdsOMGListProcessSENDSSI.AsBoolean = True then
      begin
        if not cdsOMGSSI.IsEmpty then
        begin
          oMTIImport_eb_block.Records.ByName(block_ssi_keys).Fields.ByName(SettlementInstructionsSourceIndicator).Value := cdsOMGSSISourceIndicator.AsString;
          oMTIImport_eb_block.Records.ByName(block_ssi_keys).Fields.ByName(AlertCountryCode).Value := cdsOMGSSIAlertCountryCode.AsString;
          oMTIImport_eb_block.Records.ByName(block_ssi_keys).Fields.ByName(AlertMethodType).Value := cdsOMGSSIAlertMethodType.AsString;
          oMTIImport_eb_block.Records.ByName(block_ssi_keys).Fields.ByName(AlertSecurityType).Value := cdsOMGSSIAlertSecurityType.AsString;
          oMTIImport_eb_block.Records.ByName(block_ssi_keys).Fields.ByName(AlertSettlementModelName).Value := cdsOMGSSIAlertSettModelName.AsString;
        end;
      end;

      {Send fee and charges by config.}
      if cdsOMGListProcessSENDFEE.AsString = 'Y' then
      begin
        IDXLevy := 0;
        if not cdsOMGOrdFee.IsEmpty then
        begin
          {Get Commission Data}
          cdsOMGOrdFee.Close;
          cdsOMGOrdFee.Params[0].Value := cdsOMGListProcessTRDID.AsLargeInt;
          cdsOMGOrdFee.Open;

          cdsOMGOrdFee.First;

          if not oMTIImport_eb_block.TableCommission.Active then oMTIImport_eb_block.TableCommission.Open;
          {EXEC}
          oMTIImport_eb_block.TableCommission.Append;
          oMTIImport_eb_block.TableCommission.FieldByName(CommissionSharingBasisIndicator).Value := 'FLAT';
          oMTIImport_eb_block.TableCommission.FieldByName(CommissionType).Value := 'EXEC';
          oMTIImport_eb_block.TableCommission.FieldByName(CommissionAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGOrdFeeBFEE.AsFloat));
          oMTIImport_eb_block.TableCommission.Post;

          {VATA}
          oMTIImport_eb_block.TableChargesTaxes.Append;
          oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'VATA';
          oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGOrdFeeVAT.AsFloat));
          oMTIImport_eb_block.TableChargesTaxes.Post;

          {LOCL}
          oMTIImport_eb_block.TableChargesTaxes.Append;
          oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'LOCL';
          oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGOrdFeeCHGR.AsFloat));
          oMTIImport_eb_block.TableChargesTaxes.Post;

          {TRAX}
          if cdsOMGListProcessBS.AsString = 'S' then
          begin
            oMTIImport_eb_block.TableChargesTaxes.Append;
            oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'TRAX';
            oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGOrdFeeSELLTAX.AsFloat));
            oMTIImport_eb_block.TableChargesTaxes.Post;
          end;

          {OTHR}
          oMTIImport_eb_block.TableChargesTaxes.Append;
          oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'OTHR';
          oMTIImport_eb_block.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGOrdFeeWHT.AsFloat * -1));
          oMTIImport_eb_block.TableChargesTaxes.Post;
        end;
      {End of sending charges and fee}
      end;

      sFileName := sDir+'Trade_'+dmGlobal.OMGBIC+'_'+dmGlobal.OMGMachineID+'_'+FormatDateTime('yyyymmddhhnnsszzz',now)+sExtFile;
      try
        oMTIImport_eb_block.CreateFile(sFileName);
      finally
        if cdsOMGListProcessOMGVersion.AsInteger = 0 then AStatus := STATUS_NEW
        else AStatus := STATUS_AMEND;

        dmGlobal.RemoteServer.UpdateOMGStatus(PROC_BLOCK_TRADE, cdsOMGListProcessTRDID.AsString, AStatus, STATUS_OMG_SENT, '');

        oMTIImport_eb_block.Free;
        oGroupRecord.Free;
      end;
    end;
    sleep(100);
    cdsOMGListProcess.Next;
  end;
  cdsOMGListProcess.Filtered := False;
  cdsOMGListProcess.EnableControls;

  OpenListTrade;
end;

procedure TfrmOMGMonitor.actGenerateContractExecute(Sender: TObject);
var
  sDir,sFileName,sExtFile: string;
  TRDDate, SETTDate : string;
  CreateDate : TDateTime;
  oMTIImport_Contract: TMTIImport_contract;
  iFact: ShortInt;
  sTradeLevelExpected: string;
  WHT: Double;
begin
  inherited;
  sExtFile := '.txt';
  sDir := IncludeTrailingBackslash(dmGlobal.OMGOutboundDir);
  if not DirectoryExists(sDir) then CreateDir(sDir);

  OpenListTrade;

  OpenSSI;

  try
    dmGlobal.RemoteServer.GenerateOMGContract(DateOf(dtTransFrom.Date), dmGlobal.UserID);
  except
    on E:Exception do
    begin
      exit;
    end;
  end;

  cdsOMGContract.Close;
  cdsOMGContract.Params[0].AsDate := DateOf(dtTransFrom.Date);
  cdsOMGContract.Params[1].AsDate := DateOf(dtTransTo.Date);
  cdsOMGContract.Open;

  if cdsOMGContract.IsEmpty then
  begin
    ShowMessage('There isn''t data to be processed');
    Exit;
  end;

  cdsOMGContract.First;

   while not cdsOMGContract.Eof do
   begin
      TRDDate := FormatDateTime('YYYYMMDD',cdsOMGContractTRDDate.AsDateTime);
      SETTDate := FormatDateTime('YYYYMMDD',cdsOMGContractSettDate.AsDateTime);
//      if Copy(cdsOMGContractCTMTRADEDETID.AsString,1,3) = 'INT' then sTradeLevelExpected := 'N'
//      else

      sTradeLevelExpected := 'Y';

      oMTIImport_Contract := TMTIImport_contract.Create;
      oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(NetCashAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGContractNETCASHAMT.AsFloat));
      oMTIImport_Contract.Records.ByName(contract_keys).Fields.ByName(ContractVersionOfTradeComponent).Value := IntToStr(cdsOMGContractCONTRACTVERSION.AsInteger + 1);
      oMTIImport_Contract.Records.ByName(contract_keys).Fields.ByName(TradeLevelExpected).Value := sTradeLevelExpected;
      oMTIImport_Contract.Records.ByName(contract_keys).Fields.ByName(InstructingParty).Value := cdsOMGContractEXREFFCODE.AsString;
      oMTIImport_Contract.Records.ByName(contract_keys).Fields.ByName(ExecutingBroker).Value := dmGlobal.OMGBIC;
      oMTIImport_Contract.Records.ByName(contract_keys).Fields.ByName(MasterReference).Value := cdsOMGContractTRDID.AsString;
      oMTIImport_Contract.Records.ByName(trade_security_id).Fields.ByName(SecurityCodeTypeCountryCode).Value := '';
      oMTIImport_Contract.Records.ByName(trade_security_id).Fields.ByName(SecurityCodeTypeNumberingAgencyCode).Value := 'ISIN';
      oMTIImport_Contract.Records.ByName(trade_security_id).Fields.ByName(SecurityCode).Value := cdsOMGContractISINCODE.AsString;
      oMTIImport_Contract.Records.ByName(trade_security_id).Fields.ByName(DescriptionOfTheSecurity).Value := cdsOMGContractLONGNAME.AsString;
      oMTIImport_Contract.Records.ByName(trade_security_id).Fields.ByName(SecurityType).Value := 'EQT';
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(BuySellIndicator).Value := cdsOMGContractBS.AsString;
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(TradedCurrencyCode).Value := 'IDR';
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(DealPrice).Value := cdsOMGContractTRDPRICE.AsString;
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(QuantityOfTheBlock).Value := cdsOMGContractTRDQTY.AsString;
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(TotalTradeAmount).Value := cdsOMGContractTRDVALUE.AsString;
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(SettlementDate).Value := SETTDate;
      oMTIImport_Contract.Records.ByName(trade_info).Fields.ByName(TradeDate).Value := TRDDATE;

      {Check Alert Condition}
      if cdsOMGContractALERT.AsBoolean = True then
      begin
        oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(AccountID).Value := '';
        oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(AccountReference).Value := cdsOMGContractACCNO_1.AsString;
      end else
      begin
        oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(AccountID).Value := cdsOMGContractEXREFFCODE.AsString;
        oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(AccountReference).Value := '';
      end;

      if cdsOMGContractSENDSSI.AsBoolean = True then
      begin
        if not cdsOMGSSI.IsEmpty then
        begin
          oMTIImport_Contract.Records.ByName(eb_contract_ssi_keys).Fields.ByName(SettlementInstructionsSourceIndicator).Value := cdsOMGSSISourceIndicator.AsString;
          oMTIImport_Contract.Records.ByName(eb_contract_ssi_keys).Fields.ByName(AlertCountryCode).Value := cdsOMGSSIAlertCountryCode.AsString;
          oMTIImport_Contract.Records.ByName(eb_contract_ssi_keys).Fields.ByName(AlertMethodType).Value := cdsOMGSSIAlertMethodType.AsString;
          oMTIImport_Contract.Records.ByName(eb_contract_ssi_keys).Fields.ByName(AlertSecurityType).Value := cdsOMGSSIAlertSecurityType.AsString;
          oMTIImport_Contract.Records.ByName(eb_contract_ssi_keys).Fields.ByName(AlertSettlementModelName).Value := cdsOMGSSIAlertSettModelName.AsString;
        end;
      end;

      oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(TradeAmount).Value := cdsOMGContractALLOCAMT.AsString;
      oMTIImport_Contract.Records.ByName(contract_info).Fields.ByName(QuantityAllocated).Value := cdsOMGContractAQTY.AsString;


      if not oMTIImport_Contract.TableCommission.Active then oMTIImport_Contract.TableCommission.Open;
      oMTIImport_Contract.TableCommission.Append;
      oMTIImport_Contract.TableCommission.FieldByName(CommissionSharingBasisIndicator).Value := 'FLAT';
      oMTIImport_Contract.TableCommission.FieldByName(CommissionType).Value := 'EXEC';
      oMTIImport_Contract.TableCommission.FieldByName(CommissionAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGContractBROKERFEE.AsFloat));
      oMTIImport_Contract.TableCommission.Post;

      if not oMTIImport_Contract.TableChargesTaxes.Active then oMTIImport_Contract.TableChargesTaxes.Open;
      oMTIImport_Contract.TableChargesTaxes.Append;
      oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'LOCL';
      oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGContractCHARGES.AsFloat));
      oMTIImport_Contract.TableChargesTaxes.Post;

      oMTIImport_Contract.TableChargesTaxes.Append;
      oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'VATA';
      oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGContractVAT.AsFloat));
      oMTIImport_Contract.TableChargesTaxes.Post;

      if ABS(cdsOMGContractWHT.AsFloat) = 0 then WHT := 0
      else WHT := cdsOMGContractWHT.AsFloat * -1;


      oMTIImport_Contract.TableChargesTaxes.Append;
      oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'OTHR';
      oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(WHT));
      oMTIImport_Contract.TableChargesTaxes.Post;

      if cdsOMGContractBS.AsString = 'S' then
      begin
        oMTIImport_Contract.TableChargesTaxes.Append;
        oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeTaxType).Value := 'TRAX';
        oMTIImport_Contract.TableChargesTaxes.FieldByName(ChargeAmount).Value := FormatFloat(FMT_CURR_ROUND,Round(cdsOMGContractSELLTAX.AsFloat));
        oMTIImport_Contract.TableChargesTaxes.Post;
      end;

      sFileName := sDir+'Trade_'+dmGlobal.OMGBIC+'_'+dmGlobal.OMGMachineID+'_'+FormatDateTime('yyyymmddhhnnsszzz',now)+sExtFile;
      try
        oMTIImport_Contract.CreateFile(sFileName);
        sleep(200);
      finally
        {Make sure that file is already created}
        if IsFileCreated(sFileName) then
        begin
          dmGlobal.RemoteServer.UpdateOMGStatus(PROC_CONTRACT, cdsOMGContractTRDID.AsString, 'Pending Match', 'Sent', '');
        end;
        oMTIImport_Contract.Free;
      end;

      sleep(100);
      cdsOMGContract.Next;
   end;
  {refresh grid}
  OpenListTrade;
  ShowMessage('Contract Successfully Generated');
end;

procedure TfrmOMGMonitor.actPrintExecute(Sender: TObject);
 function CreateSQLParam(AParams: array of string): string;
  var
    i: integer;
    sParam: string;
  begin
    for i := 0 to high(AParams) do
    begin
      sParam := sParam + QuotedStr(AParams[i]);
      if i <> high(AParams) then sParam := sParam + ',';
    end;
    Result := sParam;
  end;
var
  arr_param: array of string;
  i: integer;
begin
  inherited;
  if gvwBrowse.Controller.SelectedRecordCount = 0 then
  begin
    ShowMessage('Select data which want to be processed');
    Exit;
  end;

  {Create Array params}
  SetLength(arr_param, gvwBrowse.Controller.SelectedRecordCount);
  for i := 0 to gvwBrowse.Controller.SelectedRecordCount - 1 do
    arr_param[i] := (gvwBrowse.Controller.SelectedRecords[i].Values[0]);


  if cdsOMGListProcess.Active then
  begin
    cdsROrder.Close;
    cdsROrder.CommandText := 'select * from main.B_CONTRACT where CONID in '+
                             '('+CreateSQLParam(arr_param)+')';
    cdsROrder.Open;

    ReportContainer.ExecuteReport;
  end;


end;

procedure TfrmOMGMonitor.actRefreshDataExecute(Sender: TObject);
begin
  inherited;
  if dtTransTo.Date < dtTransFrom.Date then
  begin
    MessageDlg('Range date is invalid',mtError,[mbOK],0);
    Exit;
  end;
  OpenListTrade;
end;

procedure TfrmOMGMonitor.cdsOMGAllocTempAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ErrorSign(not cdsOMGAllocTemp.IsEmpty);
end;

procedure TfrmOMGMonitor.ErrorSign(AView: Boolean);
begin
  LayoutlblPendingAllocation.Visible := AView;

  if AView then
  begin
    lblPendingAllocation.Caption := 'Pending Allocation'
  end
  else
  begin
    lblPendingAllocation.Caption := '';
  end;
end;

procedure TfrmOMGMonitor.FormCreate(Sender: TObject);
begin
  inherited;
  ListIDDiffFee := TStringList.Create;
  ListDetIDDiffFee := TStringList.Create;

  dtTransFrom.Date := trunc(now);
  dtTransTo.Date := trunc(now);

  OpenListTrade;
  OpenSSI;
end;

procedure TfrmOMGMonitor.gvwAllocCTMTRADEDETIDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if ListDetIDDiffFee.IndexOf(AViewInfo.GridRecord.Values[0]) <> -1 then ACanvas.Brush.Color := clRed
end;

procedure TfrmOMGMonitor.gvwAllocDetCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if(AViewInfo.GridRecord.Values[5] = True) then ACanvas.Brush.Color := clRed
end;

procedure TfrmOMGMonitor.gvwBrowseTRDIDCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if ListIDDiffFee.IndexOf(AViewInfo.GridRecord.Values[0]) <> -1 then ACanvas.Brush.Color := clRed;
end;

procedure TfrmOMGMonitor.OpenListTrade;
begin
  cdsOMGAllocTemp.Close;
  cdsOMGAllocTemp.Open;

  cdsOMGListProcess.Close;
  cdsOMGListProcess.Params[0].Value := DateOf(dtTransFrom.Date);
  cdsOMGListProcess.Params[1].Value := DateOf(dtTransTo.Date);
  cdsOMGListProcess.Open;

  cdsDealticketAlloc.Close;
  cdsDealticketAlloc.Params[0].Value := DateOf(dtTransFrom.Date);
  cdsDealticketAlloc.Params[1].Value := DateOf(dtTransTo.Date);
  cdsDealticketAlloc.Open;

  cdsOMGAlloc.Close;
  cdsOMGAlloc.Open;

  cdsOMGAllocComp.Close;
  cdsOMGAllocComp.Params[0].Value := dtTransFrom.Date;
  cdsOMGAllocComp.Params[1].Value := dtTransTo.Date;
  cdsOMGAllocComp.Open;

  if not cdsOMGAllocComp.IsEmpty then
  begin
    cdsOMGAllocComp.DisableControls;
    cdsOMGAllocComp.First;
    while not cdsOMGAllocComp.Eof do
    begin
      if cdsOMGAllocCompDIFF.AsBoolean = True then
      begin
        if ListIDDiffFee.IndexOf(cdsOMGAllocCompCONID.AsString) = -1 then ListIDDiffFee.Add(cdsOMGAllocCompCONID.AsString);
        if ListDetIDDiffFee.IndexOf(cdsOMGAllocCompCTMTRADEDETID.AsString) = -1 then ListDetIDDiffFee.Add(cdsOMGAllocCompCTMTRADEDETID.AsString);
      end;
      cdsOMGAllocComp.Next;
    end;
    cdsOMGAllocComp.EnableControls;
  end;
  gvwBrowse.ApplyBestFit;

  lblLastUpdate.Caption := Format('Last Refresh Data : %s',[FormatDateTime('hh:nn:ss ampm', now)]);
end;

procedure TfrmOMGMonitor.OpenSSI;
begin
  cdsOMGSSI.Close;
  cdsOMGSSI.Open;
end;

initialization
  RegisterClass(TfrmOMGMonitor);

end.
