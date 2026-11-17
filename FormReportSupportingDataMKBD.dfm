inherited frmReportSupportingDataMKBD: TfrmReportSupportingDataMKBD
  Caption = 'Supporting Data MKBD'
  ClientHeight = 448
  ClientWidth = 716
  ExplicitWidth = 716
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 129
    Width = 716
    Height = 299
    ExplicitTop = 129
    ExplicitWidth = 716
    ExplicitHeight = 299
  end
  inherited lcParameter: TdxLayoutControl
    Width = 716
    Height = 99
    ExplicitWidth = 716
    ExplicitHeight = 99
    object dtReportDate: TcxDateEdit [0]
      Left = 75
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbRowNoFrom: TcxLookupComboBox [1]
      Left = 75
      Top = 64
      RepositoryItem = dmGlobal.luSelectDataReport
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 222
    end
    object cbReportType: TcxLookupComboBox [2]
      Left = 75
      Top = 37
      RepositoryItem = dmGlobal.luRptType
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = cbReportTypePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 462
    end
    object ckBackDate: TcxCheckBox [3]
      Left = 202
      Top = 10
      Caption = 'Use Back Date'
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbRowNoTo: TcxLookupComboBox [4]
      Left = 312
      Top = 64
      RepositoryItem = dmGlobal.luSelectDataReport
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 225
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Date'
      Parent = lcParameterGroup1
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Row No'
      Parent = lcParameterGroup2
      Control = cbRowNoFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup1
      Control = ckBackDate
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
    object lcParameterItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup2
      Control = cbRowNoTo
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
      Index = 2
    end
  end
  inherited spReport: TcxSplitter
    Top = 121
    Width = 716
    ExplicitTop = 121
    ExplicitWidth = 716
  end
  inherited StatusBar: TdxStatusBar
    Top = 428
    Width = 716
    ExplicitTop = 428
    ExplicitWidth = 716
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Report MKBD\SupportingReport.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ROWNOFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ROWNOTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERBACKDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'BACKDATE'
        ParamType = ptInput
      end>
  end
end
