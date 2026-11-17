inherited frmMarginAlertList: TfrmMarginAlertList
  Caption = 'Margin Alert'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 67
    Height = 401
    ExplicitTop = 67
    ExplicitHeight = 401
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterMGRALRTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MGRALRTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterALERTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALERTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCRUED_INTEREST'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCASH_ONHAND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_ONHAND'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCASH_QQ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_QQ'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCASH_SUBACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_SUBACC'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCASH_ONHOLD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_ONHOLD'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterARAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ARAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAPAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCASH_OUTS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_OUTS'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCASH_OTHERS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_OTHERS'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterRATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATIO'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCASH_DRAWDOWN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_DRAWDOWN'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_DRAWDOWN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_DRAWDOWN'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCASH_SHORTFALL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_SHORTFALL'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_SHORTFALL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_SHORTFALL'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterMCALDAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MCALDAY'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterMCALSTATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MCALSTATUS'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 41
    Align = alTop
    TabOrder = 5
    object dtAlertDate: TcxDateEdit
      Left = 64
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Alert Date'
      Control = dtAlertDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'MarginAlert'
        Description = 'MarginAlert'
      end>
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsMarginAlert
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    ListDataset = cdsMarginAlert
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Credit Control\MarginCallLetter.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'ALERTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
  end
  object cdsMarginAlert: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ALERTDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryMarginAlert'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 54
    Top = 135
    object cdsMarginAlertMGRALRTID: TLargeintField
      FieldName = 'MGRALRTID'
      Required = True
    end
    object cdsMarginAlertACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsMarginAlertALERTDATE: TDateTimeField
      DisplayLabel = 'Alert Date'
      FieldName = 'ALERTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsMarginAlertACCRUED_INTEREST: TFloatField
      DisplayLabel = 'Accrued Interest'
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_ONHAND: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_QQ: TFloatField
      DisplayLabel = 'Cash QQ'
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_SUBACC: TFloatField
      DisplayLabel = 'Cash Sub Acc'
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_ONHOLD: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertARAMT: TFloatField
      DisplayLabel = 'AR Amount'
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertAPAMT: TFloatField
      DisplayLabel = 'AP Amount'
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_OUTS: TFloatField
      DisplayLabel = 'Cash Outstand'
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_OTHERS: TFloatField
      DisplayLabel = 'Cash Others'
      FieldName = 'CASH_OTHERS'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertRATIO: TFloatField
      DisplayLabel = 'Ratio'
      FieldName = 'RATIO'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertCASH_DRAWDOWN: TFloatField
      DisplayLabel = 'Cash Drawdown'
      FieldName = 'CASH_DRAWDOWN'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertSTOCK_DRAWDOWN: TFloatField
      DisplayLabel = 'Stock Drowndown'
      FieldName = 'STOCK_DRAWDOWN'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsMarginAlertCASH_SHORTFALL: TFloatField
      DisplayLabel = 'Cash Shortfall'
      FieldName = 'CASH_SHORTFALL'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsMarginAlertSTOCK_SHORTFALL: TFloatField
      DisplayLabel = 'Stock Shortfall'
      FieldName = 'STOCK_SHORTFALL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsMarginAlertMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMarginAlertMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMarginAlertAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMarginAlertAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMarginAlertUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMarginAlertUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMarginAlertNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMarginAlertISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMarginAlertID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMarginAlertMCALDAY: TIntegerField
      DisplayLabel = 'Margin Call Day'
      FieldName = 'MCALDAY'
      DisplayFormat = '#,##0'
    end
    object cdsMarginAlertMCALSTATUS: TStringField
      DisplayLabel = 'Margin Call Status'
      FieldName = 'MCALSTATUS'
    end
    object cdsMarginAlertACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsMarginAlertACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
  end
end
