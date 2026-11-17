inherited frmReportFundLedgerJournal: TfrmReportFundLedgerJournal
  Caption = 'Report Fund Ledger Journal'
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Height = 353
    ExplicitTop = 72
    ExplicitHeight = 353
  end
  inherited lcParameter: TdxLayoutControl
    Height = 42
    ExplicitHeight = 42
    object dtValueDate: TcxDateEdit [0]
      Left = 67
      Top = 10
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Value Date'
      Control = dtValueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 64
    ExplicitTop = 64
    ExplicitWidth = 710
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Cash Management\Fund_Ledger_Journal.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptUnknown
      end>
  end
end
