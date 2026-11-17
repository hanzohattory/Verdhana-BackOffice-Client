unit FormSplitExecDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxButtonEdit, cxDBEdit, cxCheckBox, cxImageComboBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, dxLayoutControl, Data.DB, dxLayoutControlAdapters,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, Datasnap.DBClient, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmSplitExecDealTicket = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    edDealQty: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dsSubject: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    grdDealTicketExec: TcxGrid;
    gvwDealTicketExec: TcxGridDBTableView;
    gvwDealTicketExecBOARDID: TcxGridDBColumn;
    gvwDealTicketExecEXQTY: TcxGridDBColumn;
    gvwDealTicketExecEXPRICE: TcxGridDBColumn;
    gvwDealTicketExecEXVALUE: TcxGridDBColumn;
    grdDealTicketExecLevel1: TcxGridLevel;
    dsDealTicketExec: TDataSource;
    Panel1: TPanel;
    btnAdd: TButton;
    btnRemove: TButton;
    cxGrid1: TcxGrid;
    gvwExec: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1Level1: TcxGridLevel;
    gvwDeal: TcxGridDBTableView;
    dsSplitDeal: TDataSource;
    dsSplitExec: TDataSource;
    gvwDealDEALTICKETID: TcxGridDBColumn;
    gvwDealDEALTICKETCODE: TcxGridDBColumn;
    gvwDealDEALTICKETDATE: TcxGridDBColumn;
    gvwDealACCNO: TcxGridDBColumn;
    gvwDealACCNAME: TcxGridDBColumn;
    gvwDealSTOCKID: TcxGridDBColumn;
    gvwDealSTOCKCODE: TcxGridDBColumn;
    gvwDealSTOCKNAME: TcxGridDBColumn;
    gvwDealBS: TcxGridDBColumn;
    gvwDealMARKETCODE: TcxGridDBColumn;
    gvwDealCCYCODE: TcxGridDBColumn;
    gvwDealCHANNELCODE: TcxGridDBColumn;
    gvwDealOMNIBUSTRADE: TcxGridDBColumn;
    gvwDealDEALQTY: TcxGridDBColumn;
    gvwDealDEALPRICE: TcxGridDBColumn;
    gvwDealDEALVALUE: TcxGridDBColumn;
    gvwDealALLOCQTY: TcxGridDBColumn;
    gvwDealSALESID: TcxGridDBColumn;
    gvwDealDEALERID: TcxGridDBColumn;
    gvwDealDUESTOCK: TcxGridDBColumn;
    gvwDealDUECASH: TcxGridDBColumn;
    gvwDealPOSTED: TcxGridDBColumn;
    gvwDealMODDA: TcxGridDBColumn;
    gvwDealMODUI: TcxGridDBColumn;
    gvwDealAPPDA: TcxGridDBColumn;
    gvwDealAPPUI: TcxGridDBColumn;
    gvwDealISDEL: TcxGridDBColumn;
    gvwDealID: TcxGridDBColumn;
    gvwDealACCID: TcxGridDBColumn;
    gvwDealDAYTRADE: TcxGridDBColumn;
    gvwDealCONID: TcxGridDBColumn;
    gvwDealSTAT: TcxGridDBColumn;
    gvwDealCDUEDATE: TcxGridDBColumn;
    gvwDealSDUEDATE: TcxGridDBColumn;
    gvwDealSTATUS: TcxGridDBColumn;
    gvwDealOLD_DEALTICKETID: TcxGridDBColumn;
    gvwDealCALC_METHOD: TcxGridDBColumn;
    gvwDealCOMM_RATE: TcxGridDBColumn;
    gvwDealROUNDPRICE: TcxGridDBColumn;
    gvwDealROUNDVALUE: TcxGridDBColumn;
    gvwDealDIFFVALUE: TcxGridDBColumn;
    gvwDealACCSOPID: TcxGridDBColumn;
    gvwDealAUTO_ALLOC: TcxGridDBColumn;
    gvwDealSETTLE_CCYCODE: TcxGridDBColumn;
    gvwDealDCCYAMT: TcxGridDBColumn;
    gvwDealCNNO: TcxGridDBColumn;
    gvwDealCXLD: TcxGridDBColumn;
    gvwDealRVSD: TcxGridDBColumn;
    gvwDealRVSD_DTID: TcxGridDBColumn;
    gvwDealRVSDDATE: TcxGridDBColumn;
    gvwDealRVS: TcxGridDBColumn;
    gvwDealRVS_STS: TcxGridDBColumn;
    gvwDealEXTERNALID: TcxGridDBColumn;
    gvwDealSALES_BRANCHID: TcxGridDBColumn;
    gvwDealISOMG: TcxGridDBColumn;
    popExec: TPopupMenu;
    CreateNewDealTicket1: TMenuItem;
    gvwDealTicketExecCPACCID: TcxGridDBColumn;
    procedure CreateNewDealTicket1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gvwDealACCNOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FDealID: Integer;
  public
    { Public declarations }
  end;

var
  frmSplitExecDealTicket: TfrmSplitExecDealTicket;

implementation

{$R *.dfm}

uses FormDealTickets, DataGlobal, FormLuAccount,
  FormSetQtySplitExec;

procedure TfrmSplitExecDealTicket.btnAddClick(Sender: TObject);
var
  dtSource, dtTarget, dtSourceDeal, dtTargetDeal: TDataSet;
  i, j, n, RecIdx: Integer;
  oField: TField;
  iSplitQty,iCurrQty : int64;
begin
  dtSource := dsDealTicketExec.DataSet;
  dtTarget := dsSplitExec.DataSet;
  dtSourceDeal := dsSubject.DataSet;
  dtTargetDeal := dsSplitDeal.DataSet;

  if not dtTargetDeal.IsEmpty then
  begin
    n := gvwDealTicketExec.Controller.SelectedRowCount - 1;
    for j := n downto 0 do
    begin
      RecIdx := gvwDealTicketExec.Controller.SelectedRecords[j].RecordIndex;
      gvwDealTicketExec.DataController.FocusedRecordIndex := RecIdx;

      if (dtTargetDeal.FieldByName('ISAVGPRICE').AsString = '0')
        or (dtTargetDeal.FieldByName('ISAVGPRICE').IsNull) then
      begin
        if (dtTargetDeal.FieldByName('DEALPRICE').AsFloat <> dtSource.FieldByName('EXPRICE').AsFloat) then
        begin
          dmGlobal.ErrorMessage('Can''t insert trade with different price for this account!');
          exit;
        end;
      end;

      iCurrQty := dtSource.FieldByName('EXQTY').AsInteger;
      iSplitQty := 0;
      frmSetQtySplitExec.createForm(iCurrQty, iSplitQty);

      if iSplitQty <> 0 then
      begin
        dtTargetDeal.Edit;
        dtTargetDeal.FieldByName('DEALQTY').AsLargeInt :=
          //dtTargetDeal.FieldByName('DEALQTY').AsLargeInt + dtSource.FieldByName('EXQTY').AsLargeInt;
          dtTargetDeal.FieldByName('DEALQTY').AsLargeInt + iSplitQty;
        dtTargetDeal.FieldByName('DEALVALUE').AsFloat :=
          dtTargetDeal.FieldByName('DEALVALUE').AsFloat + (dtSource.FieldByName('EXVALUE').AsFloat * iSplitQty / dtSource.FieldByName('EXQTY').AsLargeInt);
        dtTargetDeal.FieldByName('DEALPRICE').AsFloat :=
          dtTargetDeal.FieldByName('DEALVALUE').AsFloat / dtTargetDeal.FieldByName('DEALQTY').AsLargeInt;
        dtTargetDeal.Post;

        if dtTarget.Locate('SEQID', dtSource.FieldByName('SEQID').asString, []) then
        begin
          dtTarget.Edit;
          dtTarget.FieldByName('EXQTY').AsLargeInt := dtTarget.FieldByName('EXQTY').AsLargeInt + dtSource.FieldByName('EXQTY').asLargeInt;
          dtTarget.FieldByName('EXVALUE').AsLargeInt := dtTarget.FieldByName('EXVALUE').AsLargeInt + dtSource.FieldByName('EXVALUE').asLargeInt;
          dtTarget.Post;
          end
        else
          begin
          dtTarget.Append;
          for i := 0 to dtSource.FieldCount - 1 do
          begin
            oField := dtTarget.FindField(dtSource.Fields[i].FieldName);
            if (oField <> Nil) and (oField.FieldKind = fkData) and (oField.DataType <> ftDataSet)  then
              if (oField.FieldName = 'EXQTY') then
                oField.Value := iSplitQty
              else if (oField.FieldName = 'EXVALUE') then
                oField.Value := (dtSource.FieldByName('EXVALUE').AsFloat * iSplitQty / dtSource.FieldByName('EXQTY').AsLargeInt)
              else
                oField.Value := dtSource.Fields[i].Value;
          end;
          dtTarget.FieldByName('DEALTICKETID').AsLargeInt := dtTargetDeal.FieldByName('DEALTICKETID').AsLargeInt;
          dtTarget.Post;
        end;

        if dtSource.FieldByName('EXQTY').asLargeInt > iSplitQty then
        begin
          dtSource.Edit;
          dtSource.FieldByName('EXQTY').AsLargeInt :=  dtSource.FieldByName('EXQTY').AsLargeInt - iSplitQty;
          dtSource.FieldByName('EXVALUE').AsFloat :=  dtSource.FieldByName('EXQTY').AsLargeInt * dtSource.FieldByName('EXPRICE').AsFloat;
          dtSource.Post;
        end
        else
          dtSource.Delete;
      end;
    end;
  end;

  gvwDeal.ViewData.Expand(True);
end;

procedure TfrmSplitExecDealTicket.btnRemoveClick(Sender: TObject);
var
  dtSource, dtTarget, dtSourceDeal, dtTargetDeal: TDataSet;
  i, j, n, RecIdx: Integer;
  oField: TField;
begin
  dtSource := dsSplitExec.DataSet;
  dtTarget := dsDealTicketExec.DataSet;
  dtSourceDeal := dsSplitDeal.DataSet;
  dtTargetDeal := dsSubject.DataSet;

  if not dtSourceDeal.IsEmpty then
  begin
//    n := gvwExec.Controller.SelectedRowCount - 1;
//    for j := n downto 0 do
//    begin
//      RecIdx := gvwExec.Controller.SelectedRecords[j].RecordIndex;
//      gvwExec.DataController.FocusedRecordIndex := RecIdx;

      dtSourceDeal.Edit;
      dtSourceDeal.FieldByName('DEALQTY').AsLargeInt :=
        dtSourceDeal.FieldByName('DEALQTY').AsLargeInt - dtSource.FieldByName('EXQTY').AsLargeInt;
      dtSourceDeal.FieldByName('DEALVALUE').AsFloat :=
        dtSourceDeal.FieldByName('DEALVALUE').AsFloat - dtSource.FieldByName('EXVALUE').AsFloat;
      dtSourceDeal.FieldByName('DEALPRICE').AsFloat :=
        dtSourceDeal.FieldByName('DEALVALUE').AsFloat / dtSourceDeal.FieldByName('DEALQTY').AsLargeInt;
      dtSourceDeal.Post;

      if dtTarget.Locate('SEQID', dtSource.FieldByName('SEQID').asString, []) then
      begin
        dtTarget.Edit;
        dtTarget.FieldByName('EXQTY').AsLargeInt := dtTarget.FieldByName('EXQTY').AsLargeInt + dtSource.FieldByName('EXQTY').asLargeInt;
        //dtTarget.FieldByName('EXVALUE').AsLargeInt := dtTarget.FieldByName('EXVALUE').AsLargeInt + dtSource.FieldByName('EXVALUE').asLargeInt;
        dtTarget.Post;
      end
      else
      begin
        dtTarget.Append;
        for i := 0 to dtSource.FieldCount - 1 do
        begin
          oField := dtTarget.FindField(dtSource.Fields[i].FieldName);
          if (oField <> Nil) and (oField.FieldKind = fkData)
            and (oField.DataType <> ftDataSet) and (oField.FieldName <> 'DEALTICKETID') then
            oField.Value := dtSource.Fields[i].Value;
        end;
        dtTarget.FieldByName('DEALTICKETID').AsLargeInt := dtTargetDeal.FieldByName('DEALTICKETID').AsLargeInt;
        dtTarget.Post;
      end;
      dtSource.Delete;
      if (dtSourceDeal.FieldByName('DEALQTY').AsLargeInt <= 0) then
        dtSourceDeal.Delete;
//    end;
  end;

  gvwDeal.ViewData.Expand(True);
end;

procedure TfrmSplitExecDealTicket.CreateNewDealTicket1Click(Sender: TObject);
var
  dtSource, dtTarget, dtSourceDeal, dtTargetDeal: TDataSet;
  i, j, n, RecIdx: Integer;
  oField: TField;
  iSplitQty,iCurrQty : int64;
  sCPBroker: string;
begin
  dtSource := dsDealTicketExec.DataSet;
  dtTarget := dsSplitExec.DataSet;
  dtSourceDeal := dsSubject.DataSet;
  dtTargetDeal := dsSplitDeal.DataSet;

  if not dtSource.IsEmpty then
  begin
    Inc(FDealID);

    n := gvwDealTicketExec.Controller.SelectedRowCount - 1;
    for j := n downto 0 do
    begin
      RecIdx := gvwDealTicketExec.Controller.SelectedRecords[j].RecordIndex;
      gvwDealTicketExec.DataController.FocusedRecordIndex := RecIdx;

      iCurrQty := dtSource.FieldByName('EXQTY').AsInteger;
      iSplitQty := 0;
      frmSetQtySplitExec.createForm(iCurrQty, iSplitQty);

      if iSplitQty <> 0 then
      begin
        if j = n then
        begin
          dtTargetDeal.Append;
          for i := 0 to dtSourceDeal.FieldCount - 1 do
          begin
            oField := dtTargetDeal.FindField(dtSourceDeal.Fields[i].FieldName);
            if (oField <> Nil) and (oField.FieldKind = fkData) and (oField.DataType <> ftDataSet) then
              oField.Value := dtSourceDeal.Fields[i].Value;
          end;

          if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', dtSource.FieldByName('CPACCID').AsInteger, []) then
            sCPBroker := dmGlobal.IntDataLookup.cdsLuAccountACCINIT.AsString;


          dtTargetDeal.FieldByName('DEALTICKETID').AsLargeInt := FDealID;
          dtTargetDeal.FieldByName('DEALTICKETCODE').AsString := 'Deal ' + dtTargetDeal.FieldByName('DEALTICKETID').AsString;
          dtTargetDeal.FieldByName('DEALQTY').AsLargeInt := iSplitQty;
          dtTargetDeal.FieldByName('DEALPRICE').AsFloat := dtSource.FieldByName('EXPRICE').AsFloat;
          dtTargetDeal.FieldByName('DEALVALUE').AsFloat := dtSource.FieldByName('EXVALUE').AsFloat * iSplitQty / dtSource.FieldByName('EXQTY').AsLargeInt;
          dtTargetDeal.FieldByName('ALLOCQTY').Clear;
          dtTargetDeal.FieldByName('ROUNDPRICE').Clear;
          dtTargetDeal.FieldByName('ROUNDVALUE').Clear;
          dtTargetDeal.FieldByName('DIFFVALUE').Clear;
          dtTargetDeal.FieldByName('CPBROKER').AsString := sCPBroker;
          dtTargetDeal.FieldByName('CPACCID').AsInteger := dtSource.FieldByName('CPACCID').AsInteger;
          dtTargetDeal.Post;
        end
        else
        begin
          if (dtTargetDeal.FieldByName('ISAVGPRICE').AsString = '0')
            or (dtTargetDeal.FieldByName('ISAVGPRICE').IsNull) then
          begin
            if (dtTargetDeal.FieldByName('DEALPRICE').AsFloat <> dtSource.FieldByName('EXPRICE').AsFloat) then
            begin
              dmGlobal.ErrorMessage('Can''t insert trade with different price for this account!');
              exit;
            end;
          end;

          dtTargetDeal.Edit;
          dtTargetDeal.FieldByName('DEALQTY').AsLargeInt :=
            //dtTargetDeal.FieldByName('DEALQTY').AsLargeInt + dtSource.FieldByName('EXQTY').AsLargeInt;
            dtTargetDeal.FieldByName('DEALQTY').AsLargeInt + iSplitQty;
          dtTargetDeal.FieldByName('DEALVALUE').AsFloat :=
            dtTargetDeal.FieldByName('DEALVALUE').AsFloat + (dtSource.FieldByName('EXVALUE').AsFloat * iSplitQty / dtSource.FieldByName('EXQTY').AsLargeInt);
          dtTargetDeal.FieldByName('DEALPRICE').AsFloat :=
            dtTargetDeal.FieldByName('DEALVALUE').AsFloat / dtTargetDeal.FieldByName('DEALQTY').AsLargeInt;
          dtTargetDeal.Post;
        end;

        dtTarget.Append;
        for i := 0 to dtSource.FieldCount - 1 do
        begin
          oField := dtTarget.FindField(dtSource.Fields[i].FieldName);
          if (oField <> Nil) and (oField.FieldKind = fkData) and (oField.DataType <> ftDataSet)  then
            if (oField.FieldName = 'EXQTY') then
              oField.Value := iSplitQty
            else if (oField.FieldName = 'EXVALUE') then
              oField.Value := (dtSource.FieldByName('EXVALUE').AsFloat * iSplitQty / dtSource.FieldByName('EXQTY').AsLargeInt)
            else
              oField.Value := dtSource.Fields[i].Value;
        end;
        dtTarget.FieldByName('DEALTICKETID').AsLargeInt := dtTargetDeal.FieldByName('DEALTICKETID').AsLargeInt;
        dtTarget.Post;

        if dtSource.FieldByName('EXQTY').asLargeInt > iSplitQty then
          begin
            dtSource.Edit;
            dtSource.FieldByName('EXQTY').AsLargeInt :=  dtSource.FieldByName('EXQTY').AsLargeInt - iSplitQty;
            dtSource.FieldByName('EXVALUE').AsFloat :=  dtSource.FieldByName('EXQTY').AsLargeInt * dtSource.FieldByName('EXPRICE').AsFloat;
            dtSource.Post;
          end
          else
            dtSource.Delete;
      end;
    end;
  end;

  gvwDeal.ViewData.Expand(True);
end;

procedure TfrmSplitExecDealTicket.FormCreate(Sender: TObject);
begin
  FDealID := 0;
end;

procedure TfrmSplitExecDealTicket.gvwDealACCNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not TClientDataSet(dsSplitDeal.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSplitDeal.DataSet.FieldByName('ACCID').AsInteger) = mrOK then
      begin
        if not (dsSplitDeal.DataSet.State in dsEditModes) then
          dsSplitDeal.DataSet.Edit;

        dsSplitDeal.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSplitDeal.DataSet.FieldByName('ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSplitDeal.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

end.
