inherited frmReportBOFISDHKmatch: TfrmReportBOFISDHKmatch
  Caption = 'BOFIS - DHK Match Unmatch'
  ClientHeight = 390
  ClientWidth = 620
  ExplicitWidth = 620
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 620
    Height = 265
    ExplicitWidth = 620
    ExplicitHeight = 265
  end
  inherited lcParameter: TdxLayoutControl
    Width = 620
    ExplicitWidth = 620
    object cbReportType: TcxImageComboBox [0]
      Left = 75
      Top = 10
      EditValue = 'M'
      Properties.Items = <
        item
          Description = 'BOFIS - DHK Match'
          ImageIndex = 0
          Value = 'M'
        end
        item
          Description = 'BOFIS Unmatch'
          Value = 'B'
        end
        item
          Description = 'DHK Unmatch'
          Value = 'U'
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
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Width = 620
    ExplicitWidth = 620
  end
  inherited StatusBar: TdxStatusBar
    Top = 370
    Width = 620
    ExplicitTop = 370
    ExplicitWidth = 620
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\MatchReport.fr3'
  end
end
