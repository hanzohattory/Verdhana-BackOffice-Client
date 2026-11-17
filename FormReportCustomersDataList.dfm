inherited frmReportCustomerDataList: TfrmReportCustomerDataList
  Caption = 'Customers Data List'
  ClientHeight = 476
  ClientWidth = 954
  ExplicitWidth = 954
  ExplicitHeight = 476
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Width = 954
    Height = 450
    ExplicitWidth = 954
    ExplicitHeight = 450
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    Actions = <
      item
        ActionName = 'actInsert'
      end
      item
        ActionName = 'actDelete'
      end
      item
        ActionName = 'actEdit'
      end
      item
        ActionName = 'actPost'
      end
      item
        ActionName = 'actcancel'
      end>
  end
  inherited aclEditor: TActionList
    inherited actRefresh: TNDataSetRefresh
      OnExecute = actRefreshExecute
    end
    inherited actPrint: TNAction
      Caption = 'Generate To Excel File'
      OnExecute = actPrintExecute
    end
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsCustomersData
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
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
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
    Left = 376
    Top = 216
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 472
    Top = 216
  end
end
