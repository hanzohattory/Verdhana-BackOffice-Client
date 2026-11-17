inherited frmReportClientCommissionByRange: TfrmReportClientCommissionByRange
  Caption = 'Client Commission'
  ClientHeight = 496
  ClientWidth = 762
  ExplicitWidth = 762
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Width = 762
    Height = 403
    ExplicitTop = 73
    ExplicitWidth = 762
    ExplicitHeight = 403
  end
  inherited lcParameter: TdxLayoutControl
    Width = 762
    Height = 43
    ExplicitWidth = 762
    ExplicitHeight = 43
    object dtStartDate: TcxDateEdit [0]
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object dtEndDate: TcxDateEdit [1]
      Left = 232
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Transaction Date'
      Control = dtStartDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = '-'
      Control = dtEndDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup1: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    Width = 762
    ExplicitTop = 65
    ExplicitWidth = 710
  end
  inherited StatusBar: TdxStatusBar
    Top = 476
    Width = 762
    ExplicitTop = 476
    ExplicitWidth = 762
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Middle Office\ClientCommissionByRange.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
  end
end
