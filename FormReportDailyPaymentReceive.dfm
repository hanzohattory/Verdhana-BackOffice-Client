inherited frmReportDailyPaymentReceive: TfrmReportDailyPaymentReceive
  Caption = 'Daily Payment Receive'
  ClientHeight = 449
  ClientWidth = 719
  ExplicitWidth = 719
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 719
    Height = 324
    ExplicitWidth = 719
    ExplicitHeight = 324
  end
  inherited lcParameter: TdxLayoutControl
    Width = 719
    ExplicitWidth = 719
    object dtReportDate: TcxDateEdit [0]
      Left = 81
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbNetType: TcxImageComboBox [1]
      Left = 81
      Top = 37
      EditValue = 'P'
      Properties.Items = <
        item
          Description = 'Payment'
          ImageIndex = 0
          Value = 'P'
        end
        item
          Description = 'Receive'
          Value = 'R'
        end>
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
      CaptionOptions.Text = 'Trans Date'
      Parent = lcParameterGroup_Root
      Control = dtReportDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Voucher Type'
      Parent = lcParameterGroup_Root
      Control = cbNetType
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 719
    ExplicitWidth = 719
  end
  inherited StatusBar: TdxStatusBar
    Top = 429
    Width = 719
    ExplicitTop = 429
    ExplicitWidth = 719
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'FA\DailyPaymentReceive.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptInput
      end>
  end
end
