unit FormBankRecons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  cxCalendar, cxCurrencyEdit, cxContainer, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, dxLayoutControlAdapters, Vcl.ActnList, NDatasetAction,
  Vcl.StdCtrls, cxButtons, XLSSheetData5, XLSReadWriteII5, StrUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, System.DateUtils,
  cxCheckBox, DBXJSON, Data.DBXJSONCommon, cxGroupBox, cxRadioGroup,
  System.Actions, ComObj, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmBankRecons = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBankRecon: TcxGridDBBandedTableView;
    cdsBankRecon: TNClientDataset;
    cdsBankReconTRDATE: TDateField;
    cdsBankReconACCID: TLargeintField;
    cdsBankReconALTYPE: TStringField;
    cdsBankReconLDGACC: TStringField;
    cdsBankReconBNACC: TStringField;
    cdsBankReconBNACCNO: TStringField;
    cdsBankReconCCY: TStringField;
    cdsBankReconRDNAMT: TFloatField;
    cdsBankReconRDNBNK_AMT: TFloatField;
    cdsBankReconDIFFAMT: TFloatField;
    cdsBankReconREF: TStringField;
    cdsBankReconATRNS: TStringField;
    cdsBankReconCDID: TLargeintField;
    cdsBankReconV_TRNAMT: TFloatField;
    cdsBankReconACCNO: TStringField;
    dsBankRecon: TDataSource;
    txtBankRecon: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    Post1: TMenuItem;
    txtTransDate: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    PostAll1: TMenuItem;
    cdsBankReconcile: TClientDataSet;
    dsBankReconcile: TDataSource;
    aclBankRecon: TActionList;
    actViewData: TNAction;
    actUploadData: TNAction;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsBankPosition: TNClientDataset;
    popGrid: TPopupMenu;
    actCreateMutation: TNAction;
    actCreateMutationAll: TNAction;
    ImportFilesDialog: TOpenDialog;
    cdsBankReconcileTRDATE: TDateField;
    cdsBankReconcileACCID: TIntegerField;
    cdsBankReconcileACCCODE: TStringField;
    cdsBankReconcileACCNAME: TStringField;
    cdsBankReconcileACCINIT: TStringField;
    cdsBankReconcileACCBANKID: TIntegerField;
    cdsBankReconcileBNCODE: TStringField;
    cdsBankReconcileBNACCNO: TStringField;
    cdsBankReconcileCCY: TStringField;
    cdsBankReconcileSALDO: TFloatField;
    cdsBankReconcileRDNPOS: TFloatField;
    cdsBankReconcileDIFF_AMOUNT: TFloatField;
    cdsBankPositionUPLOADID: TIntegerField;
    cdsBankPositionTRDATE: TDateField;
    cdsBankPositionBNCODE: TStringField;
    cdsBankPositionBNACCNO: TStringField;
    cdsBankPositionCCY: TStringField;
    cdsBankPositionSALDO: TFloatField;
    cdsBankPositionMODDA: TDateTimeField;
    cdsBankPositionMODUI: TStringField;
    cdsBankPositionAPPDA: TDateTimeField;
    cdsBankPositionAPPUI: TStringField;
    cdsBankPositionUNDER4Y: TIntegerField;
    cdsBankPositionUNDER4YDA: TDateTimeField;
    cdsBankPositionNOTES4Y: TStringField;
    cdsBankPositionISDEL: TIntegerField;
    cdsBankPositionID: TLargeintField;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsBankPositionAUTODEP: TStringField;
    cdsBankPositionUPLOADCODE: TStringField;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsBankPositionBNACCNAME: TStringField;
    cdsBankReconcileBNACCNAME: TStringField;
    cdsBankReconcileTmp: TClientDataSet;
    dsBankReconcileTmp: TDataSource;
    cdsBankReconcileTmpTRDATE: TDateField;
    cdsBankReconcileTmpBNCODE: TStringField;
    cdsBankReconcileTmpBNACCNO: TStringField;
    cdsBankReconcileTmpCCY: TStringField;
    cdsBankReconcileTmpSALDO: TFloatField;
    cdsBankReconcileTmpBNACCNAME: TStringField;
    gvwBankReconTRDATE: TcxGridDBBandedColumn;
    gvwBankReconBNCODE: TcxGridDBBandedColumn;
    gvwBankReconBNACCNO: TcxGridDBBandedColumn;
    gvwBankReconCCY: TcxGridDBBandedColumn;
    gvwBankReconSALDO: TcxGridDBBandedColumn;
    gvwBankReconBNACCNAME: TcxGridDBBandedColumn;
    cdsRDNPosition: TNClientDataset;
    cdsRDNPositionACCID: TIntegerField;
    cdsRDNPositionLDGSEQID: TIntegerField;
    cdsRDNPositionACCNO: TStringField;
    cdsRDNPositionACCNAME: TStringField;
    cdsRDNPositionACCBANKID: TIntegerField;
    cdsRDNPositionBNCODE: TStringField;
    cdsRDNPositionBANKACCNO: TStringField;
    cdsRDNPositionBANKACCNAME: TStringField;
    cdsRDNPositionBANKBRANCH: TStringField;
    cdsRDNPositionCCY: TStringField;
    cdsRDNPositionRDNPOS: TFloatField;
    cdsBankReconcileTmpRDNPOS: TFloatField;
    cdsBankReconcileTmpDIFF_AMOUNT: TFloatField;
    gvwBankReconRDNPOS: TcxGridDBBandedColumn;
    gvwBankReconDIFF_AMOUNT: TcxGridDBBandedColumn;
    cdsBankReconcileTmpACCID: TIntegerField;
    cdsBankReconcileTmpACCCODE: TStringField;
    gvwBankReconACCID: TcxGridDBBandedColumn;
    gvwBankReconACCCODE: TcxGridDBBandedColumn;
    cdsBankReconcileTmpACCNAME: TStringField;
    cdsBankReconcileTmpACCINIT: TStringField;
    gvwBankReconACCNAME: TcxGridDBBandedColumn;
    gvwBankReconACCINIT: TcxGridDBBandedColumn;
    cdsBankReconcileTmpACCBANKID: TIntegerField;
    btnMutationAll: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsBankReconcileTmpBANKACCNO: TStringField;
    gvwBankReconACCBANKID: TcxGridDBBandedColumn;
    gvwBankReconBANKACCNO: TcxGridDBBandedColumn;
    SaveDialog: TSaveDialog;
    chkDiff: TcxCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cdsCashMutation: TNClientDataset;
    chkMutationType: TcxRadioGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    btnMutation: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    txtMutationDate: TcxDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxButton4: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    txtBankMovement: TcxButtonEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    actUploadMutation: TNAction;
    cdsCashDep: TNClientDataset;
    cdsCashDepCDID: TLargeintField;
    cdsCashDepCDCODE: TStringField;
    cdsCashDepCDDATE: TDateField;
    cdsCashDepCDDESC: TStringField;
    cdsCashDepACCSOPID: TLargeintField;
    cdsCashDepACCID: TIntegerField;
    cdsCashDepACCNO: TStringField;
    cdsCashDepACTLED_ACCID: TIntegerField;
    cdsCashDepACTLED_SEQID: TIntegerField;
    cdsCashDepACCBANKID: TIntegerField;
    cdsCashDepCCY: TStringField;
    cdsCashDepCDAMT: TFloatField;
    cdsCashDepLINKTYPE: TStringField;
    cdsCashDepLINKID: TLargeintField;
    cdsCashDepPOSTED: TStringField;
    cdsCashDepMODDA: TDateTimeField;
    cdsCashDepMODUI: TStringField;
    cdsCashDepAPPDA: TDateTimeField;
    cdsCashDepAPPUI: TStringField;
    cdsCashDepUNDER4Y: TIntegerField;
    cdsCashDepUNDER4YDA: TDateTimeField;
    cdsCashDepNOTES4Y: TStringField;
    cdsCashDepISDEL: TIntegerField;
    cdsCashDepID: TLargeintField;
    cdsCashDepLINKNO: TStringField;
    cdsCashDepENTRYDATE: TDateField;
    cdsCashDepCANCEL: TStringField;
    cdsCashDepCANCEL_DATE: TDateField;
    cdsCashDepCANCEL_UI: TStringField;
    cdsCashDepDEP_TYPE: TStringField;
    cdsCashWdr: TNClientDataset;
    cdsCashWdrCWID: TLargeintField;
    cdsCashWdrCWCODE: TStringField;
    cdsCashWdrCWDATE: TDateField;
    cdsCashWdrCWDESC: TStringField;
    cdsCashWdrACCID: TIntegerField;
    cdsCashWdrACCNO: TStringField;
    cdsCashWdrACTLED_ACCID: TIntegerField;
    cdsCashWdrACTLED_SEQID: TIntegerField;
    cdsCashWdrSOURCE_ACCBANKID: TIntegerField;
    cdsCashWdrTARGET_ACCBANKID: TIntegerField;
    cdsCashWdrCCY: TStringField;
    cdsCashWdrCWAMT: TFloatField;
    cdsCashWdrBNCHARGES: TFloatField;
    cdsCashWdrBNCHARGESTYPE: TStringField;
    cdsCashWdrPOSTED: TStringField;
    cdsCashWdrMODDA: TDateTimeField;
    cdsCashWdrMODUI: TStringField;
    cdsCashWdrAPPDA: TDateTimeField;
    cdsCashWdrAPPUI: TStringField;
    cdsCashWdrUNDER4Y: TIntegerField;
    cdsCashWdrUNDER4YDA: TDateTimeField;
    cdsCashWdrNOTES4Y: TStringField;
    cdsCashWdrISDEL: TIntegerField;
    cdsCashWdrID: TLargeintField;
    cdsCashWdrACCNAME: TStringField;
    cdsCashWdrSOURCE_BNCODE: TStringField;
    cdsCashWdrSOURCE_BNACCNO: TStringField;
    cdsCashWdrSOURCE_BNACCNAME: TStringField;
    cdsCashWdrSOURCE_BNBRANCH: TStringField;
    cdsCashWdrTARGET_BNCODE: TStringField;
    cdsCashWdrTARGET_BNACCNO: TStringField;
    cdsCashWdrTARGET_BNACCNAME: TStringField;
    cdsCashWdrTARGET_BNBRANCH: TStringField;
    cdsCashWdrTRANSTYPE: TStringField;
    cdsCashWdrTRANSFER_AMT: TFloatField;
    cdsCashWdrCCY_TMP: TStringField;
    cdsCashWdrACCSOPID: TLargeintField;
    cdsCashWdrLINKTYPE: TStringField;
    cdsCashWdrLINKID: TLargeintField;
    cdsCashWdrLINKNO: TStringField;
    cdsCashWdrENTRYDATE: TDateField;
    cdsCashWdrWDR_TYPE: TStringField;
    cdsCashWdrCANCEL: TStringField;
    cdsCashWdrCANCEL_DATE: TDateField;
    cdsCashWdrCANCEL_UI: TStringField;
    cdsCashWdrAPPROVED: TStringField;
    cdsCashWdrAPPROVED_DATE: TDateField;
    cdsCashWdrAPPROVED_UI: TStringField;
    cdsCashDepUPLOAD_TIME: TDateTimeField;
    cdsCashWdrUPLOAD_TIME: TDateTimeField;
    cdsCashDepByDate: TNClientDataset;
    cdsCashWdrByDate: TNClientDataset;
    cdsCashDepByDateCDID: TLargeintField;
    cdsCashDepByDateENTRYDATE: TDateField;
    cdsCashDepByDateCDCODE: TStringField;
    cdsCashDepByDateCDDATE: TDateField;
    cdsCashDepByDateCDDESC: TStringField;
    cdsCashDepByDateACCSOPID: TLargeintField;
    cdsCashDepByDateACCID: TIntegerField;
    cdsCashDepByDateACCNO: TStringField;
    cdsCashDepByDateACTLED_ACCID: TIntegerField;
    cdsCashDepByDateACTLED_SEQID: TIntegerField;
    cdsCashDepByDateACCBANKID: TIntegerField;
    cdsCashDepByDateCCY: TStringField;
    cdsCashDepByDateCDAMT: TFloatField;
    cdsCashDepByDateLINKTYPE: TStringField;
    cdsCashDepByDateLINKID: TLargeintField;
    cdsCashDepByDateLINKNO: TStringField;
    cdsCashDepByDateUPLOAD_TIME: TDateTimeField;
    cdsCashDepByDatePOSTED: TStringField;
    cdsCashDepByDateCANCEL: TStringField;
    cdsCashDepByDateCANCEL_DATE: TDateField;
    cdsCashDepByDateCANCEL_UI: TStringField;
    cdsCashDepByDateDEP_TYPE: TStringField;
    cdsCashDepByDateMODDA: TDateTimeField;
    cdsCashDepByDateMODUI: TStringField;
    cdsCashDepByDateAPPDA: TDateTimeField;
    cdsCashDepByDateAPPUI: TStringField;
    cdsCashDepByDateUNDER4Y: TIntegerField;
    cdsCashDepByDateUNDER4YDA: TDateTimeField;
    cdsCashDepByDateNOTES4Y: TStringField;
    cdsCashDepByDateISDEL: TIntegerField;
    cdsCashDepByDateID: TLargeintField;
    cdsCashWdrByDateCWID: TLargeintField;
    cdsCashWdrByDateENTRYDATE: TDateField;
    cdsCashWdrByDateCWCODE: TStringField;
    cdsCashWdrByDateCWDATE: TDateField;
    cdsCashWdrByDateCWDESC: TStringField;
    cdsCashWdrByDateACCSOPID: TLargeintField;
    cdsCashWdrByDateACCID: TIntegerField;
    cdsCashWdrByDateACCNO: TStringField;
    cdsCashWdrByDateACTLED_ACCID: TIntegerField;
    cdsCashWdrByDateACTLED_SEQID: TIntegerField;
    cdsCashWdrByDateSOURCE_ACCBANKID: TIntegerField;
    cdsCashWdrByDateTARGET_ACCBANKID: TIntegerField;
    cdsCashWdrByDateCCY: TStringField;
    cdsCashWdrByDateCWAMT: TFloatField;
    cdsCashWdrByDateTRANSTYPE: TStringField;
    cdsCashWdrByDateBNCHARGES: TFloatField;
    cdsCashWdrByDateBNCHARGESTYPE: TStringField;
    cdsCashWdrByDateTRANSFER_AMT: TFloatField;
    cdsCashWdrByDateLINKTYPE: TStringField;
    cdsCashWdrByDateLINKID: TLargeintField;
    cdsCashWdrByDateLINKNO: TStringField;
    cdsCashWdrByDateUPLOAD_TIME: TDateTimeField;
    cdsCashWdrByDatePOSTED: TStringField;
    cdsCashWdrByDateWDR_TYPE: TStringField;
    cdsCashWdrByDateCANCEL: TStringField;
    cdsCashWdrByDateCANCEL_DATE: TDateField;
    cdsCashWdrByDateCANCEL_UI: TStringField;
    cdsCashWdrByDateAPPROVED: TStringField;
    cdsCashWdrByDateAPPROVED_DATE: TDateField;
    cdsCashWdrByDateAPPROVED_UI: TStringField;
    cdsCashWdrByDateMODDA: TDateTimeField;
    cdsCashWdrByDateMODUI: TStringField;
    cdsCashWdrByDateAPPDA: TDateTimeField;
    cdsCashWdrByDateAPPUI: TStringField;
    cdsCashWdrByDateUNDER4Y: TIntegerField;
    cdsCashWdrByDateUNDER4YDA: TDateTimeField;
    cdsCashWdrByDateNOTES4Y: TStringField;
    cdsCashWdrByDateISDEL: TIntegerField;
    cdsCashWdrByDateID: TLargeintField;
    cxButton6: TcxButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    cdsRDNPositionACCBANKCODE: TStringField;
    cdsBankList: TNClientDataset;
    cdsBankListBNCODE: TStringField;
    cdsBankListBNNAME: TStringField;
    cdsBankListINITIAL_NAME: TStringField;
    cdsBankListBICODE: TStringField;
    cdsBankListSWIFT_CODE: TStringField;
    cdsRDNPositionLDGTYPE: TStringField;
    cdsRDNPositionBNINITIAL: TStringField;
    cdsBankReconcileTmpBNINITIAL: TStringField;
    cdsCashMutationCMID: TLargeintField;
    cdsCashMutationCMCODE: TStringField;
    cdsCashMutationCMDATE: TDateField;
    cdsCashMutationCMTYPE: TStringField;
    cdsCashMutationCMDESC: TStringField;
    cdsCashMutationACCID: TIntegerField;
    cdsCashMutationACCNO: TStringField;
    cdsCashMutationACCBANKID: TIntegerField;
    cdsCashMutationDC: TStringField;
    cdsCashMutationCCY: TStringField;
    cdsCashMutationCMAMT: TFloatField;
    cdsCashMutationPOSTED: TStringField;
    cdsCashMutationMODDA: TDateTimeField;
    cdsCashMutationMODUI: TStringField;
    cdsCashMutationAPPDA: TDateTimeField;
    cdsCashMutationAPPUI: TStringField;
    cdsCashMutationUNDER4Y: TIntegerField;
    cdsCashMutationUNDER4YDA: TDateTimeField;
    cdsCashMutationNOTES4Y: TStringField;
    cdsCashMutationISDEL: TIntegerField;
    cdsCashMutationID: TLargeintField;
    cdsCashMutationPOSTED_DATE: TDateField;
    cdsCashMutationPOSTED_UI: TStringField;
    cdsCashMutationCANCEL: TStringField;
    cdsCashMutationCANCEL_DATE: TDateField;
    cdsCashMutationCANCEL_UI: TStringField;
    cbBank: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PostAll1Click(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actUploadDataExecute(Sender: TObject);
    procedure actCreateMutationExecute(Sender: TObject);
    procedure actCreateMutationAllExecute(Sender: TObject);
    procedure chkAllPropertiesChange(Sender: TObject);
    procedure txtTransDatePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbBankPropertiesCloseUp(Sender: TObject);
    procedure chkDiffPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure actUploadMutationExecute(Sender: TObject);
    procedure txtBankMovementPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton6Click(Sender: TObject);
    procedure cbBankPropertiesChange(Sender: TObject);
    procedure actCreateMutationAllUpdate(Sender: TObject);
  private
    { Private declarations }
    FBankAccNo: string;
    FDate: TDate;
    FBankCode: string;
    FPostCashDepList,
    FPostCashWdrList,
    FCashMutationList: TStringList;
    FLoadBNCode: string;

    procedure ImportBankData(ABank, AFileName: String);
    procedure ImportBankCIMB(ASheet: OleVariant);
    procedure ImportBankPermata(ASheet: OleVariant);
    procedure ImportBankBNI(ASheet: OleVariant);
    procedure ImportBankBCA(AFileName: String);
    procedure ImportBankMandiri(AFileName: String);

    procedure ImportFileBank(ABankName: string; AFileName: string);
    procedure BankCIMB(AFileName: string);
    procedure BankBNI(AFileName: string);
    procedure BankPermata(AFileName: string);

    procedure UploadPermata(AFileName: string);
    procedure UploadBNI(AFileName: string);
    procedure UploadCMIB(AFileName: string);
    procedure UploadMandiri(AFileName: string);
    procedure UploadBCA(AFileName: string);
    procedure UploadBRI(AFileName: string);

    procedure GetRDNSaldo(ABankCode, ABNAccNo: string);
    procedure LoadRDNPosition;
    procedure RefreshData;

    procedure FilterByZero;

    procedure LoadFromBankPermata(AFileName: string);
    procedure LoadFromBankBNI(AFileName: string);
    procedure LoadFromBankBMRI(AFileName: string);
    procedure LoadFromBankNiaga(AFileName: string);
    procedure LoadFromBankBCA(AFileName: string);

    procedure SavingToBankMutation(ADC, ABankAccCode: string; ADate: TDate; AAmount: Double; ADesc, ACCY: string; ADateTime: TDateTime);
    procedure SaveBankMutation(ADC, ABankAccCode: string; ADate: TDate; AAmount: Double; ADesc, ACCY: string; ADateTime: TDateTime);

    procedure PostingCashDW;
    procedure PostingCashMutation;
  public
    { Public declarations }
  end;

var
  frmBankRecons: TfrmBankRecons;

implementation

{$R *.dfm}

uses DataGlobal, FormBankReconPostAll, FormCashMutation,
  FormBankMutationCancel, FormViewMutation;

procedure TfrmBankRecons.actCreateMutationAllExecute(Sender: TObject);
var
  dRekonDate: TDateTime;
  sCCY: string;
  sData: WideString;
  sMessage: string;
  sDiffAmount, sAccBankID, sAccID: string;
  xData, yData: string;
  bContinue: Boolean;
  iAccID: Int64;
  iAccBankID: Integer;
  dDiffAmount: Double;
  i: Integer;
begin
  inherited;
  try
    FBankAccNo := '';
    bContinue  := False;
    sData      := '';

    if (not VarIsEmpty(chkMutationType.EditValue)) and (not VarIsNull(chkMutationType.EditValue)) then
      bContinue := True
    else
      MessageDlg('Mutation type is not selected', mtError, [mbOk], 0);

    cdsBankReconcileTmp.DisableControls;
    if bContinue then
    begin
      if MessageDlg('Process create mutation ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Screen.Cursor   := crHourGlass;
        Application.ProcessMessages;
        cdsBankReconcileTmp.First;
        while not cdsBankReconcileTmp.Eof do
        begin
          dDiffAmount := cdsBankReconcileTmpDIFF_AMOUNT.AsFloat;
          iAccID      := cdsBankReconcileTmpACCID.AsLargeInt;
          iAccBankID  := cdsBankReconcileTmpACCBANKID.AsInteger;
          sCCY        := cdsBankReconcileTmpCCY.AsString;

          if sCCY = '' then
            sCCY := dmGlobal.RemoteServer.GetLocalCCY;

          if Length(sData) < 5000 then
            sData  := sData + '@'+IntToStr(iAccID)+';'+sCCY+';'+FormatFloat('#.00', dDiffAmount)+';'+IntToStr(iAccBankID)+';'
          else
          begin
            sMessage := dmGlobal.RemoteServer.BankReconOne(txtTransDate.Date, txtMutationDate.Date, chkMutationType.EditValue, sData);
            sData    := '@'+IntToStr(iAccID)+';'+sCCY+';'+FormatFloat('#.00', dDiffAmount)+';'+IntToStr(iAccBankID)+';';
          end;

          cdsBankReconcileTmp.Next;
        end;

        if Length(sData) > 0 then
          sMessage := dmGlobal.RemoteServer.BankReconOne(txtTransDate.Date, txtMutationDate.Date, chkMutationType.EditValue, sData);

        RefreshData;
        MessageDlg('Bank Mutation process has done', mtInformation, [mbOk], 0);
      end;

    end;
    cdsBankReconcileTmp.EnableControls;
    Screen.Cursor := crDefault;
  except
    on E : Exception do
    begin
      MessageDlg('Error while generating bank mutation, error : '+ E.Message, mtError, [mbOK], 0);
      Screen.Cursor   := crDefault;
      cdsBankReconcileTmp.EnableControls;
    end;
  end;
end;

procedure TfrmBankRecons.actCreateMutationAllUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := dmGlobal.RemoteServer.GetBrokerCode = 'DX';
end;

procedure TfrmBankRecons.actCreateMutationExecute(Sender: TObject);
var
  oForm: TForm;
  dtProcess: TDateTime;
  sMessage, sCMAmount, sDC: string;
  sData: WideString;
  i: integer;
  dDiffAmount: Double;
  bContinue: Boolean;
  iAccID: Int64;
  iAccBankID: Integer;
  sCCY: string;
  sDiffAmount: string;
begin
  inherited;
  try
    bContinue  := False;
    sData      := '';
    FBankAccNo := '';

    if (not VarIsEmpty(chkMutationType.EditValue)) and (not VarIsNull(chkMutationType.EditValue)) then
      bContinue := True
    else
      MessageDlg('Mutation type is not selected', mtError, [mbOk], 0);

    if bContinue then
    begin
      cdsBankReconcile.DisableControls;
      if MessageDlg('Process create mutation ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Screen.Cursor   := crHourGlass;

        for i := 0 to gvwBankRecon.Controller.SelectedRecordCount -1 do
        begin
          sDiffAmount := gvwBankRecon.Controller.SelectedRecords[i].Values[gvwBankReconDIFF_AMOUNT.Index];
          if gvwBankRecon.Controller.SelectedRecordCount = 1 then
          begin
            if InputQuery('Edit Amount', 'Insert Amount ', sDiffAmount) then
              dDiffAmount := StrToFloatDef(sDiffAmount, 0)
            else
            begin
              MessageDlg('Create mutation has been canceled', mtConfirmation, [mbOK], 0);
              cdsBankReconcile.EnableControls;
              Screen.Cursor   := crDefault;
              Exit;
            end;
          end
          else
            dDiffAmount := StrToFloatDef(sDiffAmount, 0);

          iAccID     := StrToInt64(gvwBankRecon.Controller.SelectedRecords[i].Values[gvwBankReconACCID.Index]);
          iAccBankID := StrToInt(gvwBankRecon.Controller.SelectedRecords[i].Values[gvwBankReconACCBANKID.Index]);
          sCCY       := gvwBankRecon.Controller.SelectedRecords[i].Values[gvwBankReconCCY.Index];

          if sCCY = '' then
            sCCY := dmGlobal.RemoteServer.GetLocalCCY;

          if Length(sData) < 5000 then
            sData  := sData + '@'+IntToStr(iAccID)+';'+sCCY+';'+FormatFloat('#.00', dDiffAmount)+';'+IntToStr(iAccBankID)+';'
          else
          begin
            sMessage := dmGlobal.RemoteServer.BankReconOne(txtTransDate.Date, txtMutationDate.Date, chkMutationType.EditValue, sData);
            sData    := '@'+IntToStr(iAccID)+';'+sCCY+';'+FormatFloat('#.00', dDiffAmount)+';'+IntToStr(iAccBankID)+';';
          end;

          FBankAccNo := FBankAccNo + QuotedStr(gvwBankRecon.Controller.SelectedRecords[i].Values[gvwBankReconBANKACCNO.Index]) + ',';
        end;

        if Length(sData) > 0 then
          sMessage := dmGlobal.RemoteServer.BankReconOne(txtTransDate.Date, txtMutationDate.Date, chkMutationType.EditValue, sData);

        RefreshData;
        MessageDlg('Bank Mutation process has done', mtInformation, [mbOk], 0);
      end;

      FBankAccNo := FBankAccNo + QuotedStr('0');
      cdsBankReconcile.EnableControls;
      Screen.Cursor   := crDefault;
    end;
  except
    on E : Exception do
    begin
      MessageDlg('Error while generating bank mutation, error : '+ E.Message, mtError, [mbOK], 0);
      Screen.Cursor := crDefault;
      cdsBankReconcile.EnableControls;
    end;
  end;

//  cdsCashMutation.Close;
//  cdsCashMutation.CreateDataSet;
//
//  cdsCashMutation.Append;
//  cdsCashMutationCMDATE.AsDateTime := txtTransDate.Date;
//  cdsCashMutationCMDESC.AsString := 'Cash Mutation From Bank Reconcile';
//  cdsCashMutationACCID.AsInteger := cdsBankReconcileTmpACCID.AsInteger;
//  cdsCashMutationACCNO.AsString := cdsBankReconcileTmpACCCODE.AsString;
//  cdsCashMutationACCBANKID.AsInteger := cdsBankReconcileTmpACCBANKID.AsInteger;
//  cdsCashMutationCCY.AsString := cdsBankReconcileTmpCCY.AsString;
//  cdsCashMutationCMAMT.AsFloat := cdsBankReconcileTmpDIFF_AMOUNT.AsFloat;
//  cdsCashMutationCMTYPE.AsString := 'C';
//  if cdsCashMutationCMAMT.AsFloat >= 0 then
//    cdsCashMutationDC.AsString := 'C'
//  else
//  begin
//    cdsCashMutationDC.AsString := 'D';
//    cdsCashMutationCMAMT.AsFloat := cdsCashMutationCMAMT.AsFloat * -1;
//  end;
//
//  cdsCashMutationACCNAME.AsString   := cdsBankReconcileTmpACCNAME.AsString;
//  cdsCashMutationBNACCNO.AsString   := cdsBankReconcileTmpBNACCNO.AsString;
//  cdsCashMutationBNACCNAME.AsString := cdsBankReconcileTmpBNACCNAME.AsString;
//  cdsCashMutationBNCODE.AsString    := cdsBankReconcileTmpBNCODE.AsString;
//
//  oForm := TfrmCashMutation.Create(nil);
//  Try
//    TfrmCashMutation(oForm).lcNav.Visible := False;
//    if oForm.ShowModal = mrOk then
//    begin
//      sData    := '@'+cdsCashMutationACCID.AsString+';'+cdsCashMutationCCY.AsString+';'+
//                  FormatFloat('#.00', cdsCashMutationCMAMT.AsFloat)+';'+cdsCashMutationACCBANKID.AsString;
//      sMessage := dmGlobal.RemoteServer.BankReconOne(cdsCashMutationACCID.AsLargeInt, cdsCashMutationCMDATE.AsDateTime, cdsCashMutationCMTYPE.AsString, sData);
//    end
//    else
//      sMessage := 'Selected Reconcile has been canceled';
//  Finally
//    FreeAndNil(oForm);
//  End;
//
//  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmBankRecons.actUploadDataExecute(Sender: TObject);
begin
  inherited;
  try
    if FileExists(txtBankRecon.Text) then
    begin
      cdsBankReconcileTmp.Filtered := False;
      ImportFileBank(cbBank.EditValue, txtBankRecon.Text);
      FilterByZero;
      MessageDlg('Uploading Bank Balance has done', mtInformation, [mbOk], 0);
    end;
  except
    on e: exception do
      MessageDlg(e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmBankRecons.actUploadMutationExecute(Sender: TObject);
var
  oForm: TfrmViewMutation;
  sFileName: string;
  bCon, bFiltered: Boolean;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    sFileName     := txtBankMovement.Text;
    bCon          := True;
    bFiltered     := False;
    FBankCode     := cbBank.EditValue;

    cdsBankReconcileTmp.DisableControls;
    if cdsBankReconcileTmp.Filtered then bFiltered := True;
    cdsBankReconcile.Filtered := False;

    if FileExists(sFileName) then
    begin
      if (cbBank.EditValue = 'PETA') or (cbBank.EditValue = 'BNLI') then
        LoadFromBankPermata(sFileName)
      else if cbBank.EditValue = 'BNGA' then
        LoadFromBankNiaga(sFileName)
      else if (cbBank.EditValue = 'BM') or (cbBank.EditValue = 'BMRI') then
        LoadFromBankBMRI(sFileName)
      else if (cbBank.EditValue = 'BNI') or (cbBank.EditValue = 'BBNI') then
        LoadFromBankBNI(sFileName)
      else if (cbBank.EditValue = 'BCA') or (cbBank.EditValue = 'BBCA') then
        LoadFromBankBCA(sFileName)
      else
      begin
        bCon := False;
        MessageDlg('Bank Mutation Not Ready', mtConfirmation, [mbOk], 0);
      end;
    end;
    Screen.Cursor := crDefault;

    cdsBankReconcileTmp.Filtered := bFiltered;
    cdsBankReconcileTmp.EnableControls;
    if bCon then
      MessageDlg('Uploading Bank Mutation has done', mtInformation, [mbOk], 0);
  except
    on e: exception do
    begin
      Screen.Cursor := crDefault;
      MessageDlg(e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmBankRecons.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsBankPosition.Close;
  cdsBankPosition.Params[0].AsDate   := DateOf(txtTransDate.Date);
//  cdsBankPosition.Params[1].AsString := cbBank.EditValue;
  cdsBankPosition.Open;

//  cdsBankReconcile.Close;
//  cdsBankReconcile.Params[0].AsDate   := DateOf(txtTransDate.Date);
//  cdsBankReconcile.Params[1].AsString := cbBank.EditValue;
//  cdsBankReconcile.Params[2].AsInteger:= chkAll.EditValue;
//  cdsBankReconcile.Open;

//  gvwBankRecon.ApplyBestFit();
end;

procedure TfrmBankRecons.BankBNI(AFileName: string);
var
  sFileName, sFileExt: string;

  oExcel, oSheet: OleVariant;

  sBankAccount, sBankAccountNo, sTanggal,
  sBalance, sBalancePoin, sCCY, sDate: string;

  i: integer;
  oFileList, oData: TStringList;
  sData, sKey: string;
  vFind: Variant;
  fBalance: Double;
  dtProcess: TDateTime;
  sErrorMsg: string;
  wDate, wMonth, wYear: Word;
  sDecimal: string;
begin
  sFileName := AFileName;
  sFileExt  := ExtractFileExt(sFileName);
  sErrorMsg := '';

  if LowerCase(sFileExt) = '.xls' then
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      ImportBankBNI(oSheet);
    finally
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end
  else
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    sKey  := 'BNCODE;BNACCNO';
    vFind := VarArrayCreate([0, 1], varVariant);

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    try
      for i := 0 to oFileList.Count -1 do
      begin
        sData               := oFileList.Strings[i];
        oData               := TStringList.Create;
        oData.Delimiter     := '|';
        oData.DelimitedText := sData;

        sBankAccountNo := oData.Strings[0];
        sBalance       := LeftStr(oData.Strings[4], Length(oData.Strings[4])-2);
        sDecimal       := RightStr(oData.Strings[4], 2);
        sTanggal       := oData.Strings[6];
        sCCY           := oData.Strings[8];
        wYear          := StrToInt(Copy(sTanggal, 0, 4));
        wMonth         := StrToInt(Copy(sTanggal, 5, 2));
        wDate          := StrToInt(Copy(sTanggal, 7, 2));
//        sDate          := Copy(sTanggal, 5, 2)+'/'+Copy(sTanggal, 7, 2)+'/'+Copy(sTanggal, 0, 4);

        FreeAndNil(oData);
        fBalance := StrToFloatDef(sBalance+'.'+sDecimal, 0);

        if (sBankAccountNo <> '') and (sCCY <> '') and (fBalance <> 0) then
        begin
          vFind[0] := FBankCode;
          vFind[1] := sBankAccountNo;

          if cdsBankPosition.Locate(sKey, vFind, []) then
          begin
            if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
              cdsBankPosition.Edit
            else
              Continue;
          end
          else
            cdsBankPosition.Append;

          cdsBankPositionTRDATE.AsDateTime := EncodeDate(wYear, wMonth, wDate); //StrToDate(sDate);
          cdsBankPositionBNCODE.AsString   := FBankCode;
          cdsBankPositionBNACCNO.AsString  := sBankAccountNo;
          cdsBankPositionCCY.AsString      := sCCY;
          cdsBankPositionSALDO.AsFloat     := fBalance;
          cdsBankPositionMODDA.AsDateTime  := dtProcess;
          cdsBankPositionMODUI.AsString    := dmGlobal.UserID;
          cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
          cdsBankPosition.Post;
        end;
      end;
    except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    end;

    if sErrorMsg = '' then
    begin
      cdsBankPosition.ApplyUpdates(-1);
      ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));
    end
    else
      MessageDlg(sErrorMsg, mtError, [mbOK], 0);
  end;
end;

procedure TfrmBankRecons.BankCIMB(AFileName: string);
var
  sFileName, sFileExt: string;

  oExcel, oSheet: OleVariant;

  sBankAccount, sBankAccountNo, sTanggal,
  sBalance, sBalancePoin, sCCY, sDate: string;

  i: integer;
  oFileList: TStringList;
  sData, sKey: string;
  vFind: Variant;
  fBalance: Double;
  dtProcess: TDateTime;
  sErrorMsg: string;
  wDate, wMonth, wYear: Word;
  sBnAccName: string;
begin
  sFileName := AFileName;
  sFileExt  := ExtractFileExt(sFileName);
  sErrorMsg := '';

  if LowerCase(sFileExt) = '.xls' then
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      ImportBankCIMB(oSheet);
    finally
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end
  else
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    sKey  := 'BNCODE;BNACCNO';
    vFind := VarArrayCreate([0, 1], varVariant);

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    try
      for i := 0 to oFileList.Count -1 do
      begin
        sData := oFileList.Strings[i];

        sBankAccountNo := Copy(sData, 0, 13);
        sBalance       := Copy(sData, 83, 13);
        sBalancePoin   := Copy(sData, 86, 2);
        sTanggal       := Copy(sData, 104, 10);
        sCCY           := Copy(sData, 130, 4);
        wYear          := StrToInt(Copy(sTanggal, 0, 4));
        wMonth         := StrToInt(Copy(sTanggal, 9, 2));
        wDate          := StrToInt(Copy(sTanggal, 6, 2));
        sBnAccName     := Copy(sData, 43, 82);
//        sDate          := Copy(sTanggal, 6, 2)+'/'+Copy(sTanggal, 9, 2)+'/'+Copy(sTanggal, 0, 4);

        fBalance := StrToFloatDef(sBalance, 0) + (StrToFloatDef(sBalancePoin, 0) / 100);

        if (sBankAccountNo <> '') and (sCCY <> '') and (fBalance <> 0) then
        begin
          vFind[0] := FBankCode;
          vFind[1] := sBankAccountNo;

          if cdsBankPosition.Locate(sKey, vFind, []) then
          begin
            if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
              cdsBankPosition.Edit
            else
              Continue;
          end
          else
            cdsBankPosition.Append;

          cdsBankPositionTRDATE.AsDateTime := EncodeDate(wYear, wMonth, wDate); //StrToDate(sDate);
          cdsBankPositionBNCODE.AsString   := FBankCode;
          cdsBankPositionBNACCNO.AsString  := sBankAccountNo;
          cdsBankPositionCCY.AsString      := sCCY;
          cdsBankPositionSALDO.AsFloat     := fBalance;
          cdsBankPositionMODDA.AsDateTime  := dtProcess;
          cdsBankPositionMODUI.AsString    := dmGlobal.UserID;
          cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
          cdsBankPosition.Post;
        end;
      end;
    except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    end;

    if sErrorMsg = '' then
    begin
      cdsBankPosition.ApplyUpdates(-1);
      ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));
    end
    else
      MessageDlg(sErrorMsg, mtError, [mbOK], 0);
  end;
end;

procedure TfrmBankRecons.BankPermata(AFileName: string);
var
  sFileName, sFileExt: string;

  oExcel, oSheet: OleVariant;

  sBankAccount, sBankAccountNo, sTanggal,
  sBalance, sBalancePoin, sCCY, sDate: string;

  i: integer;
  oFileList, oData: TStringList;
  sData, sKey: string;
  vFind: Variant;
  fBalance: Double;
  dtProcess: TDateTime;
  sErrorMsg, sBnAccName: string;
  wDate, wMonth, wYear: Word;
begin
  sFileName := AFileName;
  sFileExt  := ExtractFileExt(sFileName);
  sErrorMsg := '';

  if LowerCase(sFileExt) = '.xls' then
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      ImportBankPermata(oSheet);
    finally
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end
  else
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    sKey  := 'BNCODE;BNACCNO';
    vFind := VarArrayCreate([0, 1], varVariant);

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    try
      for i := 0 to oFileList.Count -1 do
      begin
        sData               := oFileList.Strings[i];
        oData               := TStringList.Create;
//        oData.Delimiter     := '|';
//        oData.DelimitedText := StringReplace(sData, ' ', '', [rfReplaceAll]);
        dmGlobal.ParseDelimited(oData, sData, '|');

        sBankAccountNo := FormatFloat('00000000000', StrToFloat(oData.Strings[0]));
        sBalance       := oData.Strings[4];
        sTanggal       := oData.Strings[5];
        sCCY           := oData.Strings[7];
        wYear          := StrToInt(Copy(sTanggal, 0, 4));
        wMonth         := StrToInt(Copy(sTanggal, 5, 2));
        wDate          := StrToInt(Copy(sTanggal, 7, 2));
        sBnAccName     := oData.Strings[3];
//        sDate          := Copy(sTanggal, 5, 2)+'/'+Copy(sTanggal, 7, 2)+'/'+Copy(sTanggal, 0, 4);

        FreeAndNil(oData);
        fBalance := StrToFloatDef(sBalance, 0);

        if (sBankAccountNo <> '') and (sCCY <> '') and (fBalance <> 0) then
        begin
          vFind[0] := FBankCode;
          vFind[1] := sBankAccountNo;

          if cdsBankPosition.Locate(sKey, vFind, []) then
          begin
            if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
              cdsBankPosition.Edit
            else
              Continue;
          end
          else
            cdsBankPosition.Append;

          cdsBankPositionTRDATE.AsDateTime := EncodeDate(wYear, wMonth, wDate);  //StrToDate(sDate);
          cdsBankPositionBNCODE.AsString   := FBankCode;
          cdsBankPositionBNACCNO.AsString  := sBankAccountNo;
          cdsBankPositionCCY.AsString      := sCCY;
          cdsBankPositionSALDO.AsFloat     := fBalance;
          cdsBankPositionBNACCNAME.AsString:= sBnAccName;
          cdsBankPositionMODDA.AsDateTime  := dtProcess;
          cdsBankPositionMODUI.AsString    := dmGlobal.UserID;
          cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
          cdsBankPosition.Post;
        end;
      end;
    except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    end;

    if sErrorMsg = '' then
    begin
      cdsBankPosition.ApplyUpdates(-1);
      ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));
    end
    else
      MessageDlg(sErrorMsg, mtError, [mbOK], 0);
  end;
end;

procedure TfrmBankRecons.cbBankPropertiesChange(Sender: TObject);
begin
  inherited;
  LoadRDNPosition;
end;

procedure TfrmBankRecons.cbBankPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  LoadRDNPosition;
end;

procedure TfrmBankRecons.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  actViewData.Execute;
end;

procedure TfrmBankRecons.chkDiffPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterByZero;
end;

procedure TfrmBankRecons.cxButton4Click(Sender: TObject);
var
  oForm: TfrmBankMutationCancel;
  sAccCode: string;
begin
  inherited;
  oForm := TfrmBankMutationCancel.Create(nil);

  if cdsBankReconcileTmp.RecordCount > 0 then
  begin
    sAccCode := gvwBankRecon.Controller.SelectedRecords[0].Values[gvwBankReconACCCODE.Index];
    if sAccCode = '' then
      MessageDlg('Please select one account before cancel mutation', mtWarning, [mbOk], 0)
    else
    begin
      with TfrmBankMutationCancel(oForm) do
      begin
        txtAccCode.Text := sAccCode;
        txtAccName.Text := gvwBankRecon.Controller.SelectedRecords[0].Values[gvwBankReconACCNAME.Index];

        ReconDate := txtTransDate.Date;
        AccID     := StrToInt(gvwBankRecon.Controller.SelectedRecords[0].Values[gvwBankReconACCID.Index]);

        cdsBankMutationCancel.Close;
        cdsBankMutationCancel.Params[0].AsDate    := ReconDate;
        cdsBankMutationCancel.Params[1].AsInteger := AccID;
        cdsBankMutationCancel.Open;
      end;

      oForm.ShowModal;
    end;
  end
  else
    MessageDlg('There is no data can ben viewed', mtError, [mbOk], 0);

  FreeAndNil(oForm);
  RefreshData;
end;

procedure TfrmBankRecons.cxButton6Click(Sender: TObject);
var
  oForm : TfrmViewMutation;
begin
  inherited;
  oForm := TfrmViewMutation.Create(nil);
  TfrmViewMutation(oForm).TransDate := txtTransDate.Date;
  oForm.ShowModal;
  FreeAndNil(oForm);
end;

procedure TfrmBankRecons.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  ImportFilesDialog.Filter := 'All Supported Files|*.csv;*.xls;*.txt|CSV Files|*.csv|Excel Files|*.xls|Text Files|*.txt';


  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    txtBankRecon.Text := sFileName;
end;

procedure TfrmBankRecons.FilterByZero;
begin
  if chkDiff.Checked then cdsBankReconcileTmp.Filtered := True else cdsBankReconcileTmp.Filtered := False;
end;

procedure TfrmBankRecons.FormCreate(Sender: TObject);
var
  dtTransDate: TDate;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;

  txtTransDate.Date    := dtTransDate;
  txtMutationDate.Date := dtTransDate;
//  cbBank.EditValue     := cbBank.Properties.Items.Items[0].Value;
  actViewData.Execute;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankRDN.Close;
    cdsLuBankRDN.Open;
  end;

//  cdsBankRecon.Close;
//  cdsBankRecon.Params[0].AsDate := txtTransDate.Date;
//  cdsBankRecon.Open;
end;

procedure TfrmBankRecons.FormShow(Sender: TObject);
begin
  inherited;
  FBankAccNo := '';
  LoadRDNPosition;

  cdsCashMutation.Close;
  cdsCashMutation.Params[0].AsInteger := -1;
  cdsCashMutation.Open;
end;

procedure TfrmBankRecons.GetRDNSaldo(ABankCode, ABNAccNo: string);
begin
  try
    if cdsRDNPosition.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, ABNAccNo]), []) then
    begin
      cdsBankReconcileTmpACCID.AsInteger     := cdsRDNPositionACCID.AsInteger;
      cdsBankReconcileTmpACCCODE.AsString    := cdsRDNPositionACCNO.AsString;
      cdsBankReconcileTmpACCBANKID.AsInteger := cdsRDNPositionACCBANKID.AsInteger;
      cdsBankReconcileTmpRDNPOS.AsFloat      := cdsRDNPositionRDNPOS.AsFloat;
      cdsBankReconcileTmpACCNAME.AsString    := cdsRDNPositionACCNAME.AsString;
      cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat;
    end;
  except
    ShowMessage(ABNAccNo+' - '+ABNAccNo);
  end;
end;

procedure TfrmBankRecons.ImportBankBCA(AFileName: String);
var
  slFile, slFileRow: TStringList;
  i: Integer;
  sUser, sBankAccNo, sCcy: String;
  fBalance: Extended;
  dtProcess, dtBalance: TDateTime;
  iYear, iMonth, iDay: Word;
  sKey: String;
  vFind: Variant;
label
  Finish;
begin
  sUser     := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey  := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  slFile    := TStringList.Create;
  slFileRow := TStringList.Create;
  Try
    slFile.LoadFromFile(AFileName);
    for i := 0 to slFile.Count - 1 do
    begin
      dmGlobal.ParseDelimited(slFileRow, slFile[i], ';');

      sBankAccNo := Trim(slFileRow[2]);
      sCcy       := Trim(slFileRow[6]);
      fBalance   := StrToFloatDef(slFileRow[7], -1);
      if Length(slFileRow[8]) = 8 then
      begin
        iYear  := StrToIntDef(Copy(slFileRow[8], 1, 4), 1);
        iMonth := StrToIntDef(Copy(slFileRow[8], 5, 2), 1);
        iDay   := StrToIntDef(Copy(slFileRow[8], 7, 2), 1);

        dtBalance := EncodeDate(iYear, iMonth, iDay);
      end
      else
        Continue;

      if (DateOf(dtBalance) <> DateOf(cdsBankPosition.Params[0].AsDate)) then
      begin
        MessageDlg('Your Data Upload Date Different with Trans Date. Cancel Upload!', mtInformation, [mbOK], 0);
        cdsBankPosition.CancelUpdates;
        cdsBankPosition.Refresh;
        Goto Finish;
      end;

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := FBankCode;
        vFind[1] := sBankAccNo;

        if cdsBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsBankPositionSALDO.AsFloat <> fBalance)then
            cdsBankPosition.Edit
          else
            Continue;
        end
        else
          cdsBankPosition.Append;

        cdsBankPositionTRDATE.AsDateTime   := dtBalance;
        cdsBankPositionBNCODE.AsString     := FBankCode;
        cdsBankPositionBNACCNO.AsString    := sBankAccNo;
        cdsBankPositionCCY.AsString        := sCcy;
        cdsBankPositionSALDO.AsFloat       := fBalance;
        cdsBankPositionMODDA.AsDateTime    := dtProcess;
        cdsBankPositionMODUI.AsString      := sUser;
        cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
        cdsBankPosition.Post;
      end;
    end;

    cdsBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));

    Finish:
  Finally
    FreeAndNil(slFileRow);
    FreeAndNil(slFile);
  End;
end;

procedure TfrmBankRecons.ImportBankBNI(ASheet: OleVariant);
var
  i, sPos: Integer;
  sTemp, sBankAccNo, sCcy, sBalance: String;
  fBalance: Extended;
  sErrorMsg: String;
  sUser: String;
  dtProcess: TDateTime;
  sKey: String;
  vFind: Variant;
begin
  sErrorMsg := '';

  sUser := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  i := 1;
  repeat
    Try
      sBankAccNo := '';
      sTemp := ASheet.Cells[i, 2].Value;
      if sTemp <> '' then
      begin
        sBankAccNo := LeftStr(sTemp, 9);
      end;
      sCcy := ASheet.Cells[i, 4].Value;
      sBalance := ASheet.Cells[i, 7].Value;
      sBalance := ReplaceStr(sBalance, ',', '');
      fBalance := StrToFloatDef(sBalance, -1);

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := FBankCode;
        vFind[1] := sBankAccNo;

        if cdsBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
            cdsBankPosition.Edit
          else
            Continue;
        end
        else
          cdsBankPosition.Append;

        cdsBankPositionTRDATE.AsDateTime := cdsBankPosition.Params[0].AsDate;
        cdsBankPositionBNCODE.AsString := FBankCode;
        cdsBankPositionBNACCNO.AsString := sBankAccNo;
        cdsBankPositionCCY.AsString := sCcy;
        cdsBankPositionSALDO.AsFloat := fBalance;
        cdsBankPositionMODDA.AsDateTime := dtProcess;
        cdsBankPositionMODUI.AsString := sUser;
        cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
        cdsBankPosition.Post;
      end;

    Except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    End;

    Inc(i);
  until (ASheet.Cells[i, 1].Value = '');

  if sErrorMsg = '' then
  begin
    cdsBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));
  end
  else
    MessageDlg(sErrorMsg, mtError, [mbOK], 0);

end;

procedure TfrmBankRecons.ImportBankCIMB(ASheet: OleVariant);
var
  i: Integer;
  sBankAccNo, sBankAccName, sCcy, sBalance: String;
  fBalance: Extended;
  sErrorMsg: String;
  sUser: String;
  dtProcess: TDateTime;
  sKey: String;
  vFind: Variant;
begin
  sErrorMsg := '';

  sUser := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  i := 1;
  repeat
    Try
      sBankAccNo := ASheet.Cells[i, 1].Value;
      sCcy := ASheet.Cells[i, 2].Value;
      sBalance := ASheet.Cells[i, 4].Value;
      fBalance := StrToFloatDef(sBalance, -1);

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := FBankCode;
        vFind[1] := sBankAccNo;

        if cdsBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
            cdsBankPosition.Edit
          else
            Continue;
        end
        else
          cdsBankPosition.Append;

        cdsBankPositionTRDATE.AsDateTime := cdsBankPosition.Params[0].AsDate;
        cdsBankPositionBNCODE.AsString := FBankCode;
        cdsBankPositionBNACCNO.AsString := sBankAccNo;
        cdsBankPositionCCY.AsString := sCcy;
        cdsBankPositionSALDO.AsFloat := fBalance;
        cdsBankPositionMODDA.AsDateTime := dtProcess;
        cdsBankPositionMODUI.AsString := sUser;
        cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
        cdsBankPosition.Post;
      end;

    Except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    End;

    Inc(i);
  Until (ASheet.Cells[i, 1].Value = '');

  if sErrorMsg = '' then
  begin
    cdsBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));
  end
  else
    MessageDlg(sErrorMsg, mtError, [mbOK], 0);

end;

procedure TfrmBankRecons.ImportBankData(ABank, AFileName: String);
var
  i: Integer;
  oExcel, oSheet: OleVariant;
  sBankCode, sBankAccNo, sBankAccName, sCcy: String;
  fBalance: Extended;
begin
  if ABank = 'BBCA' then ImportBankBCA(AFileName)
  else if ABank = 'BMRI' then ImportBankMandiri(AFileName)
  else if ABank = 'BNGA' then BankCIMB(AFileName)
  else if ABank = 'BBNI' then BankBNI(AFileName)
  else
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      if ABank = 'BNLI' then ImportBankPermata(oSheet);
    finally
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;

end;

procedure TfrmBankRecons.ImportBankMandiri(AFileName: String);
var
  slFile, slFileRow: TStringList;
  i: Integer;
  sUser, sBankAccNo, sCcy: String;
  fBalance: Extended;
  dtProcess, dtBalance: TDateTime;
  iYear, iMonth, iDay: Word;
  sKey: String;
  vFind: Variant;
  sBnAccName: string;
label
  Finish;
begin
  sUser := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  slFile := TStringList.Create;
  slFileRow := TStringList.Create;
  Try
    slFile.LoadFromFile(AFileName);
    for i := 0 to slFile.Count - 1 do
    begin
      dmGlobal.ParseDelimited(slFileRow, slFile[i], '||');

      if slFileRow.Count < 6 then
        Continue;

      sBankAccNo := Trim(slFileRow[2]);
      sCcy := Trim(slFileRow[3]);
      fBalance := StrToFloatDef(slFileRow[4], -1);
      sBnAccName := slFileRow[1];
      if Length(slFileRow[5]) = 8 then
      begin
        iYear := StrToIntDef(Copy(slFileRow[5], 1, 4), 1);
        iMonth := StrToIntDef(Copy(slFileRow[5], 5, 2), 1);
        iDay := StrToIntDef(Copy(slFileRow[5], 7, 2), 1);

        dtBalance := EncodeDate(iYear, iMonth, iDay);
      end
      else
        Continue;

      if (DateOf(dtBalance) <> DateOf(cdsBankPosition.Params[0].AsDate)) then
      begin
        Continue;
//        MessageDlg('Your Data Upload Date Different with Trans Date. Cancel Upload!', mtInformation, [mbOK], 0);
//        cdsBankPosition.CancelUpdates;
//        cdsBankPosition.Refresh;
//        Goto Finish;
      end;

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := FBankCode;
        vFind[1] := sBankAccNo;

        if cdsBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
            cdsBankPosition.Edit
          else
            Continue;
        end
        else
          cdsBankPosition.Append;

        cdsBankPositionTRDATE.AsDateTime := dtBalance;
        cdsBankPositionBNCODE.AsString := FBankCode;
        cdsBankPositionBNACCNO.AsString := sBankAccNo;
        cdsBankPositionCCY.AsString := sCcy;
        cdsBankPositionSALDO.AsFloat := fBalance;
        cdsBankPositionMODDA.AsDateTime := dtProcess;
        cdsBankPositionMODUI.AsString := sUser;
        cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
        cdsBankPositionBNACCNAME.AsString := sBnAccName;
        cdsBankPosition.Post;
      end;
    end;

    cdsBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(
       cdsBankPosition.RecordCount));

    Finish:

  Finally
    FreeAndNil(slFileRow);
    FreeAndNil(slFile);
  End;
end;

procedure TfrmBankRecons.ImportBankPermata(ASheet: OleVariant);
var
  i: Integer;
  sBankAccNo, sCcy, sBalance: String;
  fBalance: Extended;
  sErrorMsg: String;
  sUser: String;
  dtProcess: TDateTime;
  sKey: String;
  vFind: Variant;
begin
  sErrorMsg := '';

  sUser     := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([2, 1], varVariant);

  i := 1;
  repeat
    Try
      sBankAccNo := ASheet.Cells[i, 1].Value;
      sCcy       := ASheet.Cells[i, 9].Value;
      sBalance   := ASheet.Cells[i, 10].Value;
      fBalance   := StrToFloatDef(sBalance, -1);

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := FBankCode;
        vFind[1] := sBankAccNo;

        if cdsBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsBankPositionSALDO.AsFloat <> fBalance) and (cdsBankPositionAUTODEP.AsString = '0') then
            cdsBankPosition.Edit
          else
            Continue;
        end
        else
          cdsBankPosition.Append;

        cdsBankPositionTRDATE.AsDateTime   := cdsBankPosition.Params[0].AsDate;
        cdsBankPositionBNCODE.AsString     := FBankCode;
        cdsBankPositionBNACCNO.AsString    := sBankAccNo;
        cdsBankPositionCCY.AsString        := sCcy;
        cdsBankPositionSALDO.AsFloat       := fBalance;
        cdsBankPositionMODDA.AsDateTime    := dtProcess;
        cdsBankPositionMODUI.AsString      := sUser;
        cdsBankPositionUPLOADCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsBankPositionTRDATE.AsDateTime, 'BR', 'TBL_B_BANKUPLOAD');
        cdsBankPosition.Post;
      end;

    Except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    End;

    Inc(i);
  until (ASheet.Cells[i, 1].Value = '');

  if sErrorMsg = '' then
  begin
    cdsBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsBankPosition.RecordCount));
  end
  else
    MessageDlg(sErrorMsg, mtError, [mbOK], 0);

end;

procedure TfrmBankRecons.ImportFileBank(ABankName, AFileName: string);
begin
  Screen.Cursor := crHourGlass;
  cdsBankReconcileTmp.DisableControls;

  if (ABankName = 'BBCA') or (ABankName = 'BCA') then UploadBCA(AFileName) //ImportBankBCA(AFileName)
  else if (ABankName = 'BMRI') or (ABankName = 'BM') then UploadMandiri(AFileName) // ImportBankMandiri(AFileName)
  else if ABankName = 'BNGA' then UploadCMIB(AFileName) // BankCIMB(AFileName)
  else if ABankName = 'BNLI' then UploadPermata(AFileName) // BankPermata(AFileName)
  else if (ABankName = 'BBNI') or (ABankName = 'BNI') then UploadBNI(AFileName) // BankBNI(AFileName)
  else if (ABankName = 'BBRI') or (ABankName = 'BRI') then UploadBRI(AFileName); // BankBRI(AFileName);

  cdsBankReconcileTmp.EnableControls;
//  gvwBankRecon.ApplyBestFit();
  Screen.Cursor := crDefault;
end;

procedure TfrmBankRecons.LoadFromBankBCA(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond, iMiliS: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
  sDesc: string;
  iDesc: Integer;
  sDescp: string;
  sBankAccCode, sDC: string;
  bContinue: Boolean;
begin
  oBankList         := TStringList.Create;
  FPostCashDepList  := TStringList.Create;
  FPostCashWdrList  := TStringList.Create;
  FCashMutationList := TStringList.Create;

  cdsCashDep.Close;
  cdsCashDep.Params[0].AsInteger := -1;
  cdsCashDep.Open;

  cdsCashWdr.Close;
  cdsCashWdr.Params[0].AsInteger := -1;
  cdsCashWdr.Open;

  cdsCashDep.DisableControls;
  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
    begin
      oBankData := TStringList.Create;
      dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], ';' );

      sDesc := oBankData.Strings[16];
      iDesc := AnsiPos(LowerCase(dmGlobal.BankDefDesc), LowerCase(sDesc));
      sDescp:= oBankData.Strings[11];
      if (iDesc = 0) and (sDescp <> 'NCHG') then
      begin

        sDateTime    := oBankData.Strings[7];
        iYear        := StrToIntDef(Copy(sDateTime, 1, 4), 0);
        iMonth       := StrToIntDef(Copy(sDateTime, 5, 2), 0);
        iDay         := StrToIntDef(Copy(sDateTime, 7, 2), 0);
        iHour        := StrToIntDef(Copy(sDateTime, 9, 2), 0);
        iMinute      := StrToIntDef(Copy(sDateTime, 11, 2), 0);
        iSecond      := StrToIntDef(Copy(sDateTime, 13, 2), 0);
        iMiliS       := StrToIntDef(Copy(sDateTime, 15, 2), 0);
        dDateTime    := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, iMiliS);
        dDate        := EncodeDate(iYear, iMonth, iDay);
        sBankAccCode := oBankData.Strings[2];
        sDC          := oBankData.Strings[10];

        SavingToBankMutation(sDC, sBankAccCode, dDate, StrToFloatDef(oBankData.Strings[15], 0), sDesc, oBankData.Strings[12], dDateTime);
      end;
      FreeAndNil(oBankData);
    end;
  end;

  PostingCashMutation;
  cdsCashDep.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankRecons.LoadFromBankBMRI(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
  sDesc, sDesc1, sDesc2: string;
  iDesc: Integer;
  sBankAccCode, sDC: string;
begin
  oBankList         := TStringList.Create;
  FPostCashDepList  := TStringList.Create;
  FPostCashWdrList  := TStringList.Create;
  FCashMutationList := TStringList.Create;

  cdsCashDep.Close;
  cdsCashDep.Params[0].AsInteger := -1;
  cdsCashDep.Open;

  cdsCashWdr.Close;
  cdsCashWdr.Params[0].AsInteger := -1;
  cdsCashWdr.Open;

  cdsCashDep.DisableControls;
  cdsCashWdr.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
    begin
      oBankData := TStringList.Create;
      dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '||' );

      sDesc := oBankData.Strings[10];
      iDesc := AnsiPos(LowerCase(dmGlobal.BankDefDesc), LowerCase(sDesc));
      sDesc1:= LowerCase(oBankData.Strings[7]);
      sDesc2:= LowerCase(oBankData.Strings[7]);
      if (iDesc = 0) and (sDesc1 <> 'n829') and (sDesc2 <> 'n857') then
      begin
        sDateTime    := oBankData.Strings[4];
        iYear        := StrToIntDef(Copy(sDateTime, 1, 4), 0);
        iMonth       := StrToIntDef(Copy(sDateTime, 5, 2), 0);
        iDay         := StrToIntDef(Copy(sDateTime, 7, 2), 0);
        dDate        := EncodeDate(iYear, iMonth, iDay);
        dDateTime    := EncodeDateTime(iYear, iMonth, iDay, 0, 0, 0, 0);
        sBankAccCode := oBankData.Strings[2]; //FormatFloat('0000000000000', StrToFloat(oBankData.Strings[2]));
        sDC          := oBankData.Strings[8];

        SavingToBankMutation(sDC, sBankAccCode, dDate, StrToFloatDef(oBankData.Strings[9], 0), sDesc, oBankData.Strings[3], dDateTime);
      end;
      FreeAndNil(oBankData);
    end;
  end;

  PostingCashMutation;
  cdsCashDep.EnableControls;
  cdsCashWdr.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankRecons.LoadFromBankBNI(AFileName: string);
  procedure BNI_TXTFile(AFileName: string);
  var
    oBankList, oBankData: TStringList;
    i: Integer;
    iYear, iMonth, iDay,
    iHour, iMinute, iSecond: Integer;
    dDateTime, dDate: TDateTime;
    sDateTime: string;
    sDesc: string;
    iDesc: Integer;
    sBankAccCode, sDC: string;
  begin
    oBankList         := TStringList.Create;
    FPostCashDepList  := TStringList.Create;
    FPostCashWdrList  := TStringList.Create;
    FCashMutationList := TStringList.Create;

    cdsCashDep.Close;
    cdsCashDep.Params[0].AsInteger := -1;
    cdsCashDep.Open;

    cdsCashWdr.Close;
    cdsCashWdr.Params[0].AsInteger := -1;
    cdsCashWdr.Open;

    cdsCashDep.DisableControls;
    cdsCashWdr.DisableControls;

    oBankList.LoadFromFile(AFilename);
    for i := 1 to oBankList.Count -1 do
    begin
      if oBankList.Strings[i] <> '' then
      begin
        oBankData := TStringList.Create;
        dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '|' );

        sDesc := oBankData.Strings[16];
        iDesc := AnsiPos(LowerCase(dmGlobal.BankDefDesc), LowerCase(sDesc));
        if iDesc = 0 then
        begin
          sDateTime    := oBankData.Strings[4];
          iYear        := StrToIntDef(Copy(sDateTime, 7, 4), 0);
          iMonth       := StrToIntDef(Copy(sDateTime, 4, 2), 0);
          iDay         := StrToIntDef(Copy(sDateTime, 1, 2), 0);
          dDate        := EncodeDate(iYear, iMonth, iDay);
          iHour        := StrToIntDef(Copy(oBankData.Strings[5], 1, 2), 0);
          iMinute      := StrToIntDef(Copy(oBankData.Strings[5], 3, 2), 0);
          iSecond      := StrToIntDef(Copy(oBankData.Strings[5], 3, 2), 0);
          dDateTime    := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, 0);
          sBankAccCode := oBankData.Strings[0];
          sDC          := oBankData.Strings[7];

          SavingToBankMutation(sDC, sBankAccCode, dDate, StrToFloatDef(oBankData.Strings[8], 0), sDesc, oBankData.Strings[15], dDateTime);
        end;
        FreeAndNil(oBankData);
      end;
    end;

    PostingCashMutation;
    cdsCashDep.EnableControls;
    cdsCashWdr.EnableControls;
    FreeAndNil(oBankList);
  end;

  procedure BNI_XLSFIle(AFileName: string);
  var
    oExcel, oSheet: OleVariant;
    i: Integer;
    iYear, iMonth, iDay,
    iHour, iMinute, iSecond: Integer;
    dDateTime, dDate: TDateTime;
    sDateTime: string;
    sDesc: string;
    iDesc: Integer;
    sBankAccCode, sDC: string;
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      i := 1;
      repeat
        sDesc := oSheet.Cells[i, 17].Value;
        iDesc := AnsiPos(LowerCase(dmGlobal.BankDefDesc), LowerCase(sDesc));
        if iDesc = 0 then
        begin
          sDateTime    := oSheet.Cells[i, 5];
          iYear        := StrToIntDef(Copy(sDateTime, 7, 4), 0);
          iMonth       := StrToIntDef(Copy(sDateTime, 4, 2), 0);
          iDay         := StrToIntDef(Copy(sDateTime, 1, 2), 0);
          dDate        := EncodeDate(iYear, iMonth, iDay);
          iHour        := StrToIntDef(Copy(oSheet.Cells[i, 6].Value, 1, 2), 0);
          iMinute      := StrToIntDef(Copy(oSheet.Cells[i, 6].Value, 3, 2), 0);
          iSecond      := StrToIntDef(Copy(oSheet.Cells[i, 6].Value, 3, 2), 0);
          dDateTime    := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, 0);
          sBankAccCode := oSheet.Cells[i, 1].Value;
          sDC          := oSheet.Cells[i, 8].Value;

          SavingToBankMutation(sDC, sBankAccCode, dDate, StrToFloatDef(oSheet.Cells[i, 9].Value, 0), sDesc, oSheet.Cells[i, 16].Value, dDateTime);
        end;

        Inc(i);
      until (oSheet.Cells[i, 1].Value);

    finally
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;
var
  sFileExt: string;
begin
  sFileExt := LowerCase(ExtractFileExt(AFileName));
  if sFileExt = '.xls' then
    BNI_XLSFIle(AFileName)
  else
    BNI_TXTFile(AFileName);
end;

procedure TfrmBankRecons.LoadFromBankNiaga(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond, iMili: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
  sData: string;
  sDesc: string;
  iDesc: Integer;
  sBankAccCode, sDC: string;
begin
  oBankList         := TStringList.Create;
  FPostCashDepList  := TStringList.Create;
  FPostCashWdrList  := TStringList.Create;
  FCashMutationList := TStringList.Create;

  cdsCashDep.Close;
  cdsCashDep.Params[0].AsInteger := -1;
  cdsCashDep.Open;

  cdsCashWdr.Close;
  cdsCashWdr.Params[0].AsInteger := -1;
  cdsCashWdr.Open;

  cdsCashDep.DisableControls;
  cdsCashWdr.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
    begin
      sData := oBankList.Strings[i];

      sDesc := Copy(sData, 284, 140);
      iDesc := AnsiPos(LowerCase(dmGlobal.BankDefDesc), LowerCase(sDesc));

      if iDesc = 0 then
      begin
        sDateTime    := Copy(sData, 91, 12);
        iYear        := StrToIntDef(Copy(sDateTime, 1, 4), 0);
        iMonth       := StrToIntDef(Copy(sDateTime, 5, 2), 0);
        iDay         := StrToIntDef(Copy(sDateTime, 7, 2), 0);
        iHour        := StrToIntDef(Copy(sDateTime, 9, 2), 0);
        iMinute      := StrToIntDef(Copy(sDateTime, 11, 2), 0);
        iSecond      := StrToIntDef(Copy(sDateTime, 13, 2), 0);
        iMili        := StrToIntDef(Copy(sDateTime, 15, 2), 0);
        dDateTime    := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, iMili);
        dDate        := EncodeDate(iYear, iMonth, iDay);
        sBankAccCode := FormatFloat('0000000000000', StrToFloat(Copy(sData, 1, 13)));
        sDC          := Copy(sData, 148, 1);

        SavingToBankMutation(sDC, sBankAccCode, dDate, StrToFloatDef(Copy(sData, 149, 15), 0), sDesc, Copy(sData, 125, 3), dDateTime);
      end;
    end;
  end;

  PostingCashMutation;
  cdsCashDep.EnableControls;
  cdsCashWdr.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankRecons.LoadFromBankPermata(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond, iMiliS: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
  sDesc: string;
  iDesc: Integer;
  sDescp: string;
  sBankAccCode, sDC: string;
  bContinue: Boolean;
  sFileExt: string;
begin
  oBankList         := TStringList.Create;
  FPostCashDepList  := TStringList.Create;
  FPostCashWdrList  := TStringList.Create;
  FCashMutationList := TStringList.Create;

  sFileExt := LowerCase(ExtractFileExt(AFileName));

  cdsCashDep.Close;
  cdsCashDep.Params[0].AsInteger := -1;
  cdsCashDep.Open;

  cdsCashWdr.Close;
  cdsCashWdr.Params[0].AsInteger := -1;
  cdsCashWdr.Open;

  cdsCashDep.DisableControls;
  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
    begin
      oBankData := TStringList.Create;
      if sFileExt = '.csv' then
        dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], ',' )
      else
        dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '|' );

      sDesc := oBankData.Strings[18];
      iDesc := AnsiPos(LowerCase(dmGlobal.BankDefDesc), LowerCase(sDesc));
      sDescp:= oBankData.Strings[13];
      if (iDesc = 0) and (sDescp <> 'NCHG') then
      begin
        sDateTime    := oBankData.Strings[17];
        iYear        := StrToIntDef(Copy(sDateTime, 1, 4), 0);
        iMonth       := StrToIntDef(Copy(sDateTime, 5, 2), 0);
        iDay         := StrToIntDef(Copy(sDateTime, 7, 2), 0);
        iHour        := StrToIntDef(Copy(sDateTime, 9, 2), 0);
        iMinute      := StrToIntDef(Copy(sDateTime, 11, 2), 0);
        iSecond      := StrToIntDef(Copy(sDateTime, 13, 2), 0);
        iMiliS       := StrToIntDef(Copy(sDateTime, 15, 2), 0);
        dDateTime    := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, iMiliS);
        dDate        := EncodeDate(iYear, iMonth, iDay);
        sBankAccCode := FormatFloat('00000000000', StrToFloat(oBankData.Strings[0]));
        sDC          := oBankData.Strings[11];

        SavingToBankMutation(sDC, sBankAccCode, dDate, StrToFloatDef(oBankData.Strings[12], 0), sDesc, oBankData.Strings[8], dDateTime);
      end;
      FreeAndNil(oBankData);
    end;
  end;

  PostingCashMutation;
  cdsCashDep.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankRecons.LoadRDNPosition;
begin
  if not cdsBankList.Active then
    cdsBankList.Open;

  if cbBank.EditValue <> null then
  begin
    if cdsBankList.Locate('BNCODE', cbBank.EditValue, []) then
      FBankCode := cdsBankListBNCODE.AsString
    else
      FBankCode := '';
//    FBankCode := cbBank.EditValue;
  end;

  if not VarIsNull(txtTransDate.Date) then
  begin
//    if (FDate <> txtTransDate.Date) then
    begin
      cdsRDNPosition.Close;
      cdsRDNPosition.Params[0].AsDate   := txtTransDate.Date;
      cdsRDNPosition.Params[1].AsString := FBankCode;
      cdsRDNPosition.Open;

      cdsBankReconcileTmp.Close;
      cdsBankReconcileTmp.CreateDataSet;

      cdsBankReconcileTmp.DisableControls;
      cdsRDNPosition.DisableControls;

      cdsRDNPosition.First;
      while not cdsRDNPosition.Eof do
      begin
        cdsBankReconcileTmp.Append;
        cdsBankReconcileTmpTRDATE.AsDateTime   := txtTransDate.Date;
        cdsBankReconcileTmpBNCODE.AsString     := cdsRDNPositionBNCODE.AsString;
        cdsBankReconcileTmpACCID.AsInteger     := cdsRDNPositionACCID.AsInteger;
        cdsBankReconcileTmpACCCODE.AsString    := cdsRDNPositionACCNO.AsString;
        cdsBankReconcileTmpACCBANKID.AsInteger := cdsRDNPositionACCBANKID.AsInteger;
        cdsBankReconcileTmpRDNPOS.AsFloat      := cdsRDNPositionRDNPOS.AsFloat;
        cdsBankReconcileTmpACCNAME.AsString    := cdsRDNPositionACCNAME.AsString;
        cdsBankReconcileTmpBANKACCNO.AsString  := cdsRDNPositionBANKACCNO.AsString;
        cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := - cdsRDNPositionRDNPOS.AsFloat;
        cdsBankReconcileTmpBNINITIAL.AsString  := cdsRDNPositionBNINITIAL.AsString;
        cdsBankReconcileTmp.Post;

        cdsRDNPosition.Next;
      end;
      FilterByZero;

      cdsBankReconcileTmp.EnableControls;
      cdsRDNPosition.EnableControls;
  //    gvwBankRecon.ApplyBestFit();

      FDate       := txtTransDate.Date;
      FLoadBNCode := FBankCode;
    end;
  end;
end;

procedure TfrmBankRecons.PostAll1Click(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  oForm := TfrmBankReconPostAll.Create(nil);
  TfrmBankReconPostAll(oForm).TransDate := txtTransDate.Date;

  oForm.Show;
end;

procedure TfrmBankRecons.PostingCashDW;
var
  i: Integer;
  sMsg: string;
  iCashDep, iCashWdr: Integer;
begin
  iCashDep := 0;
  iCashWdr := 0;

  if FPostCashDepList.Count > 0 then
  begin
    cdsCashDep.ApplyUpdates(-1);
    for i := 0 to FPostCashDepList.Count -1 do
    begin
      if not dmGlobal.RemoteServer.PostCashDep(StrToInt64(FPostCashDepList.Strings[i]), sMsg) then
        Inc(iCashDep);
    end;
  end;
  FreeAndNil(FPostCashDepList);

  if FPostCashWdrList.Count > 0 then
  begin
    cdsCashWdr.ApplyUpdates(-1);
    for i := 0 to FPostCashWdrList.Count -1 do
    begin
      if not dmGlobal.RemoteServer.PostCashWdr(StrToInt64(FPostCashWdrList.Strings[i]), sMsg) then
        Inc(iCashWdr);
    end;
  end;

  if (iCashDep <> 0) and (iCashWdr <> 0) then
    MessageDlg(IntToStr(iCashDep)+' Fail Post Cash Deposit and '+IntToStr(iCashWdr)+' Fail Post Cash Withdraw', mtInformation, [mbOk], 0);
  FreeAndNil(FPostCashWdrList);
end;

procedure TfrmBankRecons.PostingCashMutation;
var
  i, iErrMsg: Integer;
  sMsg, sErrMsg: string;
begin
  iErrMsg := 0;
  sErrMsg := '';

  if FCashMutationList.Count > 0 then
  begin
    cdsCashMutation.ApplyUpdates(-1);
    for i := 0 to FCashMutationList.Count -1 do
    begin
      if not dmGlobal.RemoteServer.CashMutationPosting(StrToInt64(FCashMutationList.Strings[i]), sMsg) then
      begin
        Inc(iErrMsg);
        sErrMsg := IntToStr(iErrMsg)+'. '+ sMsg + #13;
      end;
    end;
  end;
  FreeAndNil(FCashMutationList);

  if (iErrMsg <> 0) then
    MessageDlg(IntToStr(iErrMsg)+' Fail Posting Cash Deposit, Error Message(s) : '+#13+sErrMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmBankRecons.RefreshData;
begin
  cdsRDNPosition.Close;
  cdsRDNPosition.Params[0].AsDate   := txtTransDate.Date;
  cdsRDNPosition.Params[1].AsString := FBankCode;
  cdsRDNPosition.Open;

  if FBankAccNo = '' then
    cdsBankReconcileTmp.Filtered := False
  else
  begin
    if Length(FBankAccNo) > 100 then
      cdsBankReconcileTmp.Filtered := False
    else
    begin
      cdsRDNPosition.Filter   := '(BANKACCNO in ('+FBankAccNo+'))';
      cdsRDNPosition.Filtered := True;
    end;
  end;

  cdsBankReconcileTmp.DisableControls;
  cdsRDNPosition.First;
  while not cdsRDNPosition.Eof do
  begin
    if cdsBankReconcileTmp.Locate('BANKACCNO', cdsRDNPositionBANKACCNO.AsString, []) then
    begin
      cdsBankReconcileTmp.Edit;
      cdsBankReconcileTmpRDNPOS.AsFloat      := cdsRDNPositionRDNPOS.AsFloat;
      cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat;
      cdsBankReconcileTmp.Post;
    end;
    cdsRDNPosition.Next;
  end;
  FilterByZero;
  cdsBankReconcileTmp.EnableControls;

  cdsRDNPosition.Filtered := False;
  FBankAccNo := '';
end;

procedure TfrmBankRecons.SaveBankMutation(ADC, ABankAccCode: string; ADate: TDate; AAmount: Double; ADesc, ACCY: string; ADateTime: TDateTime);
begin
  if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([FBankCode, ABankAccCode]), []) then
  begin
    if ADC = 'C' then
    begin
      cdsCashDepByDate.Close;
      cdsCashDepByDate.Params[0].AsDate    := ADate;
      cdsCashDepByDate.Params[1].AsInteger := cdsBankReconcileTmpACCID.AsInteger;
      cdsCashDepByDate.Params[2].AsFloat   := AAmount;
      cdsCashDepByDate.Params[3].AsString  := ADesc;
      cdsCashDepByDate.Open;

      if cdsCashDepByDate.IsEmpty then
      begin
        cdsCashDep.Append;
        cdsCashDepCDID.AsLargeInt        := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHDEP');
        cdsCashDepCDCODE.AsString        := 'CD-'+FormatDateTime('MMYYYY',FDate)+'-'+FormatFloat('0000000000',dmGlobal.RemoteServer.GetSeq('TBL_B_CASHDEP'));
        cdsCashDepCDDATE.AsDateTime      := ADate;
        cdsCashDepCDDESC.AsString        := ADesc;
        cdsCashDepACCID.AsInteger        := cdsBankReconcileTmpACCID.AsInteger;
        cdsCashDepACCNO.AsString         := cdsBankReconcileTmpACCCODE.AsString;
        cdsCashDepACCBANKID.AsInteger    := cdsBankReconcileTmpACCBANKID.AsInteger;
        cdsCashDepCCY.AsString           := ACCY;
        cdsCashDepCDAMT.AsFloat          := AAmount;
        cdsCashDepPOSTED.AsString        := '0';
        cdsCashDepMODDA.AsDateTime       := Now;
        cdsCashDepMODUI.AsString         := dmGlobal.UserID;
        cdsCashDepENTRYDATE.AsDateTime   := Now;
        cdsCashDepCANCEL.AsString        := '0';
        cdsCashDepDEP_TYPE.AsString      := 'R';
        cdsCashDepUPLOAD_TIME.AsDateTime := ADateTime;

        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Close;
        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Params[0].AsInteger := cdsCashDepACCID.AsInteger;
        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Params[1].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Open;

        if dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Locate('BANKACCNO', ABankAccCode, []) then
        begin
          cdsCashDepACTLED_ACCID.AsInteger := dmGlobal.IntDataLookup.cdsLuBankRDNByAccountACCID.AsInteger;
          cdsCashDepACTLED_SEQID.AsInteger := dmGlobal.IntDataLookup.cdsLuBankRDNByAccountACTLED_SEQID.AsInteger;
        end;
        cdsCashDep.Post;
        FPostCashDepList.Add(cdsCashDepCDID.AsString);
      end;
    end
    else
    begin
      cdsCashWdrByDate.Close;
      cdsCashWdrByDate.Params[0].AsDate    := ADate;
      cdsCashWdrByDate.Params[1].AsInteger := cdsBankReconcileTmpACCID.AsInteger;
      cdsCashWdrByDate.Params[2].AsFloat   := AAmount;
      cdsCashWdrByDate.Params[3].AsString  := ADesc;
      cdsCashWdrByDate.Open;

      if cdsCashWdrByDate.IsEmpty then
      begin
        cdsCashWdr.Append;
        cdsCashWdrCWID.AsLargeInt            := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR');
        cdsCashWdrCWDATE.AsDateTime          := ADate;
        cdsCashWdrCWCODE.AsString            := 'CW-'+FormatDateTime('MMYYYY',dmGlobal.RemoteServer.GetTransDate)+'-'+FormatFloat('0000000000',dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR'));
        cdsCashWdrACCID.AsInteger            := cdsBankReconcileTmpACCID.AsInteger;
        cdsCashWdrACCNO.AsString             := cdsBankReconcileTmpACCCODE.AsString;
        cdsCashWdrSOURCE_ACCBANKID.AsInteger := cdsBankReconcileTmpACCBANKID.AsInteger ;
        cdsCashWdrCCY.AsString               := ACCY;
        cdsCashWdrCWAMT.AsFloat              := AAmount;
        cdsCashWdrTRANSFER_AMT.AsFloat       := AAmount;
        cdsCashWdrWDR_TYPE.AsString          := 'R';
        cdsCashWdrCWDESC.AsString            := ADesc;
        cdsCashWdrCANCEL.AsString            := '0';
        cdsCashWdrPOSTED.AsString            := '0';
        cdsCashWdrENTRYDATE.AsDateTime       := Now;
        cdsCashWdrUPLOAD_TIME.AsDateTime     := ADateTime;

        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Close;
        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Params[1].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
        dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Open;

        if dmGlobal.IntDataLookup.cdsLuBankRDNByAccount.Locate('BANKACCNO', ABankAccCode, []) then
        begin
          cdsCashWdrACTLED_ACCID.AsInteger := dmGlobal.IntDataLookup.cdsLuBankRDNByAccountACCID.AsInteger;
          cdsCashWdrACTLED_SEQID.AsInteger := dmGlobal.IntDataLookup.cdsLuBankRDNByAccountACTLED_SEQID.AsInteger;
        end;
        cdsCashWdr.Post;
        FPostCashWdrList.Add(cdsCashWdrCWID.AsString);
      end;
    end;
  end;
end;

procedure TfrmBankRecons.SavingToBankMutation(ADC, ABankAccCode: string;
  ADate: TDate; AAmount: Double; ADesc, ACCY: string; ADateTime: TDateTime);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccountBank.Active then
      cdsLuAccountBank.Open;

    if cdsLuAccountBank.Locate('BNCODE;BANKACCNO', VarArrayOf([FBankCode, ABankAccCode]), []) then
    begin
      cdsCashMutation.Append;
      cdsCashMutationCMID.AsLargeInt    := dmGlobal.RemoteServer.GetSeq('main.B_CASH_MUTATION');
      cdsCashMutationCMCODE.AsString    := 'CM-' +FormatDateTime('YYYYMM', ADate)+'-'+Format('%.10d', [cdsCashmutationCMID.AsLargeInt]);
      cdsCashMutationCMDATE.AsDateTime  := ADate;
      cdsCashMutationCMDESC.AsString    := ADesc;
      cdsCashMutationACCID.AsLargeInt   := cdsLuAccountBankACCID.AsLargeInt;
      cdsCashMutationACCNO.AsString     := cdsLuAccountBankACCCODE.AsString;
      cdsCashMutationACCBANKID.AsInteger:= cdsLuAccountBankACCBANKID.AsInteger;
      cdsCashMutationDC.AsString        := ADC;
      cdsCashMutationCCY.AsString       := ACCY;
      cdsCashMutationCMAMT.AsFloat      := AAmount;
      cdsCashMutation.Post;

      FCashMutationList.Add(cdsCashMutationCMID.AsString);
    end;
  end;
end;

procedure TfrmBankRecons.txtBankMovementPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  ImportFilesDialog.Filter := 'All Supported Files|*.csv;*.xls;*.txt|CSV Files|*.csv|Excel Files|*.xls|Text Files|*.txt';

  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    txtBankMovement.Text := sFileName;
end;

procedure TfrmBankRecons.txtTransDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  LoadRDNPosition;
end;

procedure TfrmBankRecons.UploadBCA(AFileName: string);
var
  oFileList, oFileRow, oLostData: TStringList;
  i: Integer;
  sDate, sBankAccNo, sBankCode, sFileName: string;
  wDate, wMonth, wYear: Word;
begin
  oFileList := TStringList.Create;
  oLostData := TStringList.Create;
  sBankCode := FBankCode;

  oFileList.LoadFromFile(AFileName);
  for i := 0 to oFileList.Count -1 do
  begin
    if oFileList.Strings[i] <> '' then
    begin
      oFileRow := TStringList.Create;
      dmGlobal.ParseDelimited(oFileRow, oFileList.Strings[i], ';');

      sDate  := oFileRow.Strings[8];
      wYear  := StrToInt(Copy(sDate, 1, 4));
      wMonth := StrToInt(Copy(sDate, 5, 2));
      wDate  := StrToInt(Copy(sDate, 7, 2));

      if StrToFloatDef(oFileRow.Strings[7], 0) <> 0 then
      begin
        sBankAccNo := Trim(oFileRow.Strings[2]);

        if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([sBankCode, sBankAccNo]), []) then
        begin
          cdsBankReconcileTmp.Edit;
          cdsBankReconcileTmpTRDATE.AsDateTime  := EncodeDate(wYear, wMonth, wDate);
          cdsBankReconcileTmpBNCODE.AsString    := sBankCode;
          cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
          cdsBankReconcileTmpCCY.AsString       := oFileRow.Strings[6];
          cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(oFileRow.Strings[7], -1);
          cdsBankReconcileTmpBNACCNAME.AsString := oFileRow.Strings[5];
          cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
          cdsBankReconcileTmp.Post;
        end
        else
          oLostData.Add(oFileList.Strings[i]);
      end;
    end;
    FreeAndNil(oFileRow);
  end;

  if oLostData.Count > 0 then
  begin
    if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      SaveDialog.FileName := 'BCA-'+txtTransDate.Text+'.txt';
      SaveDialog.Execute(Handle);
      sFileName := SaveDialog.FileName;
      if sFileName <> '' then
        oLostData.SaveToFile(sFileName);
    end;
  end;

  FreeAndNil(oLostData);
  FreeAndNil(oFileList);
end;

procedure TfrmBankRecons.UploadBNI(AFileName: string);
  procedure UploadingText(AFileName, ABankCode: string);
  var
    oFileList, oFileRow, oLostData: TStringList;
    i: Integer;
    sDate, sBankAccNo, sFileName: string;
    wDate, wMonth, wYear: Word;
    sDecimal, sBalance: string;
  begin
    oFileList := TStringList.Create;
    oLostData := TStringList.Create;

    oFileList.LoadFromFile(AFileName);
    for i := 0 to oFileList.Count -1 do
    begin
      if oFileList.Strings[i] <> '' then
      begin
        oFileRow := TStringList.Create;
        dmGlobal.ParseDelimited(oFileRow, oFileList.Strings[i], '|');

        sDate  := oFileRow.Strings[6];
        wYear  := StrToInt(Copy(sDate, 0, 4));
        wMonth := StrToInt(Copy(sDate, 5, 2));
        wDate  := StrToInt(Copy(sDate, 7, 2));

        if StrToFloatDef(oFileRow.Strings[4], 0) <> 0 then
        begin
          sBankAccNo := oFileRow.Strings[0];

          sBalance   := LeftStr(oFileRow.Strings[4], Length(oFileRow.Strings[4])-2);
          sDecimal   := RightStr(oFileRow.Strings[4], 2);

          if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, sBankAccNo]), []) then
          begin
            cdsBankReconcileTmp.Edit;
            cdsBankReconcileTmpTRDATE.AsDateTime  := EncodeDate(wYear, wMonth, wDate);
            cdsBankReconcileTmpBNCODE.AsString    := ABankCode;
            cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString       := oFileRow.Strings[8];
            cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(sBalance+'.'+sDecimal, 0);
            cdsBankReconcileTmpBNACCNAME.AsString := '';
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;
          end
          else
            oLostData.Add(oFileList.Strings[i]);
        end;
      end;
      FreeAndNil(oFileRow);
    end;

    if oLostData.Count > 0 then
    begin
      if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        SaveDialog.FileName := 'BNI-'+txtTransDate.Text+'.txt';
        SaveDialog.Execute(Handle);
        sFileName := SaveDialog.FileName;
        if sFileName <> '' then
          oLostData.SaveToFile(sFileName);
      end;
    end;
    
    FreeAndNil(oLostData);
    FreeAndNil(oFileList);
  end;

  procedure UploadingXLS(AFileName, ABankCode: string);
  var
    oExcel, oSheet: OleVariant;
    i, j: Integer;
    sBankAccNo, sFileName: string;
    oLostData: TStringList;
  begin
    try
      oLostData := TStringList.Create;
      oExcel    := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      i := 1;
      repeat
        if StrToFloatDef(ReplaceStr(oSheet.Cells[i, 7].Value, ',', ''), 0) <> 0 then
        begin
          sBankAccNo := LeftStr(oSheet.Cells[i, 2].Value, 9);

          if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, sBankAccNo]), []) then
          begin
            cdsBankReconcileTmp.Edit;
            cdsBankReconcileTmpTRDATE.AsDateTime  := txtTransDate.Date;
            cdsBankReconcileTmpBNCODE.AsString    := ABankCode;
            cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString       := oSheet.Cells[i, 9].Value;
            cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(ReplaceStr(oSheet.Cells[i, 7].Value, ',', ''), 0);
            cdsBankReconcileTmpBNACCNAME.AsString := '';
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;
          end
          else
          begin
            for j := 0 to oSheet.LastCol -1 do
              sFileName := oSheet.AsString[j, i];
            oLostData.Add(sFileName);
          end;
        end;

        Inc(i);
      until (oExcel.Cells[i, 1].Value = '');

      if oLostData.Count > 0 then
      begin
        if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          SaveDialog.FileName := 'BNI-'+txtTransDate.Text+'.txt';
          SaveDialog.Execute(Handle);
          sFileName := SaveDialog.FileName;
          if sFileName <> '' then
            oLostData.SaveToFile(sFileName);
        end;
      end;

    finally
      FreeAndNil(oLostData);
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;

var
  sBankCode, sFileName, sFilExt: string;
begin
  sBankCode := FBankCode;
  sFileName := AFileName;
  sFilExt   := ExtractFileExt(sFileName);

  if LowerCase(sFilExt) = '.xls' then
    UploadingXLS(sFileName, sBankCode)
  else
    UploadingText(sFileName, sBankCode);
end;

procedure TfrmBankRecons.UploadBRI(AFileName: string);
var
  oExcel, oSheet: OleVariant;
  i, j: Integer;
  sBankAccNo, sFileName: string;
  oLostData: TStringList;
  sBankCode, sFilExt: string;
begin
  try
    sBankCode := FBankCode;
    sFileName := AFileName;

    oLostData := TStringList.Create;
    oExcel    := CreateOleObject('Excel.Application');
    oExcel.WorkBooks.Open(AFileName);
    oExcel.DisplayAlerts := False;

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    i := 1;
    repeat
      if StrToFloatDef(oSheet.Cells[i, 16].Value, 0) <> 0 then
      begin
        sBankAccNo := oSheet.Cells[i, 3].Value;

        if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([sBankCode, sBankAccNo]), []) then
        begin
          cdsBankReconcileTmp.Edit;
          cdsBankReconcileTmpTRDATE.AsDateTime  := txtTransDate.Date;
          cdsBankReconcileTmpBNCODE.AsString    := sBankCode;
          cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
          cdsBankReconcileTmpCCY.AsString       := 'IDR';
          cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(oSheet.Cells[i, 16].Value, 0);
          cdsBankReconcileTmpBNACCNAME.AsString := oSheet.Cells[i, 5].Value;
          cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
          cdsBankReconcileTmp.Post;
        end
        else
        begin
          for j := 1 to oSheet.Usedrange.Columns.Count do
            sFileName := oSheet.Cells[i, j].Value;
          oLostData.Add(sFileName);
        end;
      end;

      Inc(i);
    until (oSheet.Cells[i, 1].Values = '');

    if oLostData.Count > 0 then
    begin
      if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        SaveDialog.FileName := 'BRI-'+txtTransDate.Text+'.txt';
        SaveDialog.Execute(Handle);
        sFileName := SaveDialog.FileName;
        if sFileName <> '' then
          oLostData.SaveToFile(sFileName);
      end;
    end;

  finally
    FreeAndNil(oLostData);
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
end;

procedure TfrmBankRecons.UploadCMIB(AFileName: string);
  procedure UploadingText(AFileName, ABankCode: string);
  var
    oFileList, oFileRow, oLostData: TStringList;
    i: Integer;
    sDate, sBankAccNo, sFileName: string;
    wDate, wMonth, wYear: Word;
  begin
    oLostData := TStringList.Create;
    oFileList := TStringList.Create;

    oFileList.LoadFromFile(AFileName);
    for i := 0 to oFileList.Count -1 do
    begin
      if oFileList.Strings[i] <> '' then
      begin
        sDate  := Copy(oFileList[i], 104, 10);
        wYear  := StrToInt(Copy(sDate, 0, 4));
        wDate  := StrToInt(Copy(sDate, 9, 2));
        wMonth := StrToInt(Copy(sDate, 6, 2));

        if StrToFloatDef(Copy(oFileList[i], 83, 13), 0) + (StrToFloatDef(Copy(oFileList[i], 96, 2), 0) / 100) <> 0 then
        begin
          sBankAccNo := Copy(oFileList[i], 0, 13);

          if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, sBankAccNo]), []) then
          begin
            cdsBankReconcileTmp.Edit;
            cdsBankReconcileTmpTRDATE.AsDateTime  := EncodeDate(wYear, wMonth, wDate);
            cdsBankReconcileTmpBNCODE.AsString    := ABankCode;
            cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString       := Copy(oFileList[i], 130, 4);
            cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(Copy(oFileList[i], 83, 13), 0) + (StrToFloatDef(Copy(oFileList[i], 96  , 2), 0) / 100);
            cdsBankReconcileTmpBNACCNAME.AsString := Copy(oFileList[i], 43, 40);
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;
          end
          else
            oLostData.Add(oFileList.Strings[i]);
        end;
      end;
    end;

    if oLostData.Count > 0 then
    begin
      if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        SaveDialog.FileName := 'CIMB-'+txtTransDate.Text+'.txt';
        SaveDialog.Execute(Handle);
        sFileName := SaveDialog.FileName;
        if sFileName <> '' then
          oLostData.SaveToFile(sFileName);
      end;
    end;

    FreeAndNil(oLostData);
    FreeAndNil(oFileList);
  end;

  procedure UploadingXLS(AFileName, ABankCode: string);
  var
    oExcel, oSheet: OleVariant;
    i, j: Integer;
    sBankAccNo, sFileName: string;
    oLostData: TStringList;
  begin
    try
      oLostData := TStringList.Create;
      oExcel    := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      i := 1;
      repeat
        if StrToFloatDef(oSheet.Cells[i, 4].Value, 0) <> 0 then
        begin
          sBankAccNo := oSheet.Cells[i, 1].Value;

          if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, sBankAccNo]), []) then
          begin
            cdsBankReconcileTmp.Edit;
            cdsBankReconcileTmpTRDATE.AsDateTime  := txtTransDate.Date;
            cdsBankReconcileTmpBNCODE.AsString    := ABankCode;
            cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString       := oSheet.Cells[i, 2].Value;
            cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(oSheet.Cells[i, 4].Value, 0);
            cdsBankReconcileTmpBNACCNAME.AsString := '';
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;
          end
          else
          begin
            for j := 0 to oSheet.LastCol -1 do
              sFileName := oSheet.AsString[j, i];
            oLostData.Add(sFileName);
          end;
        end;

        Inc(i);
      until (oExcel.Cells[i, 1].Value = '');

      if oLostData.Count > 0 then
      begin
        if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          SaveDialog.FileName := 'CIMB-'+txtTransDate.Text+'.txt';
          SaveDialog.Execute(Handle);
          sFileName := SaveDialog.FileName;
          if sFileName <> '' then
            oLostData.SaveToFile(sFileName);
        end;
      end;

    finally
      FreeAndNil(oLostData);
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;

var
  sBankCode, sFileName, sFilExt: string;
begin
  sBankCode := FBankCode;
  sFileName := AFileName;
  sFilExt   := ExtractFileExt(sFileName);

  if LowerCase(sFilExt) = '.xls' then
    UploadingXLS(sFileName, sBankCode)
  else
    UploadingText(sFileName, sBankCode);
end;

procedure TfrmBankRecons.UploadMandiri(AFileName: string);
var
  sBankCode: string;
  oFileList, oFileRow, oLostData: TStringList;
  i: Integer;
  sDate, sBankAccNo, sFileName: string;
  wDate, wMonth, wYear: Word;
begin
  sBankCode := FBankCode;
  oFileList := TStringList.Create;
  oLostData := TStringList.Create;

  oFileList.LoadFromFile(AFileName);
  for i := 0 to oFileList.Count -1 do
  begin
    if oFileList.Strings[i] <> '' then
    begin
      oFileRow := TStringList.Create;
      dmGlobal.ParseDelimited(oFileRow, oFileList.Strings[i], '||');

      sDate  := oFileRow.Strings[5];
      wYear  := StrToInt(Copy(sDate, 1, 4));
      wMonth := StrToInt(Copy(sDate, 5, 2));
      wDate  := StrToInt(Copy(sDate, 7, 2));

      if StrToFloatDef(oFileRow.Strings[4], -1) <> 0 then
      begin
        sBankAccNo := Trim(oFileRow.Strings[2]);

        if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([sBankCode, sBankAccNo]), []) then
        begin
          cdsBankReconcileTmp.Edit;
          cdsBankReconcileTmpTRDATE.AsDateTime  := EncodeDate(wYear, wMonth, wDate);
          cdsBankReconcileTmpBNCODE.AsString    := sBankCode;
          cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
          cdsBankReconcileTmpCCY.AsString       := Trim(oFileRow.Strings[3]);
          cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(oFileRow.Strings[4], -1);
          cdsBankReconcileTmpBNACCNAME.AsString := Trim(oFileRow.Strings[1]);
          cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
          cdsBankReconcileTmp.Post;
        end
        else
          oLostData.Add(oFileList.Strings[i]);
      end;
    end;
    FreeAndNil(oFileRow);
  end;    

  if oLostData.Count > 0 then
  begin
    if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin 
      SaveDialog.FileName := 'Mandiri-'+txtTransDate.Text+'.txt';
      SaveDialog.Execute(Handle);
      sFileName := SaveDialog.FileName;
      if sFileName <> '' then      
        oLostData.SaveToFile(sFileName);
    end;
  end;
    
  FreeAndNil(oLostData);
  FreeAndNil(oFileList);
end;

procedure TfrmBankRecons.UploadPermata(AFileName: string);
  procedure UploadingText(AFileName, ABankCode: string);
  var
    oFileList, oFileRow, oLostData: TStringList;
    i: Integer;
    sDate, sBankAccNo, sFileName: string;
    wDate, wMonth, wYear: Word;
  begin
    oFileList := TStringList.Create;
    oLostData := TStringList.Create;

    oFileList.LoadFromFile(AFileName);
    for i := 0 to oFileList.Count -1 do
    begin
      if oFileList.Strings[i] <> '' then
      begin
        oFileRow := TStringList.Create;
        dmGlobal.ParseDelimited(oFileRow, oFileList.Strings[i], '|');

        sDate  := oFileRow.Strings[5];
        wYear  := StrToInt(Copy(sDate, 0, 4));
        wMonth := StrToInt(Copy(sDate, 5, 2));
        wDate  := StrToInt(Copy(sDate, 7, 2));

        if StrToFloatDef(oFileRow.Strings[4], 0) <> 0 then
        begin
          sBankAccNo := FormatFloat('00000000000', StrToFloat(oFileRow.Strings[0]));

          if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, sBankAccNo]), []) then
          begin
            cdsBankReconcileTmp.Edit;
            cdsBankReconcileTmpTRDATE.AsDateTime  := EncodeDate(wYear, wMonth, wDate);
            cdsBankReconcileTmpBNCODE.AsString    := ABankCode;
            cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString       := oFileRow.Strings[7];
            cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(oFileRow.Strings[4], 0);
            cdsBankReconcileTmpBNACCNAME.AsString := oFileRow.Strings[3];
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;
          end
          else
            oLostData.Add(oFileList.Strings[i]);
        end;
      end;

      FreeAndNil(oFileRow);
    end;

    if oLostData.Count > 0 then
    begin
      if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin   
        SaveDialog.FileName := 'Permata-'+txtTransDate.Text+'.txt';
        SaveDialog.Execute(Handle);
        sFileName := SaveDialog.FileName;
        if sFileName <> '' then      
          oLostData.SaveToFile(sFileName);
      end;
    end;
    
    FreeAndNil(oLostData);
    FreeAndNil(oFileList);
  end;

  procedure UploadingXLS(AFileName, ABankCode: string);
  var
    oExcel, oSheet: OleVariant;
    i, j: Integer;
    sBankAccNo, sFileName: string;
    oLostData: TStringList;
  begin
    try
      oLostData := TStringList.Create;
      oExcel    := CreateOleObject('Excel.Application');
      oExcel.WorkBooks.Open(AFileName);
      oExcel.DisplayAlerts := False;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      i := 1;
      repeat
        if StrToFloatDef(oSheet.AsString[9, i], 0) <> 0 then
        begin
          sBankAccNo := FormatFloat('00000000000', StrToFloat(oSheet.Cells[i, 1].Value));

          if cdsBankReconcileTmp.Locate('BNCODE;BANKACCNO', VarArrayOf([ABankCode, sBankAccNo]), []) then
          begin
            cdsBankReconcileTmp.edit;
            cdsBankReconcileTmpTRDATE.AsDateTime  := txtTransDate.Date;
            cdsBankReconcileTmpBNCODE.AsString    := ABankCode;
            cdsBankReconcileTmpBNACCNO.AsString   := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString       := oSheet.Cells[i, 9].Value;
            cdsBankReconcileTmpSALDO.AsFloat      := StrToFloatDef(oSheet.Cells[i, 10].Value, 0);
            cdsBankReconcileTmpBNACCNAME.AsString := '';
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat:= dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;
          end
          else
          begin
            for j := 0 to oSheet.LastCol -1 do
              sFileName := oSheet.AsString[j, i];
            oLostData.Add(sFileName);
          end;
        end;

        Inc(i);
      until (oExcel.Cells[i, 1].Value = '');

      if oLostData.Count > 0 then
      begin
        if MessageDlg('There is unregistered account bank in system, save for log ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          SaveDialog.FileName := 'Permata-'+txtTransDate.Text+'.txt';
          SaveDialog.Execute(Handle);
          sFileName := SaveDialog.FileName;
          if sFileName <> '' then
            oLostData.SaveToFile(sFileName);
        end;
      end;

    finally
      FreeAndNil(oLostData);
      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;

var
  sBankCode, sFileName, sFilExt: string;
begin
  sBankCode := FBankCode;
  sFileName := AFileName;
  sFilExt   := ExtractFileExt(sFileName);

  if LowerCase(sFilExt) = '.xls' then
    UploadingXLS(sFileName, sBankCode)
  else
    UploadingText(sFileName, sBankCode);
end;

Initialization
  RegisterClass(TfrmBankRecons);

end.
