unit FormBankSOPList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCheckBox;

type
  TfrmBankSOPList = class(TfrmBrowseData)
    cdsBankSOPList: TNClientDataset;
    cdsBankSOP: TNClientDataset;
    cdsBankSOPListNIK: TStringField;
    cdsBankSOPListNAME: TStringField;
    cdsBankSOPListACCSOPID: TIntegerField;
    cdsBankSOPListMSOP_BANKID: TLargeintField;
    cdsBankSOPListACCBANKCODE: TStringField;
    cdsBankSOPListBNCODE: TStringField;
    cdsBankSOPListBANKACCNO: TStringField;
    cdsBankSOPListBANKACCNAME: TStringField;
    cdsBankSOPListBANKBRANCH: TStringField;
    cdsBankSOPListREMARKS: TStringField;
    cdsBankSOPListASDEFAULT: TStringField;
    cdsBankSOPACCSOPID: TIntegerField;
    cdsBankSOPMSOP_BANKID: TLargeintField;
    cdsBankSOPACCBANKCODE: TStringField;
    cdsBankSOPBNCODE: TStringField;
    cdsBankSOPBANKACCNO: TStringField;
    cdsBankSOPBANKACCNAME: TStringField;
    cdsBankSOPBANKBRANCH: TStringField;
    cdsBankSOPREMARKS: TStringField;
    cdsBankSOPASDEFAULT: TStringField;
    cdsBankSOPMODDA: TDateTimeField;
    cdsBankSOPMODUI: TStringField;
    cdsBankSOPAPPDA: TDateTimeField;
    cdsBankSOPAPPUI: TStringField;
    cdsBankSOPUNDER4Y: TIntegerField;
    cdsBankSOPUNDER4YDA: TDateTimeField;
    cdsBankSOPNOTES4Y: TStringField;
    cdsBankSOPISDEL: TIntegerField;
    cdsBankSOPID: TLargeintField;
    gvwMasterNIK: TcxGridDBBandedColumn;
    gvwMasterNAME: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterMSOP_BANKID: TcxGridDBBandedColumn;
    gvwMasterACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBANKBRANCH: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterASDEFAULT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankSOPList: TfrmBankSOPList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBankSOPList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBankSOPList.Close;
  cdsBankSOPList.Open;
end;

Initialization
  RegisterClass(TfrmBankSOPList);

end.
