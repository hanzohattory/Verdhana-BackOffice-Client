unit FormStockAging;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, NDatasetAction, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, System.DateUtils, System.Actions;

type
  TfrmStockAging = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclStockAging: TActionList;
    actViewList: TNAction;
    dsStockAging: TDataSource;
    cdsStockAging: TNClientDataset;
    cdsStockAgingACCID: TLargeintField;
    cdsStockAgingACCNO: TStringField;
    cdsStockAgingACCNAME: TStringField;
    cdsStockAgingACCINIT: TStringField;
    cdsStockAgingACCTYPE: TStringField;
    cdsStockAgingINSTRUMENT_ID: TIntegerField;
    cdsStockAgingINSTRUMENT_CODE: TStringField;
    cdsStockAgingMARKETCODE: TStringField;
    cdsStockAgingLOCALCODE: TStringField;
    cdsStockAgingINSTRUMENT_NAME: TStringField;
    cdsStockAgingQTY_ONHAND: TFloatField;
    cdsStockAgingDLVOD: TFloatField;
    cdsStockAgingRCVOD: TFloatField;
    cdsStockAgingDLVT0: TFloatField;
    cdsStockAgingRCVT0: TFloatField;
    cdsStockAgingDLVT1: TFloatField;
    cdsStockAgingRCVT1: TFloatField;
    cdsStockAgingDLVT2: TFloatField;
    cdsStockAgingRCVT2: TFloatField;
    cdsStockAgingDLVT3: TFloatField;
    cdsStockAgingRCVT3: TFloatField;
    cdsStockAgingDLVUptoT3: TFloatField;
    cdsStockAgingRCVUptoT3: TFloatField;
    cdsStockAgingOD: TFloatField;
    cdsStockAgingT0: TFloatField;
    cdsStockAgingT1: TFloatField;
    cdsStockAgingT2: TFloatField;
    cdsStockAgingT3: TFloatField;
    cdsStockAgingUptoT3: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_NAME: TcxGridDBBandedColumn;
    gvwMasterQTY_ONHAND: TcxGridDBBandedColumn;
    gvwMasterDLVOD: TcxGridDBBandedColumn;
    gvwMasterRCVOD: TcxGridDBBandedColumn;
    gvwMasterDLVT0: TcxGridDBBandedColumn;
    gvwMasterRCVT0: TcxGridDBBandedColumn;
    gvwMasterDLVT1: TcxGridDBBandedColumn;
    gvwMasterRCVT1: TcxGridDBBandedColumn;
    gvwMasterDLVT2: TcxGridDBBandedColumn;
    gvwMasterRCVT2: TcxGridDBBandedColumn;
    gvwMasterDLVT3: TcxGridDBBandedColumn;
    gvwMasterRCVT3: TcxGridDBBandedColumn;
    gvwMasterDLVUptoT3: TcxGridDBBandedColumn;
    gvwMasterRCVUptoT3: TcxGridDBBandedColumn;
    gvwMasterOD: TcxGridDBBandedColumn;
    gvwMasterT0: TcxGridDBBandedColumn;
    gvwMasterT1: TcxGridDBBandedColumn;
    gvwMasterT2: TcxGridDBBandedColumn;
    gvwMasterT3: TcxGridDBBandedColumn;
    gvwMasterUptoT3: TcxGridDBBandedColumn;
    actSaveGridExcel: TNAction;
    SaveDlg: TSaveDialog;
    popMaster: TPopupMenu;
    SaveGridtoExcel1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actViewListExecute(Sender: TObject);
    procedure cdsStockAgingCalcFields(DataSet: TDataSet);
    procedure actSaveGridExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockAging: TfrmStockAging;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink;

procedure TfrmStockAging.actSaveGridExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmStockAging.actViewListExecute(Sender: TObject);
var
  dtT0, dtT1, dtT2, dtT3: TDate;
begin
  inherited;
  dtT0 := DateOf(dtTransDate.Date);
  dtT1 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), 1);
  dtT2 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), 2);
  dtT3 := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtT0), 3);

  cdsStockAging.Close;
  cdsStockAging.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsStockAging.Open;

  gvwMaster.Bands[1].Caption := '< T0 ' + FormatDateTime('(< dd MMM yyyy)', dtT0);
  gvwMaster.Bands[2].Caption := 'T0 ' + FormatDateTime('(dd MMM yyyy)', dtT0);
  gvwMaster.Bands[3].Caption := 'T1 ' + FormatDateTime('(dd MMM yyyy)', dtT1);
  gvwMaster.Bands[4].Caption := 'T2 ' + FormatDateTime('(dd MMM yyyy)', dtT2);
  gvwMaster.Bands[5].Caption := 'T3 ' + FormatDateTime('(dd MMM yyyy)', dtT3);
  gvwMaster.Bands[6].Caption := '> T3 ' + FormatDateTime('(> dd MMM yyyy)', dtT3);
end;

procedure TfrmStockAging.cdsStockAgingCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsStockAgingOD.AsFloat := cdsStockAgingQTY_ONHAND.AsFloat + cdsStockAgingDLVOD.AsFloat - cdsStockAgingRCVOD.AsFloat;
  cdsStockAgingT0.AsFloat := cdsStockAgingRCVT0.AsFloat - cdsStockAgingDLVT0.AsFloat;
  cdsStockAgingT1.AsFloat := cdsStockAgingRCVT1.AsFloat - cdsStockAgingDLVT1.AsFloat;
  cdsStockAgingT2.AsFloat := cdsStockAgingRCVT2.AsFloat - cdsStockAgingDLVT2.AsFloat;
  cdsStockAgingT3.AsFloat := cdsStockAgingRCVT3.AsFloat - cdsStockAgingDLVT3.AsFloat;
  cdsStockAgingUptoT3.AsFloat := cdsStockAgingRCVUptoT3.AsFloat - cdsStockAgingDLVUptoT3.AsFloat;
//  cdsStockAgingT0.AsFloat := cdsStockAgingOD.AsFloat + cdsStockAgingDLVT0.AsFloat - cdsStockAgingRCVT0.AsFloat;
//  cdsStockAgingT1.AsFloat := cdsStockAgingT0.AsFloat + cdsStockAgingDLVT1.AsFloat - cdsStockAgingRCVT1.AsFloat;
//  cdsStockAgingT2.AsFloat := cdsStockAgingT1.AsFloat + cdsStockAgingDLVT2.AsFloat - cdsStockAgingRCVT2.AsFloat;
//  cdsStockAgingT3.AsFloat := cdsStockAgingT2.AsFloat + cdsStockAgingDLVT3.AsFloat - cdsStockAgingRCVT3.AsFloat;
//  cdsStockAgingUptoT3.AsFloat := cdsStockAgingT3.AsFloat + cdsStockAgingDLVUptoT3.AsFloat - cdsStockAgingRCVUptoT3.AsFloat;
end;

procedure TfrmStockAging.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
  actViewList.Execute;
end;

Initialization
  RegisterClass(TfrmStockAging);

end.
