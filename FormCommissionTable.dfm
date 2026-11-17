inherited frmCommissionTable: TfrmCommissionTable
  Caption = 'Commission Table'
  ExplicitWidth = 535
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 100
    Align = alTop
    ExplicitHeight = 100
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'COMM_TABLE_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
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
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 68
      Top = 64
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 445
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 223
      Top = 37
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 98
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
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
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
  end
  inherited dxLayoutControl2: TdxLayoutControl
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
  object grdCommTableD: TcxGrid [3]
    Left = 0
    Top = 100
    Width = 529
    Height = 190
    Align = alClient
    TabOrder = 3
    object gvwCommTableD: TcxGridDBTableView
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
      DataController.DataSource = dsCommTableD
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
      object gvwCommTableDSTART_VALUE: TcxGridDBColumn
        Caption = 'Start Value'
        DataBinding.FieldName = 'START_VALUE'
        Width = 139
      end
      object gvwCommTableDEND_VALUE: TcxGridDBColumn
        Caption = 'End Value'
        DataBinding.FieldName = 'END_VALUE'
        Width = 165
      end
      object gvwCommTableDCOMM_RATE: TcxGridDBColumn
        Caption = 'Comm Rate'
        DataBinding.FieldName = 'COMM_RATE'
        Width = 75
      end
      object gvwCommTableDNET_RATE: TcxGridDBColumn
        Caption = 'Net Rate'
        DataBinding.FieldName = 'NET_RATE'
        Width = 73
      end
    end
    object grdCommTableDLevel1: TcxGridLevel
      GridView = gvwCommTableD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCommTableH
    Left = 48
    Top = 152
  end
  object dsCommTableD: TDataSource
    DataSet = cdsCommTableD
    Left = 152
    Top = 152
  end
  object cdsCommTableH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'COMM_TABLE_CODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryCommTableH'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCommTableHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 200
    object cdsCommTableHCOMM_TABLE_CODE: TStringField
      FieldName = 'COMM_TABLE_CODE'
      Required = True
      Size = 10
    end
    object cdsCommTableHDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object cdsCommTableHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCommTableHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCommTableHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCommTableHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCommTableHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCommTableHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCommTableHqryCommTableD: TDataSetField
      FieldName = 'qryCommTableD'
    end
    object cdsCommTableHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCommTableHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCommTableHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCommTableHMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsCommTableHCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object cdsCommTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCommTableHqryCommTableD
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 152
    Top = 200
    object cdsCommTableDCOMM_TABLE_CODE: TStringField
      FieldName = 'COMM_TABLE_CODE'
      Required = True
      Size = 10
    end
    object cdsCommTableDSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsCommTableDSTART_VALUE: TFloatField
      FieldName = 'START_VALUE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCommTableDEND_VALUE: TFloatField
      FieldName = 'END_VALUE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCommTableDCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#.00000'
    end
    object cdsCommTableDNET_RATE: TFloatField
      FieldName = 'NET_RATE'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#.00000'
    end
    object cdsCommTableDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCommTableDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCommTableDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCommTableDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCommTableDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCommTableDID: TLargeintField
      FieldName = 'ID'
    end
  end
end
