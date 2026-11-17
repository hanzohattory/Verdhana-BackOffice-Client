inherited frmReportTop20TotalLoanMarginClient: TfrmReportTop20TotalLoanMarginClient
  Caption = 'Top 20 Total Loan Margin Client'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    ExplicitWidth = 714
  end
  inherited lcParameter: TdxLayoutControl
    Visible = False
    ExplicitWidth = 714
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    ExplicitWidth = 714
  end
  inherited StatusBar: TdxStatusBar
    ExplicitWidth = 714
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-6-b_Top20TotalLoanMarginClient.fr3'
  end
end
