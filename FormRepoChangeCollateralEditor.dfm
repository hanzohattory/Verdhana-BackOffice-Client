inherited frmRepoChangeCollateralEditor: TfrmRepoChangeCollateralEditor
  Caption = 'Repo Change Collateral Contract'
  ClientHeight = 746
  ClientWidth = 1095
  OnClose = FormClose
  ExplicitWidth = 1101
  ExplicitHeight = 775
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1095
    Height = 417
    Align = alTop
    BevelKind = bkTile
    ExplicitWidth = 666
    ExplicitHeight = 417
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 114
      Top = 85
      DataBinding.DataField = 'ENTTCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 112
    end
    object cxDBTextEdit3: TcxDBTextEdit [1]
      Left = 114
      Top = 112
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 112
    end
    object cxDBTextEdit4: TcxDBTextEdit [2]
      Left = 114
      Top = 139
      DataBinding.DataField = 'RACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 112
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 114
      Top = 166
      DataBinding.DataField = 'SETTDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 88
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 232
      Top = 139
      DataBinding.DataField = 'RACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 338
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 114
      Top = 193
      Caption = 'True Discount'
      DataBinding.DataField = 'DISCOUNT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 72
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 287
      Top = 166
      DataBinding.DataField = 'SETTDAY'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 59
    end
    object cxDBDateEdit2: TcxDBDateEdit [7]
      Left = 423
      Top = 166
      DataBinding.DataField = 'MATURDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox [8]
      Left = 325
      Top = 193
      Caption = 'Repo Client has Corpact Right'
      DataBinding.DataField = 'CORPACT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 204
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [9]
      Left = 114
      Top = 250
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 72
    end
    object cxDBTextEdit7: TcxDBTextEdit [10]
      Left = 114
      Top = 277
      DataBinding.DataField = 'COLL_CALL'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 72
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [11]
      Left = 325
      Top = 250
      RepositoryItem = dmGlobal.luInterest
      DataBinding.DataField = 'INTERESTCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 56
    end
    object cxDBTextEdit8: TcxDBTextEdit [12]
      Left = 387
      Top = 250
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [13]
      Left = 114
      Top = 304
      DataBinding.DataField = 'REPO_AMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [14]
      Left = 325
      Top = 277
      DataBinding.DataField = 'FORCESELL'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 81
    end
    object cxDBTextEdit11: TcxDBTextEdit [15]
      Left = 325
      Top = 304
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [16]
      Left = 516
      Top = 304
      DataBinding.DataField = 'DUE_AMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit [17]
      Left = 114
      Top = 341
      DataBinding.DataField = 'COL_AMT'
      DataBinding.DataSource = dsSum
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [18]
      Left = 114
      Top = 368
      DataBinding.DataField = 'RATIO'
      DataBinding.DataSource = dsSum
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [19]
      Left = 516
      Top = 28
      DataBinding.DataField = 'TRXDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBButtonEdit3: TcxDBButtonEdit [20]
      Left = 114
      Top = 28
      DataBinding.DataField = 'CONTRACT_NO'
      DataBinding.DataSource = dsSubject
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
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [21]
      Left = 232
      Top = 85
      DataBinding.DataField = 'ENTTNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 338
    end
    object cxDBTextEdit15: TcxDBTextEdit [22]
      Left = 232
      Top = 112
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 338
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Client (CIF Code)'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit1
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
      CaptionOptions.Text = 'Rev REPO A/C No'
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Parent = dxLayoutControl1Group11
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
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
      CaptionOptions.Text = '   '
      Parent = dxLayoutControl1Group11
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 1
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
      Index = 0
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
      CaptionOptions.Text = '                    Force Sell (%)'
      Parent = dxLayoutControl1Group20
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 1
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
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trans Date'
      Parent = dxLayoutControl1Group1
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
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract Number'
      Parent = dxLayoutControl1Group1
      Control = cxDBButtonEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group18
      Control = cxDBTextEdit15
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 677
    Width = 1095
    ExplicitTop = 677
    ExplicitWidth = 666
    inherited dbNavLog: TDBNavigator
      Left = 981
      Hints.Strings = ()
      ExplicitLeft = 981
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
    Width = 1095
    ExplicitTop = 726
    ExplicitWidth = 666
  end
  inherited tabEditorData: TTabSet
    Top = 656
    Width = 1095
    ExplicitTop = 656
    ExplicitWidth = 666
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 417
    Width = 1095
    Height = 239
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 4
    ExplicitWidth = 666
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 1095
      Height = 239
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 666
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
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
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
    DataSet = cdsChangeCollateral
    Left = 952
    Top = 320
  end
  object cdsChangeCollateral: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryCONTRACT_REPO'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsChangeCollateralAfterOpen
    BeforeEdit = cdsChangeCollateralBeforeEdit
    OnNewRecord = cdsChangeCollateralNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 952
    Top = 248
    object cdsChangeCollateralRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsChangeCollateralACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsChangeCollateralENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsChangeCollateralCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsChangeCollateralCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsChangeCollateralENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsChangeCollateralENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsChangeCollateralTRXDATE: TDateTimeField
      DisplayLabel = 'Trx. date'
      FieldName = 'TRXDATE'
    end
    object cdsChangeCollateralTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsChangeCollateralACCCODE: TStringField
      DisplayLabel = 'AccNo.'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsChangeCollateralACCNAME: TStringField
      DisplayLabel = 'AccName'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsChangeCollateralRACCCODE: TStringField
      DisplayLabel = 'Rev. AccNo.'
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsChangeCollateralRACCNAME: TStringField
      DisplayLabel = 'Rev. AccName'
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsChangeCollateralSETTDATE: TDateTimeField
      DisplayLabel = 'Sett. date'
      FieldName = 'SETTDATE'
    end
    object cdsChangeCollateralSETTDAY: TIntegerField
      DisplayLabel = 'Sett. days'
      FieldName = 'SETTDAY'
      OnChange = cdsChangeCollateralSETTDAYChange
    end
    object cdsChangeCollateralMATURDATE: TDateTimeField
      DisplayLabel = 'Maturity Date'
      FieldName = 'MATURDATE'
    end
    object cdsChangeCollateralCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsChangeCollateralLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsChangeCollateralDUE_AMT: TFloatField
      DisplayLabel = 'Due Amount'
      FieldName = 'DUE_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsChangeCollateralINTERESTCODE: TStringField
      DisplayLabel = 'Int.code'
      FieldName = 'INTERESTCODE'
      OnChange = cdsChangeCollateralINTERESTCODEChange
      Size = 10
    end
    object cdsChangeCollateralINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsChangeCollateralINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '###.00 %'
    end
    object cdsChangeCollateralINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsChangeCollateralINTERESTDAY: TIntegerField
      DisplayLabel = 'Int.rate'
      FieldName = 'INTERESTDAY'
    end
    object cdsChangeCollateralCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsChangeCollateralCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsChangeCollateralAPR_COLL: TFloatField
      DisplayLabel = 'Approval Collateral'
      FieldName = 'APR_COLL'
      DisplayFormat = '###.00 %'
    end
    object cdsChangeCollateralFORCESELL: TFloatField
      DisplayLabel = 'Force Sell'
      FieldName = 'FORCESELL'
      DisplayFormat = '###.00 %'
    end
    object cdsChangeCollateralCOLL_CALL: TFloatField
      DisplayLabel = 'Collateral Call'
      FieldName = 'COLL_CALL'
      DisplayFormat = '###.00 %'
    end
    object cdsChangeCollateralDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsChangeCollateralORG_AMT: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Original Amount'
      FieldName = 'ORG_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsChangeCollateralINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsChangeCollateralREPO_AMT: TFloatField
      DisplayLabel = 'Repo Amount'
      FieldName = 'REPO_AMT'
      OnChange = cdsChangeCollateralREPO_AMTChange
      DisplayFormat = '#,##0.00'
    end
    object cdsChangeCollateralCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsChangeCollateralDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
      DisplayFormat = '#,##0'
    end
    object cdsChangeCollateralCORPACT: TSmallintField
      FieldName = 'CORPACT'
      DisplayFormat = '#,##0'
    end
    object cdsChangeCollateralREPO_STATUS: TStringField
      FieldName = 'REPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsChangeCollateralISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsChangeCollateralISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsChangeCollateralMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChangeCollateralMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChangeCollateralAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChangeCollateralAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChangeCollateralUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChangeCollateralUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChangeCollateralNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChangeCollateralISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChangeCollateralID: TLargeintField
      FieldName = 'ID'
    end
    object cdsChangeCollateralCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsChangeCollateralTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsChangeCollateralqryCONTRACT_REPO_D: TDataSetField
      FieldName = 'qryCONTRACT_REPO_D'
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
    Control4Eyes = True
    Left = 880
    Top = 96
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
    Left = 712
    Top = 256
  end
  object dsRepoCollateral: TDataSource
    DataSet = cdsCOLLATERAL
    Left = 712
    Top = 328
  end
  object cdsCOLLATERAL: TNClientDataset
    Aggregates = <>
    DataSetField = cdsChangeCollateralqryCONTRACT_REPO_D
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
    Left = 880
    Top = 24
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
    Left = 824
    Top = 256
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
    Left = 752
    Top = 96
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
    Left = 752
    Top = 24
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
    Left = 824
    Top = 328
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
      end>
    ProviderName = 'dspN_dmREPO_qryLuAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 952
    Top = 176
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
    Left = 824
    Top = 176
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
    Left = 712
    Top = 176
  end
  object cdsCRActiveList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryCRActiveList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1000
    Top = 24
    object cdsCRActiveListCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsCRActiveListCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsCRActiveListENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsCRActiveListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsCRActiveListENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsCRActiveListTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsCRActiveListTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsCRActiveListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCRActiveListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCRActiveListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCRActiveListRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsCRActiveListRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsCRActiveListRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsCRActiveListSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
    end
    object cdsCRActiveListSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsCRActiveListMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
    end
    object cdsCRActiveListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCRActiveListLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsCRActiveListDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
    end
    object cdsCRActiveListDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsCRActiveListINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsCRActiveListINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsCRActiveListINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsCRActiveListINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsCRActiveListINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsCRActiveListCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsCRActiveListCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsCRActiveListAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
    end
    object cdsCRActiveListFORCESELL: TFloatField
      FieldName = 'FORCESELL'
    end
    object cdsCRActiveListCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
    end
    object cdsCRActiveListINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
    end
    object cdsCRActiveListORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
    end
    object cdsCRActiveListREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
    end
    object cdsCRActiveListCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsCRActiveListCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
    object cdsCRActiveListISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsCRActiveListISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsCRActiveListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCRActiveListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCRActiveListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCRActiveListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCRActiveListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCRActiveListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCRActiveListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCRActiveListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCRActiveListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCRActiveListCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsCRActiveListTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsCRActiveListDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsCRActiveListREPO_STATUS: TStringField
      FieldName = 'REPO_STATUS'
      FixedChar = True
      Size = 1
    end
  end
end
