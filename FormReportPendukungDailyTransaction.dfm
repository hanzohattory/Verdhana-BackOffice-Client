inherited frmReportPendukungDailyTransaction: TfrmReportPendukungDailyTransaction
  Caption = 'Pendukung Daily Transaction'
  ClientHeight = 403
  ClientWidth = 708
  ExplicitWidth = 708
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 708
    Height = 278
    ExplicitWidth = 708
    ExplicitHeight = 278
  end
  inherited lcParameter: TdxLayoutControl
    Width = 708
    ExplicitWidth = 708
    object dtReportDate: TcxDateEdit [0]
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
    Width = 708
    ExplicitWidth = 708
  end
  inherited StatusBar: TdxStatusBar
    Top = 383
    Width = 708
    ExplicitTop = 383
    ExplicitWidth = 708
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\PendukungDailyTransactionReport.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end>
  end
end
