inherited frmJournalReverse: TfrmJournalReverse
  Caption = 'Reverse Journal'
  ClientHeight = 645
  ClientWidth = 976
  ExplicitWidth = 982
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Top = 177
    Width = 976
    Height = 146
    Align = alTop
    ExplicitTop = 56
    ExplicitWidth = 976
    ExplicitHeight = 146
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 283
      Top = 10
      TabStop = False
      DataBinding.DataField = 'JRNCD'
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
        DataController.DataSource = dsJrnExRate
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
        DataController.DataSource = dsSysExRate
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
    Top = 576
    Width = 976
    ExplicitTop = 502
    ExplicitWidth = 976
    inherited dbNavLog: TDBNavigator
      Left = 862
      Hints.Strings = ()
      ExplicitLeft = 862
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 625
    Width = 976
    ExplicitTop = 551
    ExplicitWidth = 976
  end
  inherited tabEditorData: TTabSet
    Top = 555
    Width = 976
    ExplicitTop = 481
    ExplicitWidth = 976
  end
  object cxGrid2: TcxGrid [4]
    Left = 0
    Top = 323
    Width = 976
    Height = 159
    Align = alClient
    TabOrder = 4
    ExplicitTop = 240
    ExplicitHeight = 123
    object gvwJRNDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsJRNDTmp
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
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwJRNDetailCCYCODE: TcxGridDBBandedColumn
        Caption = 'CCY'
        DataBinding.FieldName = 'CCYCODE'
        RepositoryItem = dmGlobal.luCurrency
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwJRNDetailJRNDDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'JRNDDESC'
        Width = 175
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
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwJRNDetailAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwJRNDetailGLACCOUNTID1: TcxGridDBBandedColumn
        Caption = 'GL A/C Desc'
        DataBinding.FieldName = 'GLACCOUNTID'
        RepositoryItem = dmGlobal.LuGLAccountTrxName
        Width = 170
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwJRNDetailDEBET: TcxGridDBBandedColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'DEBET'
        HeaderAlignmentHorz = taRightJustify
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwJRNDetailCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        HeaderAlignmentHorz = taRightJustify
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwJRNDetailEMPLOYEEID: TcxGridDBBandedColumn
        Caption = 'Employee'
        DataBinding.FieldName = 'EMPLOYEEID'
        RepositoryItem = dmGlobal.LuEmployee
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwJRNDetailPROJECTID: TcxGridDBBandedColumn
        Caption = 'Project'
        DataBinding.FieldName = 'PROJECTID'
        RepositoryItem = dmGlobal.LuProject
        Width = 67
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
    Top = 482
    Width = 976
    Height = 73
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 408
    object cxGrid3: TcxGrid
      Left = 10
      Top = 10
      Width = 295
      Height = 55
      TabOrder = 0
      object gvwSummary: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSum
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
      DataBinding.DataSource = dsSubject
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
      DataBinding.DataSource = dsSubject
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
      Parent = dxLayoutControl3Group1
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
    object dxLayoutControl3Group1: TdxLayoutGroup
      Parent = dxLayoutControl3Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
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
    Height = 177
    Align = alTop
    BevelKind = bkTile
    TabOrder = 6
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 308
      Top = 28
      DataBinding.DataField = 'JRNCD'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 492
      Top = 28
      DataBinding.DataField = 'VDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxGrid5: TcxGrid
      Left = 10
      Top = 67
      Width = 935
      Height = 93
      TabOrder = 3
      object gvwOldJRNDetail: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsJrnDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
          end>
        object gvwOldJRNDetailJRNID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JRNID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailJRNCD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JRNCD'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailSEQNUM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQNUM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailGLACCOUNTID: TcxGridDBBandedColumn
          Caption = 'GL A/C No'
          DataBinding.FieldName = 'GLACCOUNTID'
          RepositoryItem = dmGlobal.luGLAccountTrxNo
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailGLACCOUNTCODE: TcxGridDBBandedColumn
          Caption = 'GL A/C Desc'
          DataBinding.FieldName = 'GLACCOUNTCODE'
          RepositoryItem = dmGlobal.LuGLAccountTrxName
          Width = 163
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailCCYCODE: TcxGridDBBandedColumn
          Caption = 'CCY'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailJRNDDESC: TcxGridDBBandedColumn
          Caption = 'Description'
          DataBinding.FieldName = 'JRNDDESC'
          Width = 160
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailCPID: TcxGridDBBandedColumn
          Caption = 'Cost/Profit Center'
          DataBinding.FieldName = 'CPID'
          RepositoryItem = dmGlobal.luCPCenter
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailCPCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CPCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailDC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DC'
          Width = 46
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailAMOUNT: TcxGridDBBandedColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'AMOUNT'
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailPOSTED: TcxGridDBBandedColumn
          DataBinding.FieldName = 'POSTED'
          Visible = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailSPOTTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SPOTTYPE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailSPOTCCY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SPOTCCY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailDEBET: TcxGridDBBandedColumn
          Caption = 'Debet'
          DataBinding.FieldName = 'DEBET'
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailCREDIT: TcxGridDBBandedColumn
          Caption = 'Credit'
          DataBinding.FieldName = 'CREDIT'
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailFXAMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FXAMOUNT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailEMPLOYEEID: TcxGridDBBandedColumn
          Caption = 'Employee'
          DataBinding.FieldName = 'EMPLOYEEID'
          RepositoryItem = dmGlobal.LuEmployee
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwOldJRNDetailPROJECTID: TcxGridDBBandedColumn
          Caption = 'Project'
          DataBinding.FieldName = 'PROJECTID'
          RepositoryItem = dmGlobal.LuProject
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
      end
      object cxGrid5Level1: TcxGridLevel
        GridView = gvwOldJRNDetail
      end
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 89
      Top = 28
      DataBinding.DataField = 'JRNTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
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
      CaptionOptions.Text = 'Old Journal Input'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Journal Code'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Value Date'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl4Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxGrid5'
      CaptionOptions.Visible = False
      Control = cxGrid5
      ControlOptions.OriginalHeight = 93
      ControlOptions.OriginalWidth = 935
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Journal Type'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsJRNH
    Left = 160
    Top = 216
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 464
    Top = 288
  end
  object dsJrnExRate: TDataSource
    DataSet = cdsJRNExRate
    Left = 160
    Top = 312
  end
  object dsJrnDetail: TDataSource
    DataSet = cdsJRND
    Left = 160
    Top = 264
  end
  object dsSum: TDataSource
    DataSet = cdsSum
    Left = 160
    Top = 360
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
    Top = 312
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
    Top = 360
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
    Top = 312
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
  object cdsJRNDTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsJRNDTmpCalcFields
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 424
    object cdsJRNDTmpJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNDTmpJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNDTmpSEQNUM: TFloatField
      FieldName = 'SEQNUM'
      Required = True
    end
    object cdsJRNDTmpGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
    end
    object cdsJRNDTmpGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsJRNDTmpCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNDTmpJRNDDESC: TStringField
      FieldName = 'JRNDDESC'
      Size = 200
    end
    object cdsJRNDTmpCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsJRNDTmpCPCODE: TStringField
      FieldName = 'CPCODE'
    end
    object cdsJRNDTmpDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsJRNDTmpAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      EditFormat = '#'
    end
    object cdsJRNDTmpPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNDTmpMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNDTmpMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNDTmpAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNDTmpAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNDTmpUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNDTmpUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNDTmpNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNDTmpISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNDTmpID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNDTmpSPOTTYPE: TStringField
      FieldName = 'SPOTTYPE'
      Size = 1
    end
    object cdsJRNDTmpSPOTCCY: TStringField
      FieldName = 'SPOTCCY'
      Size = 5
    end
    object cdsJRNDTmpDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDTmpCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsJRNDTmpFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
    end
    object cdsJRNDTmpEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object cdsJRNDTmpPROJECTID: TIntegerField
      FieldName = 'PROJECTID'
    end
  end
  object cdsJRNHTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 376
    object cdsJRNHTmpJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNHTmpJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNHTmpVDATE: TDateTimeField
      FieldName = 'VDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHTmpEDATE: TDateTimeField
      FieldName = 'EDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsJRNHTmpREFFID: TLargeintField
      FieldName = 'REFFID'
    end
    object cdsJRNHTmpACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsJRNHTmpACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsJRNHTmpACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsJRNHTmpVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsJRNHTmpVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
      Size = 10
    end
    object cdsJRNHTmpEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsJRNHTmpEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
      Size = 10
    end
    object cdsJRNHTmpJRNTYPE: TStringField
      FieldName = 'JRNTYPE'
    end
    object cdsJRNHTmpHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsJRNHTmpTOTALDB: TFloatField
      FieldName = 'TOTALDB'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHTmpTOTALCR: TFloatField
      FieldName = 'TOTALCR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHTmpCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNHTmpEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsJRNHTmpMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNHTmpMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNHTmpAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNHTmpAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNHTmpUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNHTmpUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNHTmpNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNHTmpISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNHTmpID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNHTmpPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
  end
  object dsJRNHTmp: TDataSource
    DataSet = cdsJRNHTmp
    Left = 624
    Top = 376
  end
  object dsJRNDTmp: TDataSource
    DataSet = cdsJRNDTmp
    Left = 624
    Top = 424
  end
end
