inherited frmReportAgingMonitoring: TfrmReportAgingMonitoring
  Caption = 'Aging Monitoring'
  ClientWidth = 718
  ExplicitWidth = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 129
    Width = 718
    Height = 296
    ExplicitTop = 129
    ExplicitWidth = 718
    ExplicitHeight = 296
  end
  inherited lcParameter: TdxLayoutControl
    Width = 718
    Height = 99
    ExplicitWidth = 718
    ExplicitHeight = 99
    object dtDateEdit: TcxDateEdit [0]
      Left = 81
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object edAccFrom: TcxButtonEdit [1]
      Left = 81
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    object edAccTo: TcxButtonEdit [2]
      Left = 81
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object edAccNameTo: TcxTextEdit [3]
      Left = 217
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 280
    end
    object edAccNameFrom: TcxTextEdit [4]
      Left = 217
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 280
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Parent = lcParameterGroup_Root
      Control = dtDateEdit
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Account From'
      Parent = lcParameterGroup2
      Control = edAccFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Account To'
      Parent = lcParameterGroup1
      Control = edAccTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = edAccNameTo
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
      Index = 1
    end
    object lcParameterItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup2
      Control = edAccNameFrom
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup2: TdxLayoutGroup
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
    Top = 121
    Width = 718
    ExplicitTop = 121
    ExplicitWidth = 718
  end
  inherited StatusBar: TdxStatusBar
    Width = 718
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
    ReportName = 'Credit Control\AgingMonitoring.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
