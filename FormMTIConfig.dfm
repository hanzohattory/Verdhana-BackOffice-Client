inherited frmMTIConfig: TfrmMTIConfig
  Caption = 'MTI File Configuration'
  ClientHeight = 426
  ClientWidth = 605
  ExplicitWidth = 621
  ExplicitHeight = 465
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 605
    Height = 336
    ExplicitWidth = 605
    ExplicitHeight = 336
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'CONFIGCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 182
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 317
      Top = 10
      RepositoryItem = dmGlobal.luMTITrans
      DataBinding.DataField = 'TRANSID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 200
    end
    object grdRecord: TcxGrid [2]
      Left = 10
      Top = 132
      Width = 585
      Height = 194
      TabOrder = 3
      object gvwRecord: TcxGridDBTableView
        PopupMenu = popRecord
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsMTIConfigRecords
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwRecordCONFIG_RECORD_ID: TcxGridDBColumn
          Caption = 'Record Name'
          DataBinding.FieldName = 'CONFIG_RECORD_ID'
          Visible = False
          VisibleForCustomization = False
          Width = 230
        end
        object gvwRecordCONFIGID: TcxGridDBColumn
          DataBinding.FieldName = 'CONFIGID'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordRECORDID: TcxGridDBColumn
          Caption = 'Record Name'
          DataBinding.FieldName = 'RECORDID'
          RepositoryItem = dmGlobal.luMTITransRecord
          Width = 209
        end
        object gvwRecordSEQID: TcxGridDBColumn
          DataBinding.FieldName = 'SEQID'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordqryMTIConfigField: TcxGridDBColumn
          DataBinding.FieldName = 'qryMTIConfigField'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwRecordMINREC: TcxGridDBColumn
          Caption = 'Min Record'
          DataBinding.FieldName = 'MINREC'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
        end
        object gvwRecordMAXREC: TcxGridDBColumn
          Caption = 'Max Record'
          DataBinding.FieldName = 'MAXREC'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
        end
        object gvwRecordNUM_FIELDS: TcxGridDBColumn
          Caption = 'Num Fields'
          DataBinding.FieldName = 'NUM_FIELDS'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
        end
        object gvwRecordREQ_FIELDS: TcxGridDBColumn
          Caption = 'Req Fields'
          DataBinding.FieldName = 'REQ_FIELDS'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
        end
      end
      object grdRecordLevel1: TcxGridLevel
        GridView = gvwRecord
      end
    end
    object cxDBMemo1: TcxDBMemo [3]
      Left = 68
      Top = 37
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 527
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 182
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Transaction'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdRecord
      ControlOptions.OriginalHeight = 194
      ControlOptions.OriginalWidth = 585
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 527
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 357
    Width = 605
    ExplicitTop = 357
    ExplicitWidth = 605
    inherited dbNavLog: TDBNavigator
      Left = 491
      Hints.Strings = ()
      ExplicitLeft = 491
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 406
    Width = 605
    ExplicitTop = 406
    ExplicitWidth = 605
  end
  inherited tabEditorData: TTabSet
    Top = 336
    Width = 605
    ExplicitTop = 336
    ExplicitWidth = 605
  end
  inherited dsSubject: TDataSource
    DataSet = cdsMTIConfig
    Left = 184
    Top = 208
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsRecord: TDataSource
    DataSet = cdsMTIConfigRecord
    Left = 184
    Top = 256
  end
  object popRecord: TPopupMenu
    Left = 264
    Top = 208
    object SetFieldConfiguration1: TMenuItem
      Action = actSetFieldConfig
    end
    object ResetFieldConfiguration1: TMenuItem
      Action = actResetFieldConfig
    end
  end
  object aclMTIConfig: TActionList
    Left = 264
    Top = 256
    object actSetFieldConfig: TNAction
      Category = 'NActions'
      Caption = 'Set Field Configuration'
      OnExecute = actSetFieldConfigExecute
      CheckPermission = False
    end
    object actResetFieldConfig: TNAction
      Category = 'NActions'
      Caption = 'Reset Field Configuration'
      OnExecute = actResetFieldConfigExecute
      CheckPermission = False
    end
  end
  object cdsMTIConfigField: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMTIConfigRecordqryMTIConfigField
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 152
    object cdsMTIConfigFieldCONFIG_RECORD_ID: TIntegerField
      FieldName = 'CONFIG_RECORD_ID'
      Required = True
    end
    object cdsMTIConfigFieldFIELDID: TIntegerField
      FieldName = 'FIELDID'
      Required = True
    end
    object cdsMTIConfigFieldSOURCEDATA: TStringField
      FieldName = 'SOURCEDATA'
      Required = True
      Size = 1
    end
    object cdsMTIConfigFieldSOURCEVALUE: TStringField
      FieldName = 'SOURCEVALUE'
      Size = 100
    end
    object cdsMTIConfigFieldMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigFieldMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigFieldAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigFieldAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigFieldUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigFieldUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigFieldNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigFieldISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigFieldID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsMTIConfigRecord: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMTIConfigqryMTIConfigRecord
    Params = <>
    AfterOpen = cdsMTIConfigRecordAfterOpen
    BeforePost = cdsMTIConfigRecordBeforePost
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 176
    object cdsMTIConfigRecordCONFIG_RECORD_ID: TIntegerField
      FieldName = 'CONFIG_RECORD_ID'
      Required = True
    end
    object cdsMTIConfigRecordCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsMTIConfigRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIConfigRecordSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsMTIConfigRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigRecordID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMTIConfigRecordqryMTIConfigField: TDataSetField
      FieldName = 'qryMTIConfigField'
    end
    object cdsLuMTITransRecordMINREC: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MINREC'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'MINREC'
      KeyFields = 'RECORDID'
      Lookup = True
    end
    object cdsLuMTITransRecordMAXREC: TIntegerField
      FieldKind = fkLookup
      FieldName = 'MAXREC'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'MAXREC'
      KeyFields = 'RECORDID'
      Lookup = True
    end
    object cdsLuMTITransRecordNUM_FIELDS: TIntegerField
      FieldKind = fkLookup
      FieldName = 'NUM_FIELDS'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'NUM_FIELDS'
      KeyFields = 'RECORDID'
      Lookup = True
    end
    object cdsLuMTITransRecordREQ_FIELDS: TIntegerField
      FieldKind = fkLookup
      FieldName = 'REQ_FIELDS'
      LookupDataSet = dmLookup.cdsLuMTITransRecord
      LookupKeyFields = 'RECORDID'
      LookupResultField = 'REQ_FIELDS'
      KeyFields = 'RECORDID'
      Lookup = True
    end
  end
  object cdsMTIConfig: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONFIGID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTIConfig'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsMTIConfigAfterOpen
    BeforePost = cdsMTIConfigBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 152
    object cdsMTIConfigCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsMTIConfigCONFIGCODE: TStringField
      FieldName = 'CONFIGCODE'
      Required = True
      Size = 50
    end
    object cdsMTIConfigTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
      OnChange = cdsMTIConfigTRANSIDChange
    end
    object cdsMTIConfigDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsMTIConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIConfigID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMTIConfigqryMTIConfigRecord: TDataSetField
      FieldName = 'qryMTIConfigRecord'
    end
  end
  object dsMTIConfigRecords: TDataSource
    DataSet = cdsMTIConfigRecord
    Left = 408
    Top = 224
  end
end
