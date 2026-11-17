inherited frmCashSettleVoucher: TfrmCashSettleVoucher
  Caption = 'Cash Settlement Voucher'
  ClientHeight = 671
  ClientWidth = 1003
  ExplicitWidth = 1019
  ExplicitHeight = 710
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1003
    Height = 581
    ExplicitWidth = 1003
    ExplicitHeight = 581
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 86
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CSNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 221
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 373
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 289
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 508
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [6]
      Left = 86
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 60
    end
    object cxDBTextEdit5: TcxDBTextEdit [7]
      Left = 194
      Top = 91
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 150
    end
    object cxDBTextEdit7: TcxDBTextEdit [8]
      Left = 631
      Top = 172
      DataBinding.DataField = 'FX_AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 150
    end
    object grdMaster: TcxGrid [9]
      Left = 10
      Top = 344
      Width = 983
      Height = 227
      TabOrder = 37
      OnExit = grdMasterExit
      object gvwMaster: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = gvwMasterEditing
        DataController.DataSource = dsCashOutstanding
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'PROCESSAMT'
            Column = gvwMasterPROCESSAMT
          end
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'OUTSTANDAMT'
            Column = gvwMasterOUTSTANDAMT
            DisplayText = '#,##0.00;(#,##0.00);0.00'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Cash Outstanding'
          end>
        object gvwMasterCOID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COID'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwMasterCOCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COCODE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 130
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwMasterENTRYDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ENTRYDATE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwMasterTRDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRDATE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwMasterDUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DUEDATE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwMasterTRTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRTYPE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwMasterSIDE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SIDE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwMasterCCY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCY'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwMasterEXRATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXRATE'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwMasterAMOUNT: TcxGridDBBandedColumn
          Caption = 'Original Amount'
          DataBinding.FieldName = 'AMOUNT'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwMasterSETTLED_AMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLED_AMOUNT'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          VisibleForCustomization = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwMasterVOUCHER_AMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOUCHER_AMOUNT'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          VisibleForCustomization = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwMasterSTAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STAT'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.FilteringAddValueItems = False
          Options.ExpressionEditing = False
          VisibleForCustomization = False
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwMasterCHECKED: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CHECKED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'True'
          Properties.ValueUnchecked = 'False'
          Properties.OnChange = gvwMasterCHECKEDPropertiesChange
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
          IsCaptionAssigned = True
        end
        object gvwMasterPROCESSAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PROCESSAMT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwMasterOUTSTANDAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OUTSTANDAMT'
          Options.Focusing = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwMasterOUTSTANDAMT_X: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OUTSTANDAMT_X'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwMasterPROCESSAMT_X: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PROCESSAMT_X'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
      end
      object grdMasterLevel1: TcxGridLevel
        GridView = gvwMaster
      end
    end
    object grdCashPos: TcxGrid [10]
      Left = 600
      Top = 10
      Width = 393
      Height = 102
      TabOrder = 9
      object gvwCashPos: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsLastCashPosition
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00;(#,##0.00);0.00'
          end
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'X'
            DisplayText = '#,##0.00;(#,##0.00);0.00'
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
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Cash Position'
          end>
        object gvwCashPosCCY: TcxGridDBBandedColumn
          Caption = 'Ccy'
          DataBinding.FieldName = 'CCY'
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_ONHAND: TcxGridDBBandedColumn
          Caption = 'Cash OnHand'
          DataBinding.FieldName = 'CASH_ONHAND'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_QQ: TcxGridDBBandedColumn
          Caption = 'Cash QQ'
          DataBinding.FieldName = 'CASH_QQ'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_OUTS: TcxGridDBBandedColumn
          Caption = 'Cash Outstanding'
          DataBinding.FieldName = 'CASH_OUTS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwCashPosARAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARAMT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwCashPosAPAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APAMT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_ONHOLD: TcxGridDBBandedColumn
          Caption = 'Cash OnHold'
          DataBinding.FieldName = 'CASH_ONHOLD'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_AVAILABLE: TcxGridDBBandedColumn
          Caption = 'Cash Available'
          DataBinding.FieldName = 'CASH_AVAILABLE'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwCashPos
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox [11]
      Left = 787
      Top = 172
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Request Full Flow'
      DataBinding.DataField = 'FULLFLOW'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      OnEditing = cxDBCheckBox1Editing
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [12]
      Left = 86
      Top = 217
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end>
      Properties.ListSource = dsLuPrivateBankAcc
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 22
      Width = 70
    end
    object cxDBTextEdit8: TcxDBTextEdit [13]
      Left = 422
      Top = 217
      TabStop = False
      DataBinding.DataField = 'BANKACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 120
    end
    object cxDBTextEdit9: TcxDBTextEdit [14]
      Left = 648
      Top = 217
      TabStop = False
      DataBinding.DataField = 'BANKACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 333
    end
    object cxDBTextEdit10: TcxDBTextEdit [15]
      Left = 171
      Top = 217
      TabStop = False
      DataBinding.DataField = 'BNNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 155
    end
    object chkAll: TcxCheckBox [16]
      Left = 86
      Top = 301
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chkAllPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 30
    end
    object dtDue: TcxDateEdit [17]
      Left = 137
      Top = 301
      Properties.DisplayFormat = 'dd MMM yyyy'
      Properties.OnChange = dtDuePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 31
      Width = 121
    end
    object btnFiltered: TcxButton [18]
      Left = 369
      Top = 301
      Width = 75
      Height = 25
      Caption = 'Filtered'
      TabOrder = 33
      OnClick = btnFilteredClick
    end
    object btnAll: TcxButton [19]
      Left = 450
      Top = 301
      Width = 75
      Height = 25
      Caption = 'All'
      TabOrder = 34
      OnClick = btnAllClick
    end
    object btnUnCheck: TcxButton [20]
      Left = 531
      Top = 301
      Width = 75
      Height = 25
      Caption = 'UnCheck'
      TabOrder = 35
      OnClick = btnUnCheckClick
    end
    object edExRate: TcxDBCurrencyEdit [21]
      Left = 431
      Top = 172
      DataBinding.DataField = 'FX_EXRATE'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      OnEditing = edExRateEditing
      Width = 121
    end
    object cxButton1: TcxButton [22]
      Left = 636
      Top = 301
      Width = 75
      Height = 25
      Caption = 'Deposit'
      TabOrder = 36
      OnClick = cxButton1Click
    end
    object btnSmart: TcxButton [23]
      Left = 288
      Top = 301
      Width = 75
      Height = 25
      Caption = 'Smart'
      TabOrder = 32
      OnClick = btnSmartClick
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [24]
      Left = 376
      Top = 172
      DataBinding.DataField = 'FX_EXRATE_MODE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taCenter
      Properties.Items = <
        item
          Description = '/'
          ImageIndex = 0
          Value = '/'
        end
        item
          Description = '*'
          Value = '*'
        end>
      Properties.PopupAlignment = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 40
    end
    object cxDBTextEdit6: TcxDBTextEdit [25]
      Left = 86
      Top = 244
      DataBinding.DataField = 'BANK_CCY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 60
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [26]
      Left = 195
      Top = 244
      DataBinding.DataField = 'BANK_EXRATE_MODE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taCenter
      Properties.Items = <
        item
          Description = '/'
          ImageIndex = 0
          Value = '/'
        end
        item
          Description = '*'
          Value = '*'
        end>
      Properties.PopupAlignment = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 27
      Width = 40
    end
    object edBankRate: TcxDBTextEdit [27]
      Left = 250
      Top = 244
      DataBinding.DataField = 'BANK_EXRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      OnEditing = edBankRateEditing
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [28]
      Left = 505
      Top = 244
      DataBinding.DataField = 'BANK_AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Width = 150
    end
    object cbCompanyBank: TcxDBLookupComboBox [29]
      Left = 86
      Top = 118
      RepositoryItem = dmGlobal.luBankCompany
      DataBinding.DataField = 'BANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 70
    end
    object cxDBTextEdit11: TcxDBTextEdit [30]
      Left = 171
      Top = 118
      TabStop = False
      DataBinding.DataField = 'BNNAME_BROKER'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 155
    end
    object cxDBTextEdit13: TcxDBTextEdit [31]
      Left = 422
      Top = 118
      TabStop = False
      DataBinding.DataField = 'BANKACCNO_BROKER'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 120
    end
    object cxDBTextEdit14: TcxDBTextEdit [32]
      Left = 648
      Top = 118
      TabStop = False
      DataBinding.DataField = 'BANKACCNAME_BROKER'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 240
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [33]
      Left = 408
      Top = 91
      RepositoryItem = dmGlobal.luCashSettleWith
      DataBinding.DataField = 'KEEP_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [34]
      Left = 86
      Top = 172
      RepositoryItem = dmGlobal.luReceivementPayment
      DataBinding.DataField = 'SETTLE_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 121
    end
    object cbCashBook: TcxDBLookupComboBox [35]
      Left = 86
      Top = 145
      RepositoryItem = dmGlobal.luCashBook
      DataBinding.DataField = 'BANKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      OnEnter = cbCashBookEnter
      OnExit = cbCashBookExit
      Width = 120
    end
    object cxDBTextEdit16: TcxDBTextEdit [36]
      Left = 221
      Top = 145
      DataBinding.DataField = 'CBDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 331
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [37]
      Left = 267
      Top = 172
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'FX_CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 60
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
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 373
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 508
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Ccy'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Amount'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
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
      Index = 4
    end
    object lcCompanyBank: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Company Bank'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdMaster
      ControlOptions.OriginalHeight = 161
      ControlOptions.OriginalWidth = 1109
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdCashPos
      ControlOptions.OriginalHeight = 102
      ControlOptions.OriginalWidth = 276
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Bank'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Bank Account No.'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahClient
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'All Outstand'
      Control = chkAll
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcDueDate: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Date'
      Control = dtDue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnFiltered
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnAll
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnUnCheck
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Net Due Date'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Check'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = '-'
      Control = edExRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Cash'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnSmart
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Ex Rate'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Bank Ccy'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = lcClientBank
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Ex Rate'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = lcClientBank
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = '-'
      Control = edBankRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Bank Amount (Settle Ccy)'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcClientBank: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Client Private Bank'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = 'Company Bank'
      Control = cbCompanyBank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcInfo: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = 'Bank Account No.'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item33: TdxLayoutItem
      Parent = lcCompanyBank
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Settle With'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item35: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Settle Type'
      Control = cxDBImageComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item36: TdxLayoutItem
      Parent = lcCashBook
      CaptionOptions.Text = 'Cash Book'
      Control = cbCashBook
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item37: TdxLayoutItem
      Parent = lcCashBook
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 331
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcCashBook: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcSettleCcy: TdxLayoutItem
      Parent = lcInfo
      CaptionOptions.Text = 'Settle Ccy'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 602
    Width = 1003
    ExplicitTop = 602
    ExplicitWidth = 1003
    inherited dbNavLog: TDBNavigator
      Left = 889
      Hints.Strings = ()
      ExplicitLeft = 889
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 651
    Width = 1003
    ExplicitTop = 651
    ExplicitWidth = 1003
  end
  inherited tabEditorData: TTabSet
    Top = 581
    Width = 1003
    ExplicitTop = 581
    ExplicitWidth = 1003
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashSettlementH
    Left = 432
    Top = 240
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 72
    Top = 312
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashSettlementH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashSettlementH'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCashSettlementHNewRecord
    OnReconcileError = cdsCashSettlementHReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 432
    Top = 288
    object cdsCashSettlementHCSID: TLargeintField
      FieldName = 'CSID'
      Required = True
    end
    object cdsCashSettlementHCSNO: TStringField
      FieldName = 'CSNO'
      Required = True
    end
    object cdsCashSettlementHCSDESC: TStringField
      FieldName = 'CSDESC'
      Required = True
      Size = 150
    end
    object cdsCashSettlementHSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 1
    end
    object cdsCashSettlementHENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashSettlementHVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashSettlementHACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsCashSettlementHACCIDChange
    end
    object cdsCashSettlementHCCY: TStringField
      FieldName = 'CCY'
      Required = True
      OnChange = cdsCashSettlementHCCYChange
      Size = 10
    end
    object cdsCashSettlementHAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      OnChange = cdsCashSettlementHFX_EXRATEChange
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementHFX_CCY: TStringField
      FieldName = 'FX_CCY'
      Required = True
      OnChange = cdsCashSettlementHFX_CCYChange
      Size = 10
    end
    object cdsCashSettlementHFX_EXRATE: TFloatField
      FieldName = 'FX_EXRATE'
      Required = True
      OnChange = cdsCashSettlementHFX_EXRATEChange
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsCashSettlementHFX_AMOUNT: TFloatField
      FieldName = 'FX_AMOUNT'
      Required = True
      OnChange = cdsCashSettlementHFX_AMOUNTChange
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementHSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashSettlementHFULLFLOW: TStringField
      FieldName = 'FULLFLOW'
      OnChange = cdsCashSettlementHFULLFLOWChange
      Size = 1
    end
    object cdsCashSettlementHACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      OnChange = cdsCashSettlementHACCBANKIDChange
    end
    object cdsCashSettlementHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashSettlementHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashSettlementHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashSettlementHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashSettlementHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashSettlementHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashSettlementHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashSettlementHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashSettlementHqryCashSettlementD: TDataSetField
      FieldName = 'qryCashSettlementD'
    end
    object cdsCashSettlementHBNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE'
      LookupDataSet = cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashSettlementHBNNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNNAME'
      LookupDataSet = cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashSettlementHBANKACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNO'
      LookupDataSet = cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashSettlementHBANKACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNAME'
      LookupDataSet = cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashSettlementHBANKCCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKCCYCODE'
      LookupDataSet = cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashSettlementHBANKBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKBRANCH'
      LookupDataSet = cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 100
      Lookup = True
    end
    object cdsCashSettlementHACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsCashSettlementHACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsCashSettlementHFULLFLOWACC: TStringField
      FieldKind = fkLookup
      FieldName = 'FULLFLOWACC'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'FULLFLOW'
      KeyFields = 'ACCID'
      Size = 1
      Lookup = True
    end
    object cdsCashSettlementHFX_EXRATE_MODE: TStringField
      FieldName = 'FX_EXRATE_MODE'
      Required = True
      OnChange = cdsCashSettlementHFX_CCYChange
      Size = 1
    end
    object cdsCashSettlementHBANK_CCY: TStringField
      FieldName = 'BANK_CCY'
      OnChange = cdsCashSettlementHBANK_CCYChange
      Size = 5
    end
    object cdsCashSettlementHBANK_EXRATE_MODE: TStringField
      FieldName = 'BANK_EXRATE_MODE'
      OnChange = cdsCashSettlementHBANK_CCYChange
      Size = 1
    end
    object cdsCashSettlementHBANK_EXRATE: TFloatField
      FieldName = 'BANK_EXRATE'
      OnChange = cdsCashSettlementHBANK_EXRATEChange
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsCashSettlementHBANK_AMOUNT: TFloatField
      FieldName = 'BANK_AMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementHBANKID: TIntegerField
      FieldName = 'BANKID'
      OnChange = cdsCashSettlementHBANKIDChange
    end
    object cdsCashSettlementHBNCODE_BROKER: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE_BROKER'
      LookupDataSet = dmLookup.cdsLuCompanyBanks
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'BANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashSettlementHBNNAME_BROKER: TStringField
      FieldKind = fkLookup
      FieldName = 'BNNAME_BROKER'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BNNAME'
      KeyFields = 'BANKID'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object cdsCashSettlementHBANKACCNO_BROKER: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNO_BROKER'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCOUNTNO'
      KeyFields = 'BANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashSettlementHBANKACCNAME_BROKER: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNAME_BROKER'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCOUNTNAME'
      KeyFields = 'BANKID'
      Size = 100
      Lookup = True
    end
    object cdsCashSettlementHBANKCCYCODE_BROKER: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKCCYCODE_BROKER'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'BANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashSettlementHBANKBRANCH_BROKER: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKBRANCH_BROKER'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCOUNTBRANCH'
      KeyFields = 'BANKID'
      Size = 100
      Lookup = True
    end
    object cdsCashSettlementHKEEP_TYPE: TStringField
      FieldName = 'KEEP_TYPE'
      OnChange = cdsCashSettlementHKEEP_TYPEChange
      Size = 1
    end
    object cdsCashSettlementHACCBANKID_KEEP: TIntegerField
      FieldName = 'ACCBANKID_KEEP'
    end
    object cdsCashSettlementHBANKID_FULLFLOW: TIntegerField
      FieldName = 'BANKID_FULLFLOW'
    end
    object cdsCashSettlementHCBDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'CBDESC'
      LookupDataSet = dmLookup.cdsLuCashBook
      LookupKeyFields = 'CBID'
      LookupResultField = 'CBDESC'
      KeyFields = 'BANKID'
      Size = 150
      Lookup = True
    end
    object cdsCashSettlementHCCYCODE_CASHBOOK: TStringField
      FieldKind = fkLookup
      FieldName = 'CCYCODE_CASHBOOK'
      LookupDataSet = dmLookup.cdsLuCashBook
      LookupKeyFields = 'CBID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'BANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashSettlementHID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCashSettlementD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCashSettlementHqryCashSettlementD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 432
    Top = 408
    object cdsCashSettlementDCSID: TLargeintField
      FieldName = 'CSID'
      Required = True
    end
    object cdsCashSettlementDSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsCashSettlementDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object cdsCashSettlementDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashSettlementDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashSettlementDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashSettlementDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashSettlementDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashSettlementDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashSettlementDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashSettlementDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashSettlementDID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsLastCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryLastCashPosition'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsLastCashPositionAfterOpen
    OnCalcFields = cdsLastCashPositionCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 739
    Top = 276
    object cdsLastCashPositionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsLastCashPositionCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsLastCashPositionCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsLastCashPositionCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsLastCashPositionCASH_ONHOLD: TFloatField
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsLastCashPositionARAMT: TFloatField
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsLastCashPositionAPAMT: TFloatField
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsLastCashPositionCASH_AVAILABLE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASH_AVAILABLE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
  end
  object dsLastCashPosition: TDataSource
    DataSet = cdsLastCashPosition
    Left = 811
    Top = 412
  end
  object cdsCashOutstanding: TNClientDataset
    Aggregates = <>
    Filtered = True
    FieldDefs = <
      item
        Name = 'COID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'COCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENTRYDATE'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'TRDATE'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DUEDATE'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'TRTYPE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIDE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CCY'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'EXRATE'
        DataType = ftFloat
      end
      item
        Name = 'AMOUNT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SETTLED_AMOUNT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VOUCHER_AMOUNT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'STAT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'cdsCashOutstandingIndex1'
        Fields = 'DUEDATE'
      end>
    IndexFieldNames = 'DUEDATE;SIDE'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashOutstanding'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    BeforeEdit = cdsCashOutstandingBeforeEdit
    BeforePost = cdsCashOutstandingBeforePost
    OnCalcFields = cdsCashOutstandingCalcFields
    OnFilterRecord = cdsCashOutstandingFilterRecord
    OnReconcileError = cdsCashSettlementHReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 619
    Top = 292
    object cdsCashOutstandingCOID: TLargeintField
      FieldName = 'COID'
      Required = True
    end
    object cdsCashOutstandingCOCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'COCODE'
      Required = True
    end
    object cdsCashOutstandingENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashOutstandingTRDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashOutstandingDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashOutstandingTRTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TRTYPE'
      Size = 2
    end
    object cdsCashOutstandingSIDE: TStringField
      DisplayLabel = 'Side'
      FieldName = 'SIDE'
      Required = True
      Size = 1
    end
    object cdsCashOutstandingCCY: TStringField
      DisplayLabel = 'Ccy'
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashOutstandingEXRATE: TFloatField
      DisplayLabel = 'Ex. Rate'
      FieldName = 'EXRATE'
    end
    object cdsCashOutstandingAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashOutstandingSETTLED_AMOUNT: TFloatField
      DisplayLabel = 'Settled Amount'
      FieldName = 'SETTLED_AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashOutstandingVOUCHER_AMOUNT: TFloatField
      DisplayLabel = 'Voucher Amount'
      FieldName = 'VOUCHER_AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashOutstandingSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Required = True
      OnGetText = cdsCashOutstandingSTATGetText
      Size = 1
    end
    object cdsCashOutstandingCHECKED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'CHECKED'
      OnChange = cdsCashOutstandingCHECKEDChange
    end
    object cdsCashOutstandingPROCESSAMT: TFloatField
      DisplayLabel = 'Process Amount'
      FieldKind = fkInternalCalc
      FieldName = 'PROCESSAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashOutstandingOUTSTANDAMT: TFloatField
      DisplayLabel = 'Outstand Amount'
      FieldKind = fkInternalCalc
      FieldName = 'OUTSTANDAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashOutstandingOUTSTANDAMT_X: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'OUTSTANDAMT_X'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashOutstandingPROCESSAMT_X: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PROCESSAMT_X'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsCashOutstanding: TDataSource
    DataSet = cdsCashOutstanding
    Left = 707
    Top = 396
  end
  object cdsLuPrivateBankAcc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE2'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuPrivateBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 619
    Top = 412
    object cdsLuPrivateBankAccACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuPrivateBankAccACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuPrivateBankAccACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuPrivateBankAccBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 20
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuPrivateBankAccBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      DisplayWidth = 30
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuPrivateBankAccBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuPrivateBankAccBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuPrivateBankAccBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuPrivateBankAccISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuPrivateBankAccCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuPrivateBankAccPRIVATEBANK_DEFAULT: TStringField
      FieldName = 'PRIVATEBANK_DEFAULT'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object dsLuPrivateBankAcc: TDataSource
    DataSet = cdsLuPrivateBankAcc
    Left = 619
    Top = 468
  end
  object cdsCreateBankInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FX_CCY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FX_EXRATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FX_AMOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'FULLFLOW'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCBANKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCreateBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 432
    Top = 464
    object cdsCreateBankInstructionACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCreateBankInstructionBITYPE: TStringField
      FieldName = 'BITYPE'
      Size = 1
    end
    object cdsCreateBankInstructionACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsCreateBankInstructionBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsCreateBankInstructionBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsCreateBankInstructionBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsCreateBankInstructionBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsCreateBankInstructionACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
    end
    object cdsCreateBankInstructionBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsCreateBankInstructionBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsCreateBankInstructionBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsCreateBankInstructionBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsCreateBankInstructionCCY: TStringField
      FieldName = 'CCY'
      Size = 10
    end
    object cdsCreateBankInstructionAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsCreateBankInstructionCHARGES: TFloatField
      FieldName = 'CHARGES'
    end
    object cdsCreateBankInstructionNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
    end
  end
  object cdsBankInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BIID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    OnReconcileError = cdsCashSettlementHReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 384
    object cdsBankInstructionBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsBankInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsBankInstructionBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankInstructionACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsBankInstructionBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsBankInstructionBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object cdsBankInstructionCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
    end
    object cdsBankInstructionNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
    end
    object cdsBankInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankInstructionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankInstructionBANKTYPE_SOURCE: TStringField
      FieldName = 'BANKTYPE_SOURCE'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_SOURCE: TStringField
      FieldName = 'CCYCODE_SOURCE'
      Size = 5
    end
    object cdsBankInstructionBANKTYPE_TARGET: TStringField
      FieldName = 'BANKTYPE_TARGET'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_TARGET: TStringField
      FieldName = 'CCYCODE_TARGET'
      Size = 5
    end
  end
  object cdsLuBankCompanyDefaultByBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AS_RDNBANK'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'AS_PRIVATEBANK'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'AS_PAYMENTBANK'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankCompanyDefaultByBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 440
    object cdsLuBankCompanyDefaultByBankBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuBankCompanyDefaultByBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsLuBankCompanyDefaultByBankBANKACCOUNTNO: TStringField
      FieldName = 'BANKACCOUNTNO'
      Size = 30
    end
    object cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME: TStringField
      FieldName = 'BANKACCOUNTNAME'
      Size = 150
    end
    object cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH: TStringField
      FieldName = 'BANKACCOUNTBRANCH'
      Size = 50
    end
    object cdsLuBankCompanyDefaultByBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuBankCompanyDefaultByBankSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankAS_RDNBANK: TStringField
      FieldName = 'AS_RDNBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankAS_PRIVATEBANK: TStringField
      FieldName = 'AS_PRIVATEBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankAS_PAYMENTBANK: TStringField
      FieldName = 'AS_PAYMENTBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLuBankCompanyByBankID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BANKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankCompanyDefaultByBankID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 880
    Top = 272
    object cdsLuBankCompanyByBankIDBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuBankCompanyByBankIDBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsLuBankCompanyByBankIDBANKACCOUNTNO: TStringField
      FieldName = 'BANKACCOUNTNO'
      Size = 30
    end
    object cdsLuBankCompanyByBankIDBANKACCOUNTNAME: TStringField
      FieldName = 'BANKACCOUNTNAME'
      Size = 150
    end
    object cdsLuBankCompanyByBankIDBANKACCOUNTBRANCH: TStringField
      FieldName = 'BANKACCOUNTBRANCH'
      Size = 50
    end
    object cdsLuBankCompanyByBankIDCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuBankCompanyByBankIDSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsLuBankCompanyByBankIDAS_RDNBANK: TStringField
      FieldName = 'AS_RDNBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyByBankIDAS_PRIVATEBANK: TStringField
      FieldName = 'AS_PRIVATEBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyByBankIDAS_PAYMENTBANK: TStringField
      FieldName = 'AS_PAYMENTBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyByBankIDBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsBankCompanyPayment: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ccyCode'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBankCompanyPayment'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 880
    Top = 352
    object cdsBankCompanyPaymentCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 10
    end
    object cdsBankCompanyPaymentBANKID: TIntegerField
      FieldName = 'BANKID'
    end
  end
end
