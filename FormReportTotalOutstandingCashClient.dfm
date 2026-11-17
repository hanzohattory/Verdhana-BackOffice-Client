inherited frmReportTotalOutstandingCashClient: TfrmReportTotalOutstandingCashClient
  Caption = 'Total Outstanding Cash Client'
  ClientWidth = 720
  ExplicitWidth = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Width = 720
    Height = 352
    ExplicitWidth = 718
  end
  inherited lcParameter: TdxLayoutControl
    Width = 720
    Height = 43
    ExplicitWidth = 720
    ExplicitHeight = 43
    object cbTopFilter: TcxImageComboBox [0]
      Left = 75
      Top = 10
      Properties.Items = <
        item
          Description = 'Top 20'
          ImageIndex = 0
          Value = '20'
        end
        item
          Description = 'Top 50'
          Value = '50'
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
      CaptionOptions.Text = 'Report Filter'
      Parent = lcParameterGroup_Root
      Control = cbTopFilter
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    Width = 720
    ExplicitWidth = 718
  end
  inherited StatusBar: TdxStatusBar
    Width = 720
    ExplicitTop = -20
    ExplicitWidth = 718
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-6-a_Top20TotalOutstandingCashClient.fr3'
  end
end
