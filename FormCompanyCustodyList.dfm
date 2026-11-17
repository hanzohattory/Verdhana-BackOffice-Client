inherited frmCompanyCustodyList: TfrmCompanyCustodyList
  Caption = 'Company Custody'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCUSTODYID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYTYPE'
        Visible = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYCODE'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYBRANCH'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Active'
            ImageIndex = 0
            Value = 'A'
          end
          item
            Description = 'Close'
            Value = 'C'
          end>
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMastercustodyTypeDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'custodyTypeDesc'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarAdmin
    AssignedPermission = <
      item
        Name = 'Company Custody'
        Description = 'Company Custody'
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
    DataSet = cdsCompanyCustodyList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsCompanyCustodyList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryCompanyCustodyList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 224
    object cdsCompanyCustodyListCUSTODYID: TIntegerField
      DisplayLabel = 'Custody ID'
      FieldName = 'CUSTODYID'
      Required = True
    end
    object cdsCompanyCustodyListCUSTODYTYPE: TStringField
      DisplayLabel = 'Custody Type'
      FieldName = 'CUSTODYTYPE'
      Required = True
      Size = 3
    end
    object cdsCompanyCustodyListCUSTODYCODE: TStringField
      DisplayLabel = 'Custody Code'
      FieldName = 'CUSTODYCODE'
      Required = True
      Size = 10
    end
    object cdsCompanyCustodyListCUSTODYACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'CUSTODYACCNO'
      Required = True
    end
    object cdsCompanyCustodyListCUSTODYACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'CUSTODYACCNAME'
      Size = 150
    end
    object cdsCompanyCustodyListCUSTODYBRANCH: TStringField
      DisplayLabel = 'Branch'
      FieldName = 'CUSTODYBRANCH'
      Size = 150
    end
    object cdsCompanyCustodyListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsCompanyCustodyListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCompanyCustodyListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCompanyCustodyListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCompanyCustodyListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCompanyCustodyListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCompanyCustodyListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCompanyCustodyListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCompanyCustodyListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCompanyCustodyListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCompanyCustodyListcustodyTypeDesc: TStringField
      DisplayLabel = 'Custody Type Desc'
      FieldName = 'custodyTypeDesc'
      ReadOnly = True
      Size = 10
    end
  end
end
