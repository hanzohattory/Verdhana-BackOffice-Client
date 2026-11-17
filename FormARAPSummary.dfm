inherited frmARAPSummary: TfrmARAPSummary
  Caption = 'AR AP Summary'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Height = 353
    ExplicitTop = 334
    ExplicitHeight = 353
  end
  inherited lcParameter: TdxLayoutControl
    Height = 42
    ExplicitHeight = 42
    object dtDate: TcxDateEdit [0]
      Left = 38
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
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
      CaptionOptions.Text = 'Date'
      Parent = lcParameterGroup_Root
      Control = dtDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 64
    ExplicitTop = 326
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
    ReportName = 'Cash Management\ARAP_Summary.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
