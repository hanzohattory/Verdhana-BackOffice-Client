inherited frmMTIRecordList: TfrmMTIRecordList
  Caption = 'MTI Records'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterRECORDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RECORDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRECORDNAME: TcxGridDBBandedColumn
        Caption = 'Record Name'
        DataBinding.FieldName = 'RECORDNAME'
        Width = 160
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDECSRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DECSRIPTION'
        Width = 609
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
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
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[MTI Records].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[MTI Records].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[MTI Records].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[MTI Records].View'
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
    DataSet = cdsMTIRecordList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsMTIRecord
    ListDataset = cdsMTIRecordList
    DetailsData = <
      item
        DetailDataset = cdsMTIField
        DetailTableName = 'main.B_MTI_FIELD'
        DetailKeys = <
          item
            FieldName = 'FIELDID'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_MTI_RECORD'
    Keys = <
      item
        FieldName = 'RECORDID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'RECORDID'
        SequenceName = 'TBL_B_MTI_RECORD'
        DataType = ftInteger
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsMTIRecordList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryMTIRecordList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 112
    object cdsMTIRecordListRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIRecordListRECORDNAME: TStringField
      FieldName = 'RECORDNAME'
      Required = True
      Size = 50
    end
    object cdsMTIRecordListDECSRIPTION: TStringField
      FieldName = 'DECSRIPTION'
      Size = 250
    end
    object cdsMTIRecordListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIRecordListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIRecordListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIRecordListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIRecordListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIRecordListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIRecordListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIRecordListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIRecordListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsMTIRecord: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'RECORDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTIRecord'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 160
    object cdsMTIRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIRecordRECORDNAME: TStringField
      FieldName = 'RECORDNAME'
      Required = True
      Size = 50
    end
    object cdsMTIRecordDECSRIPTION: TStringField
      FieldName = 'DECSRIPTION'
      Size = 250
    end
    object cdsMTIRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIRecordID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMTIRecordqryMTIField: TDataSetField
      FieldName = 'qryMTIField'
    end
  end
  object cdsMTIField: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMTIRecordqryMTIField
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsMTIFieldIndex1'
        Fields = 'SEQID'
        Source = 'SEQID'
      end>
    Params = <>
    StoreDefs = True
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 160
    object cdsMTIFieldFIELDID: TIntegerField
      FieldName = 'FIELDID'
      Required = True
    end
    object cdsMTIFieldRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIFieldSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsMTIFieldFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 50
    end
    object cdsMTIFieldXMLFIELDNAME: TStringField
      FieldName = 'XMLFIELDNAME'
      Size = 100
    end
    object cdsMTIFieldSYNTAX: TStringField
      FieldName = 'SYNTAX'
    end
    object cdsMTIFieldMOC: TStringField
      FieldName = 'MOC'
      Required = True
      Size = 1
    end
    object cdsMTIFieldNOTES: TStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsMTIFieldMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIFieldMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIFieldAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIFieldAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIFieldUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIFieldUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIFieldNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIFieldISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIFieldID: TLargeintField
      FieldName = 'ID'
    end
  end
end
