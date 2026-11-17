inherited frmReportCorpactEntitlementListing: TfrmReportCorpactEntitlementListing
  Caption = 'Corpact Entitlement Listing'
  ClientWidth = 720
  ExplicitWidth = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 720
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 720
    ExplicitTop = 284
    ExplicitWidth = 0
    object dtRPTDATEFROM: TcxDateEdit [0]
      Left = 75
      Top = 37
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object dtRPTDATETO: TcxDateEdit [1]
      Left = 211
      Top = 37
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cbReportType: TcxImageComboBox [2]
      Left = 75
      Top = 10
      EditValue = '1'
      Properties.Items = <
        item
          Description = 'Cash Dividen'
          ImageIndex = 0
          Value = '2'
        end
        item
          Description = 'Stock Dividen'
          Value = '3'
        end
        item
          Description = 'Stock Bonus'
          Value = '5'
        end
        item
          Description = 'Stock Split'
          Value = '6'
        end
        item
          Description = 'Stock Reverse'
          Value = '7'
        end
        item
          Description = 'HMETD'
          Value = '1'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = lcParameterGroup2
      Control = dtRPTDATEFROM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup2
      Control = dtRPTDATETO
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup1
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 720
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 720
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
