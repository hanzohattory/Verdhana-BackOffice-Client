inherited frmReportAccountStatus: TfrmReportAccountStatus
  Caption = 'Account Status List'
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
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
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
            Description = 'Suspend'
            Value = 'S'
          end
          item
            Description = 'Close'
            Value = 'C'
          end
          item
            Description = 'Dorman'
            Value = 'D'
          end>
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterPRDDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDDESC'
        Width = 198
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCUST_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_TYPE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCTYPE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSALESCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESCODE'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSALESNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESNAME'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterTRADINGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADINGID'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterENTTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterKSEI_SID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_SID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterphone: TcxGridDBBandedColumn
        DataBinding.FieldName = 'phone'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterEMAIL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAIL'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterMAIN_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MAIN_ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMastermainAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mainAccountCode'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMastermainAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mainAccountName'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
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
    DataSet = cdsAccountStatusList
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Visible = False
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 151
          Visible = True
          ItemName = 'cmbAccountStatus'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    object cmbAccountStatus: TcxBarEditItem
      Caption = 'Account Status'
      Category = 0
      Hint = 'Account Status'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luAccountStatus
    end
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Account Management\AccountActiveList.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'ACCSTAT'
        ParamType = ptUnknown
      end>
  end
  object cdsAccountStatusList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ACC_STAT'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryAccountStatus'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 99
    Top = 159
    object cdsAccountStatusListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountStatusListACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountStatusListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountStatusListSIDNO: TStringField
      DisplayLabel = 'SID No.'
      FieldName = 'SIDNO'
      ReadOnly = True
    end
    object cdsAccountStatusListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      ReadOnly = True
      Size = 7
    end
    object cdsAccountStatusListPRDDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'PRDDESC'
      ReadOnly = True
      Size = 50
    end
    object cdsAccountStatusListCUST_TYPE: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUST_TYPE'
      ReadOnly = True
      Required = True
      Size = 19
    end
    object cdsAccountStatusListACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccountStatusListSALESCODE: TStringField
      DisplayLabel = 'Sales Code'
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsAccountStatusListSALESNAME: TStringField
      DisplayLabel = 'Sales Name'
      FieldName = 'SALESNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsAccountStatusListTRADINGID: TStringField
      DisplayLabel = 'Trading ID'
      FieldName = 'TRADINGID'
    end
    object cdsAccountStatusListENTTCODE: TStringField
      DisplayLabel = 'Entity Code'
      FieldName = 'ENTTCODE'
      ReadOnly = True
    end
    object cdsAccountStatusListKSEI_SID: TStringField
      DisplayLabel = 'SID No.'
      FieldName = 'KSEI_SID'
    end
    object cdsAccountStatusListphone: TStringField
      DisplayLabel = 'Phone'
      FieldName = 'phone'
      ReadOnly = True
      Size = 60
    end
    object cdsAccountStatusListEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 100
    end
    object cdsAccountStatusListMAIN_ACCID: TIntegerField
      DisplayLabel = 'Main Account ID'
      FieldName = 'MAIN_ACCID'
    end
    object cdsAccountStatusListmainAccountCode: TStringField
      DisplayLabel = 'Main Account Code'
      FieldName = 'mainAccountCode'
      Size = 30
    end
    object cdsAccountStatusListmainAccountName: TStringField
      DisplayLabel = 'Main Account Name'
      FieldName = 'mainAccountName'
      Size = 150
    end
  end
end
