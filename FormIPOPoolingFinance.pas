unit FormIPOPoolingFinance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, dxLayoutControl, Vcl.ActnList,
  NDatasetAction, FormIPOList;

type
  TfrmIPOPoolingFinance = class(TForm)
    aclPoolings: TActionList;
    actReload: TNAction;
    actPostingFinance: TNAction;
    actCreateVoucher: TNAction;
    dsPooling: TDataSource;
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
    btnReload: TcxButton;
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
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    popMaster: TPopupMenu;
    PostingFinance1: TMenuItem;
    CreateCashVoucher1: TMenuItem;
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
    gvwMasterPROCESSQTY: TcxGridDBBandedColumn;
    gvwMasterPROCESSAMT: TcxGridDBBandedColumn;
    gvwMasterRETURNAMT: TcxGridDBBandedColumn;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSIID: TcxGridDBBandedColumn;
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
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    gvwMasterCASH_OUTS: TcxGridDBBandedColumn;
    gvwMasterCASH_POS: TcxGridDBBandedColumn;
    actCancelConfirm: TNAction;
    CancelConfirm1: TMenuItem;
    procedure actReloadExecute(Sender: TObject);
    procedure actPostingFinanceExecute(Sender: TObject);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure actPostingFinanceUpdate(Sender: TObject);
    procedure actCreateVoucherUpdate(Sender: TObject);
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
  frmIPOPoolingFinance: TfrmIPOPoolingFinance;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmIPOPoolingFinance.actCancelConfirmExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to cancel confirm multiple IPO Poolings?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsPooling.DataSet.FieldByName('POSTEDFINANCE').AsString <> '1') then
          dmGlobal.RemoteServer.CancelIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Cancel Confirm Successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.CancelIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Cancel Confirm Successfully');
    end;
  end;
end;

procedure TfrmIPOPoolingFinance.actCreateVoucherExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to create multiple cash voucher IPO Poolings?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsPooling.DataSet.FieldByName('POSTEDFINANCE').AsString = '1')
          and (dsPooling.DataSet.FieldByName('VOUCHERCREATED').AsString <> '1') then
          dmGlobal.RemoteServer.CreateVoucherIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Cash Voucher Created Successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.CreateVoucherIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Cash Voucher Created Successfully');
    end;
  end;
end;

procedure TfrmIPOPoolingFinance.actCreateVoucherUpdate(Sender: TObject);
begin
  actCreateVoucher.Enabled := (dsPooling.DataSet.FieldByName('POSTEDFINANCE').AsString = '1')
    and (dsPooling.DataSet.FieldByName('VOUCHERCREATED').AsString <> '1');
end;

procedure TfrmIPOPoolingFinance.actPostingFinanceExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to posting multiple IPO Poolings?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsPooling.DataSet.FieldByName('POSTEDFINANCE').AsString <> '1') then
          dmGlobal.RemoteServer.PostedFinanceIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Finance Posted Successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.PostedFinanceIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Finance Posted Successfully');
    end;
  end;
end;

procedure TfrmIPOPoolingFinance.actPostingFinanceUpdate(Sender: TObject);
begin
  actPostingFinance.Enabled := dsPooling.DataSet.FieldByName('POSTEDFINANCE').AsString <> '1';
end;

procedure TfrmIPOPoolingFinance.actReloadExecute(Sender: TObject);
var
  PoolingID: Integer;
begin
  PoolingID := -1;
  if dsPooling.DataSet.Active then
    PoolingID := dsPooling.DataSet.FieldByName('POOLINGID').AsInteger;

  dsPooling.DataSet.Close;
  dsPooling.DataSet.Open;

  dsPooling.DataSet.Locate('POOLINGID', PoolingID, []);

  dsSubject.DataSet.Close;
  dsSubject.DataSet.Open;

end;

end.
