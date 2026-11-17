inherited frmReportCashStatement: TfrmReportCashStatement
  Caption = 'Cash Statement'
  ClientWidth = 713
  ExplicitWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 713
    ExplicitWidth = 713
  end
  inherited lcParameter: TdxLayoutControl
    Width = 713
    ExplicitWidth = 713
    object cbMonth: TcxImageComboBox [0]
      Left = 45
      Top = 10
      Properties.Items = <
        item
          Description = 'January'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'February'
          Value = 2
        end
        item
          Description = 'March'
          Value = 3
        end
        item
          Description = 'April'
          Value = 4
        end
        item
          Description = 'May'
          Value = 5
        end
        item
          Description = 'June'
          Value = 6
        end
        item
          Description = 'July'
          Value = 7
        end
        item
          Description = 'Agustus'
          Value = 8
        end
        item
          Description = 'September'
          Value = 9
        end
        item
          Description = 'October'
          Value = 10
        end
        item
          Description = 'November'
          Value = 11
        end
        item
          Description = 'December'
          Value = 12
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object edYear: TcxSpinEdit [1]
      Left = 181
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Period'
      Parent = lcParameterGroup_Root
      Control = cbMonth
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = lcParameterGroup_Root
      Control = edYear
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 713
    ExplicitWidth = 713
  end
  inherited StatusBar: TdxStatusBar
    Width = 713
    ExplicitTop = -20
    ExplicitWidth = 713
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Retail Business\CashStatement.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YEAR'
        ParamType = ptInput
      end>
  end
end
