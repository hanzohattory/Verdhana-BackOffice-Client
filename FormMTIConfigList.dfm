inherited frmMTIConfigList: TfrmMTIConfigList
  Caption = 'MTI File Configuration'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCONFIGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIGID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCONFIGCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CONFIGCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTRANSID: TcxGridDBBandedColumn
        Caption = 'Transaction'
        DataBinding.FieldName = 'TRANSID'
        RepositoryItem = dmGlobal.luMTITrans
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[MTI File Configuration].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[MTI File Configuration].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[MTI File Configuration].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[MTI File Configuration].View'
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
    DataSet = cdsMTIConfigList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsMTIConfig
    ListDataset = cdsMTIConfigList
    DetailsData = <
      item
        DetailDataset = cdsMTIConfigRecord
        DetailTableName = 'main.B_MTI_CONFIG_RECORD'
        DetailKeys = <
          item
            FieldName = 'CONFIG_RECORD_ID'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_MTI_CONFIG_TRANS'
    Keys = <
      item
        FieldName = 'CONFIGID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CONFIGID'
        SequenceName = 'TBL_B_MTI_CONFIG_TRANS'
        DataType = ftInteger
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsMTIConfigList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryMTIConfigList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 104
    object cdsMTIConfigListCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsMTIConfigListCONFIGCODE: TStringField
      FieldName = 'CONFIGCODE'
      Required = True
      Size = 50
    end
    object cdsMTIConfigListTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsMTIConfigListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsMTIConfigListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsMTIConfig: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONFIGID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTIConfig'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 152
    object cdsMTIConfigCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsMTIConfigCONFIGCODE: TStringField
      FieldName = 'CONFIGCODE'
      Required = True
      Size = 50
    end
    object cdsMTIConfigTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsMTIConfigDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsMTIConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMTIConfigqryMTIConfigRecord: TDataSetField
      FieldName = 'qryMTIConfigRecord'
    end
  end
  object cdsMTIConfigRecord: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMTIConfigqryMTIConfigRecord
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 104
    object cdsMTIConfigRecordCONFIG_RECORD_ID: TIntegerField
      FieldName = 'CONFIG_RECORD_ID'
      Required = True
    end
    object cdsMTIConfigRecordCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsMTIConfigRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIConfigRecordSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsMTIConfigRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigRecordID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMTIConfigRecordqryMTIConfigField: TDataSetField
      FieldName = 'qryMTIConfigField'
    end
    object cdsLuMTITransRecordMINREC: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MINREC'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'MINREC'
      KeyFields = 'RECORDID'
      Required = True
      Lookup = True
    end
    object cdsLuMTITransRecordMAXREC: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MAXREC'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'MAXREC'
      KeyFields = 'RECORDID'
      Required = True
      Lookup = True
    end
    object cdsLuMTITransRecordNUM_FIELDS: TIntegerField
      FieldKind = fkLookup
      FieldName = 'NUM_FIELDS'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'NUM_FIELDS'
      KeyFields = 'RECORDID'
      Lookup = True
    end
    object cdsLuMTITransRecordREQ_FIELDS: TIntegerField
      FieldKind = fkLookup
      FieldName = 'REQ_FIELDS'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'REQ_FIELDS'
      KeyFields = 'RECORDID'
      Lookup = True
    end
  end
  object cdsMTIConfigField: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMTIConfigRecordqryMTIConfigField
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 152
    object cdsMTIConfigFieldCONFIG_RECORD_ID: TIntegerField
      FieldName = 'CONFIG_RECORD_ID'
      Required = True
    end
    object cdsMTIConfigFieldFIELDID: TIntegerField
      FieldName = 'FIELDID'
      Required = True
    end
    object cdsMTIConfigFieldSOURCEDATA: TStringField
      FieldName = 'SOURCEDATA'
      Required = True
      Size = 1
    end
    object cdsMTIConfigFieldSOURCEVALUE: TStringField
      FieldName = 'SOURCEVALUE'
      Size = 100
    end
    object cdsMTIConfigFieldMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigFieldMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigFieldAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigFieldAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigFieldUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigFieldUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigFieldNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigFieldISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigFieldID: TLargeintField
      FieldName = 'ID'
    end
  end
end
