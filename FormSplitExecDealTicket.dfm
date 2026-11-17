object frmSplitExecDealTicket: TfrmSplitExecDealTicket
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Split Deal Ticket Execution'
  ClientHeight = 511
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 845
    Height = 209
    Align = alTop
    Enabled = False
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 208
      Top = 10
      DataBinding.DataField = 'DEALTICKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 166
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 408
      Top = 10
      DataBinding.DataField = 'DEALTICKETDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 63
      Top = 91
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 91
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 169
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 336
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 169
      Top = 91
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 336
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 63
      Top = 37
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 90
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 348
      Top = 37
      RepositoryItem = dmGlobal.luChannel
      DataBinding.DataField = 'CHANNELCODE'
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
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 208
      Top = 37
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 90
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 63
      Top = 10
      RepositoryItem = dmGlobal.luBuySell
      DataBinding.DataField = 'BS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 90
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox
      Left = 63
      Top = 118
      RepositoryItem = dmGlobal.luDealer
      DataBinding.DataField = 'DEALERID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 120
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Left = 219
      Top = 118
      RepositoryItem = dmGlobal.luSales
      DataBinding.DataField = 'SALESID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 120
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 63
      Top = 145
      DataBinding.DataField = 'DUESTOCK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 50
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 170
      Top = 145
      DataBinding.DataField = 'DUECASH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 50
    end
    object edDealQty: TcxDBTextEdit
      Left = 63
      Top = 172
      DataBinding.DataField = 'DEALQTY'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 80
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 221
      Top = 172
      DataBinding.DataField = 'DEALPRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 120
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 405
      Top = 172
      DataBinding.DataField = 'DEALVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 100
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 345
      Top = 118
      Caption = 'Omnibus Trade'
      DataBinding.DataField = 'OMNIBUSTRADE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
    end
    object cxDBImageComboBox2: TcxDBImageComboBox
      Left = 286
      Top = 145
      RepositoryItem = dmGlobal.luCommCalcMethod
      DataBinding.DataField = 'CALC_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 422
      Top = 145
      DataBinding.DataField = 'COMM_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 83
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 63
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 91
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 166
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Channel'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy / Sell'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Dealer'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sales'
      Control = cxDBLookupComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Stock'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Cash'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = edDealQty
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Average Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total Value'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Commission'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 462
    Width = 845
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000FFFFFFFF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000800000FF800000FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000800000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FF008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000800000FF008000FF008000FF008000FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000800000FF0080
        00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
        00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
        FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000080800000FF00FF0080800000808000008080000080
        80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000FF00FF008000FF0080
        00FF008000FF800000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000080800000FF
        00FF008000FF008000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000FF00FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
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
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000FFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000000FFFF808080FF008080000080800000808000008080000080
        8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000FFFFFFFF00808000008080000080
        8000008080000080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
        80FF008080000080800000808000008080000080800000808000808080FFFFFF
        FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
        80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
        FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
        80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000000
        FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
        8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
        800000808000008080000080800000808000000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
        80FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        800000808000008080000000FFFF000080FF0080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
        8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF0000FFFF0080800000808000008080000080800000808000008080000080
        8000808080FF808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdDealTicketExec: TcxGrid
    Left = 0
    Top = 209
    Width = 321
    Height = 253
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object gvwDealTicketExec: TcxGridDBTableView
      PopupMenu = popExec
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDealTicketExec
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'EXQTY'
          Column = gvwDealTicketExecEXQTY
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'EXVALUE'
          Column = gvwDealTicketExecEXVALUE
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soSelectedRecords]
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmDealTickets.BlueToggle
      object gvwDealTicketExecBOARDID: TcxGridDBColumn
        Caption = 'Board'
        DataBinding.FieldName = 'BOARDID'
        RepositoryItem = dmGlobal.luBoard
        Width = 34
      end
      object gvwDealTicketExecEXQTY: TcxGridDBColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'EXQTY'
        Width = 67
      end
      object gvwDealTicketExecEXPRICE: TcxGridDBColumn
        Caption = 'Price'
        DataBinding.FieldName = 'EXPRICE'
        Width = 49
      end
      object gvwDealTicketExecEXVALUE: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'EXVALUE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 103
      end
      object gvwDealTicketExecCPACCID: TcxGridDBColumn
        Caption = 'CP Broker'
        DataBinding.FieldName = 'CPACCID'
        RepositoryItem = dmGlobal.luAccountInit
        Width = 53
      end
    end
    object grdDealTicketExecLevel1: TcxGridLevel
      GridView = gvwDealTicketExec
    end
  end
  object Panel1: TPanel
    Left = 321
    Top = 209
    Width = 45
    Height = 253
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object btnAdd: TButton
      Left = 6
      Top = 34
      Width = 33
      Height = 33
      Caption = '>'
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnRemove: TButton
      Left = 6
      Top = 73
      Width = 33
      Height = 33
      Caption = '<'
      TabOrder = 1
      OnClick = btnRemoveClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 366
    Top = 209
    Width = 479
    Height = 253
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object gvwExec: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsSplitExec
      DataController.DetailKeyFieldNames = 'DEALTICKETID'
      DataController.KeyFieldNames = 'DEALTICKETID;SEQID'
      DataController.MasterKeyFieldNames = 'DEALTICKETID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'EXQTY'
          Column = cxGridDBColumn2
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'EXVALUE'
          Column = cxGridDBColumn4
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soSelectedRecords]
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmDealTickets.BlueToggle
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Board'
        DataBinding.FieldName = 'BOARDID'
        RepositoryItem = dmGlobal.luBoard
        Width = 48
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'EXQTY'
        Width = 60
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Price'
        DataBinding.FieldName = 'EXPRICE'
        Width = 75
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'EXVALUE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 112
      end
    end
    object gvwDeal: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsSplitDeal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soSelectedRecords]
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmDealTickets.BlueToggle
      object gvwDealDEALTICKETID: TcxGridDBColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
      end
      object gvwDealDEALTICKETCODE: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DEALTICKETCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 46
      end
      object gvwDealDEALTICKETDATE: TcxGridDBColumn
        DataBinding.FieldName = 'DEALTICKETDATE'
        Visible = False
      end
      object gvwDealACCNO: TcxGridDBColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = gvwDealACCNOPropertiesButtonClick
        Width = 65
      end
      object gvwDealACCNAME: TcxGridDBColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 130
      end
      object gvwDealSTOCKID: TcxGridDBColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
      end
      object gvwDealSTOCKCODE: TcxGridDBColumn
        DataBinding.FieldName = 'STOCKCODE'
        Visible = False
      end
      object gvwDealSTOCKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'STOCKNAME'
        Visible = False
      end
      object gvwDealBS: TcxGridDBColumn
        DataBinding.FieldName = 'BS'
        Visible = False
      end
      object gvwDealMARKETCODE: TcxGridDBColumn
        DataBinding.FieldName = 'MARKETCODE'
        Visible = False
      end
      object gvwDealCCYCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CCYCODE'
        Visible = False
      end
      object gvwDealCHANNELCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CHANNELCODE'
        Visible = False
      end
      object gvwDealOMNIBUSTRADE: TcxGridDBColumn
        DataBinding.FieldName = 'OMNIBUSTRADE'
        Visible = False
      end
      object gvwDealDEALQTY: TcxGridDBColumn
        Caption = 'Deal Qty'
        DataBinding.FieldName = 'DEALQTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 60
      end
      object gvwDealDEALPRICE: TcxGridDBColumn
        Caption = 'Deal Price'
        DataBinding.FieldName = 'DEALPRICE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 63
      end
      object gvwDealDEALVALUE: TcxGridDBColumn
        Caption = 'Deal Value'
        DataBinding.FieldName = 'DEALVALUE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 99
      end
      object gvwDealALLOCQTY: TcxGridDBColumn
        DataBinding.FieldName = 'ALLOCQTY'
        Visible = False
      end
      object gvwDealSALESID: TcxGridDBColumn
        DataBinding.FieldName = 'SALESID'
        Visible = False
      end
      object gvwDealDEALERID: TcxGridDBColumn
        DataBinding.FieldName = 'DEALERID'
        Visible = False
      end
      object gvwDealDUESTOCK: TcxGridDBColumn
        DataBinding.FieldName = 'DUESTOCK'
        Visible = False
      end
      object gvwDealDUECASH: TcxGridDBColumn
        DataBinding.FieldName = 'DUECASH'
        Visible = False
      end
      object gvwDealPOSTED: TcxGridDBColumn
        DataBinding.FieldName = 'POSTED'
        Visible = False
      end
      object gvwDealMODDA: TcxGridDBColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
      end
      object gvwDealMODUI: TcxGridDBColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
      end
      object gvwDealAPPDA: TcxGridDBColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
      end
      object gvwDealAPPUI: TcxGridDBColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
      end
      object gvwDealISDEL: TcxGridDBColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
      end
      object gvwDealID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gvwDealACCID: TcxGridDBColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
      end
      object gvwDealDAYTRADE: TcxGridDBColumn
        DataBinding.FieldName = 'DAYTRADE'
        Visible = False
      end
      object gvwDealCONID: TcxGridDBColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
      end
      object gvwDealSTAT: TcxGridDBColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
      end
      object gvwDealCDUEDATE: TcxGridDBColumn
        DataBinding.FieldName = 'CDUEDATE'
        Visible = False
      end
      object gvwDealSDUEDATE: TcxGridDBColumn
        DataBinding.FieldName = 'SDUEDATE'
        Visible = False
      end
      object gvwDealSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
      end
      object gvwDealOLD_DEALTICKETID: TcxGridDBColumn
        DataBinding.FieldName = 'OLD_DEALTICKETID'
        Visible = False
      end
      object gvwDealCALC_METHOD: TcxGridDBColumn
        DataBinding.FieldName = 'CALC_METHOD'
        Visible = False
      end
      object gvwDealCOMM_RATE: TcxGridDBColumn
        DataBinding.FieldName = 'COMM_RATE'
        Visible = False
      end
      object gvwDealROUNDPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'ROUNDPRICE'
        Visible = False
      end
      object gvwDealROUNDVALUE: TcxGridDBColumn
        DataBinding.FieldName = 'ROUNDVALUE'
        Visible = False
      end
      object gvwDealDIFFVALUE: TcxGridDBColumn
        DataBinding.FieldName = 'DIFFVALUE'
        Visible = False
      end
      object gvwDealACCSOPID: TcxGridDBColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
      end
      object gvwDealAUTO_ALLOC: TcxGridDBColumn
        DataBinding.FieldName = 'AUTO_ALLOC'
        Visible = False
      end
      object gvwDealSETTLE_CCYCODE: TcxGridDBColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
      end
      object gvwDealDCCYAMT: TcxGridDBColumn
        DataBinding.FieldName = 'DCCYAMT'
        Visible = False
      end
      object gvwDealCNNO: TcxGridDBColumn
        DataBinding.FieldName = 'CNNO'
        Visible = False
      end
      object gvwDealCXLD: TcxGridDBColumn
        DataBinding.FieldName = 'CXLD'
        Visible = False
      end
      object gvwDealRVSD: TcxGridDBColumn
        DataBinding.FieldName = 'RVSD'
        Visible = False
      end
      object gvwDealRVSD_DTID: TcxGridDBColumn
        DataBinding.FieldName = 'RVSD_DTID'
        Visible = False
      end
      object gvwDealRVSDDATE: TcxGridDBColumn
        DataBinding.FieldName = 'RVSDDATE'
        Visible = False
      end
      object gvwDealRVS: TcxGridDBColumn
        DataBinding.FieldName = 'RVS'
        Visible = False
      end
      object gvwDealRVS_STS: TcxGridDBColumn
        DataBinding.FieldName = 'RVS_STS'
        Visible = False
      end
      object gvwDealEXTERNALID: TcxGridDBColumn
        DataBinding.FieldName = 'EXTERNALID'
        Visible = False
      end
      object gvwDealSALES_BRANCHID: TcxGridDBColumn
        DataBinding.FieldName = 'SALES_BRANCHID'
        Visible = False
      end
      object gvwDealISOMG: TcxGridDBColumn
        DataBinding.FieldName = 'ISOMG'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwDeal
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwExec
      end
    end
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = frmDealTickets.cdsDealTicket
    Left = 520
    Top = 48
  end
  object dsDealTicketExec: TDataSource
    AutoEdit = False
    DataSet = frmDealTickets.cdsDealTicketExec
    Left = 520
    Top = 96
  end
  object dsSplitDeal: TDataSource
    DataSet = frmDealTickets.cdsSplitExecDeal
    Left = 640
    Top = 48
  end
  object dsSplitExec: TDataSource
    DataSet = frmDealTickets.cdsSplitExec
    Left = 640
    Top = 96
  end
  object popExec: TPopupMenu
    Left = 248
    Top = 240
    object CreateNewDealTicket1: TMenuItem
      Caption = 'Create New Deal Ticket'
      OnClick = CreateNewDealTicket1Click
    end
  end
end
