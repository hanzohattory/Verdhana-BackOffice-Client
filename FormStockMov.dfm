inherited frmStockMov: TfrmStockMov
  Caption = 'Stock Movement'
  ClientHeight = 499
  ClientWidth = 594
  ExplicitWidth = 610
  ExplicitHeight = 538
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 594
    Height = 291
    Align = alTop
    ExplicitWidth = 594
    ExplicitHeight = 291
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 106
      Top = 10
      DataBinding.DataField = 'SMCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 106
      Top = 37
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 290
      Top = 37
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [3]
      Left = 106
      Top = 64
      DataBinding.DataField = 'SOURCE_ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 241
      Top = 64
      DataBinding.DataField = 'SOURCE_ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 337
    end
    object cxDBButtonEdit2: TcxDBButtonEdit [5]
      Left = 106
      Top = 91
      DataBinding.DataField = 'TARGET_ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 241
      Top = 91
      DataBinding.DataField = 'TARGET_ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 337
    end
    object cxDBMemo1: TcxDBMemo [7]
      Left = 106
      Top = 118
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 51
      Width = 230
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [8]
      Left = 106
      Top = 175
      TabStop = False
      RepositoryItem = dmGlobal.luStockPurpose
      DataBinding.DataField = 'PURPOSE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 230
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [9]
      Left = 106
      Top = 202
      TabStop = False
      RepositoryItem = dmGlobal.luSettleReason
      DataBinding.DataField = 'SETTLEREASON'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 230
    end
    object cxButton1: TcxButton [10]
      Left = 10
      Top = 256
      Width = 126
      Height = 25
      Caption = 'Get Stock Position'
      TabOrder = 15
      OnClick = cxButton1Click
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [11]
      Left = 460
      Top = 136
      DataBinding.DataField = 'PRDCODE'
      DataBinding.DataSource = dsGetAccOverTL
      Enabled = False
      Properties.KeyFieldNames = 'PRDCODE'
      Properties.ListColumns = <
        item
          FieldName = 'PRDCODE'
        end
        item
          FieldName = 'PRDDESC'
        end>
      Properties.ListSource = dmLookup.dsLuProduct
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 111
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [12]
      Left = 460
      Top = 163
      DataBinding.DataField = 'RATIO_MRGCALL'
      DataBinding.DataSource = dsGetAccOverTL
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 111
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [13]
      Left = 460
      Top = 190
      DataBinding.DataField = 'RATIO_MRGWARING'
      DataBinding.DataSource = dsGetAccOverTL
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 111
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [14]
      Left = 460
      Top = 217
      DataBinding.DataField = 'AR_RATIO'
      DataBinding.DataSource = dsGetAccOverTL
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 111
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [15]
      Left = 106
      Top = 229
      RepositoryItem = dmGlobal.luStockMovProgram
      DataBinding.DataField = 'PROGRAM_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 230
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Source Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 337
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Target Account'
      Control = cxDBButtonEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 337
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remark'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 51
      ControlOptions.OriginalWidth = 230
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Purpose'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 230
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Settlement Reason'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 230
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Credit Limit'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Product Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Ratio Margin Call'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Ratio Margn Warning'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'AR Ratio'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Program Name'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 430
    Width = 594
    ExplicitTop = 430
    ExplicitWidth = 594
    inherited dbNavLog: TDBNavigator
      Left = 480
      Hints.Strings = ()
      ExplicitLeft = 480
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 479
    Width = 594
    ExplicitTop = 479
    ExplicitWidth = 594
  end
  inherited tabEditorData: TTabSet
    Top = 409
    Width = 594
    ExplicitTop = 409
    ExplicitWidth = 594
  end
  object grdStockMov: TcxGrid [4]
    Left = 0
    Top = 291
    Width = 594
    Height = 118
    Align = alClient
    BevelOuter = bvNone
    PopupMenu = PopupMenu1
    TabOrder = 4
    object gvwStockMov: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsStockMovD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gvwStockMovSMID: TcxGridDBColumn
        DataBinding.FieldName = 'SMID'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovINSTRUMENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'INSTRUMENT_ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovMODDA: TcxGridDBColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovMODUI: TcxGridDBColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovAPPDA: TcxGridDBColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovAPPUI: TcxGridDBColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovUNDER4Y: TcxGridDBColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovUNDER4YDA: TcxGridDBColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovNOTES4Y: TcxGridDBColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovISDEL: TcxGridDBColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovLOCALCODE: TcxGridDBColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'LOCALCODE'
        Width = 199
      end
      object gvwStockMovISSUERNAME: TcxGridDBColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'ISSUERNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Width = 277
      end
      object gvwStockMovISINCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ISINCODE'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovISINDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ISINDATE'
        Visible = False
        VisibleForCustomization = False
      end
      object gvwStockMovMARKETCODE: TcxGridDBColumn
        Caption = 'Market'
        DataBinding.FieldName = 'MARKETCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        Width = 50
      end
      object gvwStockMovSMQTY: TcxGridDBColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'SMQTY'
        HeaderAlignmentHorz = taRightJustify
        Width = 133
      end
      object gvwStockMovMAXQTY: TcxGridDBColumn
        DataBinding.FieldName = 'MAXQTY'
        Visible = False
      end
      object gvwStockMovSOURCE_SETTLED: TcxGridDBColumn
        DataBinding.FieldName = 'SOURCE_SETTLED'
        Visible = False
      end
      object gvwStockMovTARGET_SETTLED: TcxGridDBColumn
        DataBinding.FieldName = 'TARGET_SETTLED'
        Visible = False
      end
      object gvwStockMovSOURCE_MATCH: TcxGridDBColumn
        DataBinding.FieldName = 'SOURCE_MATCH'
        Visible = False
      end
      object gvwStockMovTARGET_MATCH: TcxGridDBColumn
        DataBinding.FieldName = 'TARGET_MATCH'
        Visible = False
      end
      object gvwStockMovSOURCE_PRICE: TcxGridDBColumn
        Caption = 'Source Price'
        DataBinding.FieldName = 'SOURCE_PRICE'
        HeaderAlignmentHorz = taRightJustify
        Width = 121
      end
      object gvwStockMovTARGET_PRICE: TcxGridDBColumn
        Caption = 'Target Price'
        DataBinding.FieldName = 'TARGET_PRICE'
        HeaderAlignmentHorz = taRightJustify
        Width = 122
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwStockMov
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmStockMovList.cdsStockMovH
    Left = 540
    Top = 11
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 168
    Top = 128
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsStockMovD: TDataSource
    DataSet = frmStockMovList.cdsStockMovD
    Left = 469
    Top = 10
  end
  object PopupMenu1: TPopupMenu
    Left = 150
    Top = 351
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
  end
  object cdsGetAccOverTL: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TransDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'AccID'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'StockID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'SWQty'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockWithdraw'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 305
    Top = 322
    object cdsGetAccOverTLACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsGetAccOverTLPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsGetAccOverTLACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsGetAccOverTLRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
      DisplayFormat = '#,##0.#### %;(#,##0.#### %);0'
    end
    object cdsGetAccOverTLRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
      DisplayFormat = '#,##0.#### %;(#,##0.#### %);0'
    end
    object cdsGetAccOverTLAR_RATIO: TFloatField
      FieldName = 'AR_RATIO'
      DisplayFormat = '#,##0.#### %;(#,##0.#### %);0'
    end
    object cdsGetAccOverTLOVER_TL: TFloatField
      FieldName = 'OVER_TL'
    end
  end
  object dsGetAccOverTL: TDataSource
    DataSet = cdsGetAccOverTL
    Left = 232
    Top = 402
  end
end
