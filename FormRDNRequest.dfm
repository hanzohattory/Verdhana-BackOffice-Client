inherited frmRDNRequest: TfrmRDNRequest
  Caption = 'RDN Request'
  ClientHeight = 394
  ClientWidth = 896
  OnShow = FormShow
  ExplicitWidth = 896
  ExplicitHeight = 394
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 45
    Width = 896
    Height = 349
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 0
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      DataController.DataSource = dsRDNRequest
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
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1OAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1OACODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OACODE'
        Width = 116
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CUST_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_TYPE'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ENTNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ENTNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ENTDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTDESC'
        Width = 119
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CREATEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1INVESTORCAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVESTORCAT'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ENTACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTACCTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1PRDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1EXISTING_CLIENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXISTING_CLIENT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1PARENT_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARENT_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ISWEB: TcxGridDBBandedColumn
        Caption = 'From Web'
        DataBinding.FieldName = 'ISWEB'
        RepositoryItem = dmGlobal.chkStandard
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1SIDNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIDNO'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1KSEI_001: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_001'
        Width = 188
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1KSEI_004: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_004'
        Width = 196
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKCODE'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BNNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNNAME'
        Width = 195
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNAME'
        Width = 173
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKBRANCH'
        Width = 112
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 896
    Height = 45
    Align = alTop
    TabOrder = 1
    object edRDNFileName: TcxButtonEdit
      Left = 85
      Top = 10
      ParentColor = True
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edRDNFileNamePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 355
    end
    object cxButton1: TcxButton
      Left = 446
      Top = 10
      Width = 98
      Height = 25
      Action = actUploadRDNFile
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 550
      Top = 10
      Width = 75
      Height = 25
      Action = actRefresh
      TabOrder = 2
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'RDN File Name'
      Control = edRDNFileName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 355
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited popDocking: TPopupMenu
    Left = 160
    Top = 168
    object Refresh1: TMenuItem
      Action = actRefresh
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ViewReportCIMB1: TMenuItem
      Action = actViewReport
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Actions = <
      item
        ActionName = 'actUpdateRDNAccount'
        Permission = '[RDN Request].Update RDN Account'
      end
      item
        ActionName = 'actGenerateFile'
        Permission = '[RDN Request].Generate Report To PDF File'
      end
      item
        ActionName = 'actViewReport'
        Permission = '[RDN Request].View Report'
      end
      item
        ActionName = 'actUpdateFromKSEIData'
        Permission = '[RDN Request].Update From KSEI Data Upload'
      end
      item
        ActionName = 'actComplete'
        Permission = '[RDN Request].Complete'
      end>
    AssignedPermission = <
      item
        Name = 'Client Management Data'
        Description = 'Client Management Data Permission'
      end>
    Left = 75
    Top = 272
  end
  object ActionList1: TActionList
    Left = 162
    Top = 222
    object actViewReport: TNAction
      Category = 'NActions'
      Caption = 'View Report'
      Visible = False
      OnExecute = actViewReportExecute
      CheckPermission = True
    end
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
      CheckPermission = False
    end
    object actUploadRDNFile: TNAction
      Category = 'NActions'
      Caption = 'Upload RDN File'
      OnExecute = actUploadRDNFileExecute
      CheckPermission = False
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 76
    Top = 325
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object rcRDN_: TNReportContainer
    Left = 76
    Top = 173
  end
  object rptPDF: TfrxReport
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.536480439800000000
    ReportOptions.LastChange = 42025.810804780100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 76
    Top = 71
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = True
    HTMLTags = True
    Quality = 95
    Transparency = False
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
    Left = 77
    Top = 125
  end
  object GenerateRDN: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Opening Account\OABBNI.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'CID'
        ParamType = ptInput
      end>
    Left = 74
    Top = 223
  end
  object cdsRDNRequest: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryOARDNRequest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 160
    Top = 72
    object cdsRDNRequestOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsRDNRequestOACODE: TStringField
      DisplayLabel = 'Opening Account Code'
      FieldName = 'OACODE'
      Required = True
    end
    object cdsRDNRequestCUST_TYPE: TIntegerField
      DisplayLabel = 'Customer Type'
      FieldName = 'CUST_TYPE'
      Required = True
    end
    object cdsRDNRequestENTNAME: TStringField
      DisplayLabel = 'Accounr Name'
      FieldName = 'ENTNAME'
      Required = True
      Size = 200
    end
    object cdsRDNRequestENTDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsRDNRequestCREATEDATE: TDateTimeField
      DisplayLabel = 'Create Date'
      FieldName = 'CREATEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsRDNRequestINVESTORCAT: TStringField
      DisplayLabel = 'Investor Category'
      FieldName = 'INVESTORCAT'
      Size = 1
    end
    object cdsRDNRequestENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsRDNRequestPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsRDNRequestACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRDNRequestEXISTING_CLIENT: TStringField
      FieldName = 'EXISTING_CLIENT'
      Size = 1
    end
    object cdsRDNRequestPARENT_ACCID: TIntegerField
      FieldName = 'PARENT_ACCID'
    end
    object cdsRDNRequestISWEB: TStringField
      FieldName = 'ISWEB'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsRDNRequestSIDNO: TStringField
      DisplayLabel = 'SID No.'
      FieldName = 'SIDNO'
    end
    object cdsRDNRequestKSEI_001: TStringField
      DisplayLabel = 'Account KSEI 001'
      FieldName = 'KSEI_001'
      ReadOnly = True
      Size = 50
    end
    object cdsRDNRequestKSEI_004: TStringField
      DisplayLabel = 'Account KSEI 004'
      FieldName = 'KSEI_004'
      ReadOnly = True
      Size = 50
    end
    object cdsRDNRequestBANKCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BANKCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsRDNRequestBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsRDNRequestBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsRDNRequestBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsRDNRequestBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      ReadOnly = True
      Size = 50
    end
  end
  object dsRDNRequest: TDataSource
    DataSet = cdsRDNRequest
    Left = 160
    Top = 120
  end
  object odRDNFile: TOpenDialog
    Filter = 'Excel Files|*.xls; *.xlsx'
    Left = 160
    Top = 272
  end
  object rcRDN: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    Params = <>
    Left = 432
    Top = 184
  end
end
