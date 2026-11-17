inherited frmBalanceSheetReport: TfrmBalanceSheetReport
  Caption = 'Balance Sheet Report'
  ClientWidth = 715
  ExplicitWidth = 715
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Width = 715
    Height = 353
    ExplicitTop = 72
    ExplicitWidth = 715
    ExplicitHeight = 353
  end
  inherited lcParameter: TdxLayoutControl
    Width = 715
    Height = 42
    ExplicitWidth = 715
    ExplicitHeight = 42
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
    object cxLookupComboBox1: TcxLookupComboBox [1]
      Left = 10000
      Top = 10000
      Align = alClient
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Visible = False
      Width = 145
    end
    object cmbMode: TcxImageComboBox [2]
      Left = 232
      Top = 10
      EditValue = 'O'
      Properties.Items = <
        item
          Description = 'One Side'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'TwoSide'
          Value = 'T'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 95
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
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
      CaptionOptions.Text = 'cxLookupComboBox1'
      Control = cxLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = -1
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
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'Mode'
      Parent = lcParameterGroup1
      Control = cmbMode
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 64
    Width = 715
    ExplicitTop = 64
    ExplicitWidth = 715
  end
  inherited StatusBar: TdxStatusBar
    Width = 715
    ExplicitTop = -20
    ExplicitWidth = 715
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Accounting\Balance_Sheet_Potrait.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'ReportDate'
        ParamType = ptUnknown
      end>
  end
end
