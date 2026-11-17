unit FormIPOAllotmentFinance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormIPOList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, dxLayoutControl, Vcl.ActnList, NDatasetAction;

type
  TfrmIPOAllotmentFinance = class(TForm)
    aclAllotments: TActionList;
    dsAllotment: TDataSource;
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
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterALLOTMENTID: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterALLOTMENTCODE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterNETFEE_PCT: TcxGridDBBandedColumn;
    gvwMasterVAT_PCT: TcxGridDBBandedColumn;
    gvwMasterWHT_PCT: TcxGridDBBandedColumn;
    gvwMasterBFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterNETAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCDBCRID: TcxGridDBBandedColumn;
    gvwMasterCOUTSTANDID: TcxGridDBBandedColumn;
    gvwMasterFPPS: TcxGridDBBandedColumn;
    gvwMasterDPPS: TcxGridDBBandedColumn;
    gvwMasterCOFSENT: TcxGridDBBandedColumn;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    gvwMasterCONFORIGIN: TcxGridDBBandedColumn;
    gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwMasterPOSTEDCUSTODY: TcxGridDBBandedColumn;
    gvwMasterIDCARD: TcxGridDBBandedColumn;
    gvwMasterQTYPROCESS: TcxGridDBBandedColumn;
    gvwMasterPEID: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterBOOKID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterALLOTMENTDATE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterACCCODE_1: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    popMaster: TPopupMenu;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    gvwMasterCASH_OUTS: TcxGridDBBandedColumn;
    gvwMasterCASH_POS: TcxGridDBBandedColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnReload: TcxButton;
    actReload: TNAction;
    actPostingFinance: TNAction;
    PostingFinance1: TMenuItem;
    actCreateVoucher: TNAction;
    CreateCashVoucher1: TMenuItem;
    gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn;
    actCancelConfirm: TNAction;
    CancelConfirm1: TMenuItem;
    procedure actReloadExecute(Sender: TObject);
    procedure actPostingFinanceExecute(Sender: TObject);
    procedure actCreateVoucherUpdate(Sender: TObject);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure actPostingFinanceUpdate(Sender: TObject);
    procedure actCancelConfirmExecute(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FReadOnly: Boolean;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;
  end;

var
  frmIPOAllotmentFinance: TfrmIPOAllotmentFinance;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmIPOAllotmentFinance.actCancelConfirmExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to cancel confirm multiple IPO Allotments?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsAllotment.DataSet.FieldByName('POSTEDFINANCE').AsString <> '1') then
          dmGlobal.RemoteServer.CancelIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Cancel Confirm Successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.CancelIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Cancel Confirm Successfully');
    end;
  end;
end;

procedure TfrmIPOAllotmentFinance.actCreateVoucherExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to create multiple cash voucher IPO Allotments?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsAllotment.DataSet.FieldByName('POSTEDFINANCE').AsString = '1')
          and (dsAllotment.DataSet.FieldByName('VOUCHERCREATED').AsString <> '1') then
          dmGlobal.RemoteServer.CreateVoucherIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Cash Voucher Created Successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.CreateVoucherIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Cash Voucher Created Successfully');
    end;
  end;
end;

procedure TfrmIPOAllotmentFinance.actCreateVoucherUpdate(Sender: TObject);
begin
  actCreateVoucher.Enabled := (dsAllotment.DataSet.FieldByName('POSTEDFINANCE').AsString = '1')
    and (dsAllotment.DataSet.FieldByName('VOUCHERCREATED').AsString <> '1');
end;

procedure TfrmIPOAllotmentFinance.actPostingFinanceExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to posting multiple IPO Allotments?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsAllotment.DataSet.FieldByName('POSTEDFINANCE').AsString <> '1') then
          dmGlobal.RemoteServer.PostedFinanceIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Finance Posted Successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.PostedFinanceIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Finance Posted Successfully');
    end;
  end;
end;

procedure TfrmIPOAllotmentFinance.actPostingFinanceUpdate(Sender: TObject);
begin
  actPostingFinance.Enabled := dsAllotment.DataSet.FieldByName('POSTEDFINANCE').AsString <> '1';
end;

procedure TfrmIPOAllotmentFinance.actReloadExecute(Sender: TObject);
var
  AllotmentID: Integer;
begin
  AllotmentID := -1;
  if dsAllotment.DataSet.Active then
    AllotmentID := dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger;

  dsAllotment.DataSet.Close;
  dsAllotment.DataSet.Open;

  dsAllotment.DataSet.Locate('ALLOTMENTID', AllotmentID, []);

  dsSubject.DataSet.Close;
  dsSubject.DataSet.Open;
end;

end.
