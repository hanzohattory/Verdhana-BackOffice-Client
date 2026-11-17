unit FormBankCompanyList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxImageComboBox;

type
  TfrmBankCompanyList = class(TfrmBrowseData)
    cdsBankCompanyList: TNClientDataset;
    cdsBankCompanyListBANKID: TIntegerField;
    cdsBankCompanyListBNCODE: TStringField;
    cdsBankCompanyListBANKACCOUNTNO: TStringField;
    cdsBankCompanyListBANKACCOUNTBRANCH: TStringField;
    cdsBankCompanyListCCYCODE: TStringField;
    cdsBankCompanyListSTAT: TStringField;
    cdsBankCompanyListAS_RDNBANK: TStringField;
    cdsBankCompanyListAS_PRIVATEBANK: TStringField;
    cdsBankCompanyListAS_PAYMENTBANK: TStringField;
    cdsBankCompanyListCOA: TStringField;
    gvwMasterBANKID: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCOUNTNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCOUNTBRANCH: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterAS_RDNBANK: TcxGridDBBandedColumn;
    gvwMasterAS_PRIVATEBANK: TcxGridDBBandedColumn;
    gvwMasterAS_PAYMENTBANK: TcxGridDBBandedColumn;
    gvwMasterCOA: TcxGridDBBandedColumn;
    cdsBankCompanyListBANKACCOUNTNAME: TStringField;
    cdsBankCompanyListACTIVED_DATE: TDateTimeField;
    cdsBankCompanyListACTIVED_SYSDATE: TDateTimeField;
    cdsBankCompanyListACTIVED_UI: TStringField;
    cdsBankCompanyListCLOSED_DATE: TDateTimeField;
    cdsBankCompanyListCLOSED_SYSDATE: TDateTimeField;
    cdsBankCompanyListCLOSED_UI: TStringField;
    cdsBankCompanyListMODDA: TDateTimeField;
    cdsBankCompanyListMODUI: TStringField;
    gvwMasterBANKACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterACTIVED_DATE: TcxGridDBBandedColumn;
    gvwMasterACTIVED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterACTIVED_UI: TcxGridDBBandedColumn;
    gvwMasterCLOSED_DATE: TcxGridDBBandedColumn;
    gvwMasterCLOSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCLOSED_UI: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    actActivateBankCompany: TNAction;
    actClosedBankCompany: TNAction;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankCompanyList: TfrmBankCompanyList;

implementation

{$R *.dfm}

uses DataGlobal, FormBankCompany;

procedure TfrmBankCompanyList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBankCompany;
end;

procedure TfrmBankCompanyList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBankCompanyListBANKID;

  cdsBankCompanyList.Close;
  cdsBankCompanyList.Open;
end;

end.
