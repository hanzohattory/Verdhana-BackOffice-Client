inherited frmReportSecuritiesLedgerJournal: TfrmReportSecuritiesLedgerJournal
  Caption = 'Securities Ledger Journal'
  OnShow = FormShow
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Height = 353
    ExplicitTop = 72
    ExplicitHeight = 353
  end
  inherited lcParameter: TdxLayoutControl
    Height = 42
    ExplicitHeight = 42
  end
  inherited spReport: TcxSplitter
    Top = 64
    ExplicitTop = 64
    ExplicitWidth = 710
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
          ItemName = 'dtAsOf'
        end
        item
          Visible = True
          ItemName = 'barReloadData'
        end>
    end
    object dtAsOf: TcxBarEditItem
      Caption = 'As Of'
      Category = 0
      Hint = 'As Of'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Securities_Ledger_Journal.fr3'
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
  end
end
