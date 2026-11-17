unit FormLedgerDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.Menus, dxDateRanges,Clipbrd,
  System.Actions, Vcl.ActnList, NDatasetAction;

type
  TfrmLedgerDetail = class(TForm)
    glvGeneralLedger: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsFundSubLedger: TNClientDataset;
    cdsSecSubLedger: TNClientDataset;
    dsFundSubLedger: TDataSource;
    dsSecSubLedger: TDataSource;
    cdsGeneralLedger: TNClientDataset;
    dsGeneralLedger: TDataSource;
    cdsSecSubLedgerLINKTYPE: TStringField;
    cdsSecSubLedgerSTRID: TLargeintField;
    cdsSecSubLedger__COLUMN1: TLargeintField;
    cdsSecSubLedgerJOUTYPE: TStringField;
    cdsSecSubLedgerGL_JRNTYPE: TStringField;
    cdsSecSubLedgerJRNTYPEDESC: TStringField;
    cdsSecSubLedgerENTRYDATE: TDateField;
    cdsSecSubLedgerVALUEDATE: TDateField;
    cdsSecSubLedgerACCID: TLargeintField;
    cdsSecSubLedgerACCNO: TStringField;
    cdsSecSubLedgerACCNAME: TStringField;
    cdsSecSubLedgerTRTYPE: TStringField;
    cdsSecSubLedgerSITYPENAME: TStringField;
    cdsSecSubLedgerGLACCOUNTID: TLargeintField;
    cdsSecSubLedgerGLACCOUNTCODE: TStringField;
    cdsSecSubLedgerGLACCOUNTNAME: TStringField;
    cdsSecSubLedger__COLUMN2: TStringField;
    cdsSecSubLedgerLINKID: TLargeintField;
    cdsSecSubLedgerLINKNO: TStringField;
    cdsSecSubLedgerHSDESC: TStringField;
    cdsSecSubLedgerSDESC: TStringField;
    cdsSecSubLedger__COLUMN3: TStringField;
    cdsSecSubLedgerDEBIT: TFloatField;
    cdsSecSubLedgerCREDIT: TFloatField;
    cdsSecSubLedgerREVERSE_STS: TStringField;
    cdsSecSubLedgerREVERSE_JRNID: TStringField;
    cdsSecSubLedgerREFID: TStringField;
    cdsSecSubLedgerEXRATE: TStringField;
    cdsSecSubLedgerJRNID: TStringField;
    cdsSecSubLedgerCPCODE: TStringField;
    cdsSecSubLedger__COLUMN4: TStringField;
    cdsSecSubLedgerSALESCODE: TStringField;
    cdsSecSubLedgerPRDCODE: TStringField;
    cdsSecSubLedgerLDGTYPE: TStringField;
    cdsSecSubLedgerALDESCRIPTION: TStringField;
    glvFundSubLedger: TcxGridLevel;
    glvSecuritiesSubLedger: TcxGridLevel;
    gvwFundSubLedger: TcxGridDBBandedTableView;
    gvwSecuritiesSubLedger: TcxGridDBBandedTableView;
    gvwSecuritiesSubLedgerACCNO: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerACCNAME: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerTRTYPE: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerSITYPENAME: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerHSDESC: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerSDESC: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedger__COLUMN3: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerDEBIT: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerCREDIT: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerLDGTYPE: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerALDESCRIPTION: TcxGridDBBandedColumn;
    cdsFundSubLedgerCTRID: TLargeintField;
    cdsFundSubLedger__COLUMN1: TLargeintField;
    cdsFundSubLedgerJOUTYPE: TStringField;
    cdsFundSubLedgerGL_JRNTYPE: TStringField;
    cdsFundSubLedgerJRNTYPEDESC: TStringField;
    cdsFundSubLedgerENTRYDATE: TDateTimeField;
    cdsFundSubLedgerVALUEDATE: TDateTimeField;
    cdsFundSubLedgerACCID: TLargeintField;
    cdsFundSubLedgerACCNO: TStringField;
    cdsFundSubLedgerACCNAME: TStringField;
    cdsFundSubLedgerTRTYPE: TStringField;
    cdsFundSubLedgerSITYPENAME: TStringField;
    cdsFundSubLedgerGLACCOUNTID: TLargeintField;
    cdsFundSubLedgerGLACCOUNTCODE: TStringField;
    cdsFundSubLedgerGLACCOUNTNAME: TStringField;
    cdsFundSubLedger__COLUMN2: TStringField;
    cdsFundSubLedger__COLUMN3: TLargeintField;
    cdsFundSubLedgerLINKNO: TStringField;
    cdsFundSubLedgerHCDESC: TStringField;
    cdsFundSubLedgerCDESC: TStringField;
    cdsFundSubLedger__COLUMN4: TStringField;
    cdsFundSubLedgerDEBIT: TFloatField;
    cdsFundSubLedgerCREDIT: TFloatField;
    cdsFundSubLedgerDEBIT_BASE: TFloatField;
    cdsFundSubLedgerCREDIT_BASE: TFloatField;
    cdsFundSubLedgerREVERSE_STS: TStringField;
    cdsFundSubLedgerREVERSE_JRNID: TLargeintField;
    cdsFundSubLedgerREFID: TLargeintField;
    cdsFundSubLedgerEXRATE: TFloatField;
    cdsFundSubLedgerJRNID: TLargeintField;
    cdsFundSubLedgerCPCODE: TStringField;
    cdsFundSubLedgerSALESCODE: TStringField;
    cdsFundSubLedgerPRDCODE: TStringField;
    cdsFundSubLedgerLDGTYPE: TStringField;
    cdsFundSubLedgerCCY: TStringField;
    cdsGeneralLedgerCTRID: TLargeintField;
    cdsGeneralLedger__COLUMN1: TLargeintField;
    cdsGeneralLedgerJOUTYPE: TStringField;
    cdsGeneralLedgerGL_JRNTYPE: TStringField;
    cdsGeneralLedgerJRNTYPEDESC: TStringField;
    cdsGeneralLedgerENTRYDATE: TDateTimeField;
    cdsGeneralLedgerVALUEDATE: TDateTimeField;
    cdsGeneralLedgerACCID: TLargeintField;
    cdsGeneralLedgerACCNO: TStringField;
    cdsGeneralLedgerACCNAME: TStringField;
    cdsGeneralLedgerTRTYPE: TStringField;
    cdsGeneralLedgerSITYPENAME: TStringField;
    cdsGeneralLedgerGLACCOUNTID: TLargeintField;
    cdsGeneralLedgerGLACCOUNTCODE: TStringField;
    cdsGeneralLedgerGLACCOUNTNAME: TStringField;
    cdsGeneralLedger__COLUMN2: TStringField;
    cdsGeneralLedger__COLUMN3: TLargeintField;
    cdsGeneralLedgerLINKNO: TStringField;
    cdsGeneralLedgerHCDESC: TStringField;
    cdsGeneralLedgerCDESC: TStringField;
    cdsGeneralLedger__COLUMN4: TStringField;
    cdsGeneralLedgerDEBIT: TFloatField;
    cdsGeneralLedgerCREDIT: TFloatField;
    cdsGeneralLedgerDEBIT_BASE: TFloatField;
    cdsGeneralLedgerCREDIT_BASE: TFloatField;
    cdsGeneralLedgerREVERSE_STS: TStringField;
    cdsGeneralLedgerREVERSE_JRNID: TLargeintField;
    cdsGeneralLedgerREFID: TLargeintField;
    cdsGeneralLedgerEXRATE: TFloatField;
    cdsGeneralLedgerJRNID: TLargeintField;
    cdsGeneralLedgerCPCODE: TStringField;
    cdsGeneralLedgerSALESCODE: TStringField;
    cdsGeneralLedgerPRDCODE: TStringField;
    cdsGeneralLedgerLDGTYPE: TStringField;
    cdsGeneralLedgerCCY: TStringField;
    gvwFundSubLedgerACCNO: TcxGridDBBandedColumn;
    gvwFundSubLedgerACCNAME: TcxGridDBBandedColumn;
    gvwFundSubLedgerSITYPENAME: TcxGridDBBandedColumn;
    gvwFundSubLedgerHCDESC: TcxGridDBBandedColumn;
    gvwFundSubLedgerCDESC: TcxGridDBBandedColumn;
    gvwFundSubLedgerDEBIT: TcxGridDBBandedColumn;
    gvwFundSubLedgerCREDIT: TcxGridDBBandedColumn;
    gvwFundSubLedgerDEBIT_BASE: TcxGridDBBandedColumn;
    gvwFundSubLedgerCREDIT_BASE: TcxGridDBBandedColumn;
    gvwFundSubLedgerEXRATE: TcxGridDBBandedColumn;
    gvwFundSubLedgerCCY: TcxGridDBBandedColumn;
    gvwGeneralLedger: TcxGridDBBandedTableView;
    gvwGeneralLedgerJRNTYPEDESC: TcxGridDBBandedColumn;
    gvwGeneralLedgerACCNO: TcxGridDBBandedColumn;
    gvwGeneralLedgerACCNAME: TcxGridDBBandedColumn;
    gvwGeneralLedgerSITYPENAME: TcxGridDBBandedColumn;
    gvwGeneralLedgerGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwGeneralLedgerGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwGeneralLedgerHCDESC: TcxGridDBBandedColumn;
    gvwGeneralLedgerCDESC: TcxGridDBBandedColumn;
    gvwGeneralLedgerDEBIT: TcxGridDBBandedColumn;
    gvwGeneralLedgerCREDIT: TcxGridDBBandedColumn;
    gvwGeneralLedgerDEBIT_BASE: TcxGridDBBandedColumn;
    gvwGeneralLedgerCREDIT_BASE: TcxGridDBBandedColumn;
    gvwGeneralLedgerEXRATE: TcxGridDBBandedColumn;
    gvwGeneralLedgerCCY: TcxGridDBBandedColumn;
    gvwGeneralLedgerGL_JRNTYPE: TcxGridDBBandedColumn;
    gvwGeneralLedgerREVERSE_STS: TcxGridDBBandedColumn;
    cdsFundSubLedgerREVERSED: TStringField;
    cdsSecSubLedgerREVERSED: TStringField;
    cdsGeneralLedgerREVERSED: TStringField;
    gvwGeneralLedgerREVERSED: TcxGridDBBandedColumn;
    gvwFundSubLedgerREVERSE_STS: TcxGridDBBandedColumn;
    gvwFundSubLedgerREVERSED: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerREVERSE_STS: TcxGridDBBandedColumn;
    gvwSecuritiesSubLedgerREVERSED: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    CustomizeColumn1: TMenuItem;
    gvwGeneralLedgerLDGTYPE: TcxGridDBBandedColumn;
    cdsGeneralLedgerLEDGERNAME: TStringField;
    gvwGeneralLedgerLEDGERNAME: TcxGridDBBandedColumn;
    cdsFundSubLedgerLEDGERNAME: TStringField;
    gvwFundSubLedgerLDGTYPE: TcxGridDBBandedColumn;
    gvwFundSubLedgerLEDGERNAME: TcxGridDBBandedColumn;
    aclEditor: TActionList;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomizeColumn1Click(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(ALinkType,ACCY: String; ALinkID,ACPID: int64;AExrate : Double): TModalResult;
  end;

var
  frmLedgerDetail: TfrmLedgerDetail;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmLedgerDetail }

procedure TfrmLedgerDetail.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
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

procedure TfrmLedgerDetail.CustomizeColumn1Click(Sender: TObject);
begin
  if glvGeneralLedger.Active then
    gvwGeneralLedger.Controller.Customization := True
  else if glvFundSubLedger.Active then
    gvwFundSubLedger.Controller.Customization := True
  else if glvSecuritiesSubLedger.Active then
    gvwSecuritiesSubLedger.Controller.Customization := True;
end;

procedure TfrmLedgerDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := mrOk;
end;

function TfrmLedgerDetail.Run(ALinkType,ACCY: String; ALinkID,ACPID: int64;AExrate : Double): TModalResult;
var
  oForm: TfrmLedgerDetail;
begin
  Result := mrNone;

  oForm := TfrmLedgerDetail.Create(nil);
  try
    with oForm do
    begin
      cdsGeneralLedger.Close;
      cdsGeneralLedger.Params[0].AsString := 'GL';
      cdsGeneralLedger.Params[1].AsString := ALinkType;
      cdsGeneralLedger.Params[2].AsInteger := ALinkID;
      cdsGeneralLedger.Params[3].AsFloat := AExrate;
      cdsGeneralLedger.Params[4].AsString := ACCY;
      cdsGeneralLedger.Open;
//      gvwGeneralLedger.ApplyBestFit();

      cdsFundSubLedger.Close;
      cdsFundSubLedger.Params[0].AsString := 'FL';
      cdsFundSubLedger.Params[1].AsString := ALinkType;
      cdsFundSubLedger.Params[2].AsInteger := ALinkID;
      cdsFundSubLedger.Params[3].AsFloat := AExrate;
      cdsFundSubLedger.Params[4].AsString := ACCY;
      cdsFundSubLedger.Open;
//      gvwFundSubLedger.ApplyBestFit();

      cdsSecSubLedger.Close;
      cdsSecSubLedger.Params[1].AsString := ALinkType;
      cdsSecSubLedger.Params[2].AsInteger := ALinkID;
      cdsSecSubLedger.Open;
//      gvwSecuritiesSubLedger.ApplyBestFit();

      if oForm.ShowModal = mrOk then
        Result := mrOk;
    end;

  finally
    FreeAndNil(oForm);
  end;
end;

end.
