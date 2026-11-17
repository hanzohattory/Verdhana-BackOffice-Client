inherited frmReportTradeTransaction: TfrmReportTradeTransaction
  Caption = 'Trade Transaction'
  ClientWidth = 895
  OnShow = FormShow
  ExplicitWidth = 895
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 127
    Width = 895
    Height = 298
    ExplicitTop = 127
    ExplicitWidth = 895
    ExplicitHeight = 298
  end
  inherited lcParameter: TdxLayoutControl
    Top = 44
    Width = 895
    Visible = False
    ExplicitTop = 44
    ExplicitWidth = 895
  end
  inherited spReport: TcxSplitter
    Top = 119
    Width = 895
    ExplicitTop = 119
    ExplicitWidth = 895
  end
  inherited StatusBar: TdxStatusBar
    Width = 895
    ExplicitWidth = 895
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
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
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtFrom'
        end
        item
          Visible = True
          ItemName = 'dtTo'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAll'
        end
        item
          Visible = True
          ItemName = 'cbBoard'
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
      Caption = 'to'
      Category = 0
      Hint = 'to'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkAllCust: TcxBarEditItem
      Caption = 'All Customer'
      Category = 0
      Hint = 'All Customer'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssInactive
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
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
      Properties.NullStyle = nssInactive
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object edStockID: TcxBarEditItem
      Caption = 'Stock Code'
      Category = 0
      Hint = 'Stock Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luInstrumentAll
    end
    object edCustCode: TcxBarEditItem
      Caption = 'Customer Code'
      Category = 0
      Hint = 'Customer Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object edCustName: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
    object cbBoard: TcxBarEditItem
      Caption = 'Board Code'
      Category = 0
      Hint = 'Board Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luBoard
    end
    object chkAll: TcxBarEditItem
      Caption = 'All Board'
      Category = 0
      Hint = 'All Board'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Middle Office\TradeTransaction.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DTFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DTTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BOARDID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALL'
        ParamType = ptUnknown
      end>
  end
end
