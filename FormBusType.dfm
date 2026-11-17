inherited frmBusType: TfrmBusType
  Caption = 'Business Type'
  ClientHeight = 526
  ClientWidth = 664
  ExplicitWidth = 670
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 664
    Height = 68
    Align = alTop
    ExplicitWidth = 664
    ExplicitHeight = 68
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'BUSTYPECODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'BUSTYPEDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 581
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 457
    Width = 664
    ExplicitTop = 295
    ExplicitWidth = 664
    inherited dbNavLog: TDBNavigator
      Left = 550
      Hints.Strings = ()
      ExplicitLeft = 550
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 506
    Width = 664
    ExplicitTop = 344
    ExplicitWidth = 664
  end
  inherited tabEditorData: TTabSet
    Top = 436
    Width = 664
    ExplicitTop = 274
    ExplicitWidth = 664
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 68
    Width = 664
    Height = 368
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = -64
    ExplicitTop = 74
    ExplicitHeight = 395
    ClientRectBottom = 364
    ClientRectLeft = 4
    ClientRectRight = 660
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'General Setting'
      ImageIndex = 2
      ExplicitHeight = 178
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 178
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 439
          Top = 64
          RepositoryItem = dmGlobal.luAccLegClass
          DataBinding.DataField = 'ALCLASSID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 206
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 439
          Top = 91
          RepositoryItem = dmGlobal.luTradingLimitClass
          DataBinding.DataField = 'TLCLASSID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 206
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 439
          Top = 118
          RepositoryItem = dmGlobal.luInterest
          DataBinding.DataField = 'INTERESTCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 206
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 439
          Top = 10
          RepositoryItem = dmGlobal.luTCModel
          DataBinding.DataField = 'TC_MODEL'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 206
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 439
          Top = 37
          DataBinding.DataField = 'AVGPRICEDEC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 55
        end
        object cxLabel1: TcxLabel
          Left = 500
          Top = 37
          Caption = 'Digits'
          Style.HotTrack = False
        end
        object cxGroupBox2: TcxGroupBox
          Left = 10
          Top = 10
          Caption = 'Indicators'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 0
          Height = 228
          Width = 295
          object dxLayoutControl5: TdxLayoutControl
            Left = 2
            Top = 18
            Width = 291
            Height = 208
            Align = alClient
            TabOrder = 0
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 10
              Top = 10
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'WAPU'
              DataBinding.DataField = 'ISWAPU'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 61
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 77
              Top = 10
              DataBinding.DataField = 'WAPUVALUE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 196
            end
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 137
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Trading Account'
              DataBinding.DataField = 'ISTRDACCOUNT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBCheckBox5: TcxDBCheckBox
              Left = 10
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Average Price'
              DataBinding.DataField = 'ISAVGPRICE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBCheckBox8: TcxDBCheckBox
              Left = 137
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Debet Interest'
              DataBinding.DataField = 'ISDEBETINTEREST'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBCheckBox9: TcxDBCheckBox
              Left = 137
              Top = 118
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Credit Interest'
              DataBinding.DataField = 'ISCREDITINTEREST'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBCheckBox10: TcxDBCheckBox
              Left = 10
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Penalty'
              DataBinding.DataField = 'ISPENALTY'
              DataBinding.DataSource = dsSubject
              ParentBackground = False
              ParentColor = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBCheckBox14: TcxDBCheckBox
              Left = 10
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'WHT'
              DataBinding.DataField = 'ISUSEWHT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBCheckBox15: TcxDBCheckBox
              Left = 10
              Top = 118
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'OTC'
              DataBinding.DataField = 'ISUSEOTC'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBCheckBox16: TcxDBCheckBox
              Left = 137
              Top = 145
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Use OMGEO'
              DataBinding.DataField = 'OMGUSE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 137
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Omnibus Trade'
              DataBinding.DataField = 'OMNIBUSTRADE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 10
              Top = 145
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Auto Close Order'
              DataBinding.DataField = 'A_CLS_ORDER'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem2: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group4
              Control = cxDBCheckBox2
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item7: TdxLayoutItem
              CaptionOptions.Text = 'cxDBTextEdit8'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group4
              Control = cxDBTextEdit8
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Group4: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutGroup4
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item3: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox4'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group3
              Control = cxDBCheckBox4
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup5: TdxLayoutGroup
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl5Group2
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item4: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox5'
              CaptionOptions.Visible = False
              Parent = dxLayoutGroup5
              Control = cxDBCheckBox5
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item8: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox8'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group3
              Control = cxDBCheckBox8
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl5Group2: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutGroup4
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item9: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox9'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group3
              Control = cxDBCheckBox9
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutControl5Group3: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl5Group2
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item10: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox10'
              CaptionOptions.Visible = False
              Parent = dxLayoutGroup5
              Control = cxDBCheckBox10
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item14: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox14'
              CaptionOptions.Visible = False
              Parent = dxLayoutGroup5
              Control = cxDBCheckBox14
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl5Item15: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox15'
              CaptionOptions.Visible = False
              Parent = dxLayoutGroup5
              Control = cxDBCheckBox15
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutControl5Item16: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox16'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group3
              Control = cxDBCheckBox16
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutControl5Item2: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group3
              Control = cxDBCheckBox1
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item6: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox3'
              CaptionOptions.Visible = False
              Parent = dxLayoutGroup5
              Control = cxDBCheckBox3
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Ledger Class'
          Parent = dxLayoutControl3Group4
          Control = cxDBLookupComboBox1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Trading Limit Class'
          Parent = dxLayoutControl3Group4
          Control = cxDBLookupComboBox2
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Interest Class'
          Parent = dxLayoutControl3Group4
          Control = cxDBLookupComboBox3
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Trade Confirmation Model'
          Parent = dxLayoutControl3Group4
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Avg. Price Decimal Point'
          Parent = dxLayoutControl3Group1
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group1
          Control = cxLabel1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group5
          Control = cxGroupBox2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group4
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
      end
    end
    object tabSettlement: TcxTabSheet
      Caption = 'Settlement Config'
      ImageIndex = 7
      ExplicitHeight = 252
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 252
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 182
          Top = 53
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_CASHPAY_SOURCE_LDGTYPE'
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
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 333
          Top = 53
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_CASHPAY_TARGET_LDGTYPE'
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
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 182
          Top = 80
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_CASHRCV_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 145
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 333
          Top = 80
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_CASHRCV_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 145
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 182
          Top = 107
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CASHPAY_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 145
        end
        object cxDBLookupComboBox9: TcxDBLookupComboBox
          Left = 333
          Top = 107
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CASHPAY_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 145
        end
        object cxDBLookupComboBox10: TcxDBLookupComboBox
          Left = 182
          Top = 134
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CASHRCV_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 145
        end
        object cxDBLookupComboBox11: TcxDBLookupComboBox
          Left = 333
          Top = 134
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CASHRCV_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 13
          Width = 145
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 484
          Top = 53
          DataBinding.DataField = 'IDX_CASHPAY_INSTR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 484
          Top = 80
          DataBinding.DataField = 'IDX_CASHRCV_INSTR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 484
          Top = 107
          RepositoryItem = dmGlobal.luCashInstr
          DataBinding.DataField = 'CASHPAY_INSTR'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 121
        end
        object cxDBImageComboBox4: TcxDBImageComboBox
          Left = 484
          Top = 134
          RepositoryItem = dmGlobal.luCashInstr
          DataBinding.DataField = 'CASHRCV_INSTR'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 14
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 333
          Top = 28
          AutoSize = False
          Caption = 'TARGET'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Height = 19
          Width = 145
        end
        object cxLabel3: TcxLabel
          Left = 484
          Top = 28
          AutoSize = False
          Caption = 'INSTRUCTION MODE'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Height = 19
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 182
          Top = 28
          AutoSize = False
          Caption = 'SOURCE'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Height = 19
          Width = 145
        end
        object cxDBLookupComboBox14: TcxDBLookupComboBox
          Left = 182
          Top = 216
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_STKDLV_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 145
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 333
          Top = 216
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_STKDLV_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 19
          Width = 145
        end
        object cxDBLookupComboBox18: TcxDBLookupComboBox
          Left = 182
          Top = 270
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CUST_STKDLV_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Width = 145
        end
        object cxDBLookupComboBox19: TcxDBLookupComboBox
          Left = 333
          Top = 270
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CUST_STKDLV_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 25
          Width = 145
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 484
          Top = 216
          DataBinding.DataField = 'IDX_STKDLV_INSTR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 121
        end
        object cxDBLookupComboBox16: TcxDBLookupComboBox
          Left = 182
          Top = 243
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_STKRCV_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 21
          Width = 145
        end
        object cxDBLookupComboBox17: TcxDBLookupComboBox
          Left = 333
          Top = 243
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'IDX_STKRCV_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 22
          Width = 145
        end
        object cxDBLookupComboBox20: TcxDBLookupComboBox
          Left = 182
          Top = 297
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CUST_STKRCV_SOURCE_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 27
          Width = 145
        end
        object cxDBLookupComboBox21: TcxDBLookupComboBox
          Left = 333
          Top = 297
          RepositoryItem = dmGlobal.luActLedgerType
          DataBinding.DataField = 'CUST_STKRCV_TARGET_LDGTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 145
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 484
          Top = 243
          DataBinding.DataField = 'IDX_STKRCV_INSTR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 121
        end
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 484
          Top = 270
          RepositoryItem = dmGlobal.luStockDelInstr
          DataBinding.DataField = 'CUST_STKDLV_INSTR'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 26
          Width = 121
        end
        object cxDBImageComboBox8: TcxDBImageComboBox
          Left = 484
          Top = 297
          RepositoryItem = dmGlobal.luStockRecInstr
          DataBinding.DataField = 'CUST_STKRCV_INSTR'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 29
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 484
          Top = 191
          AutoSize = False
          Caption = 'INSTRUCTION MODE'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Height = 19
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 333
          Top = 191
          AutoSize = False
          Caption = 'TARGET'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Height = 19
          Width = 145
        end
        object cxLabel7: TcxLabel
          Left = 182
          Top = 191
          AutoSize = False
          Caption = 'SOURCE'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.IsFontAssigned = True
          Height = 19
          Width = 145
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          CaptionOptions.Text = '                      IDX Cash Payment'
          Parent = dxLayoutControl4Group6
          Control = cxDBLookupComboBox4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group6
          Control = cxDBLookupComboBox5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'IDX Cash Receive'
          Parent = dxLayoutControl4Group7
          Control = cxDBLookupComboBox6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group7
          Control = cxDBLookupComboBox7
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Payment'
          Parent = dxLayoutControl4Group2
          Control = cxDBLookupComboBox8
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox9'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group2
          Control = cxDBLookupComboBox9
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Receive'
          Parent = dxLayoutControl4Group3
          Control = cxDBLookupComboBox10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox11'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group3
          Control = cxDBLookupComboBox11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup7: TdxLayoutGroup
          CaptionOptions.Text = 'CASH'
          Parent = dxLayoutGroup6
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          CaptionOptions.Text = 'cxDBTextEdit5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group6
          Control = cxDBTextEdit5
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item11: TdxLayoutItem
          CaptionOptions.Text = 'cxDBTextEdit6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group7
          Control = cxDBTextEdit6
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item12: TdxLayoutItem
          CaptionOptions.Text = 'cxDBImageComboBox2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group2
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item13: TdxLayoutItem
          CaptionOptions.Text = 'cxDBImageComboBox4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group3
          Control = cxDBImageComboBox4
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Item18: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxLabel2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group5
          Control = cxLabel2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item19: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxLabel3'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group5
          Control = cxLabel3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item20: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxLabel4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group5
          Control = cxLabel4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item21: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'IDX Stock Deliver'
          Parent = dxLayoutControl4Group15
          Control = cxDBLookupComboBox14
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item22: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox15'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group15
          Control = cxDBLookupComboBox15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item25: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Custodian Stock Deliver'
          Parent = dxLayoutControl4Group10
          Control = cxDBLookupComboBox18
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item26: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox19'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group10
          Control = cxDBLookupComboBox19
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group8: TdxLayoutGroup
          CaptionOptions.Text = 'STOCK'
          Parent = dxLayoutGroup6
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item23: TdxLayoutItem
          CaptionOptions.Text = 'cxDBTextEdit7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group15
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group9: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          Parent = dxLayoutControl4Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group10: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item24: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'IDX Stock Receive'
          Parent = dxLayoutControl4Group11
          Control = cxDBLookupComboBox16
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item27: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox17'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group11
          Control = cxDBLookupComboBox17
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item28: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Custodian Stock Receive'
          Parent = dxLayoutControl4Group12
          Control = cxDBLookupComboBox20
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item29: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox21'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group12
          Control = cxDBLookupComboBox21
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group12: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item30: TdxLayoutItem
          CaptionOptions.Text = 'cxDBTextEdit9'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group11
          Control = cxDBTextEdit9
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item31: TdxLayoutItem
          CaptionOptions.Text = 'cxDBImageComboBox7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group10
          Control = cxDBImageComboBox7
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item32: TdxLayoutItem
          CaptionOptions.Text = 'cxDBImageComboBox8'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group12
          Control = cxDBImageComboBox8
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item33: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxLabel5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group13
          Control = cxLabel5
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group15: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item34: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxLabel6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group13
          Control = cxLabel6
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group13: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item35: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxLabel7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group13
          Control = cxLabel7
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object tabCommission: TcxTabSheet
      Caption = 'Commission'
      ImageIndex = 0
      ExplicitHeight = 178
      object grdComm: TcxGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 178
        object gvwComm: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          OnFocusedItemChanged = gvwCommFocusedItemChanged
          DataController.DataSource = dsComm
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwCommCHANNELCODE: TcxGridDBColumn
            Caption = 'Channel'
            DataBinding.FieldName = 'CHANNELCODE'
            RepositoryItem = dmGlobal.luChannel
            Width = 45
          end
          object gvwCommMARKETCODE: TcxGridDBColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            RepositoryItem = dmGlobal.luMarket
            Width = 39
          end
          object gvwCommCOMM_ID: TcxGridDBColumn
            Caption = 'Comm Code'
            DataBinding.FieldName = 'COMM_ID'
            RepositoryItem = dmGlobal.luCommission
            Width = 73
          end
          object gvwCommDESCRIPTION: TcxGridDBColumn
            Caption = 'Comm Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 227
          end
          object gvwCommCALC_METHOD: TcxGridDBColumn
            Caption = 'Calc Method'
            DataBinding.FieldName = 'CALC_METHOD'
            RepositoryItem = dmGlobal.luCommCalcMethod
            Width = 65
          end
          object gvwCommUSE_DAYTRADE: TcxGridDBColumn
            Caption = 'Day Trade'
            DataBinding.FieldName = 'USE_DAYTRADE'
            RepositoryItem = dmGlobal.chkStandard
            Width = 56
          end
          object gvwCommUSE_MINCOMM: TcxGridDBColumn
            Caption = 'Min Comm'
            DataBinding.FieldName = 'USE_MINCOMM'
            RepositoryItem = dmGlobal.chkStandard
            Width = 54
          end
          object gvwCommWITH_SELLTAX: TcxGridDBColumn
            Caption = 'With Sell Tax'
            DataBinding.FieldName = 'WITH_SELLTAX'
            RepositoryItem = dmGlobal.chkStandard
            Width = 68
          end
        end
        object grdCommLevel1: TcxGridLevel
          GridView = gvwComm
        end
      end
    end
    object tabCharge: TcxTabSheet
      Caption = 'Charge'
      ImageIndex = 1
      ExplicitHeight = 178
      object grdCharge: TcxGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 178
        object gvwCharge: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          OnFocusedItemChanged = gvwChargeFocusedItemChanged
          DataController.DataSource = dsCharge
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwChargeMARKETCODE: TcxGridDBColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            RepositoryItem = dmGlobal.luMarket
          end
          object gvwChargeCHARGE_ID: TcxGridDBColumn
            Caption = 'Charge Code'
            DataBinding.FieldName = 'CHARGE_ID'
            RepositoryItem = dmGlobal.luCharge
            Width = 87
          end
          object gvwChargeDESCRIPTION: TcxGridDBColumn
            Caption = 'Charge Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 342
          end
          object gvwChargeISUSED: TcxGridDBColumn
            Caption = 'Use'
            DataBinding.FieldName = 'ISUSED'
            RepositoryItem = dmGlobal.chkStandard
            Width = 24
          end
        end
        object grdChargeLevel1: TcxGridLevel
          GridView = gvwCharge
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmBusTypes.cdsBusType
    Left = 248
    Top = 464
  end
  object dsCharge: TDataSource
    DataSet = frmBusTypes.cdsBusTypeCharge
    Left = 304
    Top = 464
  end
  object dsComm: TDataSource
    DataSet = frmBusTypes.cdsBusTypeComm
    Left = 360
    Top = 464
  end
end
