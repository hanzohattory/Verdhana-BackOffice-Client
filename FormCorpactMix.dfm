inherited frmCorpActMix: TfrmCorpActMix
  Caption = 'Corporate Action Mix'
  ClientHeight = 404
  ClientWidth = 764
  ExplicitWidth = 770
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 764
    Height = 314
    ExplicitWidth = 764
    ExplicitHeight = 314
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
      Left = 136
      Top = 193
      DataBinding.DataField = 'BASE_STK_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 36
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
      Left = 276
      Top = 193
      DataBinding.DataField = 'GET_STK_RT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 35
    end
    object cxDBDateEdit1: TcxDBDateEdit [5]
      Left = 618
      Top = 28
      DataBinding.DataField = 'NGRG_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      OnExit = cxDBDateEdit1Exit
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [6]
      Left = 618
      Top = 55
      DataBinding.DataField = 'NGRG_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [7]
      Left = 618
      Top = 82
      DataBinding.DataField = 'TN_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [8]
      Left = 618
      Top = 109
      DataBinding.DataField = 'TN_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 121
    end
    object cxDBDateEdit5: TcxDBDateEdit [9]
      Left = 618
      Top = 136
      DataBinding.DataField = 'RECDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 121
    end
    object cxDBDateEdit6: TcxDBDateEdit [10]
      Left = 618
      Top = 163
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 121
    end
    object cxLabel1: TcxLabel [11]
      Left = 317
      Top = 193
      Caption = 'new share(s)'
      Style.HotTrack = False
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [12]
      Left = 136
      Top = 220
      DataBinding.DataField = 'BASE_QTY_PRICE_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 63
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [13]
      Left = 136
      Top = 136
      DataBinding.DataField = 'BASE_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 35
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [14]
      Left = 378
      Top = 136
      DataBinding.DataField = 'GET_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 87
    end
    object cxDBTextEdit2: TcxDBTextEdit [15]
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
    object cxDBDateEdit9: TcxDBDateEdit [16]
      Left = 618
      Top = 190
      DataBinding.DataField = 'DISTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [17]
      Left = 426
      Top = 193
      DataBinding.DataField = 'ROUNDSTOCK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Normal'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Up'
          Value = 2
        end
        item
          Description = 'Down'
          Value = 3
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 67
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [18]
      Left = 136
      Top = 109
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'SETTLE_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      OnExit = cxDBLookupComboBox2Exit
      Width = 60
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit [19]
      Left = 277
      Top = 109
      TabStop = False
      DataBinding.DataField = 'EXRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 85
    end
    object cxDBMemo1: TcxDBMemo [20]
      Left = 74
      Top = 259
      DataBinding.DataField = 'CA_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Height = 44
      Width = 431
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
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Stock'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ration dividen is every'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'old shares will have'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 1
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
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price for tax'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Cash'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Every'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'shares will have cash dividend with value'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
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
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Distribution Date'
      Control = cxDBDateEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Round'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Currency'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Rate Currency'
      Control = cxDBCurrencyEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 44
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 335
    Width = 764
    ExplicitTop = 335
    ExplicitWidth = 764
    inherited dbNavLog: TDBNavigator
      Left = 650
      Hints.Strings = ()
      ExplicitLeft = 650
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 384
    Width = 764
    ExplicitTop = 384
    ExplicitWidth = 764
  end
  inherited tabEditorData: TTabSet
    Top = 314
    Width = 764
    ExplicitTop = 314
    ExplicitWidth = 764
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 588
    Top = 316
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsStockClosingPrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STOCKDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STOCKCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockClosingPrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 558
    Top = 315
    object cdsStockClosingPriceSTK_DATE: TDateField
      FieldName = 'STK_DATE'
      Required = True
    end
    object cdsStockClosingPriceSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Required = True
      Size = 10
    end
    object cdsStockClosingPriceSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 50
    end
    object cdsStockClosingPriceSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
    end
    object cdsStockClosingPriceSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
    end
    object cdsStockClosingPriceSTK_LOW: TFloatField
      FieldName = 'STK_LOW'
    end
    object cdsStockClosingPriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
    object cdsStockClosingPriceSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object cdsStockClosingPriceSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
    end
    object cdsStockClosingPriceSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
    end
    object cdsStockClosingPriceSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
    end
    object cdsStockClosingPriceSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
    end
    object cdsStockClosingPriceSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
    end
    object cdsStockClosingPriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 5
    end
    object cdsStockClosingPriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object cdsStockClosingPriceSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
    end
    object cdsStockClosingPriceSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 5
    end
    object cdsStockClosingPriceSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
    end
    object cdsStockClosingPriceSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
    end
    object cdsStockClosingPriceSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
    end
    object cdsStockClosingPriceSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
    end
    object cdsStockClosingPriceMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockClosingPriceMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
end
