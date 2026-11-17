inherited frmStockSettleVoucherMultiple: TfrmStockSettleVoucherMultiple
  Caption = 'Stock Settle Voucher'
  ClientHeight = 570
  ClientWidth = 994
  ExplicitWidth = 1000
  ExplicitHeight = 599
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 209
    Align = alTop
    ExplicitWidth = 994
    ExplicitHeight = 209
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 91
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object dtValue: TcxDBDateEdit [1]
      Left = 254
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsStockSettlementH
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 91
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 101
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 207
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 362
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 91
      Top = 91
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 101
    end
    object cxDBTextEdit5: TcxDBTextEdit [5]
      Left = 207
      Top = 91
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsStockSettlementH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 362
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
      Left = 297
      Top = 118
      DataBinding.DataField = 'SETTLE_SIDE'
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
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [7]
      Left = 91
      Top = 145
      DataBinding.DataField = 'OUTSTANDQTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [8]
      Left = 91
      Top = 64
      DataBinding.DataField = 'SSDESC'
      DataBinding.DataSource = dsStockSettlementH
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 478
    end
    object cxDBTextEdit8: TcxDBTextEdit [9]
      Left = 851
      Top = 28
      DataBinding.DataField = 'QTY_ONHAND'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [10]
      Left = 851
      Top = 55
      DataBinding.DataField = 'QTY_ONHOLD'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [11]
      Left = 851
      Top = 136
      DataBinding.DataField = 'QTY_BAL'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit [12]
      Left = 851
      Top = 82
      DataBinding.DataField = 'QTY_DLV'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [13]
      Left = 851
      Top = 109
      DataBinding.DataField = 'QTY_RCV'
      DataBinding.DataSource = dsStockPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBTextEdit15: TcxDBTextEdit [14]
      Left = 289
      Top = 145
      DataBinding.DataField = 'OUTSTANDAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 140
    end
    object cbTrans: TcxLookupComboBox [15]
      Left = 91
      Top = 118
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SIID'
      Properties.ListColumns = <
        item
          FieldName = 'LINKNO'
        end
        item
          FieldName = 'SETTLE_SIDE'
        end
        item
          FieldName = 'QTY'
        end
        item
          FieldName = 'SETTLE_NETAMT'
        end
        item
          FieldName = 'DUEDATE'
        end>
      Properties.ListSource = dsSubject
      Properties.OnChange = cbTransPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 140
    end
    object cxDBTextEdit1: TcxDBTextEdit [16]
      Left = 91
      Top = 172
      DataBinding.DataField = 'SINO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [17]
      Left = 289
      Top = 172
      DataBinding.DataField = 'SI_DESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 473
    end
    object cxDBTextEdit9: TcxDBTextEdit [18]
      Left = 437
      Top = 118
      DataBinding.DataField = 'SETTLE_CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutControl1Group13
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Value Date'
      Parent = dxLayoutControl1Group13
      Control = dtValue
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Account No.'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Settle Type'
      Parent = dxLayoutControl1Group8
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Quantity'
      Parent = dxLayoutControl1Group7
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group12
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Qty On Hand'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Stock Position Information'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Qty On Hold'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'Qty Balance'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Qty Deliver'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'Qty Receive'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit15
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Transaction No.'
      Parent = dxLayoutControl1Group8
      Control = cbTrans
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'SI No.'
      Parent = dxLayoutControl1Group14
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'SI Description'
      Parent = dxLayoutControl1Group14
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Settle Ccy'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group15
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 501
    Width = 994
    ExplicitTop = 443
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
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
    Top = 550
    Width = 994
    ExplicitTop = 492
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 480
    Width = 994
    ExplicitTop = 422
    ExplicitWidth = 994
  end
  object grdMaster: TcxGrid [4]
    Left = 0
    Top = 209
    Width = 994
    Height = 271
    Align = alClient
    TabOrder = 4
    ExplicitTop = 208
    ExplicitHeight = 214
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      OnEditing = gvwMasterEditing
      DataController.DataSource = dsStockSplit
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.##;(#,##0.##);0'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = gvwMasterAMOUNT
        end
        item
          Format = '#,##0.##;(#,##0.##);0'
          Kind = skSum
          FieldName = 'ORIG_AMOUNT'
          Column = gvwMasterORIG_AMOUNT
        end
        item
          Format = '#,##0.##;(#,##0.##);0'
          Kind = skSum
          FieldName = 'DIFF_AMOUNT'
          Column = gvwMasterDIFF_AMOUNT
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'QTY'
          Column = gvwMasterQTY
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Stock Settle Voucher Split'
        end>
      object gvwMasterACCCUSTODYID: TcxGridDBBandedColumn
        Caption = 'Custody'
        DataBinding.FieldName = 'ACCCUSTODYID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
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
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterINSTR_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTR_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'VP'
            ImageIndex = 0
            Value = 'VP'
          end
          item
            Description = 'FOP'
            Value = 'FOP'
          end>
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterORIG_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORIG_AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFF_AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        RepositoryItem = dmGlobal.luCurrency
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        Caption = 'Ex Rate'
        DataBinding.FieldName = 'EXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNTIDR: TcxGridDBBandedColumn
        Caption = 'Amount (IDR)'
        DataBinding.FieldName = 'AMOUNTIDR'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
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
      Size = 10
    end
    object cdsStockSettlementHCL_ACCID: TLargeintField
      FieldName = 'CL_ACCID'
    end
    object cdsStockSettlementHORIG_AMOUNT: TFloatField
      FieldName = 'ORIG_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettlementHDIFF_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
      Calculated = True
    end
    object cdsStockSettlementHSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
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
    OnCalcFields = cdsStockOutstandingCalcFields
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
      DisplayLabel = 'Original Amount'
      DisplayWidth = 15
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
    object cdsStockOutstandingLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsStockOutstandingLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsStockOutstandingLINKSEQID: TIntegerField
      FieldName = 'LINKSEQID'
    end
    object cdsStockOutstandingLINKNO: TStringField
      DisplayLabel = 'Trans No.'
      FieldName = 'LINKNO'
    end
    object cdsStockOutstandingOUTSTANDAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OUTSTANDAMOUNT'
      DisplayFormat = '#,##0.00'
      Calculated = True
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
      DisplayWidth = 20
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
  object cdsStockSplit: TNClientDataset
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsStockSplitCalcFields
    OnNewRecord = cdsStockSplitNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 264
    object cdsStockSplitDACCCUSTODYID: TLargeintField
      DisplayLabel = 'Account Custody ID'
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsStockSplitQTY: TFloatField
      FieldName = 'QTY'
      OnChange = cdsStockSplitQTYChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldKind = fkInternalCalc
      FieldName = 'AMOUNT'
      OnChange = cdsStockSplitAMOUNTChange
      DisplayFormat = '#,##0;(#,##0);0'
      EditFormat = '#'
    end
    object cdsStockSplitINSTR_TYPE: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'INSTR_TYPE'
      OnChange = cdsStockSplitINSTR_TYPEChange
      Size = 5
    end
    object cdsStockSplitORIG_AMOUNT: TFloatField
      DisplayLabel = 'Original Amount'
      FieldName = 'ORIG_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSplitDIFF_AMOUNT: TFloatField
      DisplayLabel = 'Different Amount'
      FieldKind = fkCalculated
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
      Calculated = True
    end
    object cdsStockSplitSSID: TLargeintField
      FieldName = 'SSID'
    end
    object cdsStockSplitSETTLE_CCYCODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SETTLE_CCYCODE'
      OnChange = cdsStockSplitSETTLE_CCYCODEChange
      Size = 5
    end
    object cdsStockSplitAMOUNTIDR: TFloatField
      FieldName = 'AMOUNTIDR'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSplitEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
  end
  object dsStockSplit: TDataSource
    DataSet = cdsStockSplit
    Left = 96
    Top = 312
  end
  object cdsExRate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuExhangeRate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 368
    object cdsExRateCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsExRateCCYRATE: TFloatField
      FieldName = 'CCYRATE'
    end
  end
end
