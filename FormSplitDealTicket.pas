unit FormSplitDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxStatusBar, Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxCheckBox,
  cxDBEdit, cxImageComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, dxLayoutControl,
  cxGridBandedTableView, cxGridDBBandedTableView, cxButtonEdit, DBClient,
  dxDateRanges;

type
  TfrmSplitDealTicket = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
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
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
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
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    dsSubject: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    grdSplitDealTicket: TcxGrid;
    grdSplitDealTicketLevel1: TcxGridLevel;
    gvwSplitDetail: TcxGridDBBandedTableView;
    dsSplitDetail: TDataSource;
    gvwSplitDetailSPLITQTY: TcxGridDBBandedColumn;
    dxLayoutControl1Group9: TdxLayoutGroup;
    gvwSplitDetailSPLITPRICE: TcxGridDBBandedColumn;
    gvwSplitDetailACCID: TcxGridDBBandedColumn;
    gvwSplitDetailACCNO: TcxGridDBBandedColumn;
    gvwSplitDetailACCNAME: TcxGridDBBandedColumn;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    gvwSplitDetailCPBROKER: TcxGridDBBandedColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gvwSplitDetailACCNOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplitDealTicket: TfrmSplitDealTicket;

implementation

{$R *.dfm}

uses FormDealTickets, DataGlobal, FormLuAccount;

procedure TfrmSplitDealTicket.btnOKClick(Sender: TObject);
var
  fSum: Double;
begin
  fSum := 0;

  dsSplitDetail.DataSet.First;
  while not dsSplitDetail.DataSet.Eof do
  begin
    fSum := fSum + dsSplitDetail.DataSet.FieldByName('SPLITQTY').AsFloat;
    dsSplitDetail.DataSet.Next;
  end;

  //if gvwSplitDetail.DataController.Summary.FooterSummaryValues[0] <> dsSubject.DataSet.FieldByName('DEALQTY').Value then
  if fSum <> dsSubject.DataSet.FieldByName('DEALQTY').Value then
  begin
    MessageDlg('Total split quantity must same with deal quantity!', mtError, [mbOK], 0);
    Abort;
  end
  else
    ModalResult := mrOk;
end;

procedure TfrmSplitDealTicket.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
    begin
      cdsLuAccount.Open;
    end;
  end;
end;

procedure TfrmSplitDealTicket.gvwSplitDetailACCNOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not TClientDataSet(dsSplitDetail.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      //Request By Irvan 20151221 to Open All Account (Not Only Trading Account)
//      if frmLuAccount.Run(dsSplitDetail.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      if frmLuAccount.Run(dsSplitDetail.DataSet.FieldByName('ACCID').AsInteger) = mrOK then
      begin
        if not (dsSplitDetail.DataSet.State in dsEditModes) then
          dsSplitDetail.DataSet.Edit;

        dsSplitDetail.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSplitDetail.DataSet.FieldByName('ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSplitDetail.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

end.
