unit FormDOTList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmDOTList = class(TfrmBrowseData)
    cdsDOTList: TNClientDataset;
    cdsDOT: TNClientDataset;
    cdsDOTDOT_ID: TIntegerField;
    cdsDOTREAL_NAME: TStringField;
    cdsDOTALIAS_NAME: TStringField;
    cdsDOTPOB: TStringField;
    cdsDOTDOB: TDateField;
    cdsDOTNATIONALITY: TStringField;
    cdsDOTADDRESS: TMemoField;
    cdsDOTIDCARD_NO: TStringField;
    cdsDOTDESCRIPTION: TMemoField;
    cdsDOTVALID_DATE: TDateField;
    cdsDOTEXP_DATE: TDateField;
    cdsDOTSTAT: TStringField;
    cdsDOTMODDA: TDateTimeField;
    cdsDOTMODUI: TStringField;
    cdsDOTAPPDA: TDateTimeField;
    cdsDOTAPPUI: TStringField;
    cdsDOTUNDER4Y: TIntegerField;
    cdsDOTUNDER4YDA: TDateTimeField;
    cdsDOTNOTES4Y: TStringField;
    cdsDOTISDEL: TIntegerField;
    cdsDOTID: TLargeintField;
    cdsDOTListDOT_ID: TIntegerField;
    cdsDOTListREAL_NAME: TStringField;
    cdsDOTListALIAS_NAME: TStringField;
    cdsDOTListPOB: TStringField;
    cdsDOTListDOB: TDateField;
    cdsDOTListNATIONALITY: TStringField;
    cdsDOTListADDRESS: TMemoField;
    cdsDOTListIDCARD_NO: TStringField;
    cdsDOTListDESCRIPTION: TMemoField;
    cdsDOTListVALID_DATE: TDateField;
    cdsDOTListEXP_DATE: TDateField;
    cdsDOTListSTAT: TStringField;
    cdsDOTListMODDA: TDateTimeField;
    cdsDOTListMODUI: TStringField;
    cdsDOTListAPPDA: TDateTimeField;
    cdsDOTListAPPUI: TStringField;
    cdsDOTListUNDER4Y: TIntegerField;
    cdsDOTListUNDER4YDA: TDateTimeField;
    cdsDOTListNOTES4Y: TStringField;
    cdsDOTListISDEL: TIntegerField;
    cdsDOTListID: TLargeintField;
    gvwMasterDOT_ID: TcxGridDBBandedColumn;
    gvwMasterREAL_NAME: TcxGridDBBandedColumn;
    gvwMasterALIAS_NAME: TcxGridDBBandedColumn;
    gvwMasterPOB: TcxGridDBBandedColumn;
    gvwMasterDOB: TcxGridDBBandedColumn;
    gvwMasterNATIONALITY: TcxGridDBBandedColumn;
    gvwMasterADDRESS: TcxGridDBBandedColumn;
    gvwMasterIDCARD_NO: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterVALID_DATE: TcxGridDBBandedColumn;
    gvwMasterEXP_DATE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDOTList: TfrmDOTList;

implementation

{$R *.dfm}

uses DataGlobal, FormDOT;

procedure TfrmDOTList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmDOT;
end;

procedure TfrmDOTList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCounNation.Close;
    cdsLuCounNation.Open;
  end;

  cdsDOTList.Close;
  cdsDOTList.Open;

  gvwMaster.ApplyBestFit();
end;

Initialization
  RegisterClass(TfrmDOTList);

end.
