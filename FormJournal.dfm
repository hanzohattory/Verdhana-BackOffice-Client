inherited frmJournal: TfrmJournal
  Caption = 'Journal'
  ClientHeight = 571
  ClientWidth = 976
  ExplicitWidth = 982
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 976
    Height = 151
    Align = alTop
    ExplicitWidth = 976
    ExplicitHeight = 151
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
      Properties.ListSource = dmLookup.dsLuJournalType
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
      Height = 130
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
      Height = 130
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
      ControlOptions.OriginalHeight = 130
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
      ControlOptions.OriginalHeight = 130
      ControlOptions.OriginalWidth = 216
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 502
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
    Top = 551
    Width = 976
    ExplicitTop = 551
    ExplicitWidth = 976
  end
  inherited tabEditorData: TTabSet
    Top = 481
    Width = 976
    ExplicitTop = 481
    ExplicitWidth = 976
  end
  object cxGrid2: TcxGrid [4]
    Left = 0
    Top = 151
    Width = 976
    Height = 212
    Align = alClient
    TabOrder = 4
    object gvwJRNDetail: TcxGridDBBandedTableView
      PopupMenu = PopupMenu
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsJrnDetail
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
    Top = 363
    Width = 976
    Height = 118
    Align = alBottom
    TabOrder = 5
    object cxGrid3: TcxGrid
      Left = 10
      Top = 10
      Width = 295
      Height = 87
      TabOrder = 0
      object gvwSummary: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSum
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'DEBET'
            Column = gvwSummaryDEBET
          end
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'CREDIT'
            Column = gvwSummaryCREDIT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
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
      DataBinding.DataSource = dsSubject
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
      Parent = dxLayoutControl3Group1
      Control = cxGrid3
      ControlOptions.OriginalHeight = 87
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
  inherited dsSubject: TDataSource
    DataSet = cdsJRNH
    Left = 32
    Top = 208
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 416
    Top = 8
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsJrnExRate: TDataSource
    DataSet = cdsJRNExRate
    Left = 192
    Top = 208
  end
  object dsJrnDetail: TDataSource
    DataSet = cdsJRND
    Left = 32
    Top = 256
  end
  object dsSum: TDataSource
    DataSet = cdsSum
    Left = 192
    Top = 256
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
    Left = 112
    Top = 208
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
    Left = 112
    Top = 256
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
    Left = 272
    Top = 208
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
    Left = 272
    Top = 256
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
    Left = 352
    Top = 264
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
    Left = 352
    Top = 208
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
    Left = 432
    Top = 208
  end
  object PopupMenu: TPopupMenu
    Left = 496
    Top = 280
    object UploadJournalManual1: TMenuItem
      Caption = 'Upload From Excel File'
      OnClick = UploadJournalManual1Click
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.xls|Excel File|*.xlsx'
    Left = 501
    Top = 211
  end
end
