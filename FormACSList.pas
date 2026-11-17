unit FormACSList;

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
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, cxCheckBox,
  dxDateRanges, System.Actions, System.ImageList, dxScrollbarAnnotations;

type
  TfrmACSList = class(TfrmBrowseData)
    cdsACSList: TNClientDataset;
    cdsACSListACS_ID: TLargeintField;
    cdsACSListACS_NO: TStringField;
    cdsACSListACS_DATE: TDateField;
    cdsACSListACCID: TLargeintField;
    cdsACSListACCNO: TStringField;
    cdsACSListSTOCKID: TLargeintField;
    cdsACSListSTOCKCODE: TStringField;
    cdsACSListBOARDID: TLargeintField;
    cdsACSListCPACCID: TLargeintField;
    cdsACSListBS: TStringField;
    cdsACSListPRICE: TFloatField;
    cdsACSListQTY: TFloatField;
    cdsACSListVALUE: TFloatField;
    cdsACSListFEE_PERCENT: TFloatField;
    cdsACSListFEE_AMOUNT: TFloatField;
    cdsACSListTOTAL_AMT: TFloatField;
    cdsACSListCASH_SETTLED_DATE: TDateField;
    cdsACSListSTOCK_SETTLE_DATE: TDateField;
    cdsACSListCASH_SETTLED: TStringField;
    cdsACSListSTOCK_SETTLED: TStringField;
    cdsACSListACS_STAT: TStringField;
    cdsACSListJRNHID: TLargeintField;
    cdsACSListMODDA: TDateTimeField;
    cdsACSListMODUI: TStringField;
    cdsACSListAPPDA: TDateTimeField;
    cdsACSListAPPUI: TStringField;
    cdsACSListUNDER4Y: TIntegerField;
    cdsACSListUNDER4YDA: TDateTimeField;
    cdsACSListNOTES4Y: TStringField;
    cdsACSListISDEL: TIntegerField;
    cdsACSListID: TLargeintField;
    gvwMasterACS_ID: TcxGridDBBandedColumn;
    gvwMasterACS_NO: TcxGridDBBandedColumn;
    gvwMasterACS_DATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterBOARDID: TcxGridDBBandedColumn;
    gvwMasterCPACCID: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterFEE_PERCENT: TcxGridDBBandedColumn;
    gvwMasterFEE_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AMT: TcxGridDBBandedColumn;
    gvwMasterCASH_SETTLED_DATE: TcxGridDBBandedColumn;
    gvwMasterSTOCK_SETTLE_DATE: TcxGridDBBandedColumn;
    gvwMasterCASH_SETTLED: TcxGridDBBandedColumn;
    gvwMasterSTOCK_SETTLED: TcxGridDBBandedColumn;
    gvwMasterACS_STAT: TcxGridDBBandedColumn;
    gvwMasterJRNHID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtFromDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtUntil: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsACS: TNClientDataset;
    cdsACSACS_ID: TLargeintField;
    cdsACSACS_NO: TStringField;
    cdsACSACS_DATE: TDateField;
    cdsACSACCID: TLargeintField;
    cdsACSACCNO: TStringField;
    cdsACSSTOCKID: TLargeintField;
    cdsACSSTOCKCODE: TStringField;
    cdsACSBOARDID: TLargeintField;
    cdsACSCPACCID: TLargeintField;
    cdsACSBS: TStringField;
    cdsACSPRICE: TFloatField;
    cdsACSQTY: TFloatField;
    cdsACSVALUE: TFloatField;
    cdsACSFEE_PERCENT: TFloatField;
    cdsACSFEE_AMOUNT: TFloatField;
    cdsACSTOTAL_AMT: TFloatField;
    cdsACSCASH_SETTLED_DATE: TDateField;
    cdsACSSTOCK_SETTLE_DATE: TDateField;
    cdsACSCASH_SETTLED: TStringField;
    cdsACSSTOCK_SETTLED: TStringField;
    cdsACSACS_STAT: TStringField;
    cdsACSJRNHID: TLargeintField;
    cdsACSMODDA: TDateTimeField;
    cdsACSMODUI: TStringField;
    cdsACSAPPDA: TDateTimeField;
    cdsACSAPPUI: TStringField;
    cdsACSUNDER4Y: TIntegerField;
    cdsACSUNDER4YDA: TDateTimeField;
    cdsACSNOTES4Y: TStringField;
    cdsACSISDEL: TIntegerField;
    cdsACSID: TLargeintField;
    cdsACSACS_DUEDATE: TDateField;
    cdsACSCCYCODE: TStringField;
    cdsACSBoard: TNClientDataset;
    cdsACSBoardBOARDID: TLargeintField;
    cdsACSBoardBOARDCODE: TStringField;
    cdsACSBoardMARKETCODE: TStringField;
    cdsACSBoardBOARDDESC: TStringField;
    cdsACSBoardGLCD: TStringField;
    cdsACSBoardMARKET: TStringField;
    cdsACSBoardCPTYPE: TStringField;
    cdsACSBoardDUEBUYSTOCK: TIntegerField;
    cdsACSBoardDUESELLSTOCK: TIntegerField;
    cdsACSBoardDUEBUYCASH: TIntegerField;
    cdsACSBoardDUESELLCASH: TIntegerField;
    cdsACSBoardMODDA: TDateTimeField;
    cdsACSBoardMODUI: TStringField;
    cdsACSBoardAPPDA: TDateTimeField;
    cdsACSBoardAPPUI: TStringField;
    cdsACSBoardISDEL: TIntegerField;
    LargeintField1: TLargeintField;
    cdsACSBoardCPVALUE: TIntegerField;
    cdsACSListACS_DUEDATE: TDateField;
    cdsACSListCCYCODE: TStringField;
    cdsACSListMARKETCODE: TStringField;
    cdsACSMARKETCODE: TStringField;
    procedure dtFromDatePropertiesCloseUp(Sender: TObject);
    procedure dtUntilPropertiesCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsACSNewRecord(DataSet: TDataSet);
    procedure cdsACSBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FTransDate: TDateTime;

    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmACSList: TfrmACSList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormACS;

{ TfrmACSList }

procedure TfrmACSList.cdsACSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsACSACS_ID.AsInteger = -1 then
  begin
    cdsACSACS_NO.AsString        := dmGlobal.RemoteServer.GetVoucherNo(FTransDate, 'ACS', 'TBL_ACS');
    cdsACSACS_ID.AsLargeInt      := dmGlobal.RemoteServer.GetSeq('TBL_B_ACS');
  end;
end;

procedure TfrmACSList.cdsACSNewRecord(DataSet: TDataSet);
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  cdsACSBoard.Close;
  cdsACSBoard.Params[0].AsString := dmGlobal.RemoteServer.GetGlobalParamString('049');
  cdsACSBoard.Open;

  cdsACSACS_DATE.AsDateTime    := FTransDate;
  cdsACSACS_NO.AsString        := '<Auto No>';
  cdsACSACS_ID.AsLargeInt      := -1;
  cdsACSFEE_PERCENT.AsFloat    := dmGlobal.RemoteServer.GetGlobalParamFloat('214');
  cdsACSBS.AsString            := 'B';
  cdsACSACS_DUEDATE.AsDateTime := FTransDate;
  cdsACSCPACCID.AsInteger      := cdsACSBoardCPVALUE.AsInteger;
  cdsACSMARKETCODE.AsString    := cdsACSBoardMARKETCODE.AsString;

end;

procedure TfrmACSList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmACS;
end;

procedure TfrmACSList.dtFromDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmACSList.dtUntilPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmACSList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsACSList.Close;
  cdsACSList.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsACSList.Params[1].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsACSList.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuBoard.Close;
    cdsLuBoard.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;
  end;
end;

procedure TfrmACSList.FormShow(Sender: TObject);
begin
  inherited;
  dtFromDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtUntil.Date    := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmACSList.RefreshData;
begin
  cdsACSList.Close;
  cdsACSList.Params[0].AsDateTime := dtFromDate.Date;
  cdsACSList.Params[1].AsDateTime := dtUntil.Date;
  cdsACSList.Open;
end;

Initialization
  RegisterClass(TfrmACSList);
end.
