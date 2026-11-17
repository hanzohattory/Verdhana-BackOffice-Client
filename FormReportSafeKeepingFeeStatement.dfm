inherited frmReportSafeKeepingFeeStatement: TfrmReportSafeKeepingFeeStatement
  Caption = 'Safe Keeping Fee Statement'
  ClientWidth = 703
  ExplicitWidth = 703
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 703
    ExplicitWidth = 706
  end
  inherited lcParameter: TdxLayoutControl
    Width = 703
    ExplicitWidth = 706
    object cbMonth: TcxImageComboBox [0]
      Left = 81
      Top = 10
      RepositoryItem = dmGlobal.luMonth
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 89
    end
    object edYear: TcxSpinEdit [1]
      Left = 185
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 64
    end
    object edAccCode: TcxButtonEdit [2]
      Left = 81
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object edAccName: TcxTextEdit [3]
      Left = 217
      Top = 37
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 304
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Period'
      Parent = lcParameterGroup1
      Control = cbMonth
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = edYear
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
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = lcParameterGroup2
      Control = edAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup2
      Control = edAccName
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
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 703
    ExplicitWidth = 706
  end
  inherited StatusBar: TdxStatusBar
    Width = 703
    ExplicitTop = -20
    ExplicitWidth = 706
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\SafeKeepingFeeStatement.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
  end
end
