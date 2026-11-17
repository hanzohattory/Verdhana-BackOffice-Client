inherited frmStockWdr: TfrmStockWdr
  Caption = 'Stock Withdraw'
  ClientHeight = 615
  ClientWidth = 547
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 559
  ExplicitHeight = 653
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 547
    Height = 388
    Align = alTop
    ExplicitWidth = 541
    ExplicitHeight = 388
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 112
      Top = 37
      TabStop = False
      DataBinding.DataField = 'SWDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 112
      Top = 10
      TabStop = False
      DataBinding.DataField = 'SWCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 232
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [2]
      Left = 112
      Top = 118
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'StockID'
      Properties.ListColumns = <
        item
          Caption = 'Stock Code'
          Width = 80
          FieldName = 'StockCode'
        end
        item
          Caption = 'Stock Name'
          Width = 200
          FieldName = 'StockName'
        end
        item
          Caption = 'Stock Type'
          Width = 80
          FieldName = 'INSTRUMENT_TYPE_DESC'
        end
        item
          Caption = 'Avg Price'
          Width = 80
          FieldName = 'AvgPrice'
        end
        item
          Caption = 'Stock On Hand'
          Width = 80
          FieldName = 'StockOnHand'
        end
        item
          Caption = 'Sell FO'
          Width = 80
          FieldName = 'BondsTrans'
        end
        item
          FieldName = 'StockWtihdraw'
        end
        item
          Caption = 'Avail Qty'
          Width = 80
          FieldName = 'AV_QTY'
        end>
      Properties.ListSource = dmLookup.dsluCustStock
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      OnExit = cxDBLookupComboBox3Exit
      Width = 90
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 220
      Top = 118
      TabStop = False
      DataBinding.DataField = 'INSTRUMEN_NAME_TMP'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 315
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 112
      Top = 145
      RepositoryItem = dmGlobal.luCustody
      DataBinding.DataField = 'CBCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 112
      Top = 91
      TabStop = False
      DataBinding.DataField = 'KSEIACC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [6]
      Left = 112
      Top = 172
      TabStop = False
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'PLEDGED'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
    end
    object cxDBCheckBox2: TcxDBCheckBox [7]
      Left = 185
      Top = 172
      TabStop = False
      DataBinding.DataField = 'SCRIPLESS'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
    end
    object cxDBMemo1: TcxDBMemo [8]
      Left = 112
      Top = 283
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Height = 39
      Width = 423
    end
    object cmbReason: TcxDBImageComboBox [9]
      Left = 112
      Top = 355
      TabStop = False
      RepositoryItem = dmGlobal.luSettleReason
      DataBinding.DataField = 'SETTLEREASON'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 423
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [10]
      Left = 112
      Top = 199
      DataBinding.DataField = 'SWQTY'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [11]
      Left = 359
      Top = 190
      TabStop = False
      DataBinding.DataField = 'RATIO_MRGCALL'
      DataBinding.DataSource = dsGetAccOverTL
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 116
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [12]
      Left = 359
      Top = 217
      TabStop = False
      DataBinding.DataField = 'RATIO_MRGWARING'
      DataBinding.DataSource = dsGetAccOverTL
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 116
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [13]
      Left = 359
      Top = 244
      TabStop = False
      DataBinding.DataField = 'AR_RATIO'
      DataBinding.DataSource = dsGetAccOverTL
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 116
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [14]
      Left = 359
      Top = 163
      TabStop = False
      DataBinding.DataField = 'PRDCODE'
      DataBinding.DataSource = dsGetAccOverTL
      ParentColor = True
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PRDCODE'
      Properties.ListColumns = <
        item
          Width = 50
          FieldName = 'PRDCODE'
        end
        item
          Width = 200
          FieldName = 'PRDDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuProduct
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 116
    end
    object txtSIDNO: TcxTextEdit [15]
      Left = 298
      Top = 91
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 237
    end
    object cmbSettleDate: TcxDBDateEdit [16]
      Left = 298
      Top = 37
      TabStop = False
      DataBinding.DataField = 'SETTLEDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = cmbSettleDateExit
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [17]
      Left = 112
      Top = 64
      DataBinding.DataField = 'ACCNO'
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
      Width = 114
    end
    object txtAccountName: TcxTextEdit [18]
      Left = 241
      Top = 64
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 294
    end
    object cxDBTextEdit2: TcxDBTextEdit [19]
      Left = 112
      Top = 328
      DataBinding.DataField = 'PURPOSE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 423
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 232
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '- '
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 315
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Custodian Bank'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'KSEI Account'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Pledged'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Scriptless'
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Remark'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object cmbReasons: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settelement Reason'
      Control = cmbReason
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Credit Limit'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ratio Margin Call'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ratio Margin Warning'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'AR Ratio'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Product Code'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SID No.'
      Control = txtSIDNO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 237
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Date'
      Control = cmbSettleDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = txtAccountName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 294
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Purpose'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 546
    Width = 547
    ExplicitTop = 537
    ExplicitWidth = 541
    inherited dbNavLog: TDBNavigator
      Left = 433
      Hints.Strings = ()
      ExplicitLeft = 433
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 595
    Width = 547
    ExplicitTop = 586
    ExplicitWidth = 541
  end
  inherited tabEditorData: TTabSet
    Top = 525
    Width = 547
    ExplicitTop = 516
    ExplicitWidth = 541
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 388
    Width = 547
    Height = 137
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 541
    ExplicitHeight = 128
    object gvwAcquisition: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsCustStockAvail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
        end
        item
          Format = '#,##0'
          Kind = skSum
        end
        item
          Format = '#,##0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwAcquisitionStockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Stock Code'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAcquisitionClosingPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Closing Price'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAcquisitionQuantityOnHand: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantity OnHand'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAcquisitionQuantitySell: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantity Sell'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAcquisitionStockWithdraw: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Stock Withdraw'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAcquisitionAvailableQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Available Quantity'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwAcquisition
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmStockWdrList.cdsStockWdr
    Left = 480
    Top = 169
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsStockWdrPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ACQDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockWdrPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 25
    Top = 214
    object cdsStockWdrPosStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsStockWdrPosAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsStockWdrPosAcqDate: TDateField
      DisplayLabel = 'Acquisition Date'
      FieldName = 'AcqDate'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockWdrPosAvgPrice: TFloatField
      DisplayLabel = 'Avg Price'
      FieldName = 'AvgPrice'
      DisplayFormat = '#,##0.####'
    end
    object cdsStockWdrPosStockOnHand: TFloatField
      DisplayLabel = 'Stock On Hand'
      FieldName = 'StockOnHand'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosStockBalance: TFloatField
      DisplayLabel = 'Stock Balance'
      FieldName = 'StockBalance'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosStockType: TStringField
      FieldName = 'StockType'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsStockWdrPosSWQTY: TFloatField
      DisplayLabel = 'Withdraw On Hold'
      FieldName = 'SWQTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosBondsTrans: TFloatField
      FieldName = 'BondsTrans'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosAV_QTY: TFloatField
      FieldName = 'AV_QTY'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosStockReceive: TFloatField
      FieldName = 'StockReceive'
      ReadOnly = True
      Required = True
      EditFormat = '#,##0;(#,##0);0'
    end
    object cdsStockWdrPosStockWithdraw: TFloatField
      FieldName = 'StockWithdraw'
    end
  end
  object dsStockWdrPos: TDataSource
    DataSet = cdsStockWdrPos
    Left = 25
    Top = 264
  end
  object cdsStockWdrAvail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ACQDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'STOCKQTY'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockWdrAvail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 212
    Top = 240
    object cdsStockWdrAvailACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
    object cdsStockWdrAvailACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsStockWdrAvailSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsStockWdrAvailPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsStockWdrAvailVALUE: TFloatField
      FieldName = 'VALUE'
    end
  end
  object cdsSumWithdraw: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'ACQDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qrySumWithdraw'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 212
    Top = 282
    object cdsSumWithdrawWithdraw_Qty: TLargeintField
      FieldName = 'Withdraw_Qty'
      ReadOnly = True
    end
  end
  object cdsSumStockAvail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'ACQDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qrySumStockAvail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 348
    object cdsSumStockAvailStokAvail: TFloatField
      FieldName = 'StokAvail'
      ReadOnly = True
    end
  end
  object dsStockWdrAcq: TDataSource
    DataSet = frmStockWdrList.cdsStockWdrAcq
    Left = 480
    Top = 123
  end
  object dsSumStockAvail: TDataSource
    DataSet = cdsSumStockAvail
    Left = 480
    Top = 213
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
    Left = 62
    Top = 338
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
    Left = 29
    Top = 338
  end
  object cdsCustStockAvail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryCustStockAvail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 464
    object cdsCustStockAvailStockCode: TStringField
      FieldName = 'Stock Code'
    end
    object cdsCustStockAvailClosingPrice: TFloatField
      FieldName = 'Closing Price'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCustStockAvailQuantityOnHand: TFloatField
      FieldName = 'Quantity OnHand'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCustStockAvailQuantitySell: TFloatField
      FieldName = 'Quantity Sell'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCustStockAvailStockWithdraw: TFloatField
      FieldName = 'Stock Withdraw'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCustStockAvailAvailableQuantity: TFloatField
      FieldName = 'Available Quantity'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsCustStockAvail: TDataSource
    DataSet = cdsCustStockAvail
    Left = 24
    Top = 512
  end
end
