inherited frmReportScheduleCorporateAction: TfrmReportScheduleCorporateAction
  Caption = 'Schedule Corporate Action'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Visible = False
    ExplicitTop = 284
    ExplicitWidth = 0
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
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
    ReportName = 'Settlement\ScheduleCorporateAction.fr3'
  end
end
