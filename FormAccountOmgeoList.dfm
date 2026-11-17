inherited frmAccountOmgeoList: TfrmAccountOmgeoList
  Caption = 'Account Omgeo Configuration'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterENTTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterINVTYPE: TcxGridDBBandedColumn
        Caption = 'Inv. Type'
        DataBinding.FieldName = 'INVTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBUSSTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BUSSTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTC_MODEL: TcxGridDBBandedColumn
        Caption = 'TC Model'
        DataBinding.FieldName = 'TC_MODEL'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterA_CLS_ORDER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'A_CLS_ORDER'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAVGPRICEDEC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVGPRICEDEC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OMNIBUSTRADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCASHKEEP: TcxGridDBBandedColumn
        Caption = 'Cash Keep'
        DataBinding.FieldName = 'CASHKEEP'
        RepositoryItem = dmGlobal.chkStandard
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKKEEP: TcxGridDBBandedColumn
        Caption = 'Stock Keep'
        DataBinding.FieldName = 'STOCKKEEP'
        RepositoryItem = dmGlobal.chkStandard
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterACC_STS: TcxGridDBBandedColumn
        Caption = 'Account Status'
        DataBinding.FieldName = 'ACC_STS'
        RepositoryItem = dmGlobal.luAccountStatus
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterOMGUSE: TcxGridDBBandedColumn
        Caption = 'Omgeo Use'
        DataBinding.FieldName = 'OMGUSE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterOMGEXREFFCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OMGEXREFFCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterOMGALERT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OMGALERT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterOMGSENDSSI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OMGSENDSSI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterOMGSENDFEEINBLOCK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OMGSENDFEEINBLOCK'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterKSEI_SID: TcxGridDBBandedColumn
        Caption = 'KSEI SID'
        DataBinding.FieldName = 'KSEI_SID'
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterENTTCODE: TcxGridDBBandedColumn
        Caption = 'Entity Code'
        DataBinding.FieldName = 'ENTTCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterENTNAME: TcxGridDBBandedColumn
        Caption = 'Entity Name'
        DataBinding.FieldName = 'ENTNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterENTTDESC: TcxGridDBBandedColumn
        Caption = 'Entity Description'
        DataBinding.FieldName = 'ENTTDESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actSetOmgeoConfig'
        Permission = '[Account Omgeo Configuration].Set Omgeo Configuration'
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
    object SetOmgeoConfiguration1: TMenuItem [9]
      Action = actSetOmgeoConfig
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsAccOmgeoList
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actInsertFromCurrentData: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actOpen: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    object actSetOmgeoConfig: TNAction
      Category = 'NActions'
      Caption = 'Set Omgeo Configuration'
      OnExecute = actSetOmgeoConfigExecute
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsAccountOmgeo
    ListDataset = cdsAccOmgeoList
    MasterTableName = 'main.B_ACCOUNT'
  end
  object cdsAccOmgeoList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryAccOmgeoList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 120
    object cdsAccOmgeoListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccOmgeoListENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccOmgeoListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccOmgeoListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccOmgeoListACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsAccOmgeoListACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccOmgeoListACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsAccOmgeoListBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsAccOmgeoListINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsAccOmgeoListBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsAccOmgeoListTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsAccOmgeoListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsAccOmgeoListA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsAccOmgeoListAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsAccOmgeoListOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsAccOmgeoListCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsAccOmgeoListSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsAccOmgeoListISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsAccOmgeoListISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsAccOmgeoListISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsAccOmgeoListISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsAccOmgeoListISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsAccOmgeoListAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsAccOmgeoListSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsAccOmgeoListACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsAccOmgeoListOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsAccOmgeoListOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsAccOmgeoListOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsAccOmgeoListOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsAccOmgeoListOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsAccOmgeoListSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsAccOmgeoListALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsAccOmgeoListTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsAccOmgeoListLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsAccOmgeoListTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsAccOmgeoListTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsAccOmgeoListCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsAccOmgeoListCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsAccOmgeoListCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsAccOmgeoListBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsAccOmgeoListSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsAccOmgeoListIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsAccOmgeoListTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsAccOmgeoListDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsAccOmgeoListKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsAccOmgeoListRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsAccOmgeoListRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsAccOmgeoListRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsAccOmgeoListFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsAccOmgeoListTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsAccOmgeoListTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsAccOmgeoListACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsAccOmgeoListCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsAccOmgeoListBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsAccOmgeoListINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsAccOmgeoListINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsAccOmgeoListALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsAccOmgeoListTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsAccOmgeoListAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsAccOmgeoListDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsAccOmgeoListSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsAccOmgeoListNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsAccOmgeoListSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsAccOmgeoListDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsAccOmgeoListDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsAccOmgeoListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccOmgeoListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccOmgeoListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccOmgeoListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccOmgeoListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccOmgeoListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccOmgeoListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccOmgeoListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccOmgeoListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccOmgeoListRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsAccOmgeoListEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsAccOmgeoListSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsAccOmgeoListMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsAccOmgeoListAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsAccOmgeoListREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsAccOmgeoListREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
    object cdsAccOmgeoListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
    end
    object cdsAccOmgeoListENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 200
    end
    object cdsAccOmgeoListENTTDESC: TStringField
      FieldName = 'ENTTDESC'
      ReadOnly = True
      Size = 223
    end
  end
  object cdsAccountOmgeo: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryAccountOmgeo'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 168
    object cdsAccountOmgeoACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountOmgeoENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccountOmgeoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountOmgeoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountOmgeoACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsAccountOmgeoACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccountOmgeoACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsAccountOmgeoBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsAccountOmgeoINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsAccountOmgeoBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsAccountOmgeoTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsAccountOmgeoPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsAccountOmgeoA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsAccountOmgeoAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsAccountOmgeoOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsAccountOmgeoCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsAccountOmgeoSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsAccountOmgeoISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsAccountOmgeoISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsAccountOmgeoISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsAccountOmgeoISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsAccountOmgeoISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsAccountOmgeoAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsAccountOmgeoSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsAccountOmgeoACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsAccountOmgeoOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsAccountOmgeoOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsAccountOmgeoOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsAccountOmgeoOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsAccountOmgeoOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsAccountOmgeoSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsAccountOmgeoALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsAccountOmgeoTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsAccountOmgeoLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsAccountOmgeoTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsAccountOmgeoTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsAccountOmgeoCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsAccountOmgeoCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsAccountOmgeoCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsAccountOmgeoBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsAccountOmgeoSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsAccountOmgeoIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsAccountOmgeoTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsAccountOmgeoDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsAccountOmgeoKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsAccountOmgeoRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsAccountOmgeoRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsAccountOmgeoRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsAccountOmgeoFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsAccountOmgeoTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsAccountOmgeoTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsAccountOmgeoACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsAccountOmgeoCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsAccountOmgeoBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsAccountOmgeoINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsAccountOmgeoINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsAccountOmgeoALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsAccountOmgeoTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsAccountOmgeoAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsAccountOmgeoDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsAccountOmgeoSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsAccountOmgeoNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsAccountOmgeoSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsAccountOmgeoDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsAccountOmgeoDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsAccountOmgeoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountOmgeoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountOmgeoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountOmgeoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountOmgeoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountOmgeoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountOmgeoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountOmgeoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountOmgeoID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountOmgeoRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsAccountOmgeoEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsAccountOmgeoSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsAccountOmgeoMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsAccountOmgeoAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsAccountOmgeoREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsAccountOmgeoREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
  end
  object cdsAccOmgeoConfig: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryAccOmgeoConfig'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsAccOmgeoConfigNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 168
    object cdsAccOmgeoConfigACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccOmgeoConfigTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsAccOmgeoConfigCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsAccOmgeoConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccOmgeoConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccOmgeoConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccOmgeoConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccOmgeoConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccOmgeoConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccOmgeoConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccOmgeoConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccOmgeoConfigID: TLargeintField
      FieldName = 'ID'
    end
  end
end
