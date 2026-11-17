inherited frmInvoiceInterestList: TfrmInvoiceInterestList
  Caption = 'Invoice Interest'
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
          Caption = 'Principalize'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterInvoiceID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterInvoiceCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvoiceCode'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterInterestType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InterestType'
        Width = 72
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
      object gvwMasterDueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DueDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCcy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ccy'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterInterestAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InterestAmount'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountCode'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAccountType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountType'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterTransactionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionNo'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRTYPE'
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterPrincipalzedSystemDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrincipalzedSystemDate'
        Width = 67
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
        Width = 67
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
        Permission = 'Invoice Interest Viewer'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Invoice Interest Canceler'
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
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    object Cancel1: TMenuItem [10]
      Action = actCancel
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsInvoiceInterestList
  end
  inherited aclEditor: TActionList
    inherited actCancel: TNAction
      Enabled = True
      CheckPermission = True
    end
    object actViewTransaction: TNAction
      Category = 'NActions'
      Caption = 'View Transaction'
      OnExecute = actViewTransactionExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsInvoiceInterestList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmFinance_qryInvoiceInterestList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsInvoiceInterestListInvoiceID: TIntegerField
      DisplayLabel = 'Invoice ID'
      FieldName = 'InvoiceID'
      Required = True
    end
    object cdsInvoiceInterestListInvoiceCode: TStringField
      DisplayLabel = 'Invoice Code'
      FieldName = 'InvoiceCode'
      Required = True
    end
    object cdsInvoiceInterestListInterestType: TStringField
      DisplayLabel = 'Interest Type'
      FieldName = 'InterestType'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object cdsInvoiceInterestListDescription: TStringField
      FieldName = 'Description'
      Size = 150
    end
    object cdsInvoiceInterestListEntryDate: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'EntryDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInvoiceInterestListDueDate: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DueDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInvoiceInterestListCcy: TStringField
      FieldName = 'Ccy'
      Required = True
      Size = 5
    end
    object cdsInvoiceInterestListInterestAmount: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'InterestAmount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsInvoiceInterestListAccountCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'AccountCode'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsInvoiceInterestListAccountName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccountName'
      ReadOnly = True
      Size = 150
    end
    object cdsInvoiceInterestListAccountType: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'AccountType'
      ReadOnly = True
      Size = 30
    end
    object cdsInvoiceInterestListTransactionID: TLargeintField
      DisplayLabel = 'Transaction ID'
      FieldName = 'TransactionID'
      Required = True
    end
    object cdsInvoiceInterestListTransactionNo: TStringField
      DisplayLabel = 'Transaction No'
      FieldName = 'TransactionNo'
      ReadOnly = True
      Required = True
    end
    object cdsInvoiceInterestListTRTYPE: TStringField
      DisplayLabel = 'Transaction Type'
      FieldName = 'TRTYPE'
      ReadOnly = True
      Size = 2
    end
    object cdsInvoiceInterestListStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Required = True
      Size = 13
    end
    object cdsInvoiceInterestListPrincipalzedSystemDate: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'PrincipalzedSystemDate'
    end
    object cdsInvoiceInterestListPrincipalzedServerDate: TDateTimeField
      DisplayLabel = 'Server Date'
      FieldName = 'PrincipalzedServerDate'
    end
    object cdsInvoiceInterestListPrincipalzedUser: TStringField
      DisplayLabel = 'User'
      FieldName = 'PrincipalzedUser'
      Size = 30
    end
    object cdsInvoiceInterestListCanceledSystemDate: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'CanceledSystemDate'
    end
    object cdsInvoiceInterestListCanceledServerDate: TDateTimeField
      DisplayLabel = 'Server Date'
      FieldName = 'CanceledServerDate'
    end
    object cdsInvoiceInterestListCanceledUser: TStringField
      DisplayLabel = 'User'
      FieldName = 'CanceledUser'
      Size = 30
    end
    object cdsInvoiceInterestListCanceledNotes: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CanceledNotes'
      Size = 100
    end
    object cdsInvoiceInterestListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
  end
end
