inherited frmReportStockPosBySalesAcc: TfrmReportStockPosBySalesAcc
  Caption = 'Stock Position By Sales Account'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Height = 353
  end
  inherited lcParameter: TdxLayoutControl
    Height = 42
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
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup_Root
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 64
    ExplicitWidth = 710
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
    Left = 538
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Stock_Position_By_Sales_Account.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
  end
end
