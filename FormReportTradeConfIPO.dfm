inherited frmReportTradeConfIPO: TfrmReportTradeConfIPO
  BorderStyle = bsSizeable
  Caption = 'Trade Confirmation'
  ClientHeight = 414
  ClientWidth = 702
  ExplicitWidth = 718
  ExplicitHeight = 453
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 702
    Height = 289
    ExplicitWidth = 702
    ExplicitHeight = 289
  end
  inherited lcParameter: TdxLayoutControl
    Width = 702
    Visible = False
    ExplicitWidth = 702
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    Width = 702
    Visible = False
    ExplicitWidth = 702
  end
  inherited StatusBar: TdxStatusBar
    Top = 394
    Width = 702
    ExplicitTop = 394
    ExplicitWidth = 702
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Corporate Action\IPOTradeConfirmation.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ALLOTMENTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
        Value = 'hello'
      end>
  end
end
