unit FormCOAList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, cxTLData, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, System.Actions, System.ImageList,
  dxDateRanges;

type
  TfrmCOAList = class(TfrmBrowseData)
    tlGroupAccount: TcxDBTreeList;
    spCOA: TcxSplitter;
    cdsGLAccountList: TNClientDataset;
    cdsGLAccountListGLACCOUNTID: TIntegerField;
    cdsGLAccountListGLACCOUNTCODE: TStringField;
    cdsGLAccountListGLACCOUNTNAME: TStringField;
    cdsGLAccountListCCY: TStringField;
    cdsGLAccountListPLBS: TStringField;
    cdsGLAccountListTRXSTATUS: TStringField;
    cdsGLAccountListGLACCOUNTSTATUS: TStringField;
    cdsGLAccountListGROUPID: TIntegerField;
    cdsGLAccountListMODDA: TDateTimeField;
    cdsGLAccountListMODUI: TStringField;
    cdsGLAccountListAPPDA: TDateTimeField;
    cdsGLAccountListAPPUI: TStringField;
    cdsGLAccountListUNDER4Y: TIntegerField;
    cdsGLAccountListUNDER4YDA: TDateTimeField;
    cdsGLAccountListNOTES4Y: TStringField;
    cdsGLAccountListISDEL: TIntegerField;
    cdsGLAccountListID: TLargeintField;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterPLBS: TcxGridDBBandedColumn;
    gvwMasterTRXSTATUS: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTSTATUS: TcxGridDBBandedColumn;
    gvwMasterGROUPID: TcxGridDBBandedColumn;
    cdsGLAccountGroupList: TNClientDataset;
    cdsGLAccountGroup: TNClientDataset;
    cdsGLAccountGroupListGROUPID: TIntegerField;
    cdsGLAccountGroupListGROUPCODE: TStringField;
    cdsGLAccountGroupListGROUPNAME: TStringField;
    cdsGLAccountGroupListGROUPDESC: TStringField;
    cdsGLAccountGroupListGROUPPARENTID: TIntegerField;
    cdsGLAccountGroupGROUPID: TIntegerField;
    cdsGLAccountGroupGROUPCODE: TStringField;
    cdsGLAccountGroupGROUPNAME: TStringField;
    cdsGLAccountGroupGROUPPARENTID: TIntegerField;
    cdsGLAccountGroupMODDA: TDateTimeField;
    cdsGLAccountGroupMODUI: TStringField;
    cdsGLAccountGroupAPPDA: TDateTimeField;
    cdsGLAccountGroupAPPUI: TStringField;
    cdsGLAccountGroupUNDER4Y: TIntegerField;
    cdsGLAccountGroupUNDER4YDA: TDateTimeField;
    cdsGLAccountGroupNOTES4Y: TStringField;
    cdsGLAccountGroupISDEL: TIntegerField;
    cdsGLAccountGroupID2: TLargeintField;
    dsBrowseGroup: TDataSource;
    cxDBTreeList1GROUPDESC: TcxDBTreeListColumn;
    DataContainerGroup: TNMasterDetailData;
    popGroup: TPopupMenu;
    actOpenGroup: TNDataActionOpen;
    actNewGroup: TNDataActionInsert;
    actEditGroup: TNDataActionEdit;
    actDeleteGroup: TNDataActionDelete;
    actRefreshGroup: TNDataActionRefresh;
    actInsertFromCurrentDataGroup: TNDataActionInsertFromCurrentData;
    View2: TMenuItem;
    N5: TMenuItem;
    Insert3: TMenuItem;
    Edit2: TMenuItem;
    Delete2: TMenuItem;
    N6: TMenuItem;
    Refresh2: TMenuItem;
    New1: TMenuItem;
    CopyFromSelectedData2: TMenuItem;
    cdsGLAccountGroupCCYCODE: TStringField;
    cdsGLAccountGroupCATEGORY: TStringField;
    cdsGLAccountGroupLEVEL1: TLargeintField;
    cdsGLAccountGroupLEVEL2: TLargeintField;
    cdsGLAccountGroupLEVEL3: TLargeintField;
    cdsGLAccountGroupLEVEL4: TLargeintField;
    cdsGLAccountGroupLEVEL5: TLargeintField;
    cdsGLAccountGroupLEVEL6: TLargeintField;
    cdsGLAccountGroupLEVELNO: TIntegerField;
    cdsGLAccountGroupVD56_LINE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure tlGroupAccountSelectionChanged(Sender: TObject);
    procedure DataContainerGroupAfterCreateEditorForm(AForm: TForm);
    procedure DataContainerGroupCancelSequence(ATableName: string;
      ASeqNumber: Int64);
    procedure DataContainerGroupCommitTransaction(Sender: TNMasterDetailData);
    procedure DataContainerGroupGetSequence(ATableName: string;
      var ASeqNumber: Int64);
    procedure DataContainerGroupGetServerDateTime(
      var AServerDateTime: TDateTime);
    procedure DataContainerGroupGetUserID(var AUserID: string);
    procedure DataContainerGroupRollbackTransaction(Sender: TNMasterDetailData);
    procedure DataContainerGroupStartTransaction(Sender: TNMasterDetailData);
    procedure DataContainerGroupGetEditorClass(var AFormClass: TNFormClass);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure DataContainerGroupBeforeInsert(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure DataContainerGroupBeforeEdit(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure DataContainerBeforeInsert(Sender: TNMasterDetailData;
      var AContinue: Boolean);
  private
    { Private declarations }
    FBrokerCode: String;
  public
    { Public declarations }
  end;

var
  frmCOAList: TfrmCOAList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormEditorData, FormGLAccountGroup, FormGLAccount;

procedure TfrmCOAList.DataContainerBeforeInsert(Sender: TNMasterDetailData;
  var AContinue: Boolean);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuGroupAccount.Params[0].AsInteger <> -1) or
      (not cdsLuGroupAccount.Active) then
    begin
      cdsLuGroupAccount.Close;
      cdsLuGroupAccount.Params[0].AsInteger := -1;
      cdsLuGroupAccount.Open;
    end;
  end;
end;

procedure TfrmCOAList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmGLAccount;
end;

procedure TfrmCOAList.DataContainerGroupAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  TfrmEditorData(AForm).DataContainer := DataContainerGroup;
end;

procedure TfrmCOAList.DataContainerGroupBeforeEdit(Sender: TNMasterDetailData;
  var AContinue: Boolean);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuGroupAccount.Params[0].AsInteger <> cdsGLAccountGroupListGROUPID.AsInteger) or
      (not cdsLuGroupAccount.Active) then
    begin
      cdsLuGroupAccount.Close;
      cdsLuGroupAccount.Params[0].AsInteger := cdsGLAccountGroupListGROUPID.AsInteger;
      cdsLuGroupAccount.Open;
    end;
  end;
end;

procedure TfrmCOAList.DataContainerGroupBeforeInsert(Sender: TNMasterDetailData;
  var AContinue: Boolean);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuGroupAccount.Close;
    cdsLuGroupAccount.Params[0].AsInteger := -1;
    cdsLuGroupAccount.Open;
  end;
end;

procedure TfrmCOAList.DataContainerGroupCancelSequence(ATableName: string;
  ASeqNumber: Int64);
begin
  inherited;
  dmGlobal.RemoteServer.CancelSeq(ATableName, ASeqNumber);
end;

procedure TfrmCOAList.DataContainerGroupCommitTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.CommitTransaction;
end;

procedure TfrmCOAList.DataContainerGroupGetEditorClass(
  var AFormClass: TNFormClass);
begin
  AFormClass := TfrmGLAccountGroup;
end;

procedure TfrmCOAList.DataContainerGroupGetSequence(ATableName: string;
  var ASeqNumber: Int64);
var
  iSeq: Int64;
begin
  inherited;
  iSeq := dmGlobal.RemoteServer.GetSeq(ATableName);
  ASeqNumber := iSeq;
end;

procedure TfrmCOAList.DataContainerGroupGetServerDateTime(
  var AServerDateTime: TDateTime);
var
  floatDate: Double;
begin
  inherited;
  floatDate := dmGlobal.RemoteServer.GetServerTimeStamp;
  AServerDateTime := FloatToDateTime(floatDate);
end;

procedure TfrmCOAList.DataContainerGroupGetUserID(var AUserID: string);
begin
  inherited;
  AUserID := dmGlobal.UserID;
end;

procedure TfrmCOAList.DataContainerGroupRollbackTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.RollbackTransaction;
end;

procedure TfrmCOAList.DataContainerGroupStartTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.StartTransaction;
end;

procedure TfrmCOAList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsGLAccountListGLACCOUNTID;
  FBrokerCode := dmGlobal.RemoteServer.GetBrokerCode;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuGroupAccount.Close;
    cdsLuGroupAccount.Params[0].AsInteger := -1;
    cdsLuGroupAccount.Open;
  end;

  if FBrokerCode = 'YU' then
  begin
    tlGroupAccount.Visible := False;
    spCOA.Visible := False;
    gvwMasterGROUPID.Visible := False;
  end
  else
  Begin
    cdsGLAccountGroupList.Close;
    cdsGLAccountGroupList.Open;

    tlGroupAccount.Visible := True;
    spCOA.Visible := True;
  End;

  cdsGLAccountList.Close;
  if FBrokerCode = 'YU' then
    cdsGLAccountList.Params[0].AsString := '1'
  else
    cdsGLAccountList.Params[0].AsString := '0';

  cdsGLAccountList.Params[1].AsInteger := cdsGLAccountGroupListGROUPID.AsInteger;
  cdsGLAccountList.Open;
end;

procedure TfrmCOAList.tlGroupAccountSelectionChanged(Sender: TObject);
begin
  inherited;
  cdsGLAccountList.Close;
  if FBrokerCode = 'YU' then
    cdsGLAccountList.Params[0].AsString := '1'
  else
    cdsGLAccountList.Params[0].AsString := '0';

  cdsGLAccountList.Params[1].AsInteger := cdsGLAccountGroupListGROUPID.AsInteger;
  cdsGLAccountList.Open;
end;

Initialization
  RegisterClass(TfrmCOAList);

end.
