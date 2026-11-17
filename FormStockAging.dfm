inherited frmStockAging: TfrmStockAging
  Caption = 'Stock Aging'
  ClientHeight = 506
  ClientWidth = 749
  ExplicitWidth = 749
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 749
    Height = 45
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 223
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 45
    Width = 749
    Height = 461
    Align = alClient
    TabOrder = 1
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsStockAging
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.BandMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end
        item
          Caption = 'Over Due'
        end
        item
          Caption = 'T0'
        end
        item
          Caption = 'T1'
        end
        item
          Caption = 'T2'
        end
        item
          Caption = 'T3'
        end
        item
          Caption = '> T3'
        end>
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCNO'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_CODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        Caption = 'Market Code'
        DataBinding.FieldName = 'MARKETCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterLOCALCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'LOCALCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_NAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'INSTRUMENT_NAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterQTY_ONHAND: TcxGridDBBandedColumn
        Caption = 'Qty On Hand'
        DataBinding.FieldName = 'QTY_ONHAND'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterDLVOD: TcxGridDBBandedColumn
        Caption = 'Deliver'
        DataBinding.FieldName = 'DLVOD'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRCVOD: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'RCVOD'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDLVT0: TcxGridDBBandedColumn
        Caption = 'Deliver'
        DataBinding.FieldName = 'DLVT0'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRCVT0: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'RCVT0'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDLVT1: TcxGridDBBandedColumn
        Caption = 'Deliver'
        DataBinding.FieldName = 'DLVT1'
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRCVT1: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'RCVT1'
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDLVT2: TcxGridDBBandedColumn
        Caption = 'Deliver'
        DataBinding.FieldName = 'DLVT2'
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRCVT2: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'RCVT2'
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDLVT3: TcxGridDBBandedColumn
        Caption = 'Deliver'
        DataBinding.FieldName = 'DLVT3'
        Width = 120
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRCVT3: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'RCVT3'
        Width = 120
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDLVUptoT3: TcxGridDBBandedColumn
        Caption = 'Deliver'
        DataBinding.FieldName = 'DLVUptoT3'
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRCVUptoT3: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'RCVUptoT3'
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterOD: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'OD'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterT0: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'T0'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterT1: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'T1'
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterT2: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'T2'
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterT3: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'T3'
        Width = 120
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterUptoT3: TcxGridDBBandedColumn
        Caption = 'Net'
        DataBinding.FieldName = 'UptoT3'
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited popDocking: TPopupMenu
    Left = 184
    Top = 160
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclStockAging
    Left = 184
    Top = 112
  end
  object aclStockAging: TActionList
    Left = 296
    Top = 112
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
    end
    object actSaveGridExcel: TNAction
      Category = 'NActions'
      Caption = 'Save Grid to Excel'
      OnExecute = actSaveGridExcelExecute
      CheckPermission = False
    end
  end
  object dsStockAging: TDataSource
    DataSet = cdsStockAging
    Left = 296
    Top = 208
  end
  object cdsStockAging: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
        Value = 42752d
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockAging'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsStockAgingCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 160
    object cdsStockAgingACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsStockAgingACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsStockAgingACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsStockAgingACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 30
    end
    object cdsStockAgingACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsStockAgingINSTRUMENT_ID: TIntegerField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsStockAgingINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsStockAgingMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
    end
    object cdsStockAgingLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
    end
    object cdsStockAgingINSTRUMENT_NAME: TStringField
      FieldName = 'INSTRUMENT_NAME'
      Size = 150
    end
    object cdsStockAgingQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingDLVOD: TFloatField
      FieldName = 'DLVOD'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingRCVOD: TFloatField
      FieldName = 'RCVOD'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingDLVT0: TFloatField
      FieldName = 'DLVT0'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingRCVT0: TFloatField
      FieldName = 'RCVT0'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingDLVT1: TFloatField
      FieldName = 'DLVT1'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingRCVT1: TFloatField
      FieldName = 'RCVT1'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingDLVT2: TFloatField
      FieldName = 'DLVT2'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingRCVT2: TFloatField
      FieldName = 'RCVT2'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingDLVT3: TFloatField
      FieldName = 'DLVT3'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingRCVT3: TFloatField
      FieldName = 'RCVT3'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingDLVUptoT3: TFloatField
      FieldName = 'DLVUptoT3'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingRCVUptoT3: TFloatField
      FieldName = 'RCVUptoT3'
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsStockAgingOD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OD'
      DisplayFormat = '#,##0 ;(#,##0);0 '
      Calculated = True
    end
    object cdsStockAgingT0: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T0'
      DisplayFormat = '#,##0 ;(#,##0);0 '
      Calculated = True
    end
    object cdsStockAgingT1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T1'
      DisplayFormat = '#,##0 ;(#,##0);0 '
      Calculated = True
    end
    object cdsStockAgingT2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T2'
      DisplayFormat = '#,##0 ;(#,##0);0 '
      Calculated = True
    end
    object cdsStockAgingT3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T3'
      DisplayFormat = '#,##0 ;(#,##0);0 '
      Calculated = True
    end
    object cdsStockAgingUptoT3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UptoT3'
      DisplayFormat = '#,##0 ;(#,##0);0 '
      Calculated = True
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 184
    Top = 256
  end
  object popMaster: TPopupMenu
    OwnerDraw = True
    Left = 184
    Top = 208
    object SaveGridtoExcel1: TMenuItem
      Action = actSaveGridExcel
    end
  end
end
