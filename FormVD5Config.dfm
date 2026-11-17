inherited frmVD5Configs: TfrmVD5Configs
  Caption = 'VD5 Config'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    LevelTabs.Style = 9
    RootLevelOptions.DetailTabsPosition = dtpTop
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterVD5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VD5'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBARIS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BARIS'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterKETERANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KETERANGAN'
        Width = 500
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterISGRUP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISGRUP'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterKELOMPOK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KELOMPOK'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterISTRANS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISTRANS'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterEDITED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EDITED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object gvwVD52Config: TcxGridDBBandedTableView [1]
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsVD52Config
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwVD52ConfigVD5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VD5'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwVD52ConfigBARIS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BARIS'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwVD52ConfigKETERANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KETERANGAN'
        Width = 500
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwVD52ConfigISGRUP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISGRUP'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwVD52ConfigKELOMPOK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KELOMPOK'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwVD52ConfigISTRANS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISTRANS'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwVD52ConfigEDITED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EDITED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'VD51'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'VD52'
      GridView = gvwVD52Config
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarStatic
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'VD5 Config Viewer'
      end
      item
        ActionName = 'actAddEditCOA'
        Permission = 'VD5 Config Maker'
      end>
    Top = 216
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
  inherited popMaster: TPopupMenu
    object AddEditCOAforVD51: TMenuItem [9]
      Action = actAddEditCOA
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsVD51Config
  end
  inherited aclEditor: TActionList
    object actAddEditCOA: TNAction
      Category = 'NActions'
      Caption = 'Add / Edit COA for VD5'
      OnExecute = actAddEditCOAExecute
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsVD51Config: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryVD51Config'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 80
    Top = 360
    object cdsVD51ConfigVD5: TStringField
      FieldName = 'VD5'
      Required = True
      Size = 5
    end
    object cdsVD51ConfigBARIS: TIntegerField
      DisplayLabel = 'Baris'
      FieldName = 'BARIS'
      Required = True
    end
    object cdsVD51ConfigKETERANGAN: TStringField
      DisplayLabel = 'Keterangan'
      FieldName = 'KETERANGAN'
      Required = True
      Size = 200
    end
    object cdsVD51ConfigISGRUP: TBooleanField
      DisplayLabel = 'Is Group'
      FieldName = 'ISGRUP'
    end
    object cdsVD51ConfigKELOMPOK: TIntegerField
      DisplayLabel = 'Kelompok'
      FieldName = 'KELOMPOK'
    end
    object cdsVD51ConfigISTRANS: TBooleanField
      DisplayLabel = 'Is Trans'
      FieldName = 'ISTRANS'
    end
    object cdsVD51ConfigEDITED: TStringField
      DisplayLabel = 'Editable'
      FieldName = 'EDITED'
      Size = 1
    end
  end
  object cdsVD52Config: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryVD52Config'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 360
    object cdsVD52ConfigVD5: TStringField
      FieldName = 'VD5'
      Required = True
      Size = 5
    end
    object cdsVD52ConfigBARIS: TIntegerField
      DisplayLabel = 'Baris'
      FieldName = 'BARIS'
      Required = True
    end
    object cdsVD52ConfigKETERANGAN: TStringField
      DisplayLabel = 'Keterangan'
      FieldName = 'KETERANGAN'
      Required = True
      Size = 200
    end
    object cdsVD52ConfigISGRUP: TBooleanField
      DisplayLabel = 'Is Group'
      FieldName = 'ISGRUP'
    end
    object cdsVD52ConfigKELOMPOK: TIntegerField
      DisplayLabel = 'Kelompok'
      FieldName = 'KELOMPOK'
    end
    object cdsVD52ConfigISTRANS: TBooleanField
      DisplayLabel = 'Is Trans'
      FieldName = 'ISTRANS'
    end
    object cdsVD52ConfigEDITED: TStringField
      DisplayLabel = 'Editable'
      FieldName = 'EDITED'
      Size = 1
    end
  end
  object dsVD52Config: TDataSource
    DataSet = cdsVD52Config
    Left = 336
    Top = 360
  end
end
