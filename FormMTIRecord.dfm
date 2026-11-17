inherited frmMTIRecord: TfrmMTIRecord
  Caption = 'MTI Record'
  ClientHeight = 451
  ClientWidth = 794
  ExplicitWidth = 810
  ExplicitHeight = 490
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 794
    Height = 361
    ExplicitWidth = 794
    ExplicitHeight = 361
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'RECORDNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 716
    end
    object grdField: TcxGrid [1]
      Left = 10
      Top = 103
      Width = 774
      Height = 248
      TabOrder = 2
      object gvwField: TcxGridDBTableView
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
        DataController.DataSource = dsField
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
        object gvwFieldFIELDID: TcxGridDBColumn
          DataBinding.FieldName = 'FIELDID'
          Visible = False
        end
        object gvwFieldRECORDID: TcxGridDBColumn
          DataBinding.FieldName = 'RECORDID'
          Visible = False
        end
        object gvwFieldSEQID: TcxGridDBColumn
          DataBinding.FieldName = 'SEQID'
          Visible = False
        end
        object gvwFieldFIELDNAME: TcxGridDBColumn
          Caption = 'Field Name'
          DataBinding.FieldName = 'FIELDNAME'
          Width = 200
        end
        object gvwFieldXMLFIELDNAME: TcxGridDBColumn
          Caption = 'XML Field Name'
          DataBinding.FieldName = 'XMLFIELDNAME'
          Width = 118
        end
        object gvwFieldSYNTAX: TcxGridDBColumn
          Caption = 'Syntax'
          DataBinding.FieldName = 'SYNTAX'
          Width = 40
        end
        object gvwFieldMOC: TcxGridDBColumn
          Caption = 'M/O/C'
          DataBinding.FieldName = 'MOC'
          RepositoryItem = dmGlobal.luMTIMOC
          Width = 70
        end
        object gvwFieldNOTES: TcxGridDBColumn
          Caption = 'Notes'
          DataBinding.FieldName = 'NOTES'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 322
        end
        object gvwFieldMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
        end
        object gvwFieldMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
        end
        object gvwFieldAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
        end
        object gvwFieldAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
        end
        object gvwFieldUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
        end
        object gvwFieldUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
        end
        object gvwFieldNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
        end
        object gvwFieldISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
        end
        object gvwFieldID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
      end
      object grdFieldLevel1: TcxGridLevel
        GridView = gvwField
      end
    end
    object cxDBMemo1: TcxDBMemo [2]
      Left = 68
      Top = 37
      DataBinding.DataField = 'DECSRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 60
      Width = 716
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 716
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdField
      ControlOptions.OriginalHeight = 248
      ControlOptions.OriginalWidth = 774
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 382
    Width = 794
    ExplicitTop = 382
    ExplicitWidth = 794
    inherited dbNavLog: TDBNavigator
      Left = 680
      Hints.Strings = ()
      ExplicitLeft = 680
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 431
    Width = 794
    ExplicitTop = 431
    ExplicitWidth = 794
  end
  inherited tabEditorData: TTabSet
    Top = 361
    Width = 794
    ExplicitTop = 361
    ExplicitWidth = 794
  end
  inherited dsSubject: TDataSource
    DataSet = cdsMTIRecord
    Left = 400
    Top = 64
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsField: TDataSource
    DataSet = cdsMTIField
    Left = 400
    Top = 160
  end
  object cdsMTIRecord: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'RECORDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTIRecord'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsMTIRecordBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 160
    object cdsMTIRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIRecordRECORDNAME: TStringField
      FieldName = 'RECORDNAME'
      Required = True
      Size = 50
    end
    object cdsMTIRecordDECSRIPTION: TStringField
      FieldName = 'DECSRIPTION'
      Size = 250
    end
    object cdsMTIRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIRecordID: TLargeintField
      FieldName = 'ID'
    end
    object cdsMTIRecordqryMTIField: TDataSetField
      FieldName = 'qryMTIField'
    end
  end
  object cdsMTIField: TNClientDataset
    Aggregates = <>
    DataSetField = cdsMTIRecordqryMTIField
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsMTIFieldIndex1'
        Fields = 'SEQID'
        Source = 'SEQID'
      end>
    Params = <>
    StoreDefs = True
    BeforePost = cdsMTIFieldBeforePost
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 160
    object cdsMTIFieldFIELDID: TIntegerField
      FieldName = 'FIELDID'
      Required = True
    end
    object cdsMTIFieldRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsMTIFieldSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsMTIFieldFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 50
    end
    object cdsMTIFieldXMLFIELDNAME: TStringField
      FieldName = 'XMLFIELDNAME'
      Size = 100
    end
    object cdsMTIFieldSYNTAX: TStringField
      FieldName = 'SYNTAX'
    end
    object cdsMTIFieldMOC: TStringField
      FieldName = 'MOC'
      Required = True
      Size = 1
    end
    object cdsMTIFieldNOTES: TStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsMTIFieldMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTIFieldMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTIFieldAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTIFieldAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTIFieldUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTIFieldUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTIFieldNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTIFieldISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTIFieldID: TLargeintField
      FieldName = 'ID'
    end
  end
end
