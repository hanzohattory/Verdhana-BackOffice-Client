unit FormCreateReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControl, Menus, ComCtrls,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, DB, StrUtils, cxProgressBar, cxPC, ShellAPI, cxCheckBox,
  dxLayoutControlAdapters, cxPCdxBarPopupMenu, dxLayoutContainer, dxCore,
  cxDateUtils, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Idx_Bofis_Api_Com_TLB, Vcl.OleServer, ActiveX, Datasnap.DBClient,
  NClientDataset, NLibraries, dxBarBuiltInMenu, cxClasses;

type
  TReportThreadAll = class(TThread)
  private
    procedure Log(AMsg: string);
  protected
    procedure Execute; override;
  public
    FMemo: TMemo;
    FDate: TDateTime;
    RptType: string;
    ExtName: string;
    stFileName: string;
    FHashGenerator: Idx_Bofis_Api_Com_TLB.THashGenerator;
  end;

  TfrmCreateReport = class(TForm)
    TopLayoutGroup_Root: TdxLayoutGroup;
    TopLayout: TdxLayoutControl;
    btnExecute: TcxButton;
    TopLayoutItem2: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    dtpCreate: TcxDateEdit;
    TopLayoutItem1: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    tsCompanyData: TcxTabSheet;
    mmReport: TMemo;
    TopLayoutGroup1: TdxLayoutGroup;
    TopLayoutGroup2: TdxLayoutGroup;
    lurptType: TcxLookupComboBox;
    TopLayoutItem4: TdxLayoutItem;
    TopLayoutGroup3: TdxLayoutGroup;
    cdsRptGrpType: TNClientDataset;
    cdsRptGrpTypeRPTTYPEGRP: TStringField;
    cdsRptGrpTypeRPTDESC: TStringField;
    cdsRptGrpTypeCOUNTCOL: TIntegerField;
    cdsRptGrpTypeFILENAME: TStringField;
    cdsRptGrpTypeEXTFILE: TStringField;
    cdsRptGrpTypeDELIMITER: TStringField;
    cdsRptGrpTypeDATEFORMAT: TStringField;
    cdsRptGrpTypeMODDA: TDateTimeField;
    cdsRptGrpTypeMODUI: TWideStringField;
    cdsRptGrpTypeAPPDA: TDateTimeField;
    cdsRptGrpTypeAPPUI: TStringField;
    cdsRptGrpTypeUNDER4Y: TIntegerField;
    cdsRptGrpTypeUNDER4YDA: TDateTimeField;
    cdsRptGrpTypeNOTES4Y: TStringField;
    cdsRptGrpTypeISDEL: TIntegerField;
    cdsRptGrpTypeID: TLargeintField;
    cdsDelimiterData: TNClientDataset;
    cdsDelimiterDatadata: TMemoField;
    cdsCreateReportAll: TNClientDataset;
    cdsCreateReportAlldata: TStringField;
    cdsCheckDifferent: TNClientDataset;
    cdsCheckDifferentSource_Data: TStringField;
    cdsCheckDifferentDifferent_Value: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FHashGenerator: Idx_Bofis_Api_Com_TLB.THashGenerator;
    procedure RemoveBlankList(AList: TStringList);
    procedure ShowFolder(ADir: string);
  public
    { Public declarations }
    function CreateReportAll(AMemo: TMemo; ADate: TDateTime; RptType: string;
      ExtName: string; stFileName: string; AHashGenerator: Idx_Bofis_Api_Com_TLB.THashGenerator): TReportThreadAll;
    function CheckDifferent(AReportType: string): Boolean;
  end;

var
  frmCreateReport: TfrmCreateReport;
  ReportThreadAll: TReportThreadAll;

implementation

uses
  DataGlobal, DataReport, DataLookUp;

{$R *.dfm}
function TfrmCreateReport.CheckDifferent(AReportType: string): Boolean;
begin
  Result := False;

  cdsCheckDifferent.Close;
  cdsCheckDifferent.Params[0].AsString := AReportType;
  cdsCheckDifferent.Open;

  if not cdsCheckDifferent.IsEmpty then
  begin
    cdsCheckDifferent.First;
    while not cdsCheckDifferent.Eof do
    begin
      if (not cdsCheckDifferentDifferent_Value.IsNull) and (cdsCheckDifferentDifferent_Value.AsFloat
        <> 0) then
      begin
        Result := True;
        Break;
      end;

      cdsCheckDifferent.Next;
    end;
  end;
end;

function TfrmCreateReport.CreateReportAll(AMemo: TMemo; ADate: TDateTime;
  RptType: string; ExtName: string; stFileName: string; AHashGenerator:
  Idx_Bofis_Api_Com_TLB.THashGenerator): TReportThreadAll;
var
  oReportThread: TReportThreadAll;
begin
  oReportThread := TReportThreadAll.Create(true);
  oReportThread.FreeOnTerminate := true;
  oReportThread.FMemo := AMemo;
  oReportThread.FDate := ADate;
  oReportThread.RptType := RptType;
  oReportThread.ExtName := ExtName;
  oReportThread.stFileName := stFileName;
  oReportThread.FHashGenerator := AHashGenerator;
  oReportThread.Resume;

  Result := oReportThread;
end;

procedure TfrmCreateReport.cxCheckBox1PropertiesChange(Sender: TObject);
begin
//  dmGlobal.Save;
end;

procedure TfrmCreateReport.btnExecuteClick(Sender: TObject);
var
  ExtName: string;
  stFileName: string;
  sReportType: string;
begin
  sReportType := VarToStr(lurptType.EditValue);

  //Request By Irvan Temporary 20170320
//  if CheckDifferent(sReportType) then
//  begin
//    dmGlobal.ErrorMessage('Can''t generate MKBD File! There are different value!');
//    Exit;
//  end;

  with dmGlobal.RemoteServer do
  begin
    Screen.Cursor := crSQLWait;
    try
      RunSPCreateTextReport(lurptType.EditValue);
    except
      on E: Exception do
      begin
        screen.Cursor := crDefault;
        ShowMessage('Error Insert data to report text ' + #13 + E.Message);
        dmGlobal.Log(ltError, 'Inserting data to report text failed ' + E.Message);
        Exit;
      end;
    end;
    Screen.Cursor := crDefault;
    //ShowMessage('Done...');
    dmGlobal.Log(ltInfo, 'Create report successful');
  end;

  cdsRptGrpType.Close;
  cdsRptGrpType.Params[0].AsString := lurptType.EditValue;
  cdsRptGrpType.Open;
  ExtName := cdsRptGrpTypeEXTFILE.Text;
  stFileName := cdsRptGrpTypeFILENAME.Text;

  ReportThreadAll := CreateReportAll(mmReport, dtpCreate.Date, lurptType.EditValue,
    ExtName, stFileName, FHashGenerator);

end;

procedure TfrmCreateReport.FormShow(Sender: TObject);
begin
  dtpCreate.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuRptGrpType.Close;
    cdsLuRptGrpType.Open;

    lurptType.EditValue := 'VD5';
  end;
  mmReport.Clear;
end;

procedure TfrmCreateReport.RemoveBlankList(AList: TStringList);
const
  CR = #13;
  LF = #10;
var
  iLength: integer;
  sText: string;
begin
  iLength := Length(AList.Text);
  if (AList.Text[iLength - 1] = CR) and (AList.Text[iLength] = LF) then
  begin
    sText := Copy(AList.Text, 1, iLength - 2);
    AList.LineBreak := '';
    AList.Text := sText;
  end;
end;

procedure TfrmCreateReport.ShowFolder(ADir: string);
begin
  ShellExecute(Application.Handle, PChar('explore'), PChar(ADir), nil, nil, SW_SHOWMINIMIZED);
end;

{ TReportThread }

{ TReportThreadAll }

procedure TReportThreadAll.Execute;
var
  i, ListCount: integer;
  sDir, sFileName, sExtFile, strFileName: string;
  BrokerCode: string;
  CreateDate: TDateTime;
  oList: TStringList;
  stValue: string;
  stValueResult: string;
  sMetadataHash: WideString;
  sMkbdHash: WideString;
  oHashGenerator: Idx_Bofis_Api_Com_TLB.THashGenerator;
begin
  inherited;
  oHashGenerator := Idx_Bofis_Api_Com_TLB.THashGenerator.Create(nil);

  dmGlobal.Log(ltInfo, 'Starting to create Report');
//  for strFileName
  BrokerCode := dmGlobal.RemoteServer.GetBrokerCode;
  CreateDate := FDate;
  with frmCreateReport do
  begin
    cdsDelimiterData.Close;
    cdsDelimiterData.Params[0].AsString := stFileName;
    cdsDelimiterData.Params[1].AsString := ';';
    cdsDelimiterData.Open;

    cdsDelimiterData.First;
    Log('Generating Data Report...');
    while not cdsDelimiterData.Eof and not terminated do
    begin
      stValue := cdsDelimiterDatadata.AsString;
      if stValue = 'BrokerCode' then
        stValueResult := BrokerCode;
      if LeftStr(stValue, 2) = 'yy' then
        stValueResult := FormatDateTime(stValue, CreateDate);
      strFileName := strFileName + stValueResult;
      cdsDelimiterData.Next;
    end;
  end;

  sExtFile := '.' + ExtName;
  FMemo.Clear;
  Log('Checking Directory Report...');
  sDir := dmGlobal.MKBDOutPath; //dmGlobal.TextReportDir;
  if not DirectoryExists(sDir) then
    CreateDir(sDir);

  Screen.Cursor := crSQLWait;
  oList := TStringList.Create;
  with frmCreateReport do
  begin
    Log('Opening Dataset Report...');
    cdsCreateReportAll.Close;
    cdsCreateReportAll.Params[0].AsString := rptType;
    cdsCreateReportAll.Open;

    if cdsCreateReportAll.RecordCount = 0 then
    begin
      Log('Error : Data Report Not Found...');
      dmGlobal.Log(ltWarning, 'Data Report is not found');
      terminate;
      Screen.Cursor := crDefault;
      Exit;
    end;

    i := 0;
    cdsCreateReportAll.First;
    Log('Generating Data Report...');
    while not cdsCreateReportAll.Eof and not terminated do
    begin
      oList.Add(cdsCreateReportAllData.AsString);
      i := i + 1;
      cdsCreateReportAll.Next;
    end;
//    sFileName := sDir+'\'+BrokerCode+FormatDateTime('yymmdd',CreateDate)+sExtFile;
    sFileName := sDir + strFileName + sExtFile;

    CoInitialize(nil);
    try
      Log('Saving Report...');
      frmCreateReport.RemoveBlankList(oList);
      oList.SaveToFile(sFileName);

      //if generate mkb report then create hash check file for mkb report
      if LowerCase(ExtractFileExt(sFileName)) = '.mkb' then
      begin
        sMetadataHash := '';
        sMkbdHash := '';

        Log('Generate Hash Check');
        oHashGenerator.Connect;
        oHashGenerator.HashMkbd(oList.Text, sMetadataHash, sMkbdHash);
//        FHashGenerator.HashRecon(oList.Text, sMetadataHash, sMkbdHash);
        oHashGenerator.Disconnect;

        oList.LineBreak := '';

        Log('Save file Hash Meta (*.meta)');
        sFileName := ChangeFileExt(sFileName, '.meta');
        oList.Text := sMetadataHash;
        oList.SaveToFile(sFileName);

        Log('Save file Hash MKBD (*.sha)');
        sFileName := ChangeFileExt(sFileName, '.sha');
        oList.Text := sMkbdHash;
        oList.SaveToFile(sFileName);
      end;
    finally
      FreeAndNil(oList);
      oHashGenerator.Free;
      CoUninitialize;
    end;
    Screen.Cursor := crDefault;
  end;
  Log('Finished...');
  dmGlobal.Log(ltInfo, 'Creating Report successful');
end;

procedure TReportThreadAll.Log(AMsg: string);
begin
  FMemo.Lines.Add(AMsg);
end;

end.

