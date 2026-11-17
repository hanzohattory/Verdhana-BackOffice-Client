unit FormIPOPoolings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ActnList,
  NDatasetAction, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  FormIPOList, cxImageComboBox, cxCurrencyEdit, Datasnap.DBClient,
  NClientDataset, System.Actions;

type
  TfrmIPOPoolings = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    popMaster: TPopupMenu;
    aclPooling: TActionList;
    actNew: TNAction;
    actEdit: TNAction;
    actDelete: TNAction;
    actReload: TNAction;
    dsPooling: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterPOOLINGID: TcxGridDBBandedColumn;
    gvwMasterPOOLINGCODE: TcxGridDBBandedColumn;
    gvwMasterPOOLINGDATE: TcxGridDBBandedColumn;
    gvwMasterPOOLINGDESC: TcxGridDBBandedColumn;
    gvwMasterPOOLINGTYPE: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterCUST_NAME: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn;
    gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn;
    gvwMasterCUST_PHONE: TcxGridDBBandedColumn;
    gvwMasterCUST_FAX: TcxGridDBBandedColumn;
    gvwMasterCUST_MAIL: TcxGridDBBandedColumn;
    gvwMasterORDERCCY: TcxGridDBBandedColumn;
    gvwMasterORDERQTY: TcxGridDBBandedColumn;
    gvwMasterORDERAMT: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterPROCESSQTY: TcxGridDBBandedColumn;
    gvwMasterPROCESSAMT: TcxGridDBBandedColumn;
    gvwMasterRETURNAMT: TcxGridDBBandedColumn;
    actSetQtyProcess: TNAction;
    SetQtyProcess1: TMenuItem;
    actConfirmed: TNAction;
    Confirmed1: TMenuItem;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn;
    cxButton5: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    actViewConf: TNAction;
    actPosting: TNAction;
    actDistribution: TNAction;
    Posting1: TMenuItem;
    Distribution1: TMenuItem;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterPAYMENT: TcxGridDBBandedColumn;
    gvwMasterPAYMENTAMT: TcxGridDBBandedColumn;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    actCreateVoucherPooling: TNAction;
    CreateVoucherPooling1: TMenuItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cdsIPOPoolingByIPO: TNClientDataset;
    cdsIPOPoolingByIPOPOOLINGID: TIntegerField;
    cdsIPOPoolingByIPOPOOLINGCODE: TStringField;
    cdsIPOPoolingByIPOPOOLINGDATE: TDateField;
    cdsIPOPoolingByIPOPOOLINGDESC: TStringField;
    cdsIPOPoolingByIPOPOOLINGTYPE: TStringField;
    cdsIPOPoolingByIPOIPOID: TIntegerField;
    cdsIPOPoolingByIPOACCID: TIntegerField;
    cdsIPOPoolingByIPOCUST_NAME: TStringField;
    cdsIPOPoolingByIPOCUST_IDCARDTYPE: TStringField;
    cdsIPOPoolingByIPOCUST_IDCARDNO: TStringField;
    cdsIPOPoolingByIPOCUST_IDCARDEXPIRE: TDateField;
    cdsIPOPoolingByIPOCUST_ADDRESS: TStringField;
    cdsIPOPoolingByIPOCUST_PHONE: TStringField;
    cdsIPOPoolingByIPOCUST_FAX: TStringField;
    cdsIPOPoolingByIPOCUST_MAIL: TStringField;
    cdsIPOPoolingByIPOORDERCCY: TStringField;
    cdsIPOPoolingByIPOORDERQTY: TFloatField;
    cdsIPOPoolingByIPOORDERAMT: TFloatField;
    cdsIPOPoolingByIPOSTATUS: TStringField;
    cdsIPOPoolingByIPOMODDA: TDateTimeField;
    cdsIPOPoolingByIPOMODUI: TStringField;
    cdsIPOPoolingByIPOAPPDA: TDateTimeField;
    cdsIPOPoolingByIPOAPPUI: TStringField;
    cdsIPOPoolingByIPOUNDER4Y: TIntegerField;
    cdsIPOPoolingByIPOUNDER4YDA: TDateTimeField;
    cdsIPOPoolingByIPONOTES4Y: TStringField;
    cdsIPOPoolingByIPOISDEL: TIntegerField;
    cdsIPOPoolingByIPOID: TLargeintField;
    cdsIPOPoolingByIPOPROCESSQTY: TFloatField;
    cdsIPOPoolingByIPOPROCESSAMT: TFloatField;
    cdsIPOPoolingByIPORETURNAMT: TFloatField;
    cdsIPOPoolingByIPOCONFIRMED: TStringField;
    cdsIPOPoolingByIPOPOSTEDFINANCE: TStringField;
    cdsIPOPoolingByIPOVOUCHERCREATED: TStringField;
    cdsIPOPoolingByIPOCASH_VOUCHERID: TLargeintField;
    cdsIPOPoolingByIPOSTOCK_VOUCHERID: TLargeintField;
    cdsIPOPoolingByIPOSIID: TLargeintField;
    cdsIPOPoolingByIPOPROCESS_CONFIRM: TStringField;
    cdsIPOPoolingByIPODISTRIBUTION: TStringField;
    cdsIPOPoolingByIPOREFUND_RECEIVE: TStringField;
    cdsIPOPoolingByIPOREFUND_PAYMENT: TStringField;
    cdsIPOPoolingByIPOPOSTEDCUSTODY: TStringField;
    cdsIPOPoolingByIPOACCCODE: TStringField;
    cdsIPOPoolingByIPOPOOLING_GROUPID: TLargeintField;
    cdsIPOPooling: TNClientDataset;
    cdsIPOPoolingPOOLINGID: TIntegerField;
    cdsIPOPoolingPOOLINGCODE: TStringField;
    cdsIPOPoolingPOOLINGDATE: TDateField;
    cdsIPOPoolingPOOLINGDESC: TStringField;
    cdsIPOPoolingPOOLINGTYPE: TStringField;
    cdsIPOPoolingIPOID: TIntegerField;
    cdsIPOPoolingACCID: TIntegerField;
    cdsIPOPoolingCUST_NAME: TStringField;
    cdsIPOPoolingCUST_IDCARDTYPE: TStringField;
    cdsIPOPoolingCUST_IDCARDNO: TStringField;
    cdsIPOPoolingCUST_IDCARDEXPIRE: TDateField;
    cdsIPOPoolingCUST_ADDRESS: TStringField;
    cdsIPOPoolingCUST_PHONE: TStringField;
    cdsIPOPoolingCUST_FAX: TStringField;
    cdsIPOPoolingCUST_MAIL: TStringField;
    cdsIPOPoolingORDERCCY: TStringField;
    cdsIPOPoolingORDERQTY: TFloatField;
    cdsIPOPoolingORDERAMT: TFloatField;
    cdsIPOPoolingSTATUS: TStringField;
    cdsIPOPoolingMODDA: TDateTimeField;
    cdsIPOPoolingMODUI: TStringField;
    cdsIPOPoolingAPPDA: TDateTimeField;
    cdsIPOPoolingAPPUI: TStringField;
    cdsIPOPoolingUNDER4Y: TIntegerField;
    cdsIPOPoolingUNDER4YDA: TDateTimeField;
    cdsIPOPoolingNOTES4Y: TStringField;
    cdsIPOPoolingISDEL: TIntegerField;
    cdsIPOPoolingID: TLargeintField;
    cdsIPOPoolingFIXEDPRICE: TFloatField;
    cdsIPOPoolingPROCESSQTY: TFloatField;
    cdsIPOPoolingPROCESSAMT: TFloatField;
    cdsIPOPoolingRETURNAMT: TFloatField;
    cdsIPOPoolingCONFIRMED: TStringField;
    cdsIPOPoolingPOSTEDFINANCE: TStringField;
    cdsIPOPoolingVOUCHERCREATED: TStringField;
    cdsIPOPoolingCASH_VOUCHERID: TLargeintField;
    cdsIPOPoolingSTOCK_VOUCHERID: TLargeintField;
    cdsIPOPoolingSIID: TLargeintField;
    cdsIPOPoolingACCCODE: TStringField;
    cdsIPO: TNClientDataset;
    cdsIPOIPOID: TIntegerField;
    cdsIPOIPOCODE: TStringField;
    cdsIPOSCRIPCODE: TStringField;
    cdsIPOSCRIPNAME: TStringField;
    cdsIPOENTRYDATE: TDateField;
    cdsIPOIPODATE: TDateField;
    cdsIPOORDERFROMDATE: TDateField;
    cdsIPOORDERTODATE: TDateField;
    cdsIPONETFEE: TFloatField;
    cdsIPOVAT: TFloatField;
    cdsIPOWHT: TFloatField;
    cdsIPOCCY: TStringField;
    cdsIPOBOTPRICE: TFloatField;
    cdsIPOTOPPRICE: TFloatField;
    cdsIPOFIXEDPRICE: TFloatField;
    cdsIPOACCBANKID: TIntegerField;
    cdsIPOGUARANTEETYPE: TStringField;
    cdsIPOCONDATE: TDateField;
    cdsIPOREMARK1: TStringField;
    cdsIPOREMARK2: TStringField;
    cdsIPOSTATUS: TStringField;
    cdsIPOMODDA: TDateTimeField;
    cdsIPOMODUI: TStringField;
    cdsIPOAPPDA: TDateTimeField;
    cdsIPOAPPUI: TStringField;
    cdsIPOUNDER4Y: TIntegerField;
    cdsIPOUNDER4YDA: TDateTimeField;
    cdsIPONOTES4Y: TStringField;
    cdsIPOISDEL: TIntegerField;
    cdsIPOID: TLargeintField;
    cdsIPOCOMMITMENTAMT: TFloatField;
    cdsIPOABSORBAMT: TFloatField;
    cdsIPOBGAMT: TFloatField;
    cdsIPOHAIRCUT: TIntegerField;
    cdsIPOBAEID: TIntegerField;
    cdsIPODUEDATE: TDateField;
    cdsIPODISTRIBUTIONDATE: TDateField;
    cdsIPOLISTINGDATE: TDateField;
    cdsIPOREFUNDDATE: TDateField;
    cdsIPOISINCODE: TStringField;
    cdsIPOISINDATE: TDateTimeField;
    cdsIPOIS_CURRENT_INSTRUMENT: TStringField;
    cdsIPOINSTRUMENT_ID: TLargeintField;
    cdsIPOALLOTMENT_VOUCHER: TStringField;
    cdsIPOALLOTMENT_AMOUNT: TFloatField;
    cdsIPOALLOTMENT_SIID: TLargeintField;
    cdsIPOPOOLING_VOUCHER: TStringField;
    cdsIPOPOOLING_AMOUNT: TFloatField;
    cdsIPOPOOLING_SIID: TLargeintField;
    cdsIPOACCID: TIntegerField;
    cdsIPOACCCODE: TStringField;
    cdsIPOACCNAME: TStringField;
    cdsIPOACCNO: TStringField;
    cdsIPOIPO_TYPE: TStringField;
    cdsIPOIPO_PRODUCT: TStringField;
    cdsIPOCOUPON_RATE: TFloatField;
    cdsIPOMATURITYDATE: TDateField;
    cdsIPOCALCULATE_DAYS_METHOD: TIntegerField;
    cdsIPOCOUNTINGDAYS_METHOD: TIntegerField;
    cdsIPOISSUER_TYPE: TStringField;
    cdsIPOUSEGROUP: TStringField;
    cdsIPOGROUPID: TIntegerField;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxLayoutControl1Group17: TdxLayoutGroup;
    cdsIPOTMPNETFEE: TFloatField;
    cdsIPOTMPVAT: TFloatField;
    cdsIPOTMPWHT: TFloatField;
    cdsIPOPoolingPROCESS_CONFIRM: TStringField;
    cdsIPOPoolingDISTRIBUTION: TStringField;
    cdsIPOPoolingREFUND_RECEIVE: TStringField;
    cdsIPOPoolingREFUND_PAYMENT: TStringField;
    cdsIPOPoolingPOSTEDCUSTODY: TStringField;
    cdsIPOPoolingPAYMENT: TStringField;
    cdsIPOPoolingPAYMENTAMT: TFloatField;
    cdsIPOPoolingPOOLING_GROUPID: TLargeintField;
    cdsIPOPoolingSCRIPNAME: TStringField;
    actPoolingCancel: TNAction;
    actPoolingReverse: TNAction;
    actPoolingAmend: TNAction;
    N1: TMenuItem;
    PoolingReverse1: TMenuItem;
    PoolingReverse2: TMenuItem;
    PoolingAmend1: TMenuItem;
    cdsIPOCOMMITMENTQTY: TLargeintField;
    cdsIPOABSORBQTY: TLargeintField;
    cdsIPOMNGMT_FEE: TFloatField;
    cdsIPOUNDERWT_FEE: TFloatField;
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actReloadExecute(Sender: TObject);
    procedure actSetQtyProcessExecute(Sender: TObject);
    procedure actNewUpdate(Sender: TObject);
    procedure actConfirmedExecute(Sender: TObject);
    procedure actViewConfExecute(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actDistributionExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actCreateVoucherPoolingExecute(Sender: TObject);
    procedure cdsIPOBeforePost(DataSet: TDataSet);
    procedure cdsIPONewRecord(DataSet: TDataSet);
    procedure cdsIPOFIXEDPRICEChange(Sender: TField);
    procedure cdsIPOCOMMITMENTAMTChange(Sender: TField);
    procedure cdsIPOCOMMITMENTQTYChange(Sender: TField);
    procedure cdsIPOPoolingACCIDChange(Sender: TField);
    procedure cdsIPOPoolingORDERQTYChange(Sender: TField);
    procedure cdsIPOPoolingNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsIPOPoolingByIPOAfterOpen(DataSet: TDataSet);
    procedure actPoolingCancelExecute(Sender: TObject);
    procedure actPoolingReverseExecute(Sender: TObject);
    procedure actPoolingCancelUpdate(Sender: TObject);
    procedure actPoolingReverseUpdate(Sender: TObject);
    procedure actPoolingAmendExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FReadOnly: Boolean;
    FGroupID: Integer;
    FIPOID: Integer;
    FTransDate: TDateTime;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;
    property GroupID: Integer read FGroupID write FGroupID;
    property IPOID: Integer read FIPOID write FIPOID;
  end;

var
  frmIPOPoolings: TfrmIPOPoolings;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOPooling, FormReportTradePoolingConfIPO, FormProgressBar,
  DataLookup;

procedure TfrmIPOPoolings.actConfirmedExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to confirm multiple IPO Poolings?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsPooling.DataSet.FieldByName('CONFIRMED').AsString <> '1') then
          dmGlobal.RemoteServer.ConfirmIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Pooling comfirmed successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.ConfirmIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Pooling comfirmed successfully');
    end;
  end;
end;

procedure TfrmIPOPoolings.actCreateVoucherPoolingExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
  oPooling: TDataSet;
begin
//  with frmIPOList do
//  begin
    if gvwMaster.Controller.SelectedRecordCount >= 1 then
    begin
      if MessageDlg('Are you sure to create voucher from selected pooling?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        slMsg := TStringList.Create;
        oProgress := TfrmProgressBar.Create(Nil);
        Try
          iSuccess := 0;
          iReject := 0;
          n := gvwMaster.Controller.SelectedRecordCount;
          oProgress.Show;
          for i := 0 to n -1 do
          begin
            RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
            gvwMaster.DataController.FocusedRecordIndex := RecIdx;

            oProgress.ChangeBar(trunc((i+1) / n * 100), 'Creating Cash Voucher for Pooling No ' +
              QuotedStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterPOOLINGCODE.Index]));

            if gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterVOUCHERCREATED.Index] = '0' then
            begin
                bRes := dmGlobal.RemoteServer.GeneratePaymentIPOPolling(StrToInt64(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterPOOLINGID.Index]), sMsg);
                if bRes then
                  iSuccess := iSuccess + 1
                else
                  iReject := iReject + 1;
            end
            Else
                iReject := iReject + 1;

            slMsg.Add(sMsg);
          end;
        Finally
          slMsg.Insert(0, 'Cash Voucher Successfully Created' + IntToStr(iSuccess));
          sMsg := slMsg.Text;
          FreeAndNil(oProgress);
          FreeAndNil(slMsg);
          ShowMessage(sMsg);
        End;

        if iSuccess > 0 then
          oPooling.Refresh;
      end;
    end;
//  end;
end;

procedure TfrmIPOPoolings.actDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure to delete this record?', mtConfirmation, mbYesNo,
     0) = mrYes then
  begin
//    with FFormBrowse do
//    begin
      cdsIPOPooling.Close;
      cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
      cdsIPOPooling.Open;

      if not cdsIPOPooling.IsEmpty then
      begin
        cdsIPOPooling.Delete;
        cdsIPOPooling.ApplyUpdates(-1);
      end;

    end;

//  end;

end;

procedure TfrmIPOPoolings.actDistributionExecute(Sender: TObject);
var
  sMsg, sRes: String;
  i, iFail: Integer;
  sResult: Boolean;
begin
  inherited;
  dsPooling.DataSet.DisableControls;

  sMsg     := '';
  iFail    := 0;
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    dmGlobal.RemoteServer.DistributionIPOPooling(StrToInt64(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterPOOLINGID.Index]), sRes);
    sMsg := sMsg + sRes + #13;
  end;
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
  dsPooling.DataSet.EnableControls;
end;

procedure TfrmIPOPoolings.actEditExecute(Sender: TObject);
var
  oForm: TfrmIPOPooling;
begin
//  with FFormBrowse do
//  begin
    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
    cdsIPOPooling.Open;

    oForm := TfrmIPOPooling.Create(nil);
    Try
      cdsIPOPooling.Edit;
      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOPooling.State in dsEditModes then
          cdsIPOPooling.Post;

        if cdsIPOPooling.ApplyUpdates(-1) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPOPoolingByIPO.Close;
          cdsIPOPoolingByIPO.Open;
        end;

      end
      else
      begin
        cdsIPOPoolingByIPO.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

//  end;
end;

procedure TfrmIPOPoolings.actEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (dsPooling.DataSet.FieldByName('CONFIRMED').AsString <> '1')
    and (not ReadOnly);
end;

procedure TfrmIPOPoolings.actNewExecute(Sender: TObject);
var
  oForm: TfrmIPOPooling;
  iID, iCode: Integer;
  sCodeSeq: String;
begin
//  with FFormBrowse do
//  begin
    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := -1;
    cdsIPOPooling.Open;

    oForm := TfrmIPOPooling.Create(nil);
    Try
      iID := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO_POOLING');
      sCodeSeq := 'Pooling' + cdsIPOIPOCODE.AsString;
      iCode := dmGlobal.RemoteServer.GetSeq(sCodeSeq);
      cdsIPOPooling.Append;
      cdsIPOPoolingPOOLINGID.AsInteger := iID;
      cdsIPOPoolingPOOLINGCODE.AsString := cdsIPOIPOCODE.AsString + '-P' + Format('%.5d', [iCode]);
      cdsIPOPoolingIPOID.AsInteger := cdsIPOIPOID.AsInteger;
      cdsIPOPoolingPOOLINGTYPE.AsString := 'C';
      cdsIPOPoolingORDERCCY.AsString := cdsIPOCCY.AsString;
      cdsIPOPoolingSTATUS.AsString := 'O';
      cdsIPOPoolingPOOLING_GROUPID.AsInteger := FGroupID;

      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOPooling.State in dsEditModes then
          cdsIPOPooling.Post;

        if cdsIPOPooling.ApplyUpdates(-1) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPOPoolingByIPO.Close;
          cdsIPOPoolingByIPO.Open;
        end;

      end
      else
      begin
        dmGlobal.RemoteServer.CancelSeq('TBL_B_IPO_POOLING', iID);
        dmGlobal.RemoteServer.CancelSeq(sCodeSeq, iCode);

        cdsIPOPooling.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

//  end;

end;

procedure TfrmIPOPoolings.actNewUpdate(Sender: TObject);
begin
//  TAction(Sender).Enabled := (not ReadOnly);
end;

procedure TfrmIPOPoolings.actPoolingAmendExecute(Sender: TObject);
var
  oForm: TfrmIPOPooling;
  sMsg: string;
begin
  if MessageDlg('Amend Pooling ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cdsIPOPooling.Close;
  cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
  cdsIPOPooling.Open;
  cdsIPOPooling.Edit;

  oForm := TfrmIPOPooling.Create(nil);
  TfrmIPOPooling(oForm).Amend := True;
  if oForm.ShowModal = mrOk then
  begin
    dmGlobal.RemoteServer.PoolingAmend(cdsIPOPoolingACCID.AsLargeInt, cdsIPOPoolingPOOLINGID.AsLargeInt, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;

  cdsIPOPooling.Cancel;
  FreeAndNil(oForm);
  cdsIPOPoolingByIPO.Refresh;
end;

procedure TfrmIPOPoolings.actPoolingCancelExecute(Sender: TObject);
var
  i: Integer;
  iPoolingID: Integer;
begin
  if MessageDlg('Cancel Pooling ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iPoolingID := StrToInt(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterPOOLINGID.Index]);

    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := iPoolingID;
    cdsIPOPooling.Open;

    if not cdsIPOPooling.IsEmpty then
    begin
      cdsIPOPooling.Edit;
      cdsIPOPoolingSTATUS.AsString := 'C';
      cdsIPOPooling.Post;

      cdsIPOPooling.ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmIPOPoolings.actPoolingCancelUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := cdsIPOPoolingByIPOPOSTEDFINANCE.AsString <> '1';
end;

procedure TfrmIPOPoolings.actPoolingReverseExecute(Sender: TObject);
var
  i: Integer;
  iPoolingID: Int64;
  x, v: Integer;
  sMsg, sTmpMsg, sResMsg: string;
begin
  if MessageDlg('Reverse Pooling ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  x := 0;
  v := 0;

  sTmpMsg := '';
  sResMsg := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iPoolingID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterPOOLINGID.Index], 0);

    if dmGlobal.RemoteServer.PoolingReverse(iPoolingID, sMsg) then
      Inc(v)
    else
    begin
      Inc (x);

      if sMsg <> sResMsg then
      begin
        sTmpMsg := sMsg;
        sResMsg := sResMsg + sTmpMsg + #13
      end;
    end;
  end;

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    sMsg := IntToStr(v) + ' Pooling reversed and ' + IntToStr(x) + ' Cancel to reversed';

    if x <> 0 then
      sMsg := sMsg + #13 + 'Cancel Message : ' + #13 + sResMsg;
  end;

  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmIPOPoolings.actPoolingReverseUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (cdsIPOPoolingByIPOPOSTEDFINANCE.AsString = '1') and (cdsIPOORDERTODATE.AsDateTime >= FTransDate);
end;

procedure TfrmIPOPoolings.actPostingExecute(Sender: TObject);
var
  sMsg: String;
  i, iFail: Integer;
  sResult: Boolean;
  sFailMsg: string;
begin
  inherited;
  dsPooling.DataSet.DisableControls;

  sFailMsg := '';
  iFail    := 0;
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    sResult := dmGlobal.RemoteServer.PostingIPOPolling(StrToInt64(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterPOOLINGID.Index]), sMsg);
    if not sResult then
    begin
      Inc(iFail);
      sFailMsg := sFailMsg + IntToStr(iFail) + '. '
        + gvwMaster.Controller.SelectedRows[i].Values[gvwMasterPOOLINGCODE.Index]
        + ' : ' + sMsg + #13;
    end;
  end;

  actReload.Execute;

  if iFail > 0 then
    MessageDlg('There is ' + IntToStr(iFail) + ' which fail process posting', mtInformation, [mbOk], 0)
  else
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  dsPooling.DataSet.EnableControls;
end;

procedure TfrmIPOPoolings.actReloadExecute(Sender: TObject);
begin
//  with FFormBrowse do
//  begin
    cdsIPO.Close;
    cdsIPO.Open;

    cdsIPOPoolingByIPO.Close;
    cdsIPOPoolingByIPO.Open;

    if not dmGlobal.IntDataLookup.cdsLuIPOPoolingGroup.IsEmpty then
    begin
      cdsIPO.Edit;
      cdsIPOGROUPID.AsInteger := FGroupID;
      cdsIPOTMPNETFEE.AsFloat := dmGlobal.IntDataLookup.cdsLuIPOPoolingGroupNETFEE.AsFloat;
      cdsIPOTMPVAT.AsFloat    := dmGlobal.IntDataLookup.cdsLuIPOPoolingGroupVAT.AsFloat;
      cdsIPOTMPWHT.AsFloat    := dmGlobal.IntDataLookup.cdsLuIPOPoolingGroupWHT.AsFloat;
      cdsIPO.Post;
    end
    else
    begin
      cdsIPO.Edit;
      cdsIPOTMPNETFEE.AsFloat := cdsIPONETFEE.AsFloat;
      cdsIPOTMPVAT.AsFloat    := cdsIPOVAT.AsFloat;
      cdsIPOTMPWHT.AsFloat    := cdsIPOWHT.AsFloat;
      cdsIPO.Post;
    end;
//  end;
end;

procedure TfrmIPOPoolings.actSetQtyProcessExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
    cdsIPOPooling.Open;

    if not cdsIPOPooling.IsEmpty then
    begin
      Try
        cdsIPOPooling.Edit;
        cdsIPOPoolingPROCESSQTY.AsFloat := StrToFloat(InputBox('Set Qty ' + 'Process', 'Qty Process', cdsIPOPoolingPROCESSQTY.AsString));
        cdsIPOPoolingPROCESSAMT.AsFloat := cdsIPOPoolingPROCESSQTY.AsFloat * cdsIPOPoolingFIXEDPRICE.AsFloat;
        cdsIPOPoolingRETURNAMT.AsFloat  := cdsIPOPoolingPROCESSAMT.AsFloat - cdsIPOPoolingORDERAMT.AsFloat;
        cdsIPOPooling.Post;

        if cdsIPOPooling.ApplyUpdates(-1) = 0 then
          cdsIPOPoolingByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOPoolings.actViewConfExecute(Sender: TObject);
begin
  frmReportTradePoolingConfIPO.Run(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
end;

procedure TfrmIPOPoolings.cdsIPOBeforePost(DataSet: TDataSet);
begin
  if cdsIPOIPOID.AsInteger = -1 then
  begin
    cdsIPOIPOID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO');
  end;

  if cdsIPOIPOCODE.AsString = '<AUTO>' then
  begin
    cdsIPOIPOCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsIPOENTRYDATE.AsDateTime,
      'PO', 'TBL_B_IPO');
  end;
end;

procedure TfrmIPOPoolings.cdsIPOCOMMITMENTAMTChange(Sender: TField);
begin
  cdsIPOBGAMT.AsFloat := cdsIPOCOMMITMENTAMT.AsFloat * 0.25;
end;

procedure TfrmIPOPoolings.cdsIPOCOMMITMENTQTYChange(Sender: TField);
begin
  cdsIPOCOMMITMENTAMT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOCOMMITMENTQTY.AsFloat;
end;

procedure TfrmIPOPoolings.cdsIPOFIXEDPRICEChange(Sender: TField);
begin
  cdsIPOCOMMITMENTAMT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOCOMMITMENTQTY.AsFloat;
end;

procedure TfrmIPOPoolings.cdsIPONewRecord(DataSet: TDataSet);
begin
  cdsIPOIPOID.AsInteger := -1;
  cdsIPOIPOCODE.AsString := '<AUTO>';
  cdsIPOENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOIPODATE.AsDateTime := cdsIPOENTRYDATE.AsDateTime;
  cdsIPOSTATUS.AsString := 'O';
  cdsIPOIS_CURRENT_INSTRUMENT.AsString := '0';
  cdsIPONETFEE.AsFloat := 1;
  cdsIPOCOMMITMENTQTY.AsFloat := 0;
  cdsIPOABSORBQTY.AsFloat := 0;
  cdsIPOABSORBAMT.AsFloat := 0;
  cdsIPOVAT.AsFloat := 10;
  cdsIPOWHT.AsFloat := 2;

  cdsIPOISSUER_TYPE.AsString := 'C';
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuMarket.Locate('MARKETCODE', dmGlobal.RemoteServer.GetDefaultMarket, []) then
    begin
      cdsIPOVAT.AsFloat := cdsLuMarketVATPCT.AsFloat;
      cdsIPOWHT.AsFloat := cdsLuMarketWHTPCT.AsFloat;
    end;
  end;
end;

procedure TfrmIPOPoolings.cdsIPOPoolingACCIDChange(Sender: TField);
var
  oDataset: TDataSet;
begin
  oDataset := dmGlobal.IntDataLookup.cdsLuCustAccount;

  if oDataset.Locate('ACCID', cdsIPOPoolingACCID.Value, []) then
  begin
    cdsIPOPoolingCUST_NAME.AsString := oDataset.FieldByName('CUST_NAME').AsString;
    cdsIPOPoolingCUST_IDCARDTYPE.AsString := oDataset.FieldByName('CUST_IDCARDTYPE').AsString;
    cdsIPOPoolingCUST_IDCARDNO.AsString := oDataset.FieldByName('CUST_IDCARDNO').AsString;
    cdsIPOPoolingCUST_IDCARDEXPIRE.AsDateTime := oDataset.FieldByName('CUST_IDCARDEXPIRE').AsDateTime;
    cdsIPOPoolingCUST_ADDRESS.AsString := oDataset.FieldByName('CUST_ADDRESS').AsString;
    cdsIPOPoolingCUST_PHONE.AsString := oDataset.FieldByName('CUST_PHONE').AsString;
    cdsIPOPoolingCUST_FAX.AsString := oDataset.FieldByName('CUST_FAX').AsString;
    cdsIPOPoolingCUST_MAIL.AsString := oDataset.FieldByName('CUST_MAIL').AsString;
  end;
end;

procedure TfrmIPOPoolings.cdsIPOPoolingByIPOAfterOpen(DataSet: TDataSet);
begin
  cdsIPOPoolingByIPO.Filter   := 'POOLING_GROUPID = '+ IntToStr(FGroupID);
  cdsIPOPoolingByIPO.Filtered := True;
end;

procedure TfrmIPOPoolings.cdsIPOPoolingNewRecord(DataSet: TDataSet);
begin
  cdsIPOPoolingPOOLINGDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOPoolingPOOLINGTYPE.AsString := 'C';
end;

procedure TfrmIPOPoolings.cdsIPOPoolingORDERQTYChange(Sender: TField);
begin
  cdsIPOPoolingORDERAMT.AsFloat := cdsIPOPoolingORDERQTY.AsFloat * cdsIPOPoolingFIXEDPRICE.AsFloat;
end;

procedure TfrmIPOPoolings.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCustAccount.Active then
      cdsLuCustAccount.Open;
  end;
end;

procedure TfrmIPOPoolings.FormShow(Sender: TObject);
begin
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := FIPOID;
  cdsIPO.Open;

  cdsIPOPoolingByIPO.Close;
  cdsIPOPoolingByIPO.Params[0].AsInteger := FIPOID;
  cdsIPOPoolingByIPO.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuIPOPoolingGroup.Close;
    cdsLuIPOPoolingGroup.Params[0].AsInteger := dsSubject.DataSet.FieldByName('IPOID').AsInteger;
    cdsLuIPOPoolingGroup.Open;

    cdsLuIPOPoolingGroup.Locate('POOLING_GROUPID', FGroupID, []);

    cdsIPO.Edit;
    cdsIPOTMPNETFEE.AsFloat := cdsLuIPOPoolingGroupNETFEE.AsFloat;
    cdsIPOTMPVAT.AsFloat    := cdsLuIPOPoolingGroupVAT.AsFloat;
    cdsIPOTMPWHT.AsFloat    := cdsLuIPOPoolingGroupWHT.AsFloat;
    cdsIPO.Post;

    dsSubject.DataSet.Edit;
    dsSubject.DataSet.FieldByName('GROUPID').AsInteger := FGroupID;
    dsSubject.DataSet.Post;
  end;
end;

end.
