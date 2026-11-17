inherited frmCashWithdraw: TfrmCashWithdraw
  Caption = 'Cash Withdraw'
  ClientHeight = 622
  ClientWidth = 724
  ExplicitWidth = 740
  ExplicitHeight = 661
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 724
    Height = 532
    ExplicitWidth = 724
    ExplicitHeight = 532
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 97
      Top = 55
      AutoSize = False
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 100
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 263
      Top = 55
      AutoSize = False
      DataBinding.DataField = 'CWCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 21
      Width = 269
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 97
      Top = 82
      DataBinding.DataField = 'CWDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 599
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [3]
      Left = 97
      Top = 109
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 110
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 97
      Top = 136
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 100
    end
    object cbBankSource: TcxDBLookupComboBox [5]
      Left = 97
      Top = 193
      TabStop = False
      DataBinding.DataField = 'SOURCE_ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'ACCBANKCODE'
        end
        item
          Width = 100
          FieldName = 'BANKACCNO'
        end
        item
          Width = 150
          FieldName = 'BANKACCNAME'
        end
        item
          Width = 40
          FieldName = 'CCYCODE'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      OnEnter = cbBankSourceEnter
      OnExit = cbBankSourceExit
      Width = 130
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 97
      Top = 220
      TabStop = False
      DataBinding.DataField = 'sourceBankBranch'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 250
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 97
      Top = 247
      TabStop = False
      DataBinding.DataField = 'sourceBankAccNo'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 250
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 97
      Top = 274
      TabStop = False
      DataBinding.DataField = 'sourceBankAccName'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 250
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [9]
      Left = 451
      Top = 193
      RepositoryItem = dmGlobal.luPrivateBankAcc
      DataBinding.DataField = 'TARGET_ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 130
    end
    object cxDBTextEdit6: TcxDBTextEdit [10]
      Left = 451
      Top = 220
      TabStop = False
      DataBinding.DataField = 'targetBankBranch'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 250
    end
    object cxDBTextEdit7: TcxDBTextEdit [11]
      Left = 451
      Top = 247
      TabStop = False
      DataBinding.DataField = 'targetBankAccNo'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 250
    end
    object cxDBTextEdit8: TcxDBTextEdit [12]
      Left = 451
      Top = 274
      TabStop = False
      DataBinding.DataField = 'targetBankAccName'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 250
    end
    object cxDBTextEdit9: TcxDBTextEdit [13]
      Left = 97
      Top = 331
      TabStop = False
      DataBinding.DataField = 'BNCHARGESTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [14]
      Left = 97
      Top = 358
      DataBinding.DataField = 'TRANSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Remiter'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Beneficiary'
          Value = 'B'
        end>
      Properties.OnCloseUp = cxDBImageComboBox1PropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [15]
      Left = 310
      Top = 331
      DataBinding.DataField = 'CWAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 147
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [16]
      Left = 310
      Top = 358
      DataBinding.DataField = 'BNCHARGES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 147
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [17]
      Left = 310
      Top = 385
      TabStop = False
      DataBinding.DataField = 'TRANSFER_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 147
    end
    object cxDBTextEdit10: TcxDBTextEdit [18]
      Left = 282
      Top = 193
      TabStop = False
      DataBinding.DataField = 'sourceCcyCode'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 60
    end
    object cxDBTextEdit11: TcxDBTextEdit [19]
      Left = 636
      Top = 193
      TabStop = False
      DataBinding.DataField = 'targetCcyCode'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 60
    end
    object cxDBTextEdit12: TcxDBTextEdit [20]
      Left = 222
      Top = 109
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 474
    end
    object cxDBDateEdit2: TcxDBDateEdit [21]
      Left = 595
      Top = 55
      AutoSize = False
      DataBinding.DataField = 'CWDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Height = 21
      Width = 100
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [22]
      Left = 115
      Top = 10
      DataBinding.DataField = 'WDR_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Rekening Dana Nasabah'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'QQ (Credit Balance)'
          Value = 'Q'
        end
        item
          Description = 'Sub Rekening CBest'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 166
    end
    object grdCashLastPos: TcxGrid [23]
      Left = 10
      Top = 424
      Width = 703
      Height = 81
      TabOrder = 24
      object gvwCashLastPos: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsCashLastPos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Bands = <
          item
          end>
        object gvwCashLastPosACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwCashLastPosCCYCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCYCODE'
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwCashLastPosACCRUED_INTEREST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCRUED_INTEREST'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_ONHAND: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_ONHAND'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_QQ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_QQ'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_SUBACC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_SUBACC'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_ONHOLD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_ONHOLD'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwCashLastPosARAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARAMT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwCashLastPosAPAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APAMT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_OUTS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OUTS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwCashLastPosBUY_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_AMT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwCashLastPosSELL_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_AMT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_WDR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_WDR'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_OTHERS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OTHERS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwCashLastPosCASH_BAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_BAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
      end
      object glvCashLastPos: TcxGridLevel
        GridView = gvwCashLastPos
      end
    end
    object lbCashBal: TcxDBLabel [24]
      Left = 463
      Top = 349
      DataBinding.DataField = 'cashAvailable'
      DataBinding.DataSource = dsCashLastPos
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3692855
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Height = 30
      Width = 232
      AnchorX = 695
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Voucher No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 269
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcSourceBank: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Source Bank'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Control = cbBankSource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = lcSourceBank
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = lcSourceBank
      CaptionOptions.Text = 'Account No'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = lcSourceBank
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Target Bank'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Account No'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Cash Withdraw'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Transfer Mode'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Charge'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Transfer Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = lcSourceBank
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 474
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.Text = 'Cash Withdraw Type'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 166
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 2
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grdCashLastPos
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lbCashBalance: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Cash Available'
      CaptionOptions.Layout = clTop
      Control = lbCashBal
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 232
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 553
    Width = 724
    ExplicitTop = 553
    ExplicitWidth = 724
    inherited dbNavLog: TDBNavigator
      Left = 610
      Hints.Strings = ()
      ExplicitLeft = 610
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 602
    Width = 724
    ExplicitTop = 602
    ExplicitWidth = 724
  end
  inherited tabEditorData: TTabSet
    Top = 532
    Width = 724
    ExplicitTop = 532
    ExplicitWidth = 724
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashWdr
    Left = 648
    Top = 128
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 336
    Top = 8
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashWdr: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CWID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashWdr'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCashWdrAfterOpen
    BeforePost = cdsCashWdrBeforePost
    OnNewRecord = cdsCashWdrNewRecord
    AfterApplyUpdates = cdsCashWdrAfterApplyUpdates
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 656
    Top = 184
    object cdsCashWdrCWID: TLargeintField
      FieldName = 'CWID'
      Required = True
    end
    object cdsCashWdrCWCODE: TStringField
      FieldName = 'CWCODE'
      Required = True
    end
    object cdsCashWdrENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashWdrCWDATE: TDateField
      FieldName = 'CWDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashWdrCWDESC: TStringField
      FieldName = 'CWDESC'
      Size = 100
    end
    object cdsCashWdrSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
      OnChange = cdsCashWdrSOURCE_ACCBANKIDChange
    end
    object cdsCashWdrTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
      OnChange = cdsCashWdrTARGET_ACCBANKIDChange
    end
    object cdsCashWdrACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsCashWdrACCIDChange
    end
    object cdsCashWdrCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashWdrCWAMT: TFloatField
      FieldName = 'CWAMT'
      Required = True
      OnChange = cdsCashWdrCWAMTChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrWDR_TYPE: TStringField
      FieldName = 'WDR_TYPE'
      OnChange = cdsCashWdrWDR_TYPEChange
      Size = 1
    end
    object cdsCashWdrSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashWdrTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      OnChange = cdsCashWdrTRANSTYPEChange
      Size = 1
    end
    object cdsCashWdrBNCHARGES: TFloatField
      FieldName = 'BNCHARGES'
      OnChange = cdsCashWdrBNCHARGESChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrBNCHARGESTYPE: TStringField
      FieldName = 'BNCHARGESTYPE'
      Size = 10
    end
    object cdsCashWdrTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrFULLFLOW: TBooleanField
      FieldName = 'FULLFLOW'
    end
    object cdsCashWdrLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsCashWdrLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsCashWdrFUNDTRANSID: TLargeintField
      FieldName = 'FUNDTRANSID'
    end
    object cdsCashWdrFUNDTRANSID_REVERSED: TLargeintField
      FieldName = 'FUNDTRANSID_REVERSED'
    end
    object cdsCashWdrENTRY_DATE: TDateTimeField
      FieldName = 'ENTRY_DATE'
    end
    object cdsCashWdrENTRY_SYSDATE: TDateTimeField
      FieldName = 'ENTRY_SYSDATE'
    end
    object cdsCashWdrENTRY_UI: TStringField
      FieldName = 'ENTRY_UI'
      Size = 30
    end
    object cdsCashWdrPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashWdrPOSTED_SYSDATE: TDateTimeField
      FieldName = 'POSTED_SYSDATE'
    end
    object cdsCashWdrPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashWdrREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsCashWdrREVERSED_SYSDATE: TDateTimeField
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsCashWdrREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
    end
    object cdsCashWdrUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
    object cdsCashWdrCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsCashWdrCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsCashWdrCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsCashWdrAPPROVED_DATE: TDateTimeField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashWdrAPPROVED_SYSDATE: TDateTimeField
      FieldName = 'APPROVED_SYSDATE'
    end
    object cdsCashWdrAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashWdrMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashWdrMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashWdrAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashWdrAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashWdrUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashWdrUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashWdrNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashWdrISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashWdrID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashWdrACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCashWdrACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashWdrsourceAccBankCode: TStringField
      FieldName = 'sourceAccBankCode'
      Size = 50
    end
    object cdsCashWdrsourceBankBranch: TStringField
      FieldName = 'sourceBankBranch'
      Size = 50
    end
    object cdsCashWdrsourceBankAccNo: TStringField
      FieldName = 'sourceBankAccNo'
      Size = 30
    end
    object cdsCashWdrsourceBankAccName: TStringField
      FieldName = 'sourceBankAccName'
      Size = 250
    end
    object cdsCashWdrsourceCcyCode: TStringField
      FieldName = 'sourceCcyCode'
      Size = 5
    end
    object cdsCashWdrtargetAccBankCode: TStringField
      FieldName = 'targetAccBankCode'
      Size = 50
    end
    object cdsCashWdrtargetBankBranch: TStringField
      FieldName = 'targetBankBranch'
      Size = 50
    end
    object cdsCashWdrtargetBankAccNo: TStringField
      FieldName = 'targetBankAccNo'
      Size = 30
    end
    object cdsCashWdrtargetBankAccName: TStringField
      FieldName = 'targetBankAccName'
      Size = 250
    end
    object cdsCashWdrtargetCcyCode: TStringField
      FieldName = 'targetCcyCode'
      Size = 5
    end
  end
  object cdsCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientCashWdr'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 367
    Top = 126
    object cdsCashPositionBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsCashPositionBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsCashPositionBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsCashPositionSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsCashPositionSalesCode: TStringField
      FieldName = 'SalesCode'
      Size = 10
    end
    object cdsCashPositionSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsCashPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashPositionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsCashPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashPositionCashOnHand: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CashOnHand'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionCashOnHold: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CashOnHold'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionARAmt: TFloatField
      FieldName = 'ARAmt'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionApAmt: TFloatField
      DisplayLabel = 'Ap Amt'
      FieldName = 'ApAmt'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionNetARAP: TFloatField
      DisplayLabel = 'Net ARAP'
      FieldName = 'NetARAP'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionCashPosition: TFloatField
      DisplayLabel = 'Cash Position'
      FieldName = 'CashPosition'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionSAVEKEEP: TStringField
      FieldName = 'SAVEKEEP'
      Size = 1
    end
    object cdsCashPositionBuyAmount: TFloatField
      DisplayLabel = 'Buy Amt'
      FieldName = 'BuyAmount'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionAvCashAmount: TFloatField
      DisplayLabel = 'Avail Cash Amt'
      FieldName = 'AvCashAmount'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
    end
  end
  object dsCashPosition: TDataSource
    DataSet = cdsCashPosition
    Left = 344
    Top = 179
  end
  object cdsBankCharges: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryBankCharges'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 476
    Top = 126
    object cdsBankChargesBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankChargesBNCHGTYPE: TStringField
      FieldName = 'BNCHGTYPE'
      Required = True
      Size = 5
    end
    object cdsBankChargesCHARGE_AMT: TFloatField
      FieldName = 'CHARGE_AMT'
    end
    object cdsBankChargesCHARGE_MINTRANS: TFloatField
      FieldName = 'CHARGE_MINTRANS'
    end
    object cdsBankChargesCHARGE_MAXTRANS: TFloatField
      FieldName = 'CHARGE_MAXTRANS'
    end
    object cdsBankChargesMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankChargesMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankChargesAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankChargesAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankChargesISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankChargesID: TLargeintField
      FieldName = 'ID'
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
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 8
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
  object cdsCashLastPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'accID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashLastPost'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 216
    object cdsCashLastPosACCID: TLargeintField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashLastPosCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashLastPosACCRUED_INTEREST: TFloatField
      DisplayLabel = 'Accrued Interest'
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_ONHAND: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_QQ: TFloatField
      DisplayLabel = 'Cash QQ'
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_SUBACC: TFloatField
      DisplayLabel = 'Cash Sub Account'
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_ONHOLD: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosARAMT: TFloatField
      DisplayLabel = 'AR Amount'
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosAPAMT: TFloatField
      DisplayLabel = 'AP Amount'
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_OUTS: TFloatField
      DisplayLabel = 'Cash Outstanding'
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosBUY_AMT: TFloatField
      DisplayLabel = 'Buy Amount'
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosSELL_AMT: TFloatField
      DisplayLabel = 'Sell Amount'
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_WDR: TFloatField
      DisplayLabel = 'Cash Withdraw'
      FieldName = 'CASH_WDR'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_OTHERS: TFloatField
      DisplayLabel = 'Cash Others'
      FieldName = 'CASH_OTHERS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_BAL: TFloatField
      DisplayLabel = 'Cash Balance'
      FieldName = 'CASH_BAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPoscashAvailable: TFloatField
      DisplayLabel = 'Cash Available'
      FieldKind = fkInternalCalc
      FieldName = 'cashAvailable'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsCashLastPos: TDataSource
    DataSet = cdsCashLastPos
    Left = 528
    Top = 264
  end
end
