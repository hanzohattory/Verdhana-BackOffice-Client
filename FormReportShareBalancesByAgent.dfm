inherited frmReportShareBalancesByAgent: TfrmReportShareBalancesByAgent
  Caption = 'Share Balance By Agent'
  ClientWidth = 708
  ExplicitWidth = 708
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 153
    Width = 708
    Height = 272
    ExplicitTop = 129
    ExplicitWidth = 705
    ExplicitHeight = 296
  end
  inherited lcParameter: TdxLayoutControl
    Width = 708
    Height = 123
    ExplicitWidth = 708
    ExplicitHeight = 123
    object dtReportDate: TcxDateEdit [0]
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
    object cbSales: TcxLookupComboBox [1]
      Left = 81
      Top = 91
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 244
    end
    object cbSalesTo: TcxLookupComboBox [2]
      Left = 340
      Top = 91
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 250
    end
    object edAccCode: TcxButtonEdit [3]
      Left = 81
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 120
    end
    object edAccName: TcxTextEdit [4]
      Left = 216
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 360
    end
    object edAccCodeTo: TcxButtonEdit [5]
      Left = 81
      Top = 64
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
      TabOrder = 3
      Width = 120
    end
    object edAccNameTo: TcxTextEdit [6]
      Left = 216
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 360
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup_Root
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Sales'
      Parent = lcParameterGroup4
      Control = cbSales
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup4
      Control = cbSalesTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'Account From'
      Parent = lcParameterGroup2
      Control = edAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
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
    object lcParameterItem6: TdxLayoutItem
      CaptionOptions.Text = 'Account To'
      Parent = lcParameterGroup5
      Control = edAccCodeTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lcParameterItem7: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup5
      Control = edAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  inherited spReport: TcxSplitter
    Top = 145
    Width = 708
    ExplicitTop = 121
    ExplicitWidth = 705
  end
  inherited StatusBar: TdxStatusBar
    Width = 708
    ExplicitTop = -20
    ExplicitWidth = 705
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\ShareBalancesBySales.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
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
      end
      item
        DataType = ftInteger
        Name = 'SALESIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SALESIDTO'
        ParamType = ptInput
      end>
  end
end
