inherited frmReportDetailOutstandingCashClient: TfrmReportDetailOutstandingCashClient
  Caption = 'Detail Outstanding Regular Client Retail Individual'
  ClientWidth = 708
  ExplicitWidth = 708
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 708
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 708
    Visible = False
    ExplicitTop = 284
    ExplicitWidth = 0
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Width = 708
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 708
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
    ReportName = 'Credit Control\R-CC-2-2-b_TotalDetailOutstandingCashClient.fr3'
  end
end
