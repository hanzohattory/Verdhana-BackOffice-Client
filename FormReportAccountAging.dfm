inherited frmReportAccountAging: TfrmReportAccountAging
  Caption = 'Account Outstanding Aging'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcParameter: TdxLayoutControl
    Visible = False
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
    ReportName = 'Account Management\AccountT4.fr3'
  end
end
