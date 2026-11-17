unit FormGeneralLedgerJournal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxPropertiesStore, dxBar, cxClasses, dxPSCore,
  dxPScxCommon, NDatasetContainer, NDatasetAction, Vcl.ActnList, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Datasnap.DBClient, NClientDataset,
  cxCalendar, cxBarEditItem, System.Actions, System.ImageList, dxDateRanges,Clipbrd,
  dxScrollbarAnnotations;

type
  TfrmGeneralLedgerJournal = class(TfrmBrowseSingle)
    cdsGLJournal_H: TNClientDataset;
    gvwBrowseVALUEDATE: TcxGridDBBandedColumn;
    gvwBrowseDB_AMT: TcxGridDBBandedColumn;
    gvwBrowseCR_AMT: TcxGridDBBandedColumn;
    cdsGLJournal_D: TNClientDataset;
    gvwGLJournal_D: TcxGridDBBandedTableView;
    BarMBrowseBar2: TdxBar;
    txtDate: TcxBarEditItem;
    actGLJournalPost: TNAction;
    N5: TMenuItem;
    PostingGLJournal1: TMenuItem;
    cdsGLJournal_HJRNTYPEDESC: TStringField;
    cdsGLJournal_HVALUEDATE: TDateField;
    cdsGLJournal_HDB_AMT: TFloatField;
    cdsGLJournal_HCR_AMT: TFloatField;
    gvwBrowseJRNTYPEDESC: TcxGridDBBandedColumn;
    actSelectedGLJournalPosting: TNAction;
    cdsGLJournal_HJOUTYPE: TStringField;
    gvwBrowseJOUTYPE: TcxGridDBBandedColumn;
    cdsGLJournal_DJOUTYPE: TStringField;
    cdsGLJournal_DGL_JRNTYPE: TStringField;
    cdsGLJournal_DJRNTYPEDESC: TStringField;
    cdsGLJournal_DVALUEDATE: TDateField;
    cdsGLJournal_DCPID: TIntegerField;
    cdsGLJournal_DGLACCOUNTID: TIntegerField;
    cdsGLJournal_DGLACCOUNTCODE: TStringField;
    cdsGLJournal_DGLACCOUNTNAME: TStringField;
    cdsGLJournal_DCDESC: TStringField;
    cdsGLJournal_DCCY: TStringField;
    cdsGLJournal_DEXRATE: TFloatField;
    cdsGLJournal_DDEBET: TFloatField;
    cdsGLJournal_DCREDIT: TFloatField;
    cdsGLJournal_DFXDEBET: TFloatField;
    cdsGLJournal_DFXCREDIT: TFloatField;
    cdsGLJournal_DCPCODE: TStringField;
    cdsGLJournal_HPOSTED: TStringField;
    cdsGLJournal_HBalance: TFloatField;
    gvwBrowsePOSTED: TcxGridDBBandedColumn;
    gvwBrowseBalance: TcxGridDBBandedColumn;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure txtDatePropertiesCloseUp(Sender: TObject);
    procedure actGLJournalPostExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSelectedGLJournalPostingExecute(Sender: TObject);
    procedure cdsGLJournal_HCalcFields(DataSet: TDataSet);
    procedure actViewExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
  private
    procedure ShowGeneralAccount(ADate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmGeneralLedgerJournal: TfrmGeneralLedgerJournal;

implementation

{$R *.dfm}

uses DataGlobal, FormGenerateJournalPost;

procedure TfrmGeneralLedgerJournal.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(cxGrid1.FocusedView);

  If Assigned(LView) Then
  begin
    Clipboard.Clear;
    sValues := '';

    if LView.OptionsSelection.CellMultiSelect then
    begin
      for iRow := 0 to Pred(LView.Controller.SelectedRecordCount) do
      begin
        for iCol := 0 to Pred(LView.Controller.SelectedColumnCount) do
        begin
          if iRow = 0 then
          begin
            if sHeader = '' then sHeader := LView.Controller.SelectedColumns[iCol].Caption + #9
            else sHeader := sHeader + LView.Controller.SelectedColumns[iCol].Caption + #9;
          end;

          if sValues = '' then
            sValues := VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) + #9
          else
            sValues := sValues + VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) +#9;
        end;
        sValues := sValues + sLineBreak ;
      end;
    end;
    Clipboard.AsText := sHeader + sLineBreak + sValues;
  end;

end;

procedure TfrmGeneralLedgerJournal.actGLJournalPostExecute(Sender: TObject);
begin
  inherited;
  if MessageQuestion('Posting Journal ?') then
  begin
    dmGlobal.RemoteServer.PostGLJournal(txtDate.EditValue);
    MessageDlg('Posing general ledger journal has been proceed...', mtInformation, [mbOk], 0);
    DatasetContainer.Refresh;
  end;
end;

procedure TfrmGeneralLedgerJournal.actRefreshExecute(Sender: TObject);
begin
  inherited;
  ShowGeneralAccount(txtDate.EditValue);
end;

procedure TfrmGeneralLedgerJournal.actSelectedGLJournalPostingExecute(
  Sender: TObject);
var
  sResult, sJournalType : string;
  i, iResv, iResx: Integer;
  sMsg, sMsgTmp: string;
  bRes: Boolean;
begin
  inherited;
  if MessageQuestion('Posting Selected Journal ?') then
  begin
    sJournalType := '';
    sResult      := 'Result : '+#13;

    iResv   := 0;
    iResx   := 0;
    sMsgTmp := '';
    if MessageDlg('Posting Journal ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      for i := 0 to gvwBrowse.Controller.SelectedRowCount -1 do
      begin
        sJournalType := gvwBrowse.Controller.SelectedRows[i].Values[gvwBrowseJOUTYPE.Index];
        bRes := dmGlobal.RemoteServer.GLTradePostingByJournalType(txtDate.EditValue, sJournalType, sMsg);
        if bRes then
          Inc(iResv)
        else
        begin
          if iResx = 0 then
            sMsgTmp := 'Error Message(s) : '+ #13;

          Inc(iResx);
          sMsgTmp := sMsgTmp + sMsg + #13;
        end;
      end;

      sResult := IntToStr(iResv)+' Posting journal success and '+IntToStr(iResx)+' fail posting journal';
      if iResx > 0 then
        sResult := sResult + #13 + sMsgTmp;
        MessageDlg(sResult, mtInformation, [mbOk], 0);
      DatasetContainer.Refresh;
    end;
  end;
end;

procedure TfrmGeneralLedgerJournal.actViewExecute(Sender: TObject);
var
  oForm: TfrmGeneralLedgerJournalPost;
begin
//  inherited;
  oForm := TfrmGeneralLedgerJournalPost.Create(nil);
  oForm.ShowModal;
  oForm.Free;
end;

procedure TfrmGeneralLedgerJournal.cdsGLJournal_HCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGLJournal_HBalance.AsFloat := cdsGLJournal_HDB_AMT.AsFloat - cdsGLJournal_HCR_AMT.AsFloat;
end;

procedure TfrmGeneralLedgerJournal.FormCreate(Sender: TObject);
begin
  inherited;
  txtDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  ShowGeneralAccount(dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmGeneralLedgerJournal.ShowGeneralAccount(ADate: TDateTime);
begin
  cdsGLJournal_H.Close;
  cdsGLJournal_H.Params[0].AsDateTime := ADate;
  cdsGLJournal_H.Open;
end;

procedure TfrmGeneralLedgerJournal.txtDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  ShowGeneralAccount(txtDate.EditValue);
end;

Initialization
  RegisterClass(TfrmGeneralLedgerJournal);

end.
