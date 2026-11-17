inherited frmReportClientTradeActivityByPurchaseSales: TfrmReportClientTradeActivityByPurchaseSales
  Caption = 'Client Trade Activity By Purchase Sales'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 253
    Height = 172
    ExplicitTop = 253
    ExplicitHeight = 172
  end
  inherited lcParameter: TdxLayoutControl
    Top = 114
    Height = 131
    Visible = False
    ExplicitTop = 114
    ExplicitHeight = 131
  end
  inherited spReport: TcxSplitter
    Top = 245
    Visible = False
    ExplicitTop = 245
    ExplicitWidth = 710
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      114
      0)
    object barMReportBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
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
          ItemName = 'dtFrom'
        end
        item
          Visible = True
          ItemName = 'dtTo'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object barMReportBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 44
      DockingStyle = dsTop
      FloatLeft = 728
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllClient'
        end
        item
          Visible = True
          ItemName = 'edAccID'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 304
          Visible = True
          ItemName = 'edAccName'
        end>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object barMReportBar3: TdxBar [3]
      BorderStyle = bbsNone
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 66
      DockingStyle = dsTop
      FloatLeft = 728
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllStock'
        end
        item
          Visible = True
          ItemName = 'edStockCode'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 285
          Visible = True
          ItemName = 'edStockName'
        end>
      OneOnRow = True
      Row = 3
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object barMReportBar4: TdxBar [4]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 88
      DockingStyle = dsTop
      FloatLeft = 728
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllBS'
        end
        item
          Visible = True
          ItemName = 'edBS'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllBoard'
        end
        item
          Visible = True
          ItemName = 'edBoard'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 4
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dtFrom: TcxBarEditItem
      Caption = 'Trade Date'
      Category = 0
      Hint = 'Trade Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtTo: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object edAccID: TcxBarEditItem
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
      Properties.OnButtonClick = edAccountPropertiesButtonClick
    end
    object edAccName: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
    object chkAllClient: TcxBarEditItem
      Caption = 'All Client'
      Category = 0
      Hint = 'All Client'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllClientPropertiesChange
    end
    object chkAllStock: TcxBarEditItem
      Caption = 'All Stock'
      Category = 0
      Hint = 'All Stock'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllStockPropertiesChange
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
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
    object chkAllBS: TcxBarEditItem
      Caption = 'All Buy/Sell'
      Category = 0
      Hint = 'All Buy/Sell'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '3'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllBSPropertiesChange
    end
    object edBS: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
      RepositoryItem = dmGlobal.luBuySell
    end
    object chkAllBoard: TcxBarEditItem
      Caption = 'All Board'
      Category = 0
      Hint = 'All Board'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '4'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllBoardPropertiesChange
    end
    object edBoard: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luBoard
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\ClientTradeActivitiesByPurchasesSales.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DATEFROM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATETO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALLACCOUNT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLSTOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BS'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLBOARD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BOARD'
        ParamType = ptUnknown
      end>
  end
end
