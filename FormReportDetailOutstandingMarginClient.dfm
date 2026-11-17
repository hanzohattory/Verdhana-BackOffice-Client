inherited frmReportDetailOutstandingMarginClient: TfrmReportDetailOutstandingMarginClient
  Caption = 'Outstanding Nasabah Margin'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcParameter: TdxLayoutControl
    Visible = False
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    ExplicitWidth = 710
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-1-c_DetailOutstandingNasabahMargin .fr3'
  end
end
