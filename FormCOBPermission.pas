unit FormCOBPermission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Data.DB, Vcl.Menus, cxStyles,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  NClientDataset, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGrid, cxCheckBox;

type
  TfrmCOBPermission = class(TfrmBrowseNoGrid)
    cdsUsersList: TNClientDataset;
    cdsUsersListUSERID: TStringField;
    cdsCOBPermission: TNClientDataset;
    dsCOBPermission: TDataSource;
    cdsCOBPermissionUSERID: TStringField;
    cdsCOBPermissionACTIVITY_ID: TIntegerField;
    cdsCOBPermissionACTIVITY_DESC: TStringField;
    cdsCOBPermissionACTVIEW: TStringField;
    cdsCOBPermissionACTACK: TStringField;
    cdsCOBPermissionACTDONE: TStringField;
    cdsListPermission: TNClientDataset;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwUserList: TcxGridDBBandedTableView;
    gvwUserListUSERID: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwCOBPermission: TcxGridDBBandedTableView;
    gvwCOBPermissionUSERID: TcxGridDBBandedColumn;
    gvwCOBPermissionACTIVITY_ID: TcxGridDBBandedColumn;
    gvwCOBPermissionACTIVITY_DESC: TcxGridDBBandedColumn;
    gvwCOBPermissionACTVIEW: TcxGridDBBandedColumn;
    gvwCOBPermissionACTACK: TcxGridDBBandedColumn;
    gvwCOBPermissionACTDONE: TcxGridDBBandedColumn;
    cdsListPermissionACTIVITY_ID: TIntegerField;
    cdsListPermissionACTIVITY_SUBID: TIntegerField;
    cdsListPermissionACTIVITY_DESC: TStringField;
    cdsListPermissionACTIVITY_EMAIL_CLIENT: TIntegerField;
    cdsListPermissionACTIVITY_EMAIL_USERS: TIntegerField;
    cdsListPermissionACTIVITY_COLOR: TStringField;
    cdsListPermissionACTIVITY_NEXT: TStringField;
    cdsListPermissionCOB_TYPE: TStringField;
    cdsListPermissionACTTYPE: TStringField;
    cdsListPermissionACLEVEL: TStringField;
    cdsListPermissionACPROCESS: TStringField;
    PopupMenu1: TPopupMenu;
    actSave: TNAction;
    Save1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure gvwUserListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actSaveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOBPermission: TfrmCOBPermission;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCOBPermission.actSaveExecute(Sender: TObject);
begin
  inherited;
  if cdsCOBPermission.State in [dsEdit] then
  begin
//    cdsCOBPermission.Edit;
    cdsCOBPermission.Post;
    cdsCOBPermission.ApplyUpdates(-1);
  end;
end;

procedure TfrmCOBPermission.FormCreate(Sender: TObject);
begin
  MasterData := gvwUserList;
  //inherited;

  cdsUsersList.Close;
  cdsUsersList.Open;

  cdsCOBPermission.Close;
  cdsCOBPermission.Params[0].AsString := '';
  cdsCOBPermission.Open;
end;

procedure TfrmCOBPermission.gvwUserListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sUserID: string;
begin
  inherited;
  sUserID := ACellViewInfo.Value;

  cdsCOBPermission.Close;
  cdsCOBPermission.Params[0].AsString := sUserID;
  cdsCOBPermission.Open;

  if cdsCOBPermission.IsEmpty then
  begin
    dmGlobal.RemoteServer.CreateCOBPermissionList(sUserID);

//    cdsListPermission.Close;
//    cdsListPermission.Open;
//
//    while not cdsListPermission.Eof do
//    begin
//      cdsCOBPermission.Append;
//      cdsCOBPermissionUSERID.AsString := sUserID;
//      cdsCOBPermissionACTIVITY_ID.AsInteger  := cdsListPermissionACTIVITY_ID.AsInteger;
//      cdsCOBPermissionACTIVITY_DESC.AsString := cdsListPermissionACTIVITY_DESC.AsString;
//      cdsCOBPermissionACTVIEW.AsString       := '0';
//      cdsCOBPermissionACTACK.AsString        := '0';
//      cdsCOBPermissionACTDONE.AsString       := '0';
//      cdsCOBPermission.Post;
//
//      cdsListPermission.Next;
//    end;
//    cdsCOBPermission.ApplyUpdates(-1);

  end
  else
    cdsCOBPermission.Edit;
end;

end.
