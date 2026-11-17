inherited frmStockSettleVoucher: TfrmStockSettleVoucher
  Caption = 'Stock Settle Voucher'
  ClientHeight = 512
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 551
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 241
    Align = alTop
    ExplicitWidth = 994
    ExplicitHeight = 241
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 74
      Top = 10
      DataBinding.DataField = 'SSNO'
      DataBinding.DataSource = dsStockSettlementH
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
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 440
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsStockSettlementH
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 74
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 101
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 190
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 362
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 74
      Top = 91
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 101
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 190
      Top = 91
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 362
    end
    object cxButton1: TcxButton [7]
      Left = 316
      Top = 190
      Width = 75
      Height = 25
      Caption = 'All'
      TabOrder = 19
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [8]
      Left = 397
      Top = 190
      Width = 75
      Height = 25
      Caption = 'UnCheck'
      TabOrder = 20
      OnClick = cxButton2Click
    end
    object chkAllOutstand: TcxCheckBox [9]
      Left = 86
      Top = 190
      Properties.OnChange = chkAllOutstandPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
    end
    object dtDueDate: TcxDateEdit [10]
      Left = 109
      Top = 190
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnChange = dtDueDatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 96
    end
    object Filtered: TcxButton [11]
      Left = 235
      Top = 190
      Width = 75
      Height = 25
      Caption = 'Filtered'
      TabOrder = 18
      OnClick = FilteredClick
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [12]
      Left = 74
      Top = 118
      DataBinding.DataField = 'SETTLE_TYPE'
      DataBinding.DataSource = dsStockSettlementH
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
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 80
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [13]
      Left = 74
      Top = 145
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [14]
      Left = 74
      Top = 64
      DataBinding.DataField = 'SSDESC'
      DataBinding.DataSource = dsStockSettlementH
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 478
    end
    object cxDBTextEdit7: TcxDBTextEdit [15]
      Left = 244
      Top = 118
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 100
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [16]
      Left = 434
      Top = 118
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsStockSettlementH
      Properties.Items = <
        item
          Description = 'VP'
          Value = 'VP'
        end
        item
          Description = 'FOP'
          Value = 'FOP'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 100
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [17]
      Left = 585
      Top = 118
      DataBinding.DataField = 'ACCCUSTODYID'
      DataBinding.DataSource = dsStockSettlementH
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCCUSTODYID'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          FieldName = 'CUSTODYACCNO'
        end>
      Properties.ListSource = dsAccountCustody
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object edAmount: TcxDBCurrencyEdit [18]
      Left = 451
      Top = 145
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsStockSettlementH
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [19]
      Left = 851
      Top = 28
      DataBinding.DataField = 'QTY_ONHAND'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [20]
      Left = 851
      Top = 55
      DataBinding.DataField = 'QTY_ONHOLD'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [21]
      Left = 851
      Top = 136
      DataBinding.DataField = 'QTY_BAL'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit [22]
      Left = 851
      Top = 82
      DataBinding.DataField = 'QTY_DLV'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [23]
      Left = 851
      Top = 109
      DataBinding.DataField = 'QTY_RCV'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object cxDBTextEdit15: TcxDBTextEdit [24]
      Left = 282
      Top = 145
      DataBinding.DataField = 'ORIG_AMOUNT'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit16: TcxDBTextEdit [25]
      Left = 666
      Top = 145
      DataBinding.DataField = 'DIFF_AMOUNT'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 87
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Voucher No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Account No.'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Check'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Net Due Date'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'All Outstand'
      Control = chkAllOutstand
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcDueDate: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'cxDateEdit1'
      CaptionOptions.Visible = False
      Control = dtDueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = Filtered
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Settle Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Total Qty'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 478
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcInsType1: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      Visible = False
      CaptionOptions.Text = 'Instruction Type'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcInsType2: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Instruction Type'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcCustodyNo: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Custody'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcAmount: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Amount'
      Control = edAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Qty On Hand'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Stock Position Information'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Qty On Hold'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Qty Balance'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Qty Deliver'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Qty Receive'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Original Amount'
      Control = cxDBTextEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Different Amount'
      Control = cxDBTextEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 443
    Width = 994
    ExplicitTop = 443
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 492
    Width = 994
    ExplicitTop = 492
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 422
    Width = 994
    ExplicitTop = 422
    ExplicitWidth = 994
  end
  object grdMaster: TcxGrid [4]
    Left = 0
    Top = 241
    Width = 994
    Height = 181
    Align = alClient
    TabOrder = 4
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellClick = gvwMasterCellClick
      OnEditing = gvwMasterEditing
      DataController.DataSource = dsSubject
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;#,##0;0'
          Kind = skSum
          FieldName = 'OUTSTANDQTY_X'
          Column = gvwMasterOUTSTANDQTY
          DisplayText = '#,##0;#,##0;0'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'PROCESSQTY_X'
          Column = gvwMasterPROCESSQTY
          DisplayText = '#,##0;(#,##0);0'
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
      object gvwMasterSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSINO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SINO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSITYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SITYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        RepositoryItem = dmGlobal.luReceiveDeliver
        Options.Focusing = False
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Options.Focusing = False
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taRightJustify
        Options.Focusing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERQTY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taRightJustify
        Options.Focusing = False
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSI_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SI_DESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCHECKED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHECKED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.OnChange = gvwMasterCHECKEDPropertiesChange
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object gvwMasterPROCESSQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSQTY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 0
        Properties.Nullstring = '0'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterBASE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_NETAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_NETAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterOUTSTANDQTY: TcxGridDBBandedColumn
        Caption = 'Outstand Qty'
        DataBinding.FieldName = 'OUTSTANDQTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSQTY_X: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSQTY_X'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterOUTSTANDQTY_X: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTSTANDQTY_X'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterBOARDID: TcxGridDBBandedColumn
        Caption = 'Board'
        DataBinding.FieldName = 'BOARDID'
        RepositoryItem = dmGlobal.luBoard
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsStockOutstanding
    Left = 537
    Top = 256
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 408
    Top = 376
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
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
    OnCalcFields = cdsStockSettlementHCalcFields
    OnReconcileError = cdsStockSettlementHReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 636
    Top = 258
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
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettlementHVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettlementHACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockSettlementHSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockSettlementHQTY: TFloatField
      FieldName = 'QTY'
      OnChange = cdsStockSettlementHQTYChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementHSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
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
    object cdsStockSettlementHACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'CL_ACCID'
      Size = 200
      Lookup = True
    end
    object cdsStockSettlementHACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNO'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'CL_ACCID'
      Size = 30
      Lookup = True
    end
    object cdsStockSettlementHSTOCKCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKCODE'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'LOCALCODE'
      KeyFields = 'STOCKID'
      Size = 30
      Lookup = True
    end
    object cdsStockSettlementHSTOCKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 200
      Lookup = True
    end
    object cdsStockSettlementHqryStockSettlement_D: TDataSetField
      FieldName = 'qryStockSettlement_D'
    end
    object cdsStockSettlementHACCCUSTODYID: TLargeintField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsStockSettlementHAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettlementHINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      OnChange = cdsStockSettlementHINSTRUCTION_TYPEChange
      Size = 10
    end
    object cdsStockSettlementHCL_ACCID: TLargeintField
      FieldName = 'CL_ACCID'
    end
    object cdsStockSettlementHORIG_AMOUNT: TFloatField
      FieldName = 'ORIG_AMOUNT'
      OnChange = cdsStockSettlementHORIG_AMOUNTChange
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettlementHDIFF_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
      Calculated = True
    end
  end
  object cdsStockSettlementD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsStockSettlementHqryStockSettlement_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 636
    Top = 303
    object cdsStockSettlementDSSID: TLargeintField
      FieldName = 'SSID'
      Required = True
    end
    object cdsStockSettlementDSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsStockSettlementDQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsStockSettlementDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockSettlementDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockSettlementDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockSettlementDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockSettlementDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockSettlementDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockSettlementDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockSettlementDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockSettlementDID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsStockSettlementH: TDataSource
    DataSet = cdsStockSettlementH
    Left = 759
    Top = 258
  end
  object cdsStockOutstanding: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockOutstanding'
    RemoteServer = dmGlobal.dspConnection
    BeforeEdit = cdsStockOutstandingBeforeEdit
    BeforePost = cdsStockOutstandingBeforePost
    OnCalcFields = cdsStockOutstandingCalcFields
    OnFilterRecord = cdsStockOutstandingFilterRecord
    OnReconcileError = cdsStockSettlementHReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 255
    Top = 246
    object cdsStockOutstandingSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsStockOutstandingSINO: TStringField
      DisplayLabel = 'SI No.'
      FieldName = 'SINO'
    end
    object cdsStockOutstandingENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockOutstandingTRDDATE: TDateField
      DisplayLabel = 'Trans Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockOutstandingDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockOutstandingSITYPE: TStringField
      DisplayLabel = 'SI Type'
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsStockOutstandingSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsStockOutstandingPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockOutstandingQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockOutstandingVOUCHERQTY: TFloatField
      DisplayLabel = 'Voucher Qty'
      FieldName = 'VOUCHERQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockOutstandingSI_DESC: TStringField
      DisplayLabel = 'SI Desc'
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsStockOutstandingMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockOutstandingMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockOutstandingSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsStockOutstandingBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsStockOutstandingBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsStockOutstandingSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsStockOutstandingSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsStockOutstandingSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockOutstandingCHECKED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'CHECKED'
      OnChange = cdsStockOutstandingCHECKEDChange
    end
    object cdsStockOutstandingPROCESSQTY: TFloatField
      DisplayLabel = 'Process Qty'
      FieldKind = fkInternalCalc
      FieldName = 'PROCESSQTY'
      DisplayFormat = '#,##0;(#,##0);0'
      EditFormat = '#'
    end
    object cdsStockOutstandingOUTSTANDQTY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OUTSTANDQTY'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsStockOutstandingPROCESSQTY_X: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PROCESSQTY_X'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsStockOutstandingOUTSTANDQTY_X: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OUTSTANDQTY_X'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsStockOutstandingBOARDID: TIntegerField
      FieldName = 'BOARDID'
    end
  end
  object cdsStockPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
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
    ProviderName = 'dspN_dmStockManagement_qryStockPosByAccAndStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 255
    Top = 294
    object cdsStockPositionSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockPositionMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsStockPositionLOCALCODE: TStringField
      DisplayLabel = 'Local Code'
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsStockPositionISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsStockPositionISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsStockPositionISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
      ReadOnly = True
    end
    object cdsStockPositionQTY_ONHAND: TFloatField
      DisplayLabel = 'On Hand'
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionQTY_OUTS: TFloatField
      DisplayLabel = 'Outstand'
      FieldName = 'QTY_OUTS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionQTY_ONHOLD: TFloatField
      DisplayLabel = 'On Hold'
      FieldName = 'QTY_ONHOLD'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionQTY_BAL: TFloatField
      DisplayLabel = 'Balance'
      FieldName = 'QTY_BAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionQTY_OVERDUE: TFloatField
      DisplayLabel = 'Overdue'
      FieldName = 'QTY_OVERDUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionQTY_DLV: TFloatField
      DisplayLabel = 'Deliver'
      FieldName = 'QTY_DLV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionQTY_RCV: TFloatField
      DisplayLabel = 'Receive'
      FieldName = 'QTY_RCV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsStockPosition: TDataSource
    DataSet = cdsStockPosition
    Left = 255
    Top = 342
  end
  object cdsCustodyInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CUSTODY_INSTRID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCustodyInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 409
    Top = 326
    object cdsCustodyInstructionCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsCustodyInstructionCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 30
    end
    object cdsCustodyInstructionEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsCustodyInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCustodyInstructionACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCustodyInstructionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCustodyInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsCustodyInstructionTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsCustodyInstructionSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsCustodyInstructionSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsCustodyInstructionINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsCustodyInstructionPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsCustodyInstructionPARTY_ACC: TStringField
      FieldName = 'PARTY_ACC'
    end
    object cdsCustodyInstructionCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsCustodyInstructionCOUNTER_CODE: TStringField
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsCustodyInstructionCOUNTER_ACC: TStringField
      FieldName = 'COUNTER_ACC'
    end
    object cdsCustodyInstructionSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsCustodyInstructionSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCustodyInstructionQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsCustodyInstructionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCustodyInstructionORIGINAL_AMT: TFloatField
      FieldName = 'ORIGINAL_AMT'
    end
    object cdsCustodyInstructionSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
    end
    object cdsCustodyInstructionSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsCustodyInstructionSALDO_TYPE: TStringField
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsCustodyInstructionISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsCustodyInstructionFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsCustodyInstructionFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsCustodyInstructionFOREIGN_SETTTLEAMT: TFloatField
      FieldName = 'FOREIGN_SETTTLEAMT'
    end
    object cdsCustodyInstructionCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsCustodyInstructionREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsCustodyInstructionPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsCustodyInstructionTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
    end
    object cdsCustodyInstructionSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 30
    end
    object cdsCustodyInstructionBENEFICIARYCODE: TStringField
      FieldName = 'BENEFICIARYCODE'
      Size = 10
    end
    object cdsCustodyInstructionBENEFICIARYACC: TStringField
      FieldName = 'BENEFICIARYACC'
    end
    object cdsCustodyInstructionCORPACT_TYPE: TStringField
      FieldName = 'CORPACT_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsCustodyInstructionLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCustodyInstructionCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsCustodyInstructionCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsCustodyInstructionCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsCustodyInstructionCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsCustodyInstructionCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsCustodyInstructionSID_NO: TStringField
      FieldName = 'SID_NO'
    end
    object cdsCustodyInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCustodyInstructionMATCH: TStringField
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsCustodyInstructionKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsCustodyInstructionCLIENT_ACCID: TLargeintField
      FieldName = 'CLIENT_ACCID'
    end
    object cdsCustodyInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCustodyInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCustodyInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCustodyInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCustodyInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCustodyInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCustodyInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCustodyInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCustodyInstructionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCustodyInstructionBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsCustodyInstructionDHKID: TLargeintField
      FieldName = 'DHKID'
    end
    object cdsCustodyInstructionNEW_CUSTODY_INSTRID: TLargeintField
      FieldName = 'NEW_CUSTODY_INSTRID'
    end
    object cdsCustodyInstructionMERGE_ID: TIntegerField
      FieldName = 'MERGE_ID'
    end
    object cdsCustodyInstructionSPLIT_ID: TIntegerField
      FieldName = 'SPLIT_ID'
    end
    object cdsCustodyInstructionIS_MERGE: TBooleanField
      FieldName = 'IS_MERGE'
    end
    object cdsCustodyInstructionIS_SPLIT: TBooleanField
      FieldName = 'IS_SPLIT'
    end
  end
  object cdsAccountCustody: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 256
    Top = 440
    object cdsAccountCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccountCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountCustodyCUSTODYCODE: TStringField
      DisplayLabel = 'Custody Code'
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsAccountCustodyCUSTODYACCNO: TStringField
      DisplayLabel = 'Custody Account No.'
      DisplayWidth = 60
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsAccountCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsAccountCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsAccountCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 2
    end
  end
  object dsAccountCustody: TDataSource
    DataSet = cdsAccountCustody
    Left = 256
    Top = 392
  end
end
