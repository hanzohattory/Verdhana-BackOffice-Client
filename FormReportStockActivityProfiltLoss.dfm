inherited frmReportStockActivityProfitLoss: TfrmReportStockActivityProfitLoss
  Caption = 'Stock Activity'
  ClientHeight = 431
  ClientWidth = 826
  ExplicitWidth = 826
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 125
    Width = 826
    Height = 286
    ExplicitTop = 125
    ExplicitWidth = 826
    ExplicitHeight = 286
  end
  inherited lcParameter: TdxLayoutControl
    Width = 826
    Height = 95
    ExplicitWidth = 826
    ExplicitHeight = 95
    object dtFrom: TcxDateEdit [0]
      Left = 82
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 90
    end
    object dtUntil: TcxDateEdit [1]
      Left = 187
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 90
    end
    object cmbAccID: TcxLookupComboBox [2]
      Left = 82
      Top = 37
      RepositoryItem = dmGlobal.luAccount
      Properties.ListColumns = <>
      Properties.OnCloseUp = cmbAccIDPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 111
    end
    object cmbStockID: TcxLookupComboBox [3]
      Left = 82
      Top = 64
      RepositoryItem = dmGlobal.luInstrument
      Properties.ListColumns = <>
      Properties.OnCloseUp = cmbStockIDPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 111
    end
    object txtAccName: TcxTextEdit [4]
      Left = 199
      Top = 37
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 261
    end
    object txtStockName: TcxTextEdit [5]
      Left = 199
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 261
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Date From'
      Parent = lcParameterGroup1
      Control = dtFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = dtUntil
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
      CaptionOptions.Text = 'Account Code'
      Parent = lcParameterGroup2
      Control = cmbAccID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Parent = lcParameterGroup3
      Control = cmbStockID
      ControlOptions.ShowBorder = False
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
    object lcParameterItem5: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup2
      Control = txtAccName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem6: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup3
      Control = txtStockName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
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
    Top = 117
    Width = 826
    ExplicitTop = 117
    ExplicitWidth = 826
  end
  inherited StatusBar: TdxStatusBar
    Top = 411
    Width = 826
    ExplicitTop = 411
    ExplicitWidth = 826
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Stock_Activity_Profit_Loss.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DATEFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATEUNTIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
  end
end
