inherited frmReportStockPosByAccount: TfrmReportStockPosByAccount
  Caption = 'Stock Position By Account'
  ClientWidth = 959
  OnShow = FormShow
  ExplicitWidth = 959
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 127
    Width = 959
    Height = 298
  end
  inherited lcParameter: TdxLayoutControl
    Top = 44
    Width = 959
    Visible = False
  end
  inherited spReport: TcxSplitter
    Top = 119
    Width = 959
    ExplicitWidth = 710
  end
  inherited StatusBar: TdxStatusBar
    Width = 959
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      44
      0)
    object barMReportBar1: TdxBar [1]
      BorderStyle = bbsNone
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
          ItemName = 'dtReport'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAll'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 95
          Visible = True
          ItemName = 'edAccCode'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 321
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
    object dtReport: TcxBarEditItem
      Caption = 'Report Date'
      Category = 0
      Hint = 'Report Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkAll: TcxBarEditItem
      Caption = 'All Account'
      Category = 0
      Hint = 'All Account'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllPropertiesChange
    end
    object edAccCode: TcxBarEditItem
      Caption = 'Account Code'
      Category = 0
      Hint = 'Account Code'
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
      Caption = 'Account Code'
      Category = 0
      Hint = 'Account Code'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Stock_Position_By_Account.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ISALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
  end
end
