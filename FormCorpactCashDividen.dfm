inherited frmCorpActCashDividen: TfrmCorpActCashDividen
  Caption = 'Corporate Action Cash Dividen'
  ClientHeight = 327
  ClientWidth = 719
  ExplicitWidth = 725
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 719
    Height = 237
    ExplicitWidth = 719
    ExplicitHeight = 237
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
    object cmbStockCode: TcxDBLookupComboBox [1]
      Left = 74
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentStock
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
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
      Left = 118
      Top = 109
      DataBinding.DataField = 'BASE_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 30
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
      Left = 365
      Top = 109
      DataBinding.DataField = 'GET_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0.000000;(#,##0.000000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 117
    end
    object cxDBDateEdit1: TcxDBDateEdit [5]
      Left = 607
      Top = 28
      DataBinding.DataField = 'NGRG_CUMDATE'
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
    object cxDBDateEdit2: TcxDBDateEdit [6]
      Left = 607
      Top = 55
      DataBinding.DataField = 'NGRG_EXDATE'
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
    object cxDBDateEdit3: TcxDBDateEdit [7]
      Left = 607
      Top = 82
      DataBinding.DataField = 'TN_CUMDATE'
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
    object cxDBDateEdit4: TcxDBDateEdit [8]
      Left = 607
      Top = 109
      DataBinding.DataField = 'TN_EXDATE'
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
    object cxDBDateEdit5: TcxDBDateEdit [9]
      Left = 607
      Top = 136
      DataBinding.DataField = 'RECDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 85
    end
    object cxDBDateEdit6: TcxDBDateEdit [10]
      Left = 607
      Top = 163
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 85
    end
    object cxDBTextEdit2: TcxDBTextEdit [11]
      Left = 193
      Top = 37
      TabStop = False
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
    object cxDBLookupComboBox2: TcxDBLookupComboBox [12]
      Left = 203
      Top = 136
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'SETTLE_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 60
    end
    object cxDBMemo1: TcxDBMemo [13]
      Left = 74
      Top = 175
      DataBinding.DataField = 'CA_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Height = 48
      Width = 420
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [14]
      Left = 118
      Top = 136
      DataBinding.DataField = 'FOREX_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 30
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [15]
      Left = 203
      Top = 109
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 60
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [16]
      Left = 365
      Top = 136
      DataBinding.DataField = 'GET_STK_RT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0.000000;(#,##0.000000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 117
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
      Control = cmbStockCode
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
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = lcLocalDividen
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Local Cash Ratio'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = lcLocalDividen
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Dividen Value'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
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
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Cum Date (RG/NG)'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Ex Date (RG/NG)'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Cum Date (TN)'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Ex Date (TN)'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Recording Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Payment Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 5
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
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = lcForeignDividen
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 419
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = lcForeignDividen
      CaptionOptions.Text = 'Foreign Cash Ratio'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcLocalDividen: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcForeignDividen: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = lcLocalDividen
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = lcForeignDividen
      CaptionOptions.Text = 'Cash Dividen Value'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 258
    Width = 719
    ExplicitTop = 258
    ExplicitWidth = 719
    inherited dbNavLog: TDBNavigator
      Left = 605
      Hints.Strings = ()
      ExplicitLeft = 605
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 307
    Width = 719
    ExplicitTop = 307
    ExplicitWidth = 719
  end
  inherited tabEditorData: TTabSet
    Top = 237
    Width = 719
    ExplicitTop = 237
    ExplicitWidth = 719
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 465
    Top = 61
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
end
