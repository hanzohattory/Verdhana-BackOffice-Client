inherited frmReportNTransform: TfrmReportNTransform
  Caption = 'NAWC - Daily Report'
  ClientHeight = 653
  ClientWidth = 1194
  ExplicitWidth = 1194
  ExplicitHeight = 653
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Left = 200
    Top = 73
    Width = 994
    Height = 580
    ExplicitLeft = 200
    ExplicitTop = 73
    ExplicitWidth = 994
    ExplicitHeight = 580
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 1194
    Height = 47
    Align = alTop
    TabOrder = 5
    object cxButton1: TcxButton
      Left = 200
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object dtReportDate: TcxDateEdit
      Left = 74
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Report Date'
      Control = dtReportDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object grdReportType: TcxGrid [2]
    Left = 0
    Top = 73
    Width = 200
    Height = 580
    Align = alLeft
    TabOrder = 6
    OnEnter = grdMasterEnter
    object gvwReportType: TcxGridDBBandedTableView
      PopupMenu = popMaster
      OnKeyDown = gvwMasterKeyDown
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      OnFocusedRecordChanged = gvwReportTypeFocusedRecordChanged
      DataController.DataSource = dsLuRptType
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwReportTypeRPTTYPE: TcxGridDBBandedColumn
        Caption = 'Report Type'
        DataBinding.FieldName = 'RPTTYPE'
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwReportTypeRTPTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RTPTYPEDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = gvwReportType
    end
  end
  object pnlWait: TPanel [3]
    Left = 294
    Top = 36
    Width = 251
    Height = 31
    BevelOuter = bvNone
    Caption = 'Please Wait...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsReportList
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actPrintAllXLS: TNAction
      Category = 'NActions'
      Caption = 'Print All to XLS'
      ImageIndex = 12
      OnExecute = actPrintAllXLSExecute
      CheckPermission = False
    end
    object actPrintAllPDF: TNAction
      Category = 'NActions'
      Caption = 'Print All To PDF'
      ImageIndex = 12
      OnExecute = actPrintAllPDFExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    inherited mnuPrint: TdxBarButton
      Action = nil
      Enabled = False
      Visible = ivNever
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ImageIndex = 12
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actPrintAllXLS
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actPrintAllPDF
      Category = 0
    end
  end
  inherited ReportContainer: TNClientReportContainer
    Params = <
      item
        DataType = ftUnknown
        Name = 'ReportDate'
        ParamType = ptUnknown
      end>
  end
  object cdsReportList: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RPTTYPE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LENNO'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'LNNUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LENRMK1'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'REMARKS1'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS2'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS3'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS4'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS5'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS6'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS7'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS8'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS9'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS10'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'REMARKS11'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2000
      end>
    IndexDefs = <
      item
        Name = 'cdsReportListIndex1'
        Fields = 'LNNUM'
      end>
    IndexFieldNames = 'LNNUM'
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
        Value = 42552d
      end
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
        Value = 'VD51'
      end>
    ProviderName = 'dspN_dmMKBD_qryReportList'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsReportListRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsReportListLENNO: TIntegerField
      FieldName = 'LENNO'
      ReadOnly = True
    end
    object cdsReportListLNNUM: TIntegerField
      FieldName = 'LNNUM'
      Required = True
    end
    object cdsReportListLENRMK1: TIntegerField
      FieldName = 'LENRMK1'
      ReadOnly = True
    end
    object cdsReportListNO: TStringField
      FieldName = 'NO'
      Required = True
      Size = 100
    end
    object cdsReportListREMARKS1: TStringField
      FieldName = 'REMARKS1'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS2: TStringField
      FieldName = 'REMARKS2'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS3: TStringField
      FieldName = 'REMARKS3'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS4: TStringField
      FieldName = 'REMARKS4'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS5: TStringField
      FieldName = 'REMARKS5'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS6: TStringField
      FieldName = 'REMARKS6'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS7: TStringField
      FieldName = 'REMARKS7'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS8: TStringField
      FieldName = 'REMARKS8'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS9: TStringField
      FieldName = 'REMARKS9'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS10: TStringField
      FieldName = 'REMARKS10'
      ReadOnly = True
      Size = 2000
    end
    object cdsReportListREMARKS11: TStringField
      FieldName = 'REMARKS11'
      ReadOnly = True
      Size = 2000
    end
  end
  object cdsLuRptType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryLuRptType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 168
    object cdsLuRptTypeRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsLuRptTypeRTPTYPEDESC: TStringField
      FieldName = 'RTPTYPEDESC'
      Size = 150
    end
  end
  object dsLuRptType: TDataSource
    DataSet = cdsLuRptType
    Left = 112
    Top = 168
  end
  object cdsReportVD51: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD51'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 736
    Top = 128
  end
  object cdsReportVD52: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD52'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 736
    Top = 176
  end
  object cdsReportVD53: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD53'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 736
    Top = 224
  end
  object cdsReportVD54: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD54'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 736
    Top = 272
  end
  object cdsReportVD55: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD55'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 736
    Top = 320
  end
  object cdsReportVD56: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD56'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 128
  end
  object cdsReportVD57: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD57'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 176
  end
  object cdsReportVD58: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD58'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 224
  end
  object cdsReportVD59: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD59'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 272
  end
  object cdsReportVD510: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportVD510'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 320
  end
  object cdsReportXE13: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportXE13'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 736
    Top = 368
  end
  object cdsReportTransDate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportTransDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 360
    object cdsReportTransDateRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsReportTransDateLENNO: TIntegerField
      FieldName = 'LENNO'
      ReadOnly = True
    end
    object cdsReportTransDateLNNUM: TIntegerField
      FieldName = 'LNNUM'
      Required = True
    end
    object cdsReportTransDateLENRMK1: TIntegerField
      FieldName = 'LENRMK1'
      ReadOnly = True
    end
    object cdsReportTransDateNO: TStringField
      FieldName = 'NO'
      Required = True
      Size = 100
    end
    object cdsReportTransDateREMARKS1: TStringField
      FieldName = 'REMARKS1'
      Size = 2000
    end
    object cdsReportTransDateREMARKS2: TStringField
      FieldName = 'REMARKS2'
      Size = 2000
    end
    object cdsReportTransDateREMARKS3: TStringField
      FieldName = 'REMARKS3'
      Size = 2000
    end
    object cdsReportTransDateREMARKS4: TStringField
      FieldName = 'REMARKS4'
      Size = 2000
    end
    object cdsReportTransDateREMARKS5: TStringField
      FieldName = 'REMARKS5'
      Size = 2000
    end
    object cdsReportTransDateREMARKS6: TStringField
      FieldName = 'REMARKS6'
      Size = 2000
    end
    object cdsReportTransDateREMARKS7: TStringField
      FieldName = 'REMARKS7'
      Size = 2000
    end
    object cdsReportTransDateREMARKS8: TStringField
      FieldName = 'REMARKS8'
      Size = 2000
    end
    object cdsReportTransDateREMARKS9: TStringField
      FieldName = 'REMARKS9'
      Size = 2000
    end
    object cdsReportTransDateREMARKS10: TStringField
      FieldName = 'REMARKS10'
      Size = 2000
    end
    object cdsReportTransDateREMARKS11: TStringField
      FieldName = 'REMARKS11'
      Size = 2000
    end
  end
  object cdsReportBackDate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'RPTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryReportBackDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 408
    object cdsReportBackDateRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsReportBackDateLENNO: TIntegerField
      FieldName = 'LENNO'
      ReadOnly = True
    end
    object cdsReportBackDateLNNUM: TIntegerField
      FieldName = 'LNNUM'
      Required = True
    end
    object cdsReportBackDateLENRMK1: TIntegerField
      FieldName = 'LENRMK1'
      ReadOnly = True
    end
    object cdsReportBackDateNO: TStringField
      FieldName = 'NO'
      Required = True
      Size = 100
    end
    object cdsReportBackDateREMARKS1: TStringField
      FieldName = 'REMARKS1'
      Size = 2000
    end
    object cdsReportBackDateREMARKS2: TStringField
      FieldName = 'REMARKS2'
      Size = 2000
    end
    object cdsReportBackDateREMARKS3: TStringField
      FieldName = 'REMARKS3'
      Size = 2000
    end
    object cdsReportBackDateREMARKS4: TStringField
      FieldName = 'REMARKS4'
      Size = 2000
    end
    object cdsReportBackDateREMARKS5: TStringField
      FieldName = 'REMARKS5'
      Size = 2000
    end
    object cdsReportBackDateREMARKS6: TStringField
      FieldName = 'REMARKS6'
      Size = 2000
    end
    object cdsReportBackDateREMARKS7: TStringField
      FieldName = 'REMARKS7'
      Size = 2000
    end
    object cdsReportBackDateREMARKS8: TStringField
      FieldName = 'REMARKS8'
      Size = 2000
    end
    object cdsReportBackDateREMARKS9: TStringField
      FieldName = 'REMARKS9'
      Size = 2000
    end
    object cdsReportBackDateREMARKS10: TStringField
      FieldName = 'REMARKS10'
      Size = 2000
    end
    object cdsReportBackDateREMARKS11: TStringField
      FieldName = 'REMARKS11'
      Size = 2000
    end
  end
  object frxPDFExport: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 97
    Top = 339
  end
end
