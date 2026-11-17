object frmSettleInstr: TfrmSettleInstr
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Settlement Instruction'
  ClientHeight = 389
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 320
    Width = 771
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
    Width = 771
    Height = 320
    Align = alClient
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 67
      Top = 10
      TabStop = False
      DataBinding.DataField = 'SINO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 67
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 67
      Top = 64
      TabStop = False
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 150
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 232
      Top = 64
      TabStop = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 521
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 122
      Top = 136
      TabStop = False
      DataBinding.DataField = 'SOURCE_ACCBANKNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 245
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 122
      Top = 163
      TabStop = False
      DataBinding.DataField = 'SOURCE_ACCBANKNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 245
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 497
      Top = 136
      TabStop = False
      DataBinding.DataField = 'TARGET_ACCBANKNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 245
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 497
      Top = 163
      TabStop = False
      DataBinding.DataField = 'TARGET_ACCBANKNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 245
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 252
      Top = 10
      TabStop = False
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 252
      Top = 37
      TabStop = False
      DataBinding.DataField = 'TRDDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 120
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 428
      Top = 37
      TabStop = False
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 84
      Top = 220
      DataBinding.DataField = 'BASE_CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 120
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 84
      Top = 247
      DataBinding.DataField = 'BASE_NETAMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 120
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 327
      Top = 247
      DataBinding.DataField = 'SETTLE_EXRATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 120
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 327
      Top = 274
      DataBinding.DataField = 'SETTLE_NETAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 120
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 426
      Top = 10
      TabStop = False
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object txtCCY: TcxDBLookupComboBox
      Left = 327
      Top = 220
      DataBinding.DataField = 'SETTLE_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CCYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CCYCODE'
        end
        item
          FieldName = 'CCYRATE'
        end>
      Properties.ListSource = dmLookup.dsLuExchangeRate
      Properties.OnCloseUp = txtCCYPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 120
    end
    object txtInstType: TcxDBLookupComboBox
      Left = 549
      Top = 202
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUCTION_TYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'INSTRUCTION_TYPE_CODE'
        end
        item
          FieldName = 'INSTRUCTION_TYPE_DESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuInstructionTypes
      Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 145
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 122
      Top = 109
      DataBinding.DataField = 'SOURCE_ACCBANKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 497
      Top = 109
      DataBinding.DataField = 'TARGET_ACCBANKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 549
      Top = 229
      DataBinding.DataField = 'COMFIRM_BY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 549
      Top = 256
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Height = 54
      Width = 185
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
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SI No'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Value Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account No.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account Name'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account No.'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account Name'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Source Bank'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Target Bank'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Net Amount'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Settle Ex. Rate'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit15
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Settle Net Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit16
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Base Value'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Settle Value'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      CaptionOptions.Text = 'Quantity'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit18
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Currency'
      Parent = dxLayoutControl1Group8
      Control = txtCCY
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Instruction Type'
      Parent = dxLayoutControl1Group10
      Control = txtInstType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Comfirm By'
      Parent = dxLayoutControl1Group10
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remark'
      Parent = dxLayoutControl1Group10
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 369
    Width = 771
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dsSubject: TDataSource
    DataSet = frmSettleInstrList.cdsSettlementInstruction
    Left = 310
    Top = 325
  end
end
