unit FormIPOAllotmentFromBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, Data.DB, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxSplitter, Vcl.ActnList, NDatasetAction, FormIPOList, cxImageComboBox;

type
  TfrmIPOAllotmentFromBook = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
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
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dsSubject: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterBOOKID: TcxGridDBBandedColumn;
    gvwMasterBOOKCODE: TcxGridDBBandedColumn;
    gvwMasterBOOKDATE: TcxGridDBBandedColumn;
    gvwMasterBOOKDESC: TcxGridDBBandedColumn;
    gvwMasterBOOKTYPE: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterCUST_NAME: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn;
    gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn;
    gvwMasterCUST_PHONE: TcxGridDBBandedColumn;
    gvwMasterCUST_FAX: TcxGridDBBandedColumn;
    gvwMasterCUST_MAIL: TcxGridDBBandedColumn;
    gvwMasterORDERTYPE: TcxGridDBBandedColumn;
    gvwMasterORDERCCY: TcxGridDBBandedColumn;
    gvwMasterORDERMAXPRICE: TcxGridDBBandedColumn;
    gvwMasterORDERVALUE: TcxGridDBBandedColumn;
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
    grdMasterLevel1: TcxGridLevel;
    dsBook: TDataSource;
    cxGrid1: TcxGrid;
    gvwAllotments: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    dsAllotments: TDataSource;
    cxSplitter1: TcxSplitter;
    gvwAllotmentsALLOTMENTID: TcxGridDBBandedColumn;
    gvwAllotmentsIPOID: TcxGridDBBandedColumn;
    gvwAllotmentsALLOTMENTCODE: TcxGridDBBandedColumn;
    gvwAllotmentsACCID: TcxGridDBBandedColumn;
    gvwAllotmentsACCCODE: TcxGridDBBandedColumn;
    gvwAllotmentsQTY: TcxGridDBBandedColumn;
    gvwAllotmentsAMOUNT: TcxGridDBBandedColumn;
    gvwAllotmentsNETFEE_PCT: TcxGridDBBandedColumn;
    gvwAllotmentsVAT_PCT: TcxGridDBBandedColumn;
    gvwAllotmentsWHT_PCT: TcxGridDBBandedColumn;
    gvwAllotmentsBFEE: TcxGridDBBandedColumn;
    gvwAllotmentsVAT: TcxGridDBBandedColumn;
    gvwAllotmentsWHT: TcxGridDBBandedColumn;
    gvwAllotmentsNETAMOUNT: TcxGridDBBandedColumn;
    gvwAllotmentsCDBCRID: TcxGridDBBandedColumn;
    gvwAllotmentsCOUTSTANDID: TcxGridDBBandedColumn;
    gvwAllotmentsFPPS: TcxGridDBBandedColumn;
    gvwAllotmentsDPPS: TcxGridDBBandedColumn;
    gvwAllotmentsCOFSENT: TcxGridDBBandedColumn;
    gvwAllotmentsCONFIRMED: TcxGridDBBandedColumn;
    gvwAllotmentsCONFORIGIN: TcxGridDBBandedColumn;
    gvwAllotmentsPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwAllotmentsPOSTEDCUSTODY: TcxGridDBBandedColumn;
    gvwAllotmentsIDCARD: TcxGridDBBandedColumn;
    gvwAllotmentsQTYPROCESS: TcxGridDBBandedColumn;
    gvwAllotmentsPEID: TcxGridDBBandedColumn;
    gvwAllotmentsREMARK: TcxGridDBBandedColumn;
    gvwAllotmentsBOOKID: TcxGridDBBandedColumn;
    gvwAllotmentsMODDA: TcxGridDBBandedColumn;
    gvwAllotmentsMODUI: TcxGridDBBandedColumn;
    gvwAllotmentsAPPDA: TcxGridDBBandedColumn;
    gvwAllotmentsAPPUI: TcxGridDBBandedColumn;
    gvwAllotmentsUNDER4Y: TcxGridDBBandedColumn;
    gvwAllotmentsUNDER4YDA: TcxGridDBBandedColumn;
    gvwAllotmentsNOTES4Y: TcxGridDBBandedColumn;
    gvwAllotmentsISDEL: TcxGridDBBandedColumn;
    gvwAllotmentsID: TcxGridDBBandedColumn;
    gvwAllotmentsACCNAME: TcxGridDBBandedColumn;
    aclAllotments: TActionList;
    popBook: TPopupMenu;
    popAllotment: TPopupMenu;
    actAdd: TNAction;
    actDelete: TNAction;
    NAction3: TNAction;
    AddSelectedBooktoAllotment1: TMenuItem;
    Delete1: TMenuItem;
    gvwMasterDIST_TYPE: TcxGridDBBandedColumn;
    gvwMasterORDERBASED: TcxGridDBBandedColumn;
    procedure actAddExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FAllotmentCodeSeq: String;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;

    function Run(AIPO:Integer; AFormBrowse: TfrmIPOList): TModalResult;
  end;

var
  frmIPOAllotmentFromBook: TfrmIPOAllotmentFromBook;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmIPOAllotmentFromBook }

procedure TfrmIPOAllotmentFromBook.actAddExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin
  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    with FFormBrowse do
    begin
      if (cdsIPOBookOutstandingBOOKTYPE.AsString = 'C') and (not cdsIPOBookOutstandingACCID.IsNull) then
      begin
        cdsIPOAllotment.Append;
        cdsIPOAllotmentALLOTMENTID.AsInteger := dmGlobal.RemoteServer.GetSeq(
           'TBL_B_IPO_ALLOTMENT');
        cdsIPOAllotmentALLOTMENTCODE.AsString := cdsIPOIPOCODE.AsString + '-' +
          Format('%.5d', [dmGlobal.RemoteServer.GetSeq(FAllotmentCodeSeq)]);
        cdsIPOAllotmentIPOID.AsInteger := cdsIPOIPOID.AsInteger;
        cdsIPOAllotmentACCID.AsInteger := cdsIPOBookOutstandingACCID.AsInteger;
        if cdsIPOBookOutstandingORDERBASED.AsString = 'A' then
          cdsIPOAllotmentQTY.AsFloat := Int((cdsIPOBookOutstandingORDERVALUE.AsFloat / cdsIPOFIXEDPRICE.AsFloat) / 100) * 100
        else if cdsIPOBookOutstandingORDERBASED.AsString = 'Q' then
          cdsIPOAllotmentQTY.AsFloat := cdsIPOBookOutstandingORDERVALUE.AsFloat;
        cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
        cdsIPOAllotmentNETFEE_PCT.AsFloat := cdsIPONETFEE.AsFloat;
        cdsIPOAllotmentVAT_PCT.AsFloat := cdsIPOVAT.AsFloat;
        if (dmGlobal.RemoteServer.CheckAccountChargeUsed(cdsIPOAllotmentACCID.AsInteger, 'IDX', 'CHG9') = '1') then
          cdsIPOAllotmentWHT_PCT.AsFloat := cdsIPOWHT.AsFloat
        else
          cdsIPOAllotmentWHT_PCT.AsFloat := 0;
        cdsIPOAllotmentBOOKID.AsInteger := cdsIPOBookOutstandingBOOKID.AsInteger;
        cdsIPOAllotment.Post;
      end;
    end;
  end;

end;

procedure TfrmIPOAllotmentFromBook.actDeleteExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Delete;
  end;
end;

function TfrmIPOAllotmentFromBook.Run(AIPO:Integer; AFormBrowse: TfrmIPOList): TModalResult;
var
  oForm: TfrmIPOAllotmentFromBook;
begin
  Result := mrNone;

  oForm := TfrmIPOAllotmentFromBook.Create(nil);
  Try
    with oForm do
    begin
      FormBrowse := AFormBrowse;

      with FormBrowse do
      begin
        cdsIPO.Close;
        cdsIPO.Params[0].AsInteger := AIPO;
        cdsIPO.Open;

        cdsIPOBookOutstanding.Close;
        cdsIPOBookOutstanding.Params[0].AsInteger := AIPO;
        cdsIPOBookOutstanding.Open;

        cdsIPOAllotment.Close;
        cdsIPOAllotment.Params[0].AsInteger := -1;
        cdsIPOAllotment.Open;

        FAllotmentCodeSeq := 'Allotment' + cdsIPOIPOCODE.AsString;
      end;

      if oForm.ShowModal = mrOK then
      begin
        with FormBrowse do
        begin
          if cdsIPOAllotment.State in dsEditModes then
            cdsIPOAllotment.Post;

          if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          begin
            cdsIPO.Close;
            cdsIPO.Open;

            cdsIPOAllotment.First;

            while not cdsIPOAllotment.Eof do
            begin
              cdsIPO.Edit;
              cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat +
                 cdsIPOAllotmentAMOUNT.AsFloat;
              cdsIPO.Post;

              cdsIPOAllotment.Next;
            end;

            cdsIPO.ApplyUpdates(-1);

            Result := mrOk;
          end;

        end;

      end
      else
      begin

      end;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
