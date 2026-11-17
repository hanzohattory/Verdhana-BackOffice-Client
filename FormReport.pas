unit FormReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormBasic, cxClasses, dxBar, NActionPermission,
  Menus, ActnList, frxClass, frxPreview, frxExportPDF,
  frxExportODF, frxExportMail, frxExportCSV, frxExportText, frxExportImage,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, dxSkinsCore,
  dxSkinLiquidSky, dxSkinsdxBarPainter, frxExportDBF, frxExportBIFF, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutControl, cxSplitter, frxServerClient, NReportClient, Data.DB,
  dxStatusBar, System.Actions, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter;

type
  TfrmReport = class(TfrmBasic)
    barMReport: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    barPrint: TdxBarButton;
    aclReportContainer: TActionList;
    actPrint: TAction;
    dxBarButton2: TdxBarButton;
    actSaveAs: TAction;
    dxBarButton3: TdxBarButton;
    actZoomIn: TAction;
    actZoomOut: TAction;
    actOutline: TAction;
    actNextPage: TAction;
    actPreviousPage: TAction;
    actFirstPage: TAction;
    actLastPage: TAction;
    actThumbnails: TAction;
    actPageSetting: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    barOutline: TdxBarButton;
    barThumbnails: TdxBarButton;
    txtPages: TdxBarEdit;
    ZoomScale: TdxBarCombo;
    ReportContainer: TfrxPreview;
    barPageSetting: TdxBarButton;
    actExportToPDF: TAction;
    barExportToPdf: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    actExportToHTML: TAction;
    actExportToRTF: TAction;
    actExportToXLS: TAction;
    actExportToXML: TAction;
    actExportToBMP: TAction;
    actExportToJPEG: TAction;
    actExportToTIFF: TAction;
    actExportToGIF: TAction;
    actExportToCSV: TAction;
    actSendByEmail: TAction;
    actExportToSimpleText: TAction;
    actExportToODT: TAction;
    actExportToODS: TAction;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    lcParameterGroup_Root: TdxLayoutGroup;
    lcParameter: TdxLayoutControl;
    spReport: TcxSplitter;
    barReloadData: TdxBarButton;
    actReloadData: TAction;
    StatusBar: TdxStatusBar;
    Report: TNClientReportContainer;
    procedure actPrintExecute(Sender: TObject);
    procedure actZoomInExecute(Sender: TObject);
    procedure actZoomOutExecute(Sender: TObject);
    procedure actOutlineExecute(Sender: TObject);
    procedure actNextPageExecute(Sender: TObject);
    procedure actPreviousPageExecute(Sender: TObject);
    procedure actFirstPageExecute(Sender: TObject);
    procedure actLastPageExecute(Sender: TObject);
    procedure actThumbnailsExecute(Sender: TObject);
    procedure ReportContainerPageChanged(Sender: TfrxPreview; PageNo: Integer);
    procedure actSaveAsExecute(Sender: TObject);
    procedure actPageSettingExecute(Sender: TObject);
    procedure actExportToPDFExecute(Sender: TObject);
    procedure actExportToHTMLExecute(Sender: TObject);
    procedure actExportToRTFExecute(Sender: TObject);
    procedure actExportToXLSExecute(Sender: TObject);
    procedure actExportToXMLExecute(Sender: TObject);
    procedure actExportToBMPExecute(Sender: TObject);
    procedure actExportToJPEGExecute(Sender: TObject);
    procedure actExportToTIFFExecute(Sender: TObject);
    procedure actExportToGIFExecute(Sender: TObject);
    procedure actExportToCSVExecute(Sender: TObject);
    procedure actSendByEmailExecute(Sender: TObject);
    procedure actExportToSimpleTextExecute(Sender: TObject);
    procedure actExportToODTExecute(Sender: TObject);
    procedure actExportToODSExecute(Sender: TObject);
    procedure ZoomScaleChange(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    FReportClient: TfrxReportClient;
    FReloadCount: Integer;
    FUseParameter: Boolean;
  public
    property ReportClient: TfrxReportClient read FReportClient;
    property UseParameterTable: Boolean read FUseParameter write FUseParameter;
  end;

var
  frmReport: TfrmReport;

implementation

uses DataGlobal, FormMain, FormProcessWait, FormPleaseWait;

{$R *.dfm}

procedure TfrmReport.actExportToBMPExecute(Sender: TObject);
var
  oExportToBMP: TfrxBMPExport;
begin
  inherited;
  oExportToBMP := TfrxBMPExport.Create(Self);
  Try
    ReportContainer.Export(oExportToBMP);
  Finally
    oExportToBMP.Free;
  End;
end;

procedure TfrmReport.actExportToCSVExecute(Sender: TObject);
var
  oExportToCSV: TfrxCSVExport;
begin
  inherited;
  oExportToCSV := TfrxCSVExport.Create(Self);
  Try
    ReportContainer.Export(oExportToCSV);
  Finally
    oExportToCSV.Free;
  End;
end;

procedure TfrmReport.actExportToGIFExecute(Sender: TObject);
var
  oExportToGIF: TfrxGIFExport;
begin
  inherited;
  oExportToGIF := TfrxGIFExport.Create(Self);
  Try
    ReportContainer.Export(oExportToGIF);
  Finally
    oExportToGIF.Free;
  End;
end;

procedure TfrmReport.actExportToHTMLExecute(Sender: TObject);
var
  oExportToHTML: TfrxHTMLExport;
begin
  inherited;
  oExportToHTML := TfrxHTMLExport.Create(Self);
  Try
    ReportContainer.Export(oExportToHTML);
  Finally
    oExportToHTML.Free;
  End;
end;

procedure TfrmReport.actExportToJPEGExecute(Sender: TObject);
var
  oExportToJPEG: TfrxJPEGExport;
begin
  inherited;
  oExportToJPEG := TfrxJPEGExport.Create(Self);
  Try
    ReportContainer.Export(oExportToJPEG);
  Finally
    oExportToJPEG.Free;
  End;
end;

procedure TfrmReport.actExportToODSExecute(Sender: TObject);
var
  oExportToODS: TfrxODSExport;
begin
  inherited;
  oExportToODS := TfrxODSExport.Create(Self);
  Try
    ReportContainer.Export(oExportToODS);
  Finally
    oExportToODS.Free;
  End;
end;

procedure TfrmReport.actExportToODTExecute(Sender: TObject);
var
  oExportToODT: TfrxODTExport;
begin
  inherited;
  oExportToODT := TfrxODTExport.Create(Self);
  Try
    ReportContainer.Export(oExportToODT);
  Finally
    oExportToODT.Free;
  End;
end;

procedure TfrmReport.actExportToPDFExecute(Sender: TObject);
var
  oExportToPDF: TfrxPDFExport;
begin
  inherited;
  oExportToPDF := TfrxPDFExport.Create(Self);
  Try
    ReportContainer.Export(oExportToPDF);
  Finally
    oExportToPDF.Free;
  End;
end;

procedure TfrmReport.actExportToRTFExecute(Sender: TObject);
var
  oExportToRTF: TfrxRTFExport;
begin
  inherited;
  oExportToRTF := TfrxRTFExport.Create(Self);
  Try
    ReportContainer.Export(oExportToRTF);
  Finally
    oExportToRTF.Free;
  End;
end;

procedure TfrmReport.actExportToSimpleTextExecute(Sender: TObject);
var
  oExportToSimpleText: TfrxSimpleTextExport;
begin
  inherited;
  oExportToSimpleText := TfrxSimpleTextExport.Create(Self);
  Try
    ReportContainer.Export(oExportToSimpleText);
  Finally
    oExportToSimpleText.Free;
  End;
end;

procedure TfrmReport.actExportToTIFFExecute(Sender: TObject);
var
  oExportToTIFF: TfrxTIFFExport;
begin
  inherited;
  oExportToTIFF := TfrxTIFFExport.Create(Self);
  Try
    ReportContainer.Export(oExportToTIFF);
  Finally
    oExportToTIFF.Free;
  End;
end;

procedure TfrmReport.actExportToXLSExecute(Sender: TObject);
var
  oExportToXLS: TfrxXLSExport;
begin
  inherited;
  oExportToXLS := TfrxXLSExport.Create(Self);
  Try
    ReportContainer.Export(oExportToXLS);
  Finally
    oExportToXLS.Free;
  End;
end;

procedure TfrmReport.actExportToXMLExecute(Sender: TObject);
var
  oExportToXML: TfrxXMLExport;
begin
  inherited;
  oExportToXML := TfrxXMLExport.Create(Self);
  Try
    ReportContainer.Export(oExportToXML);
  Finally
    oExportToXML.Free;
  End;
end;

procedure TfrmReport.actFirstPageExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.First;
end;

procedure TfrmReport.actOutlineExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.OutlineVisible := not ReportContainer.OutlineVisible;
  barOutline.Down := ReportContainer.OutlineVisible;
  barThumbnails.Down := ReportContainer.ThumbnailVisible;
end;

procedure TfrmReport.actLastPageExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Last;
end;

procedure TfrmReport.actNextPageExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Next;
end;

procedure TfrmReport.actPageSettingExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.PageSetupDlg;
end;

procedure TfrmReport.actPreviousPageExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Prior;
end;

procedure TfrmReport.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Print;
end;

procedure TfrmReport.actReloadDataExecute(Sender: TObject);
var
  t: Cardinal;
  tf: Double;
  i: Integer;
  oForm: TfrmProcessWait;
  sKey: string;
begin
  inherited;

  if FUseParameter then
  begin
    for i := 0 to Report.Params.Count -1 do
    begin
      if not (Report.Params[i].DataType in [ftDate, ftDateTime, ftTimeStamp]) then
      begin
        with dmGlobal do
        begin
          sKey := GetGUID;
          cdsReportParameter.Close;
          cdsReportParameter.Params[0].AsString := sKey;
          cdsReportParameter.Open;

          cdsReportParameter.Append;
          cdsReportParameterDATAKEY.AsString   := sKey;
          cdsReportParameterDATAVALUE.AsString := Report.Params[i].AsString;
          cdsReportParameter.Open;
          cdsReportParameter.ApplyUpdates(-1);

          Report.Params[i].AsString := sKey;
        end;
      end;
    end;
  end;

  Screen.Cursor := crSQLWait;
  oForm         := TfrmProcessWait.Create(nil);

  try
    oForm.Show;
    Application.ProcessMessages;
    with Report do
    begin
      if (Trim(ReportName) = '') then exit;
      begin
        ReportClient.Preview := ReportContainer;
        ReportClient.LoadFromFile(ReportName);

        ReportClient.Variables.Clear;

        for i := 0 to Params.Count - 1 do
        begin
          if Params[i].DataType in [ftDate, ftDateTime, ftTimeStamp] then
            ReportClient.Variables.Variables[Params[i].Name] := FormatDateTime('yyyymmdd', Params[i].AsDate)
          else
            ReportClient.Variables.Variables[Params[i].Name] := Params[i].AsString;
        end;

        t := GetTickCount;
        if ReportClient.PrepareReport then
        begin
          tf := (GetTickCount - t) / 1000;
          StatusBar.Panels[1].Text := 'Report ' + QuotedStr(ReportName) + ' with Size = ' + IntToStr(ReportClient.Client.StreamSize) + ' Generated in ' + FloatToStr(tf) + ' Seconds.';
          Self.Caption := ReportClient.ReportOptions.Name;
          ReportClient.ShowPreparedReport;

          if FReloadCount = 0 then
            ReportClient.ShowPreparedReport;

          Inc(FReloadCount);

          if ReportClient.Errors.Count > 0 then
          begin
            MessageDlg(ReportClient.Errors.Text, mtError, [mbOK], 0);
          end;
        end
        else
        begin
          if ReportClient.PrepareReport then
          begin
            tf := (GetTickCount - t) / 1000;
            StatusBar.Panels[1].Text := 'Report ' + QuotedStr(ReportName) + ' with Size = ' + IntToStr(ReportClient.Client.StreamSize) + ' Generated in ' + FloatToStr(tf) + ' Seconds.';
            Self.Caption := ReportClient.ReportOptions.Name;
            ReportClient.ShowPreparedReport;

            if FReloadCount = 0 then
              ReportClient.ShowPreparedReport;

            Inc(FReloadCount);

            if ReportClient.Errors.Count > 0 then
            begin
              MessageDlg(ReportClient.Errors.Text, mtError, [mbOK], 0);
            end;
          end
          else
          begin
            if ReportClient.Errors.Count > 0 then
            begin
              MessageDlg('Report ' + QuotedStr(ReportName) + ' can''t generated.' + #13 +
                ReportClient.Errors.Text, mtError, [mbOK], 0);
            end
            else
            begin
              ShowMessage('Report ' + QuotedStr(ReportName) +
                ' can''t generated. Please Reload Data Report!');
            end;
          end;
        end;

        ReportContainer.First;
        ZoomScale.Text := FloatToStr(Round(ReportContainer.Zoom * 100)) + '%';

      end;
    end;

    Application.MainForm.Show;
    ReportContainer.ZoomMode := zmDefault;
  finally
    FreeAndNil(oForm);

    if FUseParameter then
    begin
      for i := 0 to Report.Params.Count - 1 do
      begin
        with dmGlobal do
        begin
          sKey := Report.Params[i].AsString;
          cdsReportParameter.Close;
          cdsReportParameter.Params[0].AsString := sKey;
          cdsReportParameter.Open;

          if not cdsReportParameter.IsEmpty then
          begin
            cdsReportParameter.Delete;
            cdsReportParameter.ApplyUpdates(0);
          end;
        end;
      end;
    end;

  end;
end;

procedure TfrmReport.actSaveAsExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.SaveToFile;
end;

procedure TfrmReport.actSendByEmailExecute(Sender: TObject);
var
  oExportToMail: TfrxMailExport;
begin
  inherited;
  oExportToMail := TfrxMailExport.Create(Self);
  Try
    ReportContainer.Export(oExportToMail);
  Finally
    oExportToMail.Free;
  End;
end;

procedure TfrmReport.actThumbnailsExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.ThumbnailVisible := not ReportContainer.ThumbnailVisible;
  barOutline.Down := ReportContainer.OutlineVisible;
  barThumbnails.Down := ReportContainer.ThumbnailVisible;
end;

procedure TfrmReport.actZoomInExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Zoom := ReportContainer.Zoom + 0.25;
  ZoomScale.Text := FloatToStr(Round(ReportContainer.Zoom * 100)) + '%';
end;

procedure TfrmReport.actZoomOutExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Zoom := ReportContainer.Zoom - 0.25;
  ZoomScale.Text := FloatToStr(Round(ReportContainer.Zoom * 100)) + '%';
end;

procedure TfrmReport.FormCreate(Sender: TObject);
begin
  inherited;
  FReloadCount := 0;
  FReportClient := TfrxReportClient.Create(Self);
  FReportClient.Assign(dmGlobal.ReportClient);
  FReportClient.Connection := dmGlobal.ReportServerConnection;

  if Report.Params.FindParam('USERID') = Nil then
  begin
    with Report.Params.AddParameter do
    begin
      Name := 'USERID';
      ParamType := ptInput;
      DataType := ftString;
      Value := dmGlobal.UserID;
    end;
  end;

  FUseParameter := False;

  Report.ReportClient := FReportClient;
  Report.ReportClient.Preview := ReportContainer;
  Report.ReportClient.LoadFromFile(Report.ReportName);
//  if not ReportClient.PrepareReport then ReportClient.PrepareReport;
end;

procedure TfrmReport.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
//  inherited;
  ReportContainer.MouseWheelScroll(-10, Shift, MousePos, False);
end;

procedure TfrmReport.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
//  inherited;
  ReportContainer.MouseWheelScroll(10, Shift, MousePos, False);
end;

procedure TfrmReport.ReportContainerPageChanged(Sender: TfrxPreview;
  PageNo: Integer);
begin
  inherited;
  StatusBar.Panels[0].Text := 'Page : ' + intToStr(PageNo);
  txtPages.Text  := IntToStr(PageNo)+' of '+IntToStr(ReportContainer.PageCount)
end;

procedure TfrmReport.ZoomScaleChange(Sender: TObject);
var
  s: String;
begin
  inherited;
  ReportContainer.SetFocus;

  if ZoomScale.ItemIndex = 6 then
    ReportContainer.ZoomMode := zmPageWidth
  else if ZoomScale.ItemIndex = 7 then
    ReportContainer.ZoomMode := zmWholePage
  else
  begin
    s := ZoomScale.Text;

    if Pos('%', s) <> 0 then
      s[Pos('%', s)] := ' ';
    while Pos(' ', s) <> 0 do
      Delete(s, Pos(' ', s), 1);

    if s <> '' then
      ReportContainer.Zoom := StrToFloat(s) / 100;
  end;

  PostMessage(Handle, WM_UPDATEZOOM, 0, 0);
  ZoomScale.Text := FloatToStr(Round(ReportContainer.Zoom * 100)) + '%';
end;

end.
