object frmViewTransaction: TfrmViewTransaction
  Left = 0
  Top = 0
  Caption = 'View Transaction'
  ClientHeight = 461
  ClientWidth = 1237
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 410
    Width = 1237
    Height = 51
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Close'
      ModalResult = 2
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 0
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1237
    Height = 410
    Align = alClient
    TabOrder = 1
    LevelTabs.CaptionAlignment = taLeftJustify
    LevelTabs.Style = 9
    LookAndFeel.Kind = lfStandard
    LookAndFeel.ScrollbarMode = sbmDefault
    RootLevelOptions.DetailTabsPosition = dtpTop
    object gvwLedger: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsLedgerTransaction
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Posted'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwLedgerLedgerID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LedgerID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwLedgerEntryDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Entry Date'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwLedgerValueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Value Date'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwLedgerJournalType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Journal Type'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwLedgerTransType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trans Type'
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwLedgerTransactionName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction Name'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwLedgerDescriptionHeader: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Description Header'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwLedgerDescriptionDetail: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Description Detail'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwLedgerAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Code'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwLedgerAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwLedgerLedgerCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ledger Code'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwLedgerLedgerDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Ledger Desc'
        Width = 163
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwLedgerCOACode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COA Code'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwLedgerCostCentre: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cost Centre'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwLedgerBankCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Bank Code'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwLedgerBankAccountNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Bank Account No'
        Width = 165
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwLedgerExchangerate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Exchange rate'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwLedgerCurrency: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Currency'
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwLedgerDebetAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Debet Amount'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwLedgerCreditAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Credit Amount'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwLedgerTransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction No'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwLedgerReversed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        VisibleForCustomization = False
        Width = 53
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwLedgerGLPosted: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL Posted'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        VisibleForCustomization = False
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwLedgerGLPostedDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL Posted Date'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwLedgerGLPostedUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL Posted UI'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwLedgerGLJournalCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL Journal Code'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwLedgerJournalCodeReversed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Journal Code Reversed'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwLedgerReversedDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed Date'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwLedgerReversedUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed UI'
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object gvwStockLedger: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsStockTrans
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end
        item
          Caption = 'Reverse'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwStockLedgerSecuritiesLedgerID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SecuritiesLedgerID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwStockLedgerEntryDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Entry Date'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwStockLedgerValueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Value Date'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwStockLedgerTransType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trans Type'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwStockLedgerTransactionName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction Name'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwStockLedgerTransactionDescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction Description'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwStockLedgerAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Code'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwStockLedgerAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwStockLedgerSecuritiesLedgerCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Securities Ledger Code'
        Width = 116
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwStockLedgerSecuritiesLedgerDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Securities Ledger Desc'
        Width = 180
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwStockLedgerCustodyCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Custody Code'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwStockLedgerCustodyAccountNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Custody Account No'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwStockLedgerPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwStockLedgerLongQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Long Quantity'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwStockLedgerShortQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Short Quantity'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwStockLedgerTransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction No'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwStockLedgerReversed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed'
        Visible = False
        VisibleForCustomization = False
        Width = 53
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwStockLedgerReversedDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed Date'
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwStockLedgerReversedUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed UI'
        Width = 66
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwStockLedgerStockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Stock Code'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object gvwFundLedger: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsFundTrans
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwFundLedgerFundLedgerID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FundLedgerID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwFundLedgerEntryDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Entry Date'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwFundLedgerValueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Value Date'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwFundLedgerTransType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trans Type'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwFundLedgerTransactionName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction Name'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwFundLedgerTransactionDescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction Description'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwFundLedgerAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Code'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwFundLedgerAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwFundLedgerFundLedgerCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fund Ledger Code'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwFundLedgerFundLedgerDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fund Ledger Desc'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwFundLedgerBankCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Bank Code'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwFundLedgerBankAccountNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Bank Account No'
        Width = 129
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwFundLedgerExchangeRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Exchange Rate'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwFundLedgerCurrency: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Currency'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwFundLedgerDebetAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Debet Amount'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwFundLedgerCreditAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Credit Amount'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwFundLedgerTransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction No'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwFundLedgerReversed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        VisibleForCustomization = False
        Width = 52
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwFundLedgerReversedDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed Date'
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwFundLedgerReversedUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Reversed UI'
        Width = 66
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object glvLedger: TcxGridLevel
      Caption = 'Ledger'
      GridView = gvwLedger
    end
    object glvStockLedger: TcxGridLevel
      Caption = 'Securities Ledger'
      GridView = gvwStockLedger
    end
    object glvFundLedger: TcxGridLevel
      Caption = 'Fund Ledger'
      GridView = gvwFundLedger
    end
  end
  object cdsLedgerTransaction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'conDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'ledgerTransID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmViewTransactions_qryLedgerTransaction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 88
    Top = 96
    object cdsLedgerTransactionLedgerID: TLargeintField
      FieldName = 'LedgerID'
      Required = True
    end
    object cdsLedgerTransactionEntryDate: TDateField
      FieldName = 'Entry Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLedgerTransactionValueDate: TDateField
      FieldName = 'Value Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLedgerTransactionJournalType: TStringField
      FieldName = 'Journal Type'
      Size = 3
    end
    object cdsLedgerTransactionTransType: TStringField
      FieldName = 'Trans Type'
      Size = 4
    end
    object cdsLedgerTransactionTransactionName: TStringField
      FieldName = 'Transaction Name'
      Size = 50
    end
    object cdsLedgerTransactionDescriptionHeader: TStringField
      FieldName = 'Description Header'
      Size = 250
    end
    object cdsLedgerTransactionDescriptionDetail: TStringField
      FieldName = 'Description Detail'
      Size = 250
    end
    object cdsLedgerTransactionAccountCode: TStringField
      FieldName = 'Account Code'
    end
    object cdsLedgerTransactionAccountName: TStringField
      FieldName = 'Account Name'
      Size = 150
    end
    object cdsLedgerTransactionLedgerCode: TStringField
      FieldName = 'Ledger Code'
      Size = 5
    end
    object cdsLedgerTransactionLedgerDesc: TStringField
      FieldName = 'Ledger Desc'
      Size = 50
    end
    object cdsLedgerTransactionCOACode: TStringField
      FieldName = 'COA Code'
    end
    object cdsLedgerTransactionCostCentre: TStringField
      FieldName = 'Cost Centre'
      Size = 5
    end
    object cdsLedgerTransactionBankCode: TStringField
      FieldName = 'Bank Code'
    end
    object cdsLedgerTransactionBankAccountNo: TStringField
      FieldName = 'Bank Account No'
      Size = 50
    end
    object cdsLedgerTransactionExchangerate: TFloatField
      FieldName = 'Exchange rate'
      DisplayFormat = '#,##0.00 %;(#,##0.00) %;0.00 %'
    end
    object cdsLedgerTransactionCurrency: TStringField
      FieldName = 'Currency'
      Size = 5
    end
    object cdsLedgerTransactionDebetAmount: TFloatField
      FieldName = 'Debet Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLedgerTransactionCreditAmount: TFloatField
      FieldName = 'Credit Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLedgerTransactionTransactionNo: TStringField
      FieldName = 'Transaction No'
    end
    object cdsLedgerTransactionReversed: TBooleanField
      FieldName = 'Reversed'
    end
    object cdsLedgerTransactionGLPosted: TBooleanField
      FieldName = 'GL Posted'
    end
    object cdsLedgerTransactionGLPostedDate: TDateTimeField
      FieldName = 'GL Posted Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLedgerTransactionGLPostedUI: TStringField
      FieldName = 'GL Posted UI'
      Size = 30
    end
    object cdsLedgerTransactionGLJournalCode: TStringField
      FieldName = 'GL Journal Code'
    end
    object cdsLedgerTransactionJournalCodeReversed: TStringField
      FieldName = 'Journal Code Reversed'
    end
    object cdsLedgerTransactionReversedDate: TDateTimeField
      FieldName = 'Reversed Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLedgerTransactionReversedUI: TStringField
      FieldName = 'Reversed UI'
      Size = 30
    end
  end
  object dsLedgerTransaction: TDataSource
    DataSet = cdsLedgerTransaction
    Left = 88
    Top = 144
  end
  object cdsStockTrans: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'conDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'stockTransID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmViewTransactions_qrySecuritiesLedgerTransaction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 88
    Top = 200
    object cdsStockTransSecuritiesLedgerID: TLargeintField
      FieldName = 'SecuritiesLedgerID'
      Required = True
    end
    object cdsStockTransEntryDate: TDateField
      FieldName = 'Entry Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockTransValueDate: TDateField
      FieldName = 'Value Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockTransTransType: TStringField
      FieldName = 'Trans Type'
      Size = 4
    end
    object cdsStockTransTransactionName: TStringField
      FieldName = 'Transaction Name'
      Size = 50
    end
    object cdsStockTransTransactionDescription: TStringField
      FieldName = 'Transaction Description'
      Size = 250
    end
    object cdsStockTransAccountCode: TStringField
      FieldName = 'Account Code'
    end
    object cdsStockTransAccountName: TStringField
      FieldName = 'Account Name'
      Size = 150
    end
    object cdsStockTransSecuritiesLedgerCode: TStringField
      FieldName = 'Securities Ledger Code'
      Size = 5
    end
    object cdsStockTransSecuritiesLedgerDesc: TStringField
      FieldName = 'Securities Ledger Desc'
      Size = 50
    end
    object cdsStockTransCustodyCode: TStringField
      FieldName = 'Custody Code'
    end
    object cdsStockTransCustodyAccountNo: TStringField
      FieldName = 'Custody Account No'
      Size = 50
    end
    object cdsStockTransPrice: TFloatField
      FieldName = 'Price'
    end
    object cdsStockTransLongQuantity: TFloatField
      FieldName = 'Long Quantity'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockTransShortQuantity: TFloatField
      FieldName = 'Short Quantity'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockTransTransactionNo: TStringField
      FieldName = 'Transaction No'
    end
    object cdsStockTransReversed: TBooleanField
      FieldName = 'Reversed'
    end
    object cdsStockTransReversedDate: TDateTimeField
      FieldName = 'Reversed Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockTransReversedUI: TStringField
      FieldName = 'Reversed UI'
      Size = 30
    end
    object cdsStockTransStockCode: TStringField
      FieldName = 'Stock Code'
    end
  end
  object dsStockTrans: TDataSource
    DataSet = cdsStockTrans
    Left = 88
    Top = 248
  end
  object dsFundTrans: TDataSource
    DataSet = cdsFundTrans
    Left = 88
    Top = 352
  end
  object cdsFundTrans: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'conDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'fundTransID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmViewTransactions_qryFundLedgerTransaction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 88
    Top = 304
    object cdsFundTransFundLedgerID: TLargeintField
      FieldName = 'FundLedgerID'
      Required = True
    end
    object cdsFundTransEntryDate: TDateField
      FieldName = 'Entry Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundTransValueDate: TDateField
      FieldName = 'Value Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundTransTransType: TStringField
      FieldName = 'Trans Type'
      Size = 4
    end
    object cdsFundTransTransactionName: TStringField
      FieldName = 'Transaction Name'
      Size = 50
    end
    object cdsFundTransTransactionDescription: TStringField
      FieldName = 'Transaction Description'
      Size = 250
    end
    object cdsFundTransAccountCode: TStringField
      FieldName = 'Account Code'
    end
    object cdsFundTransAccountName: TStringField
      FieldName = 'Account Name'
      Size = 150
    end
    object cdsFundTransFundLedgerCode: TStringField
      FieldName = 'Fund Ledger Code'
      Size = 5
    end
    object cdsFundTransFundLedgerDesc: TStringField
      FieldName = 'Fund Ledger Desc'
      Size = 50
    end
    object cdsFundTransBankCode: TStringField
      FieldName = 'Bank Code'
    end
    object cdsFundTransBankAccountNo: TStringField
      FieldName = 'Bank Account No'
      Size = 50
    end
    object cdsFundTransExchangeRate: TFloatField
      FieldName = 'Exchange Rate'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsFundTransCurrency: TStringField
      FieldName = 'Currency'
      Size = 5
    end
    object cdsFundTransDebetAmount: TFloatField
      FieldName = 'Debet Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsFundTransCreditAmount: TFloatField
      FieldName = 'Credit Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsFundTransTransactionNo: TStringField
      FieldName = 'Transaction No'
    end
    object cdsFundTransReversed: TBooleanField
      FieldName = 'Reversed'
    end
    object cdsFundTransReversedDate: TDateTimeField
      FieldName = 'Reversed Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundTransReversedUI: TStringField
      FieldName = 'Reversed UI'
      Size = 30
    end
  end
end
