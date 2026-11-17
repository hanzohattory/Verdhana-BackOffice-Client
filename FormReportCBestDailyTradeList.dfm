inherited frmReportCBestDailyTradeList: TfrmReportCBestDailyTradeList
  Caption = '...'
  ClientWidth = 712
  ExplicitWidth = 712
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 712
    ExplicitWidth = 712
  end
  inherited lcParameter: TdxLayoutControl
    Width = 712
    Visible = False
    ExplicitWidth = 712
    object dtRPTDATEFROM: TcxDateEdit [0]
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
    object dtRPTDATETO: TcxDateEdit [1]
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
    object cbSTOCKIDFROM: TcxLookupComboBox [2]
      Left = 74
      Top = 37
      RepositoryItem = dmGlobal.luInstrument
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 183
    end
    object cbSTOCKIDTO: TcxLookupComboBox [3]
      Left = 272
      Top = 37
      RepositoryItem = dmGlobal.luInstrument
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 177
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup1
      Control = dtRPTDATEFROM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = dtRPTDATETO
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'Stock'
      Parent = lcParameterGroup2
      Control = cbSTOCKIDFROM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup2
      Control = cbSTOCKIDTO
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 712
    ExplicitWidth = 712
  end
  inherited StatusBar: TdxStatusBar
    Width = 712
    ExplicitTop = -20
    ExplicitWidth = 712
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\CBestDailyTradeList.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'STOCKIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKIDTO'
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
