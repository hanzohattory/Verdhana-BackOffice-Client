inherited frmReportCustomersData: TfrmReportCustomersData
  Caption = 'frmReportCustomersData'
  PixelsPerInch = 96
  TextHeight = 13
  inherited spReport: TcxSplitter
    ExplicitWidth = 710
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  object cdsCustomersData: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryCustomersData'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 544
    Top = 368
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 616
    Top = 128
  end
end
