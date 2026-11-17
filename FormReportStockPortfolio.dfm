inherited frmReportStockPortfolio: TfrmReportStockPortfolio
  Caption = 'Stock Portfolio'
  ClientHeight = 500
  ClientWidth = 800
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 189
    Width = 800
    Height = 291
    ExplicitTop = 189
    ExplicitWidth = 800
    ExplicitHeight = 291
  end
  inherited lcParameter: TdxLayoutControl
    Width = 800
    Height = 159
    ExplicitWidth = 800
    ExplicitHeight = 159
    object dtTradeDate: TcxDateEdit [0]
      Left = 68
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 88
    end
    object chkAllUsers: TcxCheckBox [1]
      Left = 456
      Top = 55
      Caption = 'All Accounts'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllUsersPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
    end
    object txtAccIDFrom: TcxButtonEdit [2]
      Left = 585
      Top = 73
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtAccIDFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 102
    end
    object txtAccIDTo: TcxButtonEdit [3]
      Left = 585
      Top = 100
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtAccIDToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 102
    end
    object txtAccNameFrom: TcxTextEdit [4]
      Left = 693
      Top = 73
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 199
    end
    object txtAccNameTo: TcxTextEdit [5]
      Left = 693
      Top = 100
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 199
    end
    object cmbFilterBy: TcxImageComboBox [6]
      Left = 206
      Top = 10
      EditValue = '1'
      Properties.Items = <
        item
          Description = 'Account Code'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Stock Code'
          Value = 0
        end>
      Properties.OnCloseUp = cmbFilterByPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 94
    end
    object txtStockCode: TcxLookupComboBox [7]
      Left = 81
      Top = 55
      RepositoryItem = dmGlobal.luInstrumentAll
      Properties.ListColumns = <>
      Properties.OnCloseUp = txtStockCodePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 88
    end
    object txtStockName: TcxTextEdit [8]
      Left = 175
      Top = 55
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 251
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'As Of Date'
      Control = dtTradeDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = gpAccount
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkAllUsers
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'From'
      Control = txtAccIDFrom
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup1: TdxLayoutGroup
      Parent = gpAccount
      CaptionOptions.Text = 'Account Code'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      Parent = lcParameterGroup4
      CaptionOptions.Text = 'To'
      Control = txtAccIDTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = txtAccNameFrom
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 199
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup2: TdxLayoutGroup
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem6: TdxLayoutItem
      Parent = lcParameterGroup4
      CaptionOptions.Text = 'cxTextEdit2'
      CaptionOptions.Visible = False
      Control = txtAccNameTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 199
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterItem7: TdxLayoutItem
      Parent = lcParameterGroup5
      CaptionOptions.Text = 'Filter By'
      Control = cmbFilterBy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup5: TdxLayoutGroup
      Parent = lcParameterGroup6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object gpAccount: TdxLayoutGroup
      Parent = lcParameterGroup8
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lcParameterItem8: TdxLayoutItem
      Parent = gpStockCode
      CaptionOptions.Text = 'Stock Code'
      Control = txtStockCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup6: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object gpStockCode: TdxLayoutGroup
      Parent = lcParameterGroup8
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lcParameterGroup8: TdxLayoutGroup
      Parent = lcParameterGroup6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterItem9: TdxLayoutItem
      Parent = gpStockCode
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = txtStockName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 181
    Width = 800
    ExplicitTop = 181
    ExplicitWidth = 800
  end
  inherited StatusBar: TdxStatusBar
    Top = 480
    Width = 800
    ExplicitTop = 480
    ExplicitWidth = 800
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'ReportStockPortfolio'
        Description = 'ReportStockPortfolio'
      end>
    Top = 323
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Stock_Portfolio.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BYCUST'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SHOWALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'ACCIDFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'ACCIDTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'STOCKCODE'
        ParamType = ptUnknown
      end>
  end
end
