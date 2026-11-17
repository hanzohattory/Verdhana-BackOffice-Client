inherited frmReportSalesActivity: TfrmReportSalesActivity
  Caption = 'Sales Activity'
  ClientHeight = 498
  ClientWidth = 726
  ExplicitWidth = 726
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 113
    Width = 726
    Height = 365
    ExplicitTop = 111
    ExplicitWidth = 726
    ExplicitHeight = 365
  end
  inherited lcParameter: TdxLayoutControl
    Top = 44
    Width = 726
    Height = 61
    Visible = False
    ExplicitTop = 44
    ExplicitWidth = 726
    ExplicitHeight = 61
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
  end
  inherited spReport: TcxSplitter
    Top = 105
    Width = 726
    Visible = False
    ExplicitTop = 91
    ExplicitWidth = 726
  end
  inherited StatusBar: TdxStatusBar
    Top = 478
    Width = 726
    ExplicitTop = 478
    ExplicitWidth = 726
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
      FloatLeft = 744
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
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAll'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 145
          Visible = True
          ItemName = 'edSales'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object chkAll: TcxBarEditItem
      Caption = 'All Sales'
      Category = 0
      Hint = 'All Sales'
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
    object edSales: TcxBarEditItem
      Caption = 'Sales Name'
      Category = 0
      Hint = 'Sales Name'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luSales
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
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Middle Office\SalesActivity.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'SALESID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TODATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALL'
        ParamType = ptUnknown
      end>
  end
end
