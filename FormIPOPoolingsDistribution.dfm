object frmIPOPoolingsDist: TfrmIPOPoolingsDist
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'IPO Poolings'
  ClientHeight = 527
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 478
    Width = 1026
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
    Width = 1026
    Height = 319
    Align = alTop
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 76
      Top = 10
      DataBinding.DataField = 'IPOCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 265
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 105
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 425
      Top = 10
      DataBinding.DataField = 'IPODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 105
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 76
      Top = 64
      DataBinding.DataField = 'SCRIPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 454
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 76
      Top = 91
      DataBinding.DataField = 'ORDERFROMDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 120
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 211
      Top = 91
      DataBinding.DataField = 'ORDERTODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 87
      Top = 163
      DataBinding.DataField = 'NETFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 80
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 87
      Top = 190
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 80
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 87
      Top = 217
      DataBinding.DataField = 'WHT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 80
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 76
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
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 236
      Top = 163
      DataBinding.DataField = 'BOTPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 70
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 236
      Top = 190
      DataBinding.DataField = 'TOPPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 70
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 236
      Top = 217
      DataBinding.DataField = 'FIXEDPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 70
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 536
      Top = 10
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
      TabOrder = 11
      Height = 102
      Width = 137
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 265
      Top = 118
      RepositoryItem = dmGlobal.luBankByAccount
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 126
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 76
      Top = 283
      DataBinding.DataField = 'REMARK1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 702
    end
    object cxDBDateEdit5: TcxDBDateEdit
      Left = 410
      Top = 91
      DataBinding.DataField = 'CONDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 440
      Top = 163
      DataBinding.DataField = 'COMMITMENTAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 440
      Top = 190
      DataBinding.DataField = 'ABSORBAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 440
      Top = 217
      DataBinding.DataField = 'BGAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 440
      Top = 244
      DataBinding.DataField = 'HAIRCUT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 665
      Top = 163
      DataBinding.DataField = 'COUPON_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 100
    end
    object cxDBDateEdit6: TcxDBDateEdit
      Left = 665
      Top = 190
      DataBinding.DataField = 'MATURITYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Width = 100
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 665
      Top = 217
      DataBinding.DataField = 'CALCULATE_DAYS_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = '30/360'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Actual/Actual'
          Value = '1'
        end
        item
          Description = 'Actual/360'
          Value = '2'
        end
        item
          Description = 'Actual/365'
          Value = '3'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Width = 100
    end
    object cxDBImageComboBox2: TcxDBImageComboBox
      Left = 665
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
      TabOrder = 25
      Width = 100
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 76
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentType
      DataBinding.DataField = 'IPO_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 290
      Top = 37
      DataBinding.DataField = 'IPO_PRODUCT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'IPO Code'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutControl1Group6
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'IPO Date'
      Parent = dxLayoutControl1Group6
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Issuer Name'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Order Period'
      Parent = dxLayoutControl1Group11
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group11
      Control = cxDBDateEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Net Fee (%)'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'VAT (%)'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'WHT (%)'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group13
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Bottom'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Top'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Fixed'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Price Prediction'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Fee'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Guarantee Type'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = cxDBRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Broker Bank'
      Parent = dxLayoutControl1Group13
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Remark'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Contract Date'
      Parent = dxLayoutControl1Group11
      Control = cxDBDateEdit5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Commitment Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Absorb Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'BG Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.Text = 'Haircut (%)'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Coupon (Bond Only)'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Coupon Rate'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Maturity Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      CaptionOptions.Text = 'Calc Method'
      Parent = dxLayoutControl1Group2
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.Text = 'Coupon / Year'
      Parent = dxLayoutControl1Group2
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      CaptionOptions.Text = 'IPO Type'
      Parent = dxLayoutControl1Group7
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      CaptionOptions.Text = 'IPO Product'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 319
    Width = 1026
    Height = 159
    Align = alClient
    TabOrder = 2
    ExplicitTop = 292
    ExplicitHeight = 186
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPooling
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'ORDERQTY'
          Column = gvwMasterORDERQTY
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'ORDERAMT'
          Column = gvwMasterORDERAMT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PROCESSAMT'
          Column = gvwMasterPROCESSAMT
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'PROCESSQTY'
          Column = gvwMasterPROCESSQTY
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmIPOList.BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Caption = 'IPO Poolings'
        end>
      object gvwMasterPOOLINGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POOLINGID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPOOLINGCODE: TcxGridDBBandedColumn
        Caption = 'Pooling Code'
        DataBinding.FieldName = 'POOLINGCODE'
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPOOLINGDATE: TcxGridDBBandedColumn
        Caption = 'Pooling Date'
        DataBinding.FieldName = 'POOLINGDATE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPOOLINGDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'POOLINGDESC'
        Visible = False
        Width = 248
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterPOOLINGTYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'POOLINGTYPE'
        RepositoryItem = dmGlobal.luIPOBookType
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterIPOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IPOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCUST_NAME: TcxGridDBBandedColumn
        Caption = 'Customer Name'
        DataBinding.FieldName = 'CUST_NAME'
        Width = 179
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn
        Caption = 'Cust ID Card Type'
        DataBinding.FieldName = 'CUST_IDCARDTYPE'
        RepositoryItem = dmGlobal.luIDType
        Visible = False
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn
        Caption = 'Cust ID Card No.'
        DataBinding.FieldName = 'CUST_IDCARDNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn
        Caption = 'Cust ID Card Exp.'
        DataBinding.FieldName = 'CUST_IDCARDEXPIRE'
        Visible = False
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn
        Caption = 'Cust Address'
        DataBinding.FieldName = 'CUST_ADDRESS'
        Visible = False
        Width = 304
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCUST_PHONE: TcxGridDBBandedColumn
        Caption = 'Cust Phone'
        DataBinding.FieldName = 'CUST_PHONE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCUST_FAX: TcxGridDBBandedColumn
        Caption = 'Cust Fax'
        DataBinding.FieldName = 'CUST_FAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCUST_MAIL: TcxGridDBBandedColumn
        Caption = 'Cust Mail'
        DataBinding.FieldName = 'CUST_MAIL'
        Visible = False
        Width = 148
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterORDERCCY: TcxGridDBBandedColumn
        Caption = 'Order Ccy'
        DataBinding.FieldName = 'ORDERCCY'
        RepositoryItem = dmGlobal.luCurrency
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterORDERQTY: TcxGridDBBandedColumn
        Caption = 'Order Qty'
        DataBinding.FieldName = 'ORDERQTY'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterORDERAMT: TcxGridDBBandedColumn
        Caption = 'Order Amount'
        DataBinding.FieldName = 'ORDERAMT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luIPOStatus
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSQTY: TcxGridDBBandedColumn
        Caption = 'Process Qty'
        DataBinding.FieldName = 'PROCESSQTY'
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSAMT: TcxGridDBBandedColumn
        Caption = 'Process Amount'
        DataBinding.FieldName = 'PROCESSAMT'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterRETURNAMT: TcxGridDBBandedColumn
        Caption = 'Return Amount'
        DataBinding.FieldName = 'RETURNAMT'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterCONFIRMED: TcxGridDBBandedColumn
        Caption = 'Confirmed'
        DataBinding.FieldName = 'CONFIRMED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn
        Caption = 'Posted'
        DataBinding.FieldName = 'POSTEDFINANCE'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn
        Caption = 'Voucher Created'
        DataBinding.FieldName = 'VOUCHERCREATED'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_VOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterPROCESS_CONFIRM: TcxGridDBBandedColumn
        Caption = 'Process Confirm'
        DataBinding.FieldName = 'PROCESS_CONFIRM'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Visible = False
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterPOSTEDCUSTODY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTEDCUSTODY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = frmIPOList.cdsIPO
    Left = 802
    Top = 81
  end
  object popMaster: TPopupMenu
    Left = 264
    Top = 432
    object SetQtyProcess1: TMenuItem
      Action = actSetQtyProcess
    end
  end
  object aclPooling: TActionList
    Left = 264
    Top = 384
    object actNew: TNAction
      Category = 'NActions'
      Caption = 'New'
      OnExecute = actNewExecute
      OnUpdate = actNewUpdate
      CheckPermission = False
    end
    object actEdit: TNAction
      Category = 'NActions'
      Caption = 'Edit'
      OnExecute = actEditExecute
      OnUpdate = actNewUpdate
      CheckPermission = False
    end
    object actDelete: TNAction
      Category = 'NActions'
      Caption = 'Delete'
      OnExecute = actDeleteExecute
      OnUpdate = actNewUpdate
      CheckPermission = False
    end
    object actReload: TNAction
      Category = 'NActions'
      Caption = 'Reload'
      OnExecute = actReloadExecute
      CheckPermission = False
    end
    object actSetQtyProcess: TNAction
      Category = 'NActions'
      Caption = 'Set Qty Process'
      OnExecute = actSetQtyProcessExecute
      OnUpdate = actSetQtyProcessUpdate
      CheckPermission = False
    end
    object actConfirmed: TNAction
      Category = 'NActions'
      Caption = 'Confirmed'
      OnExecute = actConfirmedExecute
      OnUpdate = actNewUpdate
      CheckPermission = False
    end
    object actComfirmProcess: TNAction
      Category = 'NActions'
      Caption = 'Confirm Process'
      OnExecute = actComfirmProcessExecute
      CheckPermission = False
    end
  end
  object dsPooling: TDataSource
    AutoEdit = False
    DataSet = frmIPOList.cdsIPOPoolingByIPO
    Left = 424
    Top = 384
  end
end
