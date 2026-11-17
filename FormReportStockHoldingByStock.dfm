inherited frmReportStockHoldingByStock: TfrmReportStockHoldingByStock
  Caption = 'Stock Holding By Stock'
  ClientWidth = 701
  ExplicitWidth = 701
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 701
    ExplicitWidth = 706
  end
  inherited lcParameter: TdxLayoutControl
    Width = 701
    ExplicitWidth = 706
    object cbReportType: TcxImageComboBox [0]
      Left = 75
      Top = 10
      EditValue = 'E'
      Properties.Items = <
        item
          Description = 'External'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Internal'
          Value = 'I'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Width = 701
    ExplicitWidth = 706
  end
  inherited StatusBar: TdxStatusBar
    Width = 701
    ExplicitTop = -20
    ExplicitWidth = 706
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\StockHoldingReportByStockExternal.fr3'
  end
end
