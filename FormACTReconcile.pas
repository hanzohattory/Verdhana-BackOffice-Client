unit FormACTReconcile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxCheckBox, cxBarEditItem, Datasnap.DBClient, NClientDataset,
  cxButtonEdit;

type
  TfrmACTReconcile = class(TfrmBrowseData)
    dtRecon: TcxBarEditItem;
    chkDiff: TcxBarEditItem;
    cdsACTReconList: TNClientDataset;
    cdsUpload: TNClientDataset;
    cdsUploadRekonDate: TDateField;
    cdsUploadMemberCode: TStringField;
    cdsUploadMemberName: TStringField;
    cdsUploadSRE_Account: TStringField;
    cdsUploadinvestorType1: TStringField;
    cdsUploadInvestorName: TStringField;
    cdsUploadTax1: TFloatField;
    cdsUploadTax2: TFloatField;
    cdsUploadStatus: TStringField;
    cdsUploadNPWP: TStringField;
    cdsUploadAddress: TStringField;
    cdsUploadCreateDate: TStringField;
    cdsUploadinvestorType2: TStringField;
    cdsUploadSID: TStringField;
    cdsUploadTradingID: TStringField;
    cdsACTReconListMemberCode: TStringField;
    cdsACTReconListMemberName: TStringField;
    cdsACTReconListAccountCode: TStringField;
    cdsACTReconListInvestorName_BO: TStringField;
    cdsACTReconListSID_BO: TStringField;
    cdsACTReconListSRE01_BO: TStringField;
    cdsACTReconListSRE04_BO: TStringField;
    cdsACTReconListInvestorName_KSEI: TStringField;
    cdsACTReconListSID_KSEI: TStringField;
    cdsACTReconListSRE01_KSEI: TStringField;
    cdsACTReconListSRE04_KSEI: TStringField;
    cdsACTReconListRecon: TStringField;
    cdsACTReconListReCon_UI: TStringField;
    cdsACTReconListRecon_Date: TDateTimeField;
    gvwMasterMemberCode: TcxGridDBBandedColumn;
    gvwMasterMemberName: TcxGridDBBandedColumn;
    gvwMasterAccountCode: TcxGridDBBandedColumn;
    gvwMasterInvestorName_BO: TcxGridDBBandedColumn;
    gvwMasterSID_BO: TcxGridDBBandedColumn;
    gvwMasterSRE01_BO: TcxGridDBBandedColumn;
    gvwMasterSRE04_BO: TcxGridDBBandedColumn;
    gvwMasterInvestorName_KSEI: TcxGridDBBandedColumn;
    gvwMasterSID_KSEI: TcxGridDBBandedColumn;
    gvwMasterSRE01_KSEI: TcxGridDBBandedColumn;
    gvwMasterSRE04_KSEI: TcxGridDBBandedColumn;
    gvwMasterRecon: TcxGridDBBandedColumn;
    gvwMasterReCon_UI: TcxGridDBBandedColumn;
    gvwMasterRecon_Date: TcxGridDBBandedColumn;
    edUploadFIle: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    OpenDialog: TOpenDialog;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure edUploadFIlePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBarEditItem2PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fSysDate: TDate;
    fUserID: string;
  public
    { Public declarations }
  end;

var
  frmACTReconcile: TfrmACTReconcile;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmACTReconcile.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsACTReconList.Close;
  cdsACTReconList.Params[0].AsDate   := VarToDateTime(dtRecon.EditValue);
  cdsACTReconList.Params[1].AsString := fUserID;
  cdsACTReconList.Open;
end;

procedure TfrmACTReconcile.cxBarEditItem2PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cdsACTReconList.Filtered := chkDiff.EditValue = 1;
end;

procedure TfrmACTReconcile.dxBarButton1Click(Sender: TObject);
var
  sFileName: string;
  slReconList, slReconData: TStringList;
  i, j: Integer;
  oProgress: TfrmProgressBar;
  iRowCount: Integer;
  dtReconDate: TDate;
begin
  inherited;
  if MessageQuestion('Upload ACT Reconcile ?') then
  begin
    sFileName := edUploadFIle.EditValue;
    if sFileName = '' then
    begin
      MessageError('Please choose one file to be uploaded !');
      exit;
    end;

    try
      dtReconDate := VarToDateTime(dtRecon.EditValue);

      slReconList := TStringList.Create;
      slReconList.LoadFromFile(sFileName);

      if slReconList.Count > 0 then
      begin
        dmGlobal.RemoteServer.ResetReconActByDate(dtReconDate);
      end;

      iRowCount := slReconList.Count;
      oProgress := TfrmProgressBar.Create(Nil);
      oProgress.Show;

      for i := 0 to slReconList.Count -1 do
      begin
        try
          slReconData := TStringList.Create;
          slReconData.StrictDelimiter := True;
          slReconData.Delimiter       := '|';
          slReconData.DelimitedText   := slReconList.Strings[i];

          oProgress.ChangeBar(trunc((i + 1) / iRowCount * 100), 'Processing ACT Reconcile '+  QuotedStr(slReconData.Strings[2]));

          cdsUpload.Append;
          cdsUploadRekonDate.AsDateTime   := dtReconDate;
          cdsUploadMemberCode.AsString    := slReconData.Strings[0];
          cdsUploadMemberName.AsString    := slReconData.Strings[1];
          cdsUploadSRE_Account.AsString   := slReconData.Strings[2];
          cdsUploadinvestorType1.AsString := slReconData.Strings[3];
          cdsUploadInvestorName.AsString  := slReconData.Strings[4];
          cdsUploadTax1.AsFloat           := StrToFloatDef(slReconData.Strings[5], 0);
          cdsUploadTax2.AsFloat           := StrToFloatDef(slReconData.Strings[6], 0);
          cdsUploadStatus.AsString        := slReconData.Strings[7];
          cdsUploadNPWP.AsString          := slReconData.Strings[8];
          cdsUploadAddress.AsString       := slReconData.Strings[9];
          cdsUploadCreateDate.AsString    := slReconData.Strings[10];
          cdsUploadinvestorType2.AsString := slReconData.Strings[11];
          cdsUploadSID.AsString           := slReconData.Strings[12];
          cdsUploadTradingID.AsString     := slReconData.Strings[13];
          cdsUpload.Post;

        finally
          FreeAndNil(slReconData);
        end;
      end;

    finally
      oProgress.ChangeBar(100, 'Saving data into database...');
      cdsUpload.ApplyUpdates(-1);

      FreeAndNil(slReconList);
      FreeAndNil(oProgress);
      MessageInformation('Upload ACT Reconcile has been done');

      actRefresh.Execute;
    end;
  end;
end;

procedure TfrmACTReconcile.edUploadFIlePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute then
    edUploadFIle.EditValue := OpenDialog.FileName;
end;

procedure TfrmACTReconcile.FormCreate(Sender: TObject);
begin
  inherited;
  fSysDate := dmGlobal.RemoteServer.GetTransDate;
  fUserID  := dmGlobal.UserID;

  dtRecon.EditValue := fSysDate;

  cdsUpload.Close;
  cdsUpload.Open;
end;

Initialization
  RegisterClass(TfrmACTReconcile);

end.
