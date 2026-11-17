inherited frmWaveInterestPenaltyList: TfrmWaveInterestPenaltyList
  Caption = 'Wave Interest & Penalty'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Invoice Information'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Waved'
        end
        item
          Caption = 'Canceled'
        end>
      object gvwMasterWaveID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WaveID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterWaveCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WaveCode'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterWaveType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WaveType'
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterDescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Description'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterEntryDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EntryDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCcy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ccy'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterInterestAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InterestAmount'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountCode'
        Width = 126
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAccountType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountType'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterTransactionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterTransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionNo'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterPrincipalzedSystemDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrincipalzedSystemDate'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPrincipalzedServerDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrincipalzedServerDate'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPrincipalzedUser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrincipalzedUser'
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCanceledSystemDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CanceledSystemDate'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCanceledServerDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CanceledServerDate'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCanceledUser: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CanceledUser'
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCanceledNotes: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CanceledNotes'
        Width = 200
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Wave Interest Interest Penalty Viewer'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Wave Interest Interest Penalty Canceler'
      end>
    Left = 304
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
    object Cancel1: TMenuItem [9]
      Action = actCancel
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsWaveInterestPenaltyList
  end
  inherited aclEditor: TActionList
    inherited actCancel: TNAction
      Enabled = True
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsWaveInterestPenaltyList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmFinance_qryWaveInterestPenaltyList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsWaveInterestPenaltyListWaveID: TIntegerField
      FieldName = 'WaveID'
      Required = True
    end
    object cdsWaveInterestPenaltyListWaveCode: TStringField
      DisplayLabel = 'Wave Code'
      FieldName = 'WaveCode'
      Required = True
    end
    object cdsWaveInterestPenaltyListWaveType: TStringField
      DisplayLabel = 'Wave Type'
      FieldName = 'WaveType'
      ReadOnly = True
      Size = 8
    end
    object cdsWaveInterestPenaltyListDescription: TStringField
      FieldName = 'Description'
      Size = 150
    end
    object cdsWaveInterestPenaltyListEntryDate: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'EntryDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsWaveInterestPenaltyListCcy: TStringField
      FieldName = 'Ccy'
      Required = True
      Size = 5
    end
    object cdsWaveInterestPenaltyListInterestAmount: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'InterestAmount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsWaveInterestPenaltyListAccountCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'AccountCode'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsWaveInterestPenaltyListAccountName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccountName'
      ReadOnly = True
      Size = 150
    end
    object cdsWaveInterestPenaltyListAccountType: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'AccountType'
      ReadOnly = True
      Size = 30
    end
    object cdsWaveInterestPenaltyListTransactionID: TLargeintField
      DisplayLabel = 'Transaction ID'
      FieldName = 'TransactionID'
    end
    object cdsWaveInterestPenaltyListTransactionNo: TStringField
      DisplayLabel = 'Transaction No'
      FieldName = 'TransactionNo'
      ReadOnly = True
      Required = True
    end
    object cdsWaveInterestPenaltyListTRTYPE: TStringField
      DisplayLabel = 'Transaction Type'
      FieldName = 'TRTYPE'
      ReadOnly = True
      Size = 2
    end
    object cdsWaveInterestPenaltyListStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Required = True
      Size = 13
    end
    object cdsWaveInterestPenaltyListPrincipalzedSystemDate: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'PrincipalzedSystemDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsWaveInterestPenaltyListPrincipalzedServerDate: TDateTimeField
      DisplayLabel = 'Server Date'
      FieldName = 'PrincipalzedServerDate'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss'
    end
    object cdsWaveInterestPenaltyListPrincipalzedUser: TStringField
      DisplayLabel = 'User'
      FieldName = 'PrincipalzedUser'
      Size = 30
    end
    object cdsWaveInterestPenaltyListCanceledSystemDate: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'CanceledSystemDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsWaveInterestPenaltyListCanceledServerDate: TDateTimeField
      DisplayLabel = 'Server Date'
      FieldName = 'CanceledServerDate'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss'
    end
    object cdsWaveInterestPenaltyListCanceledUser: TStringField
      DisplayLabel = 'User'
      FieldName = 'CanceledUser'
      Size = 30
    end
    object cdsWaveInterestPenaltyListCanceledNotes: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CanceledNotes'
      Size = 100
    end
  end
end
