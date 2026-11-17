object frmViewCashPayment: TfrmViewCashPayment
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'View Cash Voucher'
  ClientHeight = 506
  ClientWidth = 1109
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
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 457
    Width = 1109
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitTop = 511
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
    Width = 1109
    Height = 321
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
      Width = 120
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
      Width = 242
    end
    object rgVoucherType: TcxDBRadioGroup
      Left = 10
      Top = 118
      Caption = 'Voucher Type'
      DataBinding.DataField = 'VOUCHERTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Caption = 'Payment To Cust'
          Value = 'P'
        end
        item
          Caption = 'Receive From Cust'
          Value = 'R'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 6
      Height = 75
      Width = 128
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 74
      Top = 64
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 100
    end
    object dtVoucherDate: TcxDBDateEdit
      Left = 250
      Top = 64
      DataBinding.DataField = 'VOUCHERDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    object cbBrokerBank: TcxDBLookupComboBox
      Left = 525
      Top = 28
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
      TabOrder = 16
      Width = 80
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 669
      Top = 28
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 80
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 525
      Top = 55
      DataBinding.DataField = 'BROKER_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 224
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 525
      Top = 82
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 224
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 525
      Top = 109
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 224
    end
    object cbCustBank: TcxDBLookupComboBox
      Left = 525
      Top = 166
      DataBinding.DataField = 'CUST_BANKID'
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
      Properties.ListSource = dsLuCustBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Width = 80
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 669
      Top = 166
      DataBinding.DataField = 'CUST_BANKCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 80
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 525
      Top = 193
      DataBinding.DataField = 'CUST_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 224
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 525
      Top = 220
      DataBinding.DataField = 'CUST_BANKACCNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 224
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 525
      Top = 247
      DataBinding.DataField = 'CUST_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 224
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 74
      Top = 91
      DataBinding.DataField = 'VOUCHER_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 374
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 93
      Top = 217
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 110
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 93
      Top = 244
      DataBinding.DataField = 'TOTAL_AMOUNT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 110
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 93
      Top = 271
      DataBinding.DataField = 'CHARGESAMT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 110
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 315
      Top = 136
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE_FX'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 315
      Top = 163
      DataBinding.DataField = 'EXRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 315
      Top = 217
      DataBinding.DataField = 'TOTAL_AMOUNT_FX'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 315
      Top = 244
      DataBinding.DataField = 'CHARGESAMT_FX'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit20: TcxDBTextEdit
      Left = 315
      Top = 190
      DataBinding.DataField = 'TOTAL_AMOUNT_FX_CHANGED'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit21: TcxDBTextEdit
      Left = 315
      Top = 271
      DataBinding.DataField = 'TOTAL_AMOUNT_FX_DIFF'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
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
      Parent = dxLayoutControl1Group20
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
      Parent = dxLayoutControl1Group7
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
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group11
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group11
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object lcBankCharges: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Charges'
      Parent = dxLayoutControl1Group11
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
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
      Parent = dxLayoutControl1Group2
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
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
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
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 321
    Width = 1109
    Height = 136
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 127
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
          FieldName = 'SETTLE_NETAMT'
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
        DataBinding.FieldName = 'TRANS_TYPE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterLINKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCASH_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_DESC'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTRANS_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANS_AMT'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterNETTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterOVERDUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OVERDUE'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCashVoucherH
    Left = 897
    Top = 18
  end
  object dsCashVoucherD: TDataSource
    DataSet = cdsCashVoucherD
    Left = 897
    Top = 66
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
      end>
    ProviderName = 'dspN_dmCashManagement_qrySICashOutstanding'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsSICashOutstandingAfterOpen
    AfterPost = cdsSICashOutstandingAfterPost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 489
    Top = 357
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
    object cdsSICashOutstandingSIDE_ACC: TStringField
      FieldName = 'SIDE_ACC'
      Size = 1
    end
    object cdsSICashOutstandingCLIENT_ACCSIDE: TLargeintField
      FieldName = 'CLIENT_ACCSIDE'
    end
    object cdsSICashOutstandingPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsSICashOutstandingMOVEDUEDATE: TDateField
      FieldName = 'MOVEDUEDATE'
    end
    object cdsSICashOutstandingCMOVE_SETTLE: TStringField
      FieldName = 'CMOVE_SETTLE'
      Size = 1
    end
    object cdsSICashOutstandingSMOVE_SETTLE: TStringField
      FieldName = 'SMOVE_SETTLE'
      Size = 1
    end
    object cdsSICashOutstandingCUSTODY_INSTR: TLargeintField
      FieldName = 'CUSTODY_INSTR'
    end
    object cdsSICashOutstandingLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsSICashOutstandingLINKSEQID: TIntegerField
      FieldName = 'LINKSEQID'
    end
    object cdsSICashOutstandingLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsSICashOutstandingLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsSICashOutstandingVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
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
    Left = 809
    Top = 18
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
    Left = 809
    Top = 66
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
    Left = 784
    Top = 304
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
    Left = 784
    Top = 352
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
    Left = 880
    Top = 304
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 880
    Top = 352
  end
  object cdsAccCashPos: TNClientDataset
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
    Left = 128
    Top = 432
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
    Left = 576
    Top = 488
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
    Left = 787
    Top = 403
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
    Left = 441
    Top = 453
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
    Left = 712
    Top = 136
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
end
