unit FormEIPOList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCheckBox, cxBarEditItem, dxScrollbarAnnotations;

type
  TfrmEIPOList = class(TfrmBrowseData)
    cdsEIPOList: TNClientDataset;
    cdsEIPOListID: TLargeintField;
    cdsEIPOListTICKER_ID: TLargeintField;
    cdsEIPOListTICKER_CODE: TStringField;
    cdsEIPOListCOMPANY: TStringField;
    cdsEIPOListSECTOR: TStringField;
    cdsEIPOListSUBSECTOR: TStringField;
    cdsEIPOListLINE_OF_BUSINESS: TStringField;
    cdsEIPOListBOOKBUILDING_SDATE: TDateField;
    cdsEIPOListBOOKBUILDING_EDATE: TDateField;
    cdsEIPOListOFFERING_SDATE: TDateField;
    cdsEIPOListOFFERING_EDATE: TDateField;
    cdsEIPOListALLOTMENT_DATE: TDateField;
    cdsEIPOListDISTRIBUTION_DATE: TDateField;
    cdsEIPOListLISTING_DATE: TDateField;
    cdsEIPOListSHARED_OFFERED: TFloatField;
    cdsEIPOListSTAT: TStringField;
    cdsEIPOListMODDA: TDateTimeField;
    cdsEIPOListMODUI: TStringField;
    cdsEIPOListAPPDA: TDateTimeField;
    cdsEIPOListAPPUI: TStringField;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterTICKER_ID: TcxGridDBBandedColumn;
    gvwMasterTICKER_CODE: TcxGridDBBandedColumn;
    gvwMasterCOMPANY: TcxGridDBBandedColumn;
    gvwMasterSECTOR: TcxGridDBBandedColumn;
    gvwMasterSUBSECTOR: TcxGridDBBandedColumn;
    gvwMasterLINE_OF_BUSINESS: TcxGridDBBandedColumn;
    gvwMasterBOOKBUILDING_SDATE: TcxGridDBBandedColumn;
    gvwMasterBOOKBUILDING_EDATE: TcxGridDBBandedColumn;
    gvwMasterOFFERING_SDATE: TcxGridDBBandedColumn;
    gvwMasterOFFERING_EDATE: TcxGridDBBandedColumn;
    gvwMasterALLOTMENT_DATE: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTION_DATE: TcxGridDBBandedColumn;
    gvwMasterLISTING_DATE: TcxGridDBBandedColumn;
    gvwMasterSHARED_OFFERED: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    chkOpen: TcxBarEditItem;
    chkBookBuild: TcxBarEditItem;
    chkOffering: TcxBarEditItem;
    chkAllotment: TcxBarEditItem;
    chkDistribution: TcxBarEditItem;
    chkClosed: TcxBarEditItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actEditUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEIPOList: TfrmEIPOList;

implementation

uses DataGlobal, FormEIPO;

{$R *.dfm}

procedure TfrmEIPOList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := cdsEIPOListSTAT.AsString = '1';
end;

procedure TfrmEIPOList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsEIPOList.Close;
  cdsEIPOList.Params[0].AsString := chkOpen.EditValue;
  cdsEIPOList.Params[1].AsString := chkBookBuild.EditValue;
  cdsEIPOList.Params[2].AsString := chkOffering.EditValue;
  cdsEIPOList.Params[3].AsString := chkAllotment.EditValue;
  cdsEIPOList.Params[4].AsString := chkDistribution.EditValue;
  cdsEIPOList.Params[5].AsString := chkClosed.EditValue;
  cdsEIPOList.Open;
end;

procedure TfrmEIPOList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEIPO;
end;

procedure TfrmEIPOList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEIPOListID;

  chkOpen.EditValue         := '1';
  chkBookBuild.EditValue    := '0';
  chkOffering.EditValue     := '0';
  chkAllotment.EditValue    := '0';
  chkDistribution.EditValue := '0';
  chkClosed.EditValue       := '0';

  with dmGlobal.IntDataLookup do
  begin
    cdsLuIPOInstrument.Close;
    cdsluIPOInstrument.Open;

    cdsLuIPOSector.Close;
    cdsLuIPOSector.Open;
  end;

  actRefresh.Execute;
end;

end.
