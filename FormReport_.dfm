inherited frmReport: TfrmReport
  Caption = 'Report Container'
  ClientHeight = 445
  ClientWidth = 710
  Position = poMainFormCenter
  WindowState = wsMaximized
  ExplicitWidth = 710
  ExplicitHeight = 445
  TextHeight = 13
  object ReportContainer: TfrxPreview [0]
    Left = 0
    Top = 105
    Width = 710
    Height = 320
    Align = alClient
    BorderStyle = bsNone
    OutlineVisible = False
    OutlineWidth = 121
    ThumbnailVisible = False
    FindFmVisible = False
    OnPageChanged = ReportContainerPageChanged
    UseReportHints = True
    OutlineTreeSortType = dtsUnsorted
    HideScrolls = False
  end
  object lcParameter: TdxLayoutControl [1]
    Left = 0
    Top = 22
    Width = 710
    Height = 75
    Align = alTop
    TabOrder = 5
    object lcParameterGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object spReport: TcxSplitter [2]
    Left = 0
    Top = 97
    Width = 710
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salTop
    Control = lcParameter
  end
  object StatusBar: TdxStatusBar [3]
    Left = 0
    Top = 425
    Width = 710
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 100
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  inherited popDocking: TPopupMenu
    Left = 544
    Top = 272
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclReportContainer
    Left = 544
    Top = 320
  end
  object barMReport: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = frmMain.ilSmall
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 544
    Top = 224
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      22
      0)
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'ReportIconBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 625
      FloatTop = 8
      FloatClientWidth = 52
      FloatClientHeight = 257
      IsMainMenu = True
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
          ItemName = 'barReloadData'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object barPrint: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actSaveAs
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actZoomOut
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actZoomIn
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actFirstPage
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actPreviousPage
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actNextPage
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actLastPage
      Category = 0
    end
    object barOutline: TdxBarButton
      Action = actOutline
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
    end
    object barThumbnails: TdxBarButton
      Action = actThumbnails
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
    end
    object txtPages: TdxBarEdit
      Align = iaCenter
      Caption = 'Page'
      Category = 0
      Hint = 'Page'
      Visible = ivAlways
      Width = 50
      ReadOnly = True
      Text = '0'
    end
    object ZoomScale: TdxBarCombo
      Caption = 'Zoom Scale'
      Category = 0
      Hint = 'Zoom Scale'
      Visible = ivAlways
      OnChange = ZoomScaleChange
      Width = 50
      Text = '100%'
      DropDownWidth = 120
      Items.Strings = (
        '25%'
        '50%'
        '75%'
        '100%'
        '150%'
        '200%'
        'Page Width'
        'Whole Page')
      ItemIndex = 3
    end
    object barPageSetting: TdxBarButton
      Action = actPageSetting
      Category = 0
    end
    object barExportToPdf: TdxBarButton
      Action = actExportToPDF
      Category = 0
      Hint = 'Export to PDF'
    end
    object dxBarSubItem1: TdxBarSubItem
      Category = 0
      Hint = 'Export to'
      Visible = ivAlways
      ImageIndex = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end>
    end
    object dxBarButton13: TdxBarButton
      Action = actExportToPDF
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actExportToXLS
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actExportToRTF
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actExportToODT
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actExportToODS
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = actExportToXML
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Action = actExportToHTML
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = actExportToBMP
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actExportToSimpleText
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actExportToCSV
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = actExportToTIFF
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actExportToGIF
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actExportToJPEG
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actSendByEmail
      Category = 0
      Hint = 'Send By Email'
    end
    object barReloadData: TdxBarButton
      Action = actReloadData
      Category = 0
    end
  end
  object aclReportContainer: TActionList
    Images = frmMain.ilSmall
    Left = 544
    Top = 176
    object actPrint: TAction
      Caption = 'Print'
      Hint = 'Print'
      ImageIndex = 33
      OnExecute = actPrintExecute
    end
    object actSaveAs: TAction
      Caption = 'Save As'
      ImageIndex = 22
      OnExecute = actSaveAsExecute
    end
    object actZoomIn: TAction
      Caption = 'Zoom In'
      Hint = 'Zoom In'
      ImageIndex = 34
      OnExecute = actZoomInExecute
    end
    object actZoomOut: TAction
      Caption = 'Zoom Out'
      Hint = 'Zomm Out'
      ImageIndex = 35
      OnExecute = actZoomOutExecute
    end
    object actOutline: TAction
      Caption = 'Report Outline'
      Hint = 'Report Outline'
      ImageIndex = 25
      OnExecute = actOutlineExecute
    end
    object actNextPage: TAction
      Caption = 'Next Page'
      Hint = 'Next Page'
      ImageIndex = 29
      OnExecute = actNextPageExecute
    end
    object actPreviousPage: TAction
      Caption = 'Previous Page'
      Hint = 'Previous Page'
      ImageIndex = 32
      OnExecute = actPreviousPageExecute
    end
    object actFirstPage: TAction
      Caption = 'First Page'
      Hint = 'First Page'
      ImageIndex = 24
      OnExecute = actFirstPageExecute
    end
    object actLastPage: TAction
      Caption = 'Last Page'
      Hint = 'Last Page'
      ImageIndex = 27
      OnExecute = actLastPageExecute
    end
    object actThumbnails: TAction
      Caption = 'Thumbnails'
      Hint = 'Thumbnails'
      ImageIndex = 36
      OnExecute = actThumbnailsExecute
    end
    object actPageSetting: TAction
      Caption = 'Page Setting'
      Hint = 'Page Setting'
      ImageIndex = 31
      OnExecute = actPageSettingExecute
    end
    object actExportToPDF: TAction
      Caption = 'PDF File'
      Hint = 'Export To PDF'
      ImageIndex = 23
      OnExecute = actExportToPDFExecute
    end
    object actExportToHTML: TAction
      Caption = 'HTML File'
      OnExecute = actExportToHTMLExecute
    end
    object actExportToRTF: TAction
      Caption = 'RTF File'
      OnExecute = actExportToRTFExecute
    end
    object actExportToXLS: TAction
      Caption = 'Excel Table (OLE)'
      OnExecute = actExportToXLSExecute
    end
    object actExportToXML: TAction
      Caption = 'Excel Table (XML)'
      OnExecute = actExportToXMLExecute
    end
    object actExportToBMP: TAction
      Caption = 'BMP Image'
      OnExecute = actExportToBMPExecute
    end
    object actExportToJPEG: TAction
      Caption = 'JPEG Image'
      OnExecute = actExportToJPEGExecute
    end
    object actExportToTIFF: TAction
      Caption = 'TIFF Image'
      OnExecute = actExportToTIFFExecute
    end
    object actExportToGIF: TAction
      Caption = 'GIF Image'
      OnExecute = actExportToGIFExecute
    end
    object actExportToCSV: TAction
      Caption = 'CSV File'
      OnExecute = actExportToCSVExecute
    end
    object actSendByEmail: TAction
      Caption = 'Email'
      ImageIndex = 37
      OnExecute = actSendByEmailExecute
    end
    object actExportToSimpleText: TAction
      Caption = 'Text File'
      OnExecute = actExportToSimpleTextExecute
    end
    object actExportToODT: TAction
      Caption = 'Open Document Text'
      OnExecute = actExportToODTExecute
    end
    object actExportToODS: TAction
      Caption = 'Open Document Spreadsheet'
      OnExecute = actExportToODSExecute
    end
    object actReloadData: TAction
      Caption = 'Reload Data'
      Hint = 'Reload Data'
      ImageIndex = 47
      OnExecute = actReloadDataExecute
    end
  end
  object Report: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    Params = <>
    Left = 544
    Top = 128
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '*.pdf'
    Filter = 'PDF File|*.pdf'
    Left = 544
    Top = 376
  end
end
