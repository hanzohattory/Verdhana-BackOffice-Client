inherited frmDailyBankInstruction: TfrmDailyBankInstruction
  Caption = 'Daily Bank Instruction'
  ClientWidth = 1473
  ExplicitWidth = 1473
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1473
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitWidth = 1473
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = gvwMasterAMOUNT
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'NETAMOUNT'
          Column = gvwMasterNETAMOUNT
        end>
      OptionsView.GroupByBox = True
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Bank Instruction Info'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Bank Source'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Bank Target'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterBIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BIID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBINO: TcxGridDBBandedColumn
        Caption = 'Instruction No.'
        DataBinding.FieldName = 'BINO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBITYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BITYPE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Value Date'
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBIDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'BIDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBANK_REF: TcxGridDBBandedColumn
        Caption = 'Bank Ref'
        DataBinding.FieldName = 'BANK_REF'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTRANS_TYPE: TcxGridDBBandedColumn
        Caption = 'Trans Type'
        DataBinding.FieldName = 'TRANS_TYPE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterLINKNO: TcxGridDBBandedColumn
        Caption = 'Transaction No.'
        DataBinding.FieldName = 'LINKNO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterACCBANKID_SOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID_SOURCE'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Source'
        DataBinding.FieldName = 'BNCODE_SOURCE'
        SortIndex = 0
        SortOrder = soAscending
        Width = 83
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNO_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Acc No. Source'
        DataBinding.FieldName = 'BNACCNO_SOURCE'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNAME_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Acc Name Source'
        DataBinding.FieldName = 'BNACCNAME_SOURCE'
        Width = 300
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBNBRANCH_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Branch Source'
        DataBinding.FieldName = 'BNBRANCH_SOURCE'
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBNNAME_SOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNNAME_SOURCE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterINITIAL_NAME_SOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INITIAL_NAME_SOURCE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBICODE_SOURCE: TcxGridDBBandedColumn
        Caption = 'BI Code Source'
        DataBinding.FieldName = 'BICODE_SOURCE'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCBANKID_TARGET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID_TARGET'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Target'
        DataBinding.FieldName = 'BNCODE_TARGET'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNO_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Acc No. Target'
        DataBinding.FieldName = 'BNACCNO_TARGET'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNAME_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Acc Name Target'
        DataBinding.FieldName = 'BNACCNAME_TARGET'
        Width = 300
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBNBRANCH_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Branch Target'
        DataBinding.FieldName = 'BNBRANCH_TARGET'
        Width = 150
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBNNAME_TARGET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNNAME_TARGET'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterINITIAL_NAME_TARGET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INITIAL_NAME_TARGET'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBICODE_TARGET: TcxGridDBBandedColumn
        Caption = 'BI Code Target'
        DataBinding.FieldName = 'BICODE_TARGET'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTRANFER_TYPE: TcxGridDBBandedColumn
        Caption = 'Transfer Type'
        DataBinding.FieldName = 'TRANFER_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Visible = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCHARGES: TcxGridDBBandedColumn
        Caption = 'Charges'
        DataBinding.FieldName = 'CHARGES'
        Visible = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterNETAMOUNT: TcxGridDBBandedColumn
        Caption = 'Net Amount'
        DataBinding.FieldName = 'NETAMOUNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterFILE_CREATED: TcxGridDBBandedColumn
        Caption = 'File Created'
        DataBinding.FieldName = 'FILE_CREATED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterBANKTYPE_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Type Source'
        DataBinding.FieldName = 'BANKTYPE_SOURCE'
        RepositoryItem = dmGlobal.luBankType
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Ccy Source'
        DataBinding.FieldName = 'CCYCODE_SOURCE'
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterBANKTYPE_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Type Target'
        DataBinding.FieldName = 'BANKTYPE_TARGET'
        RepositoryItem = dmGlobal.luBankType
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Ccy Target'
        DataBinding.FieldName = 'CCYCODE_TARGET'
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSTAT_BI: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STAT_BI'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Canceled'
            Value = 'C'
          end
          item
            Description = 'Created File'
            Value = 'F'
          end
          item
            Description = 'Reversed'
            Value = 'R'
          end>
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object gvwBankChart: TcxGridDBChartView [1]
      DataController.DataSource = dsSumBank
      DiagramColumn.Active = True
      DiagramColumn.Values.VaryColorsByCategory = True
      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
      DiagramPie.SeriesSites = True
      OptionsCustomize.DataDrillDown = False
      object gvwBankChartDataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'BNDESC'
        DisplayText = 'Company Bank'
      end
      object gvwBankChartSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'DEBET'
        DisplayText = 'Debet'
        ValueCaptionFormat = '#,##0.00'
      end
      object gvwBankChartSeries2: TcxGridDBChartSeries
        DataBinding.FieldName = 'CREDIT'
        DisplayText = 'Credit'
        ValueCaptionFormat = '#,##0.00'
      end
      object gvwBankChartSeries3: TcxGridDBChartSeries
        DataBinding.FieldName = 'NETAMOUNT'
        DisplayText = 'Net Balance'
        ValueCaptionFormat = '#,##0.00'
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Bank Instruction'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'Company Bank Instruction Summary'
      GridView = gvwBankChart
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
  inherited popMaster: TPopupMenu
    object GenerateBankInstructionFile1: TMenuItem [9]
      Action = actGenerateBankInstructionFile
    end
    object ReverseGenerate1: TMenuItem [10]
      Action = actCancelBankInstr
    end
    object OpenGenerateFile1: TMenuItem [11]
      Action = actOpenGenerateFile
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsBankInstructionList
  end
  inherited aclEditor: TActionList
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    object actGenerateBankInstructionFile: TNAction
      Category = 'NActions'
      Caption = 'Generate Bank Instruction File'
      OnExecute = actGenerateBankInstructionFileExecute
      CheckPermission = False
    end
    object actCancelBankInstr: TNAction
      Category = 'NActions'
      Caption = 'Cancel Bank Instruction'
      OnExecute = actCancelBankInstrExecute
      CheckPermission = False
    end
    object actOpenGenerateFile: TNAction
      Category = 'NActions'
      Caption = 'Open Generate File'
      OnExecute = actOpenGenerateFileExecute
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
          Visible = True
          ItemName = 'cbBIType'
        end
        item
          Visible = True
          ItemName = 'cbFilter'
        end
        item
          Visible = True
          ItemName = 'dtFilter'
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
          ItemName = 'chkCanceled'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkCreated'
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
    object cbBIType: TcxBarEditItem
      Caption = 'Bank Instruction Type'
      Category = 0
      Hint = 'Bank Instruction Type'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
      RepositoryItem = dmGlobal.luReceivementPayment
    end
    object cbFilter: TcxBarEditItem
      Caption = 'Filter By'
      Category = 0
      Hint = 'Filter By'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = 'Entry Date'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Value Date'
          Value = 'V'
        end>
    end
    object dtFilter: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
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
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object chkCreated: TcxBarEditItem
      Caption = 'Created File'
      Category = 0
      Hint = 'Created File'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
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
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'FA\PaymentVoucher.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'BINO_VOUCHER'
        ParamType = ptInput
      end>
  end
  object cdsBankInstructionList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BITYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FILTERBY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FILTERDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OPEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CANCELED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CREATED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'REVERSED'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryDailyBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsBankInstructionListAfterOpen
    OnCalcFields = cdsBankInstructionListCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 168
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
      Size = 30
    end
    object cdsBankInstructionListBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionListBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
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
      Size = 30
    end
    object cdsBankInstructionListBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionListBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
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
    object cdsBankInstructionListFILE_CREATED: TStringField
      FieldName = 'FILE_CREATED'
      Size = 1
    end
    object cdsBankInstructionListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankInstructionListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankInstructionListBANKTYPE_SOURCE: TStringField
      FieldName = 'BANKTYPE_SOURCE'
      Size = 1
    end
    object cdsBankInstructionListCCYCODE_SOURCE: TStringField
      FieldName = 'CCYCODE_SOURCE'
      Size = 5
    end
    object cdsBankInstructionListBANKTYPE_TARGET: TStringField
      FieldName = 'BANKTYPE_TARGET'
      Size = 1
    end
    object cdsBankInstructionListCCYCODE_TARGET: TStringField
      FieldName = 'CCYCODE_TARGET'
      Size = 5
    end
    object cdsBankInstructionListBANK_SOURCE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANK_SOURCE'
      Size = 30
      Calculated = True
    end
    object cdsBankInstructionListSTAT_BI: TStringField
      FieldName = 'STAT_BI'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object cdsSumBank: TNClientDataset
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsSumBankIndex1'
        Fields = 'BANKID'
        Options = [ixPrimary]
      end>
    IndexFieldNames = 'BANKID'
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsSumBankCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 168
    object cdsSumBankBANKID: TIntegerField
      FieldName = 'BANKID'
    end
    object cdsSumBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsSumBankBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Size = 30
    end
    object cdsSumBankBNDESC: TStringField
      FieldName = 'BNDESC'
      Size = 40
    end
    object cdsSumBankDEBET: TFloatField
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumBankCREDIT: TFloatField
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumBankNETAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETAMOUNT'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object dsSumBank: TDataSource
    DataSet = cdsSumBank
    Left = 296
    Top = 168
  end
end
