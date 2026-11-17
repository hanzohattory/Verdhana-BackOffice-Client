unit FormJournalReverse;

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
  dxLayoutLookAndFeels, cxGridDBTableView, cxCurrencyEdit;

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

  TfrmJournalReverse = class(TfrmEditorData)
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
    cdsJRNDTmp: TNClientDataset;
    cdsJRNDTmpJRNID: TLargeintField;
    cdsJRNDTmpJRNCD: TStringField;
    cdsJRNDTmpSEQNUM: TFloatField;
    cdsJRNDTmpGLACCOUNTID: TIntegerField;
    cdsJRNDTmpGLACCOUNTCODE: TStringField;
    cdsJRNDTmpCCYCODE: TStringField;
    cdsJRNDTmpJRNDDESC: TStringField;
    cdsJRNDTmpCPID: TLargeintField;
    cdsJRNDTmpCPCODE: TStringField;
    cdsJRNDTmpDC: TStringField;
    cdsJRNDTmpAMOUNT: TFloatField;
    cdsJRNDTmpPOSTED: TStringField;
    cdsJRNDTmpMODDA: TDateTimeField;
    cdsJRNDTmpMODUI: TStringField;
    cdsJRNDTmpAPPDA: TDateTimeField;
    cdsJRNDTmpAPPUI: TStringField;
    cdsJRNDTmpUNDER4Y: TIntegerField;
    cdsJRNDTmpUNDER4YDA: TDateTimeField;
    cdsJRNDTmpNOTES4Y: TStringField;
    cdsJRNDTmpISDEL: TIntegerField;
    cdsJRNDTmpID: TLargeintField;
    cdsJRNDTmpSPOTTYPE: TStringField;
    cdsJRNDTmpSPOTCCY: TStringField;
    cdsJRNDTmpDEBET: TFloatField;
    cdsJRNDTmpCREDIT: TFloatField;
    cdsJRNDTmpFXAMOUNT: TFloatField;
    cdsJRNDTmpEMPLOYEEID: TIntegerField;
    cdsJRNDTmpPROJECTID: TIntegerField;
    cdsJRNHTmp: TNClientDataset;
    cdsJRNHTmpJRNID: TLargeintField;
    cdsJRNHTmpJRNCD: TStringField;
    cdsJRNHTmpVDATE: TDateTimeField;
    cdsJRNHTmpEDATE: TDateTimeField;
    cdsJRNHTmpREFFID: TLargeintField;
    cdsJRNHTmpACCID: TLargeintField;
    cdsJRNHTmpACCCODE: TStringField;
    cdsJRNHTmpACCNAME: TStringField;
    cdsJRNHTmpVPERIODID: TLargeintField;
    cdsJRNHTmpVPERIODCODE: TStringField;
    cdsJRNHTmpEPERIODID: TLargeintField;
    cdsJRNHTmpEPERIODCODE: TStringField;
    cdsJRNHTmpJRNTYPE: TStringField;
    cdsJRNHTmpHDESC: TStringField;
    cdsJRNHTmpTOTALDB: TFloatField;
    cdsJRNHTmpTOTALCR: TFloatField;
    cdsJRNHTmpCCYCODE: TStringField;
    cdsJRNHTmpEXRATE: TFloatField;
    cdsJRNHTmpMODDA: TDateTimeField;
    cdsJRNHTmpMODUI: TStringField;
    cdsJRNHTmpAPPDA: TDateTimeField;
    cdsJRNHTmpAPPUI: TStringField;
    cdsJRNHTmpUNDER4Y: TIntegerField;
    cdsJRNHTmpUNDER4YDA: TDateTimeField;
    cdsJRNHTmpNOTES4Y: TStringField;
    cdsJRNHTmpISDEL: TIntegerField;
    cdsJRNHTmpID: TLargeintField;
    cdsJRNHTmpPOSTED: TStringField;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    gvwOldJRNDetail: TcxGridDBBandedTableView;
    dsJRNHTmp: TDataSource;
    dsJRNDTmp: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    gvwOldJRNDetailJRNID: TcxGridDBBandedColumn;
    gvwOldJRNDetailJRNCD: TcxGridDBBandedColumn;
    gvwOldJRNDetailSEQNUM: TcxGridDBBandedColumn;
    gvwOldJRNDetailGLACCOUNTID: TcxGridDBBandedColumn;
    gvwOldJRNDetailGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwOldJRNDetailCCYCODE: TcxGridDBBandedColumn;
    gvwOldJRNDetailJRNDDESC: TcxGridDBBandedColumn;
    gvwOldJRNDetailCPID: TcxGridDBBandedColumn;
    gvwOldJRNDetailCPCODE: TcxGridDBBandedColumn;
    gvwOldJRNDetailDC: TcxGridDBBandedColumn;
    gvwOldJRNDetailAMOUNT: TcxGridDBBandedColumn;
    gvwOldJRNDetailPOSTED: TcxGridDBBandedColumn;
    gvwOldJRNDetailMODDA: TcxGridDBBandedColumn;
    gvwOldJRNDetailMODUI: TcxGridDBBandedColumn;
    gvwOldJRNDetailAPPDA: TcxGridDBBandedColumn;
    gvwOldJRNDetailAPPUI: TcxGridDBBandedColumn;
    gvwOldJRNDetailUNDER4Y: TcxGridDBBandedColumn;
    gvwOldJRNDetailUNDER4YDA: TcxGridDBBandedColumn;
    gvwOldJRNDetailNOTES4Y: TcxGridDBBandedColumn;
    gvwOldJRNDetailISDEL: TcxGridDBBandedColumn;
    gvwOldJRNDetailID: TcxGridDBBandedColumn;
    gvwOldJRNDetailSPOTTYPE: TcxGridDBBandedColumn;
    gvwOldJRNDetailSPOTCCY: TcxGridDBBandedColumn;
    gvwOldJRNDetailDEBET: TcxGridDBBandedColumn;
    gvwOldJRNDetailCREDIT: TcxGridDBBandedColumn;
    gvwOldJRNDetailFXAMOUNT: TcxGridDBBandedColumn;
    gvwOldJRNDetailEMPLOYEEID: TcxGridDBBandedColumn;
    gvwOldJRNDetailPROJECTID: TcxGridDBBandedColumn;
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
    procedure cdsJRNDTmpCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FBeforeEdit: TJrnDetailUpdate;
    FCalcSpot: Boolean;
    FCPID : integer;
    FLastCCY, FLastDC: string;
    FExRateAmount, FLastAmount: Double;
  public
    { Public declarations }
    procedure OpenPeriodByDate(ADate: TDateTime);
    procedure SpotCalculation;
  end;

var
  frmJournalReverse: TfrmJournalReverse;

implementation

{$R *.dfm}

uses FormJournalInputList, DataLookup, DataGlobal;

procedure TfrmJournalReverse.cdsJRNDAfterPost(DataSet: TDataSet);
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

procedure TfrmJournalReverse.cdsJRNDBeforeDelete(DataSet: TDataSet);
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

procedure TfrmJournalReverse.cdsJRNDBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEdit := TJrnDetailUpdate.Create;
  FBeforeEdit.CCY := cdsJRNDCCYCODE.AsString;
  FBeforeEdit.DC := cdsJRNDDC.AsString;
  FBeforeEdit.Amount := cdsJRNDAMOUNT.AsFloat;
end;

procedure TfrmJournalReverse.cdsJRNDBeforePost(DataSet: TDataSet);
begin
  inherited;
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

procedure TfrmJournalReverse.cdsJRNDCalcFields(DataSet: TDataSet);
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

procedure TfrmJournalReverse.cdsJRNDGLACCOUNTIDChange(Sender: TField);
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
        cdsJRNDCCYCODE.AsString := cdsGLAccountByIDCCY.AsString;
      end;
    end;
  end;
end;

procedure TfrmJournalReverse.cdsJRNDNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNDSPOTTYPE.AsString := 'N';
  cdsJRNDPOSTED.AsString := 'N';
  cdsJRNDJRNCD.asString := cdsJRNDJRNCD.AsString;
end;

procedure TfrmJournalReverse.cdsJRNDTmpCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsJRNDTmp.FieldByName('DC').AsString = 'D' then
  begin
    cdsJRNDTmp.FieldByName('DEBET').AsFloat  := cdsJRNDTmp.FieldByName('AMOUNT').AsFloat;
    cdsJRNDTmp.FieldByName('CREDIT').AsFloat := 0;
  end
  else
  begin
    cdsJRNDTmp.FieldByName('DEBET').AsFloat  := 0;
    cdsJRNDTmp.FieldByName('CREDIT').AsFloat := cdsJRNDTmp.FieldByName('AMOUNT').AsFloat;
  end;
end;

procedure TfrmJournalReverse.cdsJRNExRateBeforePost(DataSet: TDataSet);
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

procedure TfrmJournalReverse.cdsJRNHBeforePost(DataSet: TDataSet);
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

procedure TfrmJournalReverse.cdsJRNHEDATEChange(Sender: TField);
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

procedure TfrmJournalReverse.cdsJRNHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNHJRNID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JRNH');
  cdsJRNHVDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsJRNHEDATE.AsDateTime := cdsJRNHVDATE.AsDateTime;
end;

procedure TfrmJournalReverse.cdsJRNHVDATEChange(Sender: TField);
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

procedure TfrmJournalReverse.cxButton1Click(Sender: TObject);
begin
  inherited;
  SpotCalculation;
end;

procedure TfrmJournalReverse.FormCreate(Sender: TObject);
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

procedure TfrmJournalReverse.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;

//  if cdsJRNH.Active then
//  begin
//    cdsJRNHTmp.Close;
//    cdsJRNHTmp.CreateDataSet;
//
//    cdsJRNHTmp.Append;
//    for i := 0 to cdsJRNHTmp.FieldCount -1 do
//      cdsJRNHTmp.Fields[i].AsVariant := cdsJRNH.Fields[i].AsVariant;
//    cdsJRNHTmpHDESC.AsString := 'Reverse '+ cdsJRNHTmpHDESC.AsString;
//    cdsJRNHTmp.Post;
//
//    cdsJRNDTmp.Close;
//    cdsJRNDTmp.CreateDataSet;
//
//    cdsJRND.First;
//    while not cdsJRND.Eof do
//    begin
//      cdsJRNDTmp.Append;
//      cdsJRNDTmpJRNID.AsLargeInt := cdsJRNHTmpJRNID.AsLargeInt;
//      for i := 0 to cdsJRNDTmp.FieldCount -1 do
//      begin
//        if cdsJRNDTmp.Fields[i].FieldName = 'DC' then
//        begin
//          if cdsJRNDDC.AsString = 'D' then
//            cdsJRNDTmpDC.AsString := 'C'
//          else if cdsJRNDDC.AsString = 'C' then
//            cdsJRNDTmpDC.AsString := 'D';
//        end
//        else
//          cdsJRNDTmp.Fields[i].AsVariant := cdsJRND.Fields[i].AsVariant;
//      end;
//      cdsJRNDTmp.Post;
//
//      cdsJRND.Next;
//    end;
//  end;

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

end;

procedure TfrmJournalReverse.gvwJRNDetailDCPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if (DisplayValue <> 'D') and (DisplayValue <> 'C') then
  begin
    Error := True;
    ErrorText := 'Only Valid for D/C';
  end;

end;

procedure TfrmJournalReverse.OpenPeriodByDate(ADate: TDateTime);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsGLPeriodByDate.Close;
    cdsGLPeriodByDate.Params[0].Value := ADate;
    cdsGLPeriodByDate.Params[1].Value := ADate;
    cdsGLPeriodByDate.Open;
  end;

end;

procedure TfrmJournalReverse.SpotCalculation;
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

procedure TfrmJournalReverse.tabEditorDataChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  inherited;
  if NewTab = 0 then dsSum.DataSet := cdsSum
  else if NewTab = 1 then dsSum.DataSet := cdsSum;
end;

Initialization
  RegisterClass(TfrmJournalReverse);

end.
