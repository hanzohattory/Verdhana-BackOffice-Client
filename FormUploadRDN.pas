unit FormUploadRDN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  cxPropertiesStore, cxClasses, NActionPermission, Vcl.Menus, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, System.Win.ComObj, NDatasetAction;

type
  TfrmUploadRDN = class(TfrmBrowseNoEdit)
    cdsRDNRequest: TNClientDataset;
    dsRDNRequest: TDataSource;
    cdsRDNRequestOAID: TIntegerField;
    cdsRDNRequestOACODE: TStringField;
    cdsRDNRequestCUST_TYPE: TIntegerField;
    cdsRDNRequestBRANCHID: TLargeintField;
    cdsRDNRequestSALESID: TLargeintField;
    cdsRDNRequestENTNAME: TStringField;
    cdsRDNRequestENTDESC: TStringField;
    cdsRDNRequestCREATEDATE: TDateTimeField;
    cdsRDNRequestINVESTORCAT: TStringField;
    cdsRDNRequestENTACCTYPE: TStringField;
    cdsRDNRequestAFFIL: TBooleanField;
    cdsRDNRequestASSET_OWNER: TStringField;
    cdsRDNRequestPRDCODE: TStringField;
    cdsRDNRequestACCID: TIntegerField;
    cdsRDNRequestEXISTING_CLIENT: TStringField;
    cdsRDNRequestPARENT_ACCID: TIntegerField;
    cdsRDNRequestDIRECTSID: TStringField;
    cdsRDNRequestISWEB: TStringField;
    cdsRDNRequestSIDNO: TStringField;
    cdsRDNRequestKSEI_001: TStringField;
    cdsRDNRequestKSEI_004: TStringField;
    cdsRDNRequestBANKCODE: TStringField;
    cdsRDNRequestBNNAME: TStringField;
    cdsRDNRequestBANKACCNO: TStringField;
    cdsRDNRequestBANKACCNAME: TStringField;
    cdsRDNRequestBANKBRANCH: TStringField;
    gvwMasterOAID: TcxGridDBBandedColumn;
    gvwMasterOACODE: TcxGridDBBandedColumn;
    gvwMasterCUST_TYPE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTDESC: TcxGridDBBandedColumn;
    gvwMasterCREATEDATE: TcxGridDBBandedColumn;
    gvwMasterINVESTORCAT: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterASSET_OWNER: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterEXISTING_CLIENT: TcxGridDBBandedColumn;
    gvwMasterPARENT_ACCID: TcxGridDBBandedColumn;
    gvwMasterDIRECTSID: TcxGridDBBandedColumn;
    gvwMasterISWEB: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterKSEI_001: TcxGridDBBandedColumn;
    gvwMasterKSEI_004: TcxGridDBBandedColumn;
    gvwMasterBANKCODE: TcxGridDBBandedColumn;
    gvwMasterBNNAME: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBANKBRANCH: TcxGridDBBandedColumn;
    actRefresh: TNAction;
    actUploadRDN: TNAction;
    odFile: TOpenDialog;
    Refresh1: TMenuItem;
    UploadRDN1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actUploadRDNExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUploadRDN: TfrmUploadRDN;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmUploadRDN.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsRDNRequest.Close;
  cdsRDNRequest.Open;
end;

procedure TfrmUploadRDN.actUploadRDNExecute(Sender: TObject);
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

  if odFile.Execute then
    sFileName := odFile.FileName;

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

procedure TfrmUploadRDN.FormShow(Sender: TObject);
begin
  inherited;
  cdsRDNRequest.Close;
  cdsRDNRequest.Open;
end;

end.
