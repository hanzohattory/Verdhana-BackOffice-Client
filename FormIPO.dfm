inherited frmIPO: TfrmIPO
  Caption = 'IPO'
  ClientHeight = 679
  ClientWidth = 674
  ExplicitWidth = 680
  ExplicitHeight = 708
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 674
    Height = 589
    ExplicitWidth = 674
    ExplicitHeight = 589
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 75
      Top = 10
      DataBinding.DataField = 'IPOCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 75
      Top = 37
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 120
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 107
      Top = 190
      DataBinding.DataField = 'IPODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 119
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 75
      Top = 91
      DataBinding.DataField = 'SCRIPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 587
    end
    object cxDBDateEdit3: TcxDBDateEdit [4]
      Left = 107
      Top = 217
      DataBinding.DataField = 'ORDERFROMDATE'
      DataBinding.DataSource = dsSubject
      Properties.OnGetDayOfWeekState = cxDBDateEdit3PropertiesGetDayOfWeekState
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 119
    end
    object cxDBDateEdit4: TcxDBDateEdit [5]
      Left = 107
      Top = 244
      DataBinding.DataField = 'ORDERTODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 119
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 321
      Top = 163
      DataBinding.DataField = 'NETFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 321
      Top = 190
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 321
      Top = 217
      DataBinding.DataField = 'WHT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [9]
      Left = 245
      Top = 118
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 120
    end
    object cxDBTextEdit8: TcxDBTextEdit [10]
      Left = 399
      Top = 118
      DataBinding.DataField = 'FIXEDPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [11]
      Left = 10
      Top = 475
      Caption = 'Guarantee Type'
      DataBinding.DataField = 'GUARANTEETYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Caption = 'Full Commitment'
          Value = 'F'
        end
        item
          Caption = 'Non Full Commitment'
          Value = 'N'
        end
        item
          Caption = 'Standby Buyer'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 35
      Height = 101
      Width = 158
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [12]
      Left = 75
      Top = 421
      RepositoryItem = dmGlobal.luBankByAccount
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 33
      Width = 587
    end
    object cxDBTextEdit9: TcxDBTextEdit [13]
      Left = 75
      Top = 448
      DataBinding.DataField = 'REMARK1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 34
      Width = 587
    end
    object cxDBDateEdit5: TcxDBDateEdit [14]
      Left = 107
      Top = 271
      DataBinding.DataField = 'CONDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 119
    end
    object cxDBTextEdit11: TcxDBTextEdit [15]
      Left = 509
      Top = 475
      DataBinding.DataField = 'COMMITMENTAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 38
      Width = 150
    end
    object txtAbsorbAmount: TcxDBTextEdit [16]
      Left = 509
      Top = 502
      DataBinding.DataField = 'ABSORBAMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 39
      Width = 150
    end
    object cxDBTextEdit13: TcxDBTextEdit [17]
      Left = 509
      Top = 529
      DataBinding.DataField = 'BGAMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 40
      Width = 150
    end
    object cxDBTextEdit14: TcxDBTextEdit [18]
      Left = 509
      Top = 556
      DataBinding.DataField = 'HAIRCUT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 41
      Width = 150
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [19]
      Left = 226
      Top = 10
      RepositoryItem = dmGlobal.luBAE
      DataBinding.DataField = 'BAEID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 436
    end
    object cxDBDateEdit7: TcxDBDateEdit [20]
      Left = 107
      Top = 298
      DataBinding.DataField = 'DISTRIBUTIONDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 119
    end
    object cxDBDateEdit8: TcxDBDateEdit [21]
      Left = 107
      Top = 352
      DataBinding.DataField = 'LISTINGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 119
    end
    object cxDBDateEdit9: TcxDBDateEdit [22]
      Left = 107
      Top = 325
      DataBinding.DataField = 'REFUNDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 119
    end
    object cxDBTextEdit15: TcxDBTextEdit [23]
      Left = 321
      Top = 274
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBDateEdit10: TcxDBDateEdit [24]
      Left = 321
      Top = 301
      DataBinding.DataField = 'ISINDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Width = 121
    end
    object chkIsCurrentStock: TcxDBCheckBox [25]
      Left = 256
      Top = 328
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Current Instrument Stock'
      DataBinding.DataField = 'IS_CURRENT_INSTRUMENT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      OnClick = chkIsCurrentStockClick
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [26]
      Left = 321
      Top = 382
      RepositoryItem = dmGlobal.luInstrumentAll
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 26
      Width = 121
    end
    object cxDBTextEdit16: TcxDBTextEdit [27]
      Left = 321
      Top = 355
      DataBinding.DataField = 'SCRIPCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [28]
      Left = 75
      Top = 64
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit17: TcxDBTextEdit [29]
      Left = 226
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 436
    end
    object cxDBTextEdit6: TcxDBTextEdit [30]
      Left = 259
      Top = 475
      DataBinding.DataField = 'COMMITMENTQTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 36
      Width = 140
    end
    object cxDBTextEdit7: TcxDBTextEdit [31]
      Left = 259
      Top = 502
      DataBinding.DataField = 'ABSORBQTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 37
      Width = 140
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [32]
      Left = 560
      Top = 163
      DataBinding.DataField = 'COUPON_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 88
    end
    object cxDBDateEdit6: TcxDBDateEdit [33]
      Left = 560
      Top = 190
      DataBinding.DataField = 'MATURITYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 28
      Width = 88
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [34]
      Left = 560
      Top = 217
      DataBinding.DataField = 'CALCULATE_DAYS_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = '30/360'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Actual/Actual'
          Value = 1
        end
        item
          Description = 'Actual/360'
          Value = 2
        end
        item
          Description = 'Actual/365'
          Value = 3
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 29
      Width = 88
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [35]
      Left = 251
      Top = 37
      DataBinding.DataField = 'IPO_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'GROUP_TYPE'
      Properties.ListColumns = <
        item
          Width = 50
          FieldName = 'GROUP_TYPE'
        end
        item
          Width = 150
          FieldName = 'GROUP_TYPE_NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuIPOInstrumentType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      OnExit = cxDBLookupComboBox5Exit
      Width = 121
    end
    object cxDBTextEdit18: TcxDBTextEdit [36]
      Left = 441
      Top = 37
      DataBinding.DataField = 'IPO_PRODUCT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [37]
      Left = 75
      Top = 118
      DataBinding.DataField = 'ISSUER_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Coorporate'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Goverment'
          Value = 'G'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 115
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [38]
      Left = 560
      Top = 244
      DataBinding.DataField = 'COUNTINGDAYS_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = '1 - Annual'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = '2 - Semiannual'
          Value = '2'
        end
        item
          Description = '4 - Quarterly'
          Value = '4'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 30
      Width = 88
    end
    object cxDBCheckBox1: TcxDBCheckBox [39]
      Left = 10
      Top = 145
      Caption = 'Use Group'
      DataBinding.DataField = 'USEGROUP'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [40]
      Left = 560
      Top = 301
      DataBinding.DataField = 'MNGMT_FEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 31
      Width = 88
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [41]
      Left = 560
      Top = 328
      DataBinding.DataField = 'UNDERWT_FEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 32
      Width = 88
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'IPO Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Effective Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Issuer Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 587
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Start Offering'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'End Offering'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = Comission
      CaptionOptions.Text = 'Net Fee (%)'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = Comission
      CaptionOptions.Text = 'VAT (%)'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = Comission
      CaptionOptions.Text = 'WHT (%)'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcFixedPrice: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Comission: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Comission'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Guarantee Type'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Broker Bank'
      Visible = False
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 529
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 6
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Remark'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 529
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Allotment Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commitment Amount'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Absorb Amount'
      Control = txtAbsorbAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'BG Amount'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Haircut (%)'
      Visible = False
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object txtBAE: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'BAE'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 436
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Maintenance Date'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Distribution Date'
      Control = cxDBDateEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Listing Date'
      Control = cxDBDateEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Refund Date'
      Control = cxDBDateEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lcISINCode: TdxLayoutItem
      Parent = lgStockReg
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcISINDate: TdxLayoutItem
      Parent = lgStockReg
      CaptionOptions.Text = 'ISIN Date'
      Control = cxDBDateEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgStockReg: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcIsCurrentStock: TdxLayoutItem
      Parent = lgStockReg
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkIsCurrentStock
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object lcStockCode: TdxLayoutItem
      Parent = lgStockReg
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lcStock: TdxLayoutItem
      Parent = lgStockReg
      CaptionOptions.Text = 'Stock Code'
      Visible = False
      Control = cxDBTextEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 436
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commitment Qty'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Absorb Qty'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object Coupon: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Coupon (Bond Only)'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = Coupon
      CaptionOptions.Text = 'Coupon Rate'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = Coupon
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = Coupon
      CaptionOptions.Text = 'Calc Method'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'IPO Type'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item33: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'IPO Product'
      Control = cxDBTextEdit18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item35: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Issuer Type'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = Coupon
      CaptionOptions.Text = 'Coupon / Year'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 16
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Fee'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Management Fee'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item34: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Underwiter Fee'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 610
    Width = 674
    ExplicitTop = 610
    ExplicitWidth = 674
    inherited dbNavLog: TDBNavigator
      Left = 560
      Hints.Strings = ()
      ExplicitLeft = 560
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 659
    Width = 674
    ExplicitTop = 659
    ExplicitWidth = 674
  end
  inherited tabEditorData: TTabSet
    Top = 589
    Width = 674
    ExplicitTop = 589
    ExplicitWidth = 674
  end
  inherited dsSubject: TDataSource
    DataSet = frmIPOList.cdsIPO
    Left = 604
    Top = 106
  end
end
