unit FormKSEIRDNUpload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ActnList, NDatasetAction, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxButtonEdit,
  dxLayoutControl, NActionPermission, DBXJSON, Data.DBXJSONCommon,
  XLSSheetData5, XLSReadWriteII5, System.JSON, System.Actions, ComObj, StrUtils,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmKSEIRDNUpload = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    txtKSEIRDNFile: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    aclBankRecon: TActionList;
    actViewData: TNAction;
    actUploadData: TNAction;
    cxGrid1: TcxGrid;
    gvwKSEIRDN: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dsKSEIRDNUpload: TDataSource;
    cdsKSEIRDNUpload: TClientDataSet;
    cdsKSEIRDNUploadSID: TStringField;
    cdsKSEIRDNUploadNAME: TStringField;
    cdsKSEIRDNUploadSUBREK01: TStringField;
    cdsKSEIRDNUploadSUBREK04: TStringField;
    cdsKSEIRDNUploadRDN: TStringField;
    cdsKSEIRDNUploadBANK: TStringField;
    cdsKSEIRDNUploadMODDA: TDateTimeField;
    cdsKSEIRDNUploadMODUI: TStringField;
    cdsKSEIRDNUploadAPPDA: TDateTimeField;
    cdsKSEIRDNUploadAPPUI: TStringField;
    cdsKSEIRDNUploadUNDER4Y: TIntegerField;
    cdsKSEIRDNUploadUNDER4YDA: TDateTimeField;
    cdsKSEIRDNUploadNOTES4Y: TStringField;
    cdsKSEIRDNUploadISDEL: TIntegerField;
    cdsKSEIRDNUploadID: TLargeintField;
    gvwKSEIRDNUPLOADDATE: TcxGridDBBandedColumn;
    gvwKSEIRDNSID: TcxGridDBBandedColumn;
    gvwKSEIRDNNAME: TcxGridDBBandedColumn;
    gvwKSEIRDNSUBREK01: TcxGridDBBandedColumn;
    gvwKSEIRDNSUBREK04: TcxGridDBBandedColumn;
    gvwKSEIRDNRDN: TcxGridDBBandedColumn;
    gvwKSEIRDNBANK: TcxGridDBBandedColumn;
    gvwKSEIRDNMODDA: TcxGridDBBandedColumn;
    gvwKSEIRDNMODUI: TcxGridDBBandedColumn;
    gvwKSEIRDNAPPDA: TcxGridDBBandedColumn;
    gvwKSEIRDNAPPUI: TcxGridDBBandedColumn;
    gvwKSEIRDNUNDER4Y: TcxGridDBBandedColumn;
    gvwKSEIRDNUNDER4YDA: TcxGridDBBandedColumn;
    gvwKSEIRDNNOTES4Y: TcxGridDBBandedColumn;
    gvwKSEIRDNISDEL: TcxGridDBBandedColumn;
    gvwKSEIRDNID: TcxGridDBBandedColumn;
    cdsKSEIRDNUploadINTSUBREKID: TStringField;
    ImportFilesDialog: TOpenDialog;
    procedure actUploadDataExecute(Sender: TObject);
    procedure txtKSEIRDNFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKSEIRDNUpload: TfrmKSEIRDNUpload;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmKSEIRDNUpload.actUploadDataExecute(Sender: TObject);
var
  iRows, i: Integer;
  oExcel, oSheet: OleVariant;
  oProgress: TfrmProgressBar;
  sKSEINo: string;
begin
  inherited;
  if FileExists(txtKSEIRDNFile.Text) then
  begin
    if MessageDlg('Are you sure to upload KSEI RDN Progress File?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      try
        oProgress := TfrmProgressBar.Create(nil);
        oProgress.Show;
        oProgress.ChangeBarCaption('Uploading KSEI RDN');

        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := False;
        oExcel.WorkBooks.Open(txtKSEIRDNFile.EditValue);

        oSheet := oExcel.WorkBooks[1].WorkSheets[1];
        iRows  := oSheet.UsedRange.Rows.Count - 6;
        for i := 7 to iRows do
        begin
          sKSEINo := Copy(RightStr(oSheet.Cells[2].Value, 5), 1, 3);

          oProgress.ChangeBar(trunc(i / iRows * 100), '');
//          Copy(RightStr(Edit1.Text, 5), 1, 3)
        end;
      finally
        oExcel.Quit;

        oExcel := Unassigned;
        oSheet := Unassigned;

        FreeAndNil(oProgress);
      end;

//      oFileStream := TFileStream.Create(txtKSEIRDNFile.Text, fmOpenRead);
//      oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
//      Screen.Cursor := crSQLWait;
//      Try
//        if dmGlobal.RemoteServer.UploadRDNFile(oFileArray, ExtractFileName(txtKSEIRDNFile.Text)) then
//        begin
//          actViewData.Execute;
//          Screen.Cursor := crDefault;
//          ShowMessage('Finished upload KSEI RDN File');
//        end;
//      Finally
//        Screen.Cursor := crDefault;
////        FreeAndNil(oFileArray);
//        FreeAndNil(oFileStream);
//      End;
    end;
  end;
end;

procedure TfrmKSEIRDNUpload.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsKSEIRDNUpload.Close;
  cdsKSEIRDNUpload.Open;
end;

procedure TfrmKSEIRDNUpload.FormCreate(Sender: TObject);
begin
  inherited;
  actViewData.Execute;
end;

procedure TfrmKSEIRDNUpload.txtKSEIRDNFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    txtKSEIRDNFile.Text := sFileName;
end;

Initialization
  RegisterClass(TfrmKSEIRDNUpload);

end.
