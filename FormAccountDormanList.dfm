inherited frmAccountDormanList: TfrmAccountDormanList
  Caption = 'Account Dorman'
  ClientWidth = 1012
  ExplicitWidth = 1012
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1012
    ExplicitWidth = 1012
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterADID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ADID'
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
      object gvwMasterREMARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARK'
        Width = 400
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterREQ_DORMAN_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REQ_DORMAN_DATE'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED: TcxGridDBBandedColumn
        Caption = 'Approved'
        DataBinding.FieldName = 'APPROVED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAPP_DORMAN_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APP_DORMAN_DATE'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterREQ_KSEI_ID: TcxGridDBBandedColumn
        Caption = 'Request KSEI ID'
        DataBinding.FieldName = 'REQ_KSEI_ID'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterREQ_KSEIID_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REQ_KSEIID_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterADNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ADNO'
        Width = 134
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterOLD_SUBREK001: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OLD_SUBREK001'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterOLD_SUBREK004: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OLD_SUBREK004'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterNEW_SUBREK001: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_SUBREK001'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterNEW_SUBREK004: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_SUBREK004'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterUPD_KSEI_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UPD_KSEI_DATE'
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = 'Account Dorman'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Account Dorman'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Account Dorman'
      end>
    AssignedPermission = <
      item
        Name = 'Account Dorman'
        Description = 'Account Dorman'
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
  inherited popMaster: TPopupMenu
    object SendDormanNoticeByMail1: TMenuItem [9]
      Action = actSendDormanByMail
    end
    object Approve1: TMenuItem [11]
      Action = actApprove
    end
    object actGenerateKSEIID1: TMenuItem [12]
      Action = actGenerateKSEIID
    end
    object GenerateKSEIFile1: TMenuItem [13]
      Action = actGenerateKSEIFile
    end
    object UpdateKSEISIDNo1: TMenuItem [14]
      Action = actUpdateSID
    end
    object N1: TMenuItem [15]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsAccountDormanList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
    inherited actApprove: TNAction
      OnExecute = actApproveExecute
    end
    object actGenerateKSEIID: TNAction
      Category = 'NActions'
      Caption = 'Generate KSEI No'
      OnExecute = actGenerateKSEIIDExecute
      OnUpdate = actGenerateKSEIIDUpdate
      CheckPermission = False
    end
    object actGenerateKSEIFile: TNAction
      Category = 'NActions'
      Caption = 'Generate KSEI File'
      OnExecute = actGenerateKSEIFileExecute
      OnUpdate = actGenerateKSEIFileUpdate
      CheckPermission = False
    end
    object actSendDormanByMail: TNAction
      Category = 'NActions'
      Caption = 'Send Dorman Notice By Mail'
      OnExecute = actSendDormanByMailExecute
      CheckPermission = False
    end
    object actUpdateSID: TNAction
      Category = 'NActions'
      Caption = 'Update KSEI SID No'
      OnExecute = actUpdateSIDExecute
      OnUpdate = actUpdateSIDUpdate
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsAccountDormanList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryAccountDormanList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 152
    object cdsAccountDormanListADID: TLargeintField
      FieldName = 'ADID'
      Required = True
    end
    object cdsAccountDormanListACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountDormanListREMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      Size = 255
    end
    object cdsAccountDormanListREQ_DORMAN_DATE: TDateTimeField
      DisplayLabel = 'Request Account Dorman'
      FieldName = 'REQ_DORMAN_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAccountDormanListAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object cdsAccountDormanListAPP_DORMAN_DATE: TDateTimeField
      DisplayLabel = 'Approve Account Dorman'
      FieldName = 'APP_DORMAN_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAccountDormanListREQ_KSEI_ID: TStringField
      FieldName = 'REQ_KSEI_ID'
      Size = 4
    end
    object cdsAccountDormanListREQ_KSEIID_DATE: TDateTimeField
      DisplayLabel = 'Request KSEI ID Date'
      FieldName = 'REQ_KSEIID_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAccountDormanListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountDormanListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountDormanListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountDormanListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountDormanListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountDormanListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountDormanListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountDormanListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountDormanListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountDormanListACCCODE: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsAccountDormanListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsAccountDormanListADNO: TStringField
      DisplayLabel = 'Dorman No'
      FieldName = 'ADNO'
      Size = 30
    end
    object cdsAccountDormanListBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
      ReadOnly = True
    end
    object cdsAccountDormanListOLD_SUBREK001: TStringField
      DisplayLabel = 'Old SubRek 001'
      FieldName = 'OLD_SUBREK001'
      Size = 30
    end
    object cdsAccountDormanListOLD_SUBREK004: TStringField
      DisplayLabel = 'Old SubRek 004'
      FieldName = 'OLD_SUBREK004'
      Size = 30
    end
    object cdsAccountDormanListNEW_SUBREK001: TStringField
      DisplayLabel = 'New SubRek 001'
      FieldName = 'NEW_SUBREK001'
      Size = 30
    end
    object cdsAccountDormanListNEW_SUBREK004: TStringField
      DisplayLabel = 'New SubRek 004'
      FieldName = 'NEW_SUBREK004'
      Size = 30
    end
    object cdsAccountDormanListUPD_KSEI_DATE: TDateField
      DisplayLabel = 'Update Subrek Date'
      FieldName = 'UPD_KSEI_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object cdsLastNo: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BUSTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'EVENTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryLastCode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 260
    Top = 149
    object cdsLastNoBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsLastNoEVENTID: TLargeintField
      FieldName = 'EVENTID'
      Required = True
    end
    object cdsLastNoLASTCODE: TStringField
      FieldName = 'LASTCODE'
      Size = 4
    end
    object cdsLastNoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLastNoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLastNoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLastNoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLastNoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLastNoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLastNoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLastNoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLastNoID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsKSEIInstitutionalAccountRequest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ADID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountDormanInsReqKSEI'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 280
  end
  object cdsKSEIIndividualAccountRequest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ADID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountDormanIndReqKSEI'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 232
  end
  object cdsKSEI_SDIA: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ADID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SUBREK'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEI_SDIA_AccountDorman'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 328
  end
  object cdsAccountDorman: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ADID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountDorman'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 160
    Top = 152
    object cdsAccountDormanADID: TLargeintField
      FieldName = 'ADID'
      Required = True
    end
    object cdsAccountDormanADNO: TStringField
      FieldName = 'ADNO'
      Size = 30
    end
    object cdsAccountDormanACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountDormanREMARK: TStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object cdsAccountDormanREQ_DORMAN_DATE: TDateTimeField
      FieldName = 'REQ_DORMAN_DATE'
    end
    object cdsAccountDormanAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object cdsAccountDormanAPP_DORMAN_DATE: TDateTimeField
      FieldName = 'APP_DORMAN_DATE'
    end
    object cdsAccountDormanREQ_KSEI_ID: TStringField
      FieldName = 'REQ_KSEI_ID'
      Size = 4
    end
    object cdsAccountDormanREQ_KSEIID_DATE: TDateTimeField
      FieldName = 'REQ_KSEIID_DATE'
    end
    object cdsAccountDormanMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountDormanMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountDormanAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountDormanAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountDormanUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountDormanUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountDormanNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountDormanISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountDormanID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountDormanACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsAccountDormanACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNO'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsAccountDormanOLD_SUBREK001: TStringField
      FieldName = 'OLD_SUBREK001'
      Size = 30
    end
    object cdsAccountDormanOLD_SUBREK004: TStringField
      FieldName = 'OLD_SUBREK004'
      Size = 30
    end
    object cdsAccountDormanNEW_SUBREK001: TStringField
      FieldName = 'NEW_SUBREK001'
      Size = 30
    end
    object cdsAccountDormanNEW_SUBREK004: TStringField
      FieldName = 'NEW_SUBREK004'
      Size = 30
    end
    object cdsAccountDormanUPD_KSEI_DATE: TDateField
      FieldName = 'UPD_KSEI_DATE'
    end
  end
end
