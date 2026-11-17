inherited frmReportClientStockActivity: TfrmReportClientStockActivity
  Caption = 'Client Stock Activity'
  ClientWidth = 1059
  OnShow = FormShow
  ExplicitWidth = 1059
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 195
    Width = 1059
    Height = 230
    ExplicitTop = 195
    ExplicitWidth = 1059
    ExplicitHeight = 230
  end
  inherited lcParameter: TdxLayoutControl
    Top = 88
    Width = 1059
    Height = 99
    Visible = False
    ExplicitTop = 88
    ExplicitWidth = 1059
    ExplicitHeight = 99
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
  end
  inherited spReport: TcxSplitter
    Top = 187
    Width = 1059
    ExplicitTop = 187
    ExplicitWidth = 1059
  end
  inherited StatusBar: TdxStatusBar
    Width = 1059
    ExplicitWidth = 1059
  end
  inherited popDocking: TPopupMenu
    Top = 281
  end
  inherited ActionPermission: TNActionPermission
    Top = 329
  end
  inherited barMReport: TdxBarManager
    Top = 233
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      88
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
      FloatLeft = 1077
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
          ItemName = 'dtUntil'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object barMReportBar2: TdxBar [2]
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 44
      DockingStyle = dsTop
      FloatLeft = 1077
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllAccount'
        end
        item
          Visible = True
          ItemName = 'edAccCode'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 377
          Visible = True
          ItemName = 'edAccName'
        end>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object barMReportBar3: TdxBar [3]
      BorderStyle = bbsNone
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 66
      DockingStyle = dsTop
      FloatLeft = 1077
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
          UserDefine = [udWidth]
          UserWidth = 132
          Visible = True
          ItemName = 'edStockCode'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 378
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
    object dtFrom: TcxBarEditItem
      Caption = 'Date From'
      Category = 0
      Hint = 'Date From'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtUntil: TcxBarEditItem
      Caption = 'Until'
      Category = 0
      Hint = 'Until'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkAllAccount: TcxBarEditItem
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
      Properties.OnChange = chkAllAccountPropertiesChange
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
      Properties.OnButtonClick = cxBarEditItem4PropertiesButtonClick
    end
    object edAccName: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
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
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllStockPropertiesChange
    end
    object cxBarEditItem7: TcxBarEditItem
      Caption = 'Stock Code'
      Category = 0
      Hint = 'Stock Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object edStockName: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
    object edStockCode: TcxBarEditItem
      Caption = 'Stock Code'
      Category = 0
      Hint = 'Stock Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          FieldName = 'SHORTNAME'
        end
        item
          FieldName = 'INSTRUMENT_TYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentAll
      Properties.OnCloseUp = edStockCodePropertiesCloseUp
    end
  end
  inherited aclReportContainer: TActionList
    Top = 185
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Client_Stock_Activity.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DATEFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATEUNTIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALLACCOUNT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ACCNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALLSTOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STOCKCODE'
        ParamType = ptUnknown
      end>
    Top = 137
  end
end
