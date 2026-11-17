inherited frmCorpactReverse: TfrmCorpactReverse
  Caption = 'Corporate Action Stock Reverse'
  ClientHeight = 369
  ClientWidth = 760
  ExplicitWidth = 766
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 760
    Height = 279
    ExplicitWidth = 760
    ExplicitHeight = 279
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 74
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CANO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 180
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 74
      Top = 37
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cxDBLookupComboBox1Exit
      Width = 113
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 74
      Top = 64
      TabStop = False
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 180
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
      Left = 92
      Top = 109
      DataBinding.DataField = 'BASE_STK_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 30
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
      Left = 197
      Top = 109
      DataBinding.DataField = 'GET_STK_RT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 30
    end
    object cxLabel1: TcxLabel [5]
      Left = 233
      Top = 109
      Caption = 'share(s)'
      Style.HotTrack = False
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [6]
      Left = 92
      Top = 136
      DataBinding.DataField = 'BASE_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 65
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [7]
      Left = 243
      Top = 136
      DataBinding.DataField = 'GET_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 65
    end
    object cxLabel2: TcxLabel [8]
      Left = 314
      Top = 136
      Caption = 'new value'
      Style.HotTrack = False
    end
    object cxDBDateEdit7: TcxDBDateEdit [9]
      Left = 651
      Top = 28
      DataBinding.DataField = 'LAST_OLD_NOMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 85
    end
    object cxDBDateEdit8: TcxDBDateEdit [10]
      Left = 651
      Top = 55
      DataBinding.DataField = 'ST_TRD_NOMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 85
    end
    object cxDBDateEdit11: TcxDBDateEdit [11]
      Left = 651
      Top = 82
      DataBinding.DataField = 'RECDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 85
    end
    object cxDBDateEdit12: TcxDBDateEdit [12]
      Left = 651
      Top = 109
      DataBinding.DataField = 'DISTDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 85
    end
    object cxDBTextEdit2: TcxDBTextEdit [13]
      Left = 193
      Top = 37
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 300
    end
    object cxDBMemo1: TcxDBMemo [14]
      Left = 74
      Top = 175
      DataBinding.DataField = 'CA_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Height = 89
      Width = 419
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CorpAct No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Reverse Ratio'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Reverse ratio'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'shares will be'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Nominal ratio'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'old value will be'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Last Trade With Old Nominal'
      Control = cxDBDateEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Start Trade New Nominal'
      Control = cxDBDateEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Recording Date'
      Control = cxDBDateEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Distribution Date'
      Control = cxDBDateEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxDBTextEdit2'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 300
    Width = 760
    ExplicitTop = 300
    ExplicitWidth = 760
    inherited dbNavLog: TDBNavigator
      Left = 646
      Hints.Strings = ()
      ExplicitLeft = 646
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 349
    Width = 760
    ExplicitTop = 349
    ExplicitWidth = 760
  end
  inherited tabEditorData: TTabSet
    Top = 279
    Width = 760
    ExplicitTop = 279
    ExplicitWidth = 760
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 828
    Top = 343
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
end
