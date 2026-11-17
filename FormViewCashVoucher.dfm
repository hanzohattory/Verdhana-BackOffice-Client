object frmViewCashVoucher: TfrmViewCashVoucher
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'View Cash Voucher'
  ClientHeight = 532
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 914
    Height = 321
    Align = alTop
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 74
      Top = 10
      DataBinding.DataField = 'VOUCHERNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 125
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 74
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 209
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 254
    end
    object rgVoucherType: TcxDBRadioGroup
      Left = 10
      Top = 118
      Caption = 'Voucher Type'
      DataBinding.DataField = 'VOUCHERTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Payment'
          Value = 'P'
        end
        item
          Caption = 'Receive'
          Value = 'R'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 8
      Height = 45
      Width = 128
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 74
      Top = 64
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object dtVoucherDate: TcxDBDateEdit
      Left = 250
      Top = 64
      DataBinding.DataField = 'VOUCHERDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 100
    end
    object cbBrokerBank: TcxDBLookupComboBox
      Left = 537
      Top = 28
      DataBinding.DataField = 'BROKER_BANKID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCBANKCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'CCYCODE'
        end>
      Properties.ListSource = dsLuBrokerBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 80
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 681
      Top = 28
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 80
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 537
      Top = 55
      DataBinding.DataField = 'BROKER_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 224
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 537
      Top = 82
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 224
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 537
      Top = 109
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 224
    end
    object cbCustBank: TcxDBLookupComboBox
      Left = 537
      Top = 166
      DataBinding.DataField = 'CUST_BANKID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCBANKCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'CCYCODE'
        end>
      Properties.ListSource = dsLuCustBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Width = 80
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 681
      Top = 166
      DataBinding.DataField = 'CUST_BANKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 80
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 537
      Top = 193
      DataBinding.DataField = 'CUST_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 224
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 537
      Top = 220
      DataBinding.DataField = 'CUST_BANKACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 224
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 537
      Top = 247
      DataBinding.DataField = 'CUST_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Width = 224
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 74
      Top = 91
      DataBinding.DataField = 'VOUCHER_DESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 374
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 108
      Top = 187
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 110
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 108
      Top = 214
      DataBinding.DataField = 'TOTAL_AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 110
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 108
      Top = 241
      DataBinding.DataField = 'CHARGESAMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 110
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 330
      Top = 136
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE_FX'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 330
      Top = 163
      DataBinding.DataField = 'EXRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 330
      Top = 217
      DataBinding.DataField = 'TOTAL_AMOUNT_FX'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 330
      Top = 244
      DataBinding.DataField = 'CHARGESAMT_FX'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBTextEdit20: TcxDBTextEdit
      Left = 330
      Top = 190
      DataBinding.DataField = 'TOTAL_AMOUNT_FX_CHANGED'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit21: TcxDBTextEdit
      Left = 330
      Top = 271
      DataBinding.DataField = 'TOTAL_AMOUNT_FX_DIFF'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object btnNext: TcxButton
      Left = 791
      Top = 28
      Width = 101
      Height = 25
      Action = actNext
      TabOrder = 30
    end
    object btnPrev: TcxButton
      Left = 791
      Top = 59
      Width = 75
      Height = 25
      Action = actPrev
      TabOrder = 31
    end
    object btnSettle: TcxButton
      Left = 791
      Top = 90
      Width = 75
      Height = 25
      Action = actSettle
      TabOrder = 32
    end
    object btnCancels: TcxButton
      Left = 791
      Top = 121
      Width = 75
      Height = 25
      Action = actCancel
      TabOrder = 33
    end
    object btnReverse: TcxButton
      Left = 791
      Top = 152
      Width = 75
      Height = 25
      Action = actReverse
      TabOrder = 34
    end
    object btnPrint: TcxButton
      Left = 791
      Top = 183
      Width = 75
      Height = 25
      Action = actPrint
      TabOrder = 35
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 241
      Top = 10
      DataBinding.DataField = 'STAT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Settled'
          ImageIndex = 0
          Value = 'S'
        end
        item
          Description = 'Open'
          Value = 'O'
        end>
      Properties.OnChange = cxDBImageComboBox1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 69
    end
    object DBCheckBox1: TDBCheckBox
      Left = 316
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Posted'
      DataField = 'POSTED'
      DataSource = dsSubject
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 108
      Top = 268
      DataBinding.DataField = 'TRANSFER_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 110
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 553
      Top = 286
      DataBinding.DataField = 'MODDA'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 29
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Voucher No.'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group20
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group12
      Control = rgVoucherType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutControl1Group10
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Voucher Date'
      Parent = dxLayoutControl1Group3
      Control = dtVoucherDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group20
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group5
      Control = cbBrokerBank
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Branch'
      Parent = lgBrokerBank
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgBrokerBank
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Acc No.'
      Parent = lgBrokerBank
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = lgBrokerBank
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lgBrokerBank: TdxLayoutGroup
      CaptionOptions.Text = 'Broker Bank'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group9
      Control = cbCustBank
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Branch'
      Parent = lgCustBank
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Acc No.'
      Parent = lgCustBank
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = dxLayoutControl1Group22
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgCustBank: TdxLayoutGroup
      CaptionOptions.Text = 'Beneficiary'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgCustBank
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group20
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Parent = grpCurrency
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Parent = grpCurrency
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcBankCharges: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Charges'
      Parent = grpCurrency
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpCurrency: TdxLayoutGroup
      AlignHorz = ahLeft
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'FX Currency'
      Parent = grpMultiCurrency
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcExRate: TdxLayoutItem
      CaptionOptions.Text = 'FX ExRate'
      Parent = grpMultiCurrency
      Control = cxDBTextEdit17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpMultiCurrency: TdxLayoutGroup
      CaptionOptions.Text = 'Multi Currency'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      CaptionOptions.Text = 'FX Amount (Ori)'
      Parent = grpMultiCurrency
      Control = cxDBTextEdit18
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      CaptionOptions.Text = 'FX Charges'
      Parent = grpMultiCurrency
      Control = cxDBTextEdit19
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group20: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.Text = 'FX Amount'
      Parent = grpMultiCurrency
      Control = cxDBTextEdit20
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      CaptionOptions.Text = 'FX Amount Diff'
      Parent = grpMultiCurrency
      Control = cxDBTextEdit21
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group13
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group22: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgCustBank
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group13
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group14
      Control = btnNext
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group14
      Control = btnPrev
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group14
      Control = btnSettle
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group14
      Control = btnCancels
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group14
      Control = btnReverse
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group14
      Control = btnPrint
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Status'
      Parent = dxLayoutControl1Group20
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      CaptionOptions.Text = 'Status'
      Parent = dxLayoutControl1Group7
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      CaptionOptions.Text = 'DBCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group7
      Control = DBCheckBox1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item33: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Amount'
      Parent = grpCurrency
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item34: TdxLayoutItem
      CaptionOptions.Text = 'Time Log Settled'
      Parent = dxLayoutControl1Group4
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 321
    Width = 914
    Height = 211
    Align = alClient
    TabOrder = 1
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCashVoucherD
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
          Column = gvwMasterAMOUNT
          DisplayText = '#,##0.00;(#,##0.00);0.00'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnSorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwMasterVOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTRANS_TYPE: TcxGridDBBandedColumn
        Caption = 'Trans Type'
        DataBinding.FieldName = 'TRANS_TYPE'
        RepositoryItem = dmGlobal.luSIType
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterLINKTYPE: TcxGridDBBandedColumn
        Caption = 'Link Type'
        DataBinding.FieldName = 'LINKTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterLINKID: TcxGridDBBandedColumn
        Caption = 'Link ID'
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterLINKNO: TcxGridDBBandedColumn
        Caption = 'Link No'
        DataBinding.FieldName = 'LINKNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        Caption = 'Trade Date'
        DataBinding.FieldName = 'TRDDATE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCASH_DESC: TcxGridDBBandedColumn
        Caption = 'Cash Description'
        DataBinding.FieldName = 'CASH_DESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTRANS_AMT: TcxGridDBBandedColumn
        Caption = 'Trans Amount'
        DataBinding.FieldName = 'TRANS_AMT'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterNETTYPE: TcxGridDBBandedColumn
        Caption = 'Net Type'
        DataBinding.FieldName = 'NETTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Buy'
            ImageIndex = 0
            Value = 'B'
          end
          item
            Description = 'Sell'
            Value = 'S'
          end>
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterOVERDUE: TcxGridDBBandedColumn
        Caption = 'Overdue'
        DataBinding.FieldName = 'OVERDUE'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'X'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        Width = 36
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        HeaderAlignmentHorz = taRightJustify
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterFXAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FXAMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCashVoucherH
    Left = 342
    Top = 414
  end
  object dsCashVoucherD: TDataSource
    DataSet = cdsCashVoucherD
    Left = 342
    Top = 462
  end
  object cdsCashVoucherH: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftDateTime
        Name = 'VOUCHERDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryViewCashVoucherH'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 254
    Top = 414
    object cdsCashVoucherHVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucherHVOUCHERNO: TStringField
      FieldName = 'VOUCHERNO'
    end
    object cdsCashVoucherHVOUCHERTYPE: TStringField
      FieldName = 'VOUCHERTYPE'
      Size = 1
    end
    object cdsCashVoucherHENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucherHVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucherHACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashVoucherHACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucherHACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucherHACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucherHBROKER_BANKID: TIntegerField
      FieldName = 'BROKER_BANKID'
    end
    object cdsCashVoucherHBROKER_BANKCODE: TStringField
      FieldName = 'BROKER_BANKCODE'
      Size = 10
    end
    object cdsCashVoucherHBROKER_BANKACCNO: TStringField
      FieldName = 'BROKER_BANKACCNO'
    end
    object cdsCashVoucherHBROKER_BANKACCNAME: TStringField
      FieldName = 'BROKER_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucherHBROKER_BANKACCBRANCH: TStringField
      FieldName = 'BROKER_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucherHBROKER_BANKPAYMENTID: TLargeintField
      FieldName = 'BROKER_BANKPAYMENTID'
    end
    object cdsCashVoucherHCUST_BANKID: TIntegerField
      FieldName = 'CUST_BANKID'
    end
    object cdsCashVoucherHCUST_BANKCODE: TStringField
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsCashVoucherHCUST_BANKACCNO: TStringField
      FieldName = 'CUST_BANKACCNO'
    end
    object cdsCashVoucherHCUST_BANKACCNAME: TStringField
      FieldName = 'CUST_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucherHCUST_BANKACCBRANCH: TStringField
      FieldName = 'CUST_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucherHVOUCHER_DESC: TStringField
      FieldName = 'VOUCHER_DESC'
      Size = 150
    end
    object cdsCashVoucherHCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashVoucherHEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHTRANSFERMODE: TStringField
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsCashVoucherHCHARGESAMT: TFloatField
      FieldName = 'CHARGESAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashVoucherHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashVoucherHBANK_REFERENCE: TStringField
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsCashVoucherHBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCashVoucherHJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsCashVoucherHMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd mmm yyyy, hh:nn:ss'
    end
    object cdsCashVoucherHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucherHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucherHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucherHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucherHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucherHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucherHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucherHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucherHCCYCODE_FX: TStringField
      FieldName = 'CCYCODE_FX'
      Size = 5
    end
    object cdsCashVoucherHCHARGESAMT_FX: TFloatField
      FieldName = 'CHARGESAMT_FX'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT_FX: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_DIFF'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashVoucherHTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherHDEAL_EXRATE: TFloatField
      FieldName = 'DEAL_EXRATE'
    end
    object cdsCashVoucherHMANUAL_VOUCHER: TStringField
      FieldName = 'MANUAL_VOUCHER'
      Size = 1
    end
    object cdsCashVoucherHReqFF: TIntegerField
      FieldName = 'ReqFF'
    end
  end
  object cdsCashVoucherD: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftInteger
        Name = 'VOUCHERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryViewCashVoucherD'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCashVoucherDCalcFields
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 254
    Top = 462
    object cdsCashVoucherDVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucherDSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCashVoucherDTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsCashVoucherDLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashVoucherDLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashVoucherDLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashVoucherDACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucherDACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucherDACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucherDTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucherDDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucherDCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsCashVoucherDTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherDNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCashVoucherDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucherDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucherDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucherDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucherDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucherDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucherDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucherDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucherDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucherDOVERDUE: TStringField
      FieldName = 'OVERDUE'
      Size = 1
    end
    object cdsCashVoucherDX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'X'
      Calculated = True
    end
    object cdsCashVoucherDCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashVoucherDDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashVoucherDEXRATE: TFloatField
      DisplayLabel = 'Ex Rate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucherDFXAMOUNT: TFloatField
      DisplayLabel = 'FX Amount'
      FieldName = 'FXAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object cdsLuBrokerBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 73
    Top = 412
    object cdsLuBrokerBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBrokerBankACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuBrokerBankBNCODE: TStringField
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuBrokerBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuBrokerBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBrokerBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBrokerBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBrokerBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuBrokerBankACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      DisplayWidth = 15
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuBrokerBankCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object cdsLuCustBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 73
    Top = 460
    object cdsLuCustBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCustBankACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuCustBankBNCODE: TStringField
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuCustBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuCustBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCustBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuCustBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCustBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuCustBankACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      DisplayWidth = 15
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuCustBankCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object dsLuBrokerBank: TDataSource
    DataSet = cdsLuBrokerBank
    Left = 160
    Top = 412
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 160
    Top = 460
  end
  object ActionList1: TActionList
    Left = 471
    Top = 411
    object actNext: TNAction
      Category = 'NActions'
      Caption = 'Next'
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
      CheckPermission = False
    end
    object actPrev: TNAction
      Category = 'NActions'
      Caption = 'Previous'
      OnExecute = actPrevExecute
      OnUpdate = actPrevUpdate
      CheckPermission = False
    end
    object actSettle: TNAction
      Category = 'NActions'
      Caption = 'Settle Voucher'
      OnExecute = actSettleExecute
      OnUpdate = actSettleUpdate
      CheckPermission = False
    end
    object actCancel: TNAction
      Category = 'NActions'
      Caption = 'Cancel Voucher'
      OnExecute = actCancelExecute
      OnUpdate = actCancelUpdate
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse Voucher'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actPrint: TNAction
      Category = 'NActions'
      Caption = 'Print'
      OnExecute = actPrintExecute
      CheckPermission = False
    end
  end
  object Report: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Cash Management\SI_Cash_Voucher.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'VOUCHERDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'VOUCHERID'
        ParamType = ptUnknown
      end>
    Left = 409
    Top = 413
  end
end
