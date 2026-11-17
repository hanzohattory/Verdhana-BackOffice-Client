inherited frmDailyInterestOutsList: TfrmDailyInterestOutsList
  Caption = 'Daily Interest Outstanding'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterAccountID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountCode'
        Visible = False
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountName'
        Visible = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAccountType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountType'
        Visible = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAccountTypeDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountTypeDesc'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterTransactionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionNo'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterTransType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransType'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTransTypeDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransTypeDesc'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterTransactionDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionDate'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterDueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DueDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterMaturityDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MaturityDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterOriginalAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OriginalAmount'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSettled_Amount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Settled_Amount'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterUnsettle_Amount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Unsettle_Amount'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterAccrruedInterest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccrruedInterest'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterPrincipalizeInterest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrincipalizeInterest'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterInterestDays: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InterestDays'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterInterestRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InterestRate'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterPenaltyInterest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PenaltyInterest'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterPenaltyInterestDay: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PenaltyInterestDay'
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterWaiveInterest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WaiveInterest'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterAccrruedPenalty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccrruedPenalty'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterPrincipalizePenalty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PrincipalizePenalty'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterPenaltyDays: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PenaltyDays'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterPenaltyRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PenaltyRate'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterWaivePenalty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WaivePenalty'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account'
        Visible = False
        GroupIndex = 0
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Daily Interest Outstanding Viewer'
      end
      item
        ActionName = 'actChangeInsterestRate'
        Permission = 'Daily Interest Outstanding Change Interest Rate'
      end
      item
        ActionName = 'actPrincipalizeInterest'
        Permission = 'Daily Interest Outstanding Principalize Interest'
      end
      item
        ActionName = 'actPrincipalizePenalty'
        Permission = 'Daily Interest Outstanding Principalize Penalty'
      end
      item
        ActionName = 'actWaveInterest'
        Permission = 'Daily Interest Outstanding Wave Interest'
      end
      item
        ActionName = 'actWavePenalty'
        Permission = 'Daily Interest Outstanding Wave Penalty'
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
    object N1: TMenuItem [9]
      Caption = '-'
    end
    object ChangeInterestRate1: TMenuItem [10]
      Action = actChangeInsterestRate
    end
    object N5: TMenuItem [11]
      Caption = '-'
    end
    object PrincipalizeInterest1: TMenuItem [12]
      Action = actPrincipalizeInterest
    end
    object PrincipalizePenalty1: TMenuItem [13]
      Action = actPrincipalizePenalty
    end
    object N6: TMenuItem [14]
      Caption = '-'
    end
    object WaveInterest1: TMenuItem [15]
      Action = actWaveInterest
    end
    object WavePenalty1: TMenuItem [16]
      Action = actWavePenalty
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDailyInterestOutsList
  end
  inherited aclEditor: TActionList
    inherited actCustomizeFilter: TNAction [13]
    end
    inherited actViewAuditLog: TNAction [14]
    end
    inherited actViewAuditLogForm: TNAction [15]
    end
    inherited actSaveGridExcel: TNAction [16]
    end
    inherited actReject: TNAction [17]
    end
    object actChangeInsterestRate: TNAction
      Category = 'NActions'
      Caption = 'Change Interest Rate'
      Hint = 'Change Interest Rate'
      OnExecute = actChangeInsterestRateExecute
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actPrincipalizeInterest: TNAction
      Category = 'NActions'
      Caption = 'Principalize Interest'
      Hint = 'Principalize Interest'
      OnExecute = actPrincipalizeInterestExecute
      CheckPermission = True
    end
    object actPrincipalizePenalty: TNAction
      Category = 'NActions'
      Caption = 'Principalize Penalty'
      Hint = 'Principalize Penalty'
      OnExecute = actPrincipalizePenaltyExecute
      CheckPermission = True
    end
    object actWaveInterest: TNAction
      Category = 'NActions'
      Caption = 'Wave Interest'
      Hint = 'Wave Interest'
      OnExecute = actWaveInterestExecute
      CheckPermission = True
    end
    object actWavePenalty: TNAction
      Category = 'NActions'
      Caption = 'Wave Penalty'
      Hint = 'Wave Penalty'
      OnExecute = actWavePenaltyExecute
      CheckPermission = True
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
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExpand'
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
    object btnExpand: TdxBarButton
      Caption = 'Expand All'
      Category = 0
      Hint = 'Expand All'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btnExpandClick
    end
  end
  object cdsDailyInterestOutsList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmFinance_qryDailyInterestOutsList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsDailyInterestOutsListAccountID: TIntegerField
      DisplayLabel = 'Account ID'
      FieldName = 'AccountID'
      Required = True
    end
    object cdsDailyInterestOutsListAccountCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'AccountCode'
      Required = True
      Size = 30
    end
    object cdsDailyInterestOutsListAccountName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccountName'
      Size = 150
    end
    object cdsDailyInterestOutsListAccountType: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'AccountType'
      Size = 5
    end
    object cdsDailyInterestOutsListAccountTypeDesc: TStringField
      DisplayLabel = 'Account Type Desc'
      FieldName = 'AccountTypeDesc'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyInterestOutsListTransactionID: TLargeintField
      DisplayLabel = 'Transaction ID'
      FieldName = 'TransactionID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyInterestOutsListTransactionNo: TStringField
      DisplayLabel = 'Transaction No'
      FieldName = 'TransactionNo'
      ReadOnly = True
      Required = True
    end
    object cdsDailyInterestOutsListTransType: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TransType'
      ReadOnly = True
      Size = 2
    end
    object cdsDailyInterestOutsListTransTypeDesc: TStringField
      DisplayLabel = 'Trans Type Desc'
      FieldName = 'TransTypeDesc'
      ReadOnly = True
      Size = 100
    end
    object cdsDailyInterestOutsListTransactionDate: TDateField
      DisplayLabel = 'Transaction Date'
      FieldName = 'TransactionDate'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInterestOutsListDueDate: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DueDate'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInterestOutsListMaturityDate: TDateField
      DisplayLabel = 'Maturity Date'
      FieldName = 'MaturityDate'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInterestOutsListOriginalAmount: TFloatField
      DisplayLabel = 'Original Amount'
      FieldName = 'OriginalAmount'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListSettled_Amount: TFloatField
      DisplayLabel = 'Settled Amount'
      FieldName = 'Settled_Amount'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListUnsettle_Amount: TFloatField
      DisplayLabel = 'Unsettle Amount'
      FieldName = 'Unsettle_Amount'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListAccrruedInterest: TFloatField
      DisplayLabel = 'Accrrued Interest'
      FieldName = 'AccrruedInterest'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListPrincipalizeInterest: TFloatField
      DisplayLabel = 'Principalize Interest'
      FieldName = 'PrincipalizeInterest'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListInterestDays: TIntegerField
      DisplayLabel = 'Interest Days'
      FieldName = 'InterestDays'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListInterestRate: TFloatField
      DisplayLabel = 'Interest Rate'
      FieldName = 'InterestRate'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListPenaltyInterest: TFloatField
      DisplayLabel = 'Penalty Interest'
      FieldName = 'PenaltyInterest'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListPenaltyInterestDay: TIntegerField
      DisplayLabel = 'Penalty Interest Day'
      FieldName = 'PenaltyInterestDay'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListWaiveInterest: TFloatField
      DisplayLabel = 'Waive Interest'
      FieldName = 'WaiveInterest'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListAccrruedPenalty: TFloatField
      DisplayLabel = 'Accrrued Penalty'
      FieldName = 'AccrruedPenalty'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListPrincipalizePenalty: TFloatField
      DisplayLabel = 'Principalize Penalty'
      FieldName = 'PrincipalizePenalty'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListPenaltyDays: TIntegerField
      DisplayLabel = 'Penalty Days'
      FieldName = 'PenaltyDays'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListPenaltyRate: TFloatField
      DisplayLabel = 'Penalty Rate'
      FieldName = 'PenaltyRate'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListWaivePenalty: TFloatField
      DisplayLabel = 'Waive Penalty'
      FieldName = 'WaivePenalty'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInterestOutsListAccount: TStringField
      FieldName = 'Account'
      ReadOnly = True
      Size = 225
    end
  end
end
