inherited frmCompanyBankList: TfrmCompanyBankList
  Caption = 'Company Bank'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBANKTYPE: TcxGridDBBandedColumn
        Caption = 'Bank Type'
        DataBinding.FieldName = 'BANKTYPE'
        RepositoryItem = dmGlobal.luCompanyBankType
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BANKACCNO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BANKACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBANKBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Branch'
        DataBinding.FieldName = 'BANKBRANCH'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Active'
        DataBinding.FieldName = 'STAT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterBNNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterDEFAULT_BANK: TcxGridDBBandedColumn
        Caption = 'Default'
        DataBinding.FieldName = 'DEFAULT_BANK'
        RepositoryItem = dmGlobal.chkStandard
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterGLACCOUNTID: TcxGridDBBandedColumn
        Caption = 'GL Account'
        DataBinding.FieldName = 'GLACCOUNTID'
        RepositoryItem = dmGlobal.luGLAccountNo
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCOA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COA'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[Company Bank].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Company Bank].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Company Bank].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Company Bank].View'
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
    DataSet = cdsCompanyBankList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsCompanyBankList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryCompanyBankList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 168
    object cdsCompanyBankListBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsCompanyBankListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCompanyBankListBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsCompanyBankListBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsCompanyBankListBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsCompanyBankListBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsCompanyBankListSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsCompanyBankListBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsCompanyBankListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCompanyBankListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCompanyBankListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCompanyBankListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCompanyBankListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCompanyBankListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCompanyBankListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCompanyBankListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCompanyBankListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCompanyBankListBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldKind = fkLookup
      FieldName = 'BNNAME'
      LookupDataSet = dmLookup.cdsLuBank
      LookupKeyFields = 'BNCODE'
      LookupResultField = 'BNNAME'
      KeyFields = 'BNCODE'
      Size = 50
      Lookup = True
    end
    object cdsCompanyBankListDEFAULT_BANK: TIntegerField
      FieldName = 'DEFAULT_BANK'
      ReadOnly = True
      Required = True
    end
    object cdsCompanyBankListGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsCompanyBankListCOA: TStringField
      DisplayLabel = 'GL Account'
      FieldName = 'COA'
    end
  end
end
