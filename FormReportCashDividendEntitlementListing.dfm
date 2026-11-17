inherited frmReportCashDividendEntitlementListing: TfrmReportCashDividendEntitlementListing
  Caption = 'Cash Dividend Entitlement Listing'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Visible = False
    ExplicitTop = 284
    ExplicitWidth = 0
    object dtRPTDATEFROM: TcxDateEdit [0]
      Left = 74
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtRPTDATETO: TcxDateEdit [1]
      Left = 210
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
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup1
      Control = dtRPTDATEFROM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup1
      Control = dtRPTDATETO
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
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
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
    ReportName = 'Settlement\CashDividendEntitlementListing.fr3'
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
