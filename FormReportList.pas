unit FormReportList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, Data.DB, Vcl.ActnList,
  NDatasetAction, Datasnap.DBClient, NClientDataset, Vcl.Menus, dxBar,
  cxClasses, Vcl.ImgList, cxStyles, NActionPermission, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxTL, cxMaskEdit,
  cxCheckBox, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData,
  StdCtrls, ShellApi, frxClass, frxServerClient,
  frxGZip, frxDCtrl, frxChBox, frxCross, frxRich, frxChart,
  frxOLE, frxBarcode, ExtCtrls, frxExportPDF, frxExportImage,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML,
  frxExportTXT, frxGradient, ComCtrls, NLibraries,
  frxExportMail, frxExportText, frxExportCSV, NReportClient, StrUtils,
  cxSplitter, dxtree, dxdbtree, frxCustomDB, frxCustomDBEditor, cxContainer,
  cxEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.Actions, System.ImageList;

type
  TfrmReportList = class(TfrmBasic)
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuLoadData: TdxBarButton;
    popReport: TPopupMenu;
    ViewData1: TMenuItem;
    N2: TMenuItem;
    cdsReport: TNClientDataset;
    aclReportList: TActionList;
    actLoadData: TNAction;
    dsReport: TDataSource;
    cdsReportCODE: TStringField;
    cdsReportPARENTCODE: TStringField;
    cdsReportDESCRIPTION: TStringField;
    cdsReportNAME: TStringField;
    cdsReportISREPORT: TBooleanField;
    cdsReportIMAGE: TIntegerField;
    tlReport: TcxDBTreeList;
    tlGroupAccountNAME: TcxDBTreeListColumn;
    tlReportCODE: TcxDBTreeListColumn;
    tlReportPARENTCODE: TcxDBTreeListColumn;
    tlReportNAME: TcxDBTreeListColumn;
    tlReportDESCRIPTION: TcxDBTreeListColumn;
    tlReportISREPORT: TcxDBTreeListColumn;
    tlReportIMAGE: TcxDBTreeListColumn;
    tvReport: TdxDBTreeView;
    cxSplitter1: TcxSplitter;
    actFullExpand: TNAction;
    actFullCollapse: TNAction;
    FullExpand1: TMenuItem;
    FullCollapse1: TMenuItem;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tlReportDblClick(Sender: TObject);
    procedure tvReportDblClick(Sender: TObject);
    procedure actFullExpandExecute(Sender: TObject);
    procedure actFullCollapseExecute(Sender: TObject);
    procedure tvReportGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LoadReportList;
  public
    { Public declarations }
  end;

var
  frmReportList: TfrmReportList;

implementation

{$R *.dfm}

uses DataGlobal, FormReport;

{ TfrmReportList }

procedure TfrmReportList.actFullCollapseExecute(Sender: TObject);
begin
  inherited;
  tvReport.FullCollapse;
end;

procedure TfrmReportList.actFullExpandExecute(Sender: TObject);
begin
  inherited;
  tvReport.FullExpand;
end;

procedure TfrmReportList.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  LoadReportList;
end;

procedure TfrmReportList.FormCreate(Sender: TObject);
begin
  inherited;
  LoadReportList;
end;

procedure TfrmReportList.FormShow(Sender: TObject);
begin
  inherited;
  if Tag = 1 then exit;

  tvReport.FullExpand;
  Tag := 1;
end;

procedure TfrmReportList.LoadReportList;
var
  slReport: TStringList;
  i, iLastFolder: Integer;
  sCode, sParentCode, sLastParentCode, sName, sDesc: String;
  bFirst: Boolean;
begin
  cdsReport.Close;
  cdsReport.CreateDataSet;

  with dmGlobal do
  begin
    slReport := TStringList.Create;
    cdsReport.DisableControls;
    Try
      slReport.Text := ReportClient.GetServerVariable('SERVER_REPORTS_LIST');
      if slReport.Count > 0 then
      begin
        for i := 0 to (slReport.Count div 3) - 1 do
        begin
          bFirst := True;
          sName := slReport[i * 3];
          sCode := slReport[(i * 3) + 1];
          sDesc := slReport[(i * 3) + 2];
          sParentCode := '';

          iLastFolder := LastDelimiter('\', sCode);
          if iLastFolder > 0 then
          begin
            sParentCode := LeftStr(sCode, iLastFolder - 1);
            cdsReport.Append;
            cdsReportCODE.AsString := sCode;
            cdsReportPARENTCODE.AsString := sParentCode;
            cdsReportNAME.AsString := sName;
            cdsReportDESCRIPTION.AsString := sDesc;
            cdsReportISREPORT.AsBoolean := True;
            cdsReportIMAGE.AsInteger := 1;
            cdsReport.Post;

            if sParentCode <> sLastParentCode then
            begin
              sLastParentCode := sParentCode;
              while iLastFolder > 0 do
              begin
                iLastFolder := LastDelimiter('\', sParentCode);
                sCode := sParentCode;
                sName := RightStr(sCode, Length(sCode) - iLastFolder);
                sParentCode := LeftStr(sCode, iLastFolder - 1);
                sDesc := '';

                if not cdsReport.Locate('CODE', sCode, []) then
                begin
                  cdsReport.Append;
                  cdsReportCODE.AsString := sCode;
                  cdsReportPARENTCODE.AsString := sParentCode;
                  cdsReportNAME.AsString := sName;
                  cdsReportDESCRIPTION.AsString := sDesc;
                  cdsReportISREPORT.AsBoolean := False;
                  cdsReportIMAGE.AsInteger := 0;
                  cdsReport.Post;
                end;
              end;
            end;
          end
          else
          begin
            cdsReport.Append;
            cdsReportCODE.AsString := sCode;
            cdsReportPARENTCODE.AsString := sParentCode;
            cdsReportNAME.AsString := sName;
            cdsReportDESCRIPTION.AsString := sDesc;
            cdsReportISREPORT.AsBoolean := True;
            cdsReportIMAGE.AsInteger := 1;
            cdsReport.Post;
          end;

        end;
      end;
    Finally
      cdsReport.EnableControls;
      tlReport.FullExpand;
      tvReport.FullExpand;
      FreeAndNil(slReport);
    End;
  end;
end;

procedure TfrmReportList.tlReportDblClick(Sender: TObject);
var
  t: Cardinal;
  tf: Double;
begin
  inherited;
  if cdsReportISREPORT.AsBoolean then
  begin
    dmGlobal.ReportClient.LoadFromFile(cdsReportCODE.AsString);
    t := GetTickCount;
    if dmGlobal.ReportClient.PrepareReport then
    begin
      tf := (GetTickCount - t) / 1000;
      dmGlobal.Log(ltDebug, dmGlobal.ReportClient.ReportName +
        ' Time=' + FloatToStr(tf) + ' Size=' + IntToStr(dmGlobal.ReportClient.Client.StreamSize));
      dmGlobal.ReportClient.ShowPreparedReport;
    end;
  end;
end;

procedure TfrmReportList.tvReportDblClick(Sender: TObject);
var
//  t: Cardinal;
//  tf: Double;
  oForm: TfrmReport;
begin
  inherited;
//  if cdsReportISREPORT.AsBoolean then
//  begin
//    dmGlobal.ReportClient.LoadFromFile(cdsReportCODE.AsString);
//    t := GetTickCount;
//    if dmGlobal.ReportClient.PrepareReport then
//    begin
//      tf := (GetTickCount - t) / 1000;
//      dmGlobal.Log(ltDebug, dmGlobal.ReportClient.ReportName +
//        ' Time=' + FloatToStr(tf) + ' Size=' + IntToStr(dmGlobal.ReportClient.Client.StreamSize));
//      dmGlobal.ReportClient.ShowPreparedReport;
//    end;
//  end;
  if cdsReportISREPORT.AsBoolean then
  begin
    oForm := TfrmReport.Create(nil);
    Try
      with oForm do
      begin
        BorderStyle := bsSizeable;
        lcParameter.Visible := False;
        spReport.Visible := False;
        Report.ReportName := cdsReportCODE.AsString;
        actReloadData.Execute;
        ShowModal;
      end;
    Finally
      FreeAndNil(oForm);
    End;
  end;
end;

procedure TfrmReportList.tvReportGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex := cdsReportIMAGE.AsInteger;
end;

Initialization
  RegisterClass(TfrmReportList);

end.
