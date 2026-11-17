inherited frmReportTotalLoanMarginClient: TfrmReportTotalLoanMarginClient
  Caption = 'Total Loan Margin Client'
  ClientWidth = 705
  ExplicitWidth = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 705
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 705
    ExplicitTop = 284
    ExplicitWidth = 0
    object cbTopFilter: TcxImageComboBox [0]
      Left = 85
      Top = 10
      Properties.Items = <
        item
          Description = 'Top 10'
          ImageIndex = 0
          Value = '10'
        end
        item
          Description = 'Top 20'
          Value = '20'
        end>
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
      CaptionOptions.Text = 'Format Report'
      Parent = lcParameterGroup_Root
      Control = cbTopFilter
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Width = 705
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 705
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
    ReportName = 'Credit Control\R-CC-2-4_Top10TotalLoanMarginClient.fr3'
  end
end
