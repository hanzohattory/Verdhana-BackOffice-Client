inherited frmCashSettleVoucherProcess: TfrmCashSettleVoucherProcess
  Caption = 'Cash Settlement Voucher Process'
  ClientHeight = 597
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 636
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 507
    ExplicitWidth = 994
    ExplicitHeight = 507
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 86
      Top = 10
      DataBinding.DataField = 'CSNO'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 140
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 86
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 221
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 373
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 289
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [4]
      Left = 473
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 86
      Top = 64
      DataBinding.DataField = 'CSDESC'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 508
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
      Left = 86
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 60
    end
    object cxDBTextEdit5: TcxDBTextEdit [7]
      Left = 194
      Top = 91
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 150
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [8]
      Left = 267
      Top = 172
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'FX_CCY'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 60
    end
    object cxDBTextEdit7: TcxDBTextEdit [9]
      Left = 631
      Top = 172
      DataBinding.DataField = 'FX_AMOUNT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 150
    end
    object grdMaster: TcxGrid [10]
      Left = 10
      Top = 283
      Width = 974
      Height = 214
      TabOrder = 33
      RootLevelOptions.DetailTabsPosition = dtpTop
      object gvwMaster: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsCashSettleD
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
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
            FieldName = 'CASH_OUTS_AMOUNT'
            Column = gvwMasterCASH_OUTS_AMOUNT
          end
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'SETTLED_AMOUNT'
            Column = gvwMasterSETTLED_AMOUNT
          end
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'VOUCHER_AMOUNT'
            Column = gvwMasterVOUCHER_AMOUNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Cash Outstanding'
          end>
        object gvwMasterCSID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CSID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwMasterCOID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwMasterAMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AMOUNT'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwMasterCOCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COCODE'
          Width = 133
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwMasterCODESC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODESC'
          Width = 242
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwMasterENTRYDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ENTRYDATE'
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwMasterTRDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRDATE'
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwMasterDUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DUEDATE'
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwMasterSIDE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SIDE'
          Width = 35
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwMasterCCY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCY'
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwMasterCASH_OUTS_AMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OUTS_AMOUNT'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwMasterSETTLED_AMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLED_AMOUNT'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwMasterVOUCHER_AMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOUCHER_AMOUNT'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
      end
      object gvwBankInstruction: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsBankInstruction
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Bank Instruction'
          end
          item
            Caption = 'Bank Source'
          end
          item
            Caption = 'Bank Target'
          end>
        object gvwBankInstructionBIID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BIID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwBankInstructionBINO: TcxGridDBBandedColumn
          Caption = 'No.'
          DataBinding.FieldName = 'BINO'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwBankInstructionBITYPE: TcxGridDBBandedColumn
          Caption = 'BI Type'
          DataBinding.FieldName = 'BITYPE'
          RepositoryItem = dmGlobal.luReceivementPayment
          Visible = False
          VisibleForCustomization = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwBankInstructionENTRYDATE: TcxGridDBBandedColumn
          Caption = 'Entry Date'
          DataBinding.FieldName = 'ENTRYDATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwBankInstructionVALUEDATE: TcxGridDBBandedColumn
          Caption = 'Value Date'
          DataBinding.FieldName = 'VALUEDATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwBankInstructionBIDESC: TcxGridDBBandedColumn
          Caption = 'Description'
          DataBinding.FieldName = 'BIDESC'
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwBankInstructionBANK_REF: TcxGridDBBandedColumn
          Caption = 'Bank Reff'
          DataBinding.FieldName = 'BANK_REF'
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwBankInstructionTRANS_TYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRANS_TYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwBankInstructionLINKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LINKID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwBankInstructionLINKNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LINKNO'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwBankInstructionSTAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STAT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwBankInstructionACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwBankInstructionACCBANKID_SOURCE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCBANKID_SOURCE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNCODE_SOURCE: TcxGridDBBandedColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BNCODE_SOURCE'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNACCNO_SOURCE: TcxGridDBBandedColumn
          Caption = 'Bank Acc No'
          DataBinding.FieldName = 'BNACCNO_SOURCE'
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNACCNAME_SOURCE: TcxGridDBBandedColumn
          Caption = 'Bank Acc Name'
          DataBinding.FieldName = 'BNACCNAME_SOURCE'
          Width = 200
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNBRANCH_SOURCE: TcxGridDBBandedColumn
          Caption = 'Bank Branch'
          DataBinding.FieldName = 'BNBRANCH_SOURCE'
          Width = 150
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwBankInstructionACCBANKID_TARGET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCBANKID_TARGET'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNCODE_TARGET: TcxGridDBBandedColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BNCODE_TARGET'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNACCNO_TARGET: TcxGridDBBandedColumn
          Caption = 'Bank Acc No'
          DataBinding.FieldName = 'BNACCNO_TARGET'
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNACCNAME_TARGET: TcxGridDBBandedColumn
          Caption = 'Bank Acc Name'
          DataBinding.FieldName = 'BNACCNAME_TARGET'
          Width = 200
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwBankInstructionBNBRANCH_TARGET: TcxGridDBBandedColumn
          Caption = 'Bank Branch'
          DataBinding.FieldName = 'BNBRANCH_TARGET'
          Width = 150
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwBankInstructionTRANFER_TYPE: TcxGridDBBandedColumn
          Caption = 'Transfer Type'
          DataBinding.FieldName = 'TRANFER_TYPE'
          Visible = False
          VisibleForCustomization = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwBankInstructionCCY: TcxGridDBBandedColumn
          Caption = 'Ccy'
          DataBinding.FieldName = 'CCY'
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwBankInstructionAMOUNT: TcxGridDBBandedColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'AMOUNT'
          Visible = False
          VisibleForCustomization = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwBankInstructionCHARGES: TcxGridDBBandedColumn
          Caption = 'Charges'
          DataBinding.FieldName = 'CHARGES'
          Visible = False
          VisibleForCustomization = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwBankInstructionNETAMOUNT: TcxGridDBBandedColumn
          Caption = 'Net Amount'
          DataBinding.FieldName = 'NETAMOUNT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwBankInstructionMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwBankInstructionMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwBankInstructionAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwBankInstructionAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwBankInstructionUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwBankInstructionUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwBankInstructionNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwBankInstructionISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwBankInstructionID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
      end
      object grdMasterLevel1: TcxGridLevel
        Caption = 'Cash Outstanding'
        GridView = gvwMaster
      end
      object grdMasterLevel2: TcxGridLevel
        Caption = 'Bank Instruction'
        GridView = gvwBankInstruction
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox [11]
      Left = 787
      Top = 172
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Request Full Flow'
      DataBinding.DataField = 'FULLFLOW'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
    end
    object cxDBTextEdit8: TcxDBTextEdit [12]
      Left = 407
      Top = 217
      DataBinding.DataField = 'BANKACCNO'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 120
    end
    object cxDBTextEdit9: TcxDBTextEdit [13]
      Left = 633
      Top = 217
      DataBinding.DataField = 'BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Width = 339
    end
    object cxDBTextEdit10: TcxDBTextEdit [14]
      Left = 156
      Top = 217
      DataBinding.DataField = 'BNNAME'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 155
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [15]
      Left = 431
      Top = 172
      DataBinding.DataField = 'FX_EXRATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.AssignedValues.MinValue = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object btnSettleVoucher: TcxButton [16]
      Left = 864
      Top = 10
      Width = 120
      Height = 25
      Action = actSettle
      TabOrder = 10
    end
    object btnReverseVoucher: TcxButton [17]
      Left = 864
      Top = 41
      Width = 120
      Height = 25
      Action = actReverse
      TabOrder = 11
    end
    object btnCancelVoucher: TcxButton [18]
      Left = 864
      Top = 72
      Width = 120
      Height = 25
      Action = actCancel
      TabOrder = 12
    end
    object cxDBTextEdit6: TcxDBTextEdit [19]
      Left = 71
      Top = 217
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 70
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [20]
      Left = 636
      Top = 10
      RepositoryItem = dmGlobal.luCashSettleStatus
      DataBinding.DataField = 'STAT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [21]
      Left = 376
      Top = 172
      DataBinding.DataField = 'FX_EXRATE_MODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.LookupItems.Strings = (
        '/'
        '*')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 40
    end
    object cxDBTextEdit12: TcxDBTextEdit [22]
      Left = 71
      Top = 244
      DataBinding.DataField = 'BANK_CCY'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Width = 60
    end
    object cxDBTextEdit13: TcxDBTextEdit [23]
      Left = 215
      Top = 244
      DataBinding.DataField = 'BANK_EXRATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 31
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [24]
      Left = 470
      Top = 244
      DataBinding.DataField = 'BANK_AMOUNT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 32
      Width = 150
    end
    object cxDBTextEdit15: TcxDBTextEdit [25]
      Left = 180
      Top = 244
      DataBinding.DataField = 'BANK_EXRATE_MODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 30
      Width = 20
    end
    object cxDBTextEdit16: TcxDBTextEdit [26]
      Left = 86
      Top = 118
      DataBinding.DataField = 'BNCODE_BROKER'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 70
    end
    object cxDBTextEdit17: TcxDBTextEdit [27]
      Left = 171
      Top = 118
      DataBinding.DataField = 'BNNAME_BROKER'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 155
    end
    object cxDBTextEdit18: TcxDBTextEdit [28]
      Left = 422
      Top = 118
      DataBinding.DataField = 'BANKACCNO_BROKER'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 120
    end
    object cxDBTextEdit19: TcxDBTextEdit [29]
      Left = 648
      Top = 118
      DataBinding.DataField = 'BANKACCNAME_BROKER'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 240
    end
    object cbCashBook: TcxDBLookupComboBox [30]
      Left = 86
      Top = 145
      RepositoryItem = dmGlobal.luCashBook
      DataBinding.DataField = 'BANKID'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 120
    end
    object cxDBTextEdit20: TcxDBTextEdit [31]
      Left = 221
      Top = 145
      DataBinding.DataField = 'CBDESC'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 331
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [32]
      Left = 86
      Top = 172
      RepositoryItem = dmGlobal.luReceivementPayment
      DataBinding.DataField = 'SETTLE_TYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 121
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [33]
      Left = 408
      Top = 91
      RepositoryItem = dmGlobal.luCashSettleWith
      DataBinding.DataField = 'KEEP_TYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 373
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 508
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Ccy'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Amount'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Settle Ccy'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Settle Amount'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lcCompanyBank: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Company Bank'
      ButtonOptions.Buttons = <>
      Enabled = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdMaster
      ControlOptions.OriginalHeight = 161
      ControlOptions.OriginalWidth = 1109
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Client Private Bank'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Bank Account No.'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahClient
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object lcBankInfo: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Bank Account Info'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = '-'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSettleVoucher
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnReverseVoucher
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnCancelVoucher
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Bank'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Ex Rate'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Bank Ccy'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = lcBankInfo
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Bank Amount (Settle Ccy)'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = lcBankInfo
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Ex Rate'
      Control = cxDBTextEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = 'Company Bank'
      Control = cxDBTextEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcInfo: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = 'Bank Account No.'
      Control = cxDBTextEdit18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = lcCashBook
      CaptionOptions.Text = 'Cash Book'
      Control = cbCashBook
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      Parent = lcCashBook
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 331
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object lcCashBook: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item33: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Settle Type'
      Control = cxDBImageComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item34: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Settle With'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 528
    Width = 994
    ExplicitTop = 528
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 577
    Width = 994
    ExplicitTop = 577
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 507
    Width = 994
    ExplicitTop = 507
    ExplicitWidth = 994
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashSettleHProcess
    Left = 296
    Top = 376
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashSettleHProcess: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftBoolean
        Name = 'SINGLE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'CSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashSettleHProcess'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCashSettleHProcessAfterOpen
    AfterScroll = cdsCashSettleHProcessAfterScroll
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 376
    object cdsCashSettleHProcessCSID: TLargeintField
      FieldName = 'CSID'
      Required = True
    end
    object cdsCashSettleHProcessCSNO: TStringField
      FieldName = 'CSNO'
      Required = True
    end
    object cdsCashSettleHProcessCSDESC: TStringField
      FieldName = 'CSDESC'
      Required = True
      Size = 150
    end
    object cdsCashSettleHProcessSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 1
    end
    object cdsCashSettleHProcessENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashSettleHProcessVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashSettleHProcessACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashSettleHProcessCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsCashSettleHProcessAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettleHProcessFX_CCY: TStringField
      FieldName = 'FX_CCY'
      Size = 10
    end
    object cdsCashSettleHProcessFX_EXRATE: TFloatField
      FieldName = 'FX_EXRATE'
      DisplayFormat = '#,##0.############'
    end
    object cdsCashSettleHProcessFX_AMOUNT: TFloatField
      FieldName = 'FX_AMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettleHProcessSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashSettleHProcessFULLFLOW: TStringField
      FieldName = 'FULLFLOW'
      Size = 1
    end
    object cdsCashSettleHProcessACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsCashSettleHProcessMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashSettleHProcessMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashSettleHProcessAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashSettleHProcessAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashSettleHProcessUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashSettleHProcessUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashSettleHProcessNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashSettleHProcessISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashSettleHProcessID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashSettleHProcessACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCashSettleHProcessACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCashSettleHProcessBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsCashSettleHProcessBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsCashSettleHProcessBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsCashSettleHProcessBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsCashSettleHProcessBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsCashSettleHProcessISRDN: TStringField
      FieldName = 'ISRDN'
      ReadOnly = True
      Size = 1
    end
    object cdsCashSettleHProcessqryBankInstructionProcess: TDataSetField
      FieldName = 'qryBankInstructionProcess'
    end
    object cdsCashSettleHProcessqryCashSettleDProcess: TDataSetField
      FieldName = 'qryCashSettleDProcess'
    end
    object cdsCashSettleHProcessFX_EXRATE_MODE: TStringField
      FieldName = 'FX_EXRATE_MODE'
      Required = True
      Size = 1
    end
    object cdsCashSettleHProcessBANK_CCY: TStringField
      FieldName = 'BANK_CCY'
      Size = 5
    end
    object cdsCashSettleHProcessBANK_EXRATE_MODE: TStringField
      FieldName = 'BANK_EXRATE_MODE'
      Size = 1
    end
    object cdsCashSettleHProcessBANK_EXRATE: TFloatField
      FieldName = 'BANK_EXRATE'
      DisplayFormat = '#,##0.############'
    end
    object cdsCashSettleHProcessBANK_AMOUNT: TFloatField
      FieldName = 'BANK_AMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettleHProcessBANKID: TIntegerField
      FieldName = 'BANKID'
    end
    object cdsCashSettleHProcessBNCODE_BROKER: TStringField
      FieldName = 'BNCODE_BROKER'
      ReadOnly = True
      Size = 30
    end
    object cdsCashSettleHProcessBNNAME_BROKER: TStringField
      FieldName = 'BNNAME_BROKER'
      ReadOnly = True
      Size = 50
    end
    object cdsCashSettleHProcessBANKACCNO_BROKER: TStringField
      FieldName = 'BANKACCNO_BROKER'
      ReadOnly = True
      Size = 30
    end
    object cdsCashSettleHProcessBANKACCNAME_BROKER: TStringField
      FieldName = 'BANKACCNAME_BROKER'
      ReadOnly = True
      Size = 100
    end
    object cdsCashSettleHProcessBANKBRANCH_BROKER: TStringField
      FieldName = 'BANKBRANCH_BROKER'
      ReadOnly = True
      Size = 100
    end
    object cdsCashSettleHProcessCBDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'CBDESC'
      LookupDataSet = dmLookup.cdsLuCashBook
      LookupKeyFields = 'CBID'
      LookupResultField = 'CBDESC'
      KeyFields = 'BANKID'
      Size = 150
      Lookup = True
    end
    object cdsCashSettleHProcessKEEP_TYPE: TStringField
      FieldName = 'KEEP_TYPE'
      Size = 1
    end
    object cdsCashSettleHProcessACCBANKID_KEEP: TIntegerField
      FieldName = 'ACCBANKID_KEEP'
    end
    object cdsCashSettleHProcessBANKID_FULLFLOW: TIntegerField
      FieldName = 'BANKID_FULLFLOW'
    end
  end
  object cdsCashSettleDProcess: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCashSettleHProcessqryCashSettleDProcess
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 424
    object cdsCashSettleDProcessCSID: TLargeintField
      FieldName = 'CSID'
      Required = True
    end
    object cdsCashSettleDProcessCOID: TLargeintField
      FieldName = 'COID'
      ReadOnly = True
      Required = True
    end
    object cdsCashSettleDProcessAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashSettleDProcessCOCODE: TStringField
      DisplayLabel = 'Cash Outstanding Code'
      FieldName = 'COCODE'
      ReadOnly = True
      Required = True
    end
    object cdsCashSettleDProcessCODESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CODESC'
      ReadOnly = True
      Required = True
      Size = 200
    end
    object cdsCashSettleDProcessENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashSettleDProcessTRDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashSettleDProcessDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashSettleDProcessSIDE: TStringField
      DisplayLabel = 'Side'
      FieldName = 'SIDE'
      ReadOnly = True
      Required = True
      OnGetText = cdsCashSettleDProcessSIDEGetText
      Size = 1
    end
    object cdsCashSettleDProcessCCY: TStringField
      DisplayLabel = 'Ccy'
      FieldName = 'CCY'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object cdsCashSettleDProcessCASH_OUTS_AMOUNT: TFloatField
      DisplayLabel = 'Net Amount'
      FieldName = 'CASH_OUTS_AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashSettleDProcessSETTLED_AMOUNT: TFloatField
      DisplayLabel = 'Settled Amount'
      FieldName = 'SETTLED_AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashSettleDProcessVOUCHER_AMOUNT: TFloatField
      DisplayLabel = 'Voucher Amount'
      FieldName = 'VOUCHER_AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsCashSettleD: TDataSource
    DataSet = cdsCashSettleDProcess
    Left = 296
    Top = 424
  end
  object cdsBankInstructionProcess: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCashSettleHProcessqryBankInstructionProcess
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 472
    object cdsBankInstructionProcessBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionProcessBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionProcessBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionProcessENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankInstructionProcessVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankInstructionProcessBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionProcessBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionProcessTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionProcessLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionProcessLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionProcessSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankInstructionProcessACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionProcessACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionProcessBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionProcessBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
      Size = 30
    end
    object cdsBankInstructionProcessBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionProcessBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionProcessACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionProcessBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionProcessBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
      Size = 30
    end
    object cdsBankInstructionProcessBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionProcessBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionProcessTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionProcessCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionProcessAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsBankInstructionProcessCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsBankInstructionProcessNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsBankInstructionProcessMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankInstructionProcessMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankInstructionProcessAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankInstructionProcessAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankInstructionProcessUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankInstructionProcessUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankInstructionProcessNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankInstructionProcessISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankInstructionProcessID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsBankInstruction: TDataSource
    DataSet = cdsBankInstructionProcess
    Left = 296
    Top = 472
  end
  object aclCashSettle: TActionList
    Left = 752
    Top = 32
    object actSettle: TNAction
      Category = 'NActions'
      Caption = 'Settle Voucher'
      OnExecute = actSettleExecute
      OnUpdate = actSettleUpdate
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse Voucher'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actCancel: TNAction
      Category = 'NActions'
      Caption = 'Cancel Voucher'
      OnExecute = actCancelExecute
      OnUpdate = actSettleUpdate
      CheckPermission = False
    end
  end
end
