inherited frmLendBorrowList: TfrmLendBorrowList
  Caption = 'Lending/Borroring Contract List'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterLBID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LBID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterLBNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LBNO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterLBDATE: TcxGridDBBandedColumn
        Caption = 'LB Date'
        DataBinding.FieldName = 'LBDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCP_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCP_ACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCP_ACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_ACCNAME'
        Width = 263
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterLBTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LBTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Borrower'
            ImageIndex = 0
            Value = 'B'
          end
          item
            Description = 'Lender'
            Value = 'L'
          end>
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterLB_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LB_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterLB_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LB_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterLB_CHARGESRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LB_CHARGESRATE'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterLB_DAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LB_DAY'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterLB_TIMEMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LB_TIMEMODE'
        Visible = False
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterARO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ARO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        RepositoryItem = dmGlobal.chkStandard
        Width = 28
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterSET2SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SET2SIDE'
        Visible = False
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterLINK2SIDEID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINK2SIDEID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterOVERDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OVERDUEDATE'
        Visible = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterOVERDAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OVERDAY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSED: TcxGridDBBandedColumn
        Caption = 'Processed'
        DataBinding.FieldName = 'PROCESSED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED: TcxGridDBBandedColumn
        Caption = 'Settled'
        DataBinding.FieldName = 'SETTLED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        RepositoryItem = dmGlobal.chkStandard
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterRECALL: TcxGridDBBandedColumn
        Caption = 'Recall'
        DataBinding.FieldName = 'RECALL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_RECALL: TcxGridDBBandedColumn
        Caption = 'Settled Recall'
        DataBinding.FieldName = 'SETTLED_RECALL'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterRECALL_DATE: TcxGridDBBandedColumn
        Caption = 'Recall Date'
        DataBinding.FieldName = 'RECALL_DATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED: TcxGridDBBandedColumn
        Caption = 'Reversed'
        DataBinding.FieldName = 'REVERSED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        RepositoryItem = dmGlobal.chkStandard
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterLB_FEEAMT: TcxGridDBBandedColumn
        Caption = 'Fee Amount'
        DataBinding.FieldName = 'LB_FEEAMT'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actNew'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actDelete'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actRefresh'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Corporate Action'
      end>
    AssignedPermission = <
      item
        Name = 'Corporate Action'
        Description = 'Corporate Action'
      end
      item
        Name = '[Lending & Borrowing Contract].Posting'
        Description = '[Lending & Borrowing Contract].Posting'
      end
      item
        Name = '[Lending & Borrowing Contract].Reverse'
        Description = '[Lending & Borrowing Contract].Reverse'
      end
      item
        Name = '[Lending & Borrowing Contract].Change Due Date'
        Description = '[Lending & Borrowing Contract].Change Due Date'
      end
      item
        Name = '[Lending & Borrowing Contract].Recall'
        Description = '[Lending & Borrowing Contract].Recall'
      end
      item
        Name = '[Lending & Borrowing Contract].Settlement Fee'
        Description = '[Lending & Borrowing Contract].Settlement Fee'
      end>
    Top = 227
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
    object ViewFeeHistory1: TMenuItem [8]
      Action = actLendBorrowFeeHis
    end
    object N5: TMenuItem [11]
      Caption = '-'
    end
    object LendBorrowProcess1: TMenuItem [12]
      Action = actLBProcess
    end
    object Reverse1: TMenuItem [13]
      Action = actReverse
    end
    object ChangeDueDate1: TMenuItem [14]
      Action = actChangeDueDate
    end
    object Recall1: TMenuItem [15]
      Action = actRecall
    end
    object LendBorrowSettle1: TMenuItem [16]
      Action = actLBSettle
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsLendBorrowList
  end
  inherited aclEditor: TActionList
    object actLBProcess: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actLBProcessExecute
      OnUpdate = actLBProcessUpdate
      CheckPermission = False
    end
    object actLBSettle: TNAction
      Category = 'NActions'
      Caption = 'Settlement Fee'
      OnExecute = actLBSettleExecute
      OnUpdate = actLBSettleUpdate
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actChangeDueDate: TNAction
      Category = 'NActions'
      Caption = 'Change Due Date'
      OnExecute = actChangeDueDateExecute
      OnUpdate = actChangeDueDateUpdate
      CheckPermission = False
    end
    object actRecall: TNAction
      Category = 'NActions'
      Caption = 'Recall'
      OnExecute = actRecallExecute
      OnUpdate = actRecallUpdate
      CheckPermission = False
    end
    object actLendBorrowFeeHis: TNAction
      Category = 'NActions'
      Caption = 'View Fee History'
      OnExecute = actLendBorrowFeeHisExecute
      CheckPermission = False
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
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsLendBorrow
    ListDataset = cdsLendBorrowList
    MasterTableName = 'main.B_LBCONTRACT'
    Keys = <
      item
        FieldName = 'LBID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'LBID'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsLendBorrowList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryLendBorrowList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 27
    Top = 225
    object cdsLendBorrowListLBID: TLargeintField
      DisplayLabel = 'LB ID'
      FieldName = 'LBID'
      Required = True
    end
    object cdsLendBorrowListLBNO: TStringField
      DisplayLabel = 'Lending Borrow No.'
      FieldName = 'LBNO'
    end
    object cdsLendBorrowListENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
    end
    object cdsLendBorrowListLBDATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'LBDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowListDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowListSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsLendBorrowListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsLendBorrowListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsLendBorrowListACCNO: TStringField
      DisplayLabel = 'Acc No.'
      FieldName = 'ACCNO'
    end
    object cdsLendBorrowListACCNAME: TStringField
      DisplayLabel = 'Acc Name'
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsLendBorrowListCP_ACCID: TLargeintField
      DisplayLabel = 'CP Acc ID'
      FieldName = 'CP_ACCID'
    end
    object cdsLendBorrowListCP_ACCNO: TStringField
      DisplayLabel = 'CP Acc No.'
      FieldName = 'CP_ACCNO'
    end
    object cdsLendBorrowListCP_ACCNAME: TStringField
      DisplayLabel = 'CP Acc Name'
      FieldName = 'CP_ACCNAME'
      Size = 100
    end
    object cdsLendBorrowListLBTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'LBTYPE'
      Size = 1
    end
    object cdsLendBorrowListLB_QTY: TFloatField
      DisplayLabel = 'Qty'
      FieldName = 'LB_QTY'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowListLB_PRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'LB_PRICE'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowListLB_CHARGESRATE: TFloatField
      DisplayLabel = 'Charge Rate'
      FieldName = 'LB_CHARGESRATE'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowListLB_DAY: TIntegerField
      DisplayLabel = 'Day'
      FieldName = 'LB_DAY'
    end
    object cdsLendBorrowListLB_TIMEMODE: TStringField
      DisplayLabel = 'Time Mode'
      FieldName = 'LB_TIMEMODE'
      Size = 1
    end
    object cdsLendBorrowListARO: TStringField
      FieldName = 'ARO'
      Size = 1
    end
    object cdsLendBorrowListCHARGE_PAYDATE: TDateField
      DisplayLabel = 'Charge Pay Date'
      FieldName = 'CHARGE_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowListPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsLendBorrowListPAID: TStringField
      DisplayLabel = 'Paid'
      FieldName = 'PAID'
      Size = 1
    end
    object cdsLendBorrowListCASH_VOUCHERID: TLargeintField
      DisplayLabel = 'Cash Voucher ID'
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsLendBorrowListSET2SIDE: TStringField
      DisplayLabel = 'Set 2 Side'
      FieldName = 'SET2SIDE'
      Size = 1
    end
    object cdsLendBorrowListLINK2SIDEID: TLargeintField
      DisplayLabel = 'Link 2 Side ID'
      FieldName = 'LINK2SIDEID'
    end
    object cdsLendBorrowListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLendBorrowListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLendBorrowListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLendBorrowListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLendBorrowListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLendBorrowListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLendBorrowListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLendBorrowListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLendBorrowListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLendBorrowListOVERDUEDATE: TDateField
      DisplayLabel = 'Over Due Date'
      FieldName = 'OVERDUEDATE'
    end
    object cdsLendBorrowListOVERDAY: TIntegerField
      DisplayLabel = 'Over Day'
      FieldName = 'OVERDAY'
    end
    object cdsLendBorrowListPROCESSED: TStringField
      FieldName = 'PROCESSED'
      Size = 1
    end
    object cdsLendBorrowListLB_FEEAMT: TFloatField
      FieldName = 'LB_FEEAMT'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsLendBorrowListJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsLendBorrowListRECALL: TStringField
      FieldName = 'RECALL'
      Size = 1
    end
    object cdsLendBorrowListRECALL_DATE: TDateField
      FieldName = 'RECALL_DATE'
    end
    object cdsLendBorrowListSETTLED: TStringField
      FieldName = 'SETTLED'
      Size = 1
    end
    object cdsLendBorrowListSETTLED_RECALL: TStringField
      FieldName = 'SETTLED_RECALL'
      Size = 1
    end
    object cdsLendBorrowListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsLendBorrowListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsLendBorrowListREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
  end
  object cdsLendBorrow: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'LBID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryLendBorrow'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsLendBorrowNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 132
    Top = 129
    object cdsLendBorrowLBID: TLargeintField
      FieldName = 'LBID'
      Required = True
    end
    object cdsLendBorrowLBNO: TStringField
      FieldName = 'LBNO'
    end
    object cdsLendBorrowENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowLBDATE: TDateField
      FieldName = 'LBDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsLendBorrowSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsLendBorrowACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsLendBorrowACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsLendBorrowACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsLendBorrowCP_ACCID: TLargeintField
      FieldName = 'CP_ACCID'
    end
    object cdsLendBorrowCP_ACCNO: TStringField
      FieldName = 'CP_ACCNO'
    end
    object cdsLendBorrowCP_ACCNAME: TStringField
      FieldName = 'CP_ACCNAME'
      Size = 100
    end
    object cdsLendBorrowLBTYPE: TStringField
      FieldName = 'LBTYPE'
      Size = 1
    end
    object cdsLendBorrowLB_QTY: TFloatField
      FieldName = 'LB_QTY'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowLB_PRICE: TFloatField
      FieldName = 'LB_PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowLB_CHARGESRATE: TFloatField
      FieldName = 'LB_CHARGESRATE'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowLB_DAY: TIntegerField
      FieldName = 'LB_DAY'
    end
    object cdsLendBorrowLB_TIMEMODE: TStringField
      FieldName = 'LB_TIMEMODE'
      Size = 1
    end
    object cdsLendBorrowARO: TStringField
      FieldName = 'ARO'
      Size = 1
    end
    object cdsLendBorrowCHARGE_PAYDATE: TDateField
      FieldName = 'CHARGE_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsLendBorrowPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsLendBorrowCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsLendBorrowSET2SIDE: TStringField
      FieldName = 'SET2SIDE'
      Size = 1
    end
    object cdsLendBorrowLINK2SIDEID: TLargeintField
      FieldName = 'LINK2SIDEID'
    end
    object cdsLendBorrowMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLendBorrowMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLendBorrowAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLendBorrowAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLendBorrowUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLendBorrowUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLendBorrowNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLendBorrowISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLendBorrowID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLendBorrowOVERDUEDATE: TDateField
      FieldName = 'OVERDUEDATE'
    end
    object cdsLendBorrowOVERDAY: TIntegerField
      FieldName = 'OVERDAY'
    end
    object cdsLendBorrowACCCODETEMP: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODETEMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowACCNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAMETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsLendBorrowCPACCCODETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CPACCCODETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'CP_ACCID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowCPACCNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CPACCNAMETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'CP_ACCID'
      Size = 100
      Lookup = True
    end
    object cdsLendBorrowSTOCKCODETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKCODETMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'LOCALCODE'
      KeyFields = 'STOCKID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowSTOCKNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAMETMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 150
      Lookup = True
    end
    object cdsLendBorrowPROCESSED: TStringField
      FieldName = 'PROCESSED'
      Size = 1
    end
    object cdsLendBorrowLB_FEEAMT: TFloatField
      FieldName = 'LB_FEEAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsLendBorrowRECALL: TStringField
      FieldName = 'RECALL'
      Size = 1
    end
    object cdsLendBorrowRECALL_DATE: TDateField
      FieldName = 'RECALL_DATE'
    end
    object cdsLendBorrowSETTLED: TStringField
      FieldName = 'SETTLED'
      Size = 1
    end
    object cdsLendBorrowCOL_AMT: TFloatField
      FieldName = 'COL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsLendBorrowLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
  end
end
