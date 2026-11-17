inherited frmReportDailyCommision: TfrmReportDailyCommision
  Caption = 'Daily Commision'
  ClientWidth = 859
  ExplicitWidth = 859
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 185
    Width = 859
    Height = 240
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 859
    Height = 155
    ExplicitWidth = 708
    ExplicitHeight = 155
    object dtRPTDateFrom: TcxDateEdit [0]
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
    object dtRPTDateTo: TcxDateEdit [1]
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
    object cbFilter: TcxImageComboBox [2]
      Left = 74
      Top = 37
      EditValue = 'A'
      Properties.Items = <
        item
          Description = 'Account'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Sales'
          Value = 'S'
        end>
      Properties.OnCloseUp = cbFilterPropertiesCloseUp
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
      Properties.OnButtonClick = edAccCodeFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
    end
    object edAccCodeTo: TcxButtonEdit [4]
      Left = 51
      Top = 109
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
      TabOrder = 5
      Width = 121
    end
    object edAccNameFrom: TcxTextEdit [5]
      Left = 187
      Top = 82
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 302
    end
    object edAccNameTo: TcxTextEdit [6]
      Left = 187
      Top = 109
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 302
    end
    object cbSalesFrom: TcxLookupComboBox [7]
      Left = 548
      Top = 82
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 145
    end
    object cbSalesTo: TcxLookupComboBox [8]
      Left = 548
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
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup1
      Control = dtRPTDateFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = dtRPTDateTo
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Filter By'
      Parent = lcParameterGroup_Root
      Control = cbFilter
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcAccountGroup: TdxLayoutGroup
      CaptionOptions.Text = 'Account'
      Parent = lcParameterGroup6
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup3
      Control = edAccCodeFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup4
      Control = edAccCodeTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup3
      Control = edAccNameFrom
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcAccountGroup
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup4
      Control = edAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcAccountGroup
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcSalesGroup: TdxLayoutGroup
      CaptionOptions.Text = 'Sales'
      Parent = lcParameterGroup6
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcParameterGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lcParameterItem8: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcSalesGroup
      Control = cbSalesFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem9: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcSalesGroup
      Control = cbSalesTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 177
    Width = 859
    ExplicitTop = 170
    ExplicitWidth = 708
  end
  inherited StatusBar: TdxStatusBar
    Width = 859
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
    ReportName = 'Settlement\DailyCommisionReport.fr3'
    Params = <
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
