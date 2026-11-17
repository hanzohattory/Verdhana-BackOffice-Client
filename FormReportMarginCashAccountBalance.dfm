inherited frmReportMarginCashAccountBalance: TfrmReportMarginCashAccountBalance
  Caption = 'Margin Cash Account Balance'
  ClientWidth = 717
  ExplicitWidth = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 717
    ExplicitWidth = 715
  end
  inherited lcParameter: TdxLayoutControl
    Width = 717
    Visible = False
    ExplicitWidth = 715
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Width = 717
    ExplicitWidth = 715
  end
  inherited StatusBar: TdxStatusBar
    Width = 717
    ExplicitTop = -20
    ExplicitWidth = 715
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-1-e_MarginCashAccountBalance.fr3'
  end
end
