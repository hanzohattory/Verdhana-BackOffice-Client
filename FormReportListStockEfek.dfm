inherited frmReportListStockEfek: TfrmReportListStockEfek
  Caption = 'List Stock Efek'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Height = 352
    ExplicitTop = 335
    ExplicitHeight = 352
  end
  inherited lcParameter: TdxLayoutControl
    Height = 43
    ExplicitHeight = 43
    object cbStockType: TcxImageComboBox [0]
      Left = 68
      Top = 10
      Properties.Items = <
        item
          Description = 'Regular'
          ImageIndex = 0
          Value = '3'
        end
        item
          Description = 'Margin'
          Value = '1'
        end
        item
          Description = 'Repo'
          Value = '2'
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
      CaptionOptions.Text = 'Stock Type'
      Parent = lcParameterGroup_Root
      Control = cbStockType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    ExplicitTop = 327
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
    ReportName = 'Credit Control\ListReportStockEfek.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'TYPE'
        ParamType = ptInput
      end>
  end
end
