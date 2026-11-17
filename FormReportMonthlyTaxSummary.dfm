inherited frmMonthlyTaxSummary: TfrmMonthlyTaxSummary
  Caption = 'Monthly Trade Summary'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Height = 352
    ExplicitTop = 73
    ExplicitHeight = 352
  end
  inherited lcParameter: TdxLayoutControl
    Height = 43
    ExplicitHeight = 43
    object dtReport: TcxDateEdit [0]
      Left = 74
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 135
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Report Date'
      Control = dtReport
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    ExplicitTop = 65
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'Report Accounting'
        Description = 'Report Accounting'
      end>
    Left = 552
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Accounting\MonthlyTaxSummary.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
  end
end
