unit FormCustomerByStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCurrencyEdit, cxButtonEdit, ComObj,
  XLSSheetData5, XLSReadWriteII5, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCustomerByStock = class(TfrmEditor)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem3: TdxLayoutItem;
    cmbSettleDate: TcxDBDateEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    cxGrid1: TcxGrid;
    gvwStock: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsCustomer: TNClientDataset;
    cdsCustomerACCID: TLargeintField;
    cdsCustomerACCCODE: TStringField;
    cdsCustomerACCNAME: TStringField;
    cdsCustomerKSEIACC_TMP: TStringField;
    cdsStock: TNClientDataset;
    cdsStockSTOCKID: TLargeintField;
    cdsStockSTOCKCODE: TStringField;
    cdsStockSTOCKNAME: TStringField;
    cdsStockWdrPos: TNClientDataset;
    cdsStockWdrPosStockID: TIntegerField;
    cdsStockWdrPosAccID: TLargeintField;
    cdsStockWdrPosAcqDate: TDateField;
    cdsStockWdrPosAvgPrice: TFloatField;
    cdsStockWdrPosStockOnHand: TFloatField;
    cdsStockWdrPosStockBalance: TFloatField;
    cdsStockWdrPosStockType: TStringField;
    cdsStockWdrPosSWQTY: TFloatField;
    cdsStockWdrPosBondsTrans: TFloatField;
    cdsStockWdrPosAV_QTY: TFloatField;
    dsCustomer: TDataSource;
    cdsStockENTRYDATE: TDateField;
    cdsStockTRANSDATE: TDateField;
    cdsStockSETTLEDATE: TDateField;
    cdsCustomerSTOCK_BAL: TIntegerField;
    cdsCustomerAVG_PRICE: TFloatField;
    cdsCustomerQTY: TIntegerField;
    cdsCustomerPRICE: TFloatField;
    gvwStockACCID: TcxGridDBBandedColumn;
    gvwStockACCCODE: TcxGridDBBandedColumn;
    gvwStockACCNAME: TcxGridDBBandedColumn;
    gvwStockKSEIACC_TMP: TcxGridDBBandedColumn;
    gvwStockSTOCK_BAL: TcxGridDBBandedColumn;
    gvwStockAVG_PRICE: TcxGridDBBandedColumn;
    gvwStockQTY: TcxGridDBBandedColumn;
    gvwStockPRICE: TcxGridDBBandedColumn;
    cdsCustomerCBCODE: TStringField;
    gvwStockCBCODE: TcxGridDBBandedColumn;
    OpenDialog: TOpenDialog;
    PopupMenu1: TPopupMenu;
    UploadFromFile1: TMenuItem;
    procedure cdsStockSTOCKIDChange(Sender: TField);
    procedure gvwStockACCCODEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCustomerNewRecord(DataSet: TDataSet);
    procedure cdsStockSETTLEDATEChange(Sender: TField);
    procedure UploadFromFile1Click(Sender: TObject);
  private
    { Private declarations }
    FLastPrice: Double;
    FStockType: string;
  public
    { Public declarations }
    property StockType: string read FStockType write FStockType;
  end;

var
  frmCustomerByStock: TfrmCustomerByStock;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount, FormProgressBar;

procedure TfrmCustomerByStock.cdsCustomerNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCustomerPRICE.AsFloat := FLastPrice;
end;

procedure TfrmCustomerByStock.cdsStockSETTLEDATEChange(Sender: TField);
begin
  inherited;
  if cdsStockTRANSDATE.AsDateTime > cdsStockSETTLEDATE.AsDateTime then
  begin
    MessageDlg('Settle date can not bigger than trans date', mtError, [mbOK], 0);

    cmbSettleDate.SetFocus;
  end;
end;

procedure TfrmCustomerByStock.cdsStockSTOCKIDChange(Sender: TField);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsStockSTOCKID.AsInteger, []) then
  begin
    cdsStockSTOCKCODE.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllLOCALCODE.AsString;
    cdsStockSTOCKNAME.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllSHORTNAME.AsString;
    FLastPrice                 := dmGlobal.IntDataLookup.cdsLuInstrumentAllLASTCLSPRICE.AsFloat;
  end;
end;

procedure TfrmCustomerByStock.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;

  cdsCustomer.Close;
  cdsCustomer.CreateDataSet;

  cdsStock.Close;
  cdsStock.CreateDataSet;
end;

procedure TfrmCustomerByStock.FormShow(Sender: TObject);
begin
  inherited;
  cdsStock.Append;
  cdsStockTRANSDATE.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
  cdsStockSETTLEDATE.AsDateTime := cdsStockTRANSDATE.AsDateTime;
  cdsStockENTRYDATE.AsDateTime  := cdsStockTRANSDATE.AsDateTime;

  if StockType = 'SW' then
    gvwStock.PopupMenu := nil
  else
    gvwStock.PopupMenu := PopupMenu1;

end;

procedure TfrmCustomerByStock.gvwStockACCCODEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(cdsCustomerACCID.AsInteger, True) = mrOK then
    begin
      if not (dsSubject.DataSet.State in dsEditModes) then
        dsSubject.DataSet.Edit;

      cdsCustomerACCID.AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
      cdsCustomerACCCODE.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
      cdsCustomerACCNAME.AsString := cdsLuAccountMultiFilterACCNAME.AsString;

      cdsStockWdrPos.Close;
      cdsStockWdrPos.Params[0].AsDate    := cdsStockTRANSDATE.AsDateTime;
      cdsStockWdrPos.Params[1].AsInteger := cdsCustomerACCID.AsInteger;
      cdsStockWdrPos.Params[2].AsInteger := cdsStockSTOCKID.AsInteger;
      cdsStockWdrPos.Open;

      cdsCustomerAVG_PRICE.AsFloat := cdsStockWdrPosAvgPrice.AsFloat;
      cdsCustomerSTOCK_BAL.AsFloat := cdsStockWdrPosStockBalance.AsFloat;
    end;
  end;
end;

procedure TfrmCustomerByStock.UploadFromFile1Click(Sender: TObject);
var
  sFileName, sStockCode: string;
  i, iRow, iRec: Integer;
  oExcel, oSheet: OleVariant;
  oProgress: TfrmProgressBar;
  fClosePrice: double;
begin
  inherited;
  sFileName := '';

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if sFileName = '' then
    Abort;

  if MessageDlg('Upload multiple customer stock by stock ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      cdsCustomer.DisableControls;

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRow   := oSheet.Usedrange.Rows.Count;

      sStockCode := oSheet.Cells[1, 2].Value;
      if cdsStockSTOCKCODE.AsString <> sStockCode then
      begin
        MessageDlg('Invalid stock code, please check file', mtError, [mbOk], 0);
        Abort;
      end;

      oProgress := TfrmProgressBar.Create(Nil);
      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading Stock Deposit...');

      for i := 4 to iRow -1 do
      begin
        oProgress.ChangeBar(trunc((i / (iRow - 1)) * 100), 'Uploading Multiple Customer Stock By Stock');

        with dmGlobal.IntDataLookup do
        begin
          if cdsLuAccount.Locate('ACCCODE', oSheet.Cells[i, 1].Value, []) then
          begin
            cdsCustomer.Append;
            cdsCustomerACCID.AsInteger   := cdsLuAccountACCID.AsInteger;
            cdsCustomerACCCODE.AsString  := cdsLuAccountACCCODE.AsString;
            cdsCustomerCBCODE.AsString   := oSheet.Cells[i, 3].Value;
            cdsCustomerQTY.AsFloat       := oSheet.Cells[i, 4].Value;
            cdsCustomerPRICE.AsFloat     := oSheet.Cells[2, 2].Value;
            cdsCustomerSTOCK_BAL.AsFloat := 0;
            cdsCustomerAVG_PRICE.AsFloat := 0;
            cdsCustomer.Post;
          end;
        end;
      end;

    finally
      cdsCustomer.EnableControls;
      FreeAndNil(oProgress);

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;

  end;
end;

end.
