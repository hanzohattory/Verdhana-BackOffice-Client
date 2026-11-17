inherited frmKSEIRDNUpload: TfrmKSEIRDNUpload
  HelpContext = 121
  Caption = 'KSEI RDN Upload'
  ClientHeight = 423
  ClientWidth = 881
  ExplicitWidth = 881
  ExplicitHeight = 423
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 881
    Height = 49
    Align = alTop
    TabOrder = 0
    object txtKSEIRDNFile: TcxButtonEdit
      Left = 115
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txtKSEIRDNFilePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 500
    end
    object cxButton1: TcxButton
      Left = 727
      Top = 10
      Width = 98
      Height = 25
      Action = actViewData
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 621
      Top = 10
      Width = 100
      Height = 25
      Action = actUploadData
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Import KSEI RDN File'
      Control = txtKSEIRDNFile
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 49
    Width = 881
    Height = 374
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwKSEIRDN: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsKSEIRDNUpload
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwKSEIRDNUPLOADDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UPLOADDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwKSEIRDNSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwKSEIRDNNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        Width = 312
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwKSEIRDNSUBREK01: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUBREK01'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwKSEIRDNSUBREK04: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUBREK04'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwKSEIRDNRDN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RDN'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwKSEIRDNBANK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwKSEIRDNMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwKSEIRDNMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwKSEIRDNAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwKSEIRDNAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwKSEIRDNUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwKSEIRDNUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwKSEIRDNNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwKSEIRDNISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwKSEIRDNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwKSEIRDN
    end
  end
  inherited popDocking: TPopupMenu
    Left = 352
    Top = 112
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclBankRecon
    Actions = <
      item
        ActionName = 'actViewData'
        Permission = '[KSEI RDN Upload].Reload Data'
      end
      item
        ActionName = 'actUploadData'
        Permission = '[KSEI RDN Upload].Upload Data'
      end>
    Left = 264
    Top = 112
  end
  object aclBankRecon: TActionList
    Left = 272
    Top = 160
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'Reload Data'
      OnExecute = actViewDataExecute
      CheckPermission = True
    end
    object actUploadData: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataExecute
      CheckPermission = True
    end
  end
  object dsKSEIRDNUpload: TDataSource
    DataSet = cdsKSEIRDNUpload
    Left = 456
    Top = 160
  end
  object cdsKSEIRDNUpload: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRDNUpload'
    RemoteServer = dmGlobal.dspConnection
    Left = 456
    Top = 112
    object cdsKSEIRDNUploadSID: TStringField
      FieldName = 'SID'
      Required = True
    end
    object cdsKSEIRDNUploadINTSUBREKID: TStringField
      FieldName = 'INTSUBREKID'
      Required = True
      Size = 4
    end
    object cdsKSEIRDNUploadNAME: TStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsKSEIRDNUploadSUBREK01: TStringField
      FieldName = 'SUBREK01'
    end
    object cdsKSEIRDNUploadSUBREK04: TStringField
      FieldName = 'SUBREK04'
    end
    object cdsKSEIRDNUploadRDN: TStringField
      FieldName = 'RDN'
    end
    object cdsKSEIRDNUploadBANK: TStringField
      FieldName = 'BANK'
      Size = 10
    end
    object cdsKSEIRDNUploadMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsKSEIRDNUploadMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsKSEIRDNUploadAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsKSEIRDNUploadAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsKSEIRDNUploadUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsKSEIRDNUploadUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsKSEIRDNUploadNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsKSEIRDNUploadISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsKSEIRDNUploadID: TLargeintField
      FieldName = 'ID'
    end
  end
  object ImportFilesDialog: TOpenDialog
    Filter = 'Excel Files|*.xls'
    Left = 184
    Top = 112
  end
end
