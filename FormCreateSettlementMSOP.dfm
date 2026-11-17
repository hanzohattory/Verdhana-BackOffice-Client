object frmCreateSettlementMSOP: TfrmCreateSettlementMSOP
  Left = 0
  Top = -55
  BorderStyle = bsDialog
  Caption = 'Create Settlement MSOP'
  ClientHeight = 542
  ClientWidth = 1062
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 493
    Width = 1062
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1062
    Height = 367
    Align = alTop
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 74
      Top = 10
      DataBinding.DataField = 'VOUCHERNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 74
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 209
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 250
    end
    object rgVoucherType: TcxDBRadioGroup
      Left = 698
      Top = 10
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
      TabOrder = 25
      Height = 39
      Width = 228
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 74
      Top = 91
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    object dtVoucherDate: TcxDBDateEdit
      Left = 250
      Top = 91
      DataBinding.DataField = 'VOUCHERDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cbBrokerBank: TcxDBLookupComboBox
      Left = 766
      Top = 73
      DataBinding.DataField = 'BROKER_BANKID'
      DataBinding.DataSource = dsSubject
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
      TabOrder = 26
      Width = 80
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 910
      Top = 73
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 129
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 766
      Top = 100
      DataBinding.DataField = 'BROKER_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Width = 136
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 766
      Top = 127
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Width = 118
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 766
      Top = 154
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 30
      Width = 136
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 330
      Top = 163
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 110
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 330
      Top = 190
      DataBinding.DataField = 'TOTAL_AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 110
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 330
      Top = 271
      DataBinding.DataField = 'CHARGESAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 110
    end
    object cbAll: TcxCheckBox
      Left = 86
      Top = 163
      Properties.OnChange = cbAllPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 26
    end
    object dtDueDate: TcxDateEdit
      Left = 86
      Top = 190
      Properties.DisplayFormat = 'dd MMM yyyy'
      Properties.OnChange = cbAllPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 128
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 559
      Top = 28
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE_FX'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 559
      Top = 55
      DataBinding.DataField = 'EXRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 559
      Top = 109
      DataBinding.DataField = 'TOTAL_AMOUNT_FX'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 559
      Top = 136
      DataBinding.DataField = 'CHARGESAMT_FX'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object cxDBTextEdit20: TcxDBTextEdit
      Left = 559
      Top = 82
      DataBinding.DataField = 'TOTAL_AMOUNT_FX_CHANGED'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit21: TcxDBTextEdit
      Left = 559
      Top = 163
      DataBinding.DataField = 'TOTAL_AMOUNT_FX_DIFF'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object chkSelectAll: TcxCheckBox
      Left = 10
      Top = 229
      Caption = 'Select All Data'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      OnClick = chkSelectAllClick
      Width = 102
    end
    object cxButton1: TcxButton
      Left = 118
      Top = 229
      Width = 107
      Height = 25
      Caption = 'Amount By OnHand'
      TabOrder = 10
      OnClick = cxButton1Click
    end
    object chkSaldo: TcxRadioButton
      Left = 244
      Top = 325
      Width = 83
      Height = 17
      Caption = 'Saldo'
      Checked = True
      TabOrder = 17
      TabStop = True
      OnClick = chkSaldoClick
    end
    object chkRounding: TcxRadioButton
      Left = 333
      Top = 325
      Width = 100
      Height = 17
      Caption = 'Rounding'
      TabOrder = 18
      OnClick = chkRoundingClick
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 74
      Top = 118
      DataBinding.DataField = 'VOUCHER_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 374
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 766
      Top = 211
      DataBinding.DataField = 'CUST_BANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'MSOP_BANKID'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'ACCBANKCODE'
        end
        item
          Width = 150
          FieldName = 'BANKACCNO'
        end
        item
          Width = 250
          FieldName = 'BANKACCNAME'
        end>
      Properties.ListSource = dsLuAccBankSOP
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 31
      Width = 80
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 910
      Top = 211
      DataBinding.DataField = 'CUST_BANKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 32
      Width = 129
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 766
      Top = 238
      DataBinding.DataField = 'CUST_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 33
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 766
      Top = 265
      DataBinding.DataField = 'CUST_BANKACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 34
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 766
      Top = 292
      DataBinding.DataField = 'CUST_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 35
      Width = 121
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 74
      Top = 64
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = dsAccountSOP
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 385
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 330
      Top = 217
      DataBinding.DataField = 'TRANSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.DefaultImageIndex = 0
      Properties.Items = <
        item
          Description = 'Benficiary'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Remiter'
          Value = 'R'
        end>
      Properties.OnChange = cxDBImageComboBox1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 106
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 330
      Top = 298
      DataBinding.DataField = 'TRANSFER_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 110
    end
    object cxDBImageComboBox2: TcxDBImageComboBox
      Left = 330
      Top = 244
      DataBinding.DataField = 'TRANSFERMODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'LLG'
          ImageIndex = 0
          Value = 'LLG'
        end
        item
          Description = 'OB'
          Value = 'OB'
        end
        item
          Description = 'RTGS'
          Value = 'RTGS'
        end>
      Properties.OnCloseUp = cxDBImageComboBox2PropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 100
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Voucher No.'
      Parent = dxLayoutControl1Group10
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = rgVoucherType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutControl1Group9
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Voucher Date'
      Parent = dxLayoutControl1Group9
      Control = dtVoucherDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group21
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
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
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group11
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group11
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcBankCharges: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Charges'
      Parent = dxLayoutControl1Group11
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      AlignHorz = ahLeft
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'All Outstand'
      Parent = dxLayoutControl1Group1
      Control = cbAll
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcDueDate: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group1
      Control = dtDueDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgDueDate: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Net Due Date'
      Parent = dxLayoutControl1Group24
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'FX Currency'
      Parent = dxLayoutControl1Group6
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcExRate: TdxLayoutItem
      CaptionOptions.Text = 'FX ExRate'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Multi Currency'
      Parent = dxLayoutControl1Group22
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      CaptionOptions.Text = 'FX Amount (Ori)'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit18
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      CaptionOptions.Text = 'FX Charges'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit19
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgDueDate
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group16
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group21: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group13
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group19: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group17
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.Text = 'FX Amount'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit20
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      CaptionOptions.Text = 'FX Amount Diff'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit21
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group13
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group25
      Control = chkSelectAll
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group25
      Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group21
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group20: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group18
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group19
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group20
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group14
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group22: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group23
      Control = chkSaldo
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group23
      Control = chkRounding
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group23: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group11
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group24: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group25: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group24
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group21
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Beneficiary'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group27
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group27
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'Branch'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group27: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.Text = 'Acc No.'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group26: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      CaptionOptions.Text = 'MSop Name'
      Parent = dxLayoutControl1Group26
      Control = cxDBTextEdit16
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Type'
      Parent = dxLayoutControl1Group11
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Amount'
      Parent = dxLayoutControl1Group11
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item33: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Mode'
      Parent = dxLayoutControl1Group11
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 367
    Width = 1062
    Height = 126
    Align = alClient
    TabOrder = 2
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSICashOutstanding
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'X'
          Column = gvwMasterSETTLE_NETAMT
          DisplayText = '#,##0.00;(#,##0.00);0.00'
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Column = gvwMasterPROCESSAMT
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
      OnCustomDrawFooterCell = gvwMasterCustomDrawFooterCell
      Bands = <
        item
        end>
      object gvwMasterSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSINO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SINO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        Caption = 'Trans Date'
        DataBinding.FieldName = 'TRDDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'DUEDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSITYPE: TcxGridDBBandedColumn
        Caption = 'SI Type'
        DataBinding.FieldName = 'SITYPE'
        RepositoryItem = dmGlobal.luSIType
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCASH_STOCK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_STOCK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn
        Caption = 'Settle Side'
        DataBinding.FieldName = 'SETTLE_SIDE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        RepositoryItem = dmGlobal.luReceivementPayment
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterNETTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETTYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterACCOUNT_SID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCOUNT_SID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFER_MODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Base Ccy'
        DataBinding.FieldName = 'BASE_CCYCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterBASE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_NETAMT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterBANK_CHARGES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_CHARGES'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Settle Ccy'
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 73
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn
        Caption = 'Settle ExRate'
        DataBinding.FieldName = 'SETTLE_EXRATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 74
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn
        Caption = 'Outstand Amount'
        DataBinding.FieldName = 'SETTLE_NETAMT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_AMT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterSETTLEDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterSI_DESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'SI_DESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 184
        Position.BandIndex = 0
        Position.ColIndex = 77
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterOLD_SIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OLD_SIID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERAMT: TcxGridDBBandedColumn
        Caption = 'Created Voucher'
        DataBinding.FieldName = 'VOUCHERAMT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERQTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterNO_INTRC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NO_INTRC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterKSEI_RECON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_RECON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_QTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterTRF_PRVT_BANK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRF_PRVT_BANK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterUSE_ACS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'USE_ACS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterCP_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_ACCBANKID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterCP_BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_BANKCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterCP_BANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_BANKACCNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterCONFIRM_BY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRM_BY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterCREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATE_FILE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwMasterCOUNT_CREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNT_CREATE_FILE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwMasterCBEST_UPLOAD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_UPLOAD'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwMasterPURPOSE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PURPOSE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwMasterTRADE_REF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADE_REF'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_REASON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_REASON'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwMasterREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
      object gvwMasterSIID_NEW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID_NEW'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 56
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 57
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 58
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 59
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 60
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 61
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 62
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 63
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 64
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 65
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCBRANCH'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 66
        Position.RowIndex = 0
      end
      object gvwMasterACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 67
        Position.RowIndex = 0
      end
      object gvwMasterCP_BANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_BANKACCNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 68
        Position.RowIndex = 0
      end
      object gvwMasterBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 69
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 70
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 71
        Position.RowIndex = 0
      end
      object gvwMasterCP_BANKACCBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_BANKACCBRANCH'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 72
        Position.RowIndex = 0
      end
      object gvwMasterCHECKED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHECKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.OnChange = gvwMasterCHECKEDPropertiesChange
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object gvwMasterPROCESSAMT: TcxGridDBBandedColumn
        Caption = 'Process Amount'
        DataBinding.FieldName = 'PROCESSAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 78
        Position.RowIndex = 0
      end
      object gvwMasterX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'X'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 79
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        Position.BandIndex = 0
        Position.ColIndex = 75
        Position.RowIndex = 0
      end
      object gvwMasterFXAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FXAmount'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 76
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCashVoucherH
    Left = 48
    Top = 321
  end
  object dsSICashOutstanding: TDataSource
    DataSet = cdsSICashOutstanding
    Left = 441
    Top = 408
  end
  object cdsSICashOutstanding: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALL_OUTSTAND'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qrySICashOutstandingMSOP'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsSICashOutstandingAfterOpen
    AfterPost = cdsSICashOutstandingAfterPost
    OnCalcFields = cdsSICashOutstandingCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 441
    Top = 366
    object cdsSICashOutstandingSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsSICashOutstandingSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSICashOutstandingVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsSICashOutstandingENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsSICashOutstandingSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsSICashOutstandingCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsSICashOutstandingSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSICashOutstandingINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSICashOutstandingNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsSICashOutstandingACCOUNT_SID: TStringField
      FieldName = 'ACCOUNT_SID'
    end
    object cdsSICashOutstandingACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSICashOutstandingACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSICashOutstandingACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSICashOutstandingTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsSICashOutstandingBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsSICashOutstandingBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsSICashOutstandingBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
    end
    object cdsSICashOutstandingSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSICashOutstandingSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsSICashOutstandingSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSICashOutstandingSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
    end
    object cdsSICashOutstandingSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSICashOutstandingSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSICashOutstandingQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsSICashOutstandingTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSICashOutstandingDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSICashOutstandingSETTLEDDATE: TDateField
      FieldName = 'SETTLEDDATE'
    end
    object cdsSICashOutstandingSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsSICashOutstandingSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSICashOutstandingOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsSICashOutstandingVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSICashOutstandingVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsSICashOutstandingNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsSICashOutstandingKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsSICashOutstandingSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsSICashOutstandingTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsSICashOutstandingACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSICashOutstandingUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsSICashOutstandingCP_ACCBANKID: TIntegerField
      FieldName = 'CP_ACCBANKID'
    end
    object cdsSICashOutstandingCP_BANKCODE: TStringField
      FieldName = 'CP_BANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingCP_BANKACCNO: TStringField
      FieldName = 'CP_BANKACCNO'
    end
    object cdsSICashOutstandingSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsSICashOutstandingSOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingSOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsSICashOutstandingSOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsSICashOutstandingTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsSICashOutstandingTARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingTARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsSICashOutstandingTARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
    object cdsSICashOutstandingCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsSICashOutstandingCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsSICashOutstandingCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsSICashOutstandingCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsSICashOutstandingPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsSICashOutstandingTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
      Size = 50
    end
    object cdsSICashOutstandingSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 50
    end
    object cdsSICashOutstandingREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsSICashOutstandingSIID_NEW: TLargeintField
      FieldName = 'SIID_NEW'
    end
    object cdsSICashOutstandingMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSICashOutstandingMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSICashOutstandingAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSICashOutstandingAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSICashOutstandingUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSICashOutstandingUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSICashOutstandingNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSICashOutstandingISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSICashOutstandingID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSICashOutstandingBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsSICashOutstandingACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsSICashOutstandingCP_BANKACCNAME: TStringField
      FieldName = 'CP_BANKACCNAME'
      Size = 150
    end
    object cdsSICashOutstandingBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsSICashOutstandingBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsSICashOutstandingCP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
    object cdsSICashOutstandingCHECKED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'CHECKED'
    end
    object cdsSICashOutstandingPROCESSAMT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PROCESSAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSICashOutstandingVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
    end
    object cdsSICashOutstandingX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'X'
      Calculated = True
    end
    object cdsSICashOutstandingDC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DC'
      Size = 3
      Calculated = True
    end
    object cdsSICashOutstandingFXAmount: TFloatField
      DisplayLabel = 'FX Amount'
      FieldKind = fkCalculated
      FieldName = 'FXAmount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Calculated = True
    end
  end
  object cdsCashVoucherD: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    DataSetField = cdsCashVoucherHqryCashVoucher_D
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 131
    Top = 315
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
    end
    object cdsCashVoucherDDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsCashVoucherDCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsCashVoucherDTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
    end
    object cdsCashVoucherDNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCashVoucherDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
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
    object cdsCashVoucherDCCYCODE: TStringField
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
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 739
    Top = 394
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
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 739
    Top = 442
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
    Left = 820
    Top = 415
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 820
    Top = 463
  end
  object cdsAccCashPos: TNClientDataset
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryAccCashPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 384
    object cdsAccCashPosACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAccCashPosCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsAccCashPosCashOnHand: TFloatField
      FieldName = 'CashOnHand'
    end
    object cdsAccCashPosCashOnHold: TFloatField
      FieldName = 'CashOnHold'
    end
    object cdsAccCashPosCashOuts: TFloatField
      FieldName = 'CashOuts'
    end
    object cdsAccCashPosNetCashAmount: TFloatField
      FieldName = 'NetCashAmount'
    end
  end
  object cdsAccCreatedVoucher: TNClientDataset
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryAccCreatedVoucher'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 212
    Top = 303
    object cdsAccCreatedVoucherACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAccCreatedVoucherCREATED_VOUCHER: TFloatField
      FieldName = 'CREATED_VOUCHER'
      ReadOnly = True
    end
  end
  object cdsBankCharges: TNClientDataset
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
        DataType = ftFloat
        Name = 'TRANSFERAMOUNT'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankCharges'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 314
    Top = 357
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
    object cdsBankChargesCCYCODE: TStringField
      FieldName = 'CCYCODE'
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
  object cdsIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPO'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 392
    object cdsIPOIPOID: TIntegerField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOIPOCODE: TStringField
      FieldName = 'IPOCODE'
      Required = True
    end
    object cdsIPOSCRIPCODE: TStringField
      FieldName = 'SCRIPCODE'
    end
    object cdsIPOSCRIPNAME: TStringField
      FieldName = 'SCRIPNAME'
      Size = 100
    end
    object cdsIPOENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOIPODATE: TDateField
      FieldName = 'IPODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOORDERFROMDATE: TDateField
      FieldName = 'ORDERFROMDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOORDERTODATE: TDateField
      FieldName = 'ORDERTODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPONETFEE: TFloatField
      FieldName = 'NETFEE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsIPOBOTPRICE: TFloatField
      FieldName = 'BOTPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOTOPPRICE: TFloatField
      FieldName = 'TOPPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOFIXEDPRICE: TFloatField
      FieldName = 'FIXEDPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsIPOGUARANTEETYPE: TStringField
      FieldName = 'GUARANTEETYPE'
      Size = 1
    end
    object cdsIPOCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOREMARK1: TStringField
      FieldName = 'REMARK1'
      Size = 250
    end
    object cdsIPOREMARK2: TStringField
      FieldName = 'REMARK2'
      Size = 250
    end
    object cdsIPOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPONOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOCOMMITMENTAMT: TFloatField
      FieldName = 'COMMITMENTAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOABSORBAMT: TFloatField
      FieldName = 'ABSORBAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOBGAMT: TFloatField
      FieldName = 'BGAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOHAIRCUT: TIntegerField
      FieldName = 'HAIRCUT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOBAEID: TIntegerField
      FieldName = 'BAEID'
    end
    object cdsIPODUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPODISTRIBUTIONDATE: TDateField
      FieldName = 'DISTRIBUTIONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOLISTINGDATE: TDateField
      FieldName = 'LISTINGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOREFUNDDATE: TDateField
      FieldName = 'REFUNDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsIPOISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsIPOIS_CURRENT_INSTRUMENT: TStringField
      FieldName = 'IS_CURRENT_INSTRUMENT'
      Size = 1
    end
    object cdsIPOINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsIPOALLOTMENT_VOUCHER: TStringField
      FieldName = 'ALLOTMENT_VOUCHER'
      Size = 1
    end
    object cdsIPOALLOTMENT_AMOUNT: TFloatField
      FieldName = 'ALLOTMENT_AMOUNT'
    end
    object cdsIPOALLOTMENT_SIID: TLargeintField
      FieldName = 'ALLOTMENT_SIID'
    end
    object cdsIPOPOOLING_VOUCHER: TStringField
      FieldName = 'POOLING_VOUCHER'
      Size = 1
    end
    object cdsIPOPOOLING_AMOUNT: TFloatField
      FieldName = 'POOLING_AMOUNT'
    end
    object cdsIPOPOOLING_SIID: TLargeintField
      FieldName = 'POOLING_SIID'
    end
  end
  object cdsAllotmentBAEAmount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryAllotmentBAEAmount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 440
    object cdsAllotmentBAEAmountAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      ReadOnly = True
    end
  end
  object cdsPoolingBAEAmount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryPoolingBAEAmount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 657
    Top = 404
    object cdsPoolingBAEAmountAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      ReadOnly = True
    end
  end
  object cdsExRateValue: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'FROM_CCY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TO_CCY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryExRateValue'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 254
    Top = 389
    object cdsExRateValueCCY_CODE_FROM: TStringField
      FieldName = 'CCY_CODE_FROM'
      Required = True
      Size = 5
    end
    object cdsExRateValueCCY_CODE_TO: TStringField
      FieldName = 'CCY_CODE_TO'
      Required = True
      Size = 5
    end
    object cdsExRateValueEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
      Required = True
    end
    object cdsExRateValueCONVERSION_VALUE: TFloatField
      FieldName = 'CONVERSION_VALUE'
      Required = True
    end
    object cdsExRateValueINVERSE_CONVERSION_VALUE: TFloatField
      FieldName = 'INVERSE_CONVERSION_VALUE'
      Required = True
    end
    object cdsExRateValueMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsExRateValueMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsExRateValueAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsExRateValueAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsExRateValueUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsExRateValueUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsExRateValueNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsExRateValueISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsExRateValueID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsluCustBankNoParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryluBankAccountNoParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 760
    Top = 490
    object cdsluCustBankNoParamACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsluCustBankNoParamACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsluCustBankNoParamCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsluCustBankNoParamACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsluCustBankNoParamBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsluCustBankNoParamBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsluCustBankNoParamBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsluCustBankNoParamBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsluCustBankNoParamISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsluCustBankNoParamBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsluCustBankNoParamBN_CHGMODE: TStringField
      FieldName = 'BN_CHGMODE'
      Size = 1
    end
    object cdsluCustBankNoParamBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsluCustBankNoParamACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsluCustBankNoParamCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsluCustBankNoParamBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsluCustBankNoParamMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsluCustBankNoParamMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsluCustBankNoParamAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsluCustBankNoParamAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsluCustBankNoParamUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsluCustBankNoParamUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsluCustBankNoParamNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsluCustBankNoParamISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsluCustBankNoParamID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCashVoucherSelectAll: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALL'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashVoucherSelectAll'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 309
    object cdsCashVoucherSelectAllPROCESSAMT: TFloatField
      FieldName = 'PROCESSAMT'
      ReadOnly = True
    end
  end
  object cdsBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 643
    Top = 271
    object cdsBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankBNNAME: TStringField
      FieldName = 'BNNAME'
      Size = 50
    end
    object cdsBankINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      Size = 10
    end
    object cdsBankBICODE: TStringField
      FieldName = 'BICODE'
      Size = 10
    end
    object cdsBankSWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      Size = 10
    end
    object cdsBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsSICashOutstandingTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AfterOpen = cdsSICashOutstandingAfterOpen
    AfterPost = cdsSICashOutstandingAfterPost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 627
    Top = 324
    object cdsSICashOutstandingTmpSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsSICashOutstandingTmpSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSICashOutstandingTmpVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsSICashOutstandingTmpENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsSICashOutstandingTmpSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsSICashOutstandingTmpCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsSICashOutstandingTmpSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSICashOutstandingTmpINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSICashOutstandingTmpNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsSICashOutstandingTmpACCOUNT_SID: TStringField
      FieldName = 'ACCOUNT_SID'
    end
    object cdsSICashOutstandingTmpACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSICashOutstandingTmpACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSICashOutstandingTmpACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSICashOutstandingTmpTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsSICashOutstandingTmpBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsSICashOutstandingTmpBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsSICashOutstandingTmpBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
    end
    object cdsSICashOutstandingTmpSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSICashOutstandingTmpSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsSICashOutstandingTmpSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSICashOutstandingTmpSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
    end
    object cdsSICashOutstandingTmpSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSICashOutstandingTmpSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSICashOutstandingTmpQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsSICashOutstandingTmpTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSICashOutstandingTmpDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSICashOutstandingTmpSETTLEDDATE: TDateField
      FieldName = 'SETTLEDDATE'
    end
    object cdsSICashOutstandingTmpSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsSICashOutstandingTmpSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSICashOutstandingTmpOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsSICashOutstandingTmpVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSICashOutstandingTmpVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsSICashOutstandingTmpNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsSICashOutstandingTmpKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsSICashOutstandingTmpSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsSICashOutstandingTmpTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsSICashOutstandingTmpACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSICashOutstandingTmpUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsSICashOutstandingTmpCP_ACCBANKID: TIntegerField
      FieldName = 'CP_ACCBANKID'
    end
    object cdsSICashOutstandingTmpCP_BANKCODE: TStringField
      FieldName = 'CP_BANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingTmpCP_BANKACCNO: TStringField
      FieldName = 'CP_BANKACCNO'
    end
    object cdsSICashOutstandingTmpSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsSICashOutstandingTmpSOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingTmpSOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsSICashOutstandingTmpSOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsSICashOutstandingTmpTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsSICashOutstandingTmpTARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingTmpTARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsSICashOutstandingTmpTARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
    object cdsSICashOutstandingTmpCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsSICashOutstandingTmpCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsSICashOutstandingTmpCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsSICashOutstandingTmpCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsSICashOutstandingTmpPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsSICashOutstandingTmpTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
      Size = 50
    end
    object cdsSICashOutstandingTmpSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 50
    end
    object cdsSICashOutstandingTmpREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsSICashOutstandingTmpSIID_NEW: TLargeintField
      FieldName = 'SIID_NEW'
    end
    object cdsSICashOutstandingTmpMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSICashOutstandingTmpMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSICashOutstandingTmpAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSICashOutstandingTmpAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSICashOutstandingTmpUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSICashOutstandingTmpUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSICashOutstandingTmpNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSICashOutstandingTmpISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSICashOutstandingTmpID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSICashOutstandingTmpBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsSICashOutstandingTmpACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsSICashOutstandingTmpCP_BANKACCNAME: TStringField
      FieldName = 'CP_BANKACCNAME'
      Size = 150
    end
    object cdsSICashOutstandingTmpBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsSICashOutstandingTmpBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsSICashOutstandingTmpBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsSICashOutstandingTmpCP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
    object cdsSICashOutstandingTmpCHECKED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'CHECKED'
    end
    object cdsSICashOutstandingTmpPROCESSAMT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PROCESSAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSICashOutstandingTmpVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
    end
    object cdsSICashOutstandingTmpX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'X'
      Calculated = True
    end
    object cdsSICashOutstandingTmpDC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DC'
      Size = 3
      Calculated = True
    end
    object cdsSICashOutstandingTmpFXAmount: TFloatField
      DisplayLabel = 'FX Amount'
      FieldKind = fkCalculated
      FieldName = 'FXAmount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Calculated = True
    end
  end
  object cdsCashVoucherH: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftInteger
        Name = 'VOUCHERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashVoucher_H'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsCashVoucherHBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 53
    Top = 411
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
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashVoucherHVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashVoucherHACCID: TLargeintField
      FieldName = 'ACCID'
      OnChange = cdsCashVoucherHACCIDChange
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
      OnChange = cdsCashVoucherHBROKER_BANKIDChange
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
      OnChange = cdsCashVoucherHCUST_BANKIDChange
    end
    object cdsCashVoucherHCUST_BANKCODE: TStringField
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsCashVoucherHCUST_BANKACCNO: TStringField
      FieldName = 'CUST_BANKACCNO'
      OnChange = cdsCashVoucherHCUST_BANKACCNOChange
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
      OnChange = cdsCashVoucherHEXRATEChange
      DisplayFormat = '#,##0.00'
    end
    object cdsCashVoucherHTRANSFERMODE: TStringField
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsCashVoucherHCHARGESAMT: TFloatField
      FieldName = 'CHARGESAMT'
      OnChange = cdsCashVoucherHEXRATEChange
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      OnChange = cdsCashVoucherHEXRATEChange
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
      EditFormat = '#'
    end
    object cdsCashVoucherHSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashVoucherHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashVoucherHJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsCashVoucherHMODDA: TDateTimeField
      FieldName = 'MODDA'
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
    object cdsCashVoucherHqryCashVoucher_D: TDataSetField
      FieldName = 'qryCashVoucher_D'
    end
    object cdsCashVoucherHCASH_ONHAND: TFloatField
      FieldKind = fkLookup
      FieldName = 'CASH_ONHAND'
      LookupDataSet = cdsAccCashPos
      LookupKeyFields = 'ACCID'
      LookupResultField = 'CashOnHand'
      KeyFields = 'ACCID'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Lookup = True
    end
    object cdsCashVoucherHCREATED_VOUCHER: TFloatField
      FieldKind = fkLookup
      FieldName = 'CREATED_VOUCHER'
      LookupDataSet = cdsAccCreatedVoucher
      LookupKeyFields = 'ACCID'
      LookupResultField = 'CREATED_VOUCHER'
      KeyFields = 'ACCID'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Lookup = True
    end
    object cdsCashVoucherHCCYCODE_FX: TStringField
      FieldName = 'CCYCODE_FX'
      OnChange = cdsCashVoucherHCCYCODE_FXChange
      Size = 5
    end
    object cdsCashVoucherHCHARGESAMT_FX: TFloatField
      FieldName = 'CHARGESAMT_FX'
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT_FX: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX'
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
    end
    object cdsCashVoucherHBROKER_BANKCCY: TStringField
      FieldKind = fkLookup
      FieldName = 'BROKER_BANKCCY'
      LookupDataSet = cdsLuBrokerBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'BROKER_BANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashVoucherHCUST_BANKCCY: TStringField
      FieldKind = fkLookup
      FieldName = 'CUST_BANKCCY'
      LookupDataSet = cdsLuCustBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'CUST_BANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
      OnChange = cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGEDChange
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
    end
    object cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_DIFF'
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
    end
    object cdsCashVoucherHACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashVoucherHBANK_REFERENCE: TStringField
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsCashVoucherHBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCashVoucherHTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      OnChange = cdsCashVoucherHTRANSTYPEChange
      Size = 1
    end
    object cdsCashVoucherHTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
      DisplayFormat = '#,##0.00;#,##0.00;0.00'
    end
  end
  object cdsLuAccBankSOP: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccBankSOP'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 498
    Top = 231
    object cdsLuAccBankSOPACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
      Required = True
    end
    object cdsLuAccBankSOPMSOP_BANKID: TLargeintField
      DisplayLabel = 'MSOP Bank ID'
      FieldName = 'MSOP_BANKID'
      Required = True
    end
    object cdsLuAccBankSOPACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      FieldName = 'ACCBANKCODE'
      Size = 30
    end
    object cdsLuAccBankSOPBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuAccBankSOPBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuAccBankSOPBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsLuAccBankSOPBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuAccBankSOPREMARKS: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsLuAccBankSOPASDEFAULT: TStringField
      DisplayLabel = 'As Default'
      FieldName = 'ASDEFAULT'
      Size = 1
    end
  end
  object dsLuAccBankSOP: TDataSource
    DataSet = cdsLuAccBankSOP
    Left = 501
    Top = 279
  end
  object cdsAccountSOP: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountSOP'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 582
    Top = 210
    object cdsAccountSOPACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
      Required = True
    end
    object cdsAccountSOPNIK: TStringField
      FieldName = 'NIK'
      Size = 30
    end
    object cdsAccountSOPNAME: TStringField
      FieldName = 'NAME'
      Size = 150
    end
    object cdsAccountSOPBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsAccountSOPBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsAccountSOPBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsAccountSOPBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccountSOPMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountSOPMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountSOPAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountSOPAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountSOPUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountSOPUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountSOPNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountSOPISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountSOPID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountSOPSOPID: TIntegerField
      FieldName = 'SOPID'
      Required = True
    end
    object cdsAccountSOPACC_CUSTCODE: TStringField
      FieldName = 'ACC_CUSTCODE'
      Size = 30
    end
    object cdsAccountSOPSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsAccountSOPBIRTH_PLACE: TStringField
      FieldName = 'BIRTH_PLACE'
      Size = 50
    end
    object cdsAccountSOPBIRTH_DATE: TDateTimeField
      FieldName = 'BIRTH_DATE'
    end
    object cdsAccountSOPIDNO: TStringField
      FieldName = 'IDNO'
      Size = 50
    end
    object cdsAccountSOPNPWPNO: TStringField
      FieldName = 'NPWPNO'
      Size = 50
    end
    object cdsAccountSOPDEPOSIT_QTY: TIntegerField
      FieldName = 'DEPOSIT_QTY'
    end
    object cdsAccountSOPREG_ACCID: TIntegerField
      FieldName = 'REG_ACCID'
    end
    object cdsAccountSOPCHECK_ADMIN: TStringField
      FieldName = 'CHECK_ADMIN'
      Size = 1
    end
    object cdsAccountSOPCHECK_DATE: TDateTimeField
      FieldName = 'CHECK_DATE'
    end
    object cdsAccountSOPCHECK_UI: TStringField
      FieldName = 'CHECK_UI'
      Size = 30
    end
    object cdsAccountSOPSETTLE: TStringField
      FieldName = 'SETTLE'
      Size = 1
    end
    object cdsAccountSOPSETTLE_DATE: TDateTimeField
      FieldName = 'SETTLE_DATE'
    end
    object cdsAccountSOPSETTLE_UI: TStringField
      FieldName = 'SETTLE_UI'
      Size = 30
    end
    object cdsAccountSOPSMID: TLargeintField
      FieldName = 'SMID'
    end
  end
  object dsAccountSOP: TDataSource
    DataSet = cdsAccountSOP
    Left = 582
    Top = 255
  end
  object cdsBankChargesByTransferMode: TNClientDataset
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
        Name = 'BNCHGTYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankChargesByTransMode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 510
    Top = 342
    object cdsBankChargesByTransferModeBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankChargesByTransferModeBNCHGTYPE: TStringField
      FieldName = 'BNCHGTYPE'
      Required = True
      Size = 5
    end
    object cdsBankChargesByTransferModeCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsBankChargesByTransferModeCHARGE_AMT: TFloatField
      FieldName = 'CHARGE_AMT'
    end
    object cdsBankChargesByTransferModeCHARGE_MINTRANS: TFloatField
      FieldName = 'CHARGE_MINTRANS'
    end
    object cdsBankChargesByTransferModeCHARGE_MAXTRANS: TFloatField
      FieldName = 'CHARGE_MAXTRANS'
    end
    object cdsBankChargesByTransferModeFTSERVICE: TStringField
      FieldName = 'FTSERVICE'
      Size = 10
    end
    object cdsBankChargesByTransferModeTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 10
    end
  end
  object cdsCashPosition: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 321
    Top = 420
    object cdsCashPositionDEPOSITAMT: TFloatField
      FieldName = 'DEPOSITAMT'
      OnChange = cdsCashPositionDEPOSITAMTChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionCCY: TStringField
      FieldName = 'CCY'
      OnChange = cdsCashPositionCCYChange
      Size = 5
    end
    object cdsCashPositionEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
end
