inherited frmReportMarginYU: TfrmReportMarginYU
  Caption = 'Margin YU'
  ClientWidth = 712
  ExplicitWidth = 712
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 712
    ExplicitTop = 367
    ExplicitWidth = 0
  end
  inherited lcParameter: TdxLayoutControl
    Width = 712
    ExplicitTop = 284
    ExplicitWidth = 0
    object cbMarginReport: TcxImageComboBox [0]
      Left = 120
      Top = 10
      Properties.Items = <
        item
          Description = 'Format 1'
          ImageIndex = 0
          Value = 'format1'
        end
        item
          Description = 'Format 2'
          Value = 'format2'
        end
        item
          Description = 'Format 3'
          Value = 'format3'
        end
        item
          Description = 'Format 4'
          Value = 'format4'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      OnClick = cbMarginReportClick
      Width = 201
    end
    object cbSupportReport: TcxImageComboBox [1]
      Left = 120
      Top = 37
      Properties.Items = <
        item
          Description = 'Format 1'
          ImageIndex = 0
          Value = 'format1'
        end
        item
          Description = 'Format 2'
          Value = 'format2'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnClick = cbSupportReportClick
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Margin Report Format'
      Parent = lcParameterGroup_Root
      Control = cbMarginReport
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Support Report'
      Parent = lcParameterGroup_Root
      Control = cbSupportReport
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Width = 712
    ExplicitTop = 359
    ExplicitWidth = 0
  end
  inherited StatusBar: TdxStatusBar
    Width = 712
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
end
