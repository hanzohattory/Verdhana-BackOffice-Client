inherited frmCorpActInstrument: TfrmCorpActInstrument
  Caption = 'Add New Instrument'
  ClientHeight = 456
  ClientWidth = 475
  ExplicitWidth = 481
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 475
    Height = 366
    ExplicitWidth = 475
    ExplicitHeight = 366
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 98
      Top = 10
      DataBinding.DataField = 'INSTRUMENT_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 98
      Top = 118
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 362
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 98
      Top = 64
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 98
      Top = 91
      RepositoryItem = dmGlobal.luInstrumentType
      DataBinding.DataField = 'INSTRUMENT_TYPE_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 98
      Top = 145
      DataBinding.DataField = 'LONGNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 362
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 98
      Top = 172
      DataBinding.DataField = 'ISSUERNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 362
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 98
      Top = 199
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [7]
      Left = 98
      Top = 226
      DataBinding.DataField = 'MARGIN'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [8]
      Left = 98
      Top = 253
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [9]
      Left = 339
      Top = 199
      DataBinding.DataField = 'ISINDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [10]
      Left = 98
      Top = 280
      DataBinding.DataField = 'LISTINGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [11]
      Left = 339
      Top = 280
      DataBinding.DataField = 'DELISTINGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [12]
      Left = 339
      Top = 307
      DataBinding.DataField = 'LASTCPPRICEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [13]
      Left = 98
      Top = 307
      DataBinding.DataField = 'LASTCLSPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [14]
      Left = 98
      Top = 334
      DataBinding.DataField = 'SECTOR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [15]
      Left = 98
      Top = 37
      DataBinding.DataField = 'LOCALCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [16]
      Left = 339
      Top = 37
      DataBinding.DataField = 'SEDOL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Short Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Long Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Issuer Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Margin'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Listing Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Delisting Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Closing Price Date'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Closing Price'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sector'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Local Code'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sedol Code'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 387
    Width = 475
    ExplicitTop = 387
    ExplicitWidth = 475
    inherited dbNavLog: TDBNavigator
      Left = 361
      Hints.Strings = ()
      ExplicitLeft = 361
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
    Top = 436
    Width = 475
    ExplicitTop = 436
    ExplicitWidth = 475
  end
  inherited tabEditorData: TTabSet
    Top = 366
    Width = 475
    ExplicitTop = 366
    ExplicitWidth = 475
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActHMETD.cdsInstrument
    Left = 432
    Top = 60
  end
end
