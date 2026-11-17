inherited frmAccParamCLass: TfrmAccParamCLass
  Caption = 'Account Param Class'
  ClientHeight = 526
  ClientWidth = 664
  ExplicitWidth = 676
  ExplicitHeight = 564
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 664
    Height = 68
    Align = alTop
    ExplicitWidth = 658
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
      TabOrder = 3
      Width = 581
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [2]
      Left = 239
      Top = 10
      RepositoryItem = dmGlobal.luGLType
      AutoSize = False
      DataBinding.DataField = 'GLTYPE_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 145
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 456
      Top = 10
      RepositoryItem = dmGlobal.luCPCenter
      DataBinding.DataField = 'CPID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 193
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 581
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'GL Type'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Cost && Profit'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 193
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 457
    Width = 664
    ExplicitTop = 448
    ExplicitWidth = 658
    inherited dbNavLog: TDBNavigator
      Left = 550
      Hints.Strings = ()
      ExplicitLeft = 550
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 506
    Width = 664
    ExplicitTop = 497
    ExplicitWidth = 658
  end
  inherited tabEditorData: TTabSet
    Top = 436
    Width = 664
    ExplicitTop = 427
    ExplicitWidth = 658
  end
  object pageAccount: TcxPageControl [4]
    Left = 0
    Top = 68
    Width = 664
    Height = 368
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 658
    ExplicitHeight = 359
    ClientRectBottom = 364
    ClientRectLeft = 4
    ClientRectRight = 660
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'General Info'
      ImageIndex = 0
      ExplicitWidth = 650
      ExplicitHeight = 331
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 650
        ExplicitHeight = 331
        object cxGroupBox2: TcxGroupBox
          Left = 10
          Top = 64
          Caption = 'Indicators'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 2
          Height = 243
          Width = 319
          object dxLayoutControl5: TdxLayoutControl
            Left = 2
            Top = 18
            Width = 315
            Height = 223
            Align = alClient
            TabOrder = 0
            object cxDBCheckBox16: TcxDBCheckBox
              Left = 137
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
            object cxDBCheckBox1: TcxDBCheckBox
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
            object cxDBCheckBox17: TcxDBCheckBox
              Left = 10
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Cash Keep'
              DataBinding.DataField = 'CASHKEEP'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
            end
            object cxDBCheckBox18: TcxDBCheckBox
              Left = 137
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
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 10
              Top = 118
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'WAPU'
              DataBinding.DataField = 'ISWAPU'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 10
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Use S-Invest'
              DataBinding.DataField = 'USESINV'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 137
              Top = 118
              DataBinding.DataField = 'WAPU_VALUE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 10
              Width = 96
            end
            object cxDBImageComboBox1: TcxDBImageComboBox
              Left = 137
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
                  Description = 'VAT+Broker Fee'
                  Value = '2'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 11
              Width = 96
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
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
            object dxLayoutControl5Item2: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item5: TdxLayoutItem
              Parent = dxLayoutGroup5
              CaptionOptions.Text = 'cxDBCheckBox7'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
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
            object dxLayoutControl5Item13: TdxLayoutItem
              Parent = dxLayoutGroup5
              CaptionOptions.Text = 'cxDBCheckBox17'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
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
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 54
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahClient
              CaptionOptions.Text = 'Use S-Invest'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 101
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Wapu Value'
              CaptionOptions.Layout = clRight
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 96
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Wapu Type'
              CaptionOptions.Layout = clRight
              Control = cxDBImageComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 96
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
          Width = 167
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
          Width = 191
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
          ControlOptions.OriginalHeight = 243
          ControlOptions.OriginalWidth = 319
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
          ControlOptions.OriginalWidth = 167
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
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
    object tabInterest: TcxTabSheet
      Caption = 'Interest'
      ImageIndex = 8
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 340
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
              Width = 587
            end>
          object gvwInterestBUSTYPEID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BUSTYPEID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwInterestCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            RepositoryItem = dmGlobal.luCurrency
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwInterestINTERESTCODE: TcxGridDBBandedColumn
            Caption = 'Interest'
            DataBinding.FieldName = 'INTERESTCODE'
            RepositoryItem = dmGlobal.luInterest
            Width = 45
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
          object gvwInterestPRINCIPLE_METHOD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRINCIPLE_METHOD'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Monthly'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Request'
                Value = '2'
              end
              item
                Description = 'Trade Sell'
                Value = '3'
              end>
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = gvwInterest
        end
      end
    end
    object tabCommission: TcxTabSheet
      Caption = 'Commission'
      ImageIndex = 1
      object grdComm: TcxGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
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
            Width = 55
          end
          object gvwCommMARKETCODE: TcxGridDBColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            RepositoryItem = dmGlobal.luMarket
            Width = 47
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
    end
    object tabCharges: TcxTabSheet
      Caption = 'Charges'
      ImageIndex = 2
      object grdCharge: TcxGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 340
        Align = alClient
        TabOrder = 0
        object gvwCharge: TcxGridDBTableView
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
          OnInitEdit = gvwChargeInitEdit
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
            Width = 69
          end
          object gvwChargeCHARGE_DESC: TcxGridDBColumn
            Caption = 'Charge Description'
            DataBinding.FieldName = 'CHARGE_DESC'
            Width = 150
          end
          object gvwChargeDESCRIPTION: TcxGridDBColumn
            Caption = 'Description Value'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 200
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
    DataSet = cdsBusType
    Left = 88
    Top = 384
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 440
    Top = 192
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsCharge: TDataSource
    DataSet = cdsBusTypeCharge
    Left = 192
    Top = 384
  end
  object dsComm: TDataSource
    DataSet = cdsBusTypeComm
    Left = 312
    Top = 384
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
    OnNewRecord = cdsBusTypeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 88
    Top = 336
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
    object cdsBusTypeGLTYPE_ID: TIntegerField
      FieldName = 'GLTYPE_ID'
    end
    object cdsBusTypeLTYPE_ID: TIntegerField
      FieldName = 'LTYPE_ID'
    end
    object cdsBusTypeWAPU_VALUE: TFloatField
      FieldName = 'WAPU_VALUE'
      DisplayFormat = '#,##0'
    end
    object cdsBusTypeWAPU_TYPE: TIntegerField
      FieldName = 'WAPU_TYPE'
    end
    object cdsBusTypeUSESINV: TStringField
      FieldName = 'USESINV'
      Size = 1
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
    Left = 192
    Top = 336
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
    object cdsBusTypeChargeDESCRIPTION: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
    object cdsBusTypeChargeCHARGE_DESC: TStringField
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
  object cdsBusTypeComm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeComm
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 336
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
    object cdsBusTypeCommDESCRIPTION: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCommission
      LookupKeyFields = 'COMM_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'COMM_ID'
      Size = 50
      Lookup = True
    end
    object cdsBusTypeCommNET_COMMID: TLargeintField
      FieldName = 'NET_COMMID'
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
    Left = 416
    Top = 336
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
    object cdsBusTypeInterestPRINCIPLE_METHOD: TIntegerField
      DisplayLabel = 'Principal Method'
      FieldName = 'PRINCIPLE_METHOD'
    end
  end
  object dsInterest: TDataSource
    DataSet = cdsBusTypeInterest
    Left = 416
    Top = 384
  end
end
