inherited frmChargeTable: TfrmChargeTable
  Caption = 'Charge Table'
  ClientHeight = 353
  ExplicitWidth = 535
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 97
    Align = alTop
    ExplicitHeight = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'CHARGE_TABLE_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 64
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 445
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 68
      Top = 37
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 284
    ExplicitTop = 284
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
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
    Top = 333
    ExplicitTop = 333
  end
  inherited tabEditorData: TTabSet
    Top = 263
    ExplicitTop = 263
  end
  object grdChargeTableD: TcxGrid [4]
    Left = 0
    Top = 97
    Width = 529
    Height = 166
    Align = alClient
    TabOrder = 4
    object gvwChargeTableD: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsChargeTableD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmCommissionTables.BlueToggle
      object gvwChargeTableDSTART_VALUE: TcxGridDBColumn
        Caption = 'Start Value'
        DataBinding.FieldName = 'START_VALUE'
        Width = 100
      end
      object gvwChargeTableDEND_VALUE: TcxGridDBColumn
        Caption = 'End Value'
        DataBinding.FieldName = 'END_VALUE'
        Width = 100
      end
      object gvwChargeTableDBASIS: TcxGridDBColumn
        Caption = 'Basis'
        DataBinding.FieldName = 'BASIS'
        RepositoryItem = dmGlobal.luChargeTableBasis
        Width = 80
      end
      object gvwChargeTableDRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        Width = 100
      end
      object gvwChargeTableDAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
      end
    end
    object grdChargeTableDLevel1: TcxGridLevel
      GridView = gvwChargeTableD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsChargeTableH
    Left = 216
    Top = 48
  end
  object dsChargeTableD: TDataSource
    DataSet = cdsChargeTableD
    Left = 336
    Top = 48
  end
  object cdsChargeTableH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CHARGE_TABLE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryChargeTableH'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsChargeTableHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 104
    object cdsChargeTableHCHARGE_TABLE_ID: TLargeintField
      FieldName = 'CHARGE_TABLE_ID'
      Required = True
    end
    object cdsChargeTableHCHARGE_TABLE_CODE: TStringField
      FieldName = 'CHARGE_TABLE_CODE'
      Required = True
      Size = 10
    end
    object cdsChargeTableHMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsChargeTableHDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object cdsChargeTableHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChargeTableHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChargeTableHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChargeTableHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChargeTableHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChargeTableHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsChargeTableHqryChargeTableD: TDataSetField
      FieldName = 'qryChargeTableD'
    end
    object cdsChargeTableHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChargeTableHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChargeTableHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
  end
  object cdsChargeTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsChargeTableHqryChargeTableD
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 104
    object cdsChargeTableDCHARGE_TABLE_ID: TLargeintField
      FieldName = 'CHARGE_TABLE_ID'
      Required = True
    end
    object cdsChargeTableDSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsChargeTableDSTART_VALUE: TFloatField
      FieldName = 'START_VALUE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsChargeTableDEND_VALUE: TFloatField
      FieldName = 'END_VALUE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsChargeTableDBASIS: TStringField
      FieldName = 'BASIS'
      Size = 1
    end
    object cdsChargeTableDRATE: TFloatField
      FieldName = 'RATE'
      DisplayFormat = '#,##0.00000'
    end
    object cdsChargeTableDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object cdsChargeTableDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChargeTableDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChargeTableDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChargeTableDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChargeTableDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChargeTableDID: TLargeintField
      FieldName = 'ID'
    end
  end
end
