inherited frmReportStockHoldingByClient: TfrmReportStockHoldingByClient
  Caption = 'Report Stock Holding By Client'
  ClientWidth = 706
  ExplicitWidth = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 706
    ExplicitWidth = 705
  end
  inherited lcParameter: TdxLayoutControl
    Width = 706
    ExplicitWidth = 705
    object cbReportType: TcxImageComboBox [0]
      Left = 75
      Top = 10
      EditValue = 'E'
      Properties.Items = <
        item
          Description = 'External'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Internal'
          Value = 'I'
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
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Type'
      Parent = lcParameterGroup_Root
      Control = cbReportType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Width = 706
    ExplicitWidth = 705
  end
  inherited StatusBar: TdxStatusBar
    Width = 706
    ExplicitTop = -20
    ExplicitWidth = 705
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\StockHoldingReportByClientExternal.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
  end
end
