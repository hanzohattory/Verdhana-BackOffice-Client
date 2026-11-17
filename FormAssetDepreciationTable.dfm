inherited frmAssetDepreciationTable: TfrmAssetDepreciationTable
  Caption = 'Depreciation Table'
  ClientHeight = 375
  ClientWidth = 492
  ExplicitWidth = 498
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 492
    Height = 285
    ExplicitWidth = 492
    ExplicitHeight = 285
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'ASSET_DEPRECIATION_TABLE_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 301
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 397
      Top = 10
      DataBinding.DataField = 'ECONOMIC_LIFE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 44
    end
    object cxDBCheckBox1: TcxDBCheckBox [2]
      Left = 10
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Cut off in January'
      DataBinding.DataField = 'IS_RECALC_ONJANUARY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 111
    end
    object cxDBCheckBox2: TcxDBCheckBox [3]
      Left = 127
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Calculation based on Book Value'
      DataBinding.DataField = 'IS_BASEDON_BOOKVALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 180
    end
    object cxDBCheckBox3: TcxDBCheckBox [4]
      Left = 313
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Write off at the end of period'
      DataBinding.DataField = 'IS_WRITEOFF_ENDVALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 168
    end
    object cxLabel1: TcxLabel [5]
      Left = 447
      Top = 10
      Caption = 'Year'
      Style.HotTrack = False
    end
    object grdDeprecTableValue: TcxGrid [6]
      Left = 10
      Top = 95
      Width = 471
      Height = 176
      TabOrder = 7
      object gvwDeprecTableValue: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataSource = dsDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'DEPRECIATION_PCT'
            Column = gvwDeprecTableValueDEPRECIATION_PCT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = frmAssetDepreciationTableList.BlueToggle
        object gvwDeprecTableValueBYYEAR: TcxGridDBColumn
          Caption = 'Year'
          DataBinding.FieldName = 'BYYEAR'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 164
        end
        object gvwDeprecTableValueDEPRECIATION_PCT: TcxGridDBColumn
          Caption = 'Depreciation (%)'
          DataBinding.FieldName = 'DEPRECIATION_PCT'
          Width = 212
        end
      end
      object grdDeprecTableValueLevel1: TcxGridLevel
        GridView = gvwDeprecTableValue
      end
    end
    object btnCalc: TcxButton [7]
      Left = 10
      Top = 64
      Width = 158
      Height = 25
      Caption = 'Calc Depretiation Value'
      TabOrder = 6
      OnClick = btnCalcClick
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Life'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = grdDeprecTableValue
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = btnCalc
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 306
    Width = 492
    ExplicitTop = 306
    ExplicitWidth = 492
    inherited dbNavLog: TDBNavigator
      Left = 378
      Hints.Strings = ()
      ExplicitLeft = 378
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 355
    Width = 492
    ExplicitTop = 355
    ExplicitWidth = 492
  end
  inherited tabEditorData: TTabSet
    Top = 285
    Width = 492
    ExplicitTop = 285
    ExplicitWidth = 492
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAssetDeprecTableH
    Left = 416
    Top = 312
  end
  object dsDetail: TDataSource
    DataSet = cdsAssetDeprecTableD
    Left = 352
    Top = 312
  end
  object cdsAssetDeprecTableH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ASSET_DEPRECIATION_TABLE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryAssetDeprecTableH'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsAssetDeprecTableHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 120
    Top = 128
    object cdsAssetDeprecTableHASSET_DEPRECIATION_TABLE_ID: TIntegerField
      FieldName = 'ASSET_DEPRECIATION_TABLE_ID'
      Required = True
    end
    object cdsAssetDeprecTableHASSET_DEPRECIATION_TABLE_DESC: TStringField
      FieldName = 'ASSET_DEPRECIATION_TABLE_DESC'
      Size = 50
    end
    object cdsAssetDeprecTableHECONOMIC_LIFE: TIntegerField
      FieldName = 'ECONOMIC_LIFE'
    end
    object cdsAssetDeprecTableHIS_RECALC_ONJANUARY: TStringField
      FieldName = 'IS_RECALC_ONJANUARY'
      Size = 1
    end
    object cdsAssetDeprecTableHIS_BASEDON_BOOKVALUE: TStringField
      FieldName = 'IS_BASEDON_BOOKVALUE'
      Size = 1
    end
    object cdsAssetDeprecTableHIS_WRITEOFF_ENDVALUE: TStringField
      FieldName = 'IS_WRITEOFF_ENDVALUE'
      Size = 1
    end
    object cdsAssetDeprecTableHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAssetDeprecTableHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAssetDeprecTableHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAssetDeprecTableHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAssetDeprecTableHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAssetDeprecTableHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAssetDeprecTableHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAssetDeprecTableHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAssetDeprecTableHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAssetDeprecTableHqryAssetDeprecTableD: TDataSetField
      FieldName = 'qryAssetDeprecTableD'
    end
  end
  object cdsAssetDeprecTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAssetDeprecTableHqryAssetDeprecTableD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 272
    Top = 128
    object cdsAssetDeprecTableDASSET_DEPRECIATION_TABLE_ID: TIntegerField
      FieldName = 'ASSET_DEPRECIATION_TABLE_ID'
      Required = True
    end
    object cdsAssetDeprecTableDBYYEAR: TIntegerField
      FieldName = 'BYYEAR'
      Required = True
    end
    object cdsAssetDeprecTableDDEPRECIATION_PCT: TFloatField
      FieldName = 'DEPRECIATION_PCT'
    end
    object cdsAssetDeprecTableDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAssetDeprecTableDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAssetDeprecTableDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAssetDeprecTableDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAssetDeprecTableDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAssetDeprecTableDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAssetDeprecTableDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAssetDeprecTableDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAssetDeprecTableDID: TLargeintField
      FieldName = 'ID'
    end
  end
end
