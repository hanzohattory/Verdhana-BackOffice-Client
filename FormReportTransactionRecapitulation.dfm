inherited frmReportTransactionRecapitulation: TfrmReportTransactionRecapitulation
  Caption = 'Transaction Recapitulation'
  ClientHeight = 454
  ExplicitHeight = 454
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 99
    Height = 335
    ExplicitTop = 361
    ExplicitWidth = 0
    ExplicitHeight = 326
  end
  inherited lcParameter: TdxLayoutControl
    Height = 69
    ExplicitTop = 284
    ExplicitWidth = 0
    ExplicitHeight = 69
    object cbMarket: TcxLookupComboBox [0]
      Left = 97
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object dtStart: TcxDateEdit [1]
      Left = 97
      Top = 37
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 120
    end
    object dtEnd: TcxDateEdit [2]
      Left = 238
      Top = 37
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 120
    end
    object luExtMarket: TcxExtLookupComboBox [3]
      Left = 238
      Top = 10
      RepositoryItem = dmGlobal.luExtMarket
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Market'
      Parent = lcParameterGroup2
      Control = cbMarket
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Date'
      Parent = lcParameterGroup1
      Control = dtStart
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'to'
      Parent = lcParameterGroup1
      Control = dtEnd
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
    object lcParameterGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup2
      Visible = False
      Control = luExtMarket
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 91
    ExplicitTop = 353
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Top = 434
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
    ReportName = 'Middle Office\TransactionRecapitulation.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end
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
