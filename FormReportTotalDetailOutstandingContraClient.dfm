inherited frmReportTotalDetailOutstandingContraClient: TfrmReportTotalDetailOutstandingContraClient
  Caption = 'Total Detail Outstanding Contra Client'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcParameter: TdxLayoutControl
    object dtReportDate: TcxDateEdit [0]
      Left = 74
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup_Root
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
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
    ReportName = 'Credit Control\R-CC-2-2-b_TotalDetailOutstandingCashClient.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
