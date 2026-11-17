unit FormUserConfigList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, System.Actions,
  System.ImageList;

type
  TfrmUserConfigList = class(TfrmBrowseData)
    cdsManageUserList: TNClientDataset;
    cdsManageUser: TNClientDataset;
    cdsManageUserGroup: TNClientDataset;
    cdsManageUserListUSERID: TStringField;
    cdsManageUserListAPPID: TStringField;
    cdsManageUserListUSERNAME: TStringField;
    cdsManageUserListCRETEDATE: TDateTimeField;
    cdsManageUserListUSERSTATE: TStringField;
    cdsManageUserListUSERPWD: TStringField;
    cdsManageUserListLASTCHANGEPWD: TDateTimeField;
    cdsManageUserListLOCKED: TStringField;
    cdsManageUserListWRONGPWDCOUNT: TIntegerField;
    cdsManageUserListHARDLIMIT: TFloatField;
    cdsManageUserListSOFTLIMIT: TFloatField;
    cdsManageUserListTEMPLIMIT: TFloatField;
    cdsManageUserListMODDA: TDateTimeField;
    cdsManageUserListMODUI: TStringField;
    cdsManageUserListAPPDA: TDateTimeField;
    cdsManageUserListAPPUI: TStringField;
    cdsManageUserListUNDER4Y: TIntegerField;
    cdsManageUserListUNDER4YDA: TDateTimeField;
    cdsManageUserListNOTES4Y: TStringField;
    cdsManageUserListISDEL: TIntegerField;
    cdsManageUserListID: TLargeintField;
    cdsManageUserUSERID: TStringField;
    cdsManageUserAPPID: TStringField;
    cdsManageUserUSERNAME: TStringField;
    cdsManageUserCRETEDATE: TDateTimeField;
    cdsManageUserUSERSTATE: TStringField;
    cdsManageUserUSERPWD: TStringField;
    cdsManageUserLASTCHANGEPWD: TDateTimeField;
    cdsManageUserLOCKED: TStringField;
    cdsManageUserWRONGPWDCOUNT: TIntegerField;
    cdsManageUserHARDLIMIT: TFloatField;
    cdsManageUserSOFTLIMIT: TFloatField;
    cdsManageUserTEMPLIMIT: TFloatField;
    cdsManageUserMODDA: TDateTimeField;
    cdsManageUserMODUI: TStringField;
    cdsManageUserAPPDA: TDateTimeField;
    cdsManageUserAPPUI: TStringField;
    cdsManageUserUNDER4Y: TIntegerField;
    cdsManageUserUNDER4YDA: TDateTimeField;
    cdsManageUserNOTES4Y: TStringField;
    cdsManageUserISDEL: TIntegerField;
    cdsManageUserID: TLargeintField;
    cdsManageUserqryManageUserGroup: TDataSetField;
    cdsManageUserGroupUSERID: TStringField;
    cdsManageUserGroupAPPID: TStringField;
    cdsManageUserGroupGROUPID: TStringField;
    cdsManageUserGroupMODDA: TDateTimeField;
    cdsManageUserGroupMODUI: TStringField;
    cdsManageUserGroupAPPDA: TDateTimeField;
    cdsManageUserGroupAPPUI: TStringField;
    cdsManageUserGroupUNDER4Y: TIntegerField;
    cdsManageUserGroupUNDER4YDA: TDateTimeField;
    cdsManageUserGroupNOTES4Y: TStringField;
    cdsManageUserGroupISDEL: TIntegerField;
    cdsManageUserGroupID: TLargeintField;
    gvwMasterUSERID: TcxGridDBBandedColumn;
    gvwMasterAPPID: TcxGridDBBandedColumn;
    gvwMasterUSERNAME: TcxGridDBBandedColumn;
    gvwMasterCRETEDATE: TcxGridDBBandedColumn;
    gvwMasterUSERSTATE: TcxGridDBBandedColumn;
    gvwMasterUSERPWD: TcxGridDBBandedColumn;
    gvwMasterLASTCHANGEPWD: TcxGridDBBandedColumn;
    gvwMasterLOCKED: TcxGridDBBandedColumn;
    gvwMasterWRONGPWDCOUNT: TcxGridDBBandedColumn;
    gvwMasterHARDLIMIT: TcxGridDBBandedColumn;
    gvwMasterSOFTLIMIT: TcxGridDBBandedColumn;
    gvwMasterTEMPLIMIT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserConfigList: TfrmUserConfigList;

implementation

{$R *.dfm}

uses DataGlobal, FormUserConfig;

procedure TfrmUserConfigList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmUserConfig;
end;

procedure TfrmUserConfigList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsManageUserList.Close;
  cdsManageUserList.Open;
end;

Initialization
  RegisterClass(TfrmUserConfigList);

end.
