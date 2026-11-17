object frmCrossTom: TfrmCrossTom
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Crossing Tomorrow'
  ClientHeight = 428
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 546
    Height = 379
    Align = alClient
    TabOrder = 0
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 82
      Top = 28
      DataBinding.DataField = 'DEALTICKETDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 82
      Top = 55
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 91
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 188
      Top = 166
      TabStop = False
      DataBinding.DataField = 'BUYACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 336
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 188
      Top = 55
      TabStop = False
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 336
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 226
      Top = 28
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 90
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 366
      Top = 28
      RepositoryItem = dmGlobal.luChannel
      DataBinding.DataField = 'CHANNELCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 82
      Top = 82
      DataBinding.DataField = 'DUESTOCK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 50
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 189
      Top = 82
      DataBinding.DataField = 'DUECASH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 50
    end
    object edDealQty: TcxDBTextEdit
      Left = 82
      Top = 109
      DataBinding.DataField = 'DEALQTY'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 120
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 236
      Top = 109
      DataBinding.DataField = 'DEALPRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 100
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 400
      Top = 109
      TabStop = False
      DataBinding.DataField = 'DEALVALUE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 124
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 82
      Top = 166
      DataBinding.DataField = 'BUYACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Width = 91
    end
    object cxDBButtonEdit2: TcxDBButtonEdit
      Left = 82
      Top = 277
      DataBinding.DataField = 'SELLACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Width = 91
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 188
      Top = 277
      TabStop = False
      DataBinding.DataField = 'SELLACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 336
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 82
      Top = 193
      RepositoryItem = dmGlobal.luCommission
      AutoSize = False
      DataBinding.DataField = 'BUYCOMMID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Height = 21
      Width = 91
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox
      Left = 82
      Top = 304
      RepositoryItem = dmGlobal.luCommission
      DataBinding.DataField = 'SELLCOMMID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 91
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 188
      Top = 193
      TabStop = False
      DataBinding.DataField = 'BUYCOMMDESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 336
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 82
      Top = 220
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'BUYCOMM_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 111
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 263
      Top = 220
      RepositoryItem = dmGlobal.luCommCalcMethod
      AutoSize = False
      DataBinding.DataField = 'BUYCALC_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Height = 21
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 188
      Top = 304
      TabStop = False
      DataBinding.DataField = 'SELLCOMMDESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Width = 336
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 82
      Top = 331
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'SELLCOMM_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Width = 111
    end
    object cxDBImageComboBox2: TcxDBImageComboBox
      Left = 263
      Top = 331
      RepositoryItem = dmGlobal.luCommCalcMethod
      AutoSize = False
      DataBinding.DataField = 'SELLCALC_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Height = 21
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group5
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
      Parent = dxLayoutControl1Group13
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
      Parent = dxLayoutControl1Group5
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
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Channel'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group14
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
      Parent = dxLayoutControl1Group14
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Cash'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = edDealQty
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total Value'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Stock'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Buy'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Sell'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commission'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commission'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Rate'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calc Method'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group7
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Rate'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calc Method'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group11
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 379
    Width = 546
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
  object dsSubject: TDataSource
    DataSet = frmDealTickets.cdsCrossTom
    Left = 630
    Top = 395
  end
  object cdsAccountCommission: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'accid'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountCommission'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 521
    Top = 336
    object cdsAccountCommissionACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountCommissionCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsAccountCommissionCOMM_CODE: TStringField
      FieldName = 'COMM_CODE'
      ReadOnly = True
      Size = 15
    end
    object cdsAccountCommissionCOMM_DESC: TStringField
      FieldName = 'COMM_DESC'
      ReadOnly = True
      Size = 50
    end
    object cdsAccountCommissionCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      ReadOnly = True
    end
    object cdsAccountCommissionCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      ReadOnly = True
      Size = 1
    end
  end
end
