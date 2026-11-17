unit FormRequestKSEI;

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
  NClientDataset, NDatasetAction, System.Win.ComObj;

type
  TfrmRequestKSEI = class(TfrmBrowseNoEdit)
    cdsRequestKSEIList: TNClientDataset;
    cdsRequestKSEIListOAID: TIntegerField;
    cdsRequestKSEIListOACODE: TStringField;
    cdsRequestKSEIListCUST_TYPE: TIntegerField;
    cdsRequestKSEIListBRANCHID: TLargeintField;
    cdsRequestKSEIListSALESID: TLargeintField;
    cdsRequestKSEIListENTNAME: TStringField;
    cdsRequestKSEIListENTDESC: TStringField;
    cdsRequestKSEIListCREATEDATE: TDateTimeField;
    cdsRequestKSEIListINVESTORCAT: TStringField;
    cdsRequestKSEIListENTACCTYPE: TStringField;
    cdsRequestKSEIListAFFIL: TBooleanField;
    cdsRequestKSEIListASSET_OWNER: TStringField;
    cdsRequestKSEIListPRDCODE: TStringField;
    cdsRequestKSEIListACCID: TIntegerField;
    cdsRequestKSEIListEXISTING_CLIENT: TStringField;
    cdsRequestKSEIListPARENT_ACCID: TIntegerField;
    cdsRequestKSEIListDIRECTSID: TStringField;
    cdsRequestKSEIListKSEI_CLIENT_CODE: TStringField;
    cdsRequestKSEIListREQUEST_SUBREK: TStringField;
    cdsRequestKSEIListISWEB: TStringField;
    dsBrowse: TDataSource;
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
    gvwMasterKSEI_CLIENT_CODE: TcxGridDBBandedColumn;
    gvwMasterREQUEST_SUBREK: TcxGridDBBandedColumn;
    gvwMasterISWEB: TcxGridDBBandedColumn;
    actUploadFromKSEI: TNAction;
    actRefresh: TNAction;
    odFile: TOpenDialog;
    UploadFromKSEI1: TMenuItem;
    Refresh1: TMenuItem;
    cdsRequestKSEIListSIDNO: TStringField;
    cdsRequestKSEIListKSEI_001: TStringField;
    cdsRequestKSEIListKSEI_004: TStringField;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterKSEI_001: TcxGridDBBandedColumn;
    gvwMasterKSEI_004: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actUploadFromKSEIExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequestKSEI: TfrmRequestKSEI;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmRequestKSEI.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsRequestKSEIList.Close;
  cdsRequestKSEIList.Open;
end;

procedure TfrmRequestKSEI.actUploadFromKSEIExecute(Sender: TObject);
var
  sFileName: string;
  Cols: integer;
  Rows: integer;
  sKSEIClientNo, sSIDNo: string;
  oExcel, oSheet: Variant;
  i: Integer;
begin
  inherited;

  if cdsRequestKSEIList.RecordCount = 0 then
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

      i := 0;
      repeat
        Inc(i);

        sKSEIClientNo := oExcel.Cells.Item[i, 3].value;
        sSIDNo        := oExcel.Cells.Item[i, 13].value;

        dmGlobal.RemoteServer.UpdateKSEONo(sSIDNo, sKSEIClientNo);
      until (oExcel.cells.item[i, 1].value = '');

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;

      MessageDlg('Upload from KSEI data has been success', mtInformation, [mbOk], 0);
      cdsRequestKSEIList.Refresh;
    except

    end;

  end;
end;

procedure TfrmRequestKSEI.FormCreate(Sender: TObject);
begin
  inherited;
  cdsRequestKSEIList.Close;
  cdsRequestKSEIList.Open;
end;

end.
