unit FormCashCBestInstructionList;

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
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxImageComboBox, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxCalendar, dxLayoutControl, XLSSheetData5, XLSReadWriteII5, ShellApi,
  cxPCdxBarPopupMenu, cxPC;

type
  TfrmCashCBestInstructionList = class(TfrmBrowseData)
    cdsWTInstructionList: TNClientDataset;
    cdsWTInstructionListOTC_STATUS: TStringField;
    cdsWTInstructionListCREATE_FILE: TStringField;
    cdsWTInstructionListCOUNT_CREATE_FILE: TIntegerField;
    cdsWTInstructionListCBEST_UPLOAD: TStringField;
    cdsWTInstructionListCUSTODY_INSTRID: TLargeintField;
    cdsWTInstructionListCUSTODY_EXTREF: TStringField;
    cdsWTInstructionListTRDDATE: TDateField;
    cdsWTInstructionListDUEDATE: TDateField;
    cdsWTInstructionListSETTLE_SIDE: TStringField;
    cdsWTInstructionListINSTRUCTION: TStringField;
    cdsWTInstructionListACCID: TLargeintField;
    cdsWTInstructionListACCNO: TStringField;
    cdsWTInstructionListACCNAME: TStringField;
    cdsWTInstructionListACCINIT: TStringField;
    cdsWTInstructionListPARTY_CODE: TStringField;
    cdsWTInstructionListPARTY_ACC: TStringField;
    cdsWTInstructionListBENEFICIARYACC: TStringField;
    cdsWTInstructionListBENEFICIARYINSTI: TStringField;
    cdsWTInstructionListCCYCODE: TStringField;
    cdsWTInstructionListAMOUNT: TFloatField;
    cdsWTInstructionListCUSTODY_DESC: TStringField;
    cdsWTInstructionListCONFIRM_BY: TStringField;
    cdsWTInstructionListSETTLEDDATE: TDateField;
    cdsWTInstructionListREMARKS: TStringField;
    cdsWTInstructionListINSTRUCTION_TYPE_CODE: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cmbFilterBy: TcxImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actGenerateFile: TNAction;
    GenerateFile1: TMenuItem;
    N5: TMenuItem;
    cxPageControl1: TcxPageControl;
    tabWireTransfer: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwWireTransfer: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cdsWTInstruction: TNClientDataset;
    cdsWTInstructionCUSTODY_INSTRID: TLargeintField;
    cdsWTInstructionCUSTODY_EXTREF: TStringField;
    cdsWTInstructionEXCHANGE: TStringField;
    cdsWTInstructionACCID: TLargeintField;
    cdsWTInstructionACCNO: TStringField;
    cdsWTInstructionACCNAME: TStringField;
    cdsWTInstructionVALUEDATE: TDateField;
    cdsWTInstructionTRDDATE: TDateField;
    cdsWTInstructionSETTLEDATE: TDateField;
    cdsWTInstructionSETTLE_SIDE: TStringField;
    cdsWTInstructionINSTRUCTION_TYPE: TStringField;
    cdsWTInstructionPARTY_ID: TLargeintField;
    cdsWTInstructionPARTY_CODE: TStringField;
    cdsWTInstructionPARTY_ACC: TStringField;
    cdsWTInstructionCOUNTER_ID: TLargeintField;
    cdsWTInstructionCOUNTER_CODE: TStringField;
    cdsWTInstructionCOUNTER_ACC: TStringField;
    cdsWTInstructionSECURITYCODE_TYPE: TStringField;
    cdsWTInstructionSTOCKID: TLargeintField;
    cdsWTInstructionSTOCKCODE: TStringField;
    cdsWTInstructionQTY: TFloatField;
    cdsWTInstructionCCY: TStringField;
    cdsWTInstructionORIGINAL_AMT: TFloatField;
    cdsWTInstructionSETTLE_AMOUNT: TFloatField;
    cdsWTInstructionSALDO: TFloatField;
    cdsWTInstructionSALDO_TYPE: TStringField;
    cdsWTInstructionISMULTICCY: TStringField;
    cdsWTInstructionFOREIGN_CCYCODE: TStringField;
    cdsWTInstructionFOREIGN_EXRATE: TFloatField;
    cdsWTInstructionFOREIGN_SETTTLEAMT: TFloatField;
    cdsWTInstructionCUSTODY_DESC: TStringField;
    cdsWTInstructionREMARKS: TStringField;
    cdsWTInstructionPURPOSE: TStringField;
    cdsWTInstructionTRADE_REF: TStringField;
    cdsWTInstructionSETTLE_REASON: TStringField;
    cdsWTInstructionBENEFICIARYCODE: TStringField;
    cdsWTInstructionBENEFICIARYACC: TStringField;
    cdsWTInstructionCORPACT_TYPE: TStringField;
    cdsWTInstructionLINKTYPE: TStringField;
    cdsWTInstructionLINKID: TLargeintField;
    cdsWTInstructionCONFIRM_BY: TStringField;
    cdsWTInstructionCONFIRM_WITH: TStringField;
    cdsWTInstructionCREATE_FILE: TStringField;
    cdsWTInstructionCOUNT_CREATE_FILE: TIntegerField;
    cdsWTInstructionCBEST_UPLOAD: TStringField;
    cdsWTInstructionSID_NO: TStringField;
    cdsWTInstructionSTAT: TStringField;
    cdsWTInstructionMATCH: TStringField;
    cdsWTInstructionKSEI_RECON: TStringField;
    cdsWTInstructionCLIENT_ACCID: TLargeintField;
    cdsWTInstructionMODDA: TDateTimeField;
    cdsWTInstructionMODUI: TStringField;
    cdsWTInstructionAPPDA: TDateTimeField;
    cdsWTInstructionAPPUI: TStringField;
    cdsWTInstructionUNDER4Y: TIntegerField;
    cdsWTInstructionUNDER4YDA: TDateTimeField;
    cdsWTInstructionNOTES4Y: TStringField;
    cdsWTInstructionISDEL: TIntegerField;
    cdsWTInstructionID: TLargeintField;
    SaveDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure actGenerateFileExecute(Sender: TObject);
    procedure dtDatePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashCBestInstructionList: TfrmCashCBestInstructionList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashCBestInstructionList.actGenerateFileExecute(
  Sender: TObject);
var
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sFileName: string;
  i: Integer;
begin
  inherited;
  if SaveDialog.Execute then
    sFileName := SaveDialog.FileName;

  if sFileName <> '' then
  begin
    oXls          := TXLSReadWriteII5.Create(self);
    oXls.Filename := sFileName;
    oSheet        := oXls.Sheets[0];

    oSheet.AsString[0, 0] := 'ExternalReference';
    oSheet.AsString[1, 0] := 'participantCode';
    oSheet.AsString[2, 0] := 'participantAccount';
    oSheet.AsString[3, 0] := 'beneficiaryAccount';
    oSheet.AsString[4, 0] := 'beneficiaryInstitution';
    oSheet.AsString[5, 0] := 'valueDate';
    oSheet.AsString[6, 0] := 'currencyCode';
    oSheet.AsString[7, 0] := 'cashAmount';
    oSheet.AsString[8, 0] := 'description';

    i := 1;
    cdsWTInstructionList.DisableControls;
    cdsWTInstructionList.First;
    while not cdsWTInstructionList.Eof do
    begin
      oSheet.AsString[0, i] := cdsWTInstructionListCUSTODY_EXTREF.AsString;
      oSheet.AsString[1, i] := cdsWTInstructionListPARTY_CODE.AsString;
      oSheet.AsString[2, i] := cdsWTInstructionListPARTY_ACC.AsString;
      oSheet.AsString[3, i] := cdsWTInstructionListBENEFICIARYACC.AsString;
      oSheet.AsString[4, i] := cdsWTInstructionListBENEFICIARYINSTI.AsString;
      oSheet.AsString[5, i] := FormatDateTime('yyyymmdd', cdsWTInstructionListSETTLEDDATE.AsDateTime);
      oSheet.AsString[6, i] := cdsWTInstructionListCCYCODE.AsString;
      oSheet.AsFloat[7, i]  := cdsWTInstructionListAMOUNT.AsFloat;
      oSheet.AsString[8, i] := cdsWTInstructionListCUSTODY_DESC.AsString;

  //    cdsWTInstruction.Close;
  //    cdsWTInstruction.Params[0].AsInteger := cdsWTInstructionListCUSTODY_INSTRID.AsInteger;
  //    cdsWTInstruction.Open;
  //
  //    cdsWTInstruction.Edit;
  //    cdsWTInstructionCREATE_FILE.AsString := '1';
  //    cdsWTInstruction.Post;
  //    cdsWTInstruction.ApplyUpdates(-1);

      cdsWTInstructionList.Next;
      inc(i);
    end;
    oXls.Write;
    cdsWTInstructionList.EnableControls;

    MessageDlg('Generate from file excel has done', mtInformation, [mbOk], 0);
    if FileExists(sFileName) then
      ShellExecute(Application.Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;

end;

procedure TfrmCashCBestInstructionList.dtDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cdsWTInstructionList.Close;
  cdsWTInstructionList.Params[0].AsDate   := dtDate.Date;
  cdsWTInstructionList.Params[1].AsString := cmbFilterBy.EditValue;
  cdsWTInstructionList.Open;
end;

procedure TfrmCashCBestInstructionList.FormCreate(Sender: TObject);
begin
  inherited;
  cmbFilterBy.EditValue := 'D';
  dtDate.Date           := dmGlobal.RemoteServer.GetTransDate;

  cdsWTInstructionList.Close;
  cdsWTInstructionList.Params[0].AsDate   := dtDate.Date;
  cdsWTInstructionList.Params[1].AsString := cmbFilterBy.EditValue;
  cdsWTInstructionList.Open;

//  cdsCustodyLink.Close;
//  cdsCustodyLink.Params[0].AsInteger := 0;
//  cdsCustodyLink.Open;

  dmGlobal.IntDataLookup.cdsLuCustody.Close;
  dmGlobal.IntDataLookup.cdsLuCustody.Open;

  dmGlobal.IntDataLookup.cdsLuInstructionTypes.Close;
  dmGlobal.IntDataLookup.cdsLuInstructionTypes.Open;

  dmGlobal.IntDataLookup.cdsLuCcy.Close;
  dmGlobal.IntDataLookup.cdsLuCcy.Open;

  dmGlobal.IntDataLookup.cdsLuCBestInstrReason.Close;
  dmGlobal.IntDataLookup.cdsLuCBestInstrReason.Open;

  dmGlobal.IntDataLookup.cdsLuCBestInstrPurpose.Close;
  dmGlobal.IntDataLookup.cdsLuCBestInstrPurpose.Open;

end;

Initialization
  RegisterClass(TfrmCashCBestInstructionList);

end.
