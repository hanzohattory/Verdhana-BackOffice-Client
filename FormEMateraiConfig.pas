unit FormEMateraiConfig;

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
  Datasnap.DBClient, NClientDataset, dxLayoutContainer, cxGridCustomLayoutView,
  cxGridLayoutView, cxGridDBLayoutView, cxGridViewLayoutContainer, cxTextEdit,
  cxImageComboBox, cxBarEditItem;

type
  TfrmEMateraiConfig = class(TfrmBrowseData)
    cdsEMateraiConfig: TClientDataSet;
    cdsEMateraiConfigserver_port: TIntegerField;
    cdsEMateraiConfigdatabase_server: TStringField;
    cdsEMateraiConfigdatabase_name: TStringField;
    cdsEMateraiConfigdatabase_user: TStringField;
    cdsEMateraiConfigdatabase_password: TStringField;
    cdsEMateraiConfigperuri_user: TStringField;
    cdsEMateraiConfigperuri_password: TStringField;
    cdsEMateraiConfigstorage_base_path: TStringField;
    gvwMasterserver_port: TcxGridDBBandedColumn;
    gvwMasterscheduler_interval_ms: TcxGridDBBandedColumn;
    gvwMasterdatabase_server: TcxGridDBBandedColumn;
    gvwMasterdatabase_port: TcxGridDBBandedColumn;
    gvwMasterdatabase_name: TcxGridDBBandedColumn;
    gvwMasterdatabase_user: TcxGridDBBandedColumn;
    gvwMasterdatabase_password: TcxGridDBBandedColumn;
    gvwMasterdatabase_pool_size: TcxGridDBBandedColumn;
    gvwMasterperuri_saldo_url: TcxGridDBBandedColumn;
    gvwMasterperuri_jenisdoc_url: TcxGridDBBandedColumn;
    gvwMasterperuri_cache: TcxGridDBBandedColumn;
    gvwMasterperuri_login_url: TcxGridDBBandedColumn;
    gvwMasterperuri_stamp_url: TcxGridDBBandedColumn;
    gvwMasterperuri_sign_url: TcxGridDBBandedColumn;
    gvwMasterperuri_user: TcxGridDBBandedColumn;
    gvwMasterperuri_password: TcxGridDBBandedColumn;
    gvwMasterstorage_base_path: TcxGridDBBandedColumn;
    gvwMasterworker_max_batch_size: TcxGridDBBandedColumn;
    gvwMasterworker_worker_count: TcxGridDBBandedColumn;
    gvwMasterworker_dispatcher_interval_ms: TcxGridDBBandedColumn;
    grdMasterDBLayoutView1Group_Root: TdxLayoutGroup;
    grdMasterDBLayoutView1: TcxGridDBLayoutView;
    dxBarButton1: TdxBarButton;
    actSave: TNAction;
    cdsEMateraiConfigdatabase_schema: TStringField;
    cdsEMateraiConfigperuri_base_backend: TStringField;
    cdsEMateraiConfigperuri_base_fileupload: TStringField;
    cdsEMateraiConfigperuri_base_stampv2: TStringField;
    cdsEMateraiConfigperuri_base_stampservice: TStringField;
    cdsEMateraiConfigperuri_login_path: TStringField;
    cdsEMateraiConfigperuri_upload_path: TStringField;
    cdsEMateraiConfigperuri_generate_sn_path: TStringField;
    cdsEMateraiConfigperuri_stamp_path: TStringField;
    cdsEMateraiConfigperuri_jenisdoc_path: TStringField;
    cdsEMateraiConfigperuri_check_sn_path: TStringField;
    cdsEMateraiConfigperuri_generate_qr_path: TStringField;
    cdsEMateraiConfigperuri_saldo_pos_path: TStringField;
    cdsEMateraiConfigperuri_saldo_pemungut_path: TStringField;
    cdsEMateraiConfigperuri_update_stamp_path: TStringField;
    cdsEMateraiConfigperuri_list_sn_path: TStringField;
    cdsEMateraiConfigperuri_cache: TBooleanField;
    grdMasterDBLayoutView1LayoutItem1: TcxGridLayoutItem;
    grdMasterDBLayoutView1server_port: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem2: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_server: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem3: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_port: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem4: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_name: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem5: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_schema: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem6: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_user: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem7: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_password: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem8: TcxGridLayoutItem;
    grdMasterDBLayoutView1database_pool_size: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem9: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_base_backend: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem10: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_base_fileupload: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem11: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_base_stampv2: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem12: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_base_stampservice: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem13: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_login_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem14: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_upload_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem15: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_generate_sn_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem16: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_stamp_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem17: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_jenisdoc_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem18: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_check_sn_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem19: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_generate_qr_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem20: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_saldo_pos_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem21: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_saldo_pemungut_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem22: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_update_stamp_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem23: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_list_sn_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem24: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_user: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem25: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_password: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem26: TcxGridLayoutItem;
    grdMasterDBLayoutView1peruri_cache: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem27: TcxGridLayoutItem;
    grdMasterDBLayoutView1storage_base_path: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem28: TcxGridLayoutItem;
    grdMasterDBLayoutView1worker_worker_count: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem29: TcxGridLayoutItem;
    grdMasterDBLayoutView1worker_batch_size: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem30: TcxGridLayoutItem;
    grdMasterDBLayoutView1worker_dispatcher_interval_ms: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1Group2: TdxLayoutGroup;
    grdMasterDBLayoutView1Group6: TdxLayoutGroup;
    grdMasterDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    grdMasterDBLayoutView1Group7: TdxLayoutGroup;
    grdMasterDBLayoutView1AutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    grdMasterDBLayoutView1Group8: TdxLayoutGroup;
    edConfigJson: TcxBarEditItem;
    cdsEMateraiConfigdatabase_port: TIntegerField;
    cdsEMateraiConfigworker_worker_count: TIntegerField;
    cdsEMateraiConfigworker_batch_size: TIntegerField;
    cdsEMateraiConfigworker_dispatcher_interval_ms: TIntegerField;
    cdsEMateraiConfigdatabase_pool_size: TIntegerField;
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    server_port: integer;
    db_server: string;
    db_port: integer;
    db_name, db_schema, db_user, db_password: string;
    db_poll_size: integer; base_backend, base_fileupload,
    base_stampv2, base_stampservice, login_path, upload_path, generate_sn_path,
    stamp_path, jenisdoc_path, check_sn_path, generate_qr_path, saldo_pos_path,
    saldo_pemungut_path, update_stamp_path, list_sn_path, user_peruri,
    password_peruri: string;
    cache: boolean; base_path: string;
    worker_count, batch_size, dispatcher_interval_ms: integer;
  public
    { Public declarations }
  end;

var
  frmEMateraiConfig: TfrmEMateraiConfig;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmEMateraiConfig.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  dmGlobal.RemoteServer.LoadEMaterailConfig(
    server_port, db_server, db_port, db_name, db_schema, db_user, db_password,
    db_poll_size, base_backend, base_fileupload, base_stampv2, base_stampservice,
    login_path, upload_path, generate_sn_path, stamp_path, jenisdoc_path, check_sn_path,
    generate_qr_path, saldo_pos_path, saldo_pemungut_path, update_stamp_path,
    list_sn_path, user_peruri, password_peruri, cache, base_path,
    worker_count, batch_size, dispatcher_interval_ms
  );

  cdsEMateraiConfig.Close;
  cdsEMateraiConfig.CreateDataSet;

  cdsEMateraiConfig.Append;
  cdsEMateraiConfigserver_port.AsInteger                   := server_port;
  cdsEMateraiConfigdatabase_server.AsString                := db_server;
  cdsEMateraiConfigdatabase_port.AsInteger                 := db_port;
  cdsEMateraiConfigdatabase_name.AsString                  := db_name;
  cdsEMateraiConfigdatabase_schema.AsString                := db_schema;
  cdsEMateraiConfigdatabase_user.AsString                  := db_user;
  cdsEMateraiConfigdatabase_password.AsString              := db_password;
  cdsEMateraiConfigdatabase_pool_size.AsInteger            := db_poll_size;
  cdsEMateraiConfigperuri_base_backend.AsString            := base_backend;
  cdsEMateraiConfigperuri_base_fileupload.AsString         := base_fileupload;
  cdsEMateraiConfigperuri_base_stampv2.AsString            := base_stampv2;
  cdsEMateraiConfigperuri_base_stampservice.AsString       := base_stampservice;
  cdsEMateraiConfigperuri_login_path.AsString              := login_path;
  cdsEMateraiConfigperuri_upload_path.AsString             := upload_path;
  cdsEMateraiConfigperuri_generate_sn_path.AsString        := generate_sn_path;
  cdsEMateraiConfigperuri_stamp_path.AsString              := stamp_path;
  cdsEMateraiConfigperuri_jenisdoc_path.AsString           := jenisdoc_path;
  cdsEMateraiConfigperuri_check_sn_path.AsString           := check_sn_path;
  cdsEMateraiConfigperuri_generate_qr_path.AsString        := generate_qr_path;
  cdsEMateraiConfigperuri_saldo_pos_path.AsString          := saldo_pos_path;
  cdsEMateraiConfigperuri_saldo_pemungut_path.AsString     := saldo_pemungut_path;
  cdsEMateraiConfigperuri_update_stamp_path.AsString       := update_stamp_path;
  cdsEMateraiConfigperuri_list_sn_path.AsString            := list_sn_path;
  cdsEMateraiConfigperuri_user.AsString                    := user_peruri;
  cdsEMateraiConfigperuri_password.AsString                := password_peruri;
  cdsEMateraiConfigperuri_cache.AsBoolean                  := cache;
  cdsEMateraiConfigstorage_base_path.AsString              := base_path;
  cdsEMateraiConfigworker_worker_count.AsInteger           := worker_count;
  cdsEMateraiConfigworker_batch_size.AsInteger             := batch_size;
  cdsEMateraiConfigworker_dispatcher_interval_ms.AsInteger := dispatcher_interval_ms;
  cdsEMateraiConfig.Post;
end;

procedure TfrmEMateraiConfig.actSaveExecute(Sender: TObject);
begin
  inherited;
  if MessageQuestion('Save change E-Materai Config ?') then
  begin
    if cdsEMateraiConfig.State in dsEditModes then
    begin
      cdsEMateraiConfig.Post;

      server_port            := cdsEMateraiConfigserver_port.AsInteger;
      db_server              := cdsEMateraiConfigdatabase_server.AsString;
      db_port                := cdsEMateraiConfigdatabase_port.AsInteger;
      db_name                := cdsEMateraiConfigdatabase_name.AsString;
      db_schema              := cdsEMateraiConfigdatabase_schema.AsString;
      db_user                := cdsEMateraiConfigdatabase_user.AsString;
      db_password            := cdsEMateraiConfigdatabase_password.AsString;
      db_poll_size           := cdsEMateraiConfigdatabase_pool_size.AsInteger;
      base_backend           := cdsEMateraiConfigperuri_base_backend.AsString;
      base_fileupload        := cdsEMateraiConfigperuri_base_fileupload.AsString;
      base_stampv2           := cdsEMateraiConfigperuri_base_stampv2.AsString;
      base_stampservice      := cdsEMateraiConfigperuri_base_stampservice.AsString;
      login_path             := cdsEMateraiConfigperuri_login_path.AsString;
      upload_path            := cdsEMateraiConfigperuri_upload_path.AsString;
      generate_sn_path       := cdsEMateraiConfigperuri_generate_sn_path.AsString;
      stamp_path             := cdsEMateraiConfigperuri_stamp_path.AsString;
      jenisdoc_path          := cdsEMateraiConfigperuri_jenisdoc_path.AsString;
      check_sn_path          := cdsEMateraiConfigperuri_check_sn_path.AsString;
      generate_qr_path       := cdsEMateraiConfigperuri_generate_qr_path.AsString;
      saldo_pos_path         := cdsEMateraiConfigperuri_saldo_pos_path.AsString;
      saldo_pemungut_path    := cdsEMateraiConfigperuri_saldo_pemungut_path.AsString;
      update_stamp_path      := cdsEMateraiConfigperuri_update_stamp_path.AsString;
      list_sn_path           := cdsEMateraiConfigperuri_list_sn_path.AsString;
      user_peruri            := cdsEMateraiConfigperuri_user.AsString;
      password_peruri        := cdsEMateraiConfigperuri_password.AsString;
      cache                  := cdsEMateraiConfigperuri_cache.AsBoolean;
      base_path              := cdsEMateraiConfigstorage_base_path.AsString;
      worker_count           := cdsEMateraiConfigworker_worker_count.AsInteger;
      batch_size             := cdsEMateraiConfigworker_batch_size.AsInteger;
      dispatcher_interval_ms := cdsEMateraiConfigworker_dispatcher_interval_ms.AsInteger;

      dmGlobal.RemoteServer.SaveEMaterailConfig(
          server_port, db_server, db_port, db_name, db_schema, db_user, db_password,
          db_poll_size, base_backend, base_fileupload, base_stampv2, base_stampservice,
          login_path, upload_path, generate_sn_path, stamp_path, jenisdoc_path, check_sn_path,
          generate_qr_path, saldo_pos_path, saldo_pemungut_path, update_stamp_path,
          list_sn_path, user_peruri, password_peruri, cache, base_path,
          worker_count, batch_size, dispatcher_interval_ms
        );

      MessageInformation('E-Materai Config Has Been Saved !');
    end;
  end;
end;

procedure TfrmEMateraiConfig.FormCreate(Sender: TObject);
begin
  inherited;
  edConfigJson.EditValue := dmGlobal.RemoteServer.GetGlobalParamString('900');
end;

end.
