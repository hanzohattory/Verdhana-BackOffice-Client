unit FormUploadDataFeedback;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxPropertiesStore, dxBar, cxClasses, dxPSCore, dxPScxCommon,
  NDatasetContainer, NDatasetAction, Vcl.ActnList, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Datasnap.DBClient, NClientDataset,
  Vcl.ExtCtrls, cxContainer, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutControl, DBXJSON, DBXJSONCommon,
  cxDropDownEdit, cxImageComboBox, System.JSON, System.Actions,
  System.ImageList,
  ComObj;

type
  TfrmUploadDataFeedback = class(TfrmBrowseSingle)
    cdsFeedbackBank: TNClientDataset;
    cdsFeedbackBankSIDNO: TStringField;
    cdsFeedbackBankACCRECNO: TStringField;
    cdsFeedbackBankACCNAME: TStringField;
    cdsFeedbackBankINVESTNAME: TStringField;
    cdsFeedbackBankACCNO: TStringField;
    cdsFeedbackBankBANKACCNO: TStringField;
    cdsFeedbackBankCUSTODYBANK: TStringField;
    cdsFeedbackBankACTION_DATE: TStringField;
    cdsFeedbackBankPARID: TStringField;
    gvwBrowseSIDNO: TcxGridDBBandedColumn;
    gvwBrowseACCRECNO: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseINVESTNAME: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseBANKACCNO: TcxGridDBBandedColumn;
    gvwBrowseCUSTODYBANK: TcxGridDBBandedColumn;
    gvwBrowseACTION_DATE: TcxGridDBBandedColumn;
    gvwBrowsePARID: TcxGridDBBandedColumn;
    odFile: TOpenDialog;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtFileName: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cmbBankName: TcxImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUploadDataFeedback: TfrmUploadDataFeedback;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmUploadDataFeedback.cxButtonEdit1PropertiesButtonClick
  (Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iRows, i: Integer;
  bBol: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if odFile.Execute(Application.Handle) then
    sFileName := odFile.FileName;

  if sFileName = '' then
  begin
    MessageDlg('Can not upload empty file...', mtError, [mbOk], 0);
    exit;
  end;

  txtFileName.EditValue := sFileName;
  Screen.Cursor         := crSQLWait;
  try
    cdsFeedbackBank.DisableControls;
    oProgress := TfrmProgressBar.Create(Nil);

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Open(sFileName);

    oSheet := oExcel.WorkBooks[1].WorkSheet[1];
    iRows  := oSheet.UsedRange.Rows.Count;
    if dmGlobal.RemoteServer.RunningFreeSQLScript
      ('Delete from main.B_FEEDBANK_BANK') then
    begin
      cdsFeedbackBank.Append;

      if LowerCase(cmbBankName.EditValue) = 'mandiri' then
      begin
        for i := 4 to iRows do
        begin
          oProgress.ChangeBar(trunc(i / iRows * 100), 'Uploading Data Feedback');

          cdsFeedbackBankSIDNO.AsString       := oSheet.Cells[i, 4].Value;
          cdsFeedbackBankBANKACCNO.AsString   := oSheet.Cells[i, 6].Value;
          cdsFeedbackBankACCNAME.AsString     := oSheet.Cells[i, 2].Value;
          cdsFeedbackBankINVESTNAME.AsString  := oSheet.Cells[i, 3].Value;
          cdsFeedbackBankACCNO.AsString       := oSheet.Cells[i, 5].Value;
          cdsFeedbackBankCUSTODYBANK.AsString := oSheet.Cells[i, 7].Value;
          cdsFeedbackBankACTION_DATE.AsString := oSheet.Cells[i, 8].Value;
          cdsFeedbackBankPARID.AsString       := oSheet.Cells[i, 1].Value;
        end
      end
      else if LowerCase(cmbBankName.EditValue) = 'niaga' then
      begin
        for i := 1 to iRows do
        begin
          oProgress.ChangeBar(trunc(i / iRows * 100), 'Uploading Data Feedback');

          cdsFeedbackBankSIDNO.AsString       := oSheet.Cells[i, 3].Value;
          cdsFeedbackBankBANKACCNO.AsString   := oSheet.Cells[i, 5].Value;
          cdsFeedbackBankINVESTNAME.AsString  := oSheet.Cells[i, 2].Value;
          cdsFeedbackBankACCNO.AsString       := oSheet.Cells[i, 4].Value;
          cdsFeedbackBankACTION_DATE.AsString := oSheet.Cells[i, 6].Value;
          cdsFeedbackBankPARID.AsString       := oSheet.Cells[i, 1].Value;
        end;
      end;

      bBol := dmGlobal.RemoteServer.UpdateAccountBank
        (cdsFeedbackBankINVESTNAME.AsString, cdsFeedbackBankACCNO.AsString,
        cdsFeedbackBankSIDNO.AsString);

      cdsFeedbackBank.Post;
      cdsFeedbackBank.ApplyUpdates(-1);
    end;
  finally
    oExcel.Quit;

    oExcel := Unassigned;
    oSheet := Unassigned;

    cdsFeedbackBank.Close;
    cdsFeedbackBank.Open;

    FreeAndNil(oProgress);
    cdsFeedbackBank.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmUploadDataFeedback.FormCreate(Sender: TObject);
begin
  inherited;
  cdsFeedbackBank.Close;
  cdsFeedbackBank.Open;
end;

Initialization

RegisterClass(TfrmUploadDataFeedback);

end.
