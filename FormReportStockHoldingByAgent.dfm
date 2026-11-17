inherited frmReportStockHoldingByAgent: TfrmReportStockHoldingByAgent
  Caption = 'Stock Holding By Agent'
  ClientHeight = 394
  ClientWidth = 620
  ExplicitWidth = 620
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 620
    Height = 269
    ExplicitWidth = 620
    ExplicitHeight = 269
  end
  inherited lcParameter: TdxLayoutControl
    Width = 620
    ExplicitWidth = 620
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
    Width = 620
    ExplicitWidth = 620
  end
  inherited StatusBar: TdxStatusBar
    Top = 374
    Width = 620
    ExplicitTop = 374
    ExplicitWidth = 620
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-2-c_StockHoldingByStockExternal.fr3'
  end
end
