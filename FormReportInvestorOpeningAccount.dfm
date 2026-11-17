inherited frmReportInvestorOpeningAccount: TfrmReportInvestorOpeningAccount
  Caption = 'Investor Opening Account Report '
  ClientWidth = 707
  ExplicitWidth = 707
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 129
    Width = 707
    Height = 296
    ExplicitTop = 129
    ExplicitWidth = 708
    ExplicitHeight = 296
  end
  inherited lcParameter: TdxLayoutControl
    Width = 707
    Height = 99
    ExplicitTop = 24
    ExplicitWidth = 707
    ExplicitHeight = 99
    object dtRptDateFrom: TcxDateEdit [0]
      Left = 81
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtRptDateTo: TcxDateEdit [1]
      Left = 217
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object edAccCodeFrom: TcxButtonEdit [2]
      Left = 81
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccCodeFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object edAccCodeTo: TcxButtonEdit [3]
      Left = 81
      Top = 64
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccCodeToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 121
    end
    object edAccNameTo: TcxTextEdit [4]
      Left = 217
      Top = 64
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 432
    end
    object edAccNameFrom: TcxTextEdit [5]
      Left = 217
      Top = 37
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 432
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Opening Date'
      Parent = lcParameterGroup1
      Control = dtRptDateFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = dtRptDateTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'Account From'
      Parent = lcParameterGroup5
      Control = edAccCodeFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'Account To'
      Parent = lcParameterGroup4
      Control = edAccCodeTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup4
      Control = edAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup5
      Control = edAccNameFrom
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
    object lcParameterGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 121
    Width = 707
    ExplicitTop = 121
    ExplicitWidth = 708
  end
  inherited StatusBar: TdxStatusBar
    Width = 707
    ExplicitTop = -20
    ExplicitWidth = 708
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'CSO\InvestorOpeningAccountReport.fr3'
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
        Name = 'RPTDATEFROM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'RPTDATETO'
        ParamType = ptInput
      end>
  end
end
