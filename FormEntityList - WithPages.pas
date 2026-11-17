unit FormEntityList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient,
  Data.DBXJSON, Data.DBXJSONCommon, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  System.JSON, System.Actions, System.ImageList, dxDateRanges, cxBarEditItem,
  cxSpinEdit, cxLabel, cxCheckGroup;

type
  TfrmEntityList = class(TfrmBrowseData)
    cdsEntityList: TNClientDataset;
    actUploadNewClient: TNAction;
    OpenDialog: TOpenDialog;
    UploadNewClient1: TMenuItem;
    actViewData: TNAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    edPage: TcxBarEditItem;
    barSearch: TdxBar;
    edEntNo: TcxBarEditItem;
    edEntName: TcxBarEditItem;
    BarPages: TdxBar;
    edPages: TcxBarEditItem;
    lbTotalPages: TcxBarEditItem;
    edAccType: TcxBarEditItem;
    edStatus: TcxBarEditItem;
    BarMBrowseBar2: TdxBar;
    cdsEntityListENTTID: TLargeintField;
    cdsEntityListENTTCODE: TStringField;
    cdsEntityListENTNAME: TStringField;
    cdsEntityListCREATEDATE: TDateTimeField;
    cdsEntityListAFFIL: TBooleanField;
    cdsEntityListENTACCTYPE: TStringField;
    cdsEntityListCUST_TYPE: TStringField;
    cdsEntityListENTSTATUS: TStringField;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterCREATEDATE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterCUST_TYPE: TcxGridDBBandedColumn;
    gvwMasterENTSTATUS: TcxGridDBBandedColumn;
    procedure actEditExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actUploadNewClientExecute(Sender: TObject);
    procedure btnViewDataClick(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cdsEntityListENTSTATUSGetText(Sender: TField; var Text: string;
        DisplayText: Boolean);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure edEntNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edEntNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FIsGeneralForm: Boolean;
    FTotalPages: integer;
    TotalPages: Integer;
    FUsePage: string;
    FCustType: Integer;
  public
    { Public declarations }
  end;

var
  frmEntityList: TfrmEntityList;

implementation

{$R *.dfm}

uses DataGlobal, FormEntityRet, FormEntityIns;

procedure TfrmEntityList.actEditExecute(Sender: TObject);
begin
  FCustType := cdsEntityListCUST_TYPE.AsInteger;
  inherited;
end;

procedure TfrmEntityList.actRefreshExecute(Sender: TObject);
var
  sQuery: string;
  sCustType: string;
  sStatus: string;
  sEntNo: string;
  sEntName: string;
begin
//  inherited;

  sCustType   := '';
  if Copy(edAccType.EditValue, 1, 1) = '1' then
  begin
    if sCustType <> '' then
      sCustType := sCustType + ';';
    sCustType := sCustType + '1';
  end;

  if Copy(edAccType.EditValue, 2, 1) = '1' then
  begin
    if sCustType <> '' then
      sCustType := sCustType + ';';
    sCustType := sCustType + '2';
  end;

  if Copy(edAccType.EditValue, 3, 1) = '1' then
  begin
    if sCustType <> '' then
      sCustType := sCustType + ';';
    sCustType := sCustType + '0';
  end;

  sStatus     := '';
  if Copy(edStatus.EditValue, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'A';
  end;

  if Copy(edStatus.EditValue, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'B';
  end;

  if Copy(edStatus.EditValue, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'S';
  end;

  if Copy(edStatus.EditValue, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'T';
  end;

  if Copy(edStatus.EditValue, 5, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'D';
  end;

  if Copy(edStatus.EditValue, 6, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'C';
  end;

  sEntNo      := edEntNo.EditValue;
  sEntName    := edEntName.EditValue;

  if FUsePage = 'Y' then
  begin
    TotalPages := dmGlobal.RemoteServer.GetEntityListTotalPages(sStatus, sEntNo, sEntName, sCustType);

    if TotalPages > 1 then
    begin
      BarPages.Visible     := True;
      lbTotalPages.Caption := 'From '+ FormatFloat('#,##0', TotalPages) +' Pages';
    end
    else
      BarPages.Visible := False;
  end;

  cdsEntityList.DisableControls;
  try
    cdsEntityList.Close;
    cdsEntityList.Params[0].AsString  := sStatus;
    cdsEntityList.Params[1].AsInteger := edPage.EditValue;
    cdsEntityList.Params[2].AsString  := edEntNo.EditValue;
    cdsEntityList.Params[3].AsString  := edEntName.EditValue;
    cdsEntityList.Params[4].AsString  := sCustType;
    cdsEntityList.Open;
  finally
    cdsEntityList.EnableControls;
  end;
end;

procedure TfrmEntityList.actUploadNewClientExecute(Sender: TObject);
var
  sFileName, sOutFileName: String;
  oOutStream: TStream;
  oFileStream, oOutFileStream: TFileStream;
  oFileArray, oOutFileArray: TJSONArray;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;

    if FileExists(sFileName) then
    begin
      oFileStream := TFileStream.Create(sFileName, fmOpenRead);
      oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
      oOutFileArray := TJSONArray.Create;
      Screen.Cursor := crSQLWait;
      Try
        if dmGlobal.RemoteServer.UploadNewClient(oFileArray, ExtractFileName(sFileName), oOutFileArray) then
        begin
          if (oOutFileArray <> nil) then
          begin
            sOutFileName := dmGlobal.AppPath + 'Temp\Out_' + ExtractFileName(sFileName);
            sOutFileName := ChangeFileExt(sOutFileName, '.xls');
            oOutStream := TDBXJSONTools.JSONToStream(oOutFileArray);
            oOutFileStream := TFileStream.Create(sOutFileName, fmOpenWrite or fmCreate);
            Try
              oOutFileStream.CopyFrom(oOutStream, oOutStream.Size);
            Finally
              FreeAndNil(oOutFileStream);
              FreeAndNil(oOutStream);
            End;

            if FileExists(sOutFileName) then
            begin
              dmGlobal.OpenFile(sOutFileName);
            end;
          end;

          Screen.Cursor := crDefault;
        end;
      Finally
        FreeAndNil(oFileStream);
        Screen.Cursor := crDefault;
      End;
    end;
  end;
end;

procedure TfrmEntityList.btnViewDataClick(Sender: TObject);
begin
  inherited;
//  cdsEntityList.DisableControls;
//  try
//    cdsEntityList.Close;
//    cdsEntityList.Params[0].AsInteger := cbClient.EditValue;
//    cdsEntityList.Open;
//  finally
//    cdsEntityList.EnableControls;
//  end;
end;

procedure TfrmEntityList.cdsEntityListENTSTATUSGetText(Sender: TField; var
    Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsString = 'A' then Text := 'Active'
  else if sender.AsString = 'C' then Text := 'Closed'
  else if sender.AsString = 'B' then Text := 'Suspend Buy'
  else if sender.AsString = 'S' then Text := 'Suspend Sell'
  else if sender.AsString = 'T' then Text := 'Suspend Trade'
  else if sender.AsString = 'D' then Text := 'Dorman';
end;

procedure TfrmEntityList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  if FCustType = 1 then
    AFormClass := TfrmEntityRet
  else
    AFormClass := TfrmEntityIns;
end;

procedure TfrmEntityList.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  edPages.EditValue := 1;
  actReject.Execute;
end;

procedure TfrmEntityList.dxBarButton4Click(Sender: TObject);
begin
  inherited;
  if edPages.EditValue > 1 then
  begin
    edPages.EditValue := edPages.EditValue - 1;
    actRefresh.Execute;
  end;
end;

procedure TfrmEntityList.dxBarButton5Click(Sender: TObject);
begin
  inherited;
  edPages.EditValue := edPages.EditValue + 1;
  if edPages.EditValue > TotalPages then
    edPages.EditValue := TotalPages;
  actRefresh.Execute
end;

procedure TfrmEntityList.dxBarButton6Click(Sender: TObject);
begin
  inherited;
  edPages.EditValue := TotalPages;
  actRefresh.Execute;
end;

procedure TfrmEntityList.edEntNameKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
  sValue: string;
begin
  inherited;
  sValue := TcxBarEditItem(sender).CurEditValue;
  if Key = VK_Return then
  begin
    edEntName.EditValue := sValue;
    actRefresh.Execute;
  end;
end;

procedure TfrmEntityList.edEntNoKeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
var
  sValue: string;
begin
  inherited;
  sValue := TcxBarEditItem(sender).CurEditValue;
  if Key = VK_Return then
  begin
    edEntNo.EditValue := sValue;
    actRefresh.Execute;
  end;
end;

procedure TfrmEntityList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEntityListENTTID;
  FUsePage := dmGlobal.RemoteServer.GetGlobalParamString('041');
  if FUsePage = '' then
    FUsePage := 'N';

  BarPages.Visible := False;

  barSearch.Visible           := FUsePage = 'Y';
  gvwMaster.FilterRow.Visible := FUsePage = 'N';

  edAccType.EditValue := '100';
  edStatus.EditValue  := '100000';
  edEntNo.EditValue   := '';
  edEntName.EditValue := '';
  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmEntityList);

end.
