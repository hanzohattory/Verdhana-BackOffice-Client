inherited frmReportFundStatement: TfrmReportFundStatement
  Caption = 'Fund Statement'
  ClientHeight = 579
  ClientWidth = 850
  ExplicitWidth = 850
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 99
    Width = 850
    Height = 460
    ExplicitTop = 99
    ExplicitWidth = 850
    ExplicitHeight = 460
  end
  inherited lcParameter: TdxLayoutControl
    Width = 850
    Height = 69
    ExplicitWidth = 850
    ExplicitHeight = 69
    object edAccCode: TcxButtonEdit [0]
      Left = 68
      Top = 10
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
      TabOrder = 0
      Width = 121
    end
    object edAccName: TcxTextEdit [1]
      Left = 230
      Top = 10
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 301
    end
    object edYear: TcxSpinEdit [2]
      Left = 358
      Top = 37
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxValue = 2100.000000000000000000
      Properties.MinValue = 1900.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Value = 1900
      Width = 60
    end
    object cmbFiltering: TcxComboBox [3]
      Left = 68
      Top = 37
      Properties.Items.Strings = (
        'Month'
        'Range')
      Properties.OnCloseUp = cmbFilteringPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Month'
      Width = 121
    end
    object dtFromDate: TcxDateEdit [4]
      Left = 479
      Top = 37
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object dtUntilDate: TcxDateEdit [5]
      Left = 637
      Top = 37
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 100
    end
    object cbMonth: TcxImageComboBox [6]
      Left = 230
      Top = 37
      RepositoryItem = dmGlobal.luMonth
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 113
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup4
      CaptionOptions.Text = 'Account'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup4
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = '-'
      Control = edAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcYear: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = '-'
      Control = edYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcParameterGroup4: TdxLayoutGroup
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterGroup1: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'Filtering By'
      Control = cmbFiltering
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup2: TdxLayoutGroup
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcFromDate: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'From Date'
      Visible = False
      Control = dtFromDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcUntilDate: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'Until Date'
      Visible = False
      Control = dtUntilDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lcPeriode: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'Period'
      Control = cbMonth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 91
    Width = 850
    ExplicitTop = 91
    ExplicitWidth = 850
  end
  inherited StatusBar: TdxStatusBar
    Top = 559
    Width = 850
    ExplicitTop = 559
    ExplicitWidth = 850
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'Report Account Fund Statement'
        Description = 'Report Account Fund Statement'
      end>
    Top = 328
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Account Management\StatementFund.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
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
