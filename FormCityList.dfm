inherited frmCityList: TfrmCityList
  Caption = 'City'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    ExplicitTop = 73
    ExplicitHeight = 395
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCITYCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CITYCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCITYNAME: TcxGridDBBandedColumn
        Caption = 'Name'
        DataBinding.FieldName = 'CITYNAME'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPROVCODE: TcxGridDBBandedColumn
        Caption = 'Province'
        DataBinding.FieldName = 'PROVCODE'
        RepositoryItem = dmGlobal.luProvince
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[City].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[City].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[City].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[City].View'
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
    DataSet = cdsCityList
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
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
          UserWidth = 146
          Visible = True
          ItemName = 'cbCountry'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
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
      Caption = 'Load Data'
    end
    object cbCountry: TcxBarEditItem
      Caption = 'Country'
      Category = 0
      Hint = 'Country'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luCountry
    end
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    ListDataset = cdsCityList
    MasterTableName = 'main.B_CITY'
    Keys = <
      item
        FieldName = 'CITYCODE'
        FieldIndex = 0
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsCityList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'COUNTCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCityList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsCityListCITYCODE: TStringField
      FieldName = 'CITYCODE'
      Required = True
      Size = 10
    end
    object cdsCityListCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Size = 50
    end
    object cdsCityListPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Required = True
      Size = 10
    end
    object cdsCityListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCityListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCityListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCityListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCityListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCityListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCityListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCityListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCityListID: TLargeintField
      FieldName = 'ID'
    end
  end
end
