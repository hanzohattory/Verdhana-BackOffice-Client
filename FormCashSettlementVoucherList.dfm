inherited frmCashSettlementVoucherList: TfrmCashSettlementVoucherList
  Caption = 'Cash Settlement Voucher'
  ClientWidth = 1278
  ExplicitWidth = 1278
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1278
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitWidth = 1278
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);.0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = gvwMasterAMOUNT
        end
        item
          Format = '#,##0.00;(#,##0.00);.0.00'
          Kind = skSum
          FieldName = 'FX_AMOUNT'
          Column = gvwMasterFX_AMOUNT
        end>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.CellSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.GroupByBox = True
      object gvwMasterCSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CSID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCSNO: TcxGridDBBandedColumn
        Caption = 'Voucher No.'
        DataBinding.FieldName = 'CSNO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCSDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CSDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Voucher Date'
        DataBinding.FieldName = 'VALUEDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterFX_CCY: TcxGridDBBandedColumn
        Caption = 'Fx Ccy'
        DataBinding.FieldName = 'FX_CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterFX_EXRATE: TcxGridDBBandedColumn
        Caption = 'FX ExRate'
        DataBinding.FieldName = 'FX_EXRATE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterFX_AMOUNT: TcxGridDBBandedColumn
        Caption = 'FX Amount'
        DataBinding.FieldName = 'FX_AMOUNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STAT'
        RepositoryItem = dmGlobal.luCashSettleStatus
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_WITH: TcxGridDBBandedColumn
        Caption = 'Settle With'
        DataBinding.FieldName = 'SETTLE_WITH'
        RepositoryItem = dmGlobal.luCashSettleWith
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSETTLETYPE: TcxGridDBBandedColumn
        Caption = 'Settle Type'
        DataBinding.FieldName = 'SETTLETYPE'
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Cash Voucher'
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Cash Settlement Voucher Viewer'
      end
      item
        ActionName = 'actViewTransaction'
        Permission = 'Cash Settlement Voucher Viewer'
      end
      item
        ActionName = 'actSettleVoucher'
        Permission = 'Cash Settlement Voucher Settle'
      end
      item
        ActionName = 'actPostingAllCashVoucher'
        Permission = 'Cash Settlement Voucher Settle'
      end
      item
        ActionName = 'actReverseVoucher'
        Permission = 'Cash Settlement Voucher Reverse'
      end
      item
        ActionName = 'actCancelVoucher'
        Permission = 'Cash Settlement Voucher Cancel'
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
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    object CopyCell1: TMenuItem [6]
      Action = actCopyCell
      ShortCut = 16472
    end
    object PostingAllCashSettlementVoucher1: TMenuItem [11]
      Action = actPostingAllCashVoucher
      Caption = 'Settle All Voucher'
    end
    object SettleVoucher1: TMenuItem [12]
      Action = actSettleVoucher
    end
    object ReverseVoucher1: TMenuItem [13]
      Action = actReverseVoucher
    end
    object CancelVoucher1: TMenuItem [14]
      Action = actCancelVoucher
    end
    inherited N4: TMenuItem
      OnClick = actCancelVoucherExecute
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCashSettleVoucher
  end
  inherited aclEditor: TActionList
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    inherited actOpen: TNAction
      OnUpdate = actOpenUpdate
    end
    inherited actPrint: TNAction
      Visible = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
    end
    object actSettleVoucher: TNAction
      Category = 'NActions'
      Caption = 'Settle Selected Voucher'
      OnExecute = actSettleVoucherExecute
      OnUpdate = actOpenUpdate
      CheckPermission = True
    end
    object actReverseVoucher: TNAction
      Category = 'NActions'
      Caption = 'Reverse Voucher'
      OnExecute = actReverseVoucherExecute
      OnUpdate = actOpenUpdate
      CheckPermission = True
    end
    object actCancelVoucher: TNAction
      Category = 'NActions'
      Caption = 'Cancel Voucher'
      OnExecute = actCancelVoucherExecute
      OnUpdate = actOpenUpdate
      CheckPermission = True
    end
    object actGenerateBankInstructionFile: TNAction
      Category = 'NActions'
      Caption = 'Generate Bank Instruction File'
      OnExecute = actGenerateBankInstructionFileExecute
      CheckPermission = False
    end
    object actPrintPreview: TNAction
      Category = 'NActions'
      Caption = 'Print Preview'
      ImageIndex = 12
      OnExecute = actPrintPreviewExecute
      CheckPermission = False
    end
    object actCopyCell: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 49240
      OnExecute = actCopyCellExecute
      CheckPermission = False
    end
    object actViewJournalDetail: TNAction
      Category = 'NActions'
      Caption = 'View Ledger Detail'
      OnExecute = actViewJournalDetailExecute
      CheckPermission = False
    end
    object actPostingAllCashVoucher: TNAction
      Category = 'NActions'
      Caption = 'Settle All Cash Settlement Voucher'
      OnExecute = actPostingAllCashVoucherExecute
      CheckPermission = True
    end
    object actViewTransaction: TNAction
      Category = 'NActions'
      Caption = 'View Transaction'
      OnExecute = actViewTransactionExecute
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
          ItemName = 'cbVoucherType'
        end
        item
          Visible = True
          ItemName = 'dtVoucherDate'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOpen'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkPosted'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkCanceled'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkReversed'
        end
        item
          BeginGroup = True
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
    object cbVoucherType: TcxBarEditItem
      Caption = 'Voucher Type'
      Category = 0
      Hint = 'Voucher Type'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
      RepositoryItem = dmGlobal.luReceivementPayment
    end
    object dtVoucherDate: TcxBarEditItem
      Caption = 'Voucher Date'
      Category = 0
      Hint = 'Voucher Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd MMM yyyy'
    end
    object chkOpen: TcxBarEditItem
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object chkPosted: TcxBarEditItem
      Caption = 'Posted'
      Category = 0
      Hint = 'Posted'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
    end
    object chkCanceled: TcxBarEditItem
      Caption = 'Canceled'
      Category = 0
      Hint = 'Canceled'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '4'
      Properties.ValueUnchecked = '0'
    end
    object chkReversed: TcxBarEditItem
      Caption = 'Reversed'
      Category = 0
      Hint = 'Reversed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '3'
      Properties.ValueUnchecked = '0'
    end
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Cash Management\Cash_Settlement_Voucher.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'CSID'
        ParamType = ptUnknown
      end>
  end
  object cdsCashSettleVoucher: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SETTLE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashSettleVoucher'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsCashSettleVoucherCSID: TLargeintField
      FieldName = 'CSID'
      Required = True
    end
    object cdsCashSettleVoucherCSNO: TStringField
      FieldName = 'CSNO'
      Required = True
    end
    object cdsCashSettleVoucherCSDESC: TStringField
      FieldName = 'CSDESC'
      Required = True
      Size = 150
    end
    object cdsCashSettleVoucherENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashSettleVoucherVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashSettleVoucherACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashSettleVoucherACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCashSettleVoucherACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCashSettleVoucherACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsCashSettleVoucherACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsCashSettleVoucherPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsCashSettleVoucherCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsCashSettleVoucherAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsCashSettleVoucherFX_CCY: TStringField
      FieldName = 'FX_CCY'
      Size = 10
    end
    object cdsCashSettleVoucherFX_EXRATE: TFloatField
      FieldName = 'FX_EXRATE'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashSettleVoucherFX_AMOUNT: TFloatField
      FieldName = 'FX_AMOUNT'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsCashSettleVoucherSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashSettleVoucherSETTLE_WITH: TStringField
      FieldName = 'SETTLE_WITH'
      ReadOnly = True
      Required = True
      Size = 14
    end
    object cdsCashSettleVoucherSETTLETYPE: TStringField
      FieldName = 'SETTLETYPE'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object cdsCashSettleVoucherLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsCashSettleVoucherFUNDTRANSID: TLargeintField
      FieldName = 'FUNDTRANSID'
    end
  end
  object cdsBankInstructionList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SETTLE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankInstructionList'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsBankInstructionListCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 640
    Top = 224
    object cdsBankInstructionListBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionListBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionListBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionListENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankInstructionListVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankInstructionListBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionListBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionListTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionListLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionListLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionListACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsBankInstructionListACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsBankInstructionListACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsBankInstructionListACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsBankInstructionListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionListBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionListBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsBankInstructionListBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionListBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionListACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionListBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionListBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsBankInstructionListBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionListBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionListTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionListCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionListAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsBankInstructionListCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsBankInstructionListNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsBankInstructionListBANK_SOURCE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANK_SOURCE'
      Size = 30
      Calculated = True
    end
    object cdsBankInstructionListBNNAME_SOURCE: TStringField
      FieldName = 'BNNAME_SOURCE'
      ReadOnly = True
      Size = 50
    end
    object cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField
      FieldName = 'INITIAL_NAME_SOURCE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListBICODE_SOURCE: TStringField
      FieldName = 'BICODE_SOURCE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListBNNAME_TARGET: TStringField
      FieldName = 'BNNAME_TARGET'
      ReadOnly = True
      Size = 50
    end
    object cdsBankInstructionListINITIAL_NAME_TARGET: TStringField
      FieldName = 'INITIAL_NAME_TARGET'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListBICODE_TARGET: TStringField
      FieldName = 'BICODE_TARGET'
      ReadOnly = True
      Size = 10
    end
  end
  object dsBankInstructionList: TDataSource
    DataSet = cdsBankInstructionList
    Left = 640
    Top = 280
  end
  object popBankInstruction: TPopupMenu
    Left = 768
    Top = 224
    object GenerateBankInstructionFile1: TMenuItem
      Action = actGenerateBankInstructionFile
    end
  end
end
