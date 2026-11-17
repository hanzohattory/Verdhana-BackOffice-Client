inherited frmCashDebetCreditNotes: TfrmCashDebetCreditNotes
  Caption = 'Cash Debet/Credit Notes'
  ClientHeight = 438
  ClientWidth = 499
  ExplicitWidth = 515
  ExplicitHeight = 477
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 499
    Height = 153
    Align = alTop
    ExplicitWidth = 518
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
      TabStop = False
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
      TabStop = False
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
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
      TabStop = False
      DataBinding.DataField = 'DC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Debet Note'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Credit Note'
          Value = 'C'
        end>
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
      Visible = False
      CaptionOptions.Text = 'Cash Book'
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
      CaptionOptions.Text = 'Type'
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
    Top = 369
    Width = 499
    ExplicitTop = 369
    ExplicitWidth = 518
    inherited dbNavLog: TDBNavigator
      Left = 385
      Hints.Strings = ()
      ExplicitLeft = 385
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 418
    Width = 499
    ExplicitTop = 418
    ExplicitWidth = 518
  end
  inherited tabEditorData: TTabSet
    Top = 348
    Width = 499
    ExplicitTop = 348
    ExplicitWidth = 518
  end
  object grdMaster: TcxGrid [4]
    Left = 0
    Top = 153
    Width = 499
    Height = 195
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 500
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsCashDebetCreditNote
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = gvwMasterAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterDCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDCDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DCDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCBID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBID'
        RepositoryItem = dmGlobal.luCashBook
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREMARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARK'
        Width = 283
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        Caption = 'D / C'
        DataBinding.FieldName = 'DC'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Debet'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Credit'
            Value = 'C'
          end>
        Visible = False
        VisibleForCustomization = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 104
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsDebetCreditNotes
    Left = 392
    Top = 208
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 448
    Top = 208
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
    Left = 32
    Top = 216
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
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDebetCreditNotesTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDebetCreditNotesDUEDATE: TDateField
      FieldName = 'DUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
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
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
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
    object cdsDebetCreditNotesACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsDebetCreditNotesACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsDebetCreditNotesqryDebetCreditNotes_D: TDataSetField
      FieldName = 'qryDebetCreditNotes_D'
    end
  end
  object cdsCashDebetCreditNote: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDebetCreditNotesqryDebetCreditNotes_D
    Params = <>
    BeforePost = cdsCashDebetCreditNoteBeforePost
    AfterPost = cdsCashDebetCreditNoteAfterPost
    OnNewRecord = cdsCashDebetCreditNoteNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 136
    Top = 216
    object cdsCashDebetCreditNoteDCID: TLargeintField
      FieldName = 'DCID'
      Required = True
    end
    object cdsCashDebetCreditNoteDCDID: TLargeintField
      FieldName = 'DCDID'
      Required = True
    end
    object cdsCashDebetCreditNoteCBID: TIntegerField
      DisplayLabel = 'Cash Book'
      FieldName = 'CBID'
      Required = True
    end
    object cdsCashDebetCreditNoteREMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsCashDebetCreditNoteDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Required = True
      Size = 1
    end
    object cdsCashDebetCreditNoteAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsCashDebetCreditNote: TDataSource
    DataSet = cdsCashDebetCreditNote
    Left = 136
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 232
    object ViewLedgerDetail1: TMenuItem
      Caption = 'View Ledger Detail'
      OnClick = ViewLedgerDetail1Click
    end
  end
end
