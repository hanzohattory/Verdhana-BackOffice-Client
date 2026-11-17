inherited frmReportVD51_2: TfrmReportVD51_2
  Caption = 'Report VD5 1-2'
  ClientHeight = 500
  ClientWidth = 800
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 500
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 89
    Width = 800
    Height = 391
    ExplicitTop = 87
    ExplicitWidth = 800
    ExplicitHeight = 391
  end
  inherited lcParameter: TdxLayoutControl
    Width = 800
    Height = 59
    ExplicitWidth = 800
    ExplicitHeight = 59
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
      Width = 88
    end
    object cmbVD5Report: TcxImageComboBox [1]
      Left = 233
      Top = 10
      EditValue = 'VD51'
      Properties.Items = <
        item
          Description = 'VD5-1'
          Value = 'VD51'
        end
        item
          Description = 'VD5-2'
          Value = 'VD52'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Date'
      Control = dtReportDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Type'
      Control = cmbVD5Report
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 81
    Width = 800
    ExplicitTop = 81
    ExplicitWidth = 800
  end
  inherited StatusBar: TdxStatusBar
    Top = 480
    Width = 800
    ExplicitTop = 480
    ExplicitWidth = 800
  end
  inherited ActionPermission: TNActionPermission
    Top = 323
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Accounting\VD512Report_Support.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VD5_REPORT'
        ParamType = ptInput
      end>
  end
end
