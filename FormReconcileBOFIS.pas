unit FormReconcileBOFIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxClasses, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, dxBarBuiltInMenu, Vcl.StdCtrls, cxPC,
  cxButtons, Data.DB, Datasnap.DBClient, NClientDataset, Winapi.ActiveX,
  Vcl.OleServer, KSEI_Recon_API_Com_TLB, System.Zip;

type
  TfrmReconcileBOFIS = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtReport: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cdsUploadACT: TNClientDataset;
    cxPageControl1: TcxPageControl;
    tsCompanyData: TcxTabSheet;
    mmReport: TMemo;
    cdsUploadBal: TNClientDataset;
    cdsACTSummary: TNClientDataset;
    cdsACTDetail: TNClientDataset;
    cdsBalSummary: TNClientDataset;
    cdsBalDetail: TNClientDataset;
    cdsUploadACTUploadACT: TMemoField;
    cdsUploadBalUploadBal: TMemoField;
    cdsACTSummaryKSEIActSummary: TMemoField;
    cdsACTDetailKSEIActDetail: TMemoField;
    cdsBalSummaryKSEIBalSummary: TMemoField;
    cdsBalDetailKSEIBalDetail: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    FDir : String;
    FKodeParticipant: string;
    FBrokerCode: string;
    FHashGenerator: KSEI_Recon_Api_Com_TLB.THashGenerator;
    fActZipList: TStringList;
    fBalZipList: TStringList;

    procedure CreateFileUploadACT;
    procedure CreateFileUploadBal;

    procedure CreateFileACTSummary;
    procedure CreateFileACTDetail;

    procedure CreateFileBalSummary;
    procedure CreateFileBalDetail;

    procedure HashACT;
    procedure HashBal;

    procedure GenerateActZipFIle;
    procedure GenerateBalZipFile;
  public
    { Public declarations }
  end;

var
  frmReconcileBOFIS: TfrmReconcileBOFIS;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReconcileBOFIS.CreateFileACTDetail;
var
  sFileName: string;
  oACTDetail: TStringList;
begin
  mmReport.Lines.Add('Generate ACT Detail File');
  sFileName  := 'ACTDetail_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.txt';
  oACTDetail := TStringList.Create;

  try
    cdsACTDetail.Close;
    cdsACTDetail.Params[0].AsDate := dtReport.EditValue;
    cdsACTDetail.Open;

    if not cdsACTDetail.IsEmpty then
    begin
      cdsACTDetail.First;
      while not cdsACTDetail.Eof do
      begin
        oACTDetail.Add(cdsACTDetailKSEIActDetail.AsString);
        cdsACTDetail.Next;
      end;
    end
  finally
    oACTDetail.SaveToFile(FDir + sFileName);
    FreeAndNil(oACTDetail);
    mmReport.Lines.Add('Generate ACT Detail Done..');

    fActZipList.Add(FDir + sFileName);
  end;
end;

procedure TfrmReconcileBOFIS.CreateFileACTSummary;
var
  sFileName: string;
  oACTSummary: TStringList;
begin
  mmReport.Lines.Add('Generate ACT Summary File');
  sFileName  := 'ACTSummary_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.txt';
  oACTSummary := TStringList.Create;

  try
    cdsACTSummary.Close;
    cdsACTSummary.Params[0].AsDate := dtReport.EditValue;
    cdsACTSummary.Open;

    if not cdsACTSummary.IsEmpty then
    begin
      cdsACTSummary.First;
      while not cdsACTSummary.Eof do
      begin
        oACTSummary.Add(cdsACTSummaryKSEIActSummary.AsString);
        cdsACTSummary.Next;
      end;
    end
  finally
    oACTSummary.SaveToFile(FDir + sFileName);
    FreeAndNil(oACTSummary);
    mmReport.Lines.Add('Generate ACT Summary Done..');

    fActZipList.Add(FDir + sFileName);
  end;
end;

procedure TfrmReconcileBOFIS.CreateFileBalDetail;
var
  sFileName: string;
  oBalDetail: TStringList;
begin
  mmReport.Lines.Add('Generate Bal Detail File');
  sFileName  := 'BalDetail_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.txt';
  oBalDetail := TStringList.Create;

  try
    cdsBalDetail.Close;
    cdsBalDetail.Params[0].AsDate := dtReport.EditValue;
    cdsBalDetail.Open;

    if not cdsBalDetail.IsEmpty then
    begin
      cdsBalDetail.First;
      while not cdsBalDetail.Eof do
      begin
        oBalDetail.Add(cdsBalDetailKSEIBalDetail.AsString);
        cdsBalDetail.Next;
      end;
    end
  finally
    oBalDetail.SaveToFile(FDir + sFileName);
    FreeAndNil(oBalDetail);
    mmReport.Lines.Add('Generate Bal Detail Done..');

    fBalZipList.Add(FDir + sFileName);
  end;
end;

procedure TfrmReconcileBOFIS.CreateFileBalSummary;
var
  sFileName: string;
  oBalSummary: TStringList;
begin
  mmReport.Lines.Add('Generate Bal Summary File');
  sFileName  := 'BalSummary_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.txt';
  oBalSummary := TStringList.Create;

  try
    cdsBalSummary.Close;
    cdsBalSummary.Params[0].AsDate := dtReport.EditValue;
    cdsBalSummary.Open;

    if not cdsBalSummary.IsEmpty then
    begin
      cdsBalSummary.First;
      while not cdsBalSummary.Eof do
      begin
        oBalSummary.Add(cdsBalSummaryKSEIBalSummary.AsString);
        cdsBalSummary.Next;
      end;
    end
  finally
    oBalSummary.SaveToFile(FDir + sFileName);
    FreeAndNil(oBalSummary);
    mmReport.Lines.Add('Generate Bal Summary Done..');

    fBalZipList.Add(FDir + sFileName);
  end;
end;

procedure TfrmReconcileBOFIS.CreateFileUploadACT;
var
  sFileName: string;
  oUploadACT: TStringList;
begin
  mmReport.Lines.Add('Generate Upload ACT File');
  sFileName  := 'act'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.txt';
  oUploadACT := TStringList.Create;

  try
    cdsUploadACT.Close;
    cdsUploadACT.Params[0].AsDate := dtReport.EditValue;
    cdsUploadACT.Open;

    if not cdsUploadACT.IsEmpty then
    begin
      cdsUploadACT.First;
      while not cdsUploadACT.Eof do
      begin
        oUploadACT.Add(cdsUploadACTUploadACT.AsString);
        cdsUploadACT.Next;
      end;
    end
  finally
    oUploadACT.SaveToFile(FDir + sFileName);
    FreeAndNil(oUploadACT);
    mmReport.Lines.Add('Generate Upload ACT Done..');
  end;
end;

procedure TfrmReconcileBOFIS.CreateFileUploadBal;
var
  sFileName: string;
  oUploadBal: TStringList;
begin
  mmReport.Lines.Add('Generate Upload Bal File');
  sFileName  := 'bal'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.txt';
  oUploadBal := TStringList.Create;

  try
    cdsUploadBal.Close;
    cdsUploadBal.Params[0].AsDate := dtReport.EditValue;
    cdsUploadBal.Open;

    if not cdsUploadBal.IsEmpty then
    begin
      cdsUploadBal.First;
      while not cdsUploadBal.Eof do
      begin
        oUploadBal.Add(cdsUploadBalUploadBal.AsString);
        cdsUploadBal.Next;
      end;
    end
  finally
    oUploadBal.SaveToFile(FDir + sFileName);
    FreeAndNil(oUploadBal);
    mmReport.Lines.Add('Generate Upload Bal Done..');
  end;
end;

procedure TfrmReconcileBOFIS.cxButton1Click(Sender: TObject);
begin
  fActZipList := TStringList.Create;
  fBalZipList := TStringList.Create;

  try
    CreateFileUploadACT;
    CreateFileUploadBal;
    CreateFileACTSummary;
    CreateFileACTDetail;
    CreateFileBalSummary;
    CreateFileBalDetail;
    HashACT;
    HashBal;
  finally
    GenerateActZipFIle;
    GenerateBalZipFile;

    FreeAndNil(fActZipList);
    FreeAndNil(fBalZipList);
  end;
end;

procedure TfrmReconcileBOFIS.FormShow(Sender: TObject);
begin
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
  FDir               := dmGlobal.CBESTOutPath;
  FKodeParticipant   := dmGlobal.RemoteServer.GetGlobalParamString('009');
  FHashGenerator     := KSEI_Recon_API_Com_TLB.THashGenerator.Create(nil);
  FBrokerCode        := dmGlobal.RemoteServer.GetGlobalParamString('000');
end;

procedure TfrmReconcileBOFIS.GenerateActZipFIle;
var
  oZip: TZipFile;
  i: Integer;
  sFileName: string;
  sFName: string;
begin
  if fActZipList.Count = 0 then
    exit;

  oZip := TZipFile.Create;
  try
    sFileName := FDir +'ReconACTReport_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.zip';
    oZip.Open(sFileName, zmWrite);
    for i := 0 to fActZipList.Count -1 do
    begin
      sFName := ExtractFileName(fActZipList.Strings[i]);
      oZip.Add(fActZipList.Strings[i], sFName);
    end;
    oZip.Close;
  finally
    FreeAndNil(oZip);

    for i := 0 to fActZipList.Count -1 do
    begin
      DeleteFile(fActZipList.Strings[i]);
    end;
    fActZipList.Clear;
  end;
end;

procedure TfrmReconcileBOFIS.GenerateBalZipFile;
var
  oZip: TZipFile;
  i: Integer;
  sFileName: string;
  sFName: string;
begin
  if fBalZipList.Count = 0 then
    exit;

  oZip := TZipFile.Create;
  try
    sFileName := FDir +'ReconBALReport_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue)) +'.zip';
    oZip.Open(sFileName, zmWrite);
    for i := 0 to fBalZipList.Count -1 do
    begin
      sFName := ExtractFileName(fBalZipList.Strings[i]);
      oZip.Add(fBalZipList.Strings[i], sFName);
    end;
    oZip.Close;
  finally
    FreeAndNil(oZip);

    for i := 0 to fBalZipList.Count -1 do
    begin
      DeleteFile(fBalZipList.Strings[i]);
    end;
    fBalZipList.Clear;
  end;
end;

procedure TfrmReconcileBOFIS.HashACT;
var
  sFileName, sMetaFileName: string;
  oHashACT: TStringList;
  sMetadataHash: WideString;
  sReconcileHash: WideString;
begin
  oHashACT      := TStringList.Create;
  sFileName     := FDir + 'ACTHash_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue));
  sMetaFileName := FDir + FBrokerCode + FormatDateTime('yymmdd', VarToDateTime(dtReport.EditValue));

  if not cdsACTSummary.Active then
    cdsACTSummary.Open;
  if not cdsACTDetail.Active then
    cdsACTDetail.Open;

  oHashACT.Add(cdsACTSummaryKSEIActSummary.AsString);
  cdsACTDetail.First;
  while not cdsACTDetail.Eof do
  begin
    oHashACT.Add(cdsACTDetailKSEIActDetail.AsString);
    cdsACTDetail.Next;
  end;

//  CoInitialize(nil);
  try
    sMetadataHash  := '';
    sReconcileHash := '';

    FHashGenerator.Connect;
    FHashGenerator.HashRecon(oHashACT.Text, sMetadataHash, sReconcileHash);
    FHashGenerator.Disconnect;

    mmReport.Lines.Add('Save file Hash Reconcile (*.txt)');
    sFileName     := ChangeFileExt(sFileName, '.txt');
    oHashACT.Text := sReconcileHash;
    oHashACT.SaveToFile(sFileName);

    mmReport.Lines.Add('Save file Meta Reconcile (*.meta)');
    sMetaFileName := ChangeFileExt(sMetaFileName, '.meta');
    oHashACT.Text := sMetadataHash;
    oHashACT.SaveToFile(sMetaFileName);

    fActZipList.Add(sFileName);
  finally
    FreeAndNil(oHashACT);
//    CoUninitialize;
  end;
end;

procedure TfrmReconcileBOFIS.HashBal;
var
  sFileName, sMetaFileName: string;
  oHashBal: TStringList;
  sMetadataHash: WideString;
  sReconcileHash: WideString;
begin
  oHashBal      := TStringList.Create;
  sFileName     := FDir + 'BalHash_'+ FKodeParticipant +'_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtReport.EditValue));
  sMetaFileName := FDir + FBrokerCode + FormatDateTime('yyymmdd', VarToDateTime(dtReport.EditValue));

  if not cdsBalSummary.Active then
    cdsBalSummary.Open;
  if not cdsBalDetail.Active then
    cdsBalDetail.Open;

  oHashBal.Add(cdsBalSummaryKSEIBalSummary.AsString);
  oHashBal.Add(cdsBalDetailKSEIBalDetail.AsString);
  cdsBalDetail.First;
  while not cdsBalDetail.Eof do
  begin
    oHashBal.Add(cdsBalDetailKSEIBalDetail.AsString);
    cdsBalDetail.Next;
  end;

//  CoInitialize(nil);
  try
    sMetadataHash  := '';
    sReconcileHash := '';

    FHashGenerator.Connect;
    FHashGenerator.HashRecon(oHashBal.Text, sMetadataHash, sReconcileHash);
    FHashGenerator.Disconnect;

    mmReport.Lines.Add('Save file Hash Reconcile (*.txt)');
    sFileName     := ChangeFileExt(sFileName, '.txt');
    oHashBal.Text := sReconcileHash;
    oHashBal.SaveToFile(sFileName);

//    mmReport.Lines.Add('Save file Meta Reconcile (*.meta)');
//    sMetaFileName  := ChangeFileExt(sMetaFileName, '.meta');
//    oHashBal.Text  := sMetadataHash;
//    oHashBal.SaveToFile(sMetaFileName);

    fBalZipList.Add(sFileName);
  finally
    FreeAndNil(oHashBal);
//    CoUninitialize;
  end;
end;

end.
