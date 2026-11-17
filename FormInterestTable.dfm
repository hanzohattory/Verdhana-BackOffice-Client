inherited frmInterestTable: TfrmInterestTable
  Caption = 'Interest Table'
  ClientHeight = 329
  ClientWidth = 501
  ExplicitWidth = 517
  ExplicitHeight = 368
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 501
    Height = 73
    Align = alTop
    ExplicitWidth = 501
    ExplicitHeight = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'INTERESTTABLECODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'INTERESTTABLEDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 421
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 421
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 260
    Width = 501
    ExplicitTop = 260
    ExplicitWidth = 501
    inherited dbNavLog: TDBNavigator
      Left = 387
      Hints.Strings = ()
      ExplicitLeft = 387
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 309
    Width = 501
    ExplicitTop = 309
    ExplicitWidth = 501
  end
  inherited tabEditorData: TTabSet
    Top = 239
    Width = 501
    ExplicitTop = 239
    ExplicitWidth = 501
  end
  object grdInterestTableD: TcxGrid [4]
    Left = 0
    Top = 73
    Width = 501
    Height = 166
    Align = alClient
    TabOrder = 4
    object gvwInterestTableD: TcxGridDBTableView
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
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsInterestTableD
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
      Styles.ContentOdd = frmInterestTables.BlueToggle
      object gvwInterestTableDSTARTVALUE: TcxGridDBColumn
        Caption = 'Start Value'
        DataBinding.FieldName = 'STARTVALUE'
        Width = 175
      end
      object gvwInterestTableDENDVALUE: TcxGridDBColumn
        Caption = 'End Value'
        DataBinding.FieldName = 'ENDVALUE'
        Width = 178
      end
      object gvwInterestTableDINTERESTRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'INTERESTRATE'
        Width = 111
      end
    end
    object grdInterestTableDLevel1: TcxGridLevel
      GridView = gvwInterestTableD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsInterestTableH
    Left = 248
    Top = 56
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsInterestTableD: TDataSource
    DataSet = cdsInterestTableD
    Left = 376
    Top = 56
  end
  object cdsInterestTableH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'INTERESTTABLECODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryInterestTableH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 248
    Top = 106
    object cdsInterestTableHINTERESTTABLECODE: TStringField
      FieldName = 'INTERESTTABLECODE'
      Required = True
      Size = 10
    end
    object cdsInterestTableHINTERESTTABLEDESC: TStringField
      FieldName = 'INTERESTTABLEDESC'
      Size = 50
    end
    object cdsInterestTableHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInterestTableHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInterestTableHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInterestTableHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInterestTableHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInterestTableHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsInterestTableHqryInterestTableD: TDataSetField
      FieldName = 'qryInterestTableD'
    end
    object cdsInterestTableHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsInterestTableHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsInterestTableHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
  end
  object cdsInterestTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsInterestTableHqryInterestTableD
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 106
    object cdsInterestTableDINTERESTTABLECODE: TStringField
      FieldName = 'INTERESTTABLECODE'
      Required = True
      Size = 10
    end
    object cdsInterestTableDSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsInterestTableDSTARTVALUE: TFloatField
      FieldName = 'STARTVALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsInterestTableDENDVALUE: TFloatField
      FieldName = 'ENDVALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsInterestTableDINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsInterestTableDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInterestTableDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInterestTableDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInterestTableDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInterestTableDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInterestTableDID: TLargeintField
      FieldName = 'ID'
    end
  end
end
