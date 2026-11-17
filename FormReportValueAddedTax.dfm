inherited frmReportValueAddedTax: TfrmReportValueAddedTax
  Caption = 'Value Added Tax by Client Total'
  ClientWidth = 713
  ExplicitWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Width = 713
    Height = 352
    ExplicitTop = 335
    ExplicitWidth = 0
    ExplicitHeight = 352
  end
  inherited lcParameter: TdxLayoutControl
    Width = 713
    Height = 43
    ExplicitTop = 284
    ExplicitWidth = 0
    ExplicitHeight = 43
    object dtReportDateFrom: TcxDateEdit [0]
      Left = 67
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtReportDateTo: TcxDateEdit [1]
      Left = 203
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = lcParameterGroup1
      Control = dtReportDateFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = dtReportDateTo
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
  end
  inherited spReport: TcxSplitter
    Top = 65
    Width = 713
    ExplicitTop = 327
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 713
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
    ReportName = 'Settlement\ValueAddedTaxByClientTotal.fr3'
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
      end>
  end
end
