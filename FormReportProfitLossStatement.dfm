inherited frmReportProfilLossStatement: TfrmReportProfilLossStatement
  Caption = 'Profit Loss Statement Report'
  ClientWidth = 946
  OnShow = FormShow
  ExplicitWidth = 946
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 81
    Width = 946
    Height = 344
    ExplicitTop = 334
    ExplicitWidth = 0
    ExplicitHeight = 353
  end
  inherited lcParameter: TdxLayoutControl
    Width = 946
    Height = 51
    ExplicitWidth = 946
    ExplicitHeight = 51
    object dtReportDate: TcxDateEdit [0]
      Left = 74
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbRptType: TcxImageComboBox [1]
      Left = 266
      Top = 10
      EditValue = 'PLC'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Profit Loss Consolidate'
          ImageIndex = 0
          Value = 'PLC'
        end
        item
          Description = 'Profit Loss Group By CP Center'
          Value = 'PLG'
        end>
      Properties.OnChange = cbRptTypePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 135
    end
    object chkSelected: TcxCheckBox [2]
      Left = 407
      Top = 10
      Caption = 'Filter'
      Properties.ValueChecked = #39'2'#39
      Properties.ValueUnchecked = #39'1'#39
      Properties.OnChange = chkSelectedPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 66
    end
    object cbCPCenter: TcxLookupComboBox [3]
      Left = 571
      Top = 10
      RepositoryItem = dmGlobal.luCPCenter
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 126
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup1
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbRptType
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup_Root
      Control = chkSelected
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'Cost Profit Center'
      Parent = lcParameterGroup_Root
      Control = cbCPCenter
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited spReport: TcxSplitter
    Top = 73
    Width = 946
    ExplicitTop = 326
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 946
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
    ReportName = 'Accounting\ProfitLoss.fr3'
    Params = <
      item
        DataType = ftDateTime
        Name = 'RPTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SELECTEDCP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CPID'
        ParamType = ptInput
      end>
  end
end
