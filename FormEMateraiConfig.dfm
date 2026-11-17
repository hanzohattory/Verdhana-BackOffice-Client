inherited frmEMateraiConfig: TfrmEMateraiConfig
  Caption = 'E-Materai Config'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterserver_port: TcxGridDBBandedColumn
        DataBinding.FieldName = 'server_port'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterscheduler_interval_ms: TcxGridDBBandedColumn
        DataBinding.FieldName = 'scheduler_interval_ms'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterdatabase_server: TcxGridDBBandedColumn
        DataBinding.FieldName = 'database_server'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterdatabase_port: TcxGridDBBandedColumn
        DataBinding.FieldName = 'database_port'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterdatabase_name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'database_name'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterdatabase_user: TcxGridDBBandedColumn
        DataBinding.FieldName = 'database_user'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterdatabase_password: TcxGridDBBandedColumn
        DataBinding.FieldName = 'database_password'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterdatabase_pool_size: TcxGridDBBandedColumn
        DataBinding.FieldName = 'database_pool_size'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterperuri_saldo_url: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_saldo_url'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterperuri_jenisdoc_url: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_jenisdoc_url'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterperuri_cache: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_cache'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterperuri_login_url: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_login_url'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterperuri_stamp_url: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_stamp_url'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterperuri_sign_url: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_sign_url'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterperuri_user: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_user'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterperuri_password: TcxGridDBBandedColumn
        DataBinding.FieldName = 'peruri_password'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterstorage_base_path: TcxGridDBBandedColumn
        DataBinding.FieldName = 'storage_base_path'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterworker_max_batch_size: TcxGridDBBandedColumn
        DataBinding.FieldName = 'worker_max_batch_size'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterworker_worker_count: TcxGridDBBandedColumn
        DataBinding.FieldName = 'worker_worker_count'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterworker_dispatcher_interval_ms: TcxGridDBBandedColumn
        DataBinding.FieldName = 'worker_dispatcher_interval_ms'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
    end
    object grdMasterDBLayoutView1: TcxGridDBLayoutView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBrowseMaster
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object grdMasterDBLayoutView1server_port: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'server_port'
        LayoutItem = grdMasterDBLayoutView1LayoutItem1
      end
      object grdMasterDBLayoutView1database_server: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_server'
        LayoutItem = grdMasterDBLayoutView1LayoutItem2
      end
      object grdMasterDBLayoutView1database_port: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_port'
        LayoutItem = grdMasterDBLayoutView1LayoutItem3
      end
      object grdMasterDBLayoutView1database_name: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_name'
        LayoutItem = grdMasterDBLayoutView1LayoutItem4
      end
      object grdMasterDBLayoutView1database_schema: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_schema'
        LayoutItem = grdMasterDBLayoutView1LayoutItem5
      end
      object grdMasterDBLayoutView1database_user: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_user'
        LayoutItem = grdMasterDBLayoutView1LayoutItem6
      end
      object grdMasterDBLayoutView1database_password: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_password'
        LayoutItem = grdMasterDBLayoutView1LayoutItem7
      end
      object grdMasterDBLayoutView1database_pool_size: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'database_pool_size'
        LayoutItem = grdMasterDBLayoutView1LayoutItem8
      end
      object grdMasterDBLayoutView1peruri_base_backend: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_base_backend'
        LayoutItem = grdMasterDBLayoutView1LayoutItem9
      end
      object grdMasterDBLayoutView1peruri_base_fileupload: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_base_fileupload'
        LayoutItem = grdMasterDBLayoutView1LayoutItem10
      end
      object grdMasterDBLayoutView1peruri_base_stampv2: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_base_stampv2'
        LayoutItem = grdMasterDBLayoutView1LayoutItem11
      end
      object grdMasterDBLayoutView1peruri_base_stampservice: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_base_stampservice'
        LayoutItem = grdMasterDBLayoutView1LayoutItem12
      end
      object grdMasterDBLayoutView1peruri_login_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_login_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem13
      end
      object grdMasterDBLayoutView1peruri_upload_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_upload_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem14
      end
      object grdMasterDBLayoutView1peruri_generate_sn_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_generate_sn_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem15
      end
      object grdMasterDBLayoutView1peruri_stamp_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_stamp_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem16
      end
      object grdMasterDBLayoutView1peruri_jenisdoc_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_jenisdoc_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem17
      end
      object grdMasterDBLayoutView1peruri_check_sn_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_check_sn_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem18
      end
      object grdMasterDBLayoutView1peruri_generate_qr_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_generate_qr_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem19
      end
      object grdMasterDBLayoutView1peruri_saldo_pos_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_saldo_pos_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem20
      end
      object grdMasterDBLayoutView1peruri_saldo_pemungut_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_saldo_pemungut_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem21
      end
      object grdMasterDBLayoutView1peruri_update_stamp_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_update_stamp_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem22
      end
      object grdMasterDBLayoutView1peruri_list_sn_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_list_sn_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem23
      end
      object grdMasterDBLayoutView1peruri_user: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_user'
        LayoutItem = grdMasterDBLayoutView1LayoutItem24
      end
      object grdMasterDBLayoutView1peruri_password: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_password'
        LayoutItem = grdMasterDBLayoutView1LayoutItem25
      end
      object grdMasterDBLayoutView1peruri_cache: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'peruri_cache'
        LayoutItem = grdMasterDBLayoutView1LayoutItem26
      end
      object grdMasterDBLayoutView1storage_base_path: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'storage_base_path'
        LayoutItem = grdMasterDBLayoutView1LayoutItem27
      end
      object grdMasterDBLayoutView1worker_worker_count: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'worker_worker_count'
        LayoutItem = grdMasterDBLayoutView1LayoutItem28
      end
      object grdMasterDBLayoutView1worker_batch_size: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'worker_batch_size'
        LayoutItem = grdMasterDBLayoutView1LayoutItem29
      end
      object grdMasterDBLayoutView1worker_dispatcher_interval_ms: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'worker_dispatcher_interval_ms'
        LayoutItem = grdMasterDBLayoutView1LayoutItem30
      end
      object grdMasterDBLayoutView1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Layout'
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object grdMasterDBLayoutView1LayoutItem1: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group_Root
        AlignHorz = ahLeft
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem2: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem3: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem4: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 2
      end
      object grdMasterDBLayoutView1LayoutItem5: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        SizeOptions.Width = 271
        Index = 3
      end
      object grdMasterDBLayoutView1LayoutItem6: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 4
      end
      object grdMasterDBLayoutView1LayoutItem7: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 5
      end
      object grdMasterDBLayoutView1LayoutItem8: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 6
      end
      object grdMasterDBLayoutView1LayoutItem9: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        SizeOptions.Width = 372
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem10: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem11: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 2
      end
      object grdMasterDBLayoutView1LayoutItem12: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 3
      end
      object grdMasterDBLayoutView1LayoutItem13: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 4
      end
      object grdMasterDBLayoutView1LayoutItem14: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 5
      end
      object grdMasterDBLayoutView1LayoutItem15: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 6
      end
      object grdMasterDBLayoutView1LayoutItem16: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 7
      end
      object grdMasterDBLayoutView1LayoutItem17: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 8
      end
      object grdMasterDBLayoutView1LayoutItem18: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 9
      end
      object grdMasterDBLayoutView1LayoutItem19: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 10
      end
      object grdMasterDBLayoutView1LayoutItem20: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 11
      end
      object grdMasterDBLayoutView1LayoutItem21: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 12
      end
      object grdMasterDBLayoutView1LayoutItem22: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 13
      end
      object grdMasterDBLayoutView1LayoutItem23: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 14
      end
      object grdMasterDBLayoutView1LayoutItem24: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 15
      end
      object grdMasterDBLayoutView1LayoutItem25: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        Index = 16
      end
      object grdMasterDBLayoutView1LayoutItem26: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        AlignHorz = ahLeft
        AlignVert = avTop
        SizeOptions.Width = 191
        Index = 17
      end
      object grdMasterDBLayoutView1LayoutItem27: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group8
        SizeOptions.Width = 332
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem28: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group7
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem29: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group7
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem30: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group7
        Index = 2
      end
      object grdMasterDBLayoutView1Group2: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Database'
        ButtonOptions.Buttons = <>
        ItemIndex = 6
        Index = 0
      end
      object grdMasterDBLayoutView1Group6: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup2
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Peruri'
        ButtonOptions.Buttons = <>
        ItemIndex = 16
        Index = 1
      end
      object grdMasterDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = grdMasterDBLayoutView1Group_Root
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object grdMasterDBLayoutView1Group7: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup3
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Worker'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        Index = 2
      end
      object grdMasterDBLayoutView1AutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup2
        AlignHorz = ahClient
        Index = 0
      end
      object grdMasterDBLayoutView1Group8: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup3
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Storage'
        ButtonOptions.Buttons = <>
        Index = 1
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      GridView = grdMasterDBLayoutView1
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'EMaterai Config'
        Description = 'EMaterai Config'
      end>
    Left = 304
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsEMateraiConfig
  end
  inherited aclEditor: TActionList
    object actSave: TNAction
      Category = 'NActions'
      Caption = 'Save Config'
      ImageIndex = 10
      OnExecute = actSaveExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 285
          Visible = True
          ItemName = 'edConfigJson'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'Load Config'
    end
    object dxBarButton1: TdxBarButton
      Action = actSave
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object edConfigJson: TcxBarEditItem
      Caption = 'Config File'
      Category = 0
      Hint = 'Config File'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
  end
  object cdsEMateraiConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 224
    object cdsEMateraiConfigserver_port: TIntegerField
      FieldName = 'server_port'
    end
    object cdsEMateraiConfigdatabase_server: TStringField
      FieldName = 'database_server'
      Size = 500
    end
    object cdsEMateraiConfigdatabase_port: TIntegerField
      FieldName = 'database_port'
    end
    object cdsEMateraiConfigdatabase_name: TStringField
      FieldName = 'database_name'
      Size = 500
    end
    object cdsEMateraiConfigdatabase_schema: TStringField
      FieldName = 'database_schema'
    end
    object cdsEMateraiConfigdatabase_user: TStringField
      FieldName = 'database_user'
      Size = 500
    end
    object cdsEMateraiConfigdatabase_password: TStringField
      FieldName = 'database_password'
      Size = 500
    end
    object cdsEMateraiConfigdatabase_pool_size: TIntegerField
      FieldName = 'database_pool_size'
    end
    object cdsEMateraiConfigperuri_base_backend: TStringField
      FieldName = 'peruri_base_backend'
    end
    object cdsEMateraiConfigperuri_base_fileupload: TStringField
      FieldName = 'peruri_base_fileupload'
    end
    object cdsEMateraiConfigperuri_base_stampv2: TStringField
      FieldName = 'peruri_base_stampv2'
    end
    object cdsEMateraiConfigperuri_base_stampservice: TStringField
      FieldName = 'peruri_base_stampservice'
    end
    object cdsEMateraiConfigperuri_login_path: TStringField
      FieldName = 'peruri_login_path'
    end
    object cdsEMateraiConfigperuri_upload_path: TStringField
      FieldName = 'peruri_upload_path'
    end
    object cdsEMateraiConfigperuri_generate_sn_path: TStringField
      FieldName = 'peruri_generate_sn_path'
    end
    object cdsEMateraiConfigperuri_stamp_path: TStringField
      FieldName = 'peruri_stamp_path'
    end
    object cdsEMateraiConfigperuri_jenisdoc_path: TStringField
      FieldName = 'peruri_jenisdoc_path'
    end
    object cdsEMateraiConfigperuri_check_sn_path: TStringField
      FieldName = 'peruri_check_sn_path'
    end
    object cdsEMateraiConfigperuri_generate_qr_path: TStringField
      FieldName = 'peruri_generate_qr_path'
    end
    object cdsEMateraiConfigperuri_saldo_pos_path: TStringField
      FieldName = 'peruri_saldo_pos_path'
    end
    object cdsEMateraiConfigperuri_saldo_pemungut_path: TStringField
      FieldName = 'peruri_saldo_pemungut_path'
    end
    object cdsEMateraiConfigperuri_update_stamp_path: TStringField
      FieldName = 'peruri_update_stamp_path'
    end
    object cdsEMateraiConfigperuri_list_sn_path: TStringField
      FieldName = 'peruri_list_sn_path'
    end
    object cdsEMateraiConfigperuri_user: TStringField
      FieldName = 'peruri_user'
      Size = 500
    end
    object cdsEMateraiConfigperuri_password: TStringField
      FieldName = 'peruri_password'
      Size = 500
    end
    object cdsEMateraiConfigperuri_cache: TBooleanField
      FieldName = 'peruri_cache'
    end
    object cdsEMateraiConfigstorage_base_path: TStringField
      FieldName = 'storage_base_path'
      Size = 500
    end
    object cdsEMateraiConfigworker_worker_count: TIntegerField
      FieldName = 'worker_worker_count'
    end
    object cdsEMateraiConfigworker_batch_size: TIntegerField
      FieldName = 'worker_batch_size'
    end
    object cdsEMateraiConfigworker_dispatcher_interval_ms: TIntegerField
      FieldName = 'worker_dispatcher_interval_ms'
    end
  end
end
