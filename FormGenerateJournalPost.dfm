inherited frmGeneralLedgerJournalPost: TfrmGeneralLedgerJournalPost
  Caption = 'View Journal Posting'
  ClientHeight = 539
  ClientWidth = 962
  ExplicitWidth = 968
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 962
    Height = 71
    Align = alTop
    ExplicitWidth = 962
    ExplicitHeight = 71
    object cxDBLabel1: TcxDBLabel [0]
      Left = 83
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      StyleHot.TextStyle = []
      Height = 21
      Width = 86
    end
    object cxDBLabel2: TcxDBLabel [1]
      Left = 83
      Top = 37
      DataBinding.DataField = 'JRNTYPEDESC'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 278
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'GL Value Date'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'GL Description'
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 470
    Width = 962
    ExplicitTop = 470
    ExplicitWidth = 962
    inherited dbNavLog: TDBNavigator
      Left = 848
      Hints.Strings = ()
      ExplicitLeft = 848
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Visible = False
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 519
    Width = 962
    ExplicitTop = 519
    ExplicitWidth = 962
  end
  inherited tabEditorData: TTabSet
    Top = 449
    Width = 962
    ExplicitTop = 449
    ExplicitWidth = 962
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 71
    Width = 962
    Height = 378
    Align = alClient
    TabOrder = 4
    object gvwBrowse: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = gvwBrowseCustomDrawCell
      DataController.DataSource = dsGLJournal_D
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'DEBET'
          Column = gvwBrowseDEBET
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwBrowseCREDIT
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'FXCREDIT'
          Column = gvwBrowseFXCREDIT
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'FXDEBET'
          Column = gvwBrowseFXDEBET
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwBrowseLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBrowseLINKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKNO'
        Width = 145
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBrowseJOUTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JOUTYPE'
        Visible = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBrowseGL_JRNTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_JRNTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBrowseJRNTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNTYPEDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBrowseCPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBrowseCPCODE: TcxGridDBBandedColumn
        Caption = 'CP Code'
        DataBinding.FieldName = 'CPCODE'
        Visible = False
        VisibleForCustomization = False
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBrowseCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBrowseEXRATE: TcxGridDBBandedColumn
        Caption = 'Exrate'
        DataBinding.FieldName = 'EXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBrowseDEBET: TcxGridDBBandedColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'DEBET'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBrowseCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBrowseFXDEBET: TcxGridDBBandedColumn
        Caption = 'Forex Debet'
        DataBinding.FieldName = 'FXDEBET'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBrowseFXCREDIT: TcxGridDBBandedColumn
        Caption = 'Forex Credit'
        DataBinding.FieldName = 'FXCREDIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBrowseLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    object gvwGLJournal_D: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'JRNTYPEDESC;VALUEDATE'
      DataController.KeyFieldNames = 'CPID'
      DataController.MasterKeyFieldNames = 'JRNTYPEDESC;VALUEDATE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBrowse
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmGeneralLedgerJournal.cdsGLJournal_H
    Left = 239
    Top = 246
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsGLJournal_D: TDataSource
    DataSet = cdsGLJournal_D
    Left = 265
    Top = 305
  end
  object cdsGLJournal_D: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'RptDate'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GL_JRNTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'POSTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ACCTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALL'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLJournal_D'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 330
    Top = 283
    object cdsGLJournal_DLINKTYPE: TStringField
      DisplayLabel = 'Link Type'
      FieldName = 'LINKTYPE'
    end
    object cdsGLJournal_DLINKNO: TStringField
      DisplayLabel = 'Link No'
      FieldName = 'LINKNO'
    end
    object cdsGLJournal_DJOUTYPE: TStringField
      FieldName = 'JOUTYPE'
      Size = 2
    end
    object cdsGLJournal_DGL_JRNTYPE: TStringField
      FieldName = 'GL_JRNTYPE'
      Size = 10
    end
    object cdsGLJournal_DJRNTYPEDESC: TStringField
      FieldName = 'JRNTYPEDESC'
      Size = 150
    end
    object cdsGLJournal_DCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsGLJournal_DCPCODE: TStringField
      FieldName = 'CPCODE'
      ReadOnly = True
    end
    object cdsGLJournal_DCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsGLJournal_DEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DDEBET: TFloatField
      FieldName = 'DEBET'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DCREDIT: TFloatField
      FieldName = 'CREDIT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DFXDEBET: TFloatField
      FieldName = 'FXDEBET'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DFXCREDIT: TFloatField
      FieldName = 'FXCREDIT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DLINKID: TLargeintField
      FieldName = 'LINKID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 197
    object ViewDetail1: TMenuItem
      Caption = 'View Detail'
      OnClick = ViewDetail1Click
    end
    object ViewSource: TMenuItem
      Caption = 'View Source Data'
      Visible = False
    end
    object Copygridwithheader1: TMenuItem
      Action = actCopySelected
    end
  end
  object aclEditor: TActionList
    Left = 112
    Top = 240
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
    end
  end
end
