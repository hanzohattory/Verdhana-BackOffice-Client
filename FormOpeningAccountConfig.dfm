inherited frmOpeningAccountConfig: TfrmOpeningAccountConfig
  Caption = 'Opening Account Configuration'
  ClientHeight = 654
  ClientWidth = 994
  ExplicitWidth = 1006
  ExplicitHeight = 692
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 129
    Align = alTop
    ExplicitWidth = 988
    ExplicitHeight = 129
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 102
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 0
      Width = 354
    end
    object cxDBTextEdit3: TcxDBTextEdit [1]
      Left = 525
      Top = 10
      DataBinding.DataField = 'ACCINIT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 102
      Top = 37
      RepositoryItem = dmGlobal.luBranch
      DataBinding.DataField = 'BRANCHID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [3]
      Left = 283
      Top = 37
      RepositoryItem = dmGlobal.luSales
      DataBinding.DataField = 'SALESID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 138
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [4]
      Left = 469
      Top = 37
      RepositoryItem = dmGlobal.luProduct
      DataBinding.DataField = 'PRDCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 134
    end
    object cxDBImageComboBox5: TcxDBImageComboBox [5]
      Left = 702
      Top = 10
      DataBinding.DataField = 'ACCSUBTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object cxDBLookupComboBox22: TcxDBLookupComboBox [6]
      Left = 102
      Top = 64
      RepositoryItem = dmGlobal.luBusinessType
      DataBinding.DataField = 'BUSSTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 320
    end
    object cbBusType: TcxDBLookupComboBox [7]
      Left = 102
      Top = 95
      RepositoryItem = dmGlobal.luBussCat
      DataBinding.DataField = 'BUS_CAT'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 243
    end
    object btnGetSetting: TcxButton [8]
      Left = 428
      Top = 64
      Width = 260
      Height = 25
      Caption = 'Generate All Setting Based On Parameter Setting'
      TabOrder = 7
      OnClick = btnGetSettingClick
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 354
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Account Init'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Branch'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Sales'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Product'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      Visible = False
      CaptionOptions.Text = 'Sub Type'
      Control = cxDBImageComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Business Type'
      Control = cxDBLookupComboBox22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 320
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      Visible = False
      CaptionOptions.Text = 'Parameter Setting'
      Control = cbBusType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 243
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      Visible = False
      CaptionOptions.Visible = False
      Control = btnGetSetting
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 585
    Width = 994
    ExplicitTop = 576
    ExplicitWidth = 988
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 634
    Width = 994
    ExplicitTop = 625
    ExplicitWidth = 988
  end
  inherited tabEditorData: TTabSet
    Top = 564
    Width = 994
    ExplicitTop = 555
    ExplicitWidth = 988
  end
  object pageAccount: TcxPageControl [4]
    Left = 0
    Top = 129
    Width = 994
    Height = 435
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 988
    ExplicitHeight = 426
    ClientRectBottom = 431
    ClientRectLeft = 4
    ClientRectRight = 990
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'General Info'
      ImageIndex = 0
      ExplicitWidth = 980
      ExplicitHeight = 398
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 407
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 980
        ExplicitHeight = 398
        object cxGroupBox2: TcxGroupBox
          Left = 10
          Top = 64
          Caption = 'Indicators'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 2
          Height = 284
          Width = 311
          object dxLayoutControl5: TdxLayoutControl
            Left = 2
            Top = 18
            Width = 307
            Height = 264
            Align = alClient
            TabOrder = 0
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 110
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Trading Account'
              DataBinding.DataField = 'ISTRDACCOUNT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 7
            end
            object cxDBCheckBox16: TcxDBCheckBox
              Left = 110
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Use OMGEO'
              DataBinding.DataField = 'OMGUSE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 8
            end
            object cxDBCheckBox11: TcxDBCheckBox
              Left = 10
              Top = 10
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Auto Avg. Price'
              DataBinding.DataField = 'DT_AUTOAVGPRICE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 113
              Top = 10
              DataBinding.DataField = 'AVGPRICEDEC'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 55
            end
            object cxLabel1: TcxLabel
              Left = 174
              Top = 10
              Caption = 'Digits'
              Style.HotTrack = False
            end
            object cxDBCheckBox18: TcxDBCheckBox
              Left = 110
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Stock Keep'
              DataBinding.DataField = 'STOCKKEEP'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 9
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 10
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Auto Allocation'
              DataBinding.DataField = 'AUTO_ALLOC'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 3
            end
            object chkWAPU: TcxDBCheckBox
              Left = 10
              Top = 118
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'WAPU'
              DataBinding.DataField = 'ISWAPU'
              DataBinding.DataSource = dsSubject
              Properties.OnChange = cxDBCheckBox2PropertiesChange
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
            end
            object cxDBCheckBox17: TcxDBCheckBox
              Left = 10
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Cash Keep'
              DataBinding.DataField = 'CASHKEEP'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 10
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Use S-Invest'
              DataBinding.DataField = 'SINVUSE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
            end
            object edWapuVal: TcxDBCurrencyEdit
              Left = 110
              Top = 118
              DataBinding.DataField = 'WAPU_VALUE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object edWapuType: TcxDBImageComboBox
              Left = 110
              Top = 145
              DataBinding.DataField = 'WAPU_TYPE'
              DataBinding.DataSource = dsSubject
              Properties.Items = <
                item
                  Description = 'VAT'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'VAT + Broker Fee'
                  Value = '2'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 11
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
            object dxLayoutControl5Item3: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox4'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutControl5Group2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group2: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Group3: TdxLayoutGroup
              Parent = dxLayoutControl5Group2
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item16: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox16'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item11: TdxLayoutItem
              Parent = dxLayoutControl5Group5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox11'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 97
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group5: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object lcAvgDec: TdxLayoutGroup
              Parent = dxLayoutControl5Group5
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl3Item1: TdxLayoutItem
              Parent = lcAvgDec
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Avg. Price Decimal Point'
              CaptionOptions.Visible = False
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 55
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl3Item2: TdxLayoutItem
              Parent = lcAvgDec
              CaptionOptions.Text = 'cxLabel1'
              CaptionOptions.Visible = False
              Control = cxLabel1
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 30
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item17: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox18'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl5Item5: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox7'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 94
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = chkWAPU
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 52
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutControl5Item13: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox17'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 73
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 84
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem32: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'Wapu Value'
              CaptionOptions.Layout = clRight
              Control = edWapuVal
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem34: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'Wapu Type'
              CaptionOptions.Layout = clRight
              Control = edWapuType
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
        object cbTCModel: TcxDBImageComboBox
          Left = 138
          Top = 37
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
          Visible = False
          Width = 183
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 138
          Top = 10
          RepositoryItem = dmGlobal.luReportTC
          AutoSize = False
          DataBinding.DataField = 'REPORTID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Height = 21
          Width = 183
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutGroup6
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'cxGroupBox2'
          CaptionOptions.Visible = False
          Control = cxGroupBox2
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 284
          ControlOptions.OriginalWidth = 311
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutGroup6
          AlignHorz = ahLeft
          AlignVert = avTop
          Visible = False
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Trade Confirmation Model'
          Control = cbTCModel
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 183
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem37: TdxLayoutItem
          Parent = dxLayoutGroup6
          CaptionOptions.Text = 'Report TC Default'
          Control = cxDBLookupComboBox6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object tabSettle: TcxTabSheet
      Caption = 'Settlement'
      ImageIndex = 7
      TabVisible = False
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 407
        Align = alClient
        TabOrder = 0
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 307
          Top = 10
          DataBinding.DataField = 'SETTLE_MODE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'VP'
              ImageIndex = 0
              Value = 'VP'
            end
            item
              Description = 'FOP'
              Value = 'FOP'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cbSettleType: TcxDBImageComboBox
          Left = 94
          Top = 10
          DataBinding.DataField = 'SETTLE_TYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'RDN'
              ImageIndex = 0
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object dxLayoutGroup7: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lcSettleMode: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'Settlement Mode'
          Control = cxDBImageComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup8: TdxLayoutGroup
          Parent = dxLayoutGroup7
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item5: TdxLayoutItem
          Parent = dxLayoutGroup8
          CaptionOptions.Text = 'Settlement Type'
          Control = cbSettleType
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object tabInterest: TcxTabSheet
      Caption = 'Interest'
      ImageIndex = 8
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 407
        Align = alClient
        TabOrder = 0
        object gvwInterest: TcxGridDBBandedTableView
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
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsInterest
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
          Bands = <
            item
              Caption = 'Interest Configuration'
              Width = 730
            end>
          object gvwInterestACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwInterestCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            RepositoryItem = dmGlobal.luCurrency
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwInterestINTERESTCODE: TcxGridDBBandedColumn
            Caption = 'Interest'
            DataBinding.FieldName = 'INTERESTCODE'
            RepositoryItem = dmGlobal.luInterest
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwInterestMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwInterestMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwInterestAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwInterestAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwInterestUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwInterestUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwInterestNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwInterestISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwInterestID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = gvwInterest
        end
      end
    end
    object tabCommission: TcxTabSheet
      Caption = 'Commission | Charges'
      ImageIndex = 1
      object grdComm: TcxGrid
        Left = 0
        Top = 0
        Width = 493
        Height = 407
        Align = alLeft
        TabOrder = 0
        object gvwComm: TcxGridDBTableView
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
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
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
          object gvwCommCCYCODE: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Visible = False
            Width = 50
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
          object gvwCommUSE_MINCOMM: TcxGridDBColumn
            Caption = 'Min Comm'
            DataBinding.FieldName = 'USE_MINCOMM'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 54
          end
          object gvwCommWITH_SELLTAX: TcxGridDBColumn
            Caption = 'With Sell Tax'
            DataBinding.FieldName = 'WITH_SELLTAX'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 68
          end
        end
        object grdCommLevel1: TcxGridLevel
          GridView = gvwComm
        end
      end
      object Panel1: TPanel
        Left = 493
        Top = 0
        Width = 493
        Height = 407
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object grdCharge: TcxGrid
          Left = 0
          Top = 185
          Width = 493
          Height = 222
          Align = alClient
          TabOrder = 0
          object gvwCharge: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Enabled = False
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Enabled = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Enabled = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Enabled = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsCharge
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Appending = True
            OptionsData.Inserting = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
                Caption = 'Exception Charge(s)'
              end>
            object gvwChargeOAID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'OAID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwChargeMARKETCODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MARKETCODE'
              RepositoryItem = dmGlobal.luMarket
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwChargeCHARGE_ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_ID'
              RepositoryItem = dmGlobal.luCharge
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwChargeISUSED: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISUSED'
              RepositoryItem = dmGlobal.chkStandard
              Width = 42
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object gvwChargeMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwChargeMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwChargeAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwChargeAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwChargeUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwChargeUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwChargeNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwChargeISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwChargeID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwChargeDESCRIPTION: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwChargeCHARGE_DESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_DESC'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
          end
          object grdChargeLevel1: TcxGridLevel
            GridView = gvwCharge
          end
        end
        object grdChargeByBussType: TcxGrid
          Left = 0
          Top = 0
          Width = 493
          Height = 185
          Align = alTop
          TabOrder = 1
          TabStop = False
          object gvwChargeByBussType: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsChargeByBusType
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
                Caption = 'Charges by Business Type'
              end>
            object gvwChargeByBussTypeMARKETCODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MARKETCODE'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwChargeByBussTypeCHARGE_CODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_CODE'
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwChargeByBussTypeCHARGE_DESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_DESC'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grdChargeByBussTypeLevel1: TcxGridLevel
            GridView = gvwChargeByBussType
          end
        end
      end
    end
    object tabCharges: TcxTabSheet
      Caption = 'Charges'
      ImageIndex = 2
      TabVisible = False
    end
    object tabCreditLimit: TcxTabSheet
      Caption = 'Credit Limit'
      ImageIndex = 4
      object PC: TcxPageControl
        Left = 0
        Top = 49
        Width = 986
        Height = 358
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = ctApprLimit
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        ClientRectBottom = 354
        ClientRectLeft = 4
        ClientRectRight = 982
        ClientRectTop = 4
        object ctDefault: TcxTabSheet
          Caption = 'ctDefault'
          ImageIndex = 0
          object dxLayoutControl7: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 350
            Align = alClient
            TabOrder = 0
            object dxLayoutGroup9: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
          end
        end
        object ctCash: TcxTabSheet
          Caption = 'ctCash'
          ImageIndex = 1
          object dxLayoutControl4: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 350
            Align = alClient
            TabOrder = 0
            object cxDBRadioGroup3: TcxDBRadioGroup
              Left = 22
              Top = 55
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 1
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup4: TcxDBRadioGroup
              Left = 22
              Top = 168
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 3
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup2: TcxDBRadioGroup
              Left = 22
              Top = 112
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 2
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup6: TcxDBRadioGroup
              Left = 399
              Top = 55
              Caption = 'Short Sell Order'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 4
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup8: TcxDBRadioGroup
              Left = 399
              Top = 112
              Caption = 'Sell Orde When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 5
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup9: TcxDBRadioGroup
              Left = 399
              Top = 169
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 6
              Height = 51
              Width = 332
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 91
              Top = 10
              DataBinding.DataField = 'CR_VAL'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 150
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object x: TdxLayoutGroup
              Parent = dxLayoutGroup10
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object LayoutControlItem23: TdxLayoutItem
              Parent = x
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup3
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LayoutControlItem24: TdxLayoutItem
              Parent = x
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup4
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object LayoutControlItem7: TdxLayoutItem
              Parent = x
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup2
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup10: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object LayoutControlGroup7: TdxLayoutGroup
              Parent = dxLayoutGroup10
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object LayoutControlItem27: TdxLayoutItem
              Parent = LayoutControlGroup7
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup6
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LayoutControlItem12: TdxLayoutItem
              Parent = LayoutControlGroup7
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup8
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object LayoutControlItem18: TdxLayoutItem
              Parent = LayoutControlGroup7
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup9
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Max Credit Limit'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 150
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object ctReg: TcxTabSheet
          Caption = 'ctReg'
          ImageIndex = 2
          object dxLayoutControl8: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 350
            Align = alClient
            TabOrder = 0
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 361
              Top = 10
              DataBinding.DataField = 'TL_CASHVALUATE'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 53
            end
            object cxDBRadioGroup1: TcxDBRadioGroup
              Left = 22
              Top = 55
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 3
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup5: TcxDBRadioGroup
              Left = 22
              Top = 112
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 4
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup7: TcxDBRadioGroup
              Left = 22
              Top = 168
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 5
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup11: TcxDBRadioGroup
              Left = 399
              Top = 55
              Caption = 'Short Sell Order'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 6
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup13: TcxDBRadioGroup
              Left = 399
              Top = 112
              Caption = 'Sell Orde When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 7
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup14: TcxDBRadioGroup
              Left = 399
              Top = 169
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 8
              Height = 51
              Width = 332
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 520
              Top = 10
              DataBinding.DataField = 'TL_STOCKVALUATE'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 2
              Width = 67
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 91
              Top = 10
              DataBinding.DataField = 'CR_VAL'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 166
            end
            object dxLayoutGroup11: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup12: TdxLayoutGroup
              Parent = dxLayoutControl4Group3
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object LayoutControlItem13: TdxLayoutItem
              Parent = dxLayoutControl4Group2
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Cash Valuation (%)'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup12
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup1
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup12
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup5
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup12
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup7
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup14: TdxLayoutGroup
              Parent = dxLayoutControl4Group3
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup11
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup13
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup14
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutControl4Group2
              CaptionOptions.Text = 'Stock Valuation (%)'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 67
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl4Group2: TdxLayoutGroup
              Parent = dxLayoutGroup11
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl4Group3: TdxLayoutGroup
              Parent = dxLayoutGroup11
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl4Item2: TdxLayoutItem
              Parent = dxLayoutControl4Group2
              CaptionOptions.Text = 'Max Credit Limit'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 166
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object ctRatio: TcxTabSheet
          Caption = 'ctRatio'
          ImageIndex = 3
          object dxLayoutControl9: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 350
            Align = alClient
            TabOrder = 0
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 122
              Top = 55
              DataBinding.DataField = 'TL_CASHVALUATE'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 67
            end
            object cxDBRadioGroup10: TcxDBRadioGroup
              Left = 22
              Top = 139
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 7
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup12: TcxDBRadioGroup
              Left = 22
              Top = 252
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 9
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup15: TcxDBRadioGroup
              Left = 22
              Top = 196
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 8
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup16: TcxDBRadioGroup
              Left = 399
              Top = 139
              Caption = 'Short Sell Order'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 10
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup17: TcxDBRadioGroup
              Left = 399
              Top = 196
              Caption = 'Sell Order When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 11
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup18: TcxDBRadioGroup
              Left = 399
              Top = 253
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 12
              Height = 51
              Width = 332
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 122
              Top = 82
              DataBinding.DataField = 'TL_STOCKVALUATE'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 2
              Width = 67
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 349
              Top = 82
              DataBinding.DataField = 'RATIO_MRGWARING'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
              Width = 59
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 349
              Top = 55
              DataBinding.DataField = 'RATIO_MRGCALL'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 3
              Width = 59
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 567
              Top = 82
              DataBinding.DataField = 'FORCESELL_DAY'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
              Width = 59
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 567
              Top = 55
              DataBinding.DataField = 'RATIO_FORCESELL'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
              Width = 59
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 91
              Top = 10
              DataBinding.DataField = 'CR_VAL'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 158
            end
            object dxLayoutGroup15: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup16: TdxLayoutGroup
              Parent = dxLayoutControl5Group4
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutControl5Group8
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Cash Valuation (%)'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 67
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutGroup16
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup10
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutGroup16
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup12
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup16
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup15
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup17: TdxLayoutGroup
              Parent = dxLayoutControl5Group4
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup17
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup16
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutGroup17
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup17
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup17
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup18
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutControl5Group8
              CaptionOptions.Text = 'Stock Valuation (%)'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 67
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup18: TdxLayoutGroup
              Parent = dxLayoutGroup15
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutControl5Group7
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Margin Warning Ratio (%)'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutControl5Group7
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Margin Call Ratio (%)'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutControl5Group9
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Force Sell Day'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Group4: TdxLayoutGroup
              Parent = dxLayoutGroup18
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutControl5Group9
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Force Sell Ratio Protection (%)'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup19: TdxLayoutGroup
              Parent = dxLayoutGroup21
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutControl5Group6: TdxLayoutGroup
              Parent = dxLayoutGroup19
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup21: TdxLayoutGroup
              Parent = dxLayoutGroup18
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group8: TdxLayoutGroup
              Parent = dxLayoutGroup21
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutControl5Group9: TdxLayoutGroup
              Parent = dxLayoutControl5Group6
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Group7: TdxLayoutGroup
              Parent = dxLayoutControl5Group6
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutGroup15
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Max Credit Limit'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 158
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object ctApprLimit: TcxTabSheet
          Caption = 'ctApprLimit'
          ImageIndex = 4
          object dxLayoutControl10: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 350
            Align = alClient
            TabOrder = 0
            object cxDBRadioGroup19: TcxDBRadioGroup
              Left = 22
              Top = 55
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 2
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup20: TcxDBRadioGroup
              Left = 22
              Top = 168
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 4
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup21: TcxDBRadioGroup
              Left = 22
              Top = 112
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 3
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup22: TcxDBRadioGroup
              Left = 399
              Top = 55
              Caption = 'Sell Order when Over Selling Limit'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 5
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup23: TcxDBRadioGroup
              Left = 399
              Top = 112
              Caption = 'Sell Orde When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 6
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup24: TcxDBRadioGroup
              Left = 399
              Top = 169
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 7
              Height = 51
              Width = 332
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 89
              Top = 10
              DataBinding.DataField = 'BUY_LIMIT'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 150
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit
              Left = 322
              Top = 10
              DataBinding.DataField = 'SELL_LIMIT'
              DataBinding.DataSource = dsCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 135
            end
            object dxLayoutGroup22: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup23: TdxLayoutGroup
              Parent = dxLayoutGroup24
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutGroup23
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup19
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutGroup23
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup20
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutGroup23
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup21
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup24: TdxLayoutGroup
              Parent = dxLayoutGroup22
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup25: TdxLayoutGroup
              Parent = dxLayoutGroup24
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutGroup25
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup22
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutGroup25
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup23
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutGroup25
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup24
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup26: TdxLayoutGroup
              Parent = dxLayoutGroup22
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutItem33: TdxLayoutItem
              Parent = dxLayoutGroup26
              CaptionOptions.Text = 'Buy Credit Limit'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 150
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutGroup26
              CaptionOptions.Text = 'Sell Credit Limit'
              Control = cxDBCurrencyEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 135
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
      object dxLayoutControl11: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 49
        Align = alTop
        TabOrder = 1
        object CreditLimitClass: TcxDBLookupComboBox
          Left = 96
          Top = 10
          RepositoryItem = dmGlobal.luCRDCONCLASS
          DataBinding.DataField = 'CCCLS_ID'
          DataBinding.DataSource = dsCreditLimit
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 201
        end
        object btnSetCreditLimit: TButton
          Left = 303
          Top = 10
          Width = 224
          Height = 25
          Caption = 'Set Credit Limit Based On It'#39's Class'
          TabOrder = 1
          OnClick = btnSetCreditLimitClick
        end
        object dxLayoutGroup27: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem35: TdxLayoutItem
          Parent = dxLayoutGroup27
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Credit Limit Class'
          Control = CreditLimitClass
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 201
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem36: TdxLayoutItem
          Parent = dxLayoutGroup27
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Button1'
          CaptionOptions.Visible = False
          Control = btnSetCreditLimit
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 224
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object tabExtRef: TcxTabSheet
      Caption = 'External System Reference'
      ImageIndex = 5
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 407
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
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
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsExtRef
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
          object cxGridDBTableView2EXTSYS_ID: TcxGridDBColumn
            Caption = 'External System Code'
            DataBinding.FieldName = 'EXTSYS_ID'
            RepositoryItem = dmGlobal.luExternalSystem
            Width = 126
          end
          object cxGridDBTableView2EXTREF_CODE: TcxGridDBColumn
            Caption = 'External Reference Code'
            DataBinding.FieldName = 'EXTREF_CODE'
            Width = 371
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsOAAccount
    Left = 440
    Top = 48
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 760
    Top = 288
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsOAAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryOAAccount'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsOAAccountAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 48
    object cdsOAAccountOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAccountACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsOAAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsOAAccountACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsOAAccountACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsOAAccountBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsOAAccountINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsOAAccountBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsOAAccountTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsOAAccountPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsOAAccountA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsOAAccountAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsOAAccountOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsOAAccountCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsOAAccountSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsOAAccountISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsOAAccountISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsOAAccountISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsOAAccountISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsOAAccountISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsOAAccountAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsOAAccountSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsOAAccountACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsOAAccountOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsOAAccountOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsOAAccountOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsOAAccountOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsOAAccountOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsOAAccountSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsOAAccountALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsOAAccountTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsOAAccountLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsOAAccountTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsOAAccountTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsOAAccountCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsOAAccountCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsOAAccountCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsOAAccountBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsOAAccountSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsOAAccountIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsOAAccountTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsOAAccountDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsOAAccountKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsOAAccountRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsOAAccountRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsOAAccountRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsOAAccountFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsOAAccountTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsOAAccountTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsOAAccountACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsOAAccountCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsOAAccountBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsOAAccountINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsOAAccountINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsOAAccountALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsOAAccountTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsOAAccountAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsOAAccountDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsOAAccountSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsOAAccountNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsOAAccountSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsOAAccountDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsOAAccountDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsOAAccountRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsOAAccountEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsOAAccountMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAccountMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAccountAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAccountAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAccountUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAccountUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAccountNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAccountISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAccountID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOAAccountqryOAAccountInterest: TDataSetField
      FieldName = 'qryOAAccountInterest'
    end
    object cdsOAAccountqryOAAccountExtReff: TDataSetField
      FieldName = 'qryOAAccountExtReff'
    end
    object cdsOAAccountqryOAAccountCharge: TDataSetField
      FieldName = 'qryOAAccountCharge'
    end
    object cdsOAAccountqryOAAccountComm: TDataSetField
      FieldName = 'qryOAAccountComm'
    end
    object cdsOAAccountqryOAAccountCreditLimit: TDataSetField
      FieldName = 'qryOAAccountCreditLimit'
    end
    object cdsOAAccountREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsOAAccountREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
    object cdsOAAccountSINVUSE: TStringField
      FieldName = 'SINVUSE'
      Size = 1
    end
    object cdsOAAccountWAPU_VALUE: TFloatField
      FieldName = 'WAPU_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountWAPU_TYPE: TIntegerField
      FieldName = 'WAPU_TYPE'
    end
    object cdsOAAccountREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
  end
  object dsComm: TDataSource
    DataSet = cdsOAAccountComm
    Left = 440
    Top = 96
  end
  object dsCharge: TDataSource
    DataSet = cdsOAAccountCharge
    Left = 440
    Top = 144
  end
  object dsExtRef: TDataSource
    DataSet = cdsOAAccountExtReff
    Left = 440
    Top = 248
  end
  object dsInterest: TDataSource
    DataSet = cdsOAAccountInterest
    Left = 440
    Top = 192
  end
  object cdsOAAccountComm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAAccountqryOAAccountComm
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOAAccountCommIndex1'
        Fields = 'OAID;MARKETCODE;CHANNELCODE'
        Options = [ixUnique]
      end>
    IndexName = 'cdsOAAccountCommIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 96
    object cdsOAAccountCommOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAccountCommMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsOAAccountCommCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsOAAccountCommCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsOAAccountCommCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Required = True
      Size = 2
    end
    object cdsOAAccountCommUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsOAAccountCommUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsOAAccountCommWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsOAAccountCommMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAccountCommMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAccountCommAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAccountCommAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAccountCommUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAccountCommUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAccountCommNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAccountCommISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAccountCommID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOAAccountCommDESCRIPTION: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCommission
      LookupKeyFields = 'COMM_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'COMM_ID'
      Size = 50
      Lookup = True
    end
  end
  object cdsOAAccountCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAAccountqryOAAccountCharge
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOAAccountChargeIndex1'
        Fields = 'OAID;MARKETCODE;CHARGE_ID'
        Options = [ixUnique]
      end>
    IndexName = 'cdsOAAccountChargeIndex1'
    Params = <>
    StoreDefs = True
    OnNewRecord = cdsOAAccountChargeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 144
    object cdsOAAccountChargeOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAccountChargeMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsOAAccountChargeCHARGE_ID: TLargeintField
      DisplayLabel = 'Charge Code'
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsOAAccountChargeISUSED: TStringField
      DisplayLabel = 'Is Used'
      FieldName = 'ISUSED'
      Required = True
      Size = 1
    end
    object cdsOAAccountChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAccountChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAccountChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAccountChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAccountChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAccountChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAccountChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAccountChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAccountChargeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOAAccountChargeDESCRIPTION: TStringField
      DisplayLabel = 'Description Value'
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
    object cdsOAAccountChargeCHARGE_DESC: TStringField
      DisplayLabel = 'Charge Description'
      FieldKind = fkLookup
      FieldName = 'CHARGE_DESC'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'CHARGE_DESC'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
  end
  object cdsOAAccountInterest: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAAccountqryOAAccountInterest
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOAAccountInterestIndex1'
        Fields = 'OAID;CCY'
        Options = [ixUnique]
      end>
    IndexName = 'cdsOAAccountInterestIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 192
    object cdsOAAccountInterestOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAccountInterestCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsOAAccountInterestINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsOAAccountInterestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAccountInterestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAccountInterestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAccountInterestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAccountInterestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAccountInterestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAccountInterestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAccountInterestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAccountInterestID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsOAAccountExtReff: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAAccountqryOAAccountExtReff
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOAAccountExtReffIndex1'
        Fields = 'OAID;EXTSYS_ID'
        Options = [ixUnique]
      end>
    IndexName = 'cdsOAAccountExtReffIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 240
    object cdsOAAccountExtReffOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAccountExtReffEXTSYS_ID: TIntegerField
      FieldName = 'EXTSYS_ID'
      Required = True
    end
    object cdsOAAccountExtReffEXTREF_CODE: TStringField
      FieldName = 'EXTREF_CODE'
      Required = True
      Size = 30
    end
    object cdsOAAccountExtReffMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAccountExtReffMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAccountExtReffAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAccountExtReffAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAccountExtReffUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAccountExtReffUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAccountExtReffNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAccountExtReffISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAccountExtReffID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BUSTYPEID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBusType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 704
    Top = 16
    object cdsBusTypeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeBUSTYPECODE: TStringField
      FieldName = 'BUSTYPECODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeBUSTYPEDESC: TStringField
      FieldName = 'BUSTYPEDESC'
      Size = 50
    end
    object cdsBusTypeTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsBusTypeA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsBusTypeAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsBusTypeOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsBusTypeCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsBusTypeSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsBusTypeISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsBusTypeISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsBusTypeISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsBusTypeISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsBusTypeISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsBusTypeAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsBusTypeOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsBusTypeOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsBusTypeOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsBusTypeOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsBusTypeOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsBusTypeSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsBusTypeALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsBusTypeTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsBusTypeCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsBusTypeCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsBusTypeCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsBusTypeBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsBusTypeSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsBusTypeIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsBusTypeTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsBusTypeDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsBusTypeRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsBusTypeRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsBusTypeRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsBusTypeFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsBusTypeTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsBusTypeTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsBusTypeACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsBusTypeCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsBusTypeBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsBusTypeALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsBusTypeTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsBusTypeAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsBusTypeDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsBusTypeSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsBusTypeNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsBusTypeSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsBusTypeDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsBusTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBusTypeqryBusTypeInterest: TDataSetField
      FieldName = 'qryBusTypeInterest'
    end
    object cdsBusTypeqryBusTypeComm: TDataSetField
      FieldName = 'qryBusTypeComm'
    end
    object cdsBusTypeqryBusTypeCharge: TDataSetField
      FieldName = 'qryBusTypeCharge'
    end
  end
  object cdsBusTypeCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeCharge
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 704
    Top = 64
    object cdsBusTypeChargeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeChargeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsBusTypeChargeISUSED: TStringField
      FieldName = 'ISUSED'
      Required = True
      Size = 1
    end
    object cdsBusTypeChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeChargeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusTypeComm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeComm
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 704
    Top = 112
    object cdsBusTypeCommBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeCommMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeCommCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeCommCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsBusTypeCommNET_COMMID: TLargeintField
      FieldName = 'NET_COMMID'
    end
    object cdsBusTypeCommCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsBusTypeCommUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsBusTypeCommUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsBusTypeCommWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsBusTypeCommMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeCommMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeCommAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeCommAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeCommUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeCommUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeCommNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeCommISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeCommID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusTypeInterest: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeInterest
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 760
    Top = 240
    object cdsBusTypeInterestBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeInterestCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBusTypeInterestINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeInterestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeInterestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeInterestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeInterestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeInterestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeInterestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeInterestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeInterestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeInterestID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsCreditLimit: TDataSource
    DataSet = cdsOAAccountCreditLimit
    Left = 440
    Top = 296
  end
  object cdsOAAccountCreditLimit: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAAccountqryOAAccountCreditLimit
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 288
    object cdsOAAccountCreditLimitOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAccountCreditLimitCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsOAAccountCreditLimitCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsOAAccountCreditLimitCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsOAAccountCreditLimitTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsOAAccountCreditLimitTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsOAAccountCreditLimitTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsOAAccountCreditLimitTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsOAAccountCreditLimitTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsOAAccountCreditLimitTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsOAAccountCreditLimitTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsOAAccountCreditLimitRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitCR_VAL: TFloatField
      FieldName = 'CR_VAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOAAccountCreditLimitMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAccountCreditLimitMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAccountCreditLimitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAccountCreditLimitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAccountCreditLimitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAccountCreditLimitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAccountCreditLimitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAccountCreditLimitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAccountCreditLimitID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCrdConClassByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CCCLS_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCrdConClassByParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 638
    Top = 419
    object cdsCrdConClassByParamCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsCrdConClassByParamCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsCrdConClassByParamCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsCrdConClassByParamTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsCrdConClassByParamTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsCrdConClassByParamRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsCrdConClassByParamRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsCrdConClassByParamFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsCrdConClassByParamCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsCrdConClassByParamBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsCrdConClassByParamSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
  end
  object cdsChargeByBusType: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BUSTYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBusTypeByCharge'
    RemoteServer = dmGlobal.dspConnection
    Left = 553
    Top = 353
    object cdsChargeByBusTypeMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsChargeByBusTypeCHARGE_CODE: TStringField
      DisplayLabel = 'Charge Code'
      FieldName = 'CHARGE_CODE'
      ReadOnly = True
    end
    object cdsChargeByBusTypeCHARGE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CHARGE_DESC'
      ReadOnly = True
      Size = 50
    end
  end
  object dsChargeByBusType: TDataSource
    DataSet = cdsChargeByBusType
    Left = 441
    Top = 353
  end
  object cdsAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 652
    Top = 201
  end
end
