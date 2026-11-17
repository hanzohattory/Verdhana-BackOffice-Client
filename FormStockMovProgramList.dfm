inherited frmStockMovementProgramList: TfrmStockMovementProgramList
  Caption = 'Stock Movement Program'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterprog_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'prog_id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterprogName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'progName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterprogDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'progDesc'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterINSDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSDA'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterINSUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSUI'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarStatic
    Actions = <
      item
        ActionName = 'actNew'
        Permission = 'Stock Movement Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Stock Movement Maker'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Stock Movement Maker'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Stock Movement Viewer'
      end
      item
        ActionName = 'actNew'
        Permission = 'Stock Movement Program Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Stock Movement Program Maker'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Stock Movement Program Maker'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Stock Movement Program Viewer'
      end>
    Left = 288
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
    DataSet = cdsStockMoveProgramList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    MasterDataset = frmStockMovementProgram.cdsStockMovProgram
    ListDataset = cdsStockMoveProgramList
    MasterTableName = 'main.B_MOVEMENT_PROGRAM'
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsStockMoveProgramList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmStockManagement_qryMovementProgramList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 520
    Top = 224
    object cdsStockMoveProgramListprog_id: TLargeintField
      FieldName = 'prog_id'
      Required = True
    end
    object cdsStockMoveProgramListprogName: TStringField
      DisplayLabel = 'Program Name'
      FieldName = 'progName'
      Required = True
      Size = 200
    end
    object cdsStockMoveProgramListprogDesc: TStringField
      DisplayLabel = 'Program Description'
      FieldName = 'progDesc'
      Size = 250
    end
    object cdsStockMoveProgramListINSDA: TDateField
      DisplayLabel = 'Insert Date'
      FieldName = 'INSDA'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockMoveProgramListINSUI: TStringField
      DisplayLabel = 'Insert User'
      FieldName = 'INSUI'
    end
    object cdsStockMoveProgramListMODDA: TDateField
      DisplayLabel = 'Modification Date'
      FieldName = 'MODDA'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockMoveProgramListMODUI: TStringField
      DisplayLabel = 'Modification User'
      FieldName = 'MODUI'
    end
  end
end
