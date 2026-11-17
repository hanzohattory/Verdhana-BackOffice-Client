inherited frmExerciseMonitoring: TfrmExerciseMonitoring
  Caption = 'Exercise Monitoring'
  ClientHeight = 477
  ClientWidth = 890
  ExplicitWidth = 890
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Width = 890
    Height = 451
    ExplicitWidth = 890
    ExplicitHeight = 451
    inherited gvwBrowse: TcxGridDBBandedTableView
      object gvwBrowseCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBrowseACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_NO: TcxGridDBBandedColumn
        Caption = 'Exer No.'
        DataBinding.FieldName = 'EXER_NO'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBrowseEXERDATE: TcxGridDBBandedColumn
        Caption = 'Exer Date'
        DataBinding.FieldName = 'EXERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBrowseACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBrowseACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 201
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBrowseCA_QTY: TcxGridDBBandedColumn
        Caption = 'CA Qty'
        DataBinding.FieldName = 'CA_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBrowseCA_AMT: TcxGridDBBandedColumn
        Caption = 'CA Amount'
        DataBinding.FieldName = 'CA_AMT'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBrowseEXERQTY: TcxGridDBBandedColumn
        Caption = 'Exer Qty'
        DataBinding.FieldName = 'EXERQTY'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_AMT: TcxGridDBBandedColumn
        Caption = 'Exer Amount'
        DataBinding.FieldName = 'EXER_AMT'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_WARRQTY: TcxGridDBBandedColumn
        Caption = 'Exer Warrant Qty'
        DataBinding.FieldName = 'EXER_WARRQTY'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_PAYDATE: TcxGridDBBandedColumn
        Caption = 'Exer Pay Date'
        DataBinding.FieldName = 'EXER_PAYDATE'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_PAID: TcxGridDBBandedColumn
        Caption = 'Exer Paid'
        DataBinding.FieldName = 'EXER_PAID'
        RepositoryItem = dmGlobal.chkStandard
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBrowseEXER_PAIDAMT: TcxGridDBBandedColumn
        Caption = 'Exer Paid Amount'
        DataBinding.FieldName = 'EXER_PAIDAMT'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBrowseMEMBER: TcxGridDBBandedColumn
        Caption = 'Member'
        DataBinding.FieldName = 'MEMBER'
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwBrowseCUSTODY: TcxGridDBBandedColumn
        Caption = 'Custody'
        DataBinding.FieldName = 'CUSTODY'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwBrowseFINANCE: TcxGridDBBandedColumn
        Caption = 'Finance'
        DataBinding.FieldName = 'FINANCE'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwBrowseVCA_INSTRUCTION: TcxGridDBBandedColumn
        Caption = 'VCA Instruction'
        DataBinding.FieldName = 'VCA_INSTRUCTION'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwBrowseBT_INSTRUCTION: TcxGridDBBandedColumn
        Caption = 'BT Instruction'
        DataBinding.FieldName = 'BT_INSTRUCTION'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwBrowseBANK_INSTRUCTION: TcxGridDBBandedColumn
        Caption = 'Bank Instruction'
        DataBinding.FieldName = 'BANK_INSTRUCTION'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwBrowseRDN_RECEIVE: TcxGridDBBandedColumn
        Caption = 'RDN Receive'
        DataBinding.FieldName = 'RDN_RECEIVE'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwBrowseREQUEST_CASH_LOAN: TcxGridDBBandedColumn
        Caption = 'Request Cash Loan'
        DataBinding.FieldName = 'REQUEST_CASH_LOAN'
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwBrowseCASH_LOAN_APPV: TcxGridDBBandedColumn
        Caption = 'Cash Loan Approval'
        DataBinding.FieldName = 'CASH_LOAN_APPV'
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwBrowseSTOCK_DIST: TcxGridDBBandedColumn
        Caption = 'Stock Distribution'
        DataBinding.FieldName = 'STOCK_DIST'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwBrowseSTOCK_DIST_DATE: TcxGridDBBandedColumn
        Caption = 'Stock Distribution Date'
        DataBinding.FieldName = 'STOCK_DIST_DATE'
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwBrowseBT_DATE: TcxGridDBBandedColumn
        Caption = 'BT Date'
        DataBinding.FieldName = 'BT_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwBrowseREMARKS: TcxGridDBBandedColumn
        Caption = 'Remarks'
        DataBinding.FieldName = 'REMARKS'
        Width = 191
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwBrowseCANCEL_EXERPAID: TcxGridDBBandedColumn
        Caption = 'Cancel Exer Paid'
        DataBinding.FieldName = 'CANCEL_EXERPAID'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwBrowseMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwBrowseMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwBrowseAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwBrowseAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwBrowseUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwBrowseUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwBrowseNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwBrowseISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwBrowseID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 28
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwBrowseCashOnHand: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CashOnHand'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwBrowsePAYDATE: TcxGridDBBandedColumn
        Caption = 'Pay Date'
        DataBinding.FieldName = 'PAYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwBrowseALLOTMENT_DATE: TcxGridDBBandedColumn
        Caption = 'Allotment Date'
        DataBinding.FieldName = 'ALLOTMENT_DATE'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actInsert'
        Permission = '[Exercise Monitoring].Insert'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Exercise Monitoring].Delete'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Exercise Monitoring].Edit'
      end
      item
        ActionName = 'actPost'
        Permission = '[Exercise Monitoring].Post'
      end
      item
        ActionName = 'actcancel'
        Permission = '[Exercise Monitoring].Cancel'
      end>
  end
  inherited aclEditor: TActionList
    inherited actInsert: TNDataSetInsert
      Visible = False
    end
    inherited actDelete: TNDataSetDelete
      Visible = False
    end
    inherited actEdit: TNDataSetEdit
      Visible = False
    end
  end
  inherited DatasetContainer: TNSimpleContainer
    Dataset = cdsExerciseMonitoring
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsExerciseMonitoring
  end
  inherited PrintComp: TdxComponentPrinter
    inherited PrintCompMainGrid: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited BarMBrowse: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
  object cdsExerciseMonitoring: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryExerciseMonitoring'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 21
    Top = 123
    object cdsExerciseMonitoringCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsExerciseMonitoringEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsExerciseMonitoringACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsExerciseMonitoringEXER_NO: TStringField
      FieldName = 'EXER_NO'
    end
    object cdsExerciseMonitoringEXERDATE: TDateField
      FieldName = 'EXERDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsExerciseMonitoringACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsExerciseMonitoringACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsExerciseMonitoringCA_QTY: TFloatField
      FieldName = 'CA_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringCA_AMT: TFloatField
      FieldName = 'CA_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringEXERQTY: TFloatField
      FieldName = 'EXERQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringEXER_AMT: TFloatField
      FieldName = 'EXER_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringEXER_WARRQTY: TFloatField
      FieldName = 'EXER_WARRQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringEXER_PAYDATE: TDateField
      FieldName = 'EXER_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsExerciseMonitoringEXER_PAID: TStringField
      FieldName = 'EXER_PAID'
      Size = 1
    end
    object cdsExerciseMonitoringEXER_PAIDAMT: TFloatField
      FieldName = 'EXER_PAIDAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringMEMBER: TStringField
      FieldName = 'MEMBER'
      Size = 1
    end
    object cdsExerciseMonitoringCUSTODY: TStringField
      FieldName = 'CUSTODY'
      Size = 1
    end
    object cdsExerciseMonitoringFINANCE: TStringField
      FieldName = 'FINANCE'
      Size = 1
    end
    object cdsExerciseMonitoringVCA_INSTRUCTION: TStringField
      FieldName = 'VCA_INSTRUCTION'
      Size = 1
    end
    object cdsExerciseMonitoringBT_INSTRUCTION: TStringField
      FieldName = 'BT_INSTRUCTION'
      Size = 1
    end
    object cdsExerciseMonitoringBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsExerciseMonitoringRDN_RECEIVE: TStringField
      FieldName = 'RDN_RECEIVE'
      Size = 1
    end
    object cdsExerciseMonitoringREQUEST_CASH_LOAN: TStringField
      FieldName = 'REQUEST_CASH_LOAN'
      Size = 1
    end
    object cdsExerciseMonitoringCASH_LOAN_APPV: TStringField
      FieldName = 'CASH_LOAN_APPV'
      Size = 1
    end
    object cdsExerciseMonitoringSTOCK_DIST: TStringField
      FieldName = 'STOCK_DIST'
      Size = 1
    end
    object cdsExerciseMonitoringSTOCK_DIST_DATE: TDateField
      FieldName = 'STOCK_DIST_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsExerciseMonitoringBT_DATE: TDateField
      FieldName = 'BT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsExerciseMonitoringREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsExerciseMonitoringCANCEL_EXERPAID: TStringField
      FieldName = 'CANCEL_EXERPAID'
      Size = 1
    end
    object cdsExerciseMonitoringMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsExerciseMonitoringMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsExerciseMonitoringAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsExerciseMonitoringAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsExerciseMonitoringUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsExerciseMonitoringUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsExerciseMonitoringNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsExerciseMonitoringISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsExerciseMonitoringID: TLargeintField
      FieldName = 'ID'
    end
    object cdsExerciseMonitoringCashOnHand: TFloatField
      FieldName = 'CashOnHand'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExerciseMonitoringPAYDATE: TDateField
      FieldName = 'PAYDATE'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsExerciseMonitoringALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
  end
end
