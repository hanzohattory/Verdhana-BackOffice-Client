inherited frmGLAccountGroup: TfrmGLAccountGroup
  Caption = 'GL Group Account'
  ClientHeight = 232
  ExplicitWidth = 535
  ExplicitHeight = 261
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 142
    ExplicitHeight = 99
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 79
      Top = 10
      DataBinding.DataField = 'GROUPCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 79
      Top = 37
      DataBinding.DataField = 'GROUPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 434
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 79
      Top = 64
      RepositoryItem = dmGlobal.luGroupAccount
      DataBinding.DataField = 'GROUPPARENTID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object dxDBLookupTreeView1: TdxDBLookupTreeView [3]
      Left = 275
      Top = 64
      Width = 145
      Height = 21
      CanSelectParents = True
      Ctl3D = True
      DropDownRows = 10
      DropDownWidth = 500
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      TabStop = True
      Text = 'dxDBLookupTreeView1'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'GROUPDESC'
      DividedChar = '.'
      ListSource = dmLookup.dsLuGroupAccount
      KeyField = 'GROUPID'
      ListField = 'GROUPCODE'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'GROUPPARENTID'
      RootValue = Null
      StateIndexField = 'GROUPID'
      TextStyle = tvtsShort
      AssignField = 'GROUPID'
      DataField = 'GROUPPARENTID'
      DataSource = dsSubject
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [4]
      Left = 79
      Top = 91
      RepositoryItem = dmGlobal.luGLCategory
      DataBinding.DataField = 'CATEGORY'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 434
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group Parent'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group Parent'
      Control = dxDBLookupTreeView1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Category'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 163
    ExplicitTop = 120
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 212
    ExplicitTop = 169
  end
  inherited tabEditorData: TTabSet
    Top = 142
    ExplicitTop = 99
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOAList.cdsGLAccountGroup
    Left = 304
    Top = 8
  end
end
