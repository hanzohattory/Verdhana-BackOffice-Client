inherited frmMTITransList: TfrmMTITransList
  Caption = 'MTI Transaction'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterTRANSCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'TRANSCODE'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 622
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTRANSTYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TRANSTYPE'
        RepositoryItem = dmGlobal.luMTITransType
        Width = 88
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
        Permission = '[MTI Transaction].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[MTI Transaction].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[MTI Transaction].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[MTI Transaction].View'
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
  inherited popMaster: TPopupMenu
    object SetMTITransactionRecord1: TMenuItem [9]
      Action = actSetTransRec
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsMTITransList
  end
  inherited aclEditor: TActionList
    object actSetTransRec: TNAction
      Category = 'NActions'
      Caption = 'Set MTI Transaction Record'
      OnExecute = actSetTransRecExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsMTITrans
    ListDataset = cdsMTITransList
    MasterTableName = 'main.B_MTI_TRANS'
    Keys = <
      item
        FieldName = 'TRANSID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'TRANSID'
        SequenceName = 'TBL_B_MTI_TRANS'
        DataType = ftInteger
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsMTITransList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryMTITransList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 112
    object cdsMTITransListTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsMTITransListTRANSCODE: TStringField
      FieldName = 'TRANSCODE'
      Required = True
      Size = 50
    end
    object cdsMTITransListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsMTITransListTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Required = True
      Size = 1
    end
    object cdsMTITransListSOURCEDATA: TMemoField
      FieldName = 'SOURCEDATA'
      BlobType = ftMemo
    end
    object cdsMTITransListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTITransListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTITransListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTITransListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTITransListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTITransListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTITransListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTITransListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTITransListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsMTITrans: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TRANSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTITrans'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 160
    object cdsMTITransTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsMTITransTRANSCODE: TStringField
      FieldName = 'TRANSCODE'
      Required = True
      Size = 50
    end
    object cdsMTITransDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsMTITransTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Required = True
      Size = 1
    end
    object cdsMTITransSOURCEDATA: TMemoField
      FieldName = 'SOURCEDATA'
      BlobType = ftMemo
    end
    object cdsMTITransMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTITransMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTITransAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTITransAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTITransUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTITransUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTITransNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTITransISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTITransID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsMTITransRecord: TNClientDataset
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsMTITransRecordIndex1'
        Fields = 'SEQID'
        Source = 'SEQID'
      end>
    IndexName = 'cdsMTITransRecordIndex1'
    Params = <
      item
        DataType = ftInteger
        Name = 'TRANSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTITransRecord'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    BeforePost = cdsMTITransRecordBeforePost
    OnNewRecord = cdsMTITransRecordNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 160
    object cdsMTITransRecordTRANS_RECORD_ID: TIntegerField
      FieldName = 'TRANS_RECORD_ID'
      Required = True
    end
    object cdsMTITransRecordTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsMTITransRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTITransRecordSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsMTITransRecordMINREC: TIntegerField
      FieldName = 'MINREC'
      Required = True
    end
    object cdsMTITransRecordMAXREC: TIntegerField
      FieldName = 'MAXREC'
      Required = True
    end
    object cdsMTITransRecordNUM_FIELDS: TIntegerField
      FieldName = 'NUM_FIELDS'
    end
    object cdsMTITransRecordREQ_FIELDS: TIntegerField
      FieldName = 'REQ_FIELDS'
    end
    object cdsMTITransRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTITransRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTITransRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTITransRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTITransRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTITransRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTITransRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTITransRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTITransRecordID: TLargeintField
      FieldName = 'ID'
    end
  end
end
