inherited frmFixedAssetGroup: TfrmFixedAssetGroup
  Caption = 'Fixed Asset Group'
  ClientHeight = 391
  ClientWidth = 503
  ExplicitWidth = 509
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 503
    Height = 301
    ExplicitWidth = 503
    ExplicitHeight = 301
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 114
      Top = 10
      DataBinding.DataField = 'ASSET_GROUP_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 375
    end
    object cbDeprecMethod: TcxDBImageComboBox [1]
      Left = 114
      Top = 37
      RepositoryItem = dmGlobal.luAssetDepreciationMethod
      DataBinding.DataField = 'DEPRECIATION_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cbDeprecMethodExit
      Width = 375
    end
    object cbDeprecTable: TcxDBLookupComboBox [2]
      Left = 114
      Top = 64
      RepositoryItem = dmGlobal.luAssetDeprecTable
      DataBinding.DataField = 'DEPRECIATION_TABLE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 191
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 114
      Top = 91
      DataBinding.DataField = 'ECONOMIC_LIFE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 80
    end
    object cxDBMemo1: TcxDBMemo [4]
      Left = 114
      Top = 118
      DataBinding.DataField = 'ASSET_GROUP_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 59
      Width = 375
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
      Left = 149
      Top = 201
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'ASSET_GLACC'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 108
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [6]
      Left = 149
      Top = 228
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'ACCUM_DEPREC_GLACC'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 108
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [7]
      Left = 149
      Top = 255
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'DEPREC_GLACC'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 108
    end
    object cxLabel1: TcxLabel [8]
      Left = 200
      Top = 91
      Caption = 'Year'
      Style.HotTrack = False
      Properties.Alignment.Vert = taBottomJustify
      AnchorY = 108
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Depreciation Method'
      Parent = dxLayoutGroup1
      Control = cbDeprecMethod
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Depreciation Table'
      Parent = dxLayoutGroup1
      Control = cbDeprecTable
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Life'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Asset GL Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Accum. Depr. GL Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Depreciation GL Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxLabel1
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
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'GL Account Code'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 5
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 322
    Width = 503
    ExplicitTop = 322
    ExplicitWidth = 503
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
  end
  inherited StatusBar: TdxStatusBar
    Top = 371
    Width = 503
    ExplicitTop = 371
    ExplicitWidth = 503
  end
  inherited tabEditorData: TTabSet
    Top = 301
    Width = 503
    ExplicitTop = 301
    ExplicitWidth = 503
  end
  inherited dsSubject: TDataSource
    DataSet = frmFixedAssetGroupList.cdsAssetGroup
    Left = 464
    Top = 64
  end
end
