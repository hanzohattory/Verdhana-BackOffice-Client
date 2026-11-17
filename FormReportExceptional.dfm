inherited frmReportExceptionalReport: TfrmReportExceptionalReport
  Caption = 'Exceptional Report'
  TextHeight = 13
  inherited lcParameter: TdxLayoutControl
    Visible = False
  end
  inherited spReport: TcxSplitter
    ExplicitWidth = 710
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-5_ExceptionalReport.fr3'
  end
end
