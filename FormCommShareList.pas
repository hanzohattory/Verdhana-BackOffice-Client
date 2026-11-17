unit FormCommShareList;

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
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmCommShareList = class(TfrmBrowseData)
    cdsCommShareList: TNClientDataset;
    cdsCommShareListCOMM_SHARE_ID: TIntegerField;
    cdsCommShareListCOMM_SHARE_CODE: TStringField;
    cdsCommShareListCOMM_SHARE_DESC: TStringField;
    cdsCommShareListMONTH_PERIOD1: TIntegerField;
    cdsCommShareListSALES_COMM_PERIOD1: TFloatField;
    cdsCommShareListCOMP_COMM_PERIOD1: TFloatField;
    cdsCommShareListEXT_REFERRAL_COMM_PERIOD1: TFloatField;
    cdsCommShareListINT_REFERRAL_COMM_PERIOD1: TFloatField;
    cdsCommShareListEXPIRED_PERIOD1: TStringField;
    cdsCommShareListMONTH_PERIOD2: TIntegerField;
    cdsCommShareListSALES_COMM_PERIOD2: TFloatField;
    cdsCommShareListCOMP_COMM_PERIOD2: TFloatField;
    cdsCommShareListEXT_REFERRAL_COMM_PERIOD2: TFloatField;
    cdsCommShareListINT_REFERRAL_COMM_PERIOD2: TFloatField;
    cdsCommShareListEXPIRED_PERIOD2: TStringField;
    cdsCommShareListMONTH_PERIOD3: TIntegerField;
    cdsCommShareListSALES_COMM_PERIOD3: TFloatField;
    cdsCommShareListCOMP_COMM_PERIOD3: TFloatField;
    cdsCommShareListEXT_REFERRAL_COMM_PERIOD3: TFloatField;
    cdsCommShareListINT_REFERRAL_COMM_PERIOD3: TFloatField;
    cdsCommShareListEXPIRED_PERIOD3: TStringField;
    cdsCommShareListMODDA: TDateTimeField;
    cdsCommShareListMODUI: TStringField;
    cdsCommShareListAPPDA: TDateTimeField;
    cdsCommShareListAPPUI: TStringField;
    cdsCommShareListUNDER4Y: TIntegerField;
    cdsCommShareListUNDER4YDA: TDateTimeField;
    cdsCommShareListNOTES4Y: TStringField;
    cdsCommShareListISDEL: TIntegerField;
    cdsCommShareListID: TLargeintField;
    gvwMasterCOMM_SHARE_ID: TcxGridDBBandedColumn;
    gvwMasterCOMM_SHARE_CODE: TcxGridDBBandedColumn;
    gvwMasterCOMM_SHARE_DESC: TcxGridDBBandedColumn;
    gvwMasterMONTH_PERIOD1: TcxGridDBBandedColumn;
    gvwMasterSALES_COMM_PERIOD1: TcxGridDBBandedColumn;
    gvwMasterCOMP_COMM_PERIOD1: TcxGridDBBandedColumn;
    gvwMasterEXT_REFERRAL_COMM_PERIOD1: TcxGridDBBandedColumn;
    gvwMasterINT_REFERRAL_COMM_PERIOD1: TcxGridDBBandedColumn;
    gvwMasterEXPIRED_PERIOD1: TcxGridDBBandedColumn;
    gvwMasterMONTH_PERIOD2: TcxGridDBBandedColumn;
    gvwMasterSALES_COMM_PERIOD2: TcxGridDBBandedColumn;
    gvwMasterCOMP_COMM_PERIOD2: TcxGridDBBandedColumn;
    gvwMasterEXT_REFERRAL_COMM_PERIOD2: TcxGridDBBandedColumn;
    gvwMasterINT_REFERRAL_COMM_PERIOD2: TcxGridDBBandedColumn;
    gvwMasterEXPIRED_PERIOD2: TcxGridDBBandedColumn;
    gvwMasterMONTH_PERIOD3: TcxGridDBBandedColumn;
    gvwMasterSALES_COMM_PERIOD3: TcxGridDBBandedColumn;
    gvwMasterCOMP_COMM_PERIOD3: TcxGridDBBandedColumn;
    gvwMasterEXT_REFERRAL_COMM_PERIOD3: TcxGridDBBandedColumn;
    gvwMasterINT_REFERRAL_COMM_PERIOD3: TcxGridDBBandedColumn;
    gvwMasterEXPIRED_PERIOD3: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsCommShareListMONTH_PERIOD4: TIntegerField;
    cdsCommShareListSALES_COMM_PERIOD4: TFloatField;
    cdsCommShareListCOMP_COMM_PERIOD4: TFloatField;
    cdsCommShareListEXT_REFERRAL_COMM_PERIOD4: TFloatField;
    cdsCommShareListINT_REFERRAL_COMM_PERIOD4: TFloatField;
    cdsCommShareListEXPIRED_PERIOD4: TStringField;
    cdsCommShareListMONTH_PERIOD5: TIntegerField;
    cdsCommShareListSALES_COMM_PERIOD5: TFloatField;
    cdsCommShareListCOMP_COMM_PERIOD5: TFloatField;
    cdsCommShareListEXT_REFERRAL_COMM_PERIOD5: TFloatField;
    cdsCommShareListINT_REFERRAL_COMM_PERIOD5: TFloatField;
    cdsCommShareListEXPIRED_PERIOD5: TStringField;
    gvwMasterMONTH_PERIOD4: TcxGridDBBandedColumn;
    gvwMasterSALES_COMM_PERIOD4: TcxGridDBBandedColumn;
    gvwMasterCOMP_COMM_PERIOD4: TcxGridDBBandedColumn;
    gvwMasterEXT_REFERRAL_COMM_PERIOD4: TcxGridDBBandedColumn;
    gvwMasterINT_REFERRAL_COMM_PERIOD4: TcxGridDBBandedColumn;
    gvwMasterEXPIRED_PERIOD4: TcxGridDBBandedColumn;
    gvwMasterMONTH_PERIOD5: TcxGridDBBandedColumn;
    gvwMasterSALES_COMM_PERIOD5: TcxGridDBBandedColumn;
    gvwMasterCOMP_COMM_PERIOD5: TcxGridDBBandedColumn;
    gvwMasterEXT_REFERRAL_COMM_PERIOD5: TcxGridDBBandedColumn;
    gvwMasterINT_REFERRAL_COMM_PERIOD5: TcxGridDBBandedColumn;
    gvwMasterEXPIRED_PERIOD5: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommShareList: TfrmCommShareList;

implementation

{$R *.dfm}

uses DataGlobal, FormCommShare;

procedure TfrmCommShareList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCommShare;
end;

procedure TfrmCommShareList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCommShareListCOMM_SHARE_ID;

  cdsCommShareList.Close;
  cdsCommShareList.Open;
end;

Initialization
  RegisterClass(TfrmCommShareList);

end.
