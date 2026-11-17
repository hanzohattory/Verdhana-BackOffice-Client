inherited frmReportDailyReportOddLotPosition: TfrmReportDailyReportOddLotPosition
  Caption = 'Daily Odd Lot'
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
    object edAccCode: TcxButtonEdit [0]
      Left = 54
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    object edAccName: TcxTextEdit [1]
      Left = 190
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 251
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = lcParameterGroup1
      Control = edAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = edAccName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
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
    ReportName = 'Settlement\DailyReportOddLotPosition.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
  end
end
