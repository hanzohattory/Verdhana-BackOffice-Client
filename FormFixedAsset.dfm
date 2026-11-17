inherited frmFixedAsset: TfrmFixedAsset
  Caption = 'Fixed Asset'
  ClientHeight = 460
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 524
    Height = 370
    ExplicitWidth = 524
    ExplicitHeight = 370
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 91
      Top = 10
      DataBinding.DataField = 'ASSET_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 262
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 389
      Top = 10
      DataBinding.DataField = 'ASSET_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 91
      Top = 37
      RepositoryItem = dmGlobal.luAssetGroup
      DataBinding.DataField = 'ASSET_GROUP'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 419
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 91
      Top = 64
      DataBinding.DataField = 'PURCHASE_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 91
      Top = 91
      DataBinding.DataField = 'BUY_PRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 91
      Top = 118
      DataBinding.DataField = 'SALVAGE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 91
      Top = 145
      DataBinding.DataField = 'ECONOMIC_LIFE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 86
    end
    object cxDBTextEdit6: TcxDBTextEdit [7]
      Left = 91
      Top = 172
      DataBinding.DataField = 'LOCATION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [8]
      Left = 328
      Top = 64
      DataBinding.DataField = 'ACCUM_DEPRECIATION'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [9]
      Left = 328
      Top = 91
      DataBinding.DataField = 'ACCUM_DEPRECIATION_YTD'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [10]
      Left = 328
      Top = 118
      DataBinding.DataField = 'CALC_DATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [11]
      Left = 328
      Top = 145
      DataBinding.DataField = 'BOOK_VALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [12]
      Left = 328
      Top = 172
      DataBinding.DataField = 'MONTHLY_DEPRECIATION'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cbDeprecMethod: TcxDBImageComboBox [13]
      Left = 91
      Top = 199
      RepositoryItem = dmGlobal.luAssetDepreciationMethod
      DataBinding.DataField = 'DEPRECIATION_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      OnExit = cbDeprecMethodExit
      Width = 346
    end
    object cbDeprecTable: TcxDBLookupComboBox [14]
      Left = 91
      Top = 226
      RepositoryItem = dmGlobal.luAssetDeprecTable
      DataBinding.DataField = 'DEPRECIATION_TABLE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 145
    end
    object cxDBDateEdit3: TcxDBDateEdit [15]
      Left = 316
      Top = 226
      DataBinding.DataField = 'DISPOSED_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [16]
      Left = 127
      Top = 271
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'ASSET_GLACC'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 109
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [17]
      Left = 127
      Top = 298
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'ACCUM_DEPREC_GLACC'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 109
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [18]
      Left = 127
      Top = 325
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'DEPREC_GLACC'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 109
    end
    object cxLabel1: TcxLabel [19]
      Left = 183
      Top = 145
      Caption = 'Year'
      Style.HotTrack = False
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Purchased Date'
      Parent = dxLayoutControl1Group10
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buying Price'
      Parent = dxLayoutControl1Group10
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Salvage'
      Parent = dxLayoutControl1Group10
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Life'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Location'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Life to Date Depr.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Year to Date Depr.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit8
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
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calculation Date Start'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Book Value'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Monthly Depr.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Method'
      Parent = dxLayoutGroup1
      Control = cbDeprecMethod
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Table'
      Parent = dxLayoutControl1Group8
      Control = cbDeprecTable
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Disposed Date'
      Parent = dxLayoutControl1Group8
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Asset GL Acc.'
      Parent = dxLayoutControl1Group9
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Accum Depr. GL Acc.'
      Parent = dxLayoutControl1Group9
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Depreciation GL Acc.'
      Parent = dxLayoutControl1Group9
      Control = cxDBLookupComboBox5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'GL Accoount Code'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group6
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 391
    Width = 524
    ExplicitTop = 391
    ExplicitWidth = 524
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
    Top = 440
    Width = 524
    ExplicitTop = 440
    ExplicitWidth = 524
  end
  inherited tabEditorData: TTabSet
    Top = 370
    Width = 524
    ExplicitTop = 370
    ExplicitWidth = 524
  end
  inherited dsSubject: TDataSource
    DataSet = frmFixedAssetList.cdsAsset
    Left = 464
    Top = 32
  end
end
