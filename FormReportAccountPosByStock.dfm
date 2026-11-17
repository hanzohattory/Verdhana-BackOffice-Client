inherited frmReportAccountPosByStock: TfrmReportAccountPosByStock
  Caption = 'Account Position By Stock'
  ClientWidth = 954
  OnShow = FormShow
  ExplicitWidth = 954
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 127
    Width = 954
    Height = 298
    ExplicitTop = 127
    ExplicitWidth = 954
    ExplicitHeight = 298
  end
  inherited lcParameter: TdxLayoutControl
    Top = 44
    Width = 954
    Visible = False
    ExplicitTop = 44
    ExplicitWidth = 954
  end
  inherited spReport: TcxSplitter
    Top = 119
    Width = 954
    ExplicitTop = 119
    ExplicitWidth = 954
  end
  inherited StatusBar: TdxStatusBar
    Width = 954
    ExplicitWidth = 954
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
          Visible = True
          ItemName = 'edStockCode'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 268
          Visible = True
          ItemName = 'edStockName'
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
      Caption = 'All Stock'
      Category = 0
      Hint = 'All Stock'
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
    object edStockCode: TcxBarEditItem
      Caption = 'Stock Code'
      Category = 0
      Hint = 'Stock Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      Properties.OnCloseUp = edStockCodePropertiesCloseUp
      RepositoryItem = dmGlobal.luInstrumentAll
    end
    object edStockName: TcxBarEditItem
      Caption = 'Stock Name'
      Category = 0
      Hint = 'Stock Name'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Stock_By_Account_Position.fr3'
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
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
  end
end
