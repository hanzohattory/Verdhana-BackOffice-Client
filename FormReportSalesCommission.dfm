inherited frmReportSalesCommission: TfrmReportSalesCommission
  Caption = 'Sales Commission'
  ClientHeight = 498
  ClientWidth = 726
  ExplicitWidth = 726
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Width = 726
    Height = 405
    ExplicitTop = 73
    ExplicitWidth = 726
    ExplicitHeight = 405
  end
  inherited lcParameter: TdxLayoutControl
    Width = 726
    Height = 43
    ExplicitWidth = 726
    ExplicitHeight = 43
    object dtTransDate: TcxDateEdit [0]
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    Width = 726
    ExplicitTop = 65
    ExplicitWidth = 726
  end
  inherited StatusBar: TdxStatusBar
    Top = 478
    Width = 726
    ExplicitTop = 478
    ExplicitWidth = 726
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Middle Office\SalesCommission.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
  end
end
