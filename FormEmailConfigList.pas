unit FormEmailConfigList;

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
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient, System.Actions, System.ImageList,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmEmailConfigList = class(TfrmBrowseData)
    cdsEmailDraftList: TNClientDataset;
    cdsEmailDraft: TNClientDataset;
    cdsEmailDraftListEMAILTYPE: TStringField;
    cdsEmailDraftListSMTPHOST: TStringField;
    cdsEmailDraftListSMTPPORT: TIntegerField;
    cdsEmailDraftListSMTPUSERNAME: TStringField;
    cdsEmailDraftListSMTPPASSWORD: TStringField;
    cdsEmailDraftListEMAILTO: TStringField;
    cdsEmailDraftListEMAILCC: TStringField;
    cdsEmailDraftListEMAILBCC: TStringField;
    cdsEmailDraftListEMAILSUBJECT: TStringField;
    cdsEmailDraftListEMAILMESSAGE: TMemoField;
    cdsEmailDraftListMODDA: TDateTimeField;
    cdsEmailDraftListMODUI: TStringField;
    cdsEmailDraftListAPPDA: TDateTimeField;
    cdsEmailDraftListAPPUI: TStringField;
    cdsEmailDraftListUNDER4Y: TIntegerField;
    cdsEmailDraftListUNDER4YDA: TDateTimeField;
    cdsEmailDraftListNOTES4Y: TStringField;
    cdsEmailDraftListISDEL: TIntegerField;
    cdsEmailDraftListID: TLargeintField;
    cdsEmailDraftEMAILTYPE: TStringField;
    cdsEmailDraftSMTPHOST: TStringField;
    cdsEmailDraftSMTPPORT: TIntegerField;
    cdsEmailDraftSMTPUSERNAME: TStringField;
    cdsEmailDraftSMTPPASSWORD: TStringField;
    cdsEmailDraftEMAILTO: TStringField;
    cdsEmailDraftEMAILCC: TStringField;
    cdsEmailDraftEMAILBCC: TStringField;
    cdsEmailDraftEMAILSUBJECT: TStringField;
    cdsEmailDraftEMAILMESSAGE: TMemoField;
    cdsEmailDraftMODDA: TDateTimeField;
    cdsEmailDraftMODUI: TStringField;
    cdsEmailDraftAPPDA: TDateTimeField;
    cdsEmailDraftAPPUI: TStringField;
    cdsEmailDraftUNDER4Y: TIntegerField;
    cdsEmailDraftUNDER4YDA: TDateTimeField;
    cdsEmailDraftNOTES4Y: TStringField;
    cdsEmailDraftISDEL: TIntegerField;
    cdsEmailDraftID: TLargeintField;
    gvwMasterEMAILTYPE: TcxGridDBBandedColumn;
    gvwMasterEMAILTO: TcxGridDBBandedColumn;
    gvwMasterEMAILCC: TcxGridDBBandedColumn;
    gvwMasterEMAILBCC: TcxGridDBBandedColumn;
    gvwMasterEMAILSUBJECT: TcxGridDBBandedColumn;
    gvwMasterEMAILMESSAGE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsEmailDraftCUSGID: TIntegerField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailConfigList: TfrmEmailConfigList;

implementation

{$R *.dfm}

uses DataGlobal, FormEmailConfig;

procedure TfrmEmailConfigList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEmailConfig;
end;

procedure TfrmEmailConfigList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuContactUsage.Close;
    cdsLuContactUsage.Open;

    cdsLuEmailType.Close;
    cdsLuEmailType.Open;
  end;

  cdsEmailDraftList.Close;
  cdsEmailDraftList.Open;
end;

Initialization
  RegisterClass(TfrmEmailConfigList);

end.
