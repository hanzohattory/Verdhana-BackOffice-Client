inherited frmReportClientDetail: TfrmReportClientDetail
  Caption = 'Client Detail'
  ClientWidth = 713
  ExplicitWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 129
    Width = 713
    Height = 296
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 713
    Height = 99
    ExplicitWidth = 713
    ExplicitHeight = 99
    object edAccCodeFrom: TcxButtonEdit [0]
      Left = 51
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodeFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    object edAccCodeTo: TcxButtonEdit [1]
      Left = 51
      Top = 55
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodeToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object edAccNameFrom: TcxTextEdit [2]
      Left = 187
      Top = 28
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 290
    end
    object edAccNameTo: TcxTextEdit [3]
      Left = 187
      Top = 55
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 290
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup4
      Control = edAccCodeFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup1
      Control = edAccCodeTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup4
      Control = edAccNameFrom
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = edAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Account'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcParameterGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 121
    Width = 713
    ExplicitTop = 105
    ExplicitWidth = 713
  end
  inherited StatusBar: TdxStatusBar
    Width = 713
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
    ReportName = 'Credit Control\ClientDetails.fr3'
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
      end>
  end
end
