inherited frmCorpActStockBonus: TfrmCorpActStockBonus
  Caption = 'Corporate Action Stock Bonus'
  ClientHeight = 296
  ClientWidth = 715
  ExplicitWidth = 721
  ExplicitHeight = 325
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 715
    Height = 206
    ExplicitWidth = 715
    ExplicitHeight = 206
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
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 606
      Top = 28
      DataBinding.DataField = 'NGRG_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 85
    end
    object cxDBDateEdit2: TcxDBDateEdit [4]
      Left = 606
      Top = 55
      DataBinding.DataField = 'NGRG_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 85
    end
    object cxDBDateEdit3: TcxDBDateEdit [5]
      Left = 606
      Top = 82
      DataBinding.DataField = 'TN_CUMDATE'
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
    object cxDBDateEdit4: TcxDBDateEdit [6]
      Left = 606
      Top = 109
      DataBinding.DataField = 'TN_EXDATE'
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
    object cxDBDateEdit5: TcxDBDateEdit [7]
      Left = 606
      Top = 136
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
    object cxDBDateEdit6: TcxDBDateEdit [8]
      Left = 606
      Top = 163
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
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [9]
      Left = 128
      Top = 109
      DataBinding.DataField = 'BASE_STK_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 30
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [10]
      Left = 253
      Top = 109
      DataBinding.DataField = 'GET_STK_RT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 30
    end
    object cxLabel1: TcxLabel [11]
      Left = 289
      Top = 109
      Caption = 'share(s)'
      Style.HotTrack = False
    end
    object cxDBTextEdit2: TcxDBTextEdit [12]
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
    object cxDBMemo1: TcxDBMemo [13]
      Left = 74
      Top = 148
      DataBinding.DataField = 'CA_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 48
      Width = 419
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [14]
      Left = 375
      Top = 109
      DataBinding.DataField = 'ROUNDSTOCK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Normal'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Up'
          Value = '2'
        end
        item
          Description = 'Down'
          Value = '3'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 74
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
      CaptionOptions.Text = 'Distribution Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
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
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ration stock bonus is'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'share(s) will have'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 2
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
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Round'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 227
    Width = 715
    ExplicitTop = 227
    ExplicitWidth = 715
    inherited dbNavLog: TDBNavigator
      Left = 601
      Hints.Strings = ()
      ExplicitLeft = 601
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 276
    Width = 715
    ExplicitTop = 276
    ExplicitWidth = 715
  end
  inherited tabEditorData: TTabSet
    Top = 206
    Width = 715
    ExplicitTop = 206
    ExplicitWidth = 715
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 417
    Top = 7
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
end
