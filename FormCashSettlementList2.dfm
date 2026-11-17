inherited frmCashSettlementList2: TfrmCashSettlementList2
  Caption = 'Cash Settlement'
  ClientHeight = 483
  ClientWidth = 1336
  ExplicitWidth = 1336
  ExplicitHeight = 483
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1336
    Height = 457
    ExplicitWidth = 1336
    ExplicitHeight = 457
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'VOUCHERAMT'
          Column = gvwMasterVOUCHERAMT
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'CASH_QQ'
          Column = gvwMasterCASH_QQ
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'CASH_ONHAND'
          Column = gvwMasterCASH_ONHAND
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AP_OVERDUE'
          Column = gvwMasterAP_OVERDUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AR_OVERDUE'
          Column = gvwMasterAR_OVERDUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'NET_OVERDUE'
          Column = gvwMasterNET_OVERDUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AP_DUE'
          Column = gvwMasterAP_DUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AR_DUE'
          Column = gvwMasterAR_DUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'NET_DUE'
          Column = gvwMasterNET_DUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AP_NOTDUE'
          Column = gvwMasterAP_NOTDUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AR_NOTDUE'
          Column = gvwMasterAR_NOTDUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'NET_NOTDUE'
          Column = gvwMasterNET_NOTDUE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
        end>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.CellSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Cash Position'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Over Due'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Due'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Not Due'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        RepositoryItem = dmGlobal.luProduct
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCASH_ONHAND: TcxGridDBBandedColumn
        Caption = 'Cash OnHand'
        DataBinding.FieldName = 'CASH_ONHAND'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCASH_QQ: TcxGridDBBandedColumn
        Caption = 'Cash QQ'
        DataBinding.FieldName = 'CASH_QQ'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn
        Caption = 'Interest'
        DataBinding.FieldName = 'ACCRUED_INTEREST'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERAMT: TcxGridDBBandedColumn
        Caption = 'Created Voucher'
        DataBinding.FieldName = 'VOUCHERAMT'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAP_OVERDUE: TcxGridDBBandedColumn
        Caption = 'AP'
        DataBinding.FieldName = 'AP_OVERDUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAR_OVERDUE: TcxGridDBBandedColumn
        Caption = 'AR'
        DataBinding.FieldName = 'AR_OVERDUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAP_DUE: TcxGridDBBandedColumn
        Caption = 'AP'
        DataBinding.FieldName = 'AP_DUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAR_DUE: TcxGridDBBandedColumn
        Caption = 'AR'
        DataBinding.FieldName = 'AR_DUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAP_NOTDUE: TcxGridDBBandedColumn
        Caption = 'AP'
        DataBinding.FieldName = 'AP_NOTDUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAR_NOTDUE: TcxGridDBBandedColumn
        Caption = 'AR'
        DataBinding.FieldName = 'AR_NOTDUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNET_OVERDUE: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_OVERDUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterNET_DUE: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_DUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterNET_NOTDUE: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_NOTDUE'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCASHKEEP: TcxGridDBBandedColumn
        Caption = 'Cash Keep'
        DataBinding.FieldName = 'CASHKEEP'
        RepositoryItem = dmGlobal.chkStandard
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBANKID_COMPANY: TcxGridDBBandedColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'BANKID_COMPANY'
        RepositoryItem = dmGlobal.luBankCompany
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterISRDN_HOMECCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISRDN_HOMECCY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterISRDN_SETTLECCY: TcxGridDBBandedColumn
        Caption = 'RDN'
        DataBinding.FieldName = 'ISRDN_SETTLECCY'
        RepositoryItem = dmGlobal.chkStandard
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actViewVoucher'
        Permission = 'Cash Settlement Viewer'
      end
      item
        ActionName = 'actCreateVoucher'
        Permission = 'Cash Settlement Create Voucher'
      end
      item
        ActionName = 'actCreateVoucherAll'
        Permission = 'Cash Settlement Create All Voucher'
      end
      item
        ActionName = 'actProcessAutoRollOverCash'
        Permission = 'Cash Settlement Process Auto Roll Over Cash'
      end
      item
        ActionName = 'actCreateAllPaymentVoucher'
        Permission = 'Cash Settlement Create Selected Payment Voucher'
      end
      item
        ActionName = 'actCreateAllReceiveVoucher'
        Permission = 'Cash Settlement Create Selected Receive Voucher'
      end
      item
        ActionName = 'actCashDep'
        Permission = 'Cash Settlement Cash Deposit'
      end>
    AssignedPermission = <
      item
        Name = 'Cash Settlement Viewer'
        Description = 'Cash Settlement Viewer'
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
    object ViewVoucher1: TMenuItem [5]
      Action = actViewVoucher
    end
    object Copygridwithheader1: TMenuItem [6]
      Action = actCopySelected
    end
    inherited Insert2: TMenuItem
      Enabled = False
      Visible = False
    end
    object ProcessAutoRollOverCash1: TMenuItem [11]
      Action = actProcessAutoRollOverCash
    end
    object CreateVoucher1: TMenuItem [12]
      Action = actCreateVoucher
    end
    object CreateAllPaymentVoucher1: TMenuItem [13]
      Action = actCreateAllPaymentVoucher
    end
    object CreateAllReceiveVoucher1: TMenuItem [14]
      Action = actCreateAllReceiveVoucher
    end
    object CashDeposit1: TMenuItem [15]
      Action = actCashDep
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCashSettlementList
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
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    inherited actInsertFromCurrentData: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    object actViewVoucher: TNAction
      Category = 'NActions'
      Caption = 'View Voucher'
      OnExecute = actViewVoucherExecute
      CheckPermission = True
    end
    object actCreateVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create Voucher'
      OnExecute = actCreateVoucherExecute
      CheckPermission = True
    end
    object actCashDep: TNAction
      Category = 'NActions'
      Caption = 'Cash Deposit'
      OnExecute = actCashDepExecute
      CheckPermission = True
    end
    object actCreateAllPaymentVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create Selected Payment Voucher'
      OnExecute = actCreateAllPaymentVoucherExecute
      CheckPermission = True
    end
    object actCreateAllReceiveVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create Selected Receive Voucher'
      OnExecute = actCreateAllReceiveVoucherExecute
      CheckPermission = True
    end
    object actProcessAutoRollOverCash: TNAction
      Category = 'NActions'
      Caption = 'Process Auto Roll Over Cash'
      OnExecute = actProcessAutoRollOverCashExecute
      CheckPermission = True
    end
    object actCreateVoucherAll: TNAction
      Category = 'NActions'
      Caption = 'Create All Voucher'
      ImageIndex = 1
      OnExecute = actCreateVoucherAllExecute
      CheckPermission = True
    end
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = False
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
          ItemName = 'dtDue'
        end
        item
          Visible = True
          ItemName = 'rgCashKeep'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkIncludeNotDue'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
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
    inherited mnuInsert: TdxBarSubItem
      Visible = ivNever
    end
    object dtDue: TcxBarEditItem
      Caption = 'Due Date'
      Category = 0
      Hint = 'Due Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd MMM yyyy'
    end
    object rgCashKeep: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Columns = 3
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Cash Keep'
          Value = '1'
        end
        item
          Caption = 'Non Cash Keep'
          Value = '0'
        end
        item
          Caption = 'All'
          Value = '2'
        end>
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Include Not Due'
      Category = 0
      Hint = 'Include Not Due'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object chkIncludeNotDue: TcxBarEditItem
      Caption = 'Include Not Due'
      Category = 0
      Hint = 'Include Not Due'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      InternalEditValue = '0'
    end
    object dxBarButton1: TdxBarButton
      Action = actCreateVoucherAll
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsCashSettlementList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CASHKEEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOTDUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashSettlementList'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCashSettlementListCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 176
    object cdsCashSettlementListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashSettlementListACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCashSettlementListACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCashSettlementListACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsCashSettlementListACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsCashSettlementListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsCashSettlementListSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsCashSettlementListCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListAP_OVERDUE: TFloatField
      FieldName = 'AP_OVERDUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListAR_OVERDUE: TFloatField
      FieldName = 'AR_OVERDUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListAP_DUE: TFloatField
      FieldName = 'AP_DUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListAR_DUE: TFloatField
      FieldName = 'AR_DUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListAP_NOTDUE: TFloatField
      FieldName = 'AP_NOTDUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListAR_NOTDUE: TFloatField
      FieldName = 'AR_NOTDUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementListNET_OVERDUE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NET_OVERDUE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashSettlementListNET_DUE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NET_DUE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashSettlementListNET_NOTDUE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NET_NOTDUE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashSettlementListCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsCashSettlementListBANKID_COMPANY: TIntegerField
      FieldName = 'BANKID_COMPANY'
      ReadOnly = True
    end
    object cdsCashSettlementListISRDN_HOMECCY: TStringField
      FieldName = 'ISRDN_HOMECCY'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsCashSettlementListISRDN_SETTLECCY: TStringField
      FieldName = 'ISRDN_SETTLECCY'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
end
