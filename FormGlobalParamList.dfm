inherited frmGlobalParamList: TfrmGlobalParamList
  Caption = 'Global Parameter'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsSelection.MultiSelect = False
      object gvwMasterPRMID: TcxGridDBBandedColumn
        Caption = 'Param ID'
        DataBinding.FieldName = 'PRMID'
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPRMNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRMNAME'
        Width = 268
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterVALUES: TcxGridDBBandedColumn
        Caption = 'Values'
        DataBinding.FieldName = 'VALUES'
        Width = 430
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterEDIT: TcxGridDBBandedColumn
        Caption = 'Editable'
        DataBinding.FieldName = 'EDIT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Global Param View'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Global Param Editor'
      end>
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
    DataSet = cdsGlobalParamList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsGlobalParamList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryGlobalParamList'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsGlobalParamListAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsGlobalParamListPRMID: TStringField
      FieldName = 'PRMID'
      Required = True
    end
    object cdsGlobalParamListPRMNAME: TStringField
      DisplayLabel = 'Parameter Name'
      FieldName = 'PRMNAME'
      Size = 50
    end
    object cdsGlobalParamListPRMTY: TStringField
      FieldName = 'PRMTY'
      Size = 1
    end
    object cdsGlobalParamListAPPTYPE: TStringField
      FieldName = 'APPTYPE'
      Size = 1
    end
    object cdsGlobalParamListINTVAL: TIntegerField
      DisplayLabel = 'Integer Value'
      FieldName = 'INTVAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGlobalParamListFLOATVAL: TFloatField
      DisplayLabel = 'Float Value'
      FieldName = 'FLOATVAL'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsGlobalParamListSTRVAL: TStringField
      DisplayLabel = 'String Value'
      FieldName = 'STRVAL'
      Size = 250
    end
    object cdsGlobalParamListDATEVAL: TDateTimeField
      DisplayLabel = 'Date Time Value'
      FieldName = 'DATEVAL'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsGlobalParamListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGlobalParamListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGlobalParamListINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsGlobalParamListINSUI: TStringField
      FieldName = 'INSUI'
      Size = 30
    end
    object cdsGlobalParamListSHOW: TStringField
      FieldName = 'SHOW'
      Size = 1
    end
    object cdsGlobalParamListEDIT: TStringField
      FieldName = 'EDIT'
      Size = 1
    end
    object cdsGlobalParamListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGlobalParamListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGlobalParamListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGlobalParamListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGlobalParamListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGlobalParamListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGlobalParamListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGlobalParamListVALUES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VALUES'
      Size = 250
    end
  end
end
