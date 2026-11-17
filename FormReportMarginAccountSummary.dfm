inherited frmReportMarginAccountSummary: TfrmReportMarginAccountSummary
  Caption = 'Margin Account Summary'
  ClientWidth = 709
  ExplicitWidth = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 709
    ExplicitWidth = 712
  end
  inherited lcParameter: TdxLayoutControl
    Width = 709
    ExplicitWidth = 712
    object dtReportDate: TcxDateEdit [0]
      Left = 75
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbReportType: TcxImageComboBox [1]
      Left = 75
      Top = 37
      Properties.Items = <
        item
          Description = 'Rupiah'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'USD'
          Value = 'U'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
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
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 709
    ExplicitWidth = 712
  end
  inherited StatusBar: TdxStatusBar
    Width = 709
    ExplicitTop = -20
    ExplicitWidth = 712
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Credit Control\MarginAccountSummary.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
