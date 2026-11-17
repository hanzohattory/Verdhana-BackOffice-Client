inherited frmOpeningRepoContractEditor: TfrmOpeningRepoContractEditor
  Caption = 'Create New Repo Contract'
  ClientHeight = 746
  ClientWidth = 710
  OnClose = FormClose
  ExplicitWidth = 716
  ExplicitHeight = 775
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 710
    Height = 417
    Align = alTop
    BevelKind = bkTile
    ExplicitTop = -6
    ExplicitWidth = 710
    ExplicitHeight = 417
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 110
      Top = 28
      DataBinding.DataField = 'ENTTCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [1]
      Left = 237
      Top = 28
      DataBinding.DataField = 'ENTTNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
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
      TabOrder = 1
      Width = 368
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 110
      Top = 85
      DataBinding.DataField = 'CONTRACT_NO'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 155
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 110
      Top = 112
      DataBinding.DataField = 'RACCCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 112
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 110
      Top = 139
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 112
    end
    object cxDBButtonEdit2: TcxDBButtonEdit [5]
      Left = 228
      Top = 112
      DataBinding.DataField = 'RACCNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
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
      TabOrder = 5
      Width = 338
    end
    object cxDBDateEdit1: TcxDBDateEdit [6]
      Left = 110
      Top = 166
      DataBinding.DataField = 'SETTDATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 88
    end
    object cxDBCheckBox1: TcxDBCheckBox [7]
      Left = 329
      Top = 193
      Caption = 'True Discount'
      DataBinding.DataField = 'DISCOUNT'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 72
    end
    object cxDBTextEdit6: TcxDBTextEdit [8]
      Left = 283
      Top = 166
      DataBinding.DataField = 'SETTDAY'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 59
    end
    object cxDBDateEdit2: TcxDBDateEdit [9]
      Left = 419
      Top = 166
      DataBinding.DataField = 'MATURDATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox [10]
      Left = 407
      Top = 193
      Caption = 'Repo Client has Corpact Right'
      DataBinding.DataField = 'CORPACT'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 204
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [11]
      Left = 110
      Top = 250
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 72
    end
    object cxDBTextEdit7: TcxDBTextEdit [12]
      Left = 329
      Top = 277
      DataBinding.DataField = 'COLL_CALL'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 72
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [13]
      Left = 232
      Top = 250
      RepositoryItem = dmGlobal.luInterest
      DataBinding.DataField = 'INTERESTCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 56
    end
    object cxDBTextEdit8: TcxDBTextEdit [14]
      Left = 294
      Top = 250
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [15]
      Left = 110
      Top = 304
      DataBinding.DataField = 'REPO_AMT'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [16]
      Left = 480
      Top = 277
      DataBinding.DataField = 'FORCESELL'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 81
    end
    object cxDBTextEdit11: TcxDBTextEdit [17]
      Left = 329
      Top = 304
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [18]
      Left = 520
      Top = 304
      DataBinding.DataField = 'DUE_AMT'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit [19]
      Left = 110
      Top = 341
      DataBinding.DataField = 'COL_AMT'
      DataBinding.DataSource = dsSum
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [20]
      Left = 110
      Top = 368
      DataBinding.DataField = 'RATIO'
      DataBinding.DataSource = dsSum
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [21]
      Left = 329
      Top = 85
      DataBinding.DataField = 'TRXDATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBButtonEdit3: TcxDBButtonEdit [22]
      Left = 228
      Top = 139
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit3PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 338
    end
    object cxDBTextEdit5: TcxDBTextEdit [23]
      Left = 110
      Top = 277
      DataBinding.DataField = 'APR_COLL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [24]
      Left = 110
      Top = 193
      DataBinding.DataField = 'CON_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Client (CIF Code)'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      Parent = dxLayoutControl1Group1
      Control = cxDBButtonEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract No'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Repo A/C No'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Reg A/C Number'
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      Parent = dxLayoutControl1Group5
      Control = cxDBButtonEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settlement Date'
      Parent = dxLayoutControl1Group12
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Parent = dxLayoutControl1Group11
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settlement Day'
      Parent = dxLayoutControl1Group12
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Maturity Date'
      Parent = dxLayoutControl1Group12
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      Parent = dxLayoutControl1Group11
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CCY'
      Parent = dxLayoutControl1Group13
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Collateral Call (%)'
      Parent = dxLayoutControl1Group20
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest'
      Parent = dxLayoutControl1Group13
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      Parent = dxLayoutControl1Group13
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'REPO Amount '
      Parent = dxLayoutControl1Group19
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Force Sell (%)'
      Parent = dxLayoutControl1Group20
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Amount'
      Parent = dxLayoutControl1Group21
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Amount'
      Parent = dxLayoutControl1Group21
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Collateral'
      Offsets.Top = 10
      Parent = dxLayoutControl1Group19
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ratio'
      Parent = dxLayoutControl1Group19
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trans Date'
      Parent = dxLayoutControl1Group8
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TdxLayoutGroup
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group16
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group14
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group17
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group21: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group16
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group20: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group16
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group19: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group21
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      Control = cxDBButtonEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.Text = 'Initial Ratio (%)'
      Parent = dxLayoutControl1Group20
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract Date'
      Parent = dxLayoutControl1Group11
      Control = cxDBDateEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 677
    Width = 710
    ExplicitTop = 677
    ExplicitWidth = 710
    inherited dbNavLog: TDBNavigator
      Left = 596
      Hints.Strings = ()
      ExplicitLeft = 596
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
    Top = 726
    Width = 710
    ExplicitTop = 726
    ExplicitWidth = 710
  end
  inherited tabEditorData: TTabSet
    Top = 656
    Width = 710
    ExplicitTop = 656
    ExplicitWidth = 710
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 417
    Width = 710
    Height = 239
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 4
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 710
      Height = 239
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object gvwStockAvailable: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSTOCKONHAND
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00;(#,##0);-'
            Kind = skSum
            FieldName = 'COL_AMT'
            Column = gvwStockAvailableCOL_AMT
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.OnGetContentStyle = gvwStockAvailableStylesGetContentStyle
        Bands = <
          item
            Caption = 'REPO Plan'
            Width = 478
          end
          item
            Caption = 'Real Stock Position'
          end>
        object gvwStockAvailableACCCODE: TcxGridDBBandedColumn
          Caption = 'Source A/C Num'
          DataBinding.FieldName = 'ACCCODE'
          Options.Editing = False
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwStockAvailableSTOCKCODE: TcxGridDBBandedColumn
          Caption = 'Stock Code'
          DataBinding.FieldName = 'STOCKCODE'
          Options.Editing = False
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwStockAvailableQTY_ONHAND: TcxGridDBBandedColumn
          Caption = 'Qty On Hand'
          DataBinding.FieldName = 'QTY_ONHAND'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 95
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwStockAvailableREMQTY: TcxGridDBBandedColumn
          Caption = 'Rem Plan'
          DataBinding.FieldName = 'REMQTY'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwStockAvailableMOVEPLAN: TcxGridDBBandedColumn
          Caption = 'REPO Plan Qty'
          DataBinding.FieldName = 'MOVEPLAN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = gvwStockAvailableMOVEPLANPropertiesValidate
          HeaderAlignmentHorz = taRightJustify
          Width = 99
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwStockAvailableQTY_OUTS: TcxGridDBBandedColumn
          Caption = 'Qty Outstand'
          DataBinding.FieldName = 'QTY_OUTS'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwStockAvailableQTY_DLV: TcxGridDBBandedColumn
          Caption = 'Qty Deliver'
          DataBinding.FieldName = 'QTY_DLV'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 96
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwStockAvailableQTY_RCV: TcxGridDBBandedColumn
          Caption = 'Qty Receive'
          DataBinding.FieldName = 'QTY_RCV'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 80
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwStockAvailableBUY_VAL: TcxGridDBBandedColumn
          Caption = 'Buy Qty'
          DataBinding.FieldName = 'BUY_VAL'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwStockAvailableSELL_VAL: TcxGridDBBandedColumn
          Caption = 'Sell Qty'
          DataBinding.FieldName = 'SELL_VAL'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 69
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwStockAvailableREALAVAIL: TcxGridDBBandedColumn
          Caption = 'Real Bal Qty'
          DataBinding.FieldName = 'REALAVAIL'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 86
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwStockAvailableHAIRCUT: TcxGridDBBandedColumn
          Caption = 'HCut (%)'
          DataBinding.FieldName = 'HAIRCUT'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwStockAvailableLASTCLSPRICE: TcxGridDBBandedColumn
          Caption = 'Close Prc'
          DataBinding.FieldName = 'LASTCLSPRICE'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwStockAvailableCOL_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COL_AMT'
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 111
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwStockAvailable
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsOCR
    Left = 608
    Top = 408
  end
  object cdsOCR: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryORC'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsOCRAfterOpen
    BeforeEdit = cdsOCRBeforeEdit
    OnNewRecord = cdsOCRNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 608
    Top = 456
    object cdsOCRCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsOCRCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsOCRENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsOCRENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsOCRENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsOCRTRXDATE: TDateTimeField
      DisplayLabel = 'Trx. date'
      FieldName = 'TRXDATE'
    end
    object cdsOCRTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsOCRACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsOCRACCCODE: TStringField
      DisplayLabel = 'AccNo.'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsOCRACCNAME: TStringField
      DisplayLabel = 'AccName'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsOCRRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsOCRRACCCODE: TStringField
      DisplayLabel = 'Rev. AccNo.'
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsOCRRACCNAME: TStringField
      DisplayLabel = 'Rev. AccName'
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsOCRSETTDATE: TDateTimeField
      DisplayLabel = 'Sett. date'
      FieldName = 'SETTDATE'
      OnChange = cdsOCRSETTDATEChange
    end
    object cdsOCRSETTDAY: TIntegerField
      DisplayLabel = 'Sett. days'
      FieldName = 'SETTDAY'
      OnChange = cdsOCRSETTDAYChange
    end
    object cdsOCRMATURDATE: TDateTimeField
      DisplayLabel = 'Maturity Date'
      FieldName = 'MATURDATE'
    end
    object cdsOCRCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsOCRLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsOCRDUE_AMT: TFloatField
      DisplayLabel = 'Due Amount'
      FieldName = 'DUE_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsOCRINTERESTCODE: TStringField
      DisplayLabel = 'Int.code'
      FieldName = 'INTERESTCODE'
      OnChange = cdsOCRINTERESTCODEChange
      Size = 10
    end
    object cdsOCRINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsOCRINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '###.00 %'
    end
    object cdsOCRINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsOCRINTERESTDAY: TIntegerField
      DisplayLabel = 'Int.rate'
      FieldName = 'INTERESTDAY'
    end
    object cdsOCRCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsOCRCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsOCRAPR_COLL: TFloatField
      DisplayLabel = 'Approval Collateral'
      FieldName = 'APR_COLL'
      DisplayFormat = '###.00 %'
    end
    object cdsOCRFORCESELL: TFloatField
      DisplayLabel = 'Force Sell'
      FieldName = 'FORCESELL'
      DisplayFormat = '###.00 %'
    end
    object cdsOCRCOLL_CALL: TFloatField
      DisplayLabel = 'Collateral Call'
      FieldName = 'COLL_CALL'
      DisplayFormat = '###.00 %'
    end
    object cdsOCRISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsOCRISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsOCRMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOCRMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOCRAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOCRAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOCRUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOCRUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOCRNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOCRISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOCRID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOCRCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsOCRTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsOCRDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsOCRORG_AMT: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Original Amount'
      FieldName = 'ORG_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsOCRINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsOCRREPO_AMT: TFloatField
      DisplayLabel = 'Repo Amount'
      FieldName = 'REPO_AMT'
      OnChange = cdsOCRREPO_AMTChange
      DisplayFormat = '#,##0.00'
    end
    object cdsOCRCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsOCRqryORC_D: TDataSetField
      FieldName = 'qryORC_D'
    end
    object cdsOCRDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
      DisplayFormat = '#,##0'
    end
    object cdsOCRCORPACT: TSmallintField
      FieldName = 'CORPACT'
      DisplayFormat = '#,##0'
    end
  end
  object cdsSTOCKONHAND: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qrySTOCKONHAND'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 464
    object cdsSTOCKONHANDENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsSTOCKONHANDENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsSTOCKONHANDACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsSTOCKONHANDACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsSTOCKONHANDSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsSTOCKONHANDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDACQDATE: TDateField
      FieldName = 'ACQDATE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
      ReadOnly = True
    end
    object cdsSTOCKONHANDACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsSTOCKONHANDAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      ReadOnly = True
    end
    object cdsSTOCKONHANDPROFIT_LOSS: TFloatField
      FieldName = 'PROFIT_LOSS'
      ReadOnly = True
    end
    object cdsSTOCKONHANDBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      ReadOnly = True
    end
    object cdsSTOCKONHANDSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_WARKAT: TFloatField
      FieldName = 'QTY_WARKAT'
      ReadOnly = True
    end
    object cdsSTOCKONHANDSTK_WDR: TFloatField
      FieldName = 'STK_WDR'
      ReadOnly = True
    end
    object cdsSTOCKONHANDHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
      ReadOnly = True
    end
    object cdsSTOCKONHANDLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY: TLargeintField
      FieldName = 'QTY'
      ReadOnly = True
    end
    object cdsSTOCKONHANDACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
  end
  object dsSTOCKONHAND: TDataSource
    DataSet = cdsSTOCKONHAND_Edit
    Left = 680
    Top = 464
  end
  object dsRepoCollateral: TDataSource
    DataSet = cdsCOLLATERAL
    Left = 680
    Top = 408
  end
  object cdsCOLLATERAL: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOCRqryORC_D
    Params = <
      item
        DataType = ftUnknown
        Name = 'CONRID'
        ParamType = ptUnknown
      end>
    BeforeEdit = cdsCOLLATERALBeforeEdit
    BeforePost = cdsCOLLATERALBeforePost
    OnNewRecord = cdsCOLLATERALNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 408
    object cdsCOLLATERALCONRID: TLargeintField
      FieldName = 'CONRID'
    end
    object cdsCOLLATERALSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCOLLATERALSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCOLLATERALSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCOLLATERALSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsCOLLATERALTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
      DisplayFormat = '#,##0.00(#,##0.00);-'
    end
    object cdsCOLLATERALINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsCOLLATERALMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCOLLATERALMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCOLLATERALAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCOLLATERALAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCOLLATERALUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCOLLATERALUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCOLLATERALNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCOLLATERALISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCOLLATERALID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCOLLATERALQTY: TLargeintField
      FieldName = 'QTY'
      OnChange = cdsCOLLATERALQTYChange
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsCOLLATERALCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsCOLLATERALSEQNO: TIntegerField
      FieldName = 'SEQNO'
    end
    object cdsCOLLATERALACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCOLLATERALACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCOLLATERALCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCOLLATERALHCUT: TFloatField
      FieldName = 'HCUT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object cdsSTOCK_POS: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qrySTOCK_POS'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 608
    Top = 504
    object cdsSTOCK_POSACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsSTOCK_POSACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSTOCK_POSSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsSTOCK_POSSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsSTOCK_POSQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsSTOCK_POSQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
    end
  end
  object cdsSTOCKONHAND_Edit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    BeforeEdit = cdsSTOCKONHAND_EditBeforeEdit
    BeforePost = cdsSTOCKONHAND_EditBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 464
    object cdsSTOCKONHAND_EditENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsSTOCKONHAND_EditENTTCODE: TStringField
      FieldName = 'ENTTCODE'
    end
    object cdsSTOCKONHAND_EditACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsSTOCKONHAND_EditACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSTOCKONHAND_EditSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSTOCKONHAND_EditQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsSTOCKONHAND_EditSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSTOCKONHAND_EditEDIT: TStringField
      FieldName = 'EDIT'
      Size = 10
    end
    object cdsSTOCKONHAND_EditREMQTY: TFloatField
      FieldName = 'REMQTY'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditMOVEPLAN: TFloatField
      FieldName = 'MOVEPLAN'
      OnChange = cdsSTOCKONHAND_EditMOVEPLANChange
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditREALAVAIL: TFloatField
      FieldName = 'REALAVAIL'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditCOL_AMT: TFloatField
      DisplayLabel = 'Collateral'
      FieldName = 'COL_AMT'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsSTOCKONHAND_EditORG_REPO_QTY: TFloatField
      FieldName = 'ORG_REPO_QTY'
    end
    object cdsSTOCKONHAND_EditLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
      ReadOnly = True
    end
    object cdsSTOCKONHAND_EditQTY: TLargeintField
      FieldName = 'QTY'
    end
  end
  object cdsLuInstrument: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryLuCLSPRICE'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 416
    object cdsLuInstrumentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuInstrumentINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuInstrumentLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuInstrumentISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsLuInstrumentLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsLuInstrumentHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
    end
  end
  object cdsLuCIF: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryLuCIF'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 520
    object cdsLuCIFENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuCIFENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsLuCIFENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 200
    end
    object cdsLuCIFSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsLuCIFCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 50
    end
    object cdsLuCIFCOMPANY_ADDRESS: TStringField
      FieldName = 'COMPANY_ADDRESS'
      Size = 255
    end
    object cdsLuCIFANNUAL_INCOME_SOURCE: TLargeintField
      FieldName = 'ANNUAL_INCOME_SOURCE'
    end
    object cdsLuCIFKTP: TStringField
      FieldName = 'KTP'
      Size = 30
    end
    object cdsLuCIFKTP_EXPDATE: TDateField
      FieldName = 'KTP_EXPDATE'
    end
    object cdsLuCIFBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsLuCIFCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
    end
    object cdsLuCIFENTSTATUS: TStringField
      FieldName = 'ENTSTATUS'
      Size = 5
    end
    object cdsLuCIFENTTYPE: TStringField
      FieldName = 'ENTTYPE'
      Size = 10
    end
    object cdsLuCIFAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsLuCIFSOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      Size = 50
    end
    object cdsLuCIFINVESTOBJECTIVE: TStringField
      FieldName = 'INVESTOBJECTIVE'
      Size = 50
    end
    object cdsLuCIFSIDNO_1: TStringField
      FieldName = 'SIDNO_1'
    end
    object cdsLuCIFTAXID: TStringField
      FieldName = 'TAXID'
    end
  end
  object cdsLuAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRDCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryLuAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 520
    object cdsLuAccountENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
  end
  object cdsSum: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 488
    object cdsSumCOL_AMT: TFloatField
      FieldName = 'COL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSumRATIO: TFloatField
      FieldName = 'RATIO'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSumCHECKAPPR: TFloatField
      FieldName = 'CHECKAPPR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object dsSum: TDataSource
    DataSet = cdsSum
    Left = 160
    Top = 488
  end
  object LocalRep: TcxStyleRepository
    Left = 608
    Top = 144
    PixelsPerInch = 96
    object nclQtyREPO: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object nclWarining: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 223
    end
  end
end
