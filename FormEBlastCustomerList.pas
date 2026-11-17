unit FormEBlastCustomerList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxImageComboBox;

type
  TfrmEBlastCustomerList = class(TfrmBrowseData)
    cdsEBlastList: TNClientDataset;
    cdsEBlastListEBLAST_ID: TLargeintField;
    cdsEBlastListEMAILSUBJECT: TStringField;
    cdsEBlastListEMAILMESSAGE: TMemoField;
    cdsEBlastListEMAIL_OBJECT_FILENAME: TStringField;
    cdsEBlastListEMAIL_OBJECT_FILE: TBlobField;
    cdsEBlastListEMAILTYPE: TStringField;
    gvwMasterEBLAST_ID: TcxGridDBBandedColumn;
    gvwMasterEMAILTYPE: TcxGridDBBandedColumn;
    gvwMasterEMAILSUBJECT: TcxGridDBBandedColumn;
    gvwMasterEMAILMESSAGE: TcxGridDBBandedColumn;
    gvwMasterEMAIL_OBJECT_FILENAME: TcxGridDBBandedColumn;
    gvwMasterEMAIL_OBJECT_FILE: TcxGridDBBandedColumn;
    cdsEBCustomers: TNClientDataset;
    dsEBCustomers: TDataSource;
    cdsEBCustomersEBACCID: TLargeintField;
    cdsEBCustomersEBLAST_ID: TLargeintField;
    cdsEBCustomersACCID: TLargeintField;
    cdsEBCustomersMODDA: TDateField;
    cdsEBCustomersMODUI: TStringField;
    cdsEBCustomersUPPDA: TDateField;
    cdsEBCustomersUPPUI: TStringField;
    cdsEBCustomersID: TLargeintField;
    cdsEBCustomersACCCODE: TStringField;
    cdsEBCustomersACCNAME: TStringField;
    cdsEBCustomersACCTYPE: TStringField;
    grdMasterLevel2: TcxGridLevel;
    gvwEBCustomers: TcxGridDBBandedTableView;
    gvwEBCustomersEBACCID: TcxGridDBBandedColumn;
    gvwEBCustomersEBLAST_ID: TcxGridDBBandedColumn;
    gvwEBCustomersACCID: TcxGridDBBandedColumn;
    gvwEBCustomersMODDA: TcxGridDBBandedColumn;
    gvwEBCustomersMODUI: TcxGridDBBandedColumn;
    gvwEBCustomersUPPDA: TcxGridDBBandedColumn;
    gvwEBCustomersUPPUI: TcxGridDBBandedColumn;
    gvwEBCustomersID: TcxGridDBBandedColumn;
    gvwEBCustomersACCCODE: TcxGridDBBandedColumn;
    gvwEBCustomersACCNAME: TcxGridDBBandedColumn;
    gvwEBCustomersACCTYPE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEBlastCustomerList: TfrmEBlastCustomerList;

implementation

{$R *.dfm}

uses DataGlobal, FormEBlastCustomers;

procedure TfrmEBlastCustomerList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEBlastCustomers;
end;

procedure TfrmEBlastCustomerList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEBCustomersEBACCID;

  cdsEBlastList.Close;
  cdsEBlastList.Open;

  cdsEBCustomers.Close;
  cdsEBCustomers.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuAccType.Close;
    cdsLuAccType.Open;
  end;
end;

end.
