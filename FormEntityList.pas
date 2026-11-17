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
  cxSpinEdit, cxLabel, cxCheckGroup, dxScrollbarAnnotations;

type
  TfrmEntityList = class(TfrmBrowseData)
    cdsEntityList: TNClientDataset;
    actUploadNewClient: TNAction;
    OpenDialog: TOpenDialog;
    UploadNewClient1: TMenuItem;
    actViewData: TNAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    edStatus: TcxBarEditItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    cdsEntityListENTTID: TIntegerField;
    cdsEntityListENTTCODE: TStringField;
    cdsEntityListENTNAME: TStringField;
    cdsEntityListENTACCTYPE: TStringField;
    cdsEntityListENTTYPE: TStringField;
    cdsEntityListAFFIL: TBooleanField;
    cdsEntityListENTSTATUS: TStringField;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterENTTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterENTSTATUS: TcxGridDBBandedColumn;
    edType: TcxBarEditItem;
    cdsEntityListCUST_TYPE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actUploadNewClientExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cdsEntityListENTSTATUSGetText(Sender: TField; var Text: string;
        DisplayText: Boolean);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
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

procedure TfrmEntityList.actRefreshExecute(Sender: TObject);
var
  sQuery: string;
  sCustType: string;
  sStatus: string;
  sEntNo: string;
  sEntName: string;
begin
//  inherited;

  sStatus     := '';
  if Copy(edStatus.EditValue, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'A';
  end;

  if Copy(edStatus.EditValue, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'C';
  end;

  if Copy(edStatus.EditValue, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'B';
  end;

  if Copy(edStatus.EditValue, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'S';
  end;

  if Copy(edStatus.EditValue, 5, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'T';
  end;

  if Copy(edStatus.EditValue, 6, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'D';
  end;

  sCustType := '';
  if Copy(edType.EditValue, 1, 1) = '1' then
  begin
    if sCustType <> '' then
      sCustType := sCustType + ',';
    sCustType := sCustType + 'I';
  end;

  if Copy(edType.EditValue, 2, 1) = '1' then
  begin
    if sCustType <> '' then
      sCustType := sCustType + ',';
    sCustType := sCustType + 'N';
  end;

  cdsEntityList.Close;
  cdsEntityList.Params[0].AsString := sStatus;
  cdsEntityList.Params[1].AsString := sCustType;
  cdsEntityList.Open;
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
  FCustType := cdsEntityListCUST_TYPE.AsInteger;

  if FCustType = 1 then
    AFormClass := TfrmEntityRet
  else
    AFormClass := TfrmEntityIns;
end;

procedure TfrmEntityList.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  edStatus.EditValue := '111111';
end;

procedure TfrmEntityList.dxBarButton4Click(Sender: TObject);
begin
  inherited;
  edStatus.EditValue := '000000';
end;

procedure TfrmEntityList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEntityListENTTID;

  edStatus.EditValue := '100000';
  edType.EditValue   := '10';
end;

Initialization
  RegisterClass(TfrmEntityList);

end.
