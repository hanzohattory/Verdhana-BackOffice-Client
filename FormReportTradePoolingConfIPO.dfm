inherited frmReportTradePoolingConfIPO: TfrmReportTradePoolingConfIPO
  BorderStyle = bsSizeable
  Caption = 'Report Trade Pooling Confirmation IPO'
  ClientHeight = 406
  ClientWidth = 694
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 78
    Width = 694
    Height = 308
    ExplicitTop = 78
    ExplicitWidth = 694
    ExplicitHeight = 308
  end
  inherited lcParameter: TdxLayoutControl
    Width = 694
    Height = 48
    Visible = False
    ExplicitWidth = 694
    ExplicitHeight = 48
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Top = 70
    Width = 694
    ExplicitTop = 70
    ExplicitWidth = 694
  end
  inherited StatusBar: TdxStatusBar
    Top = 386
    Width = 694
    ExplicitTop = 386
    ExplicitWidth = 694
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Corporate Action\IPOPoolingTradeConfirmation.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'POOLINGID'
        ParamType = ptInput
      end>
    Left = 541
  end
end
