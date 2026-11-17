inherited frmKSEIRequest: TfrmKSEIRequest
  Caption = 'KSEI Account Opening Monitoring '
  ClientHeight = 455
  ClientWidth = 882
  Position = poMainFormCenter
  ExplicitWidth = 882
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 45
    Width = 882
    Height = 410
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 0
    object gvwKSEIRequest: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsOAKSEIRequest
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
      Bands = <
        item
        end>
      object gvwKSEIRequestOAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwKSEIRequestOACODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OACODE'
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwKSEIRequestCUST_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwKSEIRequestENTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwKSEIRequestENTDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwKSEIRequestCREATEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwKSEIRequestINVESTORCAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVESTORCAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwKSEIRequestENTACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTACCTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwKSEIRequestPRDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDCODE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwKSEIRequestACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwKSEIRequestEXISTING_CLIENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXISTING_CLIENT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwKSEIRequestPARENT_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARENT_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwKSEIRequestKSEI_CLIENT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_CLIENT_CODE'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwKSEIRequestREQUEST_SUBREK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REQUEST_SUBREK'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwKSEIRequestISWEB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISWEB'
        RepositoryItem = dmGlobal.chkStandard
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwKSEIRequestSIDNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIDNO'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwKSEIRequestKSEI_001: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_001'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwKSEIRequestKSEI_004: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_004'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwKSEIRequest
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 882
    Height = 45
    Align = alTop
    TabOrder = 1
    object edKSEIFileName: TcxButtonEdit
      Left = 86
      Top = 10
      ParentColor = True
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 355
    end
    object cxButton1: TcxButton
      Left = 447
      Top = 10
      Width = 98
      Height = 25
      Action = actUploadKSEI
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 551
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
      CaptionOptions.Text = 'KSEI File Name'
      Control = edKSEIFileName
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
    OwnerDraw = False
    Left = 312
    Top = 112
    object Refresh1: TMenuItem
      Action = actRefresh
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Actions = <
      item
        ActionName = 'actUpdateSubRek001'
        Permission = '[KSEI Account Opening Monitoring ].Update KSEI Sub Rek 001'
      end
      item
        ActionName = 'actUpdateSubRek004'
        Permission = '[KSEI Account Opening Monitoring ].Update KSEI Sub Rek 004'
      end
      item
        ActionName = 'actUpdateSID'
        Permission = '[KSEI Account Opening Monitoring ].Update KSEI SID'
      end
      item
        ActionName = 'actGenerateExcel'
        Permission = '[KSEI Account Opening Monitoring ].Generate To Excel File'
      end
      item
        ActionName = 'actViewGenerateFile'
        Permission = '[KSEI Account Opening Monitoring ].View Generate Excel File'
      end
      item
        ActionName = 'actUpdateFromKSEIData'
        Permission = '[KSEI Account Opening Monitoring ].Update From KSEI Data Upload'
      end
      item
        ActionName = 'actComplete'
        Permission = '[KSEI Account Opening Monitoring ].Complete'
      end>
    AssignedPermission = <
      item
        Name = 'Client Management Data'
        Description = 'Client Management Data Permission'
      end>
    Left = 312
  end
  object saBrowse: TcxStyleRepository
    Left = 312
    Top = 256
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 208
  end
  object ActionList1: TActionList
    Left = 312
    Top = 160
    object actUploadKSEI: TNAction
      Category = 'NActions'
      Caption = 'Upload KSEI File'
      OnExecute = actUploadKSEIExecute
      CheckPermission = False
    end
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Reload'
      OnExecute = actRefreshExecute
      CheckPermission = False
    end
  end
  object odKSEIFile: TOpenDialog
    Filter = 'Excel Files|*.xls; *.xlsx'
    Left = 312
    Top = 304
  end
  object cdsOAKSEIRequest: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryOAKSEIRequest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 64
    object cdsOAKSEIRequestOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAKSEIRequestOACODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'OACODE'
      Required = True
    end
    object cdsOAKSEIRequestCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      Required = True
    end
    object cdsOAKSEIRequestENTNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'ENTNAME'
      Required = True
      Size = 200
    end
    object cdsOAKSEIRequestENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsOAKSEIRequestCREATEDATE: TDateTimeField
      DisplayLabel = 'Create Date'
      FieldName = 'CREATEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOAKSEIRequestINVESTORCAT: TStringField
      FieldName = 'INVESTORCAT'
      Size = 1
    end
    object cdsOAKSEIRequestENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsOAKSEIRequestPRDCODE: TStringField
      DisplayLabel = 'Product Code'
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsOAKSEIRequestACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsOAKSEIRequestEXISTING_CLIENT: TStringField
      FieldName = 'EXISTING_CLIENT'
      Size = 1
    end
    object cdsOAKSEIRequestPARENT_ACCID: TIntegerField
      FieldName = 'PARENT_ACCID'
    end
    object cdsOAKSEIRequestKSEI_CLIENT_CODE: TStringField
      DisplayLabel = 'KSEI Client Code'
      FieldName = 'KSEI_CLIENT_CODE'
      Size = 4
    end
    object cdsOAKSEIRequestREQUEST_SUBREK: TStringField
      FieldName = 'REQUEST_SUBREK'
      Size = 1
    end
    object cdsOAKSEIRequestISWEB: TStringField
      DisplayLabel = 'From Web'
      FieldName = 'ISWEB'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsOAKSEIRequestSIDNO: TStringField
      DisplayLabel = 'SID No.'
      FieldName = 'SIDNO'
    end
    object cdsOAKSEIRequestKSEI_001: TStringField
      DisplayLabel = 'KSEI 001 No.'
      FieldName = 'KSEI_001'
      ReadOnly = True
      Size = 50
    end
    object cdsOAKSEIRequestKSEI_004: TStringField
      DisplayLabel = 'KSEI 004 No.'
      FieldName = 'KSEI_004'
      ReadOnly = True
      Size = 50
    end
  end
  object dsOAKSEIRequest: TDataSource
    DataSet = cdsOAKSEIRequest
    Left = 416
    Top = 112
  end
end
