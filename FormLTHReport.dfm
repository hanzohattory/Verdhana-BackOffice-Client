inherited frmLTHReport: TfrmLTHReport
  Caption = 'Laporan Transaksi Harian'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 71
    Height = 397
    ExplicitTop = 71
    ExplicitHeight = 397
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBUY: TcxGridDBBandedColumn
        Caption = 'Buy'
        DataBinding.FieldName = 'BUY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSELL: TcxGridDBBandedColumn
        Caption = 'Sell'
        DataBinding.FieldName = 'SELL'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL'
        Width = 100
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
    Height = 45
    Align = alTop
    TabOrder = 5
    object dtReportDate: TcxDateEdit
      Left = 74
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
      Left = 200
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Report Date'
      Control = dtReportDate
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
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Laporan Report Harian'
        Description = 'Laporan Report Harian'
      end>
    Left = 301
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
  inherited popMaster: TPopupMenu
    object N5: TMenuItem [9]
      Caption = '-'
    end
    object GeneratetoFile1: TMenuItem [10]
      Action = actGenerateLTH
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsLTHReportTmp
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Visible = False
    end
    inherited actEdit: TNAction
      Visible = False
    end
    inherited actInsertFromCurrentData: TNAction
      Visible = False
    end
    object actGenerateLTH: TNAction
      Category = 'NActions'
      Caption = 'Generate to File'
      OnExecute = actGenerateLTHExecute
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsLTHReport: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryLTHReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 120
    Top = 105
    object cdsLTHReportDATA: TStringField
      FieldName = 'DATA'
      Size = 255
    end
  end
  object cdsLTHReportTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 120
    Top = 160
    object cdsLTHReportTmpDESC: TStringField
      FieldName = 'DESC'
      Size = 200
    end
    object cdsLTHReportTmpBUY: TFloatField
      FieldName = 'BUY'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLTHReportTmpSELL: TFloatField
      FieldName = 'SELL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLTHReportTmpTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'All Format|*.*|Laporan Transaksi Harian|*.lth|Excel File|*.xlsx'
    Left = 315
    Top = 100
  end
  object XLSReadWriteII51: TXLSReadWriteII5
    ComponentVersion = '6.01.10a'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    DoNotReadSheets = False
    Left = 440
    Top = 328
  end
end
