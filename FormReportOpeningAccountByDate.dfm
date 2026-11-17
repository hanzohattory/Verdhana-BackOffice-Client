inherited frmReportOpeningAccountByDate: TfrmReportOpeningAccountByDate
  Caption = 'Opening Account By Date'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 131
    Height = 294
  end
  inherited lcParameter: TdxLayoutControl
    Top = 48
    Visible = False
  end
  inherited spReport: TcxSplitter
    Top = 123
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      48
      0)
    object barMReportBar1: TdxBar [1]
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 728
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtFrom'
        end
        item
          Visible = True
          ItemName = 'dtTo'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dtFrom: TcxBarEditItem
      Caption = 'Date From'
      Category = 0
      Hint = 'Date From'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtTo: TcxBarEditItem
      Caption = 'To'
      Category = 0
      Hint = 'To'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Account Management\OpeningAccountByDate.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DTSTART'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DTEND'
        ParamType = ptUnknown
      end>
  end
end
