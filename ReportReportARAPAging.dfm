inherited RptARAPAging: TRptARAPAging
  Caption = 'ARAP Aging'
  ClientHeight = 620
  ClientWidth = 860
  ExplicitWidth = 860
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 860
    Height = 495
  end
  inherited lcParameter: TdxLayoutControl
    Width = 860
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Width = 860
    ExplicitWidth = 710
  end
  inherited StatusBar: TdxStatusBar
    Top = 600
    Width = 860
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Nayaga\Cash Management\ARAPAging.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
  end
end
