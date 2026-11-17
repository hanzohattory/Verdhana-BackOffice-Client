unit FormSOPList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, System.Actions, System.ImageList;

type
  TfrmSOPList = class(TfrmBrowseData)
    cdsSOPList: TNClientDataset;
    cdsSOP: TNClientDataset;
    cdsSOPSOPID: TIntegerField;
    cdsSOPSOPCODE: TStringField;
    cdsSOPSOPTYPE: TStringField;
    cdsSOPSOPDESC: TStringField;
    cdsSOPSTOCKID: TLargeintField;
    cdsSOPACCID: TIntegerField;
    cdsSOPREGDATE: TDateField;
    cdsSOPSTARTDATE: TDateField;
    cdsSOPENDDATE: TDateField;
    cdsSOPMODDA: TDateTimeField;
    cdsSOPMODUI: TStringField;
    cdsSOPAPPDA: TDateTimeField;
    cdsSOPAPPUI: TStringField;
    cdsSOPUNDER4Y: TIntegerField;
    cdsSOPUNDER4YDA: TDateTimeField;
    cdsSOPNOTES4Y: TStringField;
    cdsSOPISDEL: TIntegerField;
    cdsSOPID: TLargeintField;
    cdsSOPListSOPID: TIntegerField;
    cdsSOPListSOPCODE: TStringField;
    cdsSOPListSOPTYPE: TStringField;
    cdsSOPListSOPDESC: TStringField;
    cdsSOPListSTOCKID: TLargeintField;
    cdsSOPListACCID: TIntegerField;
    cdsSOPListREGDATE: TDateField;
    cdsSOPListSTARTDATE: TDateField;
    cdsSOPListENDDATE: TDateField;
    cdsSOPListMODDA: TDateTimeField;
    cdsSOPListMODUI: TStringField;
    cdsSOPListAPPDA: TDateTimeField;
    cdsSOPListAPPUI: TStringField;
    cdsSOPListUNDER4Y: TIntegerField;
    cdsSOPListUNDER4YDA: TDateTimeField;
    cdsSOPListNOTES4Y: TStringField;
    cdsSOPListISDEL: TIntegerField;
    cdsSOPListID: TLargeintField;
    gvwMasterSOPID: TcxGridDBBandedColumn;
    gvwMasterSOPCODE: TcxGridDBBandedColumn;
    gvwMasterSOPTYPE: TcxGridDBBandedColumn;
    gvwMasterSOPDESC: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterREGDATE: TcxGridDBBandedColumn;
    gvwMasterSTARTDATE: TcxGridDBBandedColumn;
    gvwMasterENDDATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsSOPACCOCDE: TStringField;
    cdsSOPACCNAME: TStringField;
    cdsSOPSTOCKCODE: TStringField;
    cdsSOPSTOCKNAME: TStringField;
    cdsSOPListACCOCDE: TStringField;
    cdsSOPListACCNAME: TStringField;
    cdsSOPListSTOCKCODE: TStringField;
    cdsSOPListSTOCKNAME: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    cdsSOPMember: TNClientDataset;
    actSOPMember: TNAction;
    SOPMember1: TMenuItem;
    cdsSOPMemberACCSOPID: TIntegerField;
    cdsSOPMemberSOPID: TIntegerField;
    cdsSOPMemberNIK: TStringField;
    cdsSOPMemberNAME: TStringField;
    cdsSOPMemberBNCODE: TStringField;
    cdsSOPMemberBANKACCNO: TStringField;
    cdsSOPMemberBANKACCNAME: TStringField;
    cdsSOPMemberMODDA: TDateTimeField;
    cdsSOPMemberMODUI: TStringField;
    cdsSOPMemberAPPDA: TDateTimeField;
    cdsSOPMemberAPPUI: TStringField;
    cdsSOPMemberUNDER4Y: TIntegerField;
    cdsSOPMemberUNDER4YDA: TDateTimeField;
    cdsSOPMemberNOTES4Y: TStringField;
    cdsSOPMemberISDEL: TIntegerField;
    cdsSOPMemberID: TLargeintField;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    cdsSOPMemberBANKBRANCH: TStringField;
    cdsSOPMemberACC_CUSTCODE: TStringField;
    cdsSOPMemberSEQ: TIntegerField;
    cdsSOPMemberBIRTH_PLACE: TStringField;
    cdsSOPMemberBIRTH_DATE: TDateTimeField;
    cdsSOPMemberIDNO: TStringField;
    cdsSOPMemberNPWPNO: TStringField;
    cdsSOPMemberDEPOSIT_QTY: TIntegerField;
    cdsSOPUSE_BANKPAY: TStringField;
    cdsSOPACCBANKID: TLargeintField;
    cdsSOPBANK_TRF_TYPE: TStringField;
    cdsLuBrokerBank: TNClientDataset;
    cdsLuBrokerBankACCBANKID: TIntegerField;
    cdsLuBrokerBankACCID: TIntegerField;
    cdsLuBrokerBankBNCODE: TStringField;
    cdsLuBrokerBankBANKACCNO: TStringField;
    cdsLuBrokerBankBANKACCNAME: TStringField;
    cdsLuBrokerBankBANKBRANCH: TStringField;
    cdsLuBrokerBankACTLED_SEQID: TIntegerField;
    cdsLuBrokerBankISRDN: TStringField;
    cdsLuBrokerBankACCBANKCODE: TStringField;
    cdsLuBrokerBankCCYCODE: TStringField;
    cdsSOPBankName: TStringField;
    cdsSOPAccNo: TStringField;
    cdsSOPAccBankName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actSOPMemberExecute(Sender: TObject);
    procedure actSOPMemberUpdate(Sender: TObject);
    procedure cdsSOPMemberNewRecord(DataSet: TDataSet);
    procedure cdsSOPMemberBeforeCancel(DataSet: TDataSet);
    procedure cdsSOPACCBANKIDChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSOPList: TfrmSOPList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormSOP, FormSOPMember;

procedure TfrmSOPList.actSOPMemberExecute(Sender: TObject);
var
  oForm: TfrmSOPMember;
  dtProcess: TDateTime;
begin
  inherited;
  cdsSOP.Close;
  cdsSOP.Params[0].AsInteger := cdsSOPListSOPID.AsInteger;
  cdsSOP.Open;

  cdsSOPMember.Close;
  cdsSOPMember.Params[0].AsInteger := cdsSOPListSOPID.AsInteger;
  cdsSOPMember.Open;

  oForm := TfrmSOPMember.Create(nil);
  Try
    if oForm.ShowModal = mrOK then
    begin
      if cdsSOPMember.ChangeCount > 0 then
      begin
        dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

        cdsSOPMember.First;
        while not cdsSOPMember.Eof do
        begin
          if cdsSOPMember.UpdateStatus in [usInserted, usModified] then
          begin
            cdsSOPMember.Edit;
            cdsSOPMemberMODDA.AsDateTime := dtProcess;
            cdsSOPMemberMODUI.AsString := dmGlobal.UserID;
            cdsSOPMember.Post;
          end;

          cdsSOPMember.Next;
        end;

        cdsSOPMember.ApplyUpdates(0);
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmSOPList.actSOPMemberUpdate(Sender: TObject);
begin
  inherited;
  actSOPMember.Enabled := (cdsSOPList.Active) and (not cdsSOPList.IsEmpty);
end;

procedure TfrmSOPList.cdsSOPACCBANKIDChange(Sender: TField);
begin
  inherited;
  if cdsLuBrokerBank.Locate('ACCBANKID', cdsSOPACCBANKID.AsInteger, []) then
  begin
    cdsSOPBankName.AsString    := cdsLuBrokerBankBNCODE.AsString;
    cdssopAccNo.AsString       := cdsLuBrokerBankBANKACCNO.AsString;
    cdsSOPAccBankName.AsString := cdsLuBrokerBankBANKACCNAME.AsString;
  end;
end;

procedure TfrmSOPList.cdsSOPMemberBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if DataSet.UpdateStatus = usInserted then
  begin
    dmGlobal.RemoteServer.CancelSeq('ACCSOPID', cdsSOPMemberACCSOPID.AsInteger);
  end;
end;

procedure TfrmSOPList.cdsSOPMemberNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSOPMemberACCSOPID.AsInteger := dmGlobal.RemoteServer.GetSeq('ACCSOPID');
  cdsSOPMemberSOPID.AsInteger := cdsSOPSOPID.AsInteger;
  cdsSOPMemberISDEL.AsInteger := 0;
end;

procedure TfrmSOPList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmSOP;
end;

procedure TfrmSOPList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;

    cdsLuBank.Close;
    cdsLuBank.Open;
  end;

  cdsLuBrokerBank.Close;
  cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
  cdsLuBrokerBank.Open;

  cdsSOPList.Close;
  cdsSOPList.Open;
end;

Initialization
  RegisterClass(TfrmSOPList);

end.
