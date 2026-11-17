unit FormHolidayList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, dxLayoutControl, DateUtils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmHolidayList = class(TfrmBrowseData)
    cdsHolidayList: TNClientDataset;
    cdsHolidayListHOLID: TLargeintField;
    cdsHolidayListHOLDATE: TDateField;
    cdsHolidayListHOLDESCRIPTION: TStringField;
    cdsHolidayListMODDA: TDateTimeField;
    cdsHolidayListMODUI: TStringField;
    cdsHolidayListAPPDA: TDateTimeField;
    cdsHolidayListAPPUI: TStringField;
    cdsHolidayListUNDER4Y: TIntegerField;
    cdsHolidayListUNDER4YDA: TDateTimeField;
    cdsHolidayListNOTES4Y: TStringField;
    cdsHolidayListISDEL: TIntegerField;
    cdsHolidayListID: TLargeintField;
    gvwMasterHOLID: TcxGridDBBandedColumn;
    gvwMasterHOLDATE: TcxGridDBBandedColumn;
    gvwMasterHOLDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edYear: TcxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actViewData: TNAction;
    cbMarket: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsHolidayListMARKETCODE: TStringField;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHolidayList: TfrmHolidayList;

implementation

{$R *.dfm}

uses DataGlobal, FormHoliday;

procedure TfrmHolidayList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsHolidayList.Close;
  cdsHolidayList.Params[0].AsWord := edYear.EditValue;
  cdsHolidayList.Params[1].AsString := cbMarket.EditValue;
  cdsHolidayList.Open;
end;

procedure TfrmHolidayList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmHoliday;
end;

procedure TfrmHolidayList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsHolidayListHOLID;
  edYear.EditValue := YearOf(dmGlobal.RemoteServer.GetTransDate);
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;
  end;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmHolidayList);

end.
