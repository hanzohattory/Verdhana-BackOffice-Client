inherited frmReportClientCommisionList: TfrmReportClientCommisionList
  Caption = 'Client Commision List'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcParameter: TdxLayoutControl
    Visible = False
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
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
    ReportName = 'Retail Business\ClientCommisionList.fr3'
  end
end
