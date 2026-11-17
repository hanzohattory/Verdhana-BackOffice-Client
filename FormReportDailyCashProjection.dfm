inherited frmReportDailyCashProjection: TfrmReportDailyCashProjection
  Caption = 'Daily Cash Projection'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Height = 352
  end
  inherited lcParameter: TdxLayoutControl
    Height = 43
    ExplicitHeight = 43
    object cbRptType: TcxImageComboBox [0]
      Left = 75
      Top = 10
      EditValue = 'G'
      Properties.Items = <
        item
          Description = 'Group By Bank'
          ImageIndex = 0
          Value = 'G'
        end
        item
          Description = 'Consolidate'
          Value = 'C'
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
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbRptType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    ExplicitWidth = 710
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'FA\CashProjectionConsolidate.fr3'
  end
end
