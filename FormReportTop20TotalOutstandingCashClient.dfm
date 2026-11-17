inherited frmReportTop20TotalOutstandingCashClient: TfrmReportTop20TotalOutstandingCashClient
  Caption = 'Top 20 Total Outstanding Cash Client'
  ClientWidth = 718
  ExplicitWidth = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 718
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 718
    Visible = False
    ExplicitTop = 284
    ExplicitWidth = 0
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Width = 718
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 718
    ExplicitTop = -20
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
    ReportName = 'Credit Control\R-CC-2-6-a_Top20TotalOutstandingCashClient.fr3'
  end
end
