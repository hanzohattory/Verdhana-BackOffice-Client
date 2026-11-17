inherited frmReportClientPortofolio: TfrmReportClientPortofolio
  Caption = 'Client Portofolio'
  ClientWidth = 717
  OnShow = FormShow
  ExplicitWidth = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 127
    Width = 717
    Height = 298
    ExplicitTop = 125
    ExplicitWidth = 717
    ExplicitHeight = 298
  end
  inherited lcParameter: TdxLayoutControl
    Top = 44
    Width = 717
    Visible = False
    ExplicitWidth = 717
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
  end
  inherited spReport: TcxSplitter
    Top = 119
    Width = 717
    ExplicitWidth = 717
  end
  inherited StatusBar: TdxStatusBar
    Width = 717
    ExplicitWidth = 717
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      44
      0)
    object barMReportBar2: TdxBar [1]
      BorderStyle = bbsNone
      Caption = 'Report Date'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 735
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtReport'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edAccCode'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 309
          Visible = True
          ItemName = 'edAccName'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object edAccCode: TcxBarEditItem
      Caption = 'Account'
      Category = 0
      Hint = 'Account'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
    end
    object edAccName: TcxBarEditItem
      Caption = '-'
      Category = 0
      Enabled = False
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dtReport: TcxBarEditItem
      Caption = 'Report Date'
      Category = 0
      Hint = 'Report Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'FA\ClientPortofolio.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCNO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTREPORT'
        ParamType = ptUnknown
      end>
  end
end
