inherited frmReportDailyTradeByAgent: TfrmReportDailyTradeByAgent
  Caption = 'Daily Trade Report By Agent'
  ClientHeight = 443
  ClientWidth = 976
  ExplicitWidth = 976
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 185
    Width = 976
    Height = 238
    ExplicitTop = 185
    ExplicitWidth = 976
    ExplicitHeight = 238
  end
  inherited lcParameter: TdxLayoutControl
    Width = 976
    Height = 155
    ExplicitWidth = 976
    ExplicitHeight = 155
    object dtReportDateFrom: TcxDateEdit [0]
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
    object dtReportDateTo: TcxDateEdit [1]
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
    object cbFormat: TcxImageComboBox [2]
      Left = 74
      Top = 37
      Properties.Items = <
        item
          Description = 'Format 1'
          ImageIndex = 0
          Value = 'Format1'
        end
        item
          Description = 'Format 2'
          Value = 'Format2'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object edAccCodeFrom: TcxButtonEdit [3]
      Left = 51
      Top = 82
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
      TabOrder = 3
      Width = 121
    end
    object edAccNameFrom: TcxTextEdit [4]
      Left = 187
      Top = 82
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 307
    end
    object edAccCodeTo: TcxButtonEdit [5]
      Left = 51
      Top = 109
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
      TabOrder = 5
      Width = 121
    end
    object edAccNameTo: TcxTextEdit [6]
      Left = 187
      Top = 109
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 307
    end
    object cbAgentFrom: TcxLookupComboBox [7]
      Left = 553
      Top = 82
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 336
    end
    object cbAgentTo: TcxLookupComboBox [8]
      Left = 553
      Top = 109
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 145
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object lcParameterGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Date'
      Parent = dxLayoutControl1Group1
      Control = dtReportDateFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group1
      Control = dtReportDateTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Format'
      Parent = lcParameterGroup7
      Control = cbFormat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lcParameterGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Index = 0
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
    object dxLayoutItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup6
      Control = edAccCodeFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup6
      Control = edAccNameFrom
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
    object dxLayoutItem4: TdxLayoutItem
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
    object lcParameterGroup2: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Agent'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup2
      Control = cbAgentFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup2
      Control = cbAgentTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 177
    Width = 976
    ExplicitTop = 177
    ExplicitWidth = 976
  end
  inherited StatusBar: TdxStatusBar
    Top = 423
    Width = 976
    ExplicitTop = 423
    ExplicitWidth = 976
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\DailyTradeReportByAgent-Format1.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'SALESIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SALESIDTO'
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
