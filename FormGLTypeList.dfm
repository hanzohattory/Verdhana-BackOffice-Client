inherited frmGLTypeList: TfrmGLTypeList
  Caption = 'GL Type'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterGLTYPE_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLTYPE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterGLTYPE_CODE: TcxGridDBBandedColumn
        Caption = 'GL Type Code'
        DataBinding.FieldName = 'GLTYPE_CODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterGLTYPE_DESC: TcxGridDBBandedColumn
        Caption = 'GL Type Description'
        DataBinding.FieldName = 'GLTYPE_DESC'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Last Modification Date'
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Last Modification User'
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarStatic
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[GL Type].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[GL Type].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[GL Type].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[GL Type].View'
      end
      item
        ActionName = 'actNew'
        Permission = 'Static Accounting'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Static Accounting'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Static Accounting'
      end>
    AssignedPermission = <
      item
        Name = 'Static Accounting'
        Description = 'Static Accounting'
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
    DataSet = cdsGLTypeHList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsGLTypeHList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAccounting_qryGLTypeHList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 176
    object cdsGLTypeHListGLTYPE_ID: TIntegerField
      FieldName = 'GLTYPE_ID'
      Required = True
    end
    object cdsGLTypeHListGLTYPE_CODE: TStringField
      FieldName = 'GLTYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsGLTypeHListGLTYPE_DESC: TStringField
      FieldName = 'GLTYPE_DESC'
      Required = True
      Size = 100
    end
    object cdsGLTypeHListMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsGLTypeHListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGLTypeHListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGLTypeHListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGLTypeHListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGLTypeHListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGLTypeHListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGLTypeHListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGLTypeHListID: TLargeintField
      FieldName = 'ID'
    end
  end
end
