inherited frmReportDormantClient: TfrmReportDormantClient
  Caption = 'Dormant Client'
  ClientWidth = 723
  ExplicitWidth = 723
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Width = 723
    Height = 352
    ExplicitTop = 335
    ExplicitWidth = 0
    ExplicitHeight = 352
  end
  inherited lcParameter: TdxLayoutControl
    Width = 723
    Height = 43
    Visible = False
    ExplicitTop = 284
    ExplicitWidth = 0
    ExplicitHeight = 43
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    Width = 723
    ExplicitTop = 327
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 723
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
    ReportName = 'Credit Control\ListDormantClient.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DATEPARAM'
        ParamType = ptInput
      end>
  end
end
