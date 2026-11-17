object frmIPOPoolings: TfrmIPOPoolings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'IPO Poolings'
  ClientHeight = 619
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 570
    Width = 883
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
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
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
    Width = 883
    Height = 373
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
      Left = 76
      Top = 37
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 99
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 230
      Top = 37
      DataBinding.DataField = 'IPODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 111
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 76
      Top = 91
      DataBinding.DataField = 'SCRIPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 454
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 76
      Top = 118
      DataBinding.DataField = 'ORDERFROMDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 120
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 211
      Top = 118
      DataBinding.DataField = 'ORDERTODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 87
      Top = 190
      DataBinding.DataField = 'TMPNETFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 80
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 87
      Top = 217
      DataBinding.DataField = 'TMPVAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 80
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 87
      Top = 244
      DataBinding.DataField = 'TMPWHT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 80
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 76
      Top = 145
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
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
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 236
      Top = 190
      DataBinding.DataField = 'BOTPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 70
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 236
      Top = 217
      DataBinding.DataField = 'TOPPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 70
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 236
      Top = 244
      DataBinding.DataField = 'FIXEDPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 70
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 536
      Top = 37
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
      TabOrder = 12
      Height = 102
      Width = 137
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 267
      Top = 145
      RepositoryItem = dmGlobal.luBankByAccount
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 126
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 76
      Top = 310
      DataBinding.DataField = 'REMARK1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 702
    end
    object cxDBDateEdit5: TcxDBDateEdit
      Left = 410
      Top = 118
      DataBinding.DataField = 'CONDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 440
      Top = 190
      DataBinding.DataField = 'COMMITMENTAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 440
      Top = 217
      DataBinding.DataField = 'ABSORBAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 440
      Top = 244
      DataBinding.DataField = 'BGAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 440
      Top = 271
      DataBinding.DataField = 'HAIRCUT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 10
      Top = 337
      Width = 75
      Height = 25
      Action = actNew
      TabOrder = 28
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 337
      Width = 75
      Height = 25
      Action = actEdit
      TabOrder = 29
    end
    object cxButton3: TcxButton
      Left = 172
      Top = 337
      Width = 75
      Height = 25
      Action = actDelete
      TabOrder = 30
    end
    object cxButton4: TcxButton
      Left = 253
      Top = 337
      Width = 75
      Height = 25
      Action = actReload
      TabOrder = 31
    end
    object cxButton5: TcxButton
      Left = 334
      Top = 337
      Width = 75
      Height = 25
      Action = actViewConf
      TabOrder = 32
    end
    object cxDBDateEdit6: TcxDBDateEdit
      Left = 662
      Top = 217
      DataBinding.DataField = 'MATURITYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 662
      Top = 244
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
      TabOrder = 25
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 76
      Top = 64
      RepositoryItem = dmGlobal.luInstrumentType
      DataBinding.DataField = 'IPO_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 145
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 290
      Top = 64
      DataBinding.DataField = 'IPO_PRODUCT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 662
      Top = 190
      DataBinding.DataField = 'COUPON_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object cxDBImageComboBox3: TcxDBImageComboBox
      Left = 662
      Top = 271
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
      TabOrder = 26
      Width = 121
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 267
      Top = 10
      DataBinding.DataField = 'GROUPID'
      DataBinding.DataSource = dsSubject
      Properties.KeyFieldNames = 'POOLING_GROUPID'
      Properties.ListColumns = <
        item
          FieldName = 'POOLING_GROUPNAME'
        end
        item
          FieldName = 'NETFEE'
        end
        item
          FieldName = 'VAT'
        end
        item
          FieldName = 'WHT'
        end>
      Properties.ListSource = dmLookup.dsLuIPOPoolingGroup
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
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
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'IPO Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'IPO Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Issuer Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 454
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Order Period'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = '-'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Net Fee (%)'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'VAT (%)'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'WHT (%)'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Bottom'
      Visible = False
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Top'
      Visible = False
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Fixed'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Price Prediction'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Fee'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Guarantee Type'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.OriginalHeight = 102
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Broker Bank'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Remark'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 702
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Contract Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Commitment Amount'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Absorb Amount'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'BG Amount'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Haircut (%)'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
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
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Coupon (Bond Only)'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Calc Method'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'IPO Type'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'IPO Product'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Coupon Rate'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Coupon/Year'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'Group Name'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 373
    Width = 883
    Height = 197
    Align = alClient
    TabOrder = 2
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPooling
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
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
          Format = '#,##0'
          Kind = skSum
          FieldName = 'PROCESSQTY'
          Column = gvwMasterPROCESSQTY
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'RETURNAMT'
          Column = gvwMasterRETURNAMT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
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
        Width = 100
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
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterPOOLINGTYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'POOLINGTYPE'
        RepositoryItem = dmGlobal.luIPOBookType
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterIPOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IPOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCUST_NAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'CUST_NAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn
        Caption = 'Cust ID Card Type'
        DataBinding.FieldName = 'CUST_IDCARDTYPE'
        RepositoryItem = dmGlobal.luIDType
        Visible = False
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn
        Caption = 'Cust ID Card No.'
        DataBinding.FieldName = 'CUST_IDCARDNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn
        Caption = 'Cust ID Card Exp.'
        DataBinding.FieldName = 'CUST_IDCARDEXPIRE'
        Visible = False
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn
        Caption = 'Cust Address'
        DataBinding.FieldName = 'CUST_ADDRESS'
        Visible = False
        Width = 663
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCUST_PHONE: TcxGridDBBandedColumn
        Caption = 'Cust Phone'
        DataBinding.FieldName = 'CUST_PHONE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCUST_FAX: TcxGridDBBandedColumn
        Caption = 'Cust Fax'
        DataBinding.FieldName = 'CUST_FAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCUST_MAIL: TcxGridDBBandedColumn
        Caption = 'Cust Mail'
        DataBinding.FieldName = 'CUST_MAIL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterORDERCCY: TcxGridDBBandedColumn
        Caption = 'Order Ccy'
        DataBinding.FieldName = 'ORDERCCY'
        RepositoryItem = dmGlobal.luCurrency
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterORDERQTY: TcxGridDBBandedColumn
        Caption = 'Order Qty'
        DataBinding.FieldName = 'ORDERQTY'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterORDERAMT: TcxGridDBBandedColumn
        Caption = 'Order Amount'
        DataBinding.FieldName = 'ORDERAMT'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luIPOStatus
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSQTY: TcxGridDBBandedColumn
        Caption = 'Process Qty'
        DataBinding.FieldName = 'PROCESSQTY'
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSAMT: TcxGridDBBandedColumn
        Caption = 'Process Amount'
        DataBinding.FieldName = 'PROCESSAMT'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterRETURNAMT: TcxGridDBBandedColumn
        Caption = 'Return Amount'
        DataBinding.FieldName = 'RETURNAMT'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterCONFIRMED: TcxGridDBBandedColumn
        Caption = 'Confirmed'
        DataBinding.FieldName = 'CONFIRMED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn
        Caption = 'Posted'
        DataBinding.FieldName = 'POSTEDFINANCE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn
        Caption = 'Voucher Created'
        DataBinding.FieldName = 'VOUCHERCREATED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterPAYMENT: TcxGridDBBandedColumn
        Caption = 'Paid'
        DataBinding.FieldName = 'PAYMENT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterPAYMENTAMT: TcxGridDBBandedColumn
        Caption = 'Payment Amount'
        DataBinding.FieldName = 'PAYMENTAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = cdsIPO
    Left = 721
    Top = 62
  end
  object popMaster: TPopupMenu
    Left = 264
    Top = 432
    object Confirmed1: TMenuItem
      Action = actConfirmed
    end
    object Posting1: TMenuItem
      Action = actPosting
    end
    object SetQtyProcess1: TMenuItem
      Action = actSetQtyProcess
    end
    object Distribution1: TMenuItem
      Action = actDistribution
    end
    object CreateVoucherPooling1: TMenuItem
      Action = actCreateVoucherPooling
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PoolingReverse1: TMenuItem
      Action = actPoolingCancel
    end
    object PoolingReverse2: TMenuItem
      Action = actPoolingReverse
    end
    object PoolingAmend1: TMenuItem
      Action = actPoolingAmend
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
      OnUpdate = actEditUpdate
      CheckPermission = False
    end
    object actDelete: TNAction
      Category = 'NActions'
      Caption = 'Delete'
      OnExecute = actDeleteExecute
      OnUpdate = actEditUpdate
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
      Visible = False
      OnExecute = actSetQtyProcessExecute
      OnUpdate = actNewUpdate
      CheckPermission = False
    end
    object actConfirmed: TNAction
      Category = 'NActions'
      Caption = 'Confirmed'
      OnExecute = actConfirmedExecute
      OnUpdate = actNewUpdate
      CheckPermission = False
    end
    object actViewConf: TNAction
      Category = 'NActions'
      Caption = 'View Conf'
      OnExecute = actViewConfExecute
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      CheckPermission = False
    end
    object actDistribution: TNAction
      Category = 'NActions'
      Caption = 'Distribution'
      Enabled = False
      Visible = False
      OnExecute = actDistributionExecute
      CheckPermission = False
    end
    object actCreateVoucherPooling: TNAction
      Category = 'NActions'
      Caption = 'Create Voucher Pooling'
      OnExecute = actCreateVoucherPoolingExecute
      CheckPermission = False
    end
    object actPoolingCancel: TNAction
      Category = 'NActions'
      Caption = 'Pooling Cancel'
      OnExecute = actPoolingCancelExecute
      OnUpdate = actPoolingCancelUpdate
      CheckPermission = False
    end
    object actPoolingReverse: TNAction
      Category = 'NActions'
      Caption = 'Pooling Reverse'
      OnExecute = actPoolingReverseExecute
      OnUpdate = actPoolingReverseUpdate
      CheckPermission = False
    end
    object actPoolingAmend: TNAction
      Category = 'NActions'
      Caption = 'Pooling Amend'
      OnExecute = actPoolingAmendExecute
      CheckPermission = False
    end
  end
  object dsPooling: TDataSource
    AutoEdit = False
    DataSet = cdsIPOPoolingByIPO
    Left = 424
    Top = 392
  end
  object cdsIPOPoolingByIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPOPoolingByIPO'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsIPOPoolingByIPOAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 804
    Top = 40
    object cdsIPOPoolingByIPOPOOLINGID: TIntegerField
      FieldName = 'POOLINGID'
      Required = True
    end
    object cdsIPOPoolingByIPOPOOLINGCODE: TStringField
      FieldName = 'POOLINGCODE'
      Required = True
    end
    object cdsIPOPoolingByIPOPOOLINGDATE: TDateField
      FieldName = 'POOLINGDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOPoolingByIPOPOOLINGDESC: TStringField
      FieldName = 'POOLINGDESC'
      Size = 250
    end
    object cdsIPOPoolingByIPOPOOLINGTYPE: TStringField
      FieldName = 'POOLINGTYPE'
      Required = True
      Size = 1
    end
    object cdsIPOPoolingByIPOIPOID: TIntegerField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOPoolingByIPOACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIPOPoolingByIPOCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 100
    end
    object cdsIPOPoolingByIPOCUST_IDCARDTYPE: TStringField
      FieldName = 'CUST_IDCARDTYPE'
      Size = 10
    end
    object cdsIPOPoolingByIPOCUST_IDCARDNO: TStringField
      FieldName = 'CUST_IDCARDNO'
      Size = 30
    end
    object cdsIPOPoolingByIPOCUST_IDCARDEXPIRE: TDateField
      FieldName = 'CUST_IDCARDEXPIRE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOPoolingByIPOCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      Size = 200
    end
    object cdsIPOPoolingByIPOCUST_PHONE: TStringField
      FieldName = 'CUST_PHONE'
    end
    object cdsIPOPoolingByIPOCUST_FAX: TStringField
      FieldName = 'CUST_FAX'
    end
    object cdsIPOPoolingByIPOCUST_MAIL: TStringField
      FieldName = 'CUST_MAIL'
      Size = 100
    end
    object cdsIPOPoolingByIPOORDERCCY: TStringField
      FieldName = 'ORDERCCY'
      Size = 5
    end
    object cdsIPOPoolingByIPOORDERQTY: TFloatField
      FieldName = 'ORDERQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingByIPOORDERAMT: TFloatField
      FieldName = 'ORDERAMT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingByIPOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOPoolingByIPOMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOPoolingByIPOMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOPoolingByIPOAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOPoolingByIPOAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOPoolingByIPOUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOPoolingByIPOUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPOPoolingByIPONOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOPoolingByIPOISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOPoolingByIPOID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOPoolingByIPOPROCESSQTY: TFloatField
      FieldName = 'PROCESSQTY'
      DisplayFormat = '#,##0'
    end
    object cdsIPOPoolingByIPOPROCESSAMT: TFloatField
      FieldName = 'PROCESSAMT'
      DisplayFormat = '#,##0'
    end
    object cdsIPOPoolingByIPORETURNAMT: TFloatField
      FieldName = 'RETURNAMT'
      DisplayFormat = '#,##0'
    end
    object cdsIPOPoolingByIPOCONFIRMED: TStringField
      FieldName = 'CONFIRMED'
      Size = 1
    end
    object cdsIPOPoolingByIPOPOSTEDFINANCE: TStringField
      FieldName = 'POSTEDFINANCE'
      Size = 1
    end
    object cdsIPOPoolingByIPOVOUCHERCREATED: TStringField
      FieldName = 'VOUCHERCREATED'
      Size = 1
    end
    object cdsIPOPoolingByIPOCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsIPOPoolingByIPOSTOCK_VOUCHERID: TLargeintField
      FieldName = 'STOCK_VOUCHERID'
    end
    object cdsIPOPoolingByIPOSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsIPOPoolingByIPOPROCESS_CONFIRM: TStringField
      FieldName = 'PROCESS_CONFIRM'
      Size = 1
    end
    object cdsIPOPoolingByIPODISTRIBUTION: TStringField
      FieldName = 'DISTRIBUTION'
      Size = 1
    end
    object cdsIPOPoolingByIPOREFUND_RECEIVE: TStringField
      FieldName = 'REFUND_RECEIVE'
      Size = 1
    end
    object cdsIPOPoolingByIPOREFUND_PAYMENT: TStringField
      FieldName = 'REFUND_PAYMENT'
      Size = 1
    end
    object cdsIPOPoolingByIPOPOSTEDCUSTODY: TStringField
      FieldName = 'POSTEDCUSTODY'
      Size = 1
    end
    object cdsIPOPoolingByIPOACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsIPOPoolingByIPOPOOLING_GROUPID: TLargeintField
      FieldName = 'POOLING_GROUPID'
    end
  end
  object cdsIPOPooling: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'POOLINGID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPOPooling'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsIPOPoolingNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 807
    Top = 88
    object cdsIPOPoolingPOOLINGID: TIntegerField
      FieldName = 'POOLINGID'
      Required = True
    end
    object cdsIPOPoolingPOOLINGCODE: TStringField
      FieldName = 'POOLINGCODE'
      Required = True
    end
    object cdsIPOPoolingPOOLINGDATE: TDateField
      FieldName = 'POOLINGDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOPoolingPOOLINGDESC: TStringField
      FieldName = 'POOLINGDESC'
      Size = 250
    end
    object cdsIPOPoolingPOOLINGTYPE: TStringField
      FieldName = 'POOLINGTYPE'
      Required = True
      Size = 1
    end
    object cdsIPOPoolingIPOID: TIntegerField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOPoolingACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsIPOPoolingACCIDChange
    end
    object cdsIPOPoolingCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 100
    end
    object cdsIPOPoolingCUST_IDCARDTYPE: TStringField
      FieldName = 'CUST_IDCARDTYPE'
      Size = 10
    end
    object cdsIPOPoolingCUST_IDCARDNO: TStringField
      FieldName = 'CUST_IDCARDNO'
      Size = 30
    end
    object cdsIPOPoolingCUST_IDCARDEXPIRE: TDateField
      FieldName = 'CUST_IDCARDEXPIRE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOPoolingCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      Size = 200
    end
    object cdsIPOPoolingCUST_PHONE: TStringField
      FieldName = 'CUST_PHONE'
    end
    object cdsIPOPoolingCUST_FAX: TStringField
      FieldName = 'CUST_FAX'
    end
    object cdsIPOPoolingCUST_MAIL: TStringField
      FieldName = 'CUST_MAIL'
      Size = 100
    end
    object cdsIPOPoolingORDERCCY: TStringField
      FieldName = 'ORDERCCY'
      Size = 5
    end
    object cdsIPOPoolingORDERQTY: TFloatField
      FieldName = 'ORDERQTY'
      OnChange = cdsIPOPoolingORDERQTYChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingORDERAMT: TFloatField
      FieldName = 'ORDERAMT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOPoolingMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOPoolingMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOPoolingAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOPoolingAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOPoolingUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOPoolingUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPOPoolingNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOPoolingISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOPoolingID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOPoolingSCRIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SCRIPNAME'
      LookupDataSet = frmIPOList.cdsIPOList
      LookupKeyFields = 'IPOID'
      LookupResultField = 'SCRIPNAME'
      KeyFields = 'IPOID'
      Size = 250
      Lookup = True
    end
    object cdsIPOPoolingFIXEDPRICE: TFloatField
      FieldKind = fkLookup
      FieldName = 'FIXEDPRICE'
      LookupDataSet = frmIPOList.cdsIPOList
      LookupKeyFields = 'IPOID'
      LookupResultField = 'FIXEDPRICE'
      KeyFields = 'IPOID'
      DisplayFormat = '#,##0'
      Lookup = True
    end
    object cdsIPOPoolingPROCESSQTY: TFloatField
      FieldName = 'PROCESSQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingPROCESSAMT: TFloatField
      FieldName = 'PROCESSAMT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingRETURNAMT: TFloatField
      FieldName = 'RETURNAMT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOPoolingCONFIRMED: TStringField
      FieldName = 'CONFIRMED'
      Size = 1
    end
    object cdsIPOPoolingPOSTEDFINANCE: TStringField
      FieldName = 'POSTEDFINANCE'
      Size = 1
    end
    object cdsIPOPoolingVOUCHERCREATED: TStringField
      FieldName = 'VOUCHERCREATED'
      Size = 1
    end
    object cdsIPOPoolingCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsIPOPoolingSTOCK_VOUCHERID: TLargeintField
      FieldName = 'STOCK_VOUCHERID'
    end
    object cdsIPOPoolingSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsIPOPoolingACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsIPOPoolingPROCESS_CONFIRM: TStringField
      FieldName = 'PROCESS_CONFIRM'
      Size = 1
    end
    object cdsIPOPoolingDISTRIBUTION: TStringField
      FieldName = 'DISTRIBUTION'
      Size = 1
    end
    object cdsIPOPoolingREFUND_RECEIVE: TStringField
      FieldName = 'REFUND_RECEIVE'
      Size = 1
    end
    object cdsIPOPoolingREFUND_PAYMENT: TStringField
      FieldName = 'REFUND_PAYMENT'
      Size = 1
    end
    object cdsIPOPoolingPOSTEDCUSTODY: TStringField
      FieldName = 'POSTEDCUSTODY'
      Size = 1
    end
    object cdsIPOPoolingPAYMENT: TStringField
      FieldName = 'PAYMENT'
      Size = 1
    end
    object cdsIPOPoolingPAYMENTAMT: TFloatField
      FieldName = 'PAYMENTAMT'
    end
    object cdsIPOPoolingPOOLING_GROUPID: TLargeintField
      FieldName = 'POOLING_GROUPID'
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
    BeforePost = cdsIPOBeforePost
    OnNewRecord = cdsIPONewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 721
    Top = 7
    object cdsIPOIPOID: TIntegerField
      Tag = -1
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOIPOCODE: TStringField
      Tag = -1
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
      Tag = -1
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
      OnChange = cdsIPOFIXEDPRICEChange
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
      Tag = -1
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
      OnChange = cdsIPOCOMMITMENTAMTChange
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
      DisplayFormat = 'dd MMM yyyy'
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
    object cdsIPOACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIPOACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsIPOACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsIPOACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsIPOIPO_TYPE: TStringField
      FieldName = 'IPO_TYPE'
      Size = 5
    end
    object cdsIPOIPO_PRODUCT: TStringField
      FieldName = 'IPO_PRODUCT'
      Size = 30
    end
    object cdsIPOCOUPON_RATE: TFloatField
      FieldName = 'COUPON_RATE'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsIPOMATURITYDATE: TDateField
      FieldName = 'MATURITYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsIPOCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
      DisplayFormat = '#,##0'
    end
    object cdsIPOCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
      DisplayFormat = '#,##0'
    end
    object cdsIPOISSUER_TYPE: TStringField
      FieldName = 'ISSUER_TYPE'
      Size = 1
    end
    object cdsIPOUSEGROUP: TStringField
      FieldName = 'USEGROUP'
      Size = 1
    end
    object cdsIPOGROUPID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'GROUPID'
    end
    object cdsIPOTMPNETFEE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPNETFEE'
    end
    object cdsIPOTMPVAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPVAT'
    end
    object cdsIPOTMPWHT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPWHT'
    end
    object cdsIPOCOMMITMENTQTY: TLargeintField
      FieldName = 'COMMITMENTQTY'
      OnChange = cdsIPOCOMMITMENTQTYChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsIPOABSORBQTY: TLargeintField
      FieldName = 'ABSORBQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsIPOMNGMT_FEE: TFloatField
      FieldName = 'MNGMT_FEE'
    end
    object cdsIPOUNDERWT_FEE: TFloatField
      FieldName = 'UNDERWT_FEE'
    end
  end
end
