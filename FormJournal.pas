unit FormJournal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxMemo, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, NDatasetContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxImageComboBox, Datasnap.DBClient, NClientDataset,
  dxLayoutLookAndFeels, cxGridDBTableView, cxCurrencyEdit, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, ComObj,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges;

type
  TJrnDetailUpdate = class(TObject)
  private
    FCCY: string;
    FDC: string;
    FAmount: Double;
  public
    property CCY: string read FCCY write FCCY;
    property DC: string read FDC write FDC;
    property Amount: double read FAmount write FAmount;
  end;

  TfrmJournal = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl3Item1: TdxLayoutItem;
    dsJrnExRate: TDataSource;
    gvwJRNExRate: TcxGridDBBandedTableView;
    gvwJRNExRateCCYCODE: TcxGridDBBandedColumn;
    gvwJRNExRateEXRATE: TcxGridDBBandedColumn;
    gvwJRNDetail: TcxGridDBBandedTableView;
    dsJrnDetail: TDataSource;
    gvwSummary: TcxGridDBBandedTableView;
    gvwJRNDetailGLACCOUNTID: TcxGridDBBandedColumn;
    gvwJRNDetailCCYCODE: TcxGridDBBandedColumn;
    gvwJRNDetailJRNDDESC: TcxGridDBBandedColumn;
    gvwJRNDetailCPID: TcxGridDBBandedColumn;
    gvwJRNDetailDC: TcxGridDBBandedColumn;
    gvwJRNDetailAMOUNT: TcxGridDBBandedColumn;
    gvwJRNDetailGLACCOUNTID1: TcxGridDBBandedColumn;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dsSum: TDataSource;
    gvwSummaryCCY: TcxGridDBBandedColumn;
    gvwSummaryDEBET: TcxGridDBBandedColumn;
    gvwSummaryCREDIT: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cdsJRNH: TNClientDataset;
    cdsJRNHJRNID: TLargeintField;
    cdsJRNHJRNCD: TStringField;
    cdsJRNHVDATE: TDateTimeField;
    cdsJRNHEDATE: TDateTimeField;
    cdsJRNHREFFID: TLargeintField;
    cdsJRNHACCID: TLargeintField;
    cdsJRNHACCCODE: TStringField;
    cdsJRNHACCNAME: TStringField;
    cdsJRNHVPERIODID: TLargeintField;
    cdsJRNHVPERIODCODE: TStringField;
    cdsJRNHEPERIODID: TLargeintField;
    cdsJRNHEPERIODCODE: TStringField;
    cdsJRNHJRNTYPE: TStringField;
    cdsJRNHHDESC: TStringField;
    cdsJRNHTOTALDB: TFloatField;
    cdsJRNHTOTALCR: TFloatField;
    cdsJRNHCCYCODE: TStringField;
    cdsJRNHEXRATE: TFloatField;
    cdsJRNHMODDA: TDateTimeField;
    cdsJRNHMODUI: TStringField;
    cdsJRNHAPPDA: TDateTimeField;
    cdsJRNHAPPUI: TStringField;
    cdsJRNHUNDER4Y: TIntegerField;
    cdsJRNHUNDER4YDA: TDateTimeField;
    cdsJRNHNOTES4Y: TStringField;
    cdsJRNHISDEL: TIntegerField;
    cdsJRNHID: TLargeintField;
    cdsJRNHPOSTED: TStringField;
    cdsJRNHqryJRNExRate: TDataSetField;
    cdsJRNHqryJRND: TDataSetField;
    cdsJRND: TNClientDataset;
    cdsJRNDJRNID: TLargeintField;
    cdsJRNDJRNCD: TStringField;
    cdsJRNDSEQNUM: TFloatField;
    cdsJRNDGLACCOUNTID: TIntegerField;
    cdsJRNDGLACCOUNTCODE: TStringField;
    cdsJRNDCCYCODE: TStringField;
    cdsJRNDJRNDDESC: TStringField;
    cdsJRNDCPID: TLargeintField;
    cdsJRNDCPCODE: TStringField;
    cdsJRNDDC: TStringField;
    cdsJRNDAMOUNT: TFloatField;
    cdsJRNDPOSTED: TStringField;
    cdsJRNDMODDA: TDateTimeField;
    cdsJRNDMODUI: TStringField;
    cdsJRNDAPPDA: TDateTimeField;
    cdsJRNDAPPUI: TStringField;
    cdsJRNDUNDER4Y: TIntegerField;
    cdsJRNDUNDER4YDA: TDateTimeField;
    cdsJRNDNOTES4Y: TStringField;
    cdsJRNDISDEL: TIntegerField;
    cdsJRNDID: TLargeintField;
    cdsJRNDSPOTTYPE: TStringField;
    cdsJRNDSPOTCCY: TStringField;
    cdsJRNExRate: TNClientDataset;
    cdsJRNExRateJRNID: TLargeintField;
    cdsJRNExRateJRNCD: TStringField;
    cdsJRNExRateCCYCODE: TStringField;
    cdsJRNExRateEXRATE: TFloatField;
    cdsJRNExRateMODDA: TDateTimeField;
    cdsJRNExRateMODUI: TStringField;
    cdsJRNExRateAPPDA: TDateTimeField;
    cdsJRNExRateAPPUI: TStringField;
    cdsJRNExRateUNDER4Y: TIntegerField;
    cdsJRNExRateUNDER4YDA: TDateTimeField;
    cdsJRNExRateNOTES4Y: TStringField;
    cdsJRNExRateISDEL: TIntegerField;
    cdsJRNExRateID: TLargeintField;
    cdsJRNExRateSPCONACCID: TLargeintField;
    cdsJRNExRateSPPOSACCID: TLargeintField;
    cdsJRNExRateSPCONACCNO: TStringField;
    cdsJRNExRateSPPOSACCNO: TStringField;
    cdsSum: TClientDataSet;
    cdsSumCCY: TStringField;
    cdsSumDEBET: TFloatField;
    cdsSumCREDIT: TFloatField;
    cdsSumSPCONVALUE: TFloatField;
    cdsSumSPPOSVALUE: TFloatField;
    cdsExRateCalc: TClientDataSet;
    cdsExRateCalcCCYCODE: TStringField;
    cdsExRateCalcEXRATE: TFloatField;
    cdsExRateCalcSPCONACCID: TLargeintField;
    cdsExRateCalcSPPOSACCID: TLargeintField;
    cdsExRateCalcSPCONACCNO: TStringField;
    cdsExRateCalcSPPOSACCNO: TStringField;
    cdsSumCalc: TClientDataSet;
    cdsSumCalcCCY: TStringField;
    cdsSumCalcDEBET: TFloatField;
    cdsSumCalcCREDIT: TFloatField;
    cdsSumCalcSPCONVALUE: TFloatField;
    cdsSumCalcSPPOSVALUE: TFloatField;
    cdsJRNDDEBET: TFloatField;
    cdsJRNDCREDIT: TFloatField;
    gvwJRNDetailDEBET: TcxGridDBBandedColumn;
    gvwJRNDetailCREDIT: TcxGridDBBandedColumn;
    cdsJRNDFXAMOUNT: TFloatField;
    cdsJRNDEMPLOYEEID: TIntegerField;
    cdsJRNDPROJECTID: TIntegerField;
    gvwJRNDetailEMPLOYEEID: TcxGridDBBandedColumn;
    gvwJRNDetailPROJECTID: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    cdsSysExRate: TClientDataSet;
    dsSysExRate: TDataSource;
    cdsSysExRateCCYCODE: TStringField;
    cdsSysExRateEXRATE: TFloatField;
    gvwSysExRate: TcxGridDBBandedTableView;
    gvwSysExRateCCYCODE: TcxGridDBBandedColumn;
    gvwSysExRateEXRATE: TcxGridDBBandedColumn;
    PopupMenu: TPopupMenu;
    UploadJournalManual1: TMenuItem;
    OpenDialog: TOpenDialog;
    procedure gvwJRNDetailDCPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tabEditorDataChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsJRNHNewRecord(DataSet: TDataSet);
    procedure cdsJRNDBeforeDelete(DataSet: TDataSet);
    procedure cdsJRNDBeforeEdit(DataSet: TDataSet);
    procedure cdsJRNDBeforePost(DataSet: TDataSet);
    procedure cdsJRNDNewRecord(DataSet: TDataSet);
    procedure cdsJRNHVDATEChange(Sender: TField);
    procedure cdsJRNHEDATEChange(Sender: TField);
    procedure cdsJRNDAfterPost(DataSet: TDataSet);
    procedure cdsJRNDGLACCOUNTIDChange(Sender: TField);
    procedure cdsJRNHBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsJRNDCalcFields(DataSet: TDataSet);
    procedure cdsJRNExRateBeforePost(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure UploadJournalManual1Click(Sender: TObject);
  private
    { Private declarations }
    FBeforeEdit: TJrnDetailUpdate;
    FCalcSpot: Boolean;
    FCPID : integer;
    FLastCCY, FLastDC: string;
    FExRateAmount, FLastAmount: Double;
    FCon: Boolean;

    procedure CheckData;
  public
    { Public declarations }
    procedure OpenPeriodByDate(ADate: TDateTime);
    procedure SpotCalculation;
  end;

var
  frmJournal: TfrmJournal;

implementation

{$R *.dfm}

uses FormJournalInputList, DataLookup, DataGlobal, FormProgressBar;

procedure TfrmJournal.btnOKClick(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsSubject.DataSet;
  if FormatFloat('#,##0.00;(#,##0.00);0.00', oDataSet.FieldByName('TOTALDB').AsFloat) <> FormatFloat('#,##0.00;(#,##0.00);0.00', oDataSet.FieldByName('TOTALCR').AsFloat) then
  begin
    MessageDlg('Total Debet Not Same To Total Credit', mtError, [mbOk], 0);
  end
  else
  begin
    CheckData;

    if FCon then
      inherited;
  end;
end;

procedure TfrmJournal.cdsJRNDAfterPost(DataSet: TDataSet);
begin
  inherited;
//  if (cdsJRNDGLACCOUNTID.AsInteger <> 129) then
//  begin
//    if cdsJRNDCCYCODE.AsString <> dmGlobal.RemoteServer.GetLocalCCY then
//    begin
//      cdsJRND.Append;
//      cdsJRNDGLACCOUNTID.AsInteger := 129;
//      cdsJRNDCCYCODE.AsString      := FLastCCY;
//      cdsJRNDDC.AsString           := FLastDC;
//      cdsJRNDAMOUNT.AsFloat        := FLastAmount;
//      cdsJRND.Post;
//    end;
//  end
//  else if (FLastCCY <> dmGlobal.RemoteServer.GetLocalCCY) then
//  begin
//    cdsJRND.Append;
//    cdsJRNDGLACCOUNTID.AsInteger := 129;
//    cdsJRNDCCYCODE.AsString      := 'IDR';
//    cdsJRNDDC.AsString           := FLastDC;
//    cdsJRNDAMOUNT.AsFloat        := FExRateAmount;
//    cdsJRND.Post;
//  end;

  if FBeforeEdit <> nil then FreeAndNil(FBeforeEdit);
end;

procedure TfrmJournal.cdsJRNDBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FCalcSpot then cdsSum.DisableControls;

  if cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
  begin

    cdsSum.Edit;
    cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
    if cdsJRNDDC.AsString = 'D' then
    begin
      cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat - cdsJRNDAMOUNT.AsFloat;
    end
    else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat - cdsJRNDAMOUNT.AsFloat;
    cdsSum.Post;
  end;

  if not (cdsJRNH.State in [dsInsert, dsEdit]) then cdsJRNH.Edit;

  if cdsJRNDDC.AsString = 'D' then
  begin
    cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat - cdsJRNDAMOUNT.AsFloat;
  end
  else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat - cdsJRNDAMOUNT.AsFloat;


  if not FCalcSpot then cdsSum.EnableControls;

end;

procedure TfrmJournal.cdsJRNDBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEdit := TJrnDetailUpdate.Create;
  FBeforeEdit.CCY := cdsJRNDCCYCODE.AsString;
  FBeforeEdit.DC := cdsJRNDDC.AsString;
  FBeforeEdit.Amount := cdsJRNDAMOUNT.AsFloat;
end;

procedure TfrmJournal.cdsJRNDBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsJRNDDC.AsString = '' then
  begin
    MessageDlg('Debet / Credit must have value', mtError, [mbOk], 0);
    FCon := False;
    Abort;
  end
  else
    FCon := True;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsJRNExRate.Locate('CCYCODE', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin
        cdsJRNExRate.Append;
        cdsJRNExRateCCYCODE.AsString := cdsJRNDCCYCODE.AsString;

        if cdsJRNDCCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
        begin
          cdsJRNExRateEXRATE.Value := 1;
        end
        else
        begin
          cdsMaxExRateByCCY.Close;
          cdsMaxExRateByCCY.Params[0].AsString := cdsJRNDCCYCODE.AsString;
          cdsMaxExRateByCCY.Open;

          if not cdsMaxExRateByCCY.IsEmpty then
          begin
            cdsJRNExRateEXRATE.AsFloat := cdsMaxExRateByCCYCONVERSION_VALUE.AsFloat;
            cdsJRNExRateSPCONACCID.Value := cdsMaxExRateByCCYSPCONACCID.Value;
            cdsJRNExRateSPCONACCNO.Value := cdsMaxExRateByCCYSPCONACC.Value;
            cdsJRNExRateSPPOSACCID.Value := cdsMaxExRateByCCYSPPOSACCID.Value;
            cdsJRNExRateSPPOSACCNO.Value := cdsMaxExRateByCCYSPPOSACC.Value;
          end;


        end;
        cdsJRNExRate.Post
      end;
    if DataSet.State in [dsInsert] then
    begin
      if not FCalcSpot then cdsSum.DisableControls;

      if not cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin

        cdsSum.Append;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end
      else
      begin

        cdsSum.Edit;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat + cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat + cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end;

      if not FCalcSpot then cdsSum.EnableControls;

      if not (cdsJRNH.State in [dsInsert, dsEdit]) then cdsJRNH.Edit;

      if cdsJRNDDC.AsString = 'D' then
      begin
        cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat + cdsJRNDAMOUNT.AsFloat;
      end
      else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat + cdsJRNDAMOUNT.AsFloat;


    end
    else if DataSet.State in [dsEdit] then
    begin
      if not FCalcSpot then cdsSum.DisableControls;

      if cdsSum.Locate('CCY', VarArrayOf([FBeforeEdit.CCY]), []) then
      begin

        cdsSum.Edit;
        if FBeforeEdit.DC = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat - FBeforeEdit.Amount;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat - FBeforeEdit.Amount;
        cdsSum.Post;
      end;

      if not cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin

        cdsSum.Append;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end
      else
      begin

        cdsSum.Edit;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat + cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat + cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end;

      if not (cdsJRNH.State in [dsInsert, dsEdit]) then cdsJRNH.Edit;

      if FBeforeEdit.DC = 'D' then
      begin
        cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat - FBeforeEdit.Amount;
      end
      else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat - FBeforeEdit.Amount;;

      if cdsJRNDDC.AsString = 'D' then
      begin
        cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat + cdsJRNDAMOUNT.AsFloat;
      end
      else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat + cdsJRNDAMOUNT.AsFloat;


      if not FCalcSpot then cdsSum.EnableControls;

    end;
  end;

  if cdsJRNExRate.Locate('CCYCODE', cdsJRNDCCYCODE.AsString, []) then
  begin
      cdsJRNDFXAMOUNT.AsFloat := cdsJRNDAMOUNT.AsFloat * cdsJRNExRateEXRATE.AsFloat;
  end;

  FLastCCY      := cdsJRNDCCYCODE.AsString;
  FExRateAmount := cdsJRNDFXAMOUNT.AsFloat;
  FLastDC       := cdsJRNDDC.AsString;
  FLastAmount   := cdsJRNDAMOUNT.AsFloat;
end;

procedure TfrmJournal.cdsJRNDCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('DC').AsString = 'D' then
  begin
    DataSet.FieldByName('DEBET').AsFloat := DataSet.FieldByName('AMOUNT').AsFloat;
    DataSet.FieldByName('CREDIT').AsFloat := 0;
  end
  else
  begin
    DataSet.FieldByName('DEBET').AsFloat := 0;
    DataSet.FieldByName('CREDIT').AsFloat := DataSet.FieldByName('AMOUNT').AsFloat;
  end;
end;

procedure TfrmJournal.cdsJRNDGLACCOUNTIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      cdsGLAccountByID.Close;
      cdsGLAccountByID.Params[0].Value := cdsJRNDGLACCOUNTID.Value;
      cdsGLAccountByID.Open;

      if not cdsGLAccountByID.IsEmpty then
      begin
        cdsJRNDGLACCOUNTCODE.AsString := cdsGLAccountByIDGLACCOUNTCODE.AsString;
        cdsJRNDCCYCODE.AsString       := cdsGLAccountByIDCCY.AsString;

        cdsJRNDJRNDDESC.AsString      := cdsJRNHHDESC.AsString;
      end;
    end;
  end;
end;

procedure TfrmJournal.cdsJRNDNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNDSPOTTYPE.AsString := 'N';
  cdsJRNDPOSTED.AsString := 'N';
  cdsJRNDJRNCD.asString := cdsJRNDJRNCD.AsString;
end;

procedure TfrmJournal.cdsJRNExRateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsJRNExRate.State in [dsInsert] then
  begin
    cdsSysExRate.Append;
    cdsSysExRateCCYCODE.AsString := cdsJRNExRateCCYCODE.AsString;
    cdsSysExRateEXRATE.AsFloat   := cdsJRNExRateEXRATE.AsFloat;
    cdsSysExRate.Post;
  end;
end;

procedure TfrmJournal.cdsJRNHBeforePost(DataSet: TDataSet);
var
  sSeqName: string;
  iSeq: Int64;
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    sSeqName := cdsJRNHJRNTYPE.AsString + cdsJRNHEPERIODCODE.AsString;
    iSeq := dmGlobal.RemoteServer.GetSeq(sSeqName);

    cdsJRNHJRNCD.AsString := cdsJRNHJRNTYPE.AsString + '-' + cdsJRNHEPERIODCODE.AsString + '/' +
      FormatFloat('00000', iSeq);
  end;

end;

procedure TfrmJournal.cdsJRNHEDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin

    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsJRNHEDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsJRNHEPERIODID.Value := cdsGLPeriodByDatePERIODID.Value;
        cdsJRNHEPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

    end;
  end;

end;

procedure TfrmJournal.cdsJRNHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNHJRNID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JRNH');
  cdsJRNHVDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsJRNHEDATE.AsDateTime := cdsJRNHVDATE.AsDateTime;
end;

procedure TfrmJournal.cdsJRNHVDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsJRNHVDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsJRNHVPERIODID.Value := cdsGLPeriodByDatePERIODID.Value;
        cdsJRNHVPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;

end;

procedure TfrmJournal.CheckData;
begin
  if cdsJRND.State in dsEditModes then
    cdsJRND.Post;
end;

procedure TfrmJournal.cxButton1Click(Sender: TObject);
begin
  inherited;
  SpotCalculation;
end;

procedure TfrmJournal.FormCreate(Sender: TObject);
begin
  inherited;
  FCalcSpot := True;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuJrnType.Active then
      cdsLuJrnType.Open
    else
      cdsLuJrnType.Refresh;

    if not cdsLuGLAccountTrx.Active then
      cdsLuGLAccountTrx.Open
    else
      cdsLuGLAccountTrx.Refresh;

    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open
    else
      cdsLuCPCenter.Refresh;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open
    else
      cdsLuCcy.Refresh;

    if not cdsLuEmployee.Active then
      cdsLuEmployee.Open
    else
      cdsLuEmployee.Refresh;

    if not cdsLuProject.Active then
      cdsLuProject.Open
    else
      cdsLuProject.Refresh;
  end;
end;

procedure TfrmJournal.FormShow(Sender: TObject);
begin
  inherited;
  FCon := True;

  if Self.Tag = 0 then
  begin
    cdsJRND.DisableControls;
    cdsJRND.First;

    cdsSum.DisableControls;
    cdsSum.Close;
    cdsSum.CreateDataSet;

    while not cdsJRND.Eof do
    begin
      if not cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin
        cdsSum.Append;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end
      else
      begin

        cdsSum.Edit;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat + cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat + cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end;

      cdsJRND.Next;

    end;

    cdsJRND.First;

    cdsJRND.EnableControls;
    cdsSum.EnableControls;

    Self.Tag := -1;
  end;

  cdsSysExRate.Close;
  cdsSysExRate.CreateDataSet;

  if not cdsJRNExRate.IsEmpty then
  begin
    cdsJRNExRate.DisableControls;
    while not cdsJRNExRate.Eof do
    begin
      cdsSysExRate.Append;
      cdsSysExRateCCYCODE.AsString := cdsJRNExRateCCYCODE.AsString;
      cdsSysExRateEXRATE.AsFloat   := dmGlobal.RemoteServer.GetCCYRate(cdsJRNHEDATE.AsDateTime, cdsJRNExRateCCYCODE.AsString);
      cdsSysExRate.Post;

      cdsJRNExRate.Next;
    end;
  end;

end;

procedure TfrmJournal.gvwJRNDetailDCPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if (DisplayValue <> 'D') and (DisplayValue <> 'C') then
  begin
    Error := True;
    ErrorText := 'Only Valid for D/C';
  end;

end;

procedure TfrmJournal.OpenPeriodByDate(ADate: TDateTime);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsGLPeriodByDate.Close;
    cdsGLPeriodByDate.Params[0].Value := ADate;
    cdsGLPeriodByDate.Params[1].Value := ADate;
    cdsGLPeriodByDate.Open;
  end;

end;

procedure TfrmJournal.SpotCalculation;
var
  dValue: double;
begin
  with dmGlobal.IntDataLookup do
  begin
    FCalcSpot := True;

    cdsSum.DisableControls;
    cdsJRNExRate.DisableControls;
    cdsJRND.DisableControls;

    cdsExRateCalc.Close;
    cdsExRateCalc.CreateDataSet;

    cdsJRND.First;
    while not cdsJRND.Eof do
    begin
      if cdsJRNDCCYCODE.AsString <> dmGlobal.RemoteServer.GetLocalCCY then
        FCPID := cdsJRNDCPID.AsInteger;

      if cdsJRNDSPOTTYPE.AsString <> 'N' then
      begin
        cdsJRND.Delete;
      end
      else cdsJRND.Next;
    end;

    cdsJRNExRate.First;
    while not cdsJRNExRate.Eof do
    begin
      cdsExRateCalc.Append;
      cdsExRateCalcCCYCODE.AsString := cdsJRNExRateCCYCODE.AsString;
      cdsExRateCalcEXRATE.AsFloat := cdsJRNExRateEXRATE.AsFloat;
      cdsExRateCalcSPCONACCID.AsInteger := cdsJRNExRateSPCONACCID.AsInteger;
      cdsExRateCalcSPPOSACCID.AsInteger := cdsJRNExRateSPPOSACCID.AsInteger;
      cdsExRateCalcSPCONACCNO.AsString := cdsJRNExRateSPCONACCNO.AsString;
      cdsExRateCalcSPPOSACCNO.AsString := cdsJRNExRateSPPOSACCNO.AsString;
      cdsExRateCalc.Post;
      cdsJRNExRate.Next;
    end;

    cdsSumCalc.Close;
    cdsSumCalc.CreateDataSet;

    cdsSum.First;

    while not cdsSum.Eof do
    begin
      cdsSumCalc.Append;
      cdsSumCalcCCY.AsString := cdsSumCCY.AsString;
      cdsSumCalcDEBET.AsFloat := cdsSumDEBET.AsFloat;
      cdsSumCalcCREDIT.AsFloat := cdsSumCREDIT.AsFloat;

      cdsSumCalc.Post;

      cdsSum.Next;

    end;

    cdsSumCalc.First;

    while not cdsSumCalc.Eof do
    begin
      if cdsSumCalcCCY.AsString <> dmGlobal.RemoteServer.GetLocalCCY then
      begin
        if cdsExRateCalc.Locate('CCYCODE', VarArrayOf([cdsSumCalcCCY.AsString]), []) then
        begin
          dValue := cdsSumCalcDEBET.AsFloat - cdsSumCalcCREDIT.AsFloat;

          if dValue <> 0 then
          begin

            cdsGLAccountByID.Close;
            cdsGLAccountByID.Params[0].AsInteger := cdsExRateCalcSPCONACCID.AsInteger;
            cdsGLAccountByID.Open;

            if not cdsGLAccountByID.IsEmpty then
            begin
              cdsJRND.Append;
              cdsJRNDGLACCOUNTID.Value := cdsGLAccountByIDGLACCOUNTID.Value;
              cdsJRNDGLACCOUNTCODE.Value := cdsGLAccountByIDGLACCOUNTCODE.Value;
              cdsJRNDCCYCODE.Value := cdsGLAccountByIDCCY.Value;
              cdsJRNDJRNDDESC.Value := 'System Spot Control';

              if dValue < 0 then cdsJRNDDC.AsString := 'C'
              else cdsJRNDDC.AsString := 'D';
              cdsJRNDCPID.AsInteger := FCPID;
              cdsJRNDAMOUNT.Value := Abs(dValue * cdsExRateCalcEXRATE.AsFloat);
              cdsJRNDSPOTTYPE.AsString := 'C';
              cdsJRNDSPOTCCY.AsString := cdsSumCalcCCY.AsString;
              cdsJRND.Post;


            end;

            cdsGLAccountByID.Close;
            cdsGLAccountByID.Params[0].AsInteger := cdsExRateCalcSPPOSACCID.AsInteger;
            cdsGLAccountByID.Open;

            if not cdsGLAccountByID.IsEmpty then
            begin
              cdsJRND.Append;
              cdsJRNDGLACCOUNTID.Value := cdsGLAccountByIDGLACCOUNTID.Value;
              cdsJRNDGLACCOUNTCODE.Value := cdsGLAccountByIDGLACCOUNTCODE.Value;
              cdsJRNDCCYCODE.Value :=  cdsSumCalcCCY.Value;
              cdsJRNDJRNDDESC.Value := 'System Spot Position';

              if dValue < 0 then cdsJRNDDC.AsString := 'D'
              else cdsJRNDDC.AsString := 'C';
              cdsJRNDCPID.AsInteger := FCPID;
              cdsJRNDAMOUNT.Value := Abs(dValue);
              cdsJRNDSPOTTYPE.AsString := 'P';
              cdsJRNDSPOTCCY.AsString := cdsSumCalcCCY.AsString;
              cdsJRND.Post;

            end;


          end;
        end;

      end;

      cdsSumCalc.Next;

    end;

    cdsSum.EnableControls;
    cdsJRNExRate.EnableControls;
    cdsJRND.EnableControls;


    FCalcSpot := False;
  end;
end;

procedure TfrmJournal.tabEditorDataChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  inherited;
  if NewTab = 0 then dsSum.DataSet := cdsSum
  else if NewTab = 1 then dsSum.DataSet := cdsSum;
end;

procedure TfrmJournal.UploadJournalManual1Click(Sender: TObject);
var
  sFileName, sErrorMsg: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iCOAID: Integer;
  oProgress: TfrmProgressBar;
  iError, iSuccess: Integer;
  sCOACode, sDesc, sDC, sCcy: string;
  fAmount: Double;
  sMessage: string;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if FileExists(sFileName) then
  begin
    try
      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);
      sCcy          := dmGlobal.RemoteServer.GetLocalCCY;

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;
      sDC    := '';

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading journal manual');
      for i := 2 to iRows do
      begin
        sCOACode := oSheet.Cells[i, 1].Value;
        sDesc    := oSheet.Cells[i, 2].Value;

        if FloatToStr(oSheet.Cells[i, 3].Value) <> '0' then
          sDC := 'D';
        if FloatToStr(oSheet.Cells[i, 4].Value) <> '0' then
          sDC := 'C';

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock deposit ' +
          QuotedStr(sCOACode)+' - '+QuotedStr(sDesc));

        if dmGlobal.IntDataLookup.cdsLuGLAccountTrx.Locate('GLACCOUNTCODE', sCOACode, []) then
          iCOAID := dmGlobal.IntDataLookup.cdsLuGLAccountTrxGLACCOUNTID.AsInteger
        else
          iCOAID := -1;

        if iCOAID <> -1 then
        begin
          if sDC = 'D' then
            fAmount := StrToFloatDef(oSheet.Cells[i, 3].Value, 0)
          else
            fAmount := StrToFloatDef(oSheet.Cells[i, 4].Value, 0);

          cdsJRND.Append;
          cdsJRNDJRNID.AsInteger       := cdsJRNHJRNID.AsInteger;
          cdsJRNDGLACCOUNTID.AsInteger := iCOAID;
          cdsJRNDJRNCD.AsString        := sCOACode;
          cdsJRNDJRNDDESC.AsString     := sDesc;
          cdsJRNDCCYCODE.AsString      := sCcy;
          cdsJRNDDC.AsString           := sDC;
          cdsJRNDAMOUNT.AsFloat        := fAmount;
          cdsJRNDFXAMOUNT.AsFloat      := fAmount;
          cdsJRND.Post;

          Inc(iSuccess);
        end
        else
        begin
          Inc(iError);
          sErrorMsg := sErrorMsg + 'Unregistered COA Code '+ sCOACode +'-'+ sDesc + #13;
        end;
      end;
    finally
      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sErrorMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      Screen.Cursor := crDefault;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmJournal);

end.
