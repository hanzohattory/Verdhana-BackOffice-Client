inherited frmEmailConfigList: TfrmEmailConfigList
  Caption = 'Email Configuration'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      Bands = <
        item
          Caption = 'E-Mail Config'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Modification'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterEMAILTYPE: TcxGridDBBandedColumn
        Caption = 'Email Type'
        DataBinding.FieldName = 'EMAILTYPE'
        RepositoryItem = dmGlobal.luEmailTypes
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterEMAILTO: TcxGridDBBandedColumn
        Caption = 'Email To'
        DataBinding.FieldName = 'EMAILTO'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterEMAILCC: TcxGridDBBandedColumn
        Caption = 'Email CC'
        DataBinding.FieldName = 'EMAILCC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterEMAILBCC: TcxGridDBBandedColumn
        Caption = 'Email BCC'
        DataBinding.FieldName = 'EMAILBCC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterEMAILSUBJECT: TcxGridDBBandedColumn
        Caption = 'Email Subject'
        DataBinding.FieldName = 'EMAILSUBJECT'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterEMAILMESSAGE: TcxGridDBBandedColumn
        Caption = 'Email Message'
        DataBinding.FieldName = 'EMAILMESSAGE'
        Width = 149
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarAdmin
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[Email Configuration].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Email Configuration].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Email Configuration].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Email Configuration].View'
      end
      item
        ActionName = 'actNew'
        Permission = 'Email Configuration'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Email Configuration'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Email Configuration'
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
    DataSet = cdsEmailDraftList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsEmailDraft
    ListDataset = cdsEmailDraftList
    MasterTableName = 'dbo.B_EMAIL_DRAFT'
    Keys = <
      item
        FieldName = 'EMAILTYPE'
        FieldIndex = 0
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsEmailDraftList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryEmailDraftList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 120
    object cdsEmailDraftListEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Required = True
      Size = 10
    end
    object cdsEmailDraftListSMTPHOST: TStringField
      FieldName = 'SMTPHOST'
      Size = 100
    end
    object cdsEmailDraftListSMTPPORT: TIntegerField
      FieldName = 'SMTPPORT'
    end
    object cdsEmailDraftListSMTPUSERNAME: TStringField
      FieldName = 'SMTPUSERNAME'
      Size = 100
    end
    object cdsEmailDraftListSMTPPASSWORD: TStringField
      FieldName = 'SMTPPASSWORD'
      Size = 100
    end
    object cdsEmailDraftListEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsEmailDraftListEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsEmailDraftListEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsEmailDraftListEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEmailDraftListEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEmailDraftListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailDraftListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailDraftListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailDraftListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailDraftListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailDraftListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailDraftListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailDraftListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailDraftListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEmailDraft: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMAILTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryEmailDraft'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 168
    object cdsEmailDraftEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Required = True
      Size = 10
    end
    object cdsEmailDraftSMTPHOST: TStringField
      FieldName = 'SMTPHOST'
      Size = 100
    end
    object cdsEmailDraftSMTPPORT: TIntegerField
      FieldName = 'SMTPPORT'
    end
    object cdsEmailDraftSMTPUSERNAME: TStringField
      FieldName = 'SMTPUSERNAME'
      Size = 100
    end
    object cdsEmailDraftSMTPPASSWORD: TStringField
      FieldName = 'SMTPPASSWORD'
      Size = 100
    end
    object cdsEmailDraftEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsEmailDraftEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsEmailDraftEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsEmailDraftEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEmailDraftEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEmailDraftMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailDraftMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailDraftAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailDraftAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailDraftUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailDraftUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailDraftNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailDraftISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailDraftID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEmailDraftCUSGID: TIntegerField
      FieldName = 'CUSGID'
    end
  end
end
