inherited frmReportTradeConfirmation: TfrmReportTradeConfirmation
  Caption = 'Trade Confirmation'
  ClientHeight = 547
  ClientWidth = 1036
  OnShow = FormShow
  ExplicitWidth = 1036
  ExplicitHeight = 547
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 131
    Width = 1036
    Height = 396
    ExplicitTop = 131
    ExplicitHeight = 396
  end
  inherited lcParameter: TdxLayoutControl
    Top = 48
    Width = 1036
    Visible = False
    ExplicitTop = 48
    ExplicitWidth = 1036
  end
  inherited spReport: TcxSplitter
    Top = 123
    Width = 1036
    ExplicitTop = 123
    ExplicitWidth = 1036
  end
  inherited StatusBar: TdxStatusBar
    Top = 527
    Width = 1036
    ExplicitTop = 527
    ExplicitWidth = 1036
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      48
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'barPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'barExportToPdf'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'ZoomScale'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 52
          Visible = True
          ItemName = 'txtPages'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barOutline'
        end
        item
          Visible = True
          ItemName = 'barThumbnails'
        end
        item
          Visible = True
          ItemName = 'barPageSetting'
        end
        item
          Visible = True
          ItemName = 'dtContract'
        end
        item
          Visible = True
          ItemName = 'dtConDateTo'
        end
        item
          Visible = True
          ItemName = 'barReloadData'
        end>
    end
    object barMReportBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 1054
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllAcc'
        end
        item
          Visible = True
          ItemName = 'edClient'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 204
          Visible = True
          ItemName = 'edAccName'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllSales'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 161
          Visible = True
          ItemName = 'edSales'
        end
        item
          Visible = True
          ItemName = 'edSalesName'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkBranch'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 140
          Visible = True
          ItemName = 'edBranch'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dtContract: TcxBarEditItem
      Caption = 'Contract Date From'
      Category = 0
      Hint = 'Contract Date From'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkAllAcc: TcxBarEditItem
      Caption = 'All '
      Category = 0
      Hint = 'All '
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllAccPropertiesChange
    end
    object chkAllSales: TcxBarEditItem
      Caption = 'All'
      Category = 0
      Hint = 'All'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllSalesPropertiesChange
    end
    object edClient: TcxBarEditItem
      Caption = 'Client'
      Category = 0
      Hint = 'Client Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edClientPropertiesButtonClick
    end
    object edSales: TcxBarEditItem
      Caption = 'Sales'
      Category = 0
      Hint = 'Sales'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      Properties.OnCloseUp = edSalesPropertiesCloseUp
      RepositoryItem = dmGlobal.luSales
      InternalEditValue = 0
    end
    object edAccName: TcxBarEditItem
      Caption = 'Account Name'
      Category = 0
      Hint = 'Account Name'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
    object dtConDateTo: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkAllBranch: TcxBarEditItem
      Caption = 'All'
      Category = 0
      Hint = 'All'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      RepositoryItem = dmGlobal.luBranch
    end
    object chkBranch: TcxBarEditItem
      Caption = 'All'
      Category = 0
      Hint = 'All'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '3'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkBranchPropertiesChange
    end
    object edBranch: TcxBarEditItem
      Caption = 'Branch'
      Category = 0
      Hint = 'Branch'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luBranch
      InternalEditValue = 0
    end
    object edSalesName: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Middle Office\ReportTradeConfirmation.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DATEFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATETO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLSALES'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SALESID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLBRANCH'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BRANCHID'
        ParamType = ptUnknown
      end>
  end
end
