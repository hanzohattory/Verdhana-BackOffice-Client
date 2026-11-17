inherited frmReportMarketCapitalization: TfrmReportMarketCapitalization
  Caption = 'Market Capitalization'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Visible = False
    ExplicitWidth = 0
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    ExplicitWidth = 0
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-1-d_Market Capitalization .fr3'
  end
end
