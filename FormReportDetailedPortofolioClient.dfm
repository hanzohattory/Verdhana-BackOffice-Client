inherited frmReportDetailedPortofolioClient: TfrmReportDetailedPortofolioClient
  Caption = 'Detailed Portofolio Client'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    ExplicitLeft = -3
    ExplicitTop = 103
  end
  inherited lcParameter: TdxLayoutControl
    ExplicitTop = 24
    object cbClientType: TcxImageComboBox [0]
      Left = 69
      Top = 10
      Properties.Items = <
        item
          Description = 'Margin'
          ImageIndex = 0
          Value = 'm'
        end
        item
          Description = 'Regular'
          Value = 'r'
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
      CaptionOptions.Text = 'Client Type'
      Parent = lcParameterGroup_Root
      Control = cbClientType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-8_DetailedPortfolioTop20ClientRegular.fr3'
  end
end
