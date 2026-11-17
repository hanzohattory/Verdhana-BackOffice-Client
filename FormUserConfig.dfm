inherited frmUserConfig: TfrmUserConfig
  Caption = 'User Configuration'
  ClientHeight = 531
  ExplicitWidth = 535
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 124
    Align = alTop
    ExplicitHeight = 124
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 67
      Top = 10
      DataBinding.DataField = 'USERID'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 265
      Top = 10
      DataBinding.DataField = 'APPID'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 67
      Top = 37
      DataBinding.DataField = 'USERNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 319
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
      Left = 67
      Top = 64
      DataBinding.DataField = 'HARDLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
      Left = 265
      Top = 64
      DataBinding.DataField = 'SOFTLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [5]
      Left = 67
      Top = 91
      DataBinding.DataField = 'TEMPLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'User ID'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Application ID'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'User Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
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
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Hard Limit'
      Parent = dxLayoutControl1Group4
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Soft Limit'
      Parent = dxLayoutControl1Group4
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Temp Limit'
      Parent = dxLayoutGroup1
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 462
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
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
    Top = 511
  end
  inherited tabEditorData: TTabSet
    Top = 441
  end
  object dxLayoutControl3: TdxLayoutControl [4]
    Left = 233
    Top = 124
    Width = 63
    Height = 317
    Align = alLeft
    BevelKind = bkTile
    TabOrder = 4
    ExplicitTop = 73
    ExplicitHeight = 217
    object btnAdd: TcxButton
      Left = 10
      Top = 72
      Width = 39
      Height = 25
      Hint = 'Add'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnAddClick
    end
    object btnRemove: TcxButton
      Left = 10
      Top = 103
      Width = 15
      Height = 25
      Hint = 'Remove'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnRemoveClick
    end
    object btnRemoveAll: TcxButton
      Left = 10
      Top = 41
      Width = 39
      Height = 25
      Hint = 'Remove All'
      Caption = '<<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnRemoveAllClick
    end
    object btnAddAll: TcxButton
      Left = 10
      Top = 10
      Width = 39
      Height = 25
      Hint = 'Add All'
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnAddAllClick
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
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnAdd
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnRemove
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnRemoveAll
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnAddAll
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object grdSource: TcxGrid [5]
    Left = 0
    Top = 124
    Width = 233
    Height = 317
    Align = alLeft
    TabOrder = 5
    ExplicitTop = 73
    ExplicitHeight = 217
    object gvwSource: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAvailableGroup
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      object gvwSourceGROUPID: TcxGridDBColumn
        Caption = 'Available Group'
        DataBinding.FieldName = 'GROUPID'
        Width = 188
      end
    end
    object grdSourceLevel1: TcxGridLevel
      GridView = gvwSource
    end
  end
  object grdTarget: TcxGrid [6]
    Left = 296
    Top = 124
    Width = 233
    Height = 317
    Align = alClient
    TabOrder = 6
    ExplicitTop = 73
    ExplicitHeight = 217
    object gvwTarget: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsUserGroup
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      object gvwTargetGROUPID: TcxGridDBColumn
        Caption = 'Selected Group'
        DataBinding.FieldName = 'GROUPID'
        Width = 200
      end
    end
    object grdTargetLevel1: TcxGridLevel
      GridView = gvwTarget
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmUserConfigList.cdsManageUser
    Left = 264
    Top = 296
  end
  object dsUserGroup: TDataSource
    DataSet = frmUserConfigList.cdsManageUserGroup
    Left = 352
    Top = 296
  end
  object cdsAvailableGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 188
    object cdsAvailableGroupGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
  end
  object dsAvailableGroup: TDataSource
    DataSet = cdsAvailableGroup
    Left = 104
    Top = 236
  end
end
