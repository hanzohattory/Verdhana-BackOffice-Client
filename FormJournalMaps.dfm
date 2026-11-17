inherited frmJournalMaps: TfrmJournalMaps
  Caption = 'Journal Parameter'
  ClientHeight = 451
  ClientWidth = 794
  ExplicitWidth = 800
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 794
    Height = 97
    Align = alTop
    ExplicitWidth = 794
    ExplicitHeight = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 77
      Top = 10
      DataBinding.DataField = 'JOURNALCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [1]
      Left = 440
      Top = 10
      DataBinding.DataField = 'CASH_STOCK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Cash'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Stock'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 98
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 77
      Top = 64
      DataBinding.DataField = 'JOURNAL_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 461
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 242
      Top = 10
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
      Width = 127
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [4]
      Left = 77
      Top = 37
      RepositoryItem = dmGlobal.luGL_FL_SL
      DataBinding.DataField = 'JOURNAL_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 160
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
      Left = 325
      Top = 37
      RepositoryItem = dmGlobal.luJournalType
      DataBinding.DataField = 'GL_JOURNAL_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 160
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [6]
      Left = 579
      Top = 37
      RepositoryItem = dmGlobal.luSIType
      DataBinding.DataField = 'TRTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 160
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash / Stock'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
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
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
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
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Journal Type'
      Parent = dxLayoutControl1Group2
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'GL Journal Type'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Type'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 2
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
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 97
    Width = 794
    Height = 264
    Align = alClient
    TabOrder = 4
    ExplicitTop = 103
    object gvwJoulMaps_D: TcxGridDBBandedTableView
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
      DataController.DataSource = dsJouMaps_D
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.cxStyle1
      Bands = <
        item
        end>
      object gvwJoulMaps_DJOURNALID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JOURNALID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DJOURNALSIDE: TcxGridDBBandedColumn
        Caption = 'Side'
        DataBinding.FieldName = 'JOURNALSIDE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Client'
            ImageIndex = 0
            Value = 'CL'
          end
          item
            Description = 'Company'
            Value = 'CO'
          end>
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DISMULTICCY: TcxGridDBBandedColumn
        Caption = 'Multi Ccy'
        DataBinding.FieldName = 'ISMULTICCY'
        RepositoryItem = dmGlobal.chkStandard
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DFOREXCCY: TcxGridDBBandedColumn
        Caption = 'Forex Ccy'
        DataBinding.FieldName = 'FOREXCCY'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Market Based'
            ImageIndex = 0
            Value = 'M'
          end
          item
            Description = 'Deal Based'
            Value = 'D'
          end>
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DALTYPE: TcxGridDBBandedColumn
        Caption = 'AL Type'
        DataBinding.FieldName = 'ALTYPE'
        RepositoryItem = dmGlobal.luActLedgerType
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DALTYPE_DESC: TcxGridDBBandedColumn
        Caption = 'AL Type Description'
        DataBinding.FieldName = 'ALTYPE_DESC'
        Visible = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DDC: TcxGridDBBandedColumn
        Caption = 'D / C'
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DACCSIDE: TcxGridDBBandedColumn
        Caption = 'Acc Side'
        DataBinding.FieldName = 'ACCSIDE'
        RepositoryItem = dmGlobal.luClientBroker
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DBAL_DEFAULT: TcxGridDBBandedColumn
        Caption = 'Bal Default'
        DataBinding.FieldName = 'BAL_DEFAULT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Plus'
            ImageIndex = 0
            Value = 'P'
          end
          item
            Description = 'Minus'
            Value = 'M'
          end>
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DSET_VALUE: TcxGridDBBandedColumn
        Caption = 'Set Value'
        DataBinding.FieldName = 'SET_VALUE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DSET_FXVALUE: TcxGridDBBandedColumn
        Caption = 'Set Fx Value'
        DataBinding.FieldName = 'SET_FXVALUE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwJoulMaps_DID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwJoulMaps_D
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsJournalMap_H
    Left = 512
  end
  object dsJouMaps_D: TDataSource
    DataSet = cdsJournalMap_D
    Left = 610
    Top = 13
  end
  object cdsJournalMap_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'JOUMAPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryJournalMap_H'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsJournalMap_HNewRecord
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 514
    Top = 66
    object cdsJournalMap_HJOURNALID: TLargeintField
      FieldName = 'JOURNALID'
      Required = True
    end
    object cdsJournalMap_HJOURNALCODE: TStringField
      FieldName = 'JOURNALCODE'
      Required = True
      Size = 10
    end
    object cdsJournalMap_HMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsJournalMap_HJOURNAL_DESC: TStringField
      FieldName = 'JOURNAL_DESC'
      Required = True
      Size = 150
    end
    object cdsJournalMap_HCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Required = True
      Size = 1
    end
    object cdsJournalMap_HJOURNAL_TYPE: TStringField
      FieldName = 'JOURNAL_TYPE'
      Required = True
      Size = 2
    end
    object cdsJournalMap_HGL_JOURNAL_TYPE: TStringField
      FieldName = 'GL_JOURNAL_TYPE'
      Size = 10
    end
    object cdsJournalMap_HTRTYPE: TStringField
      FieldName = 'TRTYPE'
      Size = 2
    end
    object cdsJournalMap_HMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJournalMap_HMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJournalMap_HAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJournalMap_HAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJournalMap_HUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJournalMap_HUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJournalMap_HNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJournalMap_HISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJournalMap_HID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJournalMap_HqryJournalMap_D: TDataSetField
      FieldName = 'qryJournalMap_D'
    end
  end
  object cdsJournalMap_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsJournalMap_HqryJournalMap_D
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 607
    Top = 66
    object cdsJournalMap_DJOURNALID: TLargeintField
      FieldName = 'JOURNALID'
      Required = True
    end
    object cdsJournalMap_DSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsJournalMap_DJOURNALSIDE: TStringField
      FieldName = 'JOURNALSIDE'
      Size = 2
    end
    object cdsJournalMap_DISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsJournalMap_DFOREXCCY: TStringField
      FieldName = 'FOREXCCY'
      Size = 1
    end
    object cdsJournalMap_DALTYPE: TStringField
      FieldName = 'ALTYPE'
      Size = 10
    end
    object cdsJournalMap_DALTYPE_DESC: TStringField
      FieldName = 'ALTYPE_DESC'
      Size = 150
    end
    object cdsJournalMap_DDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsJournalMap_DACCSIDE: TStringField
      FieldName = 'ACCSIDE'
      Size = 1
    end
    object cdsJournalMap_DBAL_DEFAULT: TStringField
      FieldName = 'BAL_DEFAULT'
      Size = 1
    end
    object cdsJournalMap_DSET_VALUE: TStringField
      FieldName = 'SET_VALUE'
      Size = 100
    end
    object cdsJournalMap_DSET_FXVALUE: TStringField
      FieldName = 'SET_FXVALUE'
      Size = 100
    end
    object cdsJournalMap_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJournalMap_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJournalMap_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJournalMap_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJournalMap_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJournalMap_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJournalMap_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJournalMap_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJournalMap_DID: TLargeintField
      FieldName = 'ID'
    end
  end
end
