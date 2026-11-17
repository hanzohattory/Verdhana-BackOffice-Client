unit FormInterestTrackList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCheckBox, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, System.Actions, System.ImageList,
  cxButtonEdit, cxBarEditItem, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmInterestTrackList = class(TfrmBrowseData)
    cdsInterestTrackList: TNClientDataset;
    cdsInterestTrackListINTRS_ID: TLargeintField;
    cdsInterestTrackListINTEREST_NO: TStringField;
    cdsInterestTrackListINTERESTDATE: TDateField;
    cdsInterestTrackListACCID: TIntegerField;
    cdsInterestTrackListACCNO: TStringField;
    cdsInterestTrackListACCNAME: TStringField;
    cdsInterestTrackListCCYCODE: TStringField;
    cdsInterestTrackListINTEREST_TYPE: TStringField;
    cdsInterestTrackListBASE_INTRS_AMT: TFloatField;
    cdsInterestTrackListRATE: TFloatField;
    cdsInterestTrackListINTEREST_DAY: TIntegerField;
    cdsInterestTrackListYEAROFDAY: TIntegerField;
    cdsInterestTrackListINTEREST_AMT: TFloatField;
    cdsInterestTrackListTAX_PERCENT: TFloatField;
    cdsInterestTrackListTAX_AMT: TFloatField;
    cdsInterestTrackListNET_INTEREST: TFloatField;
    cdsInterestTrackListACCRUED: TStringField;
    cdsInterestTrackListACCRUE_DATE: TDateField;
    cdsInterestTrackListACCRUE_JRNID: TLargeintField;
    cdsInterestTrackListEXECUTED: TStringField;
    cdsInterestTrackListEXEC_DATE: TDateField;
    cdsInterestTrackListEXEC_JRNHID: TLargeintField;
    cdsInterestTrackListREVERSED: TStringField;
    cdsInterestTrackListREVERSE_DATE: TDateField;
    cdsInterestTrackListREVERSE_JRNHID: TLargeintField;
    cdsInterestTrackListDISCOUNT: TStringField;
    cdsInterestTrackListDISCOUNT_DATE: TDateField;
    cdsInterestTrackListDISCOUNT_JRNHID: TLargeintField;
    cdsInterestTrackListDISCOUNT_AMT: TFloatField;
    cdsInterestTrackListMODDA: TDateTimeField;
    cdsInterestTrackListMODUI: TStringField;
    cdsInterestTrackListAPPDA: TDateTimeField;
    cdsInterestTrackListAPPUI: TStringField;
    cdsInterestTrackListUNDER4Y: TIntegerField;
    cdsInterestTrackListUNDER4YDA: TDateTimeField;
    cdsInterestTrackListNOTES4Y: TStringField;
    cdsInterestTrackListID: TLargeintField;
    gvwMasterINTRS_ID: TcxGridDBBandedColumn;
    gvwMasterINTEREST_NO: TcxGridDBBandedColumn;
    gvwMasterINTERESTDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterINTEREST_TYPE: TcxGridDBBandedColumn;
    gvwMasterBASE_INTRS_AMT: TcxGridDBBandedColumn;
    gvwMasterRATE: TcxGridDBBandedColumn;
    gvwMasterINTEREST_DAY: TcxGridDBBandedColumn;
    gvwMasterYEAROFDAY: TcxGridDBBandedColumn;
    gvwMasterINTEREST_AMT: TcxGridDBBandedColumn;
    gvwMasterTAX_PERCENT: TcxGridDBBandedColumn;
    gvwMasterTAX_AMT: TcxGridDBBandedColumn;
    gvwMasterNET_INTEREST: TcxGridDBBandedColumn;
    gvwMasterACCRUED: TcxGridDBBandedColumn;
    gvwMasterACCRUE_DATE: TcxGridDBBandedColumn;
    gvwMasterACCRUE_JRNID: TcxGridDBBandedColumn;
    gvwMasterEXECUTED: TcxGridDBBandedColumn;
    gvwMasterEXEC_DATE: TcxGridDBBandedColumn;
    gvwMasterEXEC_JRNHID: TcxGridDBBandedColumn;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSE_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSE_JRNHID: TcxGridDBBandedColumn;
    gvwMasterDISCOUNT: TcxGridDBBandedColumn;
    gvwMasterDISCOUNT_DATE: TcxGridDBBandedColumn;
    gvwMasterDISCOUNT_JRNHID: TcxGridDBBandedColumn;
    gvwMasterDISCOUNT_AMT: TcxGridDBBandedColumn;
    cdsInterestTrackListPOSTED: TStringField;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    cdsInterestTrack: TNClientDataset;
    cdsInterestTrackINTRS_ID: TLargeintField;
    cdsInterestTrackINTEREST_NO: TStringField;
    cdsInterestTrackINTERESTDATE: TDateField;
    cdsInterestTrackACCID: TIntegerField;
    cdsInterestTrackACCNO: TStringField;
    cdsInterestTrackACCNAME: TStringField;
    cdsInterestTrackCCYCODE: TStringField;
    cdsInterestTrackINTEREST_TYPE: TStringField;
    cdsInterestTrackBASE_INTRS_AMT: TFloatField;
    cdsInterestTrackRATE: TFloatField;
    cdsInterestTrackINTEREST_DAY: TIntegerField;
    cdsInterestTrackYEAROFDAY: TIntegerField;
    cdsInterestTrackINTEREST_AMT: TFloatField;
    cdsInterestTrackTAX_PERCENT: TFloatField;
    cdsInterestTrackTAX_AMT: TFloatField;
    cdsInterestTrackNET_INTEREST: TFloatField;
    cdsInterestTrackACCRUED: TStringField;
    cdsInterestTrackACCRUE_DATE: TDateField;
    cdsInterestTrackACCRUE_JRNID: TLargeintField;
    cdsInterestTrackEXECUTED: TStringField;
    cdsInterestTrackEXEC_DATE: TDateField;
    cdsInterestTrackEXEC_JRNHID: TLargeintField;
    cdsInterestTrackREVERSED: TStringField;
    cdsInterestTrackREVERSE_DATE: TDateField;
    cdsInterestTrackREVERSE_JRNHID: TLargeintField;
    cdsInterestTrackDISCOUNT: TStringField;
    cdsInterestTrackDISCOUNT_DATE: TDateField;
    cdsInterestTrackDISCOUNT_JRNHID: TLargeintField;
    cdsInterestTrackDISCOUNT_AMT: TFloatField;
    cdsInterestTrackPOSTED: TStringField;
    actExecuted: TNAction;
    actReversed: TNAction;
    actPosting: TNAction;
    N5: TMenuItem;
    Executed1: TMenuItem;
    Reversed1: TMenuItem;
    Posting1: TMenuItem;
    actDiscount: TNAction;
    Discount1: TMenuItem;
    BarMBrowseBar2: TdxBar;
    dtStartDate: TcxBarEditItem;
    dtEndDate: TcxBarEditItem;
    edAccCode: TcxBarEditItem;
    edCustName: TcxBarEditItem;
    chkAllAccount: TcxBarEditItem;
    BarMBrowseBar4: TdxBar;
    chkAllBranch: TcxBarEditItem;
    edBranch: TcxBarEditItem;
    procedure dtInterestDatePropertiesCloseUp(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actExecutedExecute(Sender: TObject);
    procedure actReversedExecute(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actDiscountExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkAllAccountPropertiesChange(Sender: TObject);
    procedure chkAllBranchPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FAccID: Largeint;

    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmInterestTrackList: TfrmInterestTrackList;

implementation

{$R *.dfm}

uses DataGlobal, FormInterestTrack, DataLookup, FormLuAccount;

procedure TfrmInterestTrackList.actDiscountExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  oForm := TfrmInterestTrack.Create(self);

  cdsInterestTrack.Close;
  cdsInterestTrack.Params[0].AsInteger := cdsInterestTrackListINTRS_ID.AsInteger;
  cdsInterestTrack.Open;

  cdsInterestTrack.Edit;
  if oForm.ShowModal = mrOk then
  begin
    cdsInterestTrackDISCOUNT.AsString := '1';
    cdsInterestTrack.Post;
    dmGlobal.RemoteServer.InterestDiscount(cdsInterestTrackINTRS_ID.AsLargeInt, cdsInterestTrackDISCOUNT_AMT.AsFloat, cdsInterestTrackDISCOUNT_DATE.AsDateTime);

    RefreshData;
  end;

  oForm.Free;
end;

procedure TfrmInterestTrackList.actExecutedExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Executed Interest Track ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsInterestTrackList.Edit;
    cdsInterestTrackListEXECUTED.AsString    := '1';
    cdsInterestTrackListEXEC_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    cdsInterestTrackList.Post;

    cdsInterestTrackList.ApplyUpdates(-1);
    MessageDlg('Executed Interest Track is done', mtInformation, [mbOk], 0)
  end;
end;

procedure TfrmInterestTrackList.actPostingExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Posting Interest Track ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsInterestTrackList.Edit;
    cdsInterestTrackListPOSTED.AsString := '1';
    cdsInterestTrackList.Post;

    cdsInterestTrackList.ApplyUpdates(-1);
    MessageDlg('Posted Interest Track is done', mtInformation, [mbOk], 0)
  end;
end;

procedure TfrmInterestTrackList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate     := dtStartDate.EditValue;
  ReportContainer.Params[1].AsDate     := dtEndDate.EditValue;
  ReportContainer.Params[2].AsLargeInt := FAccID;
  ReportContainer.Params[3].AsInteger  := chkAllAccount.EditValue;
  ReportContainer.Params[4].AsInteger  := chkAllBranch.EditValue;
  ReportContainer.Params[5].AsInteger  := edBranch.EditValue;

  inherited;
end;

procedure TfrmInterestTrackList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmInterestTrackList.actReversedExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Reversed Interest Track ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsInterestTrackList.Edit;
    cdsInterestTrackListREVERSED.AsString       := '1';
    cdsInterestTrackListREVERSE_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    cdsInterestTrackList.Post;

    cdsInterestTrackList.ApplyUpdates(-1);
    MessageDlg('Reversed Interest Track is done', mtInformation, [mbOk], 0)
  end;
end;

procedure TfrmInterestTrackList.chkAllAccountPropertiesChange(Sender: TObject);
begin
  inherited;
  edAccCode.Enabled  := chkAllAccount.EditValue = 0;
  edCustName.Enabled := chkAllAccount.EditValue = 0;
end;

procedure TfrmInterestTrackList.chkAllBranchPropertiesChange(Sender: TObject);
begin
  inherited;
  edBranch.Enabled := chkAllBranch.EditValue = 0;
end;

procedure TfrmInterestTrackList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
//  AFormClass := TfrmInterestTrack;
end;

procedure TfrmInterestTrackList.dtInterestDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmInterestTrackList.edAccCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID, True) = mrOK then
    begin
      FAccID               := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue  := cdsLuAccountMultiFilterACCCODE.AsString;
      edCustName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmInterestTrackList.FormShow(Sender: TObject);
var
  dtTransDate: TDateTime;
  wYear, wMonth: Word;
begin
  inherited;
  FAccID := 0;

  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  wYear       := StrToInt(FormatDateTime('yyyy', dtTransDate));
  wMonth      := StrToInt(FormatDateTime('mm', dtTransDate));

  dtStartDate.EditValue := EncodeDate(wYear, wMonth, 1);
  dtEndDate.EditValue   := dmGlobal.RemoteServer.GetTransDate;

  chkAllBranch.EditValue  := 2;
  chkAllAccount.EditValue := 1;
  edBranch.EditValue      := 0;

  dmGlobal.IntDataLookup.cdsLuAccount.Close;
  dmGlobal.IntDataLookup.cdsLuAccount.Open;

  dmGlobal.IntDataLookup.cdsLuBranch.Close;
  dmGlobal.IntDataLookup.cdsLuBranch.Open;

  edAccCode.EditValue  := '';
  edCustName.EditValue := '';

  edBranch.EditValue := 0;

  edAccCode.Enabled  := False;
  edCustName.Enabled := False;

  edBranch.Enabled := False;

  RefreshData;
end;

procedure TfrmInterestTrackList.RefreshData;
begin
  cdsInterestTrackList.Close;
  cdsInterestTrackList.Params[0].AsDateTime := dtStartDate.EditValue;
  cdsInterestTrackList.Params[1].AsDateTime := dtEndDate.EditValue;
  cdsInterestTrackList.Params[2].AsInteger  := FAccID;
  cdsInterestTrackList.Params[3].AsInteger  := chkAllAccount.EditValue;
  cdsInterestTrackList.Params[4].AsInteger  := chkAllBranch.EditValue;
  cdsInterestTrackList.Params[5].AsInteger  := edBranch.EditValue;

  cdsInterestTrackList.Open;
end;

Initialization
  RegisterClass(TfrmInterestTrackList);

end.
