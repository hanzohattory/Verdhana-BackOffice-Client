inherited frmReportPortfolioAndCashAccountStatement: TfrmReportPortfolioAndCashAccountStatement
  Caption = 'Portfolio And Cash Account Statement'
  ClientHeight = 402
  ClientWidth = 706
  ExplicitWidth = 706
  ExplicitHeight = 402
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 81
    Width = 706
    Height = 301
    ExplicitTop = 81
    ExplicitWidth = 706
    ExplicitHeight = 344
  end
  inherited lcParameter: TdxLayoutControl
    Width = 706
    Height = 51
    ExplicitWidth = 706
    ExplicitHeight = 51
    object edAccCode: TcxButtonEdit [0]
      Left = 54
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
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
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 299
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
    Top = 73
    Width = 706
    ExplicitTop = 73
    ExplicitWidth = 706
  end
  inherited StatusBar: TdxStatusBar
    Top = 382
    Width = 706
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
    ReportName = 'Settlement\PortfolioAndCashAccountStatement.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
  end
end
