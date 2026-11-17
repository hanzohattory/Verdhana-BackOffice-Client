inherited frmReportShareBalanceByClient: TfrmReportShareBalanceByClient
  Caption = 'Share Balance By Client'
  ClientWidth = 716
  ExplicitWidth = 716
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 155
    Width = 716
    Height = 270
    ExplicitTop = 155
    ExplicitWidth = 716
    ExplicitHeight = 270
  end
  inherited lcParameter: TdxLayoutControl
    Width = 716
    Height = 125
    ExplicitWidth = 716
    ExplicitHeight = 125
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
    object edAccCode: TcxButtonEdit [1]
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
    object edAccName: TcxTextEdit [2]
      Left = 216
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 360
    end
    object edAccCodeTo: TcxButtonEdit [3]
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
    object edAccNameTo: TcxTextEdit [4]
      Left = 216
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 360
    end
    object cbSales: TcxLookupComboBox [5]
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
      Width = 250
    end
    object cbSalesTo: TcxLookupComboBox [6]
      Left = 346
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
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Date'
      Control = dtReportDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup3
      CaptionOptions.Text = 'Account From'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      Parent = lcParameterGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Control = edAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup1: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterGroup3: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'Account To'
      Control = edAccCodeTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = '-'
      Control = edAccNameTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup2: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lcParameterItem6: TdxLayoutItem
      Parent = lcParameterGroup4
      CaptionOptions.Text = 'Sales'
      Control = cbSales
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem7: TdxLayoutItem
      Parent = lcParameterGroup4
      CaptionOptions.Text = '-'
      Control = cbSalesTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
  inherited spReport: TcxSplitter
    Top = 147
    Width = 716
    ExplicitTop = 147
    ExplicitWidth = 716
  end
  inherited StatusBar: TdxStatusBar
    Width = 716
    ExplicitWidth = 716
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\ShareBalancesByAccount.fr3'
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
