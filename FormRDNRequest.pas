unit FormRDNRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  NActionPermission, Vcl.Menus, cxGridBandedTableView, cxGridDBBandedTableView,
  Vcl.ActnList, NDatasetAction, cxDBLookupComboBox, cxImageComboBox, cxCalendar,
  NReportRPC, frxClass, frxDBSet, frxExportPDF, NReportClient, cxCheckBox,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxButtonEdit, dxLayoutControl, ComObj, dxDateRanges, dxScrollbarAnnotations,
  frxExportBaseDialog;

type
  TfrmRDNRequest = class(TfrmBasic)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ActionList1: TActionList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    rcRDN_: TNReportContainer;
    rptPDF: TfrxReport;
    actViewReport: TNAction;
    frxPDFExport1: TfrxPDFExport;
    ViewReportCIMB1: TMenuItem;
    N1: TMenuItem;
    GenerateRDN: TNClientReportContainer;
    actRefresh: TNAction;
    Refresh1: TMenuItem;
    dxLayoutControl1: TdxLayoutControl;
    edRDNFileName: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    cdsRDNRequest: TNClientDataset;
    cdsRDNRequestOAID: TIntegerField;
    cdsRDNRequestOACODE: TStringField;
    cdsRDNRequestCUST_TYPE: TIntegerField;
    cdsRDNRequestENTNAME: TStringField;
    cdsRDNRequestENTDESC: TStringField;
    cdsRDNRequestCREATEDATE: TDateTimeField;
    cdsRDNRequestINVESTORCAT: TStringField;
    cdsRDNRequestENTACCTYPE: TStringField;
    cdsRDNRequestPRDCODE: TStringField;
    cdsRDNRequestACCID: TIntegerField;
    cdsRDNRequestEXISTING_CLIENT: TStringField;
    cdsRDNRequestPARENT_ACCID: TIntegerField;
    cdsRDNRequestISWEB: TStringField;
    cdsRDNRequestSIDNO: TStringField;
    cdsRDNRequestKSEI_001: TStringField;
    cdsRDNRequestKSEI_004: TStringField;
    cdsRDNRequestBANKCODE: TStringField;
    cdsRDNRequestBNNAME: TStringField;
    cdsRDNRequestBANKACCNO: TStringField;
    cdsRDNRequestBANKACCNAME: TStringField;
    cdsRDNRequestBANKBRANCH: TStringField;
    dsRDNRequest: TDataSource;
    cxGrid1DBBandedTableView1OAID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OACODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CUST_TYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ENTNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ENTDESC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CREATEDATE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1INVESTORCAT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ENTACCTYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRDCODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ACCID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EXISTING_CLIENT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PARENT_ACCID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ISWEB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SIDNO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KSEI_001: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KSEI_004: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BANKCODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BNNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BANKACCNO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BANKACCNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BANKBRANCH: TcxGridDBBandedColumn;
    actUploadRDNFile: TNAction;
    odRDNFile: TOpenDialog;
    rcRDN: TNClientReportContainer;
    procedure FormCreate(Sender: TObject);
    procedure actViewReportExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actUploadRDNFileExecute(Sender: TObject);
    procedure edRDNFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRDNRequest: TfrmRDNRequest;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmRDNRequest.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsRDNRequest.Close;
  cdsRDNRequest.Open;
end;

procedure TfrmRDNRequest.actUploadRDNFileExecute(Sender: TObject);
var
  sFileName: string;
  Cols: integer;
  Rows: integer;
  sKSEIClientNo,
  sBankCode,
  sBankAccNo,
  sBankAccName,
  sBankBranch: string;
  oExcel, oSheet: Variant;
  i: Integer;
begin
  inherited;

  if cdsRDNRequest.RecordCount = 0 then
  begin
    MessageDlg('There is no data can be updated', mtInformation, [mbOk], 0);
    Abort;
  end;

  sFileName := edRDNFileName.Text;
  if sFileName <> '' then
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      Cols   := oSheet.Usedrange.Columns.Count;
      Rows   := oSheet.Usedrange.Rows.Count;

      i := 6;
      repeat
        Inc(i);
        sKSEIClientNo := oExcel.Cells.Item[i, 2].value;
        sBankCode     := oExcel.Cells.Item[i, 6].value;
        sBankAccNo    := oExcel.Cells.Item[i, 5].value;
        sBankAccName  := oExcel.Cells.Item[i, 3].value;
        sBankBranch   := '';

        dmGlobal.RemoteServer.UpdateRDN(sKSEIClientNo, sBankCode, sBankAccNo, sBankAccName, sBankBranch);
      until (oExcel.cells.item[i, 2].value = '');

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;

      MessageDlg('Upload RDN data has been success', mtInformation, [mbOk], 0);
      cdsRDNRequest.Refresh;
    except

    end;
  end;
end;

procedure TfrmRDNRequest.actViewReportExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  sBankCode: string;
  sReportFile: string;
begin
  inherited;
  oDataSet := dsRDNRequest.DataSet;

//  cdsGenerateRDNReport.Close;
//  cdsGenerateRDNReport.Params[0].AsInteger := oDataSet.FieldByName('CID').AsInteger;
//  cdsGenerateRDNReport.Open;

  sBankCode := oDataSet.FieldByName('BNNAME').AsString;

//  rcRDN.ReportFile := 'Report\OA'+sBankCode+'.fr3';

  rcRDN.ReportName          := 'Reports\Nayaga\Opening Account\'+sBankCode+'.fr3';
  rcRDN.Params[0].AsInteger := oDataSet.FieldByName('ACCID').AsInteger;
  rcRDN.PreviewReport;

//  sReportFile := ExtractFilePath(Application.ExeName) +  rcRDN.ReportFile;
//  if not FileExists(sReportFile) then
//  begin
//    Exit;
//  end;

//  rcRDN.ExecuteReport;
end;

procedure TfrmRDNRequest.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmRDNRequest.edRDNFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if odRDNFile.Execute then
    sFileName := odRDNFile.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    edRDNFileName.Text := sFileName;
end;

procedure TfrmRDNRequest.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBranch.Close;
    cdsLuBranch.Open;

    cdsLuBank.Close;
    cdsLuBank.Open;

    cdsLuBankRDN.Close;
    cdsLuBankRDN.Open;
  end;
end;

procedure TfrmRDNRequest.FormShow(Sender: TObject);
begin
  inherited;
  actRefresh.Execute;
end;

initialization
  RegisterClass(TfrmRDNRequest);

end.
