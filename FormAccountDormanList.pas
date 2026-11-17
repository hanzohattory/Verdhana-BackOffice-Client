unit FormAccountDormanList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, XMLIntf, XMLDoc, System.StrUtils,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAccountDormanList = class(TfrmBrowseData)
    cdsAccountDormanList: TNClientDataset;
    cdsAccountDormanListADID: TLargeintField;
    cdsAccountDormanListACCID: TLargeintField;
    cdsAccountDormanListREMARK: TStringField;
    cdsAccountDormanListREQ_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanListAPPROVED: TIntegerField;
    cdsAccountDormanListAPP_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanListREQ_KSEI_ID: TStringField;
    cdsAccountDormanListREQ_KSEIID_DATE: TDateTimeField;
    cdsAccountDormanListMODDA: TDateTimeField;
    cdsAccountDormanListMODUI: TStringField;
    cdsAccountDormanListAPPDA: TDateTimeField;
    cdsAccountDormanListAPPUI: TStringField;
    cdsAccountDormanListUNDER4Y: TIntegerField;
    cdsAccountDormanListUNDER4YDA: TDateTimeField;
    cdsAccountDormanListNOTES4Y: TStringField;
    cdsAccountDormanListISDEL: TIntegerField;
    cdsAccountDormanListID: TLargeintField;
    cdsAccountDormanListACCCODE: TStringField;
    cdsAccountDormanListACCNAME: TStringField;
    gvwMasterADID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterREQ_DORMAN_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED: TcxGridDBBandedColumn;
    gvwMasterAPP_DORMAN_DATE: TcxGridDBBandedColumn;
    gvwMasterREQ_KSEI_ID: TcxGridDBBandedColumn;
    gvwMasterREQ_KSEIID_DATE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    cdsAccountDormanListADNO: TStringField;
    gvwMasterADNO: TcxGridDBBandedColumn;
    cdsLastNo: TNClientDataset;
    cdsLastNoBUSTYPEID: TLargeintField;
    cdsLastNoEVENTID: TLargeintField;
    cdsLastNoLASTCODE: TStringField;
    cdsLastNoMODDA: TDateTimeField;
    cdsLastNoMODUI: TStringField;
    cdsLastNoAPPDA: TDateTimeField;
    cdsLastNoAPPUI: TStringField;
    cdsLastNoUNDER4Y: TIntegerField;
    cdsLastNoUNDER4YDA: TDateTimeField;
    cdsLastNoNOTES4Y: TStringField;
    cdsLastNoISDEL: TIntegerField;
    cdsLastNoID: TLargeintField;
    actGenerateKSEIID: TNAction;
    cdsAccountDormanListBUSSTYPE: TLargeintField;
    actGenerateKSEIFile: TNAction;
    cdsKSEIInstitutionalAccountRequest: TNClientDataset;
    cdsKSEIIndividualAccountRequest: TNClientDataset;
    cdsKSEI_SDIA: TNClientDataset;
    Approve1: TMenuItem;
    N1: TMenuItem;
    actGenerateKSEIID1: TMenuItem;
    GenerateKSEIFile1: TMenuItem;
    actSendDormanByMail: TNAction;
    SendDormanNoticeByMail1: TMenuItem;
    actUpdateSID: TNAction;
    UpdateKSEISIDNo1: TMenuItem;
    cdsAccountDormanListOLD_SUBREK001: TStringField;
    cdsAccountDormanListOLD_SUBREK004: TStringField;
    cdsAccountDormanListNEW_SUBREK001: TStringField;
    cdsAccountDormanListNEW_SUBREK004: TStringField;
    cdsAccountDormanListUPD_KSEI_DATE: TDateField;
    gvwMasterOLD_SUBREK001: TcxGridDBBandedColumn;
    gvwMasterOLD_SUBREK004: TcxGridDBBandedColumn;
    gvwMasterNEW_SUBREK001: TcxGridDBBandedColumn;
    gvwMasterNEW_SUBREK004: TcxGridDBBandedColumn;
    gvwMasterUPD_KSEI_DATE: TcxGridDBBandedColumn;
    cdsAccountDorman: TNClientDataset;
    cdsAccountDormanADID: TLargeintField;
    cdsAccountDormanADNO: TStringField;
    cdsAccountDormanACCID: TLargeintField;
    cdsAccountDormanREMARK: TStringField;
    cdsAccountDormanREQ_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanAPPROVED: TIntegerField;
    cdsAccountDormanAPP_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanREQ_KSEI_ID: TStringField;
    cdsAccountDormanREQ_KSEIID_DATE: TDateTimeField;
    cdsAccountDormanMODDA: TDateTimeField;
    cdsAccountDormanMODUI: TStringField;
    cdsAccountDormanAPPDA: TDateTimeField;
    cdsAccountDormanAPPUI: TStringField;
    cdsAccountDormanUNDER4Y: TIntegerField;
    cdsAccountDormanUNDER4YDA: TDateTimeField;
    cdsAccountDormanNOTES4Y: TStringField;
    cdsAccountDormanISDEL: TIntegerField;
    cdsAccountDormanID: TLargeintField;
    cdsAccountDormanACCNAME: TStringField;
    cdsAccountDormanACCNO: TStringField;
    cdsAccountDormanOLD_SUBREK001: TStringField;
    cdsAccountDormanOLD_SUBREK004: TStringField;
    cdsAccountDormanNEW_SUBREK001: TStringField;
    cdsAccountDormanNEW_SUBREK004: TStringField;
    cdsAccountDormanUPD_KSEI_DATE: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actEditUpdate(Sender: TObject);
    procedure actGenerateKSEIIDUpdate(Sender: TObject);
    procedure actGenerateKSEIIDExecute(Sender: TObject);
    procedure actGenerateKSEIFileExecute(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure actSendDormanByMailExecute(Sender: TObject);
    procedure actApproveUpdate(Sender: TObject);
    procedure actGenerateKSEIFileUpdate(Sender: TObject);
    procedure actUpdateSIDExecute(Sender: TObject);
    procedure actUpdateSIDUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
    procedure CreateStaticDataInvestorFile(AFileName,
      ALastKSEINo: String; AADID: Integer; out AIndividualFileName, AInstitutionalFileName: String);
    procedure CreateSDIAFile(AFileName: string; AADID: Integer);
  public
    { Public declarations }
  end;

var
  frmAccountDormanList: TfrmAccountDormanList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccountDorman, FormAccountDormanUpdate;

procedure TfrmAccountDormanList.actApproveExecute(Sender: TObject);
begin
  inherited;
  if MessageQuestion('This account will be dorman, Approve ?') then
  begin
    cdsAccountDorman.Close;
    cdsAccountDorman.Params[0].AsInteger := cdsAccountDormanListADID.AsInteger;
    cdsAccountDorman.Open;

    cdsAccountDorman.Edit;
    cdsAccountDormanAPPROVED.AsInteger         := 1;
    cdsAccountDormanAPP_DORMAN_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    cdsAccountDorman.Post;

    cdsAccountDorman.ApplyUpdates(-1);
    cdsAccountDormanList.Refresh;

    dmGlobal.RemoteServer.UpdateAccountDorman('D', '', '', cdsAccountDormanListACCID.AsInteger);
  end;
end;

procedure TfrmAccountDormanList.actApproveUpdate(Sender: TObject);
begin
  inherited;
  actApprove.Enabled := (cdsAccountDormanListAPPROVED.AsInteger <> 1);
end;

procedure TfrmAccountDormanList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := cdsAccountDormanListAPPROVED.AsInteger = 0;
end;

procedure TfrmAccountDormanList.actGenerateKSEIFileExecute(Sender: TObject);
var
  sFileName, sIndividualFileName, sInstitutionalFileName: String;
  iADID, i: Integer;
  sKSEINo: string;
begin
  inherited;
  if MessageDlg('Create Static Data Investor File ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SaveDlg.DefaultExt := '.sdi';
    SaveDlg.Filter := 'Static Data Investor|*.sdi';
    if SaveDlg.Execute then
    begin
      sFileName := SaveDlg.FileName;
      iADID     := cdsAccountDormanListADID.AsInteger;

      CreateStaticDataInvestorFile(sFileName, '', iADID, sIndividualFileName, sInstitutionalFileName);
      CreateSDIAFile(sFileName, iADID);

      MessageDlg('Data Static Investor has been created', mtInformation, [mbOk], 0) ;
    end;
  end;
end;

procedure TfrmAccountDormanList.actGenerateKSEIFileUpdate(Sender: TObject);
begin
  inherited;
  actGenerateKSEIFile.Enabled := (cdsAccountDormanListAPPROVED.AsInteger = 1) and (cdsAccountDormanListREQ_KSEI_ID.AsString <> '');
end;

procedure TfrmAccountDormanList.CreateStaticDataInvestorFile(AFileName,
  ALastKSEINo: String; AADID: Integer; out AIndividualFileName, AInstitutionalFileName: String);
var
  i: Integer;
  sFileName, sFilePath, sExt: String;
  sFNInd, sFNIns: string;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  aHeader: array of string;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);
  AIndividualFileName := '';
  AInstitutionalFileName := '';

  //Individual KSEI File
  cdsKSEIIndividualAccountRequest.Close;
  cdsKSEIIndividualAccountRequest.Params[0].AsInteger := AADID;
  cdsKSEIIndividualAccountRequest.Open;

  if not cdsKSEIIndividualAccountRequest.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEIIndividualAccountRequest.First;
      while not cdsKSEIIndividualAccountRequest.Eof do
      begin
        for i := 0 to cdsKSEIIndividualAccountRequest.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEIIndividualAccountRequest.Fields[i].FieldName;
          oCNode.Text               := cdsKSEIIndividualAccountRequest.Fields[i].AsString;
        end;

        cdsKSEIIndividualAccountRequest.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '_Individual.sdi', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);

      dmGlobal.ReplaceXMLstring(sFileName);
//      FreeAndNil(oXML);
    end;
  end;

  cdsKSEIInstitutionalAccountRequest.Close;
  cdsKSEIInstitutionalAccountRequest.Params[0].AsInteger := AADID;
  cdsKSEIInstitutionalAccountRequest.Open;

  if not cdsKSEIInstitutionalAccountRequest.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEIInstitutionalAccountRequest.First;
      while not cdsKSEIInstitutionalAccountRequest.Eof do
      begin
        for i := 0 to cdsKSEIInstitutionalAccountRequest.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEIInstitutionalAccountRequest.Fields[i].FieldName;
          oCNode.Text               := cdsKSEIInstitutionalAccountRequest.Fields[i].AsString;
        end;

        cdsKSEIInstitutionalAccountRequest.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '_Institution.sdi', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);

      dmGlobal.ReplaceXMLstring(sFileName);
    end;
  end;
end;

procedure TfrmAccountDormanList.CreateSDIAFile(AFileName: string; AADID: Integer);
var
  i: Integer;
  sFileName, sFilePath, sExt: String;
  sFNInd, sFNIns: string;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  aHeader: array of string;
  oString: TStringList;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);

  cdsKSEI_SDIA.Close;
  cdsKSEI_SDIA.Params[0].AsInteger := AADID;
  cdsKSEI_SDIA.Params[1].AsString := '004';
  cdsKSEI_SDIA.Open;

  if not cdsKSEI_SDIA.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEI_SDIA.First;
      while not cdsKSEI_SDIA.Eof do
      begin
        for i := 0 to cdsKSEI_SDIA.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEI_SDIA.Fields[i].FieldName;
          oCNode.Text               := cdsKSEI_SDIA.Fields[i].AsString;
        end;

        cdsKSEI_SDIA.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '.sdia', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);

//      menghilangkan <?xml di line pertama
      oString := TStringList.Create;
      oString.LoadFromFile(sFileName);
      oString.Delete(0);
      oString.SaveToFile(sFileName);
      FreeAndNil(oString);
    end;
  end;
end;

procedure TfrmAccountDormanList.actGenerateKSEIIDExecute(Sender: TObject);
var
  sCurrentNo, sLastNo : string;
begin
  inherited;
  cdsLastNo.Close;
  cdsLastNo.Params[0].AsInteger := 0;
  cdsLastNo.Params[1].AsInteger := 0;
  cdsLastNo.Open;

  sCurrentNo := cdsLastNoLASTCODE.AsString;

  cdsAccountDorman.Close;
  cdsAccountDorman.Params[0].AsInteger := cdsAccountDormanListADID.AsInteger;
  cdsAccountDOrman.Open;

  cdsAccountDorman.Edit;
  cdsAccountDormanREQ_KSEI_ID.AsString       := sCurrentNo;
  cdsAccountDormanREQ_KSEIID_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsAccountDorman.Post;

  cdsAccountDorman.ApplyUpdates(-1);
  cdsAccountDormanList.Refresh;

  cdsLastNo.Edit;
  cdsLastNoLASTCODE.AsString := dmGlobal.GetKSEINo(sCurrentNo);
  cdsLastNo.Post;
  cdsLastNo.ApplyUpdates(-1);
end;

procedure TfrmAccountDormanList.actGenerateKSEIIDUpdate(Sender: TObject);
begin
  inherited;
  actGenerateKSEIID.Enabled := (cdsAccountDormanListAPPROVED.AsInteger = 1) and
    ((cdsAccountDormanListNEW_SUBREK001.AsString = '') or (cdsAccountDormanListNEW_SUBREK004.AsString = ''));
end;

procedure TfrmAccountDormanList.actSendDormanByMailExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sMessage: String;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to send multiple Dorman Notice By Email?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        dmGlobal.RemoteServer.SendNotificationAccountDormanByMail(cdsAccountDormanListADID.AsLargeInt);
      end;

      ShowMessage('Proses send notice dorman is on progress in Server.');
    end;
  end
  else
  begin
    if MessageDlg('Are you sure to send notice dorman ' +
      QuotedStr(cdsAccountDormanListACCCODE.AsString) + ' By Email?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      dmGlobal.RemoteServer.SendNotificationAccountDormanByMail(cdsAccountDormanListADID.AsLargeInt);
      ShowMessage('Proses send notice dorman is on progress in Server.');
    end;
  end;
end;

procedure TfrmAccountDormanList.actUpdateSIDExecute(Sender: TObject);
var
  oFormUpdate: TfrmAccountDormanUpdate;
  sMessage: string;
begin
  inherited;
  if MessageQuestion('Update KSEI SubRek No ?') then
  begin
    try
      oFormUpdate := TfrmAccountDormanUpdate.Create(nil);
      try
        TfrmAccountDormanUpdate(oFormUpdate).cdsAccountDorman.Close;
        TfrmAccountDormanUpdate(oFormUpdate).cdsAccountDorman.Params[0].AsInteger := cdsAccountDormanListADID.AsInteger;
        TfrmAccountDormanUpdate(oFormUpdate).cdsAccountDorman.Open;

        TfrmAccountDormanUpdate(oFormUpdate).cdsAccountDorman.Edit;
        if oFormUpdate.ShowModal = mrOk then
        begin
          TfrmAccountDormanUpdate(oFormUpdate).cdsAccountDorman.Post;
          TfrmAccountDormanUpdate(oFormUpdate).cdsAccountDorman.ApplyUpdates(-1);
        end;

        sMessage := 'KSEI SubRek account '+cdsAccountDormanListACCCODE.AsString +' '+
          cdsAccountDormanListACCCODE.AsString +' has been changed';
      except
        on E: Exception do
          sMessage := E.Message;
      end;
    finally
      MessageDlg(sMessage, mtInformation, [mbOk], 0);
      FreeAndNil(oFormUpdate);

      cdsAccountDormanList.Refresh;
      dmGlobal.RemoteServer.UpdateAccountDorman('A', cdsAccountDormanListNEW_SUBREK001.AsString
        , cdsAccountDormanListNEW_SUBREK004.AsString, cdsAccountDormanListACCID.AsInteger);

    end;
  end;
end;

procedure TfrmAccountDormanList.actUpdateSIDUpdate(Sender: TObject);
begin
  inherited;
  actUpdateSID.Enabled := cdsAccountDormanListREQ_KSEI_ID.AsString <> ''
end;

procedure TfrmAccountDormanList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccountDorman;
end;

procedure TfrmAccountDormanList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAccountDormanListADID;

  RefreshData;
end;

procedure TfrmAccountDormanList.RefreshData;
begin
  cdsAccountDormanList.Close;
  cdsAccountDormanList.Open;
end;

end.
