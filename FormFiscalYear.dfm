inherited frmFiscalYear: TfrmFiscalYear
  Caption = 'Fiscal Year'
  ClientWidth = 687
  ExplicitWidth = 693
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 687
    Height = 100
    Align = alTop
    ExplicitWidth = 687
    ExplicitHeight = 100
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 65
      Top = 10
      DataBinding.DataField = 'FISCALYEARCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 110
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 267
      Top = 10
      DataBinding.DataField = 'FISCALYEARNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 406
    end
    object dtStartDate: TcxDBDateEdit [2]
      Left = 65
      Top = 37
      DataBinding.DataField = 'STARTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object dtEndDate: TcxDBDateEdit [3]
      Left = 220
      Top = 37
      DataBinding.DataField = 'ENDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 100
    end
    object btnMonthlyPeriod: TcxButton [4]
      Left = 10
      Top = 64
      Width = 140
      Height = 25
      Caption = 'Create Monthly Periods'
      TabOrder = 5
      OnClick = btnMonthlyPeriodClick
    end
    object btn3MonthPeriod: TcxButton [5]
      Left = 156
      Top = 64
      Width = 140
      Height = 25
      Caption = 'Create 3 Months Periods'
      TabOrder = 6
      OnClick = btn3MonthPeriodClick
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
      Left = 362
      Top = 37
      RepositoryItem = dmGlobal.luGLPeriodStatus
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fiscal Year Name'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Start Date'
      Parent = dxLayoutControl1Group2
      Control = dtStartDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'End Date'
      Parent = dxLayoutControl1Group2
      Control = dtEndDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = btnMonthlyPeriod
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = btn3MonthPeriod
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Parent = dxLayoutControl1Group2
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Width = 687
    ExplicitWidth = 687
    inherited dbNavLog: TDBNavigator
      Left = 573
      Hints.Strings = ()
      ExplicitLeft = 573
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
    Width = 687
    ExplicitWidth = 687
  end
  inherited tabEditorData: TTabSet
    Width = 687
    ExplicitWidth = 687
  end
  object grdFiscalPeriod: TcxGrid [4]
    Left = 0
    Top = 100
    Width = 687
    Height = 190
    Align = alClient
    TabOrder = 4
    object gvwFiscalPeriod: TcxGridDBTableView
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
      DataController.DataSource = dsFiscalPeriod
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
      object gvwFiscalPeriodPERIODCODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'PERIODCODE'
      end
      object gvwFiscalPeriodPERIODNAME: TcxGridDBColumn
        Caption = 'Period Name'
        DataBinding.FieldName = 'PERIODNAME'
        Width = 242
      end
      object gvwFiscalPeriodSTARTDATE: TcxGridDBColumn
        Caption = 'Start of Period'
        DataBinding.FieldName = 'STARTDATE'
        Width = 76
      end
      object gvwFiscalPeriodENDDATE: TcxGridDBColumn
        Caption = 'End of Period'
        DataBinding.FieldName = 'ENDDATE'
        Width = 70
      end
      object gvwFiscalPeriodSPECIAL: TcxGridDBColumn
        Caption = 'Opening/Closing Period'
        DataBinding.FieldName = 'SPECIAL'
        RepositoryItem = dmGlobal.chkStandard
        Width = 117
      end
      object gvwFiscalPeriodSTATUS: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luGLPeriodStatus
        Width = 44
      end
    end
    object grdFiscalPeriodLevel1: TcxGridLevel
      GridView = gvwFiscalPeriod
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsFiscalYear
    Left = 520
    Top = 32
  end
  object dsFiscalPeriod: TDataSource
    DataSet = cdsFiscalPeriod
    Left = 616
    Top = 32
  end
  object cdsFiscalPeriod: TNClientDataset
    Aggregates = <>
    DataSetField = cdsFiscalYearqryFiscalPeriod
    Params = <>
    BeforePost = cdsFiscalPeriodBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 160
    object cdsFiscalPeriodPERIODID: TLargeintField
      FieldName = 'PERIODID'
      Required = True
    end
    object cdsFiscalPeriodPERIODCODE: TStringField
      FieldName = 'PERIODCODE'
      Required = True
      Size = 10
    end
    object cdsFiscalPeriodPERIODNAME: TStringField
      FieldName = 'PERIODNAME'
      Size = 80
    end
    object cdsFiscalPeriodSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsFiscalPeriodENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsFiscalPeriodFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsFiscalPeriodSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsFiscalPeriodSPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 1
    end
    object cdsFiscalPeriodMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsFiscalPeriodMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsFiscalPeriodAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsFiscalPeriodAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsFiscalPeriodUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsFiscalPeriodUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsFiscalPeriodNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsFiscalPeriodISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsFiscalPeriodID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsFiscalYear: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'FISCALYEARID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryFiscalYear'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsFiscalYearBeforePost
    OnNewRecord = cdsFiscalYearNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 160
    object cdsFiscalYearFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsFiscalYearFISCALYEARCODE: TStringField
      FieldName = 'FISCALYEARCODE'
      Required = True
      Size = 10
    end
    object cdsFiscalYearFISCALYEARNAME: TStringField
      FieldName = 'FISCALYEARNAME'
      Size = 80
    end
    object cdsFiscalYearSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsFiscalYearENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsFiscalYearSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsFiscalYearMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsFiscalYearMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsFiscalYearAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsFiscalYearAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsFiscalYearUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsFiscalYearUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsFiscalYearNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsFiscalYearISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsFiscalYearID: TLargeintField
      FieldName = 'ID'
    end
    object cdsFiscalYearqryFiscalPeriod: TDataSetField
      FieldName = 'qryFiscalPeriod'
    end
  end
end
