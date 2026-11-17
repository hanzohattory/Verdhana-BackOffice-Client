inherited frmReportMonthlyLTAB: TfrmReportMonthlyLTAB
  Caption = 'MonthlyL TAB'
  ClientWidth = 713
  ExplicitWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 713
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 713
    Visible = False
    ExplicitTop = 284
    ExplicitWidth = 0
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Width = 713
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 713
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
    ReportName = 'Credit Control\R-CC-2-2-c_MonthlyLTAB.fr3'
  end
end
