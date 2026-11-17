unit FormMKBDSupportingData;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, cxButtonEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, XLSSheetData5,
  XLSReadWriteII5, Datasnap.DBClient, NClientDataset, System.Actions,
  System.ImageList;

type
  TfrmMKBDSupportingData = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbFileType: TcxImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnUpload: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btnView: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    edFileName: TcxButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    grdMasterLevel2: TcxGridLevel;
    grdMasterLevel3: TcxGridLevel;
    XLS: TXLSReadWriteII5;
    OpenDialog: TOpenDialog;
    cdsRptDeposito: TNClientDataset;
    cdsRptGiro: TNClientDataset;
    cdsRptMKBD: TNClientDataset;
    cdsRptDepositoID: TLargeintField;
    cdsRptDepositoCOLA: TStringField;
    cdsRptDepositoCOLB: TStringField;
    cdsRptDepositoCOLC: TStringField;
    cdsRptDepositoCOLD: TDateField;
    cdsRptDepositoCOLE: TStringField;
    cdsRptDepositoCOLF: TFloatField;
    cdsRptDepositoCOLG: TStringField;
    cdsRptDepositoCOLH: TFloatField;
    cdsRptGiroID: TIntegerField;
    cdsRptGiroCOLA: TStringField;
    cdsRptGiroCOLB: TStringField;
    cdsRptGiroCOLC: TStringField;
    cdsRptGiroCOLD: TStringField;
    cdsRptGiroCOLE: TStringField;
    cdsRptGiroCOLF: TFloatField;
    cdsRptGiroCOLG: TStringField;
    cdsRptGiroCOLH: TFloatField;
    cdsRptGiroCOLI: TStringField;
    cdsRptGiroCOLJ: TStringField;
    cdsRptGiroCOLK: TStringField;
    cdsRptGiroCOLL: TStringField;
    cdsRptGiroCOLM: TStringField;
    cdsRptGiroCOLN: TStringField;
    cdsRptGiroCOLO: TStringField;
    cdsRptMKBDTRDATE: TDateField;
    cdsRptMKBDSEQNO: TIntegerField;
    cdsRptMKBDAMOUNT: TFloatField;
    gvwGiro: TcxGridDBBandedTableView;
    gvwVD5152: TcxGridDBBandedTableView;
    dsRptGiro: TDataSource;
    dsRptMKBD: TDataSource;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterCOLA: TcxGridDBBandedColumn;
    gvwMasterCOLB: TcxGridDBBandedColumn;
    gvwMasterCOLC: TcxGridDBBandedColumn;
    gvwMasterCOLD: TcxGridDBBandedColumn;
    gvwMasterCOLE: TcxGridDBBandedColumn;
    gvwMasterCOLF: TcxGridDBBandedColumn;
    gvwMasterCOLG: TcxGridDBBandedColumn;
    gvwMasterCOLH: TcxGridDBBandedColumn;
    gvwGiroID: TcxGridDBBandedColumn;
    gvwGiroCOLA: TcxGridDBBandedColumn;
    gvwGiroCOLB: TcxGridDBBandedColumn;
    gvwGiroCOLC: TcxGridDBBandedColumn;
    gvwGiroCOLD: TcxGridDBBandedColumn;
    gvwGiroCOLE: TcxGridDBBandedColumn;
    gvwGiroCOLF: TcxGridDBBandedColumn;
    gvwGiroCOLG: TcxGridDBBandedColumn;
    gvwGiroCOLH: TcxGridDBBandedColumn;
    gvwGiroCOLI: TcxGridDBBandedColumn;
    gvwGiroCOLJ: TcxGridDBBandedColumn;
    gvwGiroCOLK: TcxGridDBBandedColumn;
    gvwGiroCOLL: TcxGridDBBandedColumn;
    gvwGiroCOLM: TcxGridDBBandedColumn;
    gvwGiroCOLN: TcxGridDBBandedColumn;
    gvwGiroCOLO: TcxGridDBBandedColumn;
    gvwVD5152TRDATE: TcxGridDBBandedColumn;
    gvwVD5152SEQNO: TcxGridDBBandedColumn;
    gvwVD5152AMOUNT: TcxGridDBBandedColumn;
    actUploadData: TNAction;
    actViewData: TNAction;
    procedure edFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actUploadDataExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UploadDeposito(AFileName: String);
    procedure UploadGiro(AFileName: String);
    procedure UploadVD5152(AFileName: String);
  end;

var
  frmMKBDSupportingData: TfrmMKBDSupportingData;

implementation

{$R *.dfm}

uses DataGlobal, DateUtils, FormProgressBar;

procedure TfrmMKBDSupportingData.actRefreshExecute(Sender: TObject);
begin
//  inherited;

  actViewData.Execute;
end;

procedure TfrmMKBDSupportingData.actUploadDataExecute(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  sFileName := edFileName.Text;

  if FileExists(sFileName) then
  begin
    if MessageDlg('Are you sure to upload data ' + cbFileType.EditText + '?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      if cbFileType.EditValue = 'D' then
        UploadDeposito(sFileName)
      else if cbFileType.EditValue = 'G' then
        UploadGiro(sFileName)
      else if cbFileType.EditValue = 'V' then
        UploadVD5152(sFileName);
    end;
  end
  else
    dmGlobal.ErrorMessage('File ' + QuotedStr(sFileName) + ' not found.');
end;

procedure TfrmMKBDSupportingData.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsRptDeposito.Close;
  cdsRptDeposito.Open;

  cdsRptGiro.Close;
  cdsRptGiro.Open;

  cdsRptMKBD.Close;
  cdsRptMKBD.Open;
end;

procedure TfrmMKBDSupportingData.edFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute then
    edFileName.Text := OpenDialog.FileName;
end;

procedure TfrmMKBDSupportingData.FormCreate(Sender: TObject);
begin
  inherited;
  cbFileType.EditValue := 'D';
  edFileName.EditValue := '';

  cdsRptDeposito.OnReconcileError := dmGlobal.GlobalReconcileError;
  cdsRptGiro.OnReconcileError := dmGlobal.GlobalReconcileError;
  cdsRptMKBD.OnReconcileError := dmGlobal.GlobalReconcileError;
end;

procedure TfrmMKBDSupportingData.UploadDeposito(AFileName: String);
var
  i, n, iError: Integer;
  iYear, iMonth, iDay: Word;
  slData, slDataRecord, slDataError, slDataSuccess, slTemp: TStringList;
  sMsg, sRecord, sDate, sErrorFileName: String;
  dtData: TDate;
  colF, colH: Double;
  oProgress: TfrmProgressBar;
  bError: Boolean;
begin

  slData := TStringList.Create;
  slDataRecord := TStringList.Create;
  slDataError := TStringList.Create;
  slDataSuccess := TStringList.Create;
  slTemp := TStringList.Create;
  oProgress := TfrmProgressBar.Create(Nil);
  Try
    bError := False;
    sErrorFileName := '';

    slData.LoadFromFile(AFileName);

    dmGlobal.RemoteServer.EmptyTable('report.N_S_DEPOSITO', sMsg);

    cdsRptDeposito.Close;
    cdsRptDeposito.Open;

    iError := 0;
    n := slData.Count;
    oProgress.Show;

    for i := 0 to n -1 do
    begin
      Try
        sRecord := slData[i];

        oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Data ' + sRecord);

        dmGlobal.ParseDelimited(slDataRecord, sRecord, ';');

        if slDataRecord.Count = 8 then
        begin
          sDate := slDataRecord[3];
          colF := StrToFloatDef(slDataRecord[5], -1);
          colH := StrToFloatDef(slDataRecord[7], -1);

          dmGlobal.ParseDelimited(slTemp, sDate, '/');
          iYear := StrToIntDef(slTemp[2], -1);
          iMonth := StrToIntDef(slTemp[0], -1);
          iDay := StrToIntDef(slTemp[1], -1);

          if (iYear = -1) or (iMonth = -1) or (iDay = -1) or (colF = -1) or (colH = -1) then
          begin
            slDataError.Add('Record ' + IntToStr(i + 1) + ' Data Format is not standard ('
              + QuotedStr(sRecord) + ')') ;

            Continue;
          end;

          dtData := EncodeDate(iYear, iMonth, iDay);

          cdsRptDeposito.Append;
          cdsRptDepositoID.AsLargeInt := -1;
          cdsRptDepositoCOLA.AsString := slDataRecord[0];
          cdsRptDepositoCOLB.AsString := slDataRecord[1];
          cdsRptDepositoCOLC.AsString := slDataRecord[2];
          cdsRptDepositoCOLD.AsDateTime := dtData;
          cdsRptDepositoCOLE.AsString := slDataRecord[4];
          cdsRptDepositoCOLF.AsFloat := colF;
          cdsRptDepositoCOLG.AsString := slDataRecord[6];
          cdsRptDepositoCOLH.AsFloat := colH;
          cdsRptDeposito.Post;
        end
        else
        begin
          slDataError.Add('Record ' + IntToStr(i + 1) + ' Column is not standard ('
            + QuotedStr(sRecord) + ')') ;
        end;

      Except
        on E: Exception do
        begin
          slDataError.Add('Record ' + IntToStr(i + 1) + ' error ' + QuotedStr(E.Message)
            + ' (' + QuotedStr(sRecord) + ')') ;
        end;
      End;
    end;

    oProgress.ChangeBarCaption('Apply updates data to database.');
    iError := cdsRptDeposito.ApplyUpdates(0);

    if slDataError.Count > 0 then
    begin
      bError := True;
      sErrorFileName := ChangeFileExt(AFileName, '.error');
      slDataError.SaveToFile(sErrorFileName);
    end;
  Finally
    FreeAndNil(oProgress);
    FreeAndNil(slTemp);
    FreeAndNil(slDataSuccess);
    FreeAndNil(slDataError);
    FreeAndNil(slDataRecord);
    FreeAndNil(slData);
  End;

  if bError then
  begin
    dmGlobal.ErrorMessage('Upload success with some error in file '
      + QuotedStr(sErrorFileName));
  end
  else
  begin
    ShowMessage('Data uploaded successfully');
  end;
end;

procedure TfrmMKBDSupportingData.UploadGiro(AFileName: String);
var
  i, n, iError: Integer;
  iYear, iMonth, iDay: Word;
  slData, slDataRecord, slDataError, slDataSuccess, slTemp: TStringList;
  sMsg, sRecord, sDate, sErrorFileName: String;
  dtData: TDate;
  colF, colH: Double;
  oProgress: TfrmProgressBar;
  bError: Boolean;
begin

  slData := TStringList.Create;
  slDataRecord := TStringList.Create;
  slDataError := TStringList.Create;
  slDataSuccess := TStringList.Create;
  slTemp := TStringList.Create;
  oProgress := TfrmProgressBar.Create(Nil);
  Try
    bError := False;
    sErrorFileName := '';

    slData.LoadFromFile(AFileName);

    dmGlobal.RemoteServer.EmptyTable('report.N_S_GIRO', sMsg);

    cdsRptGiro.Close;
    cdsRptGiro.Open;

    iError := 0;
    n := slData.Count;
    oProgress.Show;

    for i := 0 to n -1 do
    begin
      Try
        sRecord := slData[i];

        oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Data ' + sRecord);

        dmGlobal.ParseDelimited(slDataRecord, sRecord, ';');

        if slDataRecord.Count = 8 then
        begin
          colF := StrToFloatDef(slDataRecord[5], -1);
          colH := StrToFloatDef(slDataRecord[7], -1);

          if (colF = -1) or (colH = -1) then
          begin
            slDataError.Add('Record ' + IntToStr(i + 1) + ' Data Format is not standard ('
              + QuotedStr(sRecord) + ')') ;

            Continue;
          end;

          cdsRptGiro.Append;
          cdsRptGiroID.AsLargeInt := -1;
          cdsRptGiroCOLA.AsString := slDataRecord[0];
          cdsRptGiroCOLB.AsString := slDataRecord[1];
          cdsRptGiroCOLC.AsString := slDataRecord[2];
          cdsRptGiroCOLD.AsString := slDataRecord[3];
          cdsRptGiroCOLE.AsString := slDataRecord[4];
          cdsRptGiroCOLF.AsFloat := colF;
          cdsRptGiroCOLG.AsString := slDataRecord[6];
          cdsRptGiroCOLH.AsFloat := colH;
          cdsRptGiro.Post;
        end
        else
        begin
          slDataError.Add('Record ' + IntToStr(i + 1) + ' Column is not standard ('
            + QuotedStr(sRecord) + ')') ;
        end;

      Except
        on E: Exception do
        begin
          slDataError.Add('Record ' + IntToStr(i + 1) + ' error ' + QuotedStr(E.Message)
            + ' (' + QuotedStr(sRecord) + ')') ;
        end;
      End;
    end;

    oProgress.ChangeBarCaption('Apply updates data to database.');
    iError := cdsRptGiro.ApplyUpdates(0);

    if slDataError.Count > 0 then
    begin
      bError := True;
      sErrorFileName := ChangeFileExt(AFileName, '.error');
      slDataError.SaveToFile(sErrorFileName);
    end;
  Finally
    FreeAndNil(oProgress);
    FreeAndNil(slTemp);
    FreeAndNil(slDataSuccess);
    FreeAndNil(slDataError);
    FreeAndNil(slDataRecord);
    FreeAndNil(slData);
  End;

  if bError then
  begin
    dmGlobal.ErrorMessage('Upload success with some error in file '
      + QuotedStr(sErrorFileName));
  end
  else
  begin
    ShowMessage('Data uploaded successfully');
  end;
end;

procedure TfrmMKBDSupportingData.UploadVD5152(AFileName: String);
var
  i, n, iError, iData: Integer;
  iYear, iMonth, iDay: Word;
  slData, slDataRecord, slDataError, slDataSuccess, slTemp: TStringList;
  sMsg, sRecord, sDate, sErrorFileName: String;
  dtData: TDate;
  fData: Double;
  oProgress: TfrmProgressBar;
  bError: Boolean;
begin

  slData := TStringList.Create;
  slDataRecord := TStringList.Create;
  slDataError := TStringList.Create;
  slDataSuccess := TStringList.Create;
  slTemp := TStringList.Create;
  oProgress := TfrmProgressBar.Create(Nil);
  Try
    bError := False;
    sErrorFileName := '';

    slData.LoadFromFile(AFileName);

    dmGlobal.RemoteServer.EmptyTable('report.N_S_MKBD', sMsg);

    cdsRptMKBD.Close;
    cdsRptMKBD.Open;

    iError := 0;
    n := slData.Count;
    oProgress.Show;

    for i := 0 to n -1 do
    begin
      Try
        sRecord := slData[i];

        oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Data ' + sRecord);

        dmGlobal.ParseDelimited(slDataRecord, sRecord, ';');

        if slDataRecord.Count = 3 then
        begin
          sDate := slDataRecord[0];

          dmGlobal.ParseDelimited(slTemp, sDate, '/');
          iYear := StrToIntDef(slTemp[2], -1);
          iMonth := StrToIntDef(slTemp[0], -1);
          iDay := StrToIntDef(slTemp[1], -1);

          iData := StrToIntDef(slDataRecord[1], -1);
          fData := StrToFloatDef(slDataRecord[2], -1);

          if (iYear = -1) or (iMonth = -1) or (iDay = -1)
            or (iData = -1) or (fData = -1) then
          begin
            slDataError.Add('Record ' + IntToStr(i + 1) + ' Data Format is not standard ('
              + QuotedStr(sRecord) + ')') ;

            Continue;
          end;

          dtData := EncodeDate(iYear, iMonth, iDay);

          cdsRptMKBD.Append;
          cdsRptMKBDTRDATE.AsDateTime := dtData;
          cdsRptMKBDSEQNO.AsInteger := iData;
          cdsRptMKBDAMOUNT.AsFloat := fData;
          cdsRptMKBD.Post;
        end
        else
        begin
          slDataError.Add('Record ' + IntToStr(i + 1) + ' Column is not standard ('
            + QuotedStr(sRecord) + ')') ;
        end;

      Except
        on E: Exception do
        begin
          slDataError.Add('Record ' + IntToStr(i + 1) + ' error ' + QuotedStr(E.Message)
            + ' (' + QuotedStr(sRecord) + ')') ;
        end;
      End;
    end;

    oProgress.ChangeBarCaption('Apply updates data to database.');
    iError := cdsRptMKBD.ApplyUpdates(0);

    if slDataError.Count > 0 then
    begin
      bError := True;
      sErrorFileName := ChangeFileExt(AFileName, '.error');
      slDataError.SaveToFile(sErrorFileName);
    end;
  Finally
    FreeAndNil(oProgress);
    FreeAndNil(slTemp);
    FreeAndNil(slDataSuccess);
    FreeAndNil(slDataError);
    FreeAndNil(slDataRecord);
    FreeAndNil(slData);
  End;

  if bError then
  begin
    dmGlobal.ErrorMessage('Upload success with some error in file '
      + QuotedStr(sErrorFileName));
  end
  else
  begin
    ShowMessage('Data uploaded successfully');
  end;
end;

Initialization
  RegisterClass(TfrmMKBDSupportingData);

end.
