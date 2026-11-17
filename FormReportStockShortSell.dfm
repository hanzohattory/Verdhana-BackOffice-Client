inherited frmReportStockShortSell: TfrmReportStockShortSell
  Caption = 'Stock Short Sell'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 65
    Height = 360
  end
  inherited lcParameter: TdxLayoutControl
    Height = 35
    Visible = False
    ExplicitHeight = 35
  end
  inherited spReport: TcxSplitter
    Top = 57
    ExplicitWidth = 710
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'Report Stock Short Sell'
        Description = 'Report Stock Short Sell'
      end>
    Left = 536
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'barPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'barExportToPdf'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'ZoomScale'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 52
          Visible = True
          ItemName = 'txtPages'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barOutline'
        end
        item
          Visible = True
          ItemName = 'barThumbnails'
        end
        item
          Visible = True
          ItemName = 'barPageSetting'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dtReport'
        end
        item
          Visible = True
          ItemName = 'barReloadData'
        end>
    end
    object dtReport: TcxBarEditItem
      Caption = 'Report Date'
      Category = 0
      Hint = 'Report Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\StockShortSell.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'ReportDate'
        ParamType = ptUnknown
      end>
  end
end
