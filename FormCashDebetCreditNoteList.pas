unit FormCashDebetCreditNoteList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxGroupBox, cxRadioGroup,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ActnList, NDatasetAction, cxImageComboBox;

type
  TfrmCashDebetCreditNoteList = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtStartDate: TcxDateEdit;
    cxButton1: TcxButton;
    rgStatus: TcxRadioGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    aclCashDCNote: TActionList;
    actViewData: TNAction;
    cxGrid1: TcxGrid;
    gvwCashDCNote: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    actNew: TNAction;
    actEdit: TNAction;
    actPosting: TNAction;
    actCancel: TNAction;
    popGrid: TPopupMenu;
    New1: TMenuItem;
    Edit1: TMenuItem;
    Posting1: TMenuItem;
    Cancel1: TMenuItem;
    cdsCashDCNoteList: TNClientDataset;
    dsCashDCNoteList: TDataSource;
    cdsCashDCNoteListCDBCRID: TIntegerField;
    cdsCashDCNoteListCDBCRCODE: TStringField;
    cdsCashDCNoteListJTYPE: TStringField;
    cdsCashDCNoteListACCID: TIntegerField;
    cdsCashDCNoteListTRDATE: TDateField;
    cdsCashDCNoteListDUEDATE: TDateField;
    cdsCashDCNoteListDC: TStringField;
    cdsCashDCNoteListCCY: TStringField;
    cdsCashDCNoteListAMOUNT: TFloatField;
    cdsCashDCNoteListCCYFX: TStringField;
    cdsCashDCNoteListEXRATE: TFloatField;
    cdsCashDCNoteListAMOUNTFX: TFloatField;
    cdsCashDCNoteListREMARK: TStringField;
    cdsCashDCNoteListGLCDDB: TIntegerField;
    cdsCashDCNoteListGLCDCR: TIntegerField;
    cdsCashDCNoteListSTATUS: TStringField;
    cdsCashDCNoteListPROCESSDATE: TDateTimeField;
    cdsCashDCNoteListCANCELDATE: TDateTimeField;
    cdsCashDCNoteListACCCDATE: TDateTimeField;
    cdsCashDCNoteListMODDA: TDateTimeField;
    cdsCashDCNoteListMODUI: TStringField;
    cdsCashDCNoteListAPPDA: TDateTimeField;
    cdsCashDCNoteListAPPUI: TStringField;
    cdsCashDCNoteListUNDER4Y: TIntegerField;
    cdsCashDCNoteListUNDER4YDA: TDateTimeField;
    cdsCashDCNoteListNOTES4Y: TStringField;
    cdsCashDCNoteListISDEL: TIntegerField;
    cdsCashDCNoteListID: TLargeintField;
    gvwCashDCNoteCDBCRID: TcxGridDBBandedColumn;
    gvwCashDCNoteCDBCRCODE: TcxGridDBBandedColumn;
    gvwCashDCNoteJTYPE: TcxGridDBBandedColumn;
    gvwCashDCNoteACCID: TcxGridDBBandedColumn;
    gvwCashDCNoteTRDATE: TcxGridDBBandedColumn;
    gvwCashDCNoteDUEDATE: TcxGridDBBandedColumn;
    gvwCashDCNoteDC: TcxGridDBBandedColumn;
    gvwCashDCNoteCCY: TcxGridDBBandedColumn;
    gvwCashDCNoteAMOUNT: TcxGridDBBandedColumn;
    gvwCashDCNoteCCYFX: TcxGridDBBandedColumn;
    gvwCashDCNoteEXRATE: TcxGridDBBandedColumn;
    gvwCashDCNoteAMOUNTFX: TcxGridDBBandedColumn;
    gvwCashDCNoteREMARK: TcxGridDBBandedColumn;
    gvwCashDCNoteGLCDDB: TcxGridDBBandedColumn;
    gvwCashDCNoteGLCDCR: TcxGridDBBandedColumn;
    gvwCashDCNoteSTATUS: TcxGridDBBandedColumn;
    gvwCashDCNotePROCESSDATE: TcxGridDBBandedColumn;
    gvwCashDCNoteCANCELDATE: TcxGridDBBandedColumn;
    gvwCashDCNoteACCCDATE: TcxGridDBBandedColumn;
    gvwCashDCNoteMODDA: TcxGridDBBandedColumn;
    gvwCashDCNoteMODUI: TcxGridDBBandedColumn;
    gvwCashDCNoteAPPDA: TcxGridDBBandedColumn;
    gvwCashDCNoteAPPUI: TcxGridDBBandedColumn;
    gvwCashDCNoteUNDER4Y: TcxGridDBBandedColumn;
    gvwCashDCNoteUNDER4YDA: TcxGridDBBandedColumn;
    gvwCashDCNoteNOTES4Y: TcxGridDBBandedColumn;
    gvwCashDCNoteISDEL: TcxGridDBBandedColumn;
    gvwCashDCNoteID: TcxGridDBBandedColumn;
    cdsCashDCNoteListACCODE: TStringField;
    cdsCashDCNoteListACCNAME: TStringField;
    gvwCashDCNoteACCODE: TcxGridDBBandedColumn;
    gvwCashDCNoteACCNAME: TcxGridDBBandedColumn;
    actView: TNAction;
    View1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actViewUpdate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashDebetCreditNoteList: TfrmCashDebetCreditNoteList;

implementation

{$R *.dfm}

uses DataGlobal, FormCashDebetCreditNote;

procedure TfrmCashDebetCreditNoteList.actCancelExecute(Sender: TObject);
begin
  inherited;
  cdsCashDCNoteList.Edit;
  cdsCashDCNoteListSTATUS.AsString       := 'C';
  cdsCashDCNoteListCANCELDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCashDCNoteList.Post;
  cdsCashDCNoteList.ApplyUpdates(-1);

  actViewData.Execute;
end;

procedure TfrmCashDebetCreditNoteList.actEditExecute(Sender: TObject);
begin
  inherited;
  if frmCashCreditDebitNote.Run(cdsCashDCNoteListCDBCRID.AsInteger) then
  begin
    actViewData.Execute;
  end;
end;

procedure TfrmCashDebetCreditNoteList.actNewExecute(Sender: TObject);
begin
  inherited;
  if frmCashCreditDebitNote.Run(-1) then
  begin
    actViewData.Execute;
  end;
end;

procedure TfrmCashDebetCreditNoteList.actPostingExecute(Sender: TObject);
var
  sResult : string;
begin
  inherited;
  sResult := dmGlobal.RemoteServer.PostingDebetCreditNote(cdsCashDCNoteListCDBCRID.AsLargeInt);
  MessageDlg(sResult, mtInformation, [mbOk], 0);
  actViewData.Execute;
end;

procedure TfrmCashDebetCreditNoteList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashDCNoteList.Close;
  cdsCashDCNoteList.Params[0].AsDate := dtStartDate.Date;
  cdsCashDCNoteList.Params[1].AsDate := dtEndDate.Date;
  if rgStatus.EditValue = 'A' then
    cdsCashDCNoteList.Params[2].AsInteger := 1
  else
    cdsCashDCNoteList.Params[2].AsInteger := 0;
  cdsCashDCNoteList.Params[3].AsString := rgStatus.EditValue;
  cdsCashDCNoteList.Open;

  gvwCashDCNote.ApplyBestFit();
end;

procedure TfrmCashDebetCreditNoteList.actViewExecute(Sender: TObject);
begin
  inherited;
  frmCashCreditDebitNote.View(cdsCashDCNoteListCDBCRID.AsInteger);
end;

procedure TfrmCashDebetCreditNoteList.actViewUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not cdsCashDCNoteList.IsEmpty;
end;

procedure TfrmCashDebetCreditNoteList.FormCreate(Sender: TObject);
begin
  inherited;
  dtStartDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtEndDate.Date := dtStartDate.Date;
  rgStatus.EditValue := 'A';

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsJrnType.Close;
    cdsJrnType.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmCashDebetCreditNoteList);

end.
