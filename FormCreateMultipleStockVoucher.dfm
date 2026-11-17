inherited frmCreateMultipleStockVoucher: TfrmCreateMultipleStockVoucher
  Caption = 'frmCreateMultipleStockVoucher'
  ClientHeight = 550
  ClientWidth = 991
  ExplicitWidth = 997
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Top = 161
    Width = 991
    Height = 299
    ExplicitTop = 161
    ExplicitWidth = 991
    ExplicitHeight = 299
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 481
    Width = 991
    ExplicitTop = 481
    ExplicitWidth = 991
    inherited dbNavLog: TDBNavigator
      Left = 877
      Hints.Strings = ()
      ExplicitLeft = 877
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
    Top = 530
    Width = 991
    ExplicitTop = 530
    ExplicitWidth = 991
  end
  inherited tabEditorData: TTabSet
    Top = 460
    Width = 991
    ExplicitTop = 460
    ExplicitWidth = 991
  end
  object dxLayoutControl3: TdxLayoutControl [4]
    Left = 0
    Top = 0
    Width = 991
    Height = 161
    Align = alTop
    TabOrder = 4
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 74
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 110
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 247
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 74
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 101
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 190
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 362
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 74
      Top = 64
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 101
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 190
      Top = 64
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 362
    end
    object grdCashPos: TcxGrid
      Left = 558
      Top = 10
      Width = 396
      Height = 111
      Align = alRight
      TabOrder = 9
      object gvwCashPos: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsStockPosition
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00;(#,##0.00);0.00'
          end
          item
            Format = '#,##0.00;(#,##0.00);0.00'
            Kind = skSum
            FieldName = 'X'
            DisplayText = '#,##0.00;(#,##0.00);0.00'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Stock Position'
          end>
        object gvwCashPosSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwCashPosMARKETCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MARKETCODE'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwCashPosLOCALCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOCALCODE'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwCashPosISSUERNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISSUERNAME'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwCashPosISINCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISINCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwCashPosISINDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISINDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_ONHAND: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_ONHAND'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_OUTS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OUTS'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_ONHOLD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_ONHOLD'
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_BAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_BAL'
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_OVERDUE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OVERDUE'
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_DLV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_DLV'
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwCashPosQTY_RCV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_RCV'
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwCashPos
      end
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 74
      Top = 91
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
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 74
      Top = 118
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 266
      Top = 118
      DataBinding.DataField = 'VOUCHERQTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Value Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit2
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
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      Control = grdCashPos
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Settle Type'
      Parent = dxLayoutControl1Group10
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl3Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Settle Qty'
      Parent = dxLayoutControl3Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Item2: TdxLayoutItem
      CaptionOptions.Text = 'Voucher Qty'
      Parent = dxLayoutControl3Group1
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl3Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object grdMaster: TcxGrid [5]
    Left = 0
    Top = 161
    Width = 991
    Height = 299
    Align = alClient
    TabOrder = 5
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsStockSettlementH
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;#,##0;0'
          Kind = skSum
          FieldName = 'TMP_QTY'
          DisplayText = '#,##0;#,##0;0'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'TMP_PROCESS_QTY'
          DisplayText = '#,##0;(#,##0);0'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.DeletingConfirmation = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          Caption = 'Stock Outstanding'
        end>
      object gvwMasterSSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSSNO: TcxGridDBBandedColumn
        Caption = 'Stock Settlement No'
        DataBinding.FieldName = 'SSNO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSSDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'SSDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'QTY'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterUDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterqryStockSettlement_D: TcxGridDBBandedColumn
        DataBinding.FieldName = 'qryStockSettlement_D'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterACCCUSTODYID: TcxGridDBBandedColumn
        Caption = 'Custody No.'
        DataBinding.FieldName = 'ACCCUSTODYID'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsSelectSIStock
    Left = 640
    Top = 296
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
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockPosByAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 383
    Top = 350
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
    Left = 383
    Top = 398
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
    Left = 537
    Top = 382
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
  object cdsStockSettlementH: TNClientDataset
    Aggregates = <>
    Params = <
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
    ProviderName = 'dspN_dmStockManagement_qryStockSettlement_H'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsStockSettlementHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 764
    Top = 314
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
      KeyFields = 'ACCID'
      Size = 200
      Lookup = True
    end
    object cdsStockSettlementHACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNO'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
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
    end
    object cdsStockSettlementHAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsStockSettlementHINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
  end
  object cdsStockSettlementD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsStockSettlementHqryStockSettlement_D
    Params = <
      item
        DataType = ftInteger
        Name = 'SSID'
        ParamType = ptUnknown
      end>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 764
    Top = 359
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
    Left = 887
    Top = 314
  end
  object cdsSelectSIStock: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SIID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qrySelectSIStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 328
    object cdsSelectSIStockSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsSelectSIStockSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSelectSIStockENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsSelectSIStockVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsSelectSIStockSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsSelectSIStockSIDE_ACC: TStringField
      FieldName = 'SIDE_ACC'
      Size = 1
    end
    object cdsSelectSIStockCLIENT_ACCSIDE: TLargeintField
      FieldName = 'CLIENT_ACCSIDE'
    end
    object cdsSelectSIStockCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsSelectSIStockSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSelectSIStockINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSelectSIStockNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsSelectSIStockACCOUNT_SID: TStringField
      FieldName = 'ACCOUNT_SID'
    end
    object cdsSelectSIStockACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSelectSIStockACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSelectSIStockACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSelectSIStockTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsSelectSIStockBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsSelectSIStockBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsSelectSIStockBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
    end
    object cdsSelectSIStockSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSelectSIStockSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsSelectSIStockSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
    end
    object cdsSelectSIStockSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
    end
    object cdsSelectSIStockSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSelectSIStockSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSelectSIStockPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsSelectSIStockQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsSelectSIStockTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsSelectSIStockDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsSelectSIStockSETTLEDDATE: TDateField
      FieldName = 'SETTLEDDATE'
    end
    object cdsSelectSIStockMOVEDUEDATE: TDateField
      FieldName = 'MOVEDUEDATE'
    end
    object cdsSelectSIStockSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsSelectSIStockSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSelectSIStockOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsSelectSIStockVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
    end
    object cdsSelectSIStockVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsSelectSIStockNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsSelectSIStockKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsSelectSIStockSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsSelectSIStockTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsSelectSIStockACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSelectSIStockUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsSelectSIStockCP_ACCBANKID: TIntegerField
      FieldName = 'CP_ACCBANKID'
    end
    object cdsSelectSIStockCP_BANKCODE: TStringField
      FieldName = 'CP_BANKCODE'
      Size = 10
    end
    object cdsSelectSIStockCP_BANKACCNO: TStringField
      FieldName = 'CP_BANKACCNO'
    end
    object cdsSelectSIStockSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsSelectSIStockSOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsSelectSIStockSOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsSelectSIStockSOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsSelectSIStockTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsSelectSIStockTARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsSelectSIStockTARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsSelectSIStockTARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
    object cdsSelectSIStockCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsSelectSIStockCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsSelectSIStockCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsSelectSIStockCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsSelectSIStockPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsSelectSIStockTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
      Size = 50
    end
    object cdsSelectSIStockSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 50
    end
    object cdsSelectSIStockREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsSelectSIStockSIID_NEW: TLargeintField
      FieldName = 'SIID_NEW'
    end
    object cdsSelectSIStockBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsSelectSIStockACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsSelectSIStockCP_BANKACCNAME: TStringField
      FieldName = 'CP_BANKACCNAME'
      Size = 150
    end
    object cdsSelectSIStockBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsSelectSIStockBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsSelectSIStockBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsSelectSIStockCP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
    object cdsSelectSIStockCMOVE_SETTLE: TStringField
      FieldName = 'CMOVE_SETTLE'
      Size = 1
    end
    object cdsSelectSIStockSMOVE_SETTLE: TStringField
      FieldName = 'SMOVE_SETTLE'
      Size = 1
    end
    object cdsSelectSIStockCUSTODY_INSTR: TLargeintField
      FieldName = 'CUSTODY_INSTR'
    end
    object cdsSelectSIStockCASH_SIID: TLargeintField
      FieldName = 'CASH_SIID'
    end
    object cdsSelectSIStockLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsSelectSIStockLINKSEQID: TIntegerField
      FieldName = 'LINKSEQID'
    end
    object cdsSelectSIStockLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsSelectSIStockLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsSelectSIStockAUTO_WDR: TStringField
      FieldName = 'AUTO_WDR'
      Size = 1
    end
    object cdsSelectSIStockMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSelectSIStockMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSelectSIStockAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSelectSIStockAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSelectSIStockUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSelectSIStockUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSelectSIStockNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSelectSIStockISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSelectSIStockID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSelectSIStockVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
    end
    object cdsSelectSIStockSTOCKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = dmLookup.cdsLuInstrument
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 100
      Lookup = True
    end
  end
  object cdsAccountCustodyList: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 560
    Top = 296
  end
end
