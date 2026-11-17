inherited frmReportClientActivityInsReg: TfrmReportClientActivityInsReg
  Caption = 'User Activiy Institution / Reguler'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 131
    Height = 294
    ExplicitTop = 131
    ExplicitHeight = 294
  end
  inherited lcParameter: TdxLayoutControl
    Top = 48
    Visible = False
    ExplicitTop = 48
  end
  inherited spReport: TcxSplitter
    Top = 123
    ExplicitTop = 123
    ExplicitWidth = 710
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
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dtStart: TcxBarEditItem
      Caption = 'From Date'
      Category = 0
      Hint = 'From Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtEnd: TcxBarEditItem
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
    ReportName = 'Account Management\AccountActivityInsReg.fr3'
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
