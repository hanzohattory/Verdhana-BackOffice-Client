inherited frmJournalReverse: TfrmJournalReverse
  Caption = 'Journal Reverse'
  ClientHeight = 614
  ClientWidth = 976
  ExplicitWidth = 982
  ExplicitHeight = 643
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Top = 184
    Width = 976
    Height = 145
    Align = alTop
    ExplicitTop = 184
    ExplicitWidth = 976
    ExplicitHeight = 145
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 283
      Top = 10
      TabStop = False
      DataBinding.DataField = 'JRNCD'
      DataBinding.DataSource = dsJRNHRev
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 110
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 77
      Top = 37
      DataBinding.DataField = 'VDATE'
      DataBinding.DataSource = dsJRNHRev
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [2]
      Left = 283
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VPERIODCODE'
      DataBinding.DataSource = dsJRNHRev
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 110
    end
    object cxDBTextEdit5: TcxDBTextEdit [3]
      Left = 283
      Top = 64
      TabStop = False
      DataBinding.DataField = 'EPERIODCODE'
      DataBinding.DataSource = dsJRNHRev
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 110
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 77
      Top = 10
      DataBinding.DataField = 'JRNTYPE'
      DataBinding.DataSource = dsJRNHRev
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'JRNTYPE'
      Properties.ListColumns = <
        item
          Caption = 'Desc'
          FieldName = 'JRNTYPEDESC'
        end
        item
          Caption = 'Type'
          FieldName = 'JRNTYPE'
        end>
      Properties.ListSource = dmLookup.dsLuJrnType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 77
      Top = 64
      DataBinding.DataField = 'EDATE'
      DataBinding.DataSource = dsJRNHRev
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [6]
      Left = 77
      Top = 91
      DataBinding.DataField = 'HDESC'
      DataBinding.DataSource = dsJRNHRev
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 38
      Width = 316
    end
    object cxGrid1: TcxGrid [7]
      Left = 750
      Top = 10
      Width = 216
      Height = 119
      TabOrder = 8
      object gvwJRNExRate: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsJRNExRateRev
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        Styles.ContentOdd = dmGlobal.BlueToggle
        Bands = <
          item
            Caption = 'Trans Ex. Rate'
          end>
        object gvwJRNExRateCCYCODE: TcxGridDBBandedColumn
          Caption = 'CCY'
          DataBinding.FieldName = 'CCYCODE'
          Options.Editing = False
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwJRNExRateEXRATE: TcxGridDBBandedColumn
          Caption = 'Ex. Rate'
          DataBinding.FieldName = 'EXRATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taRightJustify
          Width = 122
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwJRNExRate
      end
    end
    object cxGrid4: TcxGrid [8]
      Left = 528
      Top = 10
      Width = 216
      Height = 119
      TabOrder = 0
      object gvwSysExRate: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSysExRateRev
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
        Styles.ContentOdd = dmGlobal.BlueToggle
        Bands = <
          item
            Caption = 'System Ex. Rate'
          end>
        object gvwSysExRateCCYCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCYCODE'
          Width = 67
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwSysExRateEXRATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXRATE'
          Width = 117
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGrid4Level1: TcxGridLevel
        GridView = gvwSysExRate
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Journal Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value GL Period'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Entry GL Period'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Journal Type'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignVert = avTop
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 316
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      Control = cxGrid1
      ControlOptions.AlignHorz = ahLeft
      ControlOptions.OriginalHeight = 119
      ControlOptions.OriginalWidth = 216
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxGrid4'
      CaptionOptions.Visible = False
      Control = cxGrid4
      ControlOptions.OriginalHeight = 119
      ControlOptions.OriginalWidth = 216
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 545
    Width = 976
    ExplicitTop = 545
    ExplicitWidth = 976
    inherited dbNavLog: TDBNavigator
      Left = 862
      Hints.Strings = ()
      ExplicitLeft = 862
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 594
    Width = 976
    ExplicitTop = 594
    ExplicitWidth = 976
  end
  inherited tabEditorData: TTabSet
    Top = 524
    Width = 976
    ExplicitTop = 524
    ExplicitWidth = 976
  end
  object cxGrid2: TcxGrid [4]
    Left = 0
    Top = 329
    Width = 976
    Height = 113
    Align = alClient
    TabOrder = 4
    object gvwJRNDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsJRNDRev
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Width = 953
        end>
      object gvwJRNDetailGLACCOUNTID: TcxGridDBBandedColumn
        Caption = 'GL A/C No'
        DataBinding.FieldName = 'GLACCOUNTID'
        RepositoryItem = dmGlobal.luGLAccountTrxNo
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwJRNDetailCCYCODE: TcxGridDBBandedColumn
        Caption = 'CCY'
        DataBinding.FieldName = 'CCYCODE'
        RepositoryItem = dmGlobal.luCurrency
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwJRNDetailJRNDDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'JRNDDESC'
        Width = 204
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwJRNDetailCPID: TcxGridDBBandedColumn
        Caption = 'Cost/Profit Center'
        DataBinding.FieldName = 'CPID'
        RepositoryItem = dmGlobal.luCPCenter
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwJRNDetailDC: TcxGridDBBandedColumn
        Caption = 'D/C'
        DataBinding.FieldName = 'DC'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Debet'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Credit'
            Value = 'C'
          end>
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwJRNDetailAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwJRNDetailGLACCOUNTID1: TcxGridDBBandedColumn
        Caption = 'GL A/C Desc'
        DataBinding.FieldName = 'GLACCOUNTID'
        RepositoryItem = dmGlobal.LuGLAccountTrxName
        Width = 198
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwJRNDetailDEBET: TcxGridDBBandedColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'DEBET'
        HeaderAlignmentHorz = taRightJustify
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwJRNDetailCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        HeaderAlignmentHorz = taRightJustify
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwJRNDetailEMPLOYEEID: TcxGridDBBandedColumn
        Caption = 'Employee'
        DataBinding.FieldName = 'EMPLOYEEID'
        RepositoryItem = dmGlobal.LuEmployee
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwJRNDetailPROJECTID: TcxGridDBBandedColumn
        Caption = 'Project'
        DataBinding.FieldName = 'PROJECTID'
        RepositoryItem = dmGlobal.LuProject
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = gvwJRNDetail
    end
  end
  object dxLayoutControl3: TdxLayoutControl [5]
    Left = 0
    Top = 442
    Width = 976
    Height = 82
    Align = alBottom
    TabOrder = 5
    object cxGrid3: TcxGrid
      Left = 10
      Top = 10
      Width = 295
      Height = 55
      TabOrder = 0
      object gvwSummary: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSumRev
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.ContentOdd = dmGlobal.BlueToggle
        Bands = <
          item
            Width = 278
          end>
        object gvwSummaryCCY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCY'
          Options.Editing = False
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwSummaryDEBET: TcxGridDBBandedColumn
          Caption = 'Debet'
          DataBinding.FieldName = 'DEBET'
          Options.Editing = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwSummaryCREDIT: TcxGridDBBandedColumn
          Caption = 'Credit'
          DataBinding.FieldName = 'CREDIT'
          Options.Editing = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = gvwSummary
      end
    end
    object cxButton1: TcxButton
      Left = 311
      Top = 10
      Width = 98
      Height = 47
      Caption = 'Calculate Forex Balancing'
      TabOrder = 1
      WordWrap = True
      OnClick = cxButton1Click
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 434
      Top = 10
      DataBinding.DataField = 'TOTALDB'
      DataBinding.DataSource = dsJRNHRev
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 434
      Top = 37
      DataBinding.DataField = 'TOTALCR'
      DataBinding.DataSource = dsJRNHRev
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
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
      Parent = dxLayoutControl3Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Control = cxGrid3
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 295
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Item2: TdxLayoutItem
      Parent = dxLayoutControl3Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 47
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl3Item3: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.Text = 'DB'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Item4: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.Text = 'CR'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl3Group2: TdxLayoutGroup
      Parent = dxLayoutControl3Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
  end
  object dxLayoutControl4: TdxLayoutControl [6]
    Left = 0
    Top = 0
    Width = 976
    Height = 184
    Align = alTop
    TabOrder = 6
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 89
      Top = 28
      DataBinding.DataField = 'JRNTYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.KeyFieldNames = 'JRNTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'JRNTYPEDESC'
        end
        item
          FieldName = 'JRNTYPE'
        end>
      Properties.ListSource = dmLookup.dsLuJrnType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxGrid5: TcxGrid
      Left = 22
      Top = 55
      Width = 931
      Height = 101
      TabOrder = 4
      object gvwJRNDetailOld: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsJrnDetail
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
          end>
        object gvwJRNDetailOldJRNID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JRNID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldJRNCD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JRNCD'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldSEQNUM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQNUM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldGLACCOUNTID: TcxGridDBBandedColumn
          Caption = 'GL A/C No'
          DataBinding.FieldName = 'GLACCOUNTID'
          RepositoryItem = dmGlobal.luGLAccountTrxNo
          Width = 78
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldGLACCOUNTCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GLACCOUNTCODE'
          Visible = False
          Width = 124
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldCCYCODE: TcxGridDBBandedColumn
          Caption = 'CCY'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 43
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldJRNDDESC: TcxGridDBBandedColumn
          Caption = 'Description'
          DataBinding.FieldName = 'JRNDDESC'
          Width = 170
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldCPID: TcxGridDBBandedColumn
          Caption = 'Cost/Profit Center'
          DataBinding.FieldName = 'CPID'
          RepositoryItem = dmGlobal.luCPCenter
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldCPCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CPCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldDC: TcxGridDBBandedColumn
          Caption = 'D/C'
          DataBinding.FieldName = 'DC'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Debet'
              ImageIndex = 0
              Value = 'D'
            end
            item
              Description = 'Credit'
              Value = 'C'
            end>
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldAMOUNT: TcxGridDBBandedColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'AMOUNT'
          HeaderAlignmentHorz = taRightJustify
          Width = 83
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldPOSTED: TcxGridDBBandedColumn
          DataBinding.FieldName = 'POSTED'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldSPOTTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SPOTTYPE'
          Visible = False
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldSPOTCCY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SPOTCCY'
          Visible = False
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldDEBET: TcxGridDBBandedColumn
          Caption = 'Debet'
          DataBinding.FieldName = 'DEBET'
          HeaderAlignmentHorz = taRightJustify
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldCREDIT: TcxGridDBBandedColumn
          Caption = 'Credit'
          DataBinding.FieldName = 'CREDIT'
          HeaderAlignmentHorz = taRightJustify
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldFXAMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FXAMOUNT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldEMPLOYEEID: TcxGridDBBandedColumn
          Caption = 'Empoyee'
          DataBinding.FieldName = 'EMPLOYEEID'
          RepositoryItem = dmGlobal.LuEmployee
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldPROJECTID: TcxGridDBBandedColumn
          Caption = 'Project'
          DataBinding.FieldName = 'PROJECTID'
          RepositoryItem = dmGlobal.LuProject
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwJRNDetailOldColumn1: TcxGridDBBandedColumn
          Caption = 'GL A/C Desc'
          DataBinding.FieldName = 'GLACCOUNTID'
          RepositoryItem = dmGlobal.LuGLAccountTrxName
          Width = 149
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGrid5Level1: TcxGridLevel
        GridView = gvwJRNDetailOld
      end
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 284
      Top = 28
      DataBinding.DataField = 'JRNCD'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 468
      Top = 28
      DataBinding.DataField = 'VDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 652
      Top = 28
      DataBinding.DataField = 'EDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object dxLayoutControl4Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl4Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Old Journal'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Journal Type'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxGrid5'
      CaptionOptions.Visible = False
      Control = cxGrid5
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 931
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Journal Code'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsJRNH
    Left = 160
    Top = 216
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 440
    Top = 160
  end
  object dsJrnExRate: TDataSource
    DataSet = cdsJRNExRate
    Left = 160
    Top = 304
  end
  object dsJrnDetail: TDataSource
    DataSet = cdsJRND
    Left = 160
    Top = 264
  end
  object dsSum: TDataSource
    DataSet = cdsSum
    Left = 160
    Top = 376
  end
  object cdsJRNH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'JRNID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryJRNH'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsJRNHAfterOpen
    BeforePost = cdsJRNHBeforePost
    OnNewRecord = cdsJRNHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 216
    object cdsJRNHJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNHJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNHVDATE: TDateTimeField
      FieldName = 'VDATE'
      OnChange = cdsJRNHVDATEChange
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHEDATE: TDateTimeField
      FieldName = 'EDATE'
      OnChange = cdsJRNHEDATEChange
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHREFFID: TLargeintField
      FieldName = 'REFFID'
    end
    object cdsJRNHACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsJRNHACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsJRNHACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsJRNHVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsJRNHVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
      Size = 10
    end
    object cdsJRNHEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsJRNHEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
      Size = 10
    end
    object cdsJRNHJRNTYPE: TStringField
      FieldName = 'JRNTYPE'
    end
    object cdsJRNHHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsJRNHTOTALDB: TFloatField
      FieldName = 'TOTALDB'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHTOTALCR: TFloatField
      FieldName = 'TOTALCR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNHEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNHqryJRNExRate: TDataSetField
      FieldName = 'qryJRNExRate'
    end
    object cdsJRNHqryJRND: TDataSetField
      FieldName = 'qryJRND'
    end
  end
  object cdsJRND: TNClientDataset
    Aggregates = <>
    DataSetField = cdsJRNHqryJRND
    Params = <>
    BeforeEdit = cdsJRNDBeforeEdit
    BeforePost = cdsJRNDBeforePost
    AfterPost = cdsJRNDAfterPost
    BeforeDelete = cdsJRNDBeforeDelete
    OnCalcFields = cdsJRNDCalcFields
    OnNewRecord = cdsJRNDNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 264
    object cdsJRNDJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNDJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNDSEQNUM: TFloatField
      FieldName = 'SEQNUM'
      Required = True
    end
    object cdsJRNDGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      OnChange = cdsJRNDGLACCOUNTIDChange
    end
    object cdsJRNDGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsJRNDCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNDJRNDDESC: TStringField
      FieldName = 'JRNDDESC'
      Size = 200
    end
    object cdsJRNDCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsJRNDCPCODE: TStringField
      FieldName = 'CPCODE'
    end
    object cdsJRNDDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsJRNDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      EditFormat = '#'
    end
    object cdsJRNDPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNDSPOTTYPE: TStringField
      FieldName = 'SPOTTYPE'
      Size = 1
    end
    object cdsJRNDSPOTCCY: TStringField
      FieldName = 'SPOTCCY'
      Size = 5
    end
    object cdsJRNDDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
    end
    object cdsJRNDEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object cdsJRNDPROJECTID: TIntegerField
      FieldName = 'PROJECTID'
    end
  end
  object cdsJRNExRate: TNClientDataset
    Aggregates = <>
    DataSetField = cdsJRNHqryJRNExRate
    Params = <>
    BeforePost = cdsJRNExRateBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 304
    object cdsJRNExRateJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNExRateJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNExRateCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsJRNExRateEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNExRateMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNExRateMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNExRateAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNExRateAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNExRateUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNExRateUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNExRateNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNExRateISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNExRateID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNExRateSPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsJRNExRateSPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
    object cdsJRNExRateSPCONACCNO: TStringField
      FieldName = 'SPCONACCNO'
      Size = 30
    end
    object cdsJRNExRateSPPOSACCNO: TStringField
      FieldName = 'SPPOSACCNO'
      Size = 30
    end
  end
  object cdsSum: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 376
    object cdsSumCCY: TStringField
      FieldName = 'CCY'
    end
    object cdsSumDEBET: TFloatField
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumCREDIT: TFloatField
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumSPCONVALUE: TFloatField
      FieldName = 'SPCONVALUE'
    end
    object cdsSumSPPOSVALUE: TFloatField
      FieldName = 'SPPOSVALUE'
    end
  end
  object cdsExRateCalc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 304
    object cdsExRateCalcCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsExRateCalcEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsExRateCalcSPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsExRateCalcSPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
    object cdsExRateCalcSPCONACCNO: TStringField
      FieldName = 'SPCONACCNO'
      Size = 30
    end
    object cdsExRateCalcSPPOSACCNO: TStringField
      FieldName = 'SPPOSACCNO'
      Size = 30
    end
  end
  object cdsSumCalc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 432
    object cdsSumCalcCCY: TStringField
      FieldName = 'CCY'
    end
    object cdsSumCalcDEBET: TFloatField
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumCalcCREDIT: TFloatField
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumCalcSPCONVALUE: TFloatField
      FieldName = 'SPCONVALUE'
    end
    object cdsSumCalcSPPOSVALUE: TFloatField
      FieldName = 'SPPOSVALUE'
    end
  end
  object cdsSysExRate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 256
    object cdsSysExRateCCYCODE: TStringField
      DisplayLabel = 'CCY'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsSysExRateEXRATE: TFloatField
      DisplayLabel = 'Ex. Rate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object dsSysExRate: TDataSource
    DataSet = cdsSysExRate
    Left = 384
    Top = 256
  end
  object cdsJRNHRev: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'JRNID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryJRNH'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsJRNHRevBeforePost
    OnNewRecord = cdsJRNHRevNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 200
    object cdsJRNHRevJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNHRevVDATE: TDateTimeField
      FieldName = 'VDATE'
      OnChange = cdsJRNHRevVDATEChange
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHRevEDATE: TDateTimeField
      FieldName = 'EDATE'
      OnChange = cdsJRNHRevEDATEChange
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHRevREFFID: TLargeintField
      FieldName = 'REFFID'
    end
    object cdsJRNHRevACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsJRNHRevACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsJRNHRevACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsJRNHRevVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsJRNHRevVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
      Size = 10
    end
    object cdsJRNHRevEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsJRNHRevEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
      Size = 10
    end
    object cdsJRNHRevJRNTYPE: TStringField
      FieldName = 'JRNTYPE'
    end
    object cdsJRNHRevHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsJRNHRevTOTALDB: TFloatField
      FieldName = 'TOTALDB'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHRevTOTALCR: TFloatField
      FieldName = 'TOTALCR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHRevCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNHRevEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object cdsJRNDRev: TNClientDataset
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsJRNDRevBeforeEdit
    BeforePost = cdsJRNDRevBeforePost
    AfterPost = cdsJRNDRevAfterPost
    BeforeDelete = cdsJRNDRevBeforeDelete
    OnCalcFields = cdsJRNDRevCalcFields
    OnNewRecord = cdsJRNDRevNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 248
    object cdsJRNDRevJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNDRevGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      OnChange = cdsJRNDRevGLACCOUNTIDChange
    end
    object cdsJRNDRevGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsJRNDRevCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNDRevJRNDDESC: TStringField
      FieldName = 'JRNDDESC'
      Size = 200
    end
    object cdsJRNDRevCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsJRNDRevCPCODE: TStringField
      FieldName = 'CPCODE'
    end
    object cdsJRNDRevDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsJRNDRevAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      EditFormat = '#'
    end
    object cdsJRNDRevPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNDRevMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNDRevMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNDRevAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNDRevAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNDRevUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNDRevUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNDRevNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNDRevISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNDRevID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNDRevSPOTTYPE: TStringField
      FieldName = 'SPOTTYPE'
      Size = 1
    end
    object cdsJRNDRevSPOTCCY: TStringField
      FieldName = 'SPOTCCY'
      Size = 5
    end
    object cdsJRNDRevDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDRevCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDRevFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
    end
    object cdsJRNDRevEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object cdsJRNDRevPROJECTID: TIntegerField
      FieldName = 'PROJECTID'
    end
  end
  object cdsJRNExRateRev: TNClientDataset
    Aggregates = <>
    Params = <>
    BeforePost = cdsJRNExRateRevBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 304
    object cdsJRNExRateRevJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNExRateRevCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsJRNExRateRevEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNExRateRevMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNExRateRevMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNExRateRevAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNExRateRevAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNExRateRevUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNExRateRevUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNExRateRevNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNExRateRevISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNExRateRevID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNExRateRevSPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsJRNExRateRevSPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
    object cdsJRNExRateRevSPCONACCNO: TStringField
      FieldName = 'SPCONACCNO'
      Size = 30
    end
    object cdsJRNExRateRevSPPOSACCNO: TStringField
      FieldName = 'SPPOSACCNO'
      Size = 30
    end
  end
  object cdsSumRev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 368
    object cdsSumRevCCY: TStringField
      FieldName = 'CCY'
    end
    object cdsSumRevDEBET: TFloatField
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumRevCREDIT: TFloatField
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumRevSPCONVALUE: TFloatField
      FieldName = 'SPCONVALUE'
    end
    object cdsSumRevSPPOSVALUE: TFloatField
      FieldName = 'SPPOSVALUE'
    end
  end
  object cdsSysExRateRev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 248
    object cdsSysExRateRevCCYCODE: TStringField
      DisplayLabel = 'CCY'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsSysExRateRevEXRATE: TFloatField
      DisplayLabel = 'Ex. Rate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object cdsExRateCalcRev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 304
    object cdsExRateCalcRevCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsExRateCalcRevEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsExRateCalcRevSPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsExRateCalcRevSPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
    object cdsExRateCalcRevSPCONACCNO: TStringField
      FieldName = 'SPCONACCNO'
      Size = 30
    end
    object cdsExRateCalcRevSPPOSACCNO: TStringField
      FieldName = 'SPPOSACCNO'
      Size = 30
    end
  end
  object dsJRNHRev: TDataSource
    DataSet = cdsJRNHRev
    Left = 544
    Top = 200
  end
  object dsJRNDRev: TDataSource
    DataSet = cdsJRNDRev
    Left = 544
    Top = 248
  end
  object dsJRNExRateRev: TDataSource
    DataSet = cdsJRNExRateRev
    Left = 544
    Top = 304
  end
  object dsSumRev: TDataSource
    DataSet = cdsSumRev
    Left = 544
    Top = 368
  end
  object dsSysExRateRev: TDataSource
    DataSet = cdsSysExRateRev
    Left = 736
    Top = 248
  end
  object cdsSumCalcRev: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 392
    object cdsSumCalcRevCCY: TStringField
      FieldName = 'CCY'
    end
    object cdsSumCalcRevDEBET: TFloatField
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumCalcRevCREDIT: TFloatField
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumCalcRevSPCONVALUE: TFloatField
      FieldName = 'SPCONVALUE'
    end
    object cdsSumCalcRevSPPOSVALUE: TFloatField
      FieldName = 'SPPOSVALUE'
    end
  end
  object cdsJRNHCan: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'JRNID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryJRNH'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsJRNHRevBeforePost
    OnNewRecord = cdsJRNHRevNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 768
    Top = 448
    object cdsJRNHCanJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNHCanVDATE: TDateTimeField
      FieldName = 'VDATE'
      OnChange = cdsJRNHRevVDATEChange
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHCanEDATE: TDateTimeField
      FieldName = 'EDATE'
      OnChange = cdsJRNHRevEDATEChange
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHCanREFFID: TLargeintField
      FieldName = 'REFFID'
    end
    object cdsJRNHCanACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsJRNHCanACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsJRNHCanACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsJRNHCanVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsJRNHCanVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
      Size = 10
    end
    object cdsJRNHCanEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsJRNHCanEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
      Size = 10
    end
    object cdsJRNHCanJRNTYPE: TStringField
      FieldName = 'JRNTYPE'
    end
    object cdsJRNHCanHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsJRNHCanTOTALDB: TFloatField
      FieldName = 'TOTALDB'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHCanTOTALCR: TFloatField
      FieldName = 'TOTALCR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHCanCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNHCanEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object cdsJRNDCan: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 768
    Top = 496
    object cdsJRNDCanJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNDCanGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
    end
    object cdsJRNDCanGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsJRNDCanCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNDCanJRNDDESC: TStringField
      FieldName = 'JRNDDESC'
      Size = 200
    end
    object cdsJRNDCanCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsJRNDCanCPCODE: TStringField
      FieldName = 'CPCODE'
    end
    object cdsJRNDCanDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsJRNDCanAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      EditFormat = '#'
    end
    object cdsJRNDCanPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNDCanMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNDCanMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNDCanAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNDCanAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNDCanUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNDCanUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNDCanNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNDCanISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNDCanID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNDCanSPOTTYPE: TStringField
      FieldName = 'SPOTTYPE'
      Size = 1
    end
    object cdsJRNDCanSPOTCCY: TStringField
      FieldName = 'SPOTCCY'
      Size = 5
    end
    object cdsJRNDCanDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDCanCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDCanFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
    end
    object cdsJRNDCanEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object cdsJRNDCanPROJECTID: TIntegerField
      FieldName = 'PROJECTID'
    end
  end
  object cdsJRNExRateCan: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 768
    Top = 544
    object cdsJRNExRateCanJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNExRateCanCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsJRNExRateCanEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNExRateCanMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNExRateCanMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNExRateCanAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNExRateCanAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNExRateCanUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNExRateCanUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNExRateCanNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNExRateCanISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNExRateCanID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNExRateCanSPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsJRNExRateCanSPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
    object cdsJRNExRateCanSPCONACCNO: TStringField
      FieldName = 'SPCONACCNO'
      Size = 30
    end
    object cdsJRNExRateCanSPPOSACCNO: TStringField
      FieldName = 'SPPOSACCNO'
      Size = 30
    end
  end
end
