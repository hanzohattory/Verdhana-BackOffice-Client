inherited frmReportDailyTradeReportClientType: TfrmReportDailyTradeReportClientType
  Caption = 'Daily Trade Report By Client or Client Type'
  ClientWidth = 728
  ExplicitWidth = 728
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 161
    Width = 728
    Height = 264
    ExplicitTop = 161
    ExplicitWidth = 728
    ExplicitHeight = 264
  end
  inherited lcParameter: TdxLayoutControl
    Width = 728
    Height = 131
    ExplicitWidth = 728
    ExplicitHeight = 131
    object edAccCodeFrom: TcxButtonEdit [0]
      Left = 51
      Top = 55
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
    object edAccNameFrom: TcxTextEdit [1]
      Left = 187
      Top = 55
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 307
    end
    object dtReportDateFrom: TcxDateEdit [2]
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
    object dtReportDateTo: TcxDateEdit [3]
      Left = 210
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object edAccCodeTo: TcxButtonEdit [4]
      Left = 51
      Top = 82
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
    object edAccNameTo: TcxTextEdit [5]
      Left = 187
      Top = 82
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 307
    end
    object cbStockCodeFrom: TcxLookupComboBox [6]
      Left = 553
      Top = 55
      RepositoryItem = dmGlobal.luInstrument
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 145
    end
    object cbStockCodeTo: TcxLookupComboBox [7]
      Left = 553
      Top = 82
      RepositoryItem = dmGlobal.luInstrument
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 145
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup6
      Control = edAccCodeFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup6
      Control = edAccNameFrom
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup4
      Control = dtReportDateFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup4
      Control = dtReportDateTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Account'
      Parent = lcParameterGroup8
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup5
      Control = edAccCodeTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem6: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup5
      Control = edAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterGroup2: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Stock Code'
      Parent = lcParameterGroup8
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcParameterGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem7: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup2
      Control = cbStockCodeFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem8: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup2
      Control = cbStockCodeTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 153
    Width = 728
    ExplicitTop = 153
    ExplicitWidth = 728
  end
  inherited StatusBar: TdxStatusBar
    Width = 728
    ExplicitTop = -20
    ExplicitWidth = 728
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\DailyTradeByClientOrClientType.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCCODEFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCCODETO'
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
      end
      item
        DataType = ftInteger
        Name = 'STOCKCODEFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKCODETO'
        ParamType = ptInput
      end>
  end
end
