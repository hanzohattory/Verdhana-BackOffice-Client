inherited frmReportClientAccountBalanceSummary: TfrmReportClientAccountBalanceSummary
  Caption = 'Client Account Balance Summary'
  ClientWidth = 719
  ExplicitWidth = 719
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 161
    Width = 719
    Height = 264
    ExplicitTop = 161
    ExplicitWidth = 713
    ExplicitHeight = 264
  end
  inherited lcParameter: TdxLayoutControl
    Width = 719
    Height = 131
    ExplicitWidth = 713
    ExplicitHeight = 131
    object edAccIdFrom: TcxButtonEdit [0]
      Left = 51
      Top = 55
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccIdFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object edAccNameFrom: TcxTextEdit [1]
      Left = 187
      Top = 55
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 270
    end
    object edAccIdTo: TcxButtonEdit [2]
      Left = 51
      Top = 82
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccIdToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
    end
    object edAccNameTo: TcxTextEdit [3]
      Left = 187
      Top = 82
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 270
    end
    object dtReportDate: TcxDateEdit [4]
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
    object lcParameterGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Account'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcParameterItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup4
      Control = edAccIdFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup4
      Control = edAccNameFrom
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup3
      Control = edAccIdTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup3
      Control = edAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup_Root
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 153
    Width = 719
    ExplicitTop = 153
    ExplicitWidth = 713
  end
  inherited StatusBar: TdxStatusBar
    Width = 719
    ExplicitTop = -20
    ExplicitWidth = 713
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'FA\ClientAccountBalanceSummary.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCIDTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
