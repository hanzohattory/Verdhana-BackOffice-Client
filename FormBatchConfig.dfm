inherited frmBatchConfig: TfrmBatchConfig
  Caption = 'Batch Config'
  ClientHeight = 339
  ClientWidth = 499
  ExplicitWidth = 505
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 499
    Height = 249
    ExplicitWidth = 499
    ExplicitHeight = 195
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 185
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CAT_DESC'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 251
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 101
      Top = 10
      RepositoryItem = dmGlobal.luBatchCategory
      DataBinding.DataField = 'CAT_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 78
    end
    object luPeriod: TcxDBImageComboBox [2]
      Left = 101
      Top = 91
      RepositoryItem = dmGlobal.luBatchPeriod
      DataBinding.DataField = 'PERIODIC'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.OnChange = luPeriodPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 95
    end
    object luProcDayType: TcxDBImageComboBox [3]
      Left = 101
      Top = 118
      RepositoryItem = dmGlobal.luBatchDayType
      DataBinding.DataField = 'DAYPROCTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.OnChange = luProcDayTypePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 256
      Top = 118
      DataBinding.DataField = 'PROCDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 68
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 101
      Top = 145
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'AUTO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 28
    end
    object cxDBTimeEdit1: TcxDBTimeEdit [6]
      Left = 101
      Top = 37
      DataBinding.DataField = 'PROCTIME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 78
    end
    object cxDBSpinEdit1: TcxDBSpinEdit [7]
      Left = 101
      Top = 64
      DataBinding.DataField = 'SEQNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 78
    end
    object cxDBCheckBox2: TcxDBCheckBox [8]
      Left = 215
      Top = 145
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'REPEAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 28
    end
    object cxDBTimeEdit2: TcxDBTimeEdit [9]
      Left = 101
      Top = 172
      DataBinding.DataField = 'NOTI_TIME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Batch Category'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Process Period'
      Parent = dxLayoutControl1Group1
      Control = luPeriod
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Process Day Type'
      Parent = lgProcDayType
      Control = luProcDayType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcDate: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Parent = lgProcDayType
      Visible = False
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgProcDayType: TdxLayoutGroup
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
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Auto Scheduler'
      Parent = dxLayoutControl1Group5
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Process Time'
      Parent = dxLayoutControl1Group4
      Control = cxDBTimeEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Seq Number'
      Parent = dxLayoutControl1Group1
      Control = cxDBSpinEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Repeat Process'
      Parent = dxLayoutControl1Group5
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Notification Time'
      Parent = dxLayoutGroup1
      Control = cxDBTimeEdit2
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 270
    Width = 499
    ExplicitTop = 216
    ExplicitWidth = 499
    inherited dbNavLog: TDBNavigator
      Left = 385
      Hints.Strings = ()
      ExplicitLeft = 385
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
    Top = 319
    Width = 499
    ExplicitTop = 265
    ExplicitWidth = 499
  end
  inherited tabEditorData: TTabSet
    Top = 249
    Width = 499
    ExplicitTop = 195
    ExplicitWidth = 499
  end
  inherited dsSubject: TDataSource
    DataSet = frmBatchConfigList.cdsBatchConfig
    Left = 344
    Top = 48
  end
end
