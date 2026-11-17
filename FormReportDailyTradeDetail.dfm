inherited frmReportDailyTradeDetail: TfrmReportDailyTradeDetail
  Caption = 'Daily Trade Detail Report'
  ClientHeight = 450
  ClientWidth = 716
  ExplicitWidth = 716
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 716
    Height = 325
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 716
    ExplicitTop = 284
    ExplicitWidth = 0
    object dtReportDate: TcxDateEdit [0]
      Left = 69
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbReportType: TcxImageComboBox [1]
      Left = 69
      Top = 37
      EditValue = 'E'
      Properties.Items = <
        item
          Description = 'Execution Price'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Average Price'
          Value = 'A'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 180
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Trade Date'
      Parent = lcParameterGroup_Root
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Base On'
      Parent = lcParameterGroup_Root
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 716
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Top = 430
    Width = 716
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
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
