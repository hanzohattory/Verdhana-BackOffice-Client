inherited frmMarket: TfrmMarket
  Caption = 'Market'
  ClientHeight = 477
  ClientWidth = 624
  ExplicitWidth = 640
  ExplicitHeight = 516
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 624
    Height = 73
    Align = alTop
    ExplicitWidth = 624
    ExplicitHeight = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 78
      Top = 10
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 99
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 78
      Top = 37
      DataBinding.DataField = 'MARKETDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 462
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 232
      Top = 10
      DataBinding.DataField = 'INITCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 99
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 462
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Init Code'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 408
    Width = 624
    ExplicitTop = 408
    ExplicitWidth = 624
    inherited dbNavLog: TDBNavigator
      Left = 510
      Hints.Strings = ()
      TabOrder = 5
      ExplicitLeft = 510
    end
    object cxButton1: TcxButton [3]
      Left = 172
      Top = 10
      Width = 75
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [4]
      Left = 253
      Top = 10
      Width = 75
      Height = 25
      Caption = 'cxButton2'
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton [5]
      Left = 334
      Top = 10
      Width = 75
      Height = 25
      Caption = 'cxButton3'
      TabOrder = 4
      OnClick = cxButton3Click
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 4
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      Parent = dxLayoutGroup2
      Visible = False
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      Parent = dxLayoutGroup2
      Visible = False
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl2Item4: TdxLayoutItem
      Parent = dxLayoutGroup2
      Visible = False
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 457
    Width = 624
    ExplicitTop = 457
    ExplicitWidth = 624
  end
  inherited tabEditorData: TTabSet
    Top = 387
    Width = 624
    ExplicitTop = 387
    ExplicitWidth = 624
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 73
    Width = 624
    Height = 314
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabDetails
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 310
    ClientRectLeft = 4
    ClientRectRight = 620
    ClientRectTop = 24
    object tabDetails: TcxTabSheet
      Caption = 'Details'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 616
        Height = 286
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 118
          Top = 10
          DataBinding.DataField = 'ADDRESS1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 418
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 118
          Top = 37
          DataBinding.DataField = 'ADDRESS2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 418
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 118
          Top = 64
          DataBinding.DataField = 'ADDRESS3'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 418
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 118
          Top = 91
          DataBinding.DataField = 'POSTCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 289
          Top = 91
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'COUNTRYCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 118
          Top = 118
          DataBinding.DataField = 'PHONE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 289
          Top = 118
          DataBinding.DataField = 'FAX'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 118
          Top = 145
          DataBinding.DataField = 'CONTACTPERSON'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 292
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 118
          Top = 172
          DataBinding.DataField = 'CP_POSITION'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 292
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 118
          Top = 199
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
          Width = 99
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 118
          Top = 226
          RepositoryItem = dmGlobal.luCurrency
          DataBinding.DataField = 'CCYTRANS'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 99
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 118
          Top = 253
          RepositoryItem = dmGlobal.luCurrency
          DataBinding.DataField = 'CCYSETTLE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 99
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Address'
          Control = cxDBTextEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 418
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBTextEdit5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 418
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBTextEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 418
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Post Code'
          Control = cxDBTextEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Control = cxDBLookupComboBox4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone'
          Control = cxDBTextEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax'
          Control = cxDBTextEdit9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Contact Person'
          Control = cxDBTextEdit10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 292
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl3Item9: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 292
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Currency'
          Control = cxDBLookupComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 99
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Transaction Currency'
          Control = cxDBLookupComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 99
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Settlement Currency'
          Control = cxDBLookupComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 99
          ControlOptions.ShowBorder = False
          Index = 9
        end
      end
    end
    object tabGeneral: TcxTabSheet
      Caption = 'General Setting'
      ImageIndex = 3
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 616
        Height = 286
        Align = alClient
        TabOrder = 0
        object cxDBLookupComboBox17: TcxDBLookupComboBox
          Left = 124
          Top = 10
          RepositoryItem = dmGlobal.luBoard
          DataBinding.DataField = 'FACILITATION_BOARD'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 120
        end
        object cxDBLookupComboBox18: TcxDBLookupComboBox
          Left = 124
          Top = 37
          RepositoryItem = dmGlobal.luBoard
          DataBinding.DataField = 'WAREHOUSE_BOARD'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 120
        end
        object cxDBLookupComboBox19: TcxDBLookupComboBox
          Left = 378
          Top = 10
          RepositoryItem = dmGlobal.luBoard
          DataBinding.DataField = 'CROSSTOM_BOARD'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 120
        end
        object cxDBLookupComboBox11: TcxDBLookupComboBox
          Left = 79
          Top = 109
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'BUY_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 100
        end
        object cxDBLookupComboBox12: TcxDBLookupComboBox
          Left = 79
          Top = 136
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'SELL_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 100
        end
        object cxDBLookupComboBox16: TcxDBLookupComboBox
          Left = 266
          Top = 109
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'SREC_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 100
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 266
          Top = 136
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'SDEL_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 100
        end
        object cxDBLookupComboBox20: TcxDBLookupComboBox
          Left = 124
          Top = 64
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'INV_BANK_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 120
        end
        object cxDBLookupComboBox21: TcxDBLookupComboBox
          Left = 79
          Top = 163
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CASH_SETTLE_ALTYPE'
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
        object cxDBLookupComboBox22: TcxDBLookupComboBox
          Left = 266
          Top = 163
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'STOCK_SETTLE_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 100
        end
        object cxDBLookupComboBox23: TcxDBLookupComboBox
          Left = 378
          Top = 37
          RepositoryItem = dmGlobal.luBoard
          DataBinding.DataField = 'NEGOTOM_BOARD'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 120
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Facilitation Board'
          Control = cxDBLookupComboBox17
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          Parent = dxLayoutControl5Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Warehouse Board'
          Control = cxDBLookupComboBox18
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Crossing Tomorrow Board'
          Control = cxDBLookupComboBox19
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          Parent = dxLayoutControl5Group1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Cash Ledger Type'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl4Item11: TdxLayoutItem
          Parent = dxLayoutControl4Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Buy'
          Control = cxDBLookupComboBox11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item12: TdxLayoutItem
          Parent = dxLayoutControl4Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Sell'
          Control = cxDBLookupComboBox12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group1: TdxLayoutGroup
          Parent = dxLayoutControl5Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group9: TdxLayoutGroup
          Parent = dxLayoutControl5Group1
          CaptionOptions.Text = 'Stock Ledger Type'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item16: TdxLayoutItem
          Parent = dxLayoutControl4Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Receive'
          Control = cxDBLookupComboBox16
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item15: TdxLayoutItem
          Parent = dxLayoutControl4Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Deliver'
          Control = cxDBLookupComboBox15
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item4: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Inv. Bank Legder Type'
          Control = cxDBLookupComboBox20
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl5Item5: TdxLayoutItem
          Parent = dxLayoutControl4Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Settlement'
          Control = cxDBLookupComboBox21
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl5Item6: TdxLayoutItem
          Parent = dxLayoutControl4Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Settlement'
          Control = cxDBLookupComboBox22
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl5Group2: TdxLayoutGroup
          Parent = dxLayoutControl5Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item7: TdxLayoutItem
          Parent = dxLayoutControl5Group3
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Nego Tomorrow Board'
          Control = cxDBLookupComboBox23
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group3: TdxLayoutGroup
          Parent = dxLayoutControl5Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
      end
    end
    object tabDueDays: TcxTabSheet
      Caption = 'Due Days'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdMarketBoard: TcxGrid
        Left = 0
        Top = 0
        Width = 616
        Height = 286
        Align = alClient
        TabOrder = 0
        object gvwMarketBoard: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsMarketBoard
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Width = 265
            end
            item
              Caption = 'Due Stock'
            end
            item
              Caption = 'Due Cash'
            end>
          object gvwMarketBoardBOARDCODE: TcxGridDBBandedColumn
            Caption = 'Board Code'
            DataBinding.FieldName = 'BOARDCODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwMarketBoardBOARDDESC: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'BOARDDESC'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 203
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwMarketBoardDUEBUYSTOCK: TcxGridDBBandedColumn
            Caption = 'Buy'
            DataBinding.FieldName = 'DUEBUYSTOCK'
            PropertiesClassName = 'TcxSpinEditProperties'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwMarketBoardDUESELLSTOCK: TcxGridDBBandedColumn
            Caption = 'Sell'
            DataBinding.FieldName = 'DUESELLSTOCK'
            PropertiesClassName = 'TcxSpinEditProperties'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwMarketBoardDUEBUYCASH: TcxGridDBBandedColumn
            Caption = 'Buy'
            DataBinding.FieldName = 'DUEBUYCASH'
            PropertiesClassName = 'TcxSpinEditProperties'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwMarketBoardDUESELLCASH: TcxGridDBBandedColumn
            Caption = 'Sell'
            DataBinding.FieldName = 'DUESELLCASH'
            PropertiesClassName = 'TcxSpinEditProperties'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grdMarketBoardLevel1: TcxGridLevel
          GridView = gvwMarketBoard
        end
      end
    end
    object tabCharges: TcxTabSheet
      Caption = 'Charges'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 616
        Height = 286
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 75
          Top = 82
          DataBinding.DataField = 'VATPCT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 100
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 75
          Top = 139
          DataBinding.DataField = 'WHTPCT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 100
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 109
          Top = 37
          DataBinding.DataField = 'OTCAMOUNT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 100
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 75
          Top = 196
          DataBinding.DataField = 'SELLTAX'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 100
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 225
          Top = 82
          RepositoryItem = dmGlobal.luAccount
          DataBinding.DataField = 'VAT_ACCID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 100
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 399
          Top = 82
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'VAT_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 100
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 225
          Top = 139
          RepositoryItem = dmGlobal.luAccount
          DataBinding.DataField = 'WHT_ACCID'
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
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 399
          Top = 139
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'WHT_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 100
        end
        object cxDBLookupComboBox9: TcxDBLookupComboBox
          Left = 225
          Top = 196
          RepositoryItem = dmGlobal.luAccount
          DataBinding.DataField = 'SELLTAX_ACCID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 100
        end
        object cxDBLookupComboBox10: TcxDBLookupComboBox
          Left = 399
          Top = 196
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'SELLTAX_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 100
        end
        object cxDBLookupComboBox13: TcxDBLookupComboBox
          Left = 109
          Top = 10
          RepositoryItem = dmGlobal.luAccount
          DataBinding.DataField = 'BFEE_ACCID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 100
        end
        object cxDBLookupComboBox14: TcxDBLookupComboBox
          Left = 335
          Top = 10
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'BFEE_ALTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 100
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Value (%)'
          Control = cxDBTextEdit12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Value (%)'
          Control = cxDBTextEdit13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'OTC Amount'
          Control = cxDBTextEdit14
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Value (%)'
          Control = cxDBTextEdit15
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account'
          Control = cxDBLookupComboBox5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Ledger Type'
          Control = cxDBLookupComboBox6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account'
          Control = cxDBLookupComboBox7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Ledger Type'
          Control = cxDBLookupComboBox8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account'
          Control = cxDBLookupComboBox9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' Ledger Type'
          Control = cxDBLookupComboBox10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group1: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'VAT'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'WHT'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 3
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Sell Tax'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 4
        end
        object dxLayoutControl4Item13: TdxLayoutItem
          Parent = dxLayoutControl4Group5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Broker Fee Account'
          Control = cxDBLookupComboBox13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item14: TdxLayoutItem
          Parent = dxLayoutControl4Group5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Broker Fee Ledger Type'
          Control = cxDBLookupComboBox14
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tabBankSettlement: TcxTabSheet
      Caption = 'Bank Settlement'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 616
        Height = 286
        Align = alClient
        TabOrder = 0
        object gvwCompCashSettle: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwCompCashSettleCustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = frmMarkets.BlueToggle
          Bands = <
            item
            end>
          object gvwCompCashSettleBNCODE: TcxGridDBBandedColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BNCODE'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCompCashSettleCCY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCY'
            RepositoryItem = dmGlobal.luCurrency
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCompCashSettleTYPE: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'RDN'
                ImageIndex = 0
                Value = 'R'
              end
              item
                Description = 'CBest'
                Value = 'C'
              end
              item
                Description = 'Company'
                Value = 'P'
              end
              item
                Description = 'Bank Partner'
                Value = 'O'
              end>
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCompCashSettleACCBANKID: TcxGridDBBandedColumn
            Caption = 'Bank A/C Number'
            DataBinding.FieldName = 'ACCBANKID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ACCBANKID'
            Properties.ListColumns = <
              item
                Width = 120
                FieldName = 'BANKACCNO'
              end
              item
                Caption = 'CCY'
                FieldName = 'CCYCODE'
              end
              item
                Width = 150
                FieldName = 'BANKACCNAME'
              end
              item
                Width = 100
                FieldName = 'BANKBRANCH'
              end>
            Properties.ListSource = dmLookup.dsLuBankAccount
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCompCashSettleBANKACCNAME: TcxGridDBBandedColumn
            Caption = 'Beneficiary Name'
            DataBinding.FieldName = 'ACCBANKID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ACCBANKID'
            Properties.ListColumns = <
              item
                FieldName = 'BANKACCNAME'
              end>
            Properties.ListSource = dmLookup.dsLuBankAccount
            Options.Editing = False
            Width = 155
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCompCashSettleBANKBRANCH: TcxGridDBBandedColumn
            Caption = 'Bank Branch'
            DataBinding.FieldName = 'ACCBANKID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ACCBANKID'
            Properties.ListColumns = <
              item
                FieldName = 'BANKBRANCH'
              end>
            Properties.ListSource = dmLookup.dsLuBankAccount
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwCompCashSettle
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsMarket
    Left = 256
    Top = 272
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Top = 304
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsMarketBoard: TDataSource
    DataSet = cdsMarketBoard
    Left = 336
    Top = 272
  end
  object dsSettleConfig: TDataSource
    DataSet = cdsMarketSettleConfig
    Left = 448
    Top = 272
  end
  object cdsMarket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryMarket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 256
    Top = 320
    object cdsMarketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsMarketINITCODE: TStringField
      FieldName = 'INITCODE'
      Size = 5
    end
    object cdsMarketMARKETDESC: TStringField
      FieldName = 'MARKETDESC'
      Size = 50
    end
    object cdsMarketADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 50
    end
    object cdsMarketADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 50
    end
    object cdsMarketADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 50
    end
    object cdsMarketPOSTCODE: TStringField
      FieldName = 'POSTCODE'
      Size = 10
    end
    object cdsMarketCOUNTRYCODE: TStringField
      FieldName = 'COUNTRYCODE'
      Size = 5
    end
    object cdsMarketPHONE: TStringField
      FieldName = 'PHONE'
    end
    object cdsMarketFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsMarketCONTACTPERSON: TStringField
      FieldName = 'CONTACTPERSON'
      Size = 50
    end
    object cdsMarketCP_POSITION: TStringField
      FieldName = 'CP_POSITION'
      Size = 50
    end
    object cdsMarketCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsMarketCCYTRANS: TStringField
      FieldName = 'CCYTRANS'
      Size = 5
    end
    object cdsMarketCCYSETTLE: TStringField
      FieldName = 'CCYSETTLE'
      Size = 5
    end
    object cdsMarketVATPCT: TFloatField
      FieldName = 'VATPCT'
    end
    object cdsMarketWHTPCT: TFloatField
      FieldName = 'WHTPCT'
    end
    object cdsMarketOTCAMOUNT: TFloatField
      FieldName = 'OTCAMOUNT'
    end
    object cdsMarketMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMarketMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMarketAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMarketAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMarketUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMarketUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMarketNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMarketISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMarketID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMarketqryMarketBoard: TDataSetField
      FieldName = 'qryMarketBoard'
    end
    object cdsMarketSELLTAX: TFloatField
      FieldName = 'SELLTAX'
    end
    object cdsMarketVAT_ACCID: TIntegerField
      FieldName = 'VAT_ACCID'
    end
    object cdsMarketVAT_ALTYPE: TStringField
      FieldName = 'VAT_ALTYPE'
      Size = 10
    end
    object cdsMarketWHT_ACCID: TIntegerField
      FieldName = 'WHT_ACCID'
    end
    object cdsMarketWHT_ALTYPE: TStringField
      FieldName = 'WHT_ALTYPE'
      Size = 10
    end
    object cdsMarketSELLTAX_ACCID: TIntegerField
      FieldName = 'SELLTAX_ACCID'
    end
    object cdsMarketSELLTAX_ALTYPE: TStringField
      FieldName = 'SELLTAX_ALTYPE'
      Size = 10
    end
    object cdsMarketBUY_ALTYPE: TStringField
      FieldName = 'BUY_ALTYPE'
      Size = 10
    end
    object cdsMarketSELL_ALTYPE: TStringField
      FieldName = 'SELL_ALTYPE'
      Size = 10
    end
    object cdsMarketBFEE_ACCID: TIntegerField
      FieldName = 'BFEE_ACCID'
    end
    object cdsMarketBFEE_ALTYPE: TStringField
      FieldName = 'BFEE_ALTYPE'
      Size = 10
    end
    object cdsMarketSREC_ALTYPE: TStringField
      FieldName = 'SREC_ALTYPE'
      Size = 10
    end
    object cdsMarketSDEL_ALTYPE: TStringField
      FieldName = 'SDEL_ALTYPE'
      Size = 10
    end
    object cdsMarketFACILITATION_BOARD: TLargeintField
      FieldName = 'FACILITATION_BOARD'
    end
    object cdsMarketWAREHOUSE_BOARD: TLargeintField
      FieldName = 'WAREHOUSE_BOARD'
    end
    object cdsMarketCROSSTOM_BOARD: TLargeintField
      FieldName = 'CROSSTOM_BOARD'
    end
    object cdsMarketHOLDTAX: TFloatField
      FieldName = 'HOLDTAX'
    end
    object cdsMarketCAPGAINTAX: TFloatField
      FieldName = 'CAPGAINTAX'
    end
    object cdsMarketINV_BANK_ALTYPE: TStringField
      FieldName = 'INV_BANK_ALTYPE'
      Size = 10
    end
    object cdsMarketSTOCK_SETTLE_ALTYPE: TStringField
      FieldName = 'STOCK_SETTLE_ALTYPE'
      Size = 10
    end
    object cdsMarketCASH_SETTLE_ALTYPE: TStringField
      FieldName = 'CASH_SETTLE_ALTYPE'
      Size = 10
    end
    object cdsMarketNEGOTOM_BOARD: TLargeintField
      FieldName = 'NEGOTOM_BOARD'
    end
  end
  object cdsMarketBoard: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMarketqryMarketBoard
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 320
    object cdsMarketBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsMarketBoardBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsMarketBoardMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsMarketBoardBOARDDESC: TStringField
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsMarketBoardGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsMarketBoardMARKET: TStringField
      FieldName = 'MARKET'
      Size = 1
    end
    object cdsMarketBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsMarketBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsMarketBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsMarketBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsMarketBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsMarketBoardMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMarketBoardMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMarketBoardAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMarketBoardAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMarketBoardISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMarketBoardID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMarketBoardCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
  end
  object cdsMarketSettleConfig: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 320
    object cdsMarketSettleConfigTRANS_TYPE_CODE: TStringField
      FieldName = 'TRANS_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsMarketSettleConfigSEQNO: TLargeintField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsMarketSettleConfigTRANS_MODE: TStringField
      FieldName = 'TRANS_MODE'
      Required = True
      Size = 10
    end
    object cdsMarketSettleConfigMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsMarketSettleConfigCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsMarketSettleConfigBOARDID: TIntegerField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsMarketSettleConfigACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Required = True
      Size = 10
    end
    object cdsMarketSettleConfigBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsMarketSettleConfigSAVEKEEP: TStringField
      FieldName = 'SAVEKEEP'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigACCSIDE: TStringField
      FieldName = 'ACCSIDE'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigSETTLESIDE: TStringField
      FieldName = 'SETTLESIDE'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigMULTI_TRANS: TStringField
      FieldName = 'MULTI_TRANS'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigTRF_PRIVATEBANK: TStringField
      FieldName = 'TRF_PRIVATEBANK'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigUSE_CLIENTSIDE_ACC: TStringField
      FieldName = 'USE_CLIENTSIDE_ACC'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigSOURCE_SETTLETYPE_CODE: TStringField
      FieldName = 'SOURCE_SETTLETYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsMarketSettleConfigTARGET_SETTLETYPE_CODE: TStringField
      FieldName = 'TARGET_SETTLETYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsMarketSettleConfigINSTR_BASE: TStringField
      FieldName = 'INSTR_BASE'
      Required = True
      Size = 1
    end
    object cdsMarketSettleConfigINSTR_DEFAULT: TStringField
      FieldName = 'INSTR_DEFAULT'
    end
    object cdsMarketSettleConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMarketSettleConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMarketSettleConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMarketSettleConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMarketSettleConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMarketSettleConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMarketSettleConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMarketSettleConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMarketSettleConfigID: TLargeintField
      FieldName = 'ID'
    end
  end
end
