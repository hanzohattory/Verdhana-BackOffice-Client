inherited frmStockSettleVoucherProcess: TfrmStockSettleVoucherProcess
  Caption = 'Stock Settle Voucher Process'
  ClientHeight = 471
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 510
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 209
    Align = alTop
    ExplicitWidth = 994
    ExplicitHeight = 209
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 74
      Top = 10
      DataBinding.DataField = 'SSNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 140
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 277
      Top = 10
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
      Width = 80
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 420
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 80
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 74
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 110
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 199
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 301
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 74
      Top = 91
      DataBinding.DataField = 'LOCALCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 110
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 199
      Top = 91
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 301
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [7]
      Left = 74
      Top = 118
      DataBinding.DataField = 'SETTLE_TYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Deliver'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Receive'
          Value = 'R'
        end
        item
          Description = 'Netting'
          Value = 'N'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 89
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [8]
      Left = 74
      Top = 145
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [9]
      Left = 542
      Top = 10
      DataBinding.DataField = 'STAT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Settle'
          Value = 'S'
        end
        item
          Description = 'Cancel'
          Value = 'C'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 107
    end
    object cxButton1: TcxButton [10]
      Left = 828
      Top = 28
      Width = 144
      Height = 25
      Action = actSettle
      TabOrder = 17
    end
    object cxButton2: TcxButton [11]
      Left = 828
      Top = 59
      Width = 144
      Height = 25
      Action = actCancel
      TabOrder = 18
    end
    object cxButton3: TcxButton [12]
      Left = 828
      Top = 90
      Width = 144
      Height = 25
      Action = actReverse
      TabOrder = 19
    end
    object cxDBTextEdit6: TcxDBTextEdit [13]
      Left = 74
      Top = 64
      DataBinding.DataField = 'SSDESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 426
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [14]
      Left = 456
      Top = 145
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [15]
      Left = 253
      Top = 118
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 100
    end
    object cxDBTextEdit8: TcxDBTextEdit [16]
      Left = 404
      Top = 118
      DataBinding.DataField = 'CUSTODYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 100
    end
    object cxDBTextEdit9: TcxDBTextEdit [17]
      Left = 519
      Top = 118
      DataBinding.DataField = 'CUSTODYACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 140
    end
    object cxDBTextEdit10: TcxDBTextEdit [18]
      Left = 282
      Top = 145
      DataBinding.DataField = 'ORIG_AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [19]
      Left = 671
      Top = 145
      DataBinding.DataField = 'DIFF_AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object edSettleMode: TcxDBImageComboBox [20]
      Left = 74
      Top = 172
      RepositoryItem = dmGlobal.luStockSettlementVoucherSettleModel
      BiDiMode = bdLeftToRight
      DataBinding.DataField = 'SETTLE_MODE'
      DataBinding.DataSource = dsStockSettlementH
      ParentBiDiMode = False
      ParentColor = True
      Properties.Items = <>
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 121
    end
    object edACSPrice: TcxDBCurrencyEdit [21]
      Left = 282
      Top = 172
      AutoSize = False
      DataBinding.DataField = 'ACS_PRICE'
      DataBinding.DataSource = dsStockSettlementH
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Height = 21
      Width = 121
    end
    object edACSPercent: TcxDBCurrencyEdit [22]
      Left = 456
      Top = 172
      DataBinding.DataField = 'ACS_PERCENT'
      DataBinding.DataSource = dsStockSettlementH
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object edSettleAmount: TcxDBCurrencyEdit [23]
      Left = 671
      Top = 172
      TabStop = False
      DataBinding.DataField = 'SETTLE_AMOUNT'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      ItemIndex = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Settle Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 426
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Instruction Type'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Custody'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Original Amount'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Different Amount'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Settle Model'
      Control = edSettleMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'ACS Price'
      Control = edACSPrice
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'ACS (%)'
      Control = edACSPercent
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Settle Amount'
      Control = edSettleAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 402
    Width = 994
    ExplicitTop = 402
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 451
    Width = 994
    ExplicitTop = 451
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 381
    Width = 994
    ExplicitTop = 381
    ExplicitWidth = 994
  end
  object grdMaster: TcxGrid [4]
    Left = 0
    Top = 209
    Width = 994
    Height = 172
    Align = alClient
    TabOrder = 4
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsStockSettleDProcess
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;#,##0;0'
          Kind = skSum
          FieldName = 'OUTSTANDQTY'
          DisplayText = '#,##0;#,##0;0'
        end
        item
          Format = '#,##0;#,##0;0'
          Kind = skSum
          FieldName = 'PROCESSQTY'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnSorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          Caption = 'Stock Outstanding'
        end>
      object gvwMasterSSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSONO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SONO'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSODESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SODESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRTYPE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSETTLESIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLESIDE'
        RepositoryItem = dmGlobal.luReceiveDeliver
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterOUTS_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTS_QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSETTLEDQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDQTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERQTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterTRADINGTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADINGTYPE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSIDE_ACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIDE_ACC'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsStockSettleHProcess
    Left = 548
    Top = 251
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsStockSettleHProcess: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftBoolean
        Name = 'SINGLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SSID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockSettleHProcess'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsStockSettleHProcessCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 422
    Top = 250
    object cdsStockSettleHProcessSSID: TLargeintField
      FieldName = 'SSID'
      Required = True
    end
    object cdsStockSettleHProcessSSNO: TStringField
      FieldName = 'SSNO'
      Required = True
    end
    object cdsStockSettleHProcessSSDESC: TStringField
      FieldName = 'SSDESC'
      Required = True
      Size = 150
    end
    object cdsStockSettleHProcessSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 1
    end
    object cdsStockSettleHProcessENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettleHProcessVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettleHProcessACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockSettleHProcessSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockSettleHProcessQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettleHProcessSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsStockSettleHProcessMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockSettleHProcessMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockSettleHProcessAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockSettleHProcessAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockSettleHProcessUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockSettleHProcessUDER4YDA: TDateTimeField
      FieldName = 'UDER4YDA'
    end
    object cdsStockSettleHProcessNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockSettleHProcessISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockSettleHProcessID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockSettleHProcessACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsStockSettleHProcessACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsStockSettleHProcessLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      ReadOnly = True
      Required = True
    end
    object cdsStockSettleHProcessSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsStockSettleHProcessqryStockSettleDProcess: TDataSetField
      FieldName = 'qryStockSettleDProcess'
    end
    object cdsStockSettleHProcessACCCUSTODYID: TLargeintField
      FieldName = 'ACCCUSTODYID'
    end
    object cdsStockSettleHProcessAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettleHProcessINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsStockSettleHProcessCL_ACCID: TLargeintField
      FieldName = 'CL_ACCID'
    end
    object cdsStockSettleHProcessORIG_AMOUNT: TFloatField
      FieldName = 'ORIG_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettleHProcessCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsStockSettleHProcessCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsStockSettleHProcessDIFF_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
      Calculated = True
    end
    object cdsStockSettleHProcessSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 1
    end
    object cdsStockSettleHProcessACS_PERCENT: TFloatField
      FieldName = 'ACS_PERCENT'
      DisplayFormat = '#,##0.00%;(#,##0.00)%;0.00%'
    end
    object cdsStockSettleHProcessACS_PRICE: TFloatField
      FieldName = 'ACS_PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockSettleHProcessSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockSettleHProcessSETTLEAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SETTLEAMOUNT'
      Calculated = True
    end
  end
  object cdsStockSettleDProcess: TNClientDataset
    Aggregates = <>
    DataSetField = cdsStockSettleHProcessqryStockSettleDProcess
    Params = <>
    OnCalcFields = cdsStockSettleDProcessCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 422
    Top = 298
    object cdsStockSettleDProcessSSID: TLargeintField
      FieldName = 'SSID'
      Required = True
    end
    object cdsStockSettleDProcessSOID: TLargeintField
      FieldName = 'SOID'
      ReadOnly = True
      Required = True
    end
    object cdsStockSettleDProcessSONO: TStringField
      DisplayLabel = 'Code'
      FieldName = 'SONO'
      ReadOnly = True
    end
    object cdsStockSettleDProcessSODESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'SODESC'
      ReadOnly = True
      Size = 150
    end
    object cdsStockSettleDProcessTRTYPE: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TRTYPE'
      ReadOnly = True
      Size = 2
    end
    object cdsStockSettleDProcessENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettleDProcessTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettleDProcessDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettleDProcessSETTLESIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLESIDE'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object cdsStockSettleDProcessPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockSettleDProcessQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettleDProcessOUTS_QTY: TFloatField
      DisplayLabel = 'Outstanding Qty'
      FieldName = 'OUTS_QTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettleDProcessSETTLEDQTY: TFloatField
      DisplayLabel = 'Settled Qty'
      FieldName = 'SETTLEDQTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettleDProcessVOUCHERQTY: TFloatField
      DisplayLabel = 'Voucher Qty'
      FieldName = 'VOUCHERQTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettleDProcessSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsStockSettleDProcessTRADINGTYPE: TStringField
      DisplayLabel = 'Trading Type'
      FieldName = 'TRADINGTYPE'
      ReadOnly = True
      Size = 4
    end
    object cdsStockSettleDProcessSIDE_ACC: TStringField
      DisplayLabel = 'Side Account'
      FieldName = 'SIDE_ACC'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object dsStockSettleDProcess: TDataSource
    DataSet = cdsStockSettleDProcess
    Left = 551
    Top = 300
  end
  object ActionList1: TActionList
    Left = 306
    Top = 248
    object actSettle: TNAction
      Caption = 'Settle Voucher'
      OnExecute = actSettleExecute
      OnUpdate = actSettleUpdate
      CheckPermission = False
    end
    object actReverse: TNAction
      Caption = 'Reverse Voucher'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actCancel: TNAction
      Caption = 'Cancel Voucher'
      OnExecute = actCancelExecute
      OnUpdate = actCancelUpdate
      CheckPermission = False
    end
  end
  object cdsStockSettlementH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'SSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockSettlement_H'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 344
    object cdsStockSettlementHSSID: TLargeintField
      FieldName = 'SSID'
      Required = True
    end
    object cdsStockSettlementHSSNO: TStringField
      FieldName = 'SSNO'
      Required = True
    end
    object cdsStockSettlementHSSDESC: TStringField
      FieldName = 'SSDESC'
      Required = True
      Size = 150
    end
    object cdsStockSettlementHSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 1
    end
    object cdsStockSettlementHENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsStockSettlementHVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsStockSettlementHACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockSettlementHCL_ACCID: TLargeintField
      FieldName = 'CL_ACCID'
    end
    object cdsStockSettlementHSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockSettlementHINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsStockSettlementHQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsStockSettlementHORIG_AMOUNT: TFloatField
      FieldName = 'ORIG_AMOUNT'
    end
    object cdsStockSettlementHAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsStockSettlementHACCCUSTODYID: TLargeintField
      FieldName = 'ACCCUSTODYID'
    end
    object cdsStockSettlementHCASH_VOUCHER_CREATED: TStringField
      FieldName = 'CASH_VOUCHER_CREATED'
      Size = 1
    end
    object cdsStockSettlementHSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsStockSettlementHCANCEL_DATE: TDateTimeField
      FieldName = 'CANCEL_DATE'
    end
    object cdsStockSettlementHCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsStockSettlementHPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
    end
    object cdsStockSettlementHPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsStockSettlementHREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsStockSettlementHREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsStockSettlementHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockSettlementHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockSettlementHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockSettlementHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockSettlementHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockSettlementHUDER4YDA: TDateTimeField
      FieldName = 'UDER4YDA'
    end
    object cdsStockSettlementHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockSettlementHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockSettlementHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockSettlementHCSID: TLargeintField
      FieldName = 'CSID'
    end
    object cdsStockSettlementHSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsStockSettlementHCPACCID: TIntegerField
      FieldName = 'CPACCID'
    end
    object cdsStockSettlementHSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsStockSettlementHSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      OnChange = cdsStockSettlementHSETTLE_MODEChange
      Size = 1
    end
    object cdsStockSettlementHACS_PRICE: TFloatField
      FieldName = 'ACS_PRICE'
      OnChange = cdsStockSettlementHACS_PRICEChange
      DisplayFormat = '#,##0.00 %'
    end
    object cdsStockSettlementHACS_PERCENT: TFloatField
      FieldName = 'ACS_PERCENT'
      OnChange = cdsStockSettlementHACS_PERCENTChange
      DisplayFormat = '#,##0.00 %'
    end
    object cdsStockSettlementHSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsStockSettlementHSTOCK_SETTLE_MODE: TStringField
      FieldName = 'STOCK_SETTLE_MODE'
      Size = 1
    end
    object cdsStockSettlementHqryStockSettlement_D: TDataSetField
      FieldName = 'qryStockSettlement_D'
    end
  end
  object dsStockSettlementH: TDataSource
    DataSet = cdsStockSettlementH
    Left = 424
    Top = 392
  end
end
