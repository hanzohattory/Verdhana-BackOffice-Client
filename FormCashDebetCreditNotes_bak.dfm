inherited frmCashDebetCreditNotes: TfrmCashDebetCreditNotes
  Caption = 'Cash Debet/Credit Notes'
  ClientHeight = 398
  ClientWidth = 497
  ExplicitWidth = 503
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 497
    Height = 153
    Align = alTop
    ExplicitWidth = 497
    ExplicitHeight = 153
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 67
      Top = 10
      DataBinding.DataField = 'DCCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 140
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [1]
      Left = 67
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 202
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 285
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 268
      Top = 10
      RepositoryItem = dmGlobal.luCashBook
      DataBinding.DataField = 'CBID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 219
    end
    object cxDBDateEdit1: TcxDBDateEdit [4]
      Left = 67
      Top = 64
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit [5]
      Left = 231
      Top = 64
      DataBinding.DataField = 'TRDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cxDBDateEdit3: TcxDBDateEdit [6]
      Left = 387
      Top = 64
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 100
    end
    object cxDBTextEdit3: TcxDBTextEdit [7]
      Left = 202
      Top = 91
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 80
    end
    object cxDBTextEdit4: TcxDBTextEdit [8]
      Left = 297
      Top = 91
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 190
    end
    object cxDBTextEdit5: TcxDBTextEdit [9]
      Left = 67
      Top = 118
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 420
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [10]
      Left = 67
      Top = 91
      RepositoryItem = dmGlobal.luDebetCredit
      DataBinding.DataField = 'DC'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 80
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 285
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Cash Book'
      Visible = False
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 219
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
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Trans Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Due Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 190
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Remark'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Amount'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 329
    Width = 497
    ExplicitTop = 174
    ExplicitWidth = 497
    inherited dbNavLog: TDBNavigator
      Left = 383
      Hints.Strings = ()
      ExplicitLeft = 383
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 378
    Width = 497
    ExplicitTop = 223
    ExplicitWidth = 497
  end
  inherited tabEditorData: TTabSet
    Top = 308
    Width = 497
    ExplicitTop = 153
    ExplicitWidth = 497
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 153
    Width = 497
    Height = 155
    Align = alClient
    TabOrder = 4
    ExplicitLeft = 144
    ExplicitTop = 224
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwDETAIL: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsDebetCreditNotes_D
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
      object gvwDETAILDCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDETAILDCDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DCDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDETAILCBID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBID'
        RepositoryItem = dmGlobal.luCashBook
        Width = 112
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDETAILREMARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARK'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDETAILDC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDETAILAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwDETAIL
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsDebetCreditNotes
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 424
    Top = 104
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsDebetCreditNotes: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryDebetCreditNotes'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsDebetCreditNotesBeforePost
    OnNewRecord = cdsDebetCreditNotesNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 104
    object cdsDebetCreditNotesDCID: TIntegerField
      FieldName = 'DCID'
      Required = True
    end
    object cdsDebetCreditNotesDCCODE: TStringField
      FieldName = 'DCCODE'
      Required = True
    end
    object cdsDebetCreditNotesCBID: TIntegerField
      FieldName = 'CBID'
    end
    object cdsDebetCreditNotesACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsDebetCreditNotesENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsDebetCreditNotesTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsDebetCreditNotesDUEDATE: TDateField
      FieldName = 'DUEDATE'
      Required = True
    end
    object cdsDebetCreditNotesDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsDebetCreditNotesCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsDebetCreditNotesAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsDebetCreditNotesREMARK: TStringField
      FieldName = 'REMARK'
      Size = 100
    end
    object cdsDebetCreditNotesCANCEL_DATE: TDateTimeField
      FieldName = 'CANCEL_DATE'
    end
    object cdsDebetCreditNotesCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsDebetCreditNotesPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
    end
    object cdsDebetCreditNotesPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsDebetCreditNotesREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsDebetCreditNotesREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsDebetCreditNotesSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsDebetCreditNotesSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsDebetCreditNotesMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDebetCreditNotesMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDebetCreditNotesAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDebetCreditNotesAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDebetCreditNotesUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDebetCreditNotesUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDebetCreditNotesNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDebetCreditNotesISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDebetCreditNotesID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDebetCreditNotesqryDebetCreditNotes_D: TDataSetField
      FieldName = 'qryDebetCreditNotes_D'
    end
  end
  object cdsDebetCreditNotes_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDebetCreditNotesqryDebetCreditNotes_D
    Params = <>
    BeforePost = cdsDebetCreditNotesBeforePost
    OnNewRecord = cdsDebetCreditNotesNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'DCDID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 80
    Top = 232
    object cdsDebetCreditNotes_DDCID: TLargeintField
      FieldName = 'DCID'
      Required = True
    end
    object cdsDebetCreditNotes_DDCDID: TLargeintField
      FieldName = 'DCDID'
    end
    object cdsDebetCreditNotes_DCBID: TIntegerField
      DisplayLabel = 'Cash Book'
      FieldName = 'CBID'
      Required = True
    end
    object cdsDebetCreditNotes_DREMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsDebetCreditNotes_DDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Required = True
      Size = 1
    end
    object cdsDebetCreditNotes_DAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsDebetCreditNotes_D: TDataSource
    DataSet = cdsDebetCreditNotes_D
    Left = 144
    Top = 176
  end
end
