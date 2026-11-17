inherited frmReportIDXClearingResult: TfrmReportIDXClearingResult
  Caption = 'Report IDX Clearing Result'
  ClientHeight = 500
  ClientWidth = 800
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 500
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 89
    Width = 800
    Height = 391
    ExplicitTop = 89
    ExplicitWidth = 800
    ExplicitHeight = 391
  end
  inherited lcParameter: TdxLayoutControl
    Width = 800
    Height = 59
    Visible = False
    ExplicitWidth = 800
    ExplicitHeight = 59
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
  end
  inherited spReport: TcxSplitter
    Top = 81
    Width = 800
    ExplicitTop = 81
    ExplicitWidth = 800
  end
  inherited StatusBar: TdxStatusBar
    Top = 480
    Width = 800
    ExplicitTop = 480
    ExplicitWidth = 800
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'IDX Clearing Result'
        Description = 'IDX Clearing Result'
      end>
    Left = 552
    Top = 323
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarManager1Bar1: TdxBar
      FloatLeft = 769
      FloatTop = 262
      FloatClientWidth = 65
      FloatClientHeight = 354
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
          BeginGroup = True
          Visible = True
          ItemName = 'dtSettle'
        end
        item
          Visible = True
          ItemName = 'barReloadData'
        end>
      UseOwnFont = True
    end
    object dtSettle: TcxBarEditItem
      Caption = 'Settle Date'
      Category = 0
      Hint = 'Settle Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Settlement\Clearing_Result_List.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'SETTLEDATE'
        ParamType = ptInput
        Value = 0
      end>
  end
end
