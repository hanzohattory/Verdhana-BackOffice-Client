inherited frmOpenDormanList: TfrmOpenDormanList
  Caption = 'Opening Dorman'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterODID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ODID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSIDNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIDNO'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDCODE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACC_STS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACC_STS'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAccountType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountType'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterREMARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARK'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actReject'
        Permission = '[Opening Dorman].Reject'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Opening Dorman].Approve'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Opening Dorman].Copy From Selected Data'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Opening Dorman].Cancel'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Opening Dorman].Refresh'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Opening Dorman].Delete'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Opening Dorman].Edit'
      end
      item
        ActionName = 'actNew'
        Permission = '[Opening Dorman].New'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Opening Dorman].View'
      end
      item
        ActionName = 'actView'
        Permission = '[Opening Dorman].View Approval Data'
      end>
    Left = 302
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
    DataSet = cdsOpenDormanList
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
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    Control4Eyes = True
    MasterDataset = cdsOpenDorman
    ListDataset = cdsOpenDormanList
    MasterTableName = 'main.B_OPENDORMAN'
    UpdateTableName = 'appr.B_OPENDORMAN_UPD'
    Keys = <
      item
        FieldName = 'ODID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'ODID'
        SequenceName = 'TBL_B_OPENDORMAN'
        DataType = ftInteger
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsOpenDormanList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryOpenDormanList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 162
    Top = 78
    object cdsOpenDormanListODID: TIntegerField
      FieldName = 'ODID'
      Required = True
    end
    object cdsOpenDormanListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsOpenDormanListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsOpenDormanListSIDNO: TStringField
      DisplayLabel = 'SID No.'
      FieldName = 'SIDNO'
      ReadOnly = True
    end
    object cdsOpenDormanListPRDCODE: TStringField
      DisplayLabel = 'Product Code'
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsOpenDormanListACC_STS: TStringField
      DisplayLabel = 'Account Status'
      FieldName = 'ACC_STS'
      ReadOnly = True
      Size = 1
    end
    object cdsOpenDormanListAccountType: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'AccountType'
      ReadOnly = True
      Required = True
      Size = 33
    end
    object cdsOpenDormanListREMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      Size = 255
    end
  end
  object cdsOpenDorman: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryOpenDorman'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsOpenDormanBeforePost
    OnNewRecord = cdsOpenDormanNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 285
    Top = 75
    object cdsOpenDormanODID: TIntegerField
      FieldName = 'ODID'
      Required = True
    end
    object cdsOpenDormanACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsOpenDormanREMARK: TStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object cdsOpenDormanMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOpenDormanMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOpenDormanAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOpenDormanAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOpenDormanUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOpenDormanUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOpenDormanNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOpenDormanISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOpenDormanID: TLargeintField
      FieldName = 'ID'
    end
  end
end
